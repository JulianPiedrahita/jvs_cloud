import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User data model for JSON serialization
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'last_login_at') String? lastLoginAt,
    @JsonKey(name: 'is_email_verified') @Default(false) bool isEmailVerified,
    @JsonKey(name: 'is_biometric_enabled') @Default(false) bool isBiometricEnabled,
    @Default([]) List<String> preferences,
    @JsonKey(name: 'favorite_content') @Default([]) List<String> favoriteContent,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// Convert to domain entity
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      avatarUrl: avatarUrl,
      createdAt: DateTime.parse(createdAt),
      lastLoginAt: lastLoginAt != null ? DateTime.parse(lastLoginAt!) : null,
      isEmailVerified: isEmailVerified,
      isBiometricEnabled: isBiometricEnabled,
      preferences: preferences,
      favoriteContent: favoriteContent,
    );
  }

  /// Create from domain entity
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      firstName: entity.firstName,
      lastName: entity.lastName,
      avatarUrl: entity.avatarUrl,
      createdAt: entity.createdAt.toIso8601String(),
      lastLoginAt: entity.lastLoginAt?.toIso8601String(),
      isEmailVerified: entity.isEmailVerified,
      isBiometricEnabled: entity.isBiometricEnabled,
      preferences: entity.preferences,
      favoriteContent: entity.favoriteContent,
    );
  }
}