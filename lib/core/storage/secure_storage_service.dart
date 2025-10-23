import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/app_constants.dart';

/// Abstract interface for secure storage operations
abstract class SecureStorageService {
  Future<void> storeAccessToken(String token);
  Future<void> storeRefreshToken(String token);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> clearTokens();
  Future<void> storeUserData(String userData);
  Future<String?> getUserData();
  Future<void> clearUserData();
  Future<void> storeBiometricEnabled(bool enabled);
  Future<bool> getBiometricEnabled();
  Future<void> clearAll();
}

/// Implementation of SecureStorageService using flutter_secure_storage
class SecureStorageServiceImpl implements SecureStorageService {
  final FlutterSecureStorage _storage;

  SecureStorageServiceImpl(this._storage);

  @override
  Future<void> storeAccessToken(String token) async {
    await _storage.write(
      key: AppConstants.accessTokenKey,
      value: token,
    );
  }

  @override
  Future<void> storeRefreshToken(String token) async {
    await _storage.write(
      key: AppConstants.refreshTokenKey,
      value: token,
    );
  }

  @override
  Future<String?> getAccessToken() async {
    return await _storage.read(key: AppConstants.accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: AppConstants.refreshTokenKey);
  }

  @override
  Future<void> clearTokens() async {
    await Future.wait([
      _storage.delete(key: AppConstants.accessTokenKey),
      _storage.delete(key: AppConstants.refreshTokenKey),
    ]);
  }

  @override
  Future<void> storeUserData(String userData) async {
    await _storage.write(
      key: AppConstants.userDataKey,
      value: userData,
    );
  }

  @override
  Future<String?> getUserData() async {
    return await _storage.read(key: AppConstants.userDataKey);
  }

  @override
  Future<void> clearUserData() async {
    await _storage.delete(key: AppConstants.userDataKey);
  }

  @override
  Future<void> storeBiometricEnabled(bool enabled) async {
    await _storage.write(
      key: AppConstants.biometricEnabledKey,
      value: enabled.toString(),
    );
  }

  @override
  Future<bool> getBiometricEnabled() async {
    final value = await _storage.read(key: AppConstants.biometricEnabledKey);
    return value?.toLowerCase() == 'true';
  }

  @override
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}