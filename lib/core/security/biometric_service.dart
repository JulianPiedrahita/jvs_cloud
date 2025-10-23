import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

import '../constants/app_constants.dart';

/// Abstract interface for biometric authentication operations
abstract class BiometricService {
  Future<bool> isAvailable();
  Future<bool> isDeviceSupported();
  Future<List<BiometricType>> getAvailableBiometrics();
  Future<bool> authenticate({
    required String localizedReason,
    bool useErrorDialogs = true,
    bool stickyAuth = false,
  });
  Future<bool> stopAuthentication();
}

/// Implementation of BiometricService using local_auth package
class BiometricServiceImpl implements BiometricService {
  final LocalAuthentication _localAuth;

  BiometricServiceImpl(this._localAuth);

  @override
  Future<bool> isAvailable() async {
    try {
      final isSupported = await _localAuth.isDeviceSupported();
      if (!isSupported) return false;

      final availableBiometrics = await _localAuth.getAvailableBiometrics();
      return availableBiometrics.isNotEmpty;
    } on PlatformException catch (e) {
      print('Error checking biometric availability: ${e.message}');
      return false;
    }
  }

  @override
  Future<bool> isDeviceSupported() async {
    try {
      return await _localAuth.isDeviceSupported();
    } on PlatformException catch (e) {
      print('Error checking device support: ${e.message}');
      return false;
    }
  }

  @override
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print('Error getting available biometrics: ${e.message}');
      return [];
    }
  }

  @override
  Future<bool> authenticate({
    required String localizedReason,
    bool useErrorDialogs = true,
    bool stickyAuth = false,
  }) async {
    try {
      final isAvailable = await this.isAvailable();
      if (!isAvailable) {
        throw BiometricException(
          BiometricExceptionType.notAvailable,
          'Biometric authentication is not available on this device',
        );
      }

      return await _localAuth.authenticate(
        localizedReason: localizedReason,
        options: AuthenticationOptions(
          useErrorDialogs: useErrorDialogs,
          stickyAuth: stickyAuth,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (e) {
      print('Biometric authentication error: ${e.message}');
      
      switch (e.code) {
        case 'NotAvailable':
          throw BiometricException(
            BiometricExceptionType.notAvailable,
            'Biometric authentication is not available',
          );
        case 'NotEnrolled':
          throw BiometricException(
            BiometricExceptionType.notEnrolled,
            'No biometric credentials are enrolled on this device',
          );
        case 'LockedOut':
          throw BiometricException(
            BiometricExceptionType.lockedOut,
            'Biometric authentication is temporarily locked',
          );
        case 'PermanentlyLockedOut':
          throw BiometricException(
            BiometricExceptionType.permanentlyLockedOut,
            'Biometric authentication is permanently locked',
          );
        case 'UserCancel':
          throw BiometricException(
            BiometricExceptionType.userCancel,
            'User cancelled biometric authentication',
          );
        case 'UserFallback':
          throw BiometricException(
            BiometricExceptionType.userFallback,
            'User chose to use fallback authentication',
          );
        default:
          throw BiometricException(
            BiometricExceptionType.unknown,
            e.message ?? 'An unknown error occurred',
          );
      }
    }
  }

  @override
  Future<bool> stopAuthentication() async {
    try {
      return await _localAuth.stopAuthentication();
    } on PlatformException catch (e) {
      print('Error stopping authentication: ${e.message}');
      return false;
    }
  }
}

/// Custom exception for biometric authentication errors
class BiometricException implements Exception {
  final BiometricExceptionType type;
  final String message;

  BiometricException(this.type, this.message);

  @override
  String toString() => 'BiometricException: $message';
}

/// Types of biometric authentication exceptions
enum BiometricExceptionType {
  notAvailable,
  notEnrolled,
  lockedOut,
  permanentlyLockedOut,
  userCancel,
  userFallback,
  unknown,
}

/// Extension to provide user-friendly error messages
extension BiometricExceptionTypeExtension on BiometricExceptionType {
  String get userMessage {
    switch (this) {
      case BiometricExceptionType.notAvailable:
        return 'Biometric authentication is not available on this device.';
      case BiometricExceptionType.notEnrolled:
        return 'Please set up biometric authentication in your device settings.';
      case BiometricExceptionType.lockedOut:
        return 'Biometric authentication is temporarily locked. Please try again later.';
      case BiometricExceptionType.permanentlyLockedOut:
        return 'Biometric authentication is disabled. Please use your password.';
      case BiometricExceptionType.userCancel:
        return 'Authentication was cancelled.';
      case BiometricExceptionType.userFallback:
        return 'Please use your password to continue.';
      case BiometricExceptionType.unknown:
        return 'An error occurred during biometric authentication.';
    }
  }

  String get errorCode {
    switch (this) {
      case BiometricExceptionType.notAvailable:
        return AppErrors.biometricNotAvailable;
      case BiometricExceptionType.notEnrolled:
        return AppErrors.biometricNotEnrolled;
      case BiometricExceptionType.lockedOut:
        return 'biometric_locked_out';
      case BiometricExceptionType.permanentlyLockedOut:
        return 'biometric_permanently_locked_out';
      case BiometricExceptionType.userCancel:
        return 'biometric_user_cancel';
      case BiometricExceptionType.userFallback:
        return 'biometric_user_fallback';
      case BiometricExceptionType.unknown:
        return AppErrors.unknownError;
    }
  }
}