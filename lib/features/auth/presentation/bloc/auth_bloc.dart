import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/security/biometric_service.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../domain/usecases/refresh_token_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

/// Authentication BLoC for managing authentication state
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final LogoutUseCase logoutUseCase;
  final RefreshTokenUseCase refreshTokenUseCase;
  final BiometricService biometricService;

  AuthBloc({
    required this.loginUseCase,
    required this.registerUseCase,
    required this.logoutUseCase,
    required this.refreshTokenUseCase,
    required this.biometricService,
  }) : super(const AuthState.initial()) {
    
    on<AuthCheckStatus>(_onCheckAuthStatus);
    on<AuthLogin>(_onLogin);
    on<AuthRegister>(_onRegister);
    on<AuthLoginWithBiometric>(_onLoginWithBiometric);
    on<AuthLogout>(_onLogout);
    on<AuthRefreshToken>(_onRefreshToken);
    on<AuthForgotPassword>(_onForgotPassword);
    on<AuthResetPassword>(_onResetPassword);
    on<AuthEnableBiometric>(_onEnableBiometric);
    on<AuthDisableBiometric>(_onDisableBiometric);
    on<AuthUpdateProfile>(_onUpdateProfile);
    on<AuthChangePassword>(_onChangePassword);
    on<AuthVerifyEmail>(_onVerifyEmail);
    on<AuthResendEmailVerification>(_onResendEmailVerification);
  }

  Future<void> _onCheckAuthStatus(
    AuthCheckStatus event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    // TODO: Implement authentication status check
    // This would check if user has valid tokens and get user data
    try {
      final result = await refreshTokenUseCase(const NoParams());
      
      result.fold(
        (failure) => emit(const AuthState.unauthenticated()),
        (authResponse) => emit(AuthState.authenticated(user: authResponse.user)),
      );
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onLogin(
    AuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    final result = await loginUseCase(LoginParams(
      email: event.email,
      password: event.password,
    ));
    
    result.fold(
      (failure) => emit(AuthState.error(
        message: failure.message,
        code: failure.code,
      )),
      (authResponse) => emit(AuthState.authenticated(user: authResponse.user)),
    );
  }

  Future<void> _onRegister(
    AuthRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    final result = await registerUseCase(RegisterParams(
      email: event.email,
      password: event.password,
      firstName: event.firstName,
      lastName: event.lastName,
    ));
    
    result.fold(
      (failure) => emit(AuthState.error(
        message: failure.message,
        code: failure.code,
      )),
      (authResponse) => emit(AuthState.authenticated(user: authResponse.user)),
    );
  }

  Future<void> _onLoginWithBiometric(
    AuthLoginWithBiometric event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.biometricPrompt());
    
    try {
      // Check if biometric is available
      final isAvailable = await biometricService.isAvailable();
      if (!isAvailable) {
        emit(const AuthState.error(
          message: 'Biometric authentication is not available',
          code: 'biometric_not_available',
        ));
        return;
      }

      // Authenticate with biometrics
      final authenticated = await biometricService.authenticate(
        localizedReason: 'Please authenticate to log in to JVS Cloud',
      );

      if (authenticated) {
        // Use refresh token to authenticate
        final result = await refreshTokenUseCase(const NoParams());
        
        result.fold(
          (failure) => emit(AuthState.error(
            message: failure.message,
            code: failure.code,
          )),
          (authResponse) => emit(AuthState.authenticated(user: authResponse.user)),
        );
      } else {
        emit(const AuthState.error(
          message: 'Biometric authentication was cancelled or failed',
          code: 'biometric_cancelled',
        ));
      }
    } on BiometricException catch (e) {
      emit(AuthState.error(
        message: e.type.userMessage,
        code: e.type.errorCode,
      ));
    } catch (e) {
      emit(AuthState.error(
        message: 'An unexpected error occurred during biometric authentication',
        code: 'biometric_unknown_error',
      ));
    }
  }

  Future<void> _onLogout(
    AuthLogout event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    final result = await logoutUseCase(const NoParams());
    
    result.fold(
      (failure) => emit(AuthState.error(
        message: failure.message,
        code: failure.code,
      )),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _onRefreshToken(
    AuthRefreshToken event,
    Emitter<AuthState> emit,
  ) async {
    final result = await refreshTokenUseCase(const NoParams());
    
    result.fold(
      (failure) => emit(const AuthState.unauthenticated()),
      (authResponse) => emit(AuthState.authenticated(user: authResponse.user)),
    );
  }

  Future<void> _onForgotPassword(
    AuthForgotPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    // TODO: Implement forgot password use case
    // For now, just emit success state
    emit(const AuthState.unauthenticated());
  }

  Future<void> _onResetPassword(
    AuthResetPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    // TODO: Implement reset password use case
    // For now, just emit success state
    emit(const AuthState.unauthenticated());
  }

  Future<void> _onEnableBiometric(
    AuthEnableBiometric event,
    Emitter<AuthState> emit,
  ) async {
    // TODO: Implement enable biometric use case
    // This would enable biometric authentication for the current user
  }

  Future<void> _onDisableBiometric(
    AuthDisableBiometric event,
    Emitter<AuthState> emit,
  ) async {
    // TODO: Implement disable biometric use case
    // This would disable biometric authentication for the current user
  }

  Future<void> _onUpdateProfile(
    AuthUpdateProfile event,
    Emitter<AuthState> emit,
  ) async {
    // TODO: Implement update profile use case
    // This would update user profile information
  }

  Future<void> _onChangePassword(
    AuthChangePassword event,
    Emitter<AuthState> emit,
  ) async {
    // TODO: Implement change password use case
    // This would change the user's password
  }

  Future<void> _onVerifyEmail(
    AuthVerifyEmail event,
    Emitter<AuthState> emit,
  ) async {
    // TODO: Implement verify email use case
    // This would verify the user's email address
  }

  Future<void> _onResendEmailVerification(
    AuthResendEmailVerification event,
    Emitter<AuthState> emit,
  ) async {
    // TODO: Implement resend email verification use case
    // This would resend the email verification
  }
}