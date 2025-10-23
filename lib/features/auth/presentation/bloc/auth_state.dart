import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';

part 'auth_state.freezed.dart';

/// Authentication states
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  
  const factory AuthState.loading() = AuthLoading;
  
  const factory AuthState.authenticated({
    required UserEntity user,
  }) = AuthAuthenticated;
  
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  
  const factory AuthState.error({
    required String message,
    String? code,
  }) = AuthError;
  
  const factory AuthState.biometricPrompt() = AuthBiometricPrompt;
}