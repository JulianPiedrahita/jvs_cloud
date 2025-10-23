import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_entity.dart';

part 'auth_response_entity.freezed.dart';

/// Authentication response entity
@freezed
class AuthResponseEntity with _$AuthResponseEntity {
  const factory AuthResponseEntity({
    required String accessToken,
    required String refreshToken,
    required UserEntity user,
    required DateTime expiresAt,
    String? message,
  }) = _AuthResponseEntity;

  const AuthResponseEntity._();

  /// Check if token is expired
  bool get isExpired => DateTime.now().isAfter(expiresAt);

  /// Check if token will expire soon (within 5 minutes)
  bool get willExpireSoon => 
      DateTime.now().add(const Duration(minutes: 5)).isAfter(expiresAt);
}