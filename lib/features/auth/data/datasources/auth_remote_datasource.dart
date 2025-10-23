import 'package:dio/dio.dart';

import '../../../../core/network/dio_client.dart';
import '../models/auth_response_model.dart';
import '../models/user_model.dart';

/// Abstract interface for authentication remote data source
abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login({
    required String email,
    required String password,
  });

  Future<AuthResponseModel> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  });

  Future<AuthResponseModel> refreshToken({
    required String refreshToken,
  });

  Future<void> logout();

  Future<void> forgotPassword({
    required String email,
  });

  Future<void> resetPassword({
    required String token,
    required String newPassword,
  });

  Future<UserModel> getCurrentUser();

  Future<UserModel> updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
  });

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<void> verifyEmail({
    required String token,
  });

  Future<void> resendEmailVerification();
}

/// Implementation of authentication remote data source using Dio
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient _dioClient;

  AuthRemoteDataSourceImpl(this._dioClient);

  @override
  Future<AuthResponseModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dioClient.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      return AuthResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<AuthResponseModel> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      final response = await _dioClient.post(
        '/auth/register',
        data: {
          'email': email,
          'password': password,
          'first_name': firstName,
          'last_name': lastName,
        },
      );

      return AuthResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<AuthResponseModel> refreshToken({
    required String refreshToken,
  }) async {
    try {
      final response = await _dioClient.post(
        '/auth/refresh',
        data: {
          'refresh_token': refreshToken,
        },
      );

      return AuthResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _dioClient.post('/auth/logout');
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> forgotPassword({
    required String email,
  }) async {
    try {
      await _dioClient.post(
        '/auth/forgot-password',
        data: {
          'email': email,
        },
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    try {
      await _dioClient.post(
        '/auth/reset-password',
        data: {
          'token': token,
          'new_password': newPassword,
        },
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<UserModel> getCurrentUser() async {
    try {
      final response = await _dioClient.get('/auth/me');
      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<UserModel> updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (firstName != null) data['first_name'] = firstName;
      if (lastName != null) data['last_name'] = lastName;
      if (avatarUrl != null) data['avatar_url'] = avatarUrl;

      final response = await _dioClient.patch(
        '/auth/profile',
        data: data,
      );

      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await _dioClient.patch(
        '/auth/change-password',
        data: {
          'current_password': currentPassword,
          'new_password': newPassword,
        },
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> verifyEmail({
    required String token,
  }) async {
    try {
      await _dioClient.post(
        '/auth/verify-email',
        data: {
          'token': token,
        },
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> resendEmailVerification() async {
    try {
      await _dioClient.post('/auth/resend-verification');
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Handle Dio exceptions and convert to appropriate exceptions
  Exception _handleDioException(DioException e) {
    switch (e.response?.statusCode) {
      case 400:
        return BadRequestException(
          e.response?.data['message'] ?? 'Bad request',
        );
      case 401:
        return UnauthorizedException(
          e.response?.data['message'] ?? 'Unauthorized',
        );
      case 403:
        return ForbiddenException(
          e.response?.data['message'] ?? 'Forbidden',
        );
      case 404:
        return NotFoundException(
          e.response?.data['message'] ?? 'Not found',
        );
      case 422:
        return ValidationException(
          e.response?.data['message'] ?? 'Validation failed',
          e.response?.data['errors'],
        );
      case 429:
        return TooManyRequestsException(
          e.response?.data['message'] ?? 'Too many requests',
        );
      case 500:
        return ServerException(
          e.response?.data['message'] ?? 'Internal server error',
        );
      default:
        return ServerException(
          e.message ?? 'An unexpected error occurred',
        );
    }
  }
}

/// Custom exceptions for different HTTP status codes
class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

class BadRequestException implements Exception {
  final String message;
  BadRequestException(this.message);
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException(this.message);
}

class ForbiddenException implements Exception {
  final String message;
  ForbiddenException(this.message);
}

class NotFoundException implements Exception {
  final String message;
  NotFoundException(this.message);
}

class ValidationException implements Exception {
  final String message;
  final Map<String, dynamic>? errors;
  ValidationException(this.message, this.errors);
}

class TooManyRequestsException implements Exception {
  final String message;
  TooManyRequestsException(this.message);
}