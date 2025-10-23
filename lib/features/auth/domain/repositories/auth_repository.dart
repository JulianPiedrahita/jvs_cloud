import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auth_response_entity.dart';
import '../entities/user_entity.dart';

/// Abstract repository interface for authentication operations
abstract class AuthRepository {
  /// Login with email and password
  Future<Either<Failure, AuthResponseEntity>> login({
    required String email,
    required String password,
  });

  /// Register new user account
  Future<Either<Failure, AuthResponseEntity>> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  });

  /// Login with biometric authentication
  Future<Either<Failure, AuthResponseEntity>> loginWithBiometric();

  /// Refresh authentication token
  Future<Either<Failure, AuthResponseEntity>> refreshToken();

  /// Logout and clear stored tokens
  Future<Either<Failure, void>> logout();

  /// Forgot password - send reset email
  Future<Either<Failure, void>> forgotPassword({
    required String email,
  });

  /// Reset password with token
  Future<Either<Failure, void>> resetPassword({
    required String token,
    required String newPassword,
  });

  /// Get current authenticated user
  Future<Either<Failure, UserEntity?>> getCurrentUser();

  /// Check if user is authenticated
  Future<bool> isAuthenticated();

  /// Enable biometric authentication
  Future<Either<Failure, void>> enableBiometric();

  /// Disable biometric authentication
  Future<Either<Failure, void>> disableBiometric();

  /// Update user profile
  Future<Either<Failure, UserEntity>> updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
  });

  /// Change password
  Future<Either<Failure, void>> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  /// Verify email address
  Future<Either<Failure, void>> verifyEmail({
    required String token,
  });

  /// Resend email verification
  Future<Either<Failure, void>> resendEmailVerification();
}