// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatarUrl: json['avatar_url'] as String?,
      createdAt: json['created_at'] as String,
      lastLoginAt: json['last_login_at'] as String?,
      isEmailVerified: json['is_email_verified'] as bool? ?? false,
      isBiometricEnabled: json['is_biometric_enabled'] as bool? ?? false,
      preferences: (json['preferences'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      favoriteContent: (json['favorite_content'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar_url': instance.avatarUrl,
      'created_at': instance.createdAt,
      'last_login_at': instance.lastLoginAt,
      'is_email_verified': instance.isEmailVerified,
      'is_biometric_enabled': instance.isBiometricEnabled,
      'preferences': instance.preferences,
      'favorite_content': instance.favoriteContent,
    };
