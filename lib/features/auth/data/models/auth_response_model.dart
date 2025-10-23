import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_response_entity.dart';
import 'user_model.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

/// Authentication response data model for JSON serialization
@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    required UserModel user,
    @JsonKey(name: 'expires_at') required String expiresAt,
    String? message,
  }) = _AuthResponseModel;

  const AuthResponseModel._();

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);

  /// Convert to domain entity
  AuthResponseEntity toEntity() {
    return AuthResponseEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
      user: user.toEntity(),
      expiresAt: DateTime.parse(expiresAt),
      message: message,
    );
  }

  /// Create from domain entity
  factory AuthResponseModel.fromEntity(AuthResponseEntity entity) {
    return AuthResponseModel(
      accessToken: entity.accessToken,
      refreshToken: entity.refreshToken,
      user: UserModel.fromEntity(entity.user),
      expiresAt: entity.expiresAt.toIso8601String(),
      message: entity.message,
    );
  }
}