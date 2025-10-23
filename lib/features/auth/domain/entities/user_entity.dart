import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

/// User entity representing the domain model
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    String? avatarUrl,
    required DateTime createdAt,
    DateTime? lastLoginAt,
    @Default(false) bool isEmailVerified,
    @Default(false) bool isBiometricEnabled,
    @Default([]) List<String> preferences,
    @Default([]) List<String> favoriteContent,
  }) = _UserEntity;

  const UserEntity._();

  /// Get full name
  String get fullName => '$firstName $lastName';

  /// Get initials for avatar
  String get initials => '${firstName[0]}${lastName[0]}'.toUpperCase();
}