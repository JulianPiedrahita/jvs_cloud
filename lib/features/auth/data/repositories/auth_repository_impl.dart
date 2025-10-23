import 'dart:convert';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/storage/secure_storage_service.dart';
import '../../domain/entities/auth_response_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user_model.dart';

/// Implementation of the authentication repository
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final SecureStorageService secureStorage;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.secureStorage,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, AuthResponseEntity>> login({
    required String email,
    required String password,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.login(
          email: email,
          password: password,
        );
        
        // Store tokens securely
        await secureStorage.storeAccessToken(result.accessToken);
        await secureStorage.storeRefreshToken(result.refreshToken);
        await secureStorage.storeUserData(jsonEncode(result.user.toJson()));
        
        return Right(result.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on UnauthorizedException catch (e) {
        return Left(AuthFailure(message: e.message));
      } on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.register(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
        );
        
        // Store tokens securely
        await secureStorage.storeAccessToken(result.accessToken);
        await secureStorage.storeRefreshToken(result.refreshToken);
        await secureStorage.storeUserData(jsonEncode(result.user.toJson()));
        
        return Right(result.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> loginWithBiometric() async {
    try {
      // Get stored refresh token for biometric login
      final refreshToken = await secureStorage.getRefreshToken();
      if (refreshToken == null) {
        return const Left(AuthFailure(
          message: 'No stored credentials found',
        ));
      }

      return await this.refreshToken();
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> refreshToken() async {
    if (await networkInfo.isConnected) {
      try {
        final storedRefreshToken = await secureStorage.getRefreshToken();
        if (storedRefreshToken == null) {
          return const Left(AuthFailure(message: 'No refresh token found'));
        }

        final result = await remoteDataSource.refreshToken(
          refreshToken: storedRefreshToken,
        );
        
        // Update stored tokens
        await secureStorage.storeAccessToken(result.accessToken);
        await secureStorage.storeRefreshToken(result.refreshToken);
        await secureStorage.storeUserData(jsonEncode(result.user.toJson()));
        
        return Right(result.toEntity());
      } on UnauthorizedException catch (e) {
        // Clear stored tokens if refresh fails
        await secureStorage.clearTokens();
        return Left(AuthFailure(message: e.message));
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      // Try to logout from server (optional if network is available)
      if (await networkInfo.isConnected) {
        try {
          await remoteDataSource.logout();
        } catch (e) {
          // Continue with local logout even if server logout fails
        }
      }

      // Clear all stored data
      await secureStorage.clearAll();
      
      return const Right(null);
    } catch (e) {
      return Left(StorageFailure(message: 'Failed to clear stored data'));
    }
  }

  @override
  Future<Either<Failure, void>> forgotPassword({
    required String email,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.forgotPassword(email: email);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on NotFoundException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.resetPassword(
          token: token,
          newPassword: newPassword,
        );
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> getCurrentUser() async {
    try {
      final userData = await secureStorage.getUserData();
      if (userData != null) {
        final userJson = jsonDecode(userData);
        final userModel = UserModel.fromJson(userJson);
        return Right(userModel.toEntity());
      }
      return const Right(null);
    } catch (e) {
      return Left(StorageFailure(message: 'Failed to get user data'));
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      final accessToken = await secureStorage.getAccessToken();
      return accessToken != null;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Failure, void>> enableBiometric() async {
    try {
      await secureStorage.storeBiometricEnabled(true);
      return const Right(null);
    } catch (e) {
      return Left(StorageFailure(message: 'Failed to enable biometric'));
    }
  }

  @override
  Future<Either<Failure, void>> disableBiometric() async {
    try {
      await secureStorage.storeBiometricEnabled(false);
      return const Right(null);
    } catch (e) {
      return Left(StorageFailure(message: 'Failed to disable biometric'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.updateProfile(
          firstName: firstName,
          lastName: lastName,
          avatarUrl: avatarUrl,
        );
        
        // Update stored user data
        await secureStorage.storeUserData(jsonEncode(result.toJson()));
        
        return Right(result.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.changePassword(
          currentPassword: currentPassword,
          newPassword: newPassword,
        );
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> verifyEmail({
    required String token,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.verifyEmail(token: token);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> resendEmailVerification() async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.resendEmailVerification();
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } catch (e) {
        return Left(UnknownFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }
}