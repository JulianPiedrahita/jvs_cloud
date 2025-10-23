import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

/// Authentication events
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = AuthCheckStatus;
  
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = AuthLogin;
  
  const factory AuthEvent.register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) = AuthRegister;
  
  const factory AuthEvent.loginWithBiometric() = AuthLoginWithBiometric;
  
  const factory AuthEvent.logout() = AuthLogout;
  
  const factory AuthEvent.refreshToken() = AuthRefreshToken;
  
  const factory AuthEvent.forgotPassword({
    required String email,
  }) = AuthForgotPassword;
  
  const factory AuthEvent.resetPassword({
    required String token,
    required String newPassword,
  }) = AuthResetPassword;
  
  const factory AuthEvent.enableBiometric() = AuthEnableBiometric;
  
  const factory AuthEvent.disableBiometric() = AuthDisableBiometric;
  
  const factory AuthEvent.updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
  }) = AuthUpdateProfile;
  
  const factory AuthEvent.changePassword({
    required String currentPassword,
    required String newPassword,
  }) = AuthChangePassword;
  
  const factory AuthEvent.verifyEmail({
    required String token,
  }) = AuthVerifyEmail;
  
  const factory AuthEvent.resendEmailVerification() = AuthResendEmailVerification;
}