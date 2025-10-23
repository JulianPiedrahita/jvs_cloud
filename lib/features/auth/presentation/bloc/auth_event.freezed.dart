// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthCheckStatusImplCopyWith<$Res> {
  factory _$$AuthCheckStatusImplCopyWith(_$AuthCheckStatusImpl value,
          $Res Function(_$AuthCheckStatusImpl) then) =
      __$$AuthCheckStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckStatusImpl>
    implements _$$AuthCheckStatusImplCopyWith<$Res> {
  __$$AuthCheckStatusImplCopyWithImpl(
      _$AuthCheckStatusImpl _value, $Res Function(_$AuthCheckStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthCheckStatusImpl implements AuthCheckStatus {
  const _$AuthCheckStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class AuthCheckStatus implements AuthEvent {
  const factory AuthCheckStatus() = _$AuthCheckStatusImpl;
}

/// @nodoc
abstract class _$$AuthLoginImplCopyWith<$Res> {
  factory _$$AuthLoginImplCopyWith(
          _$AuthLoginImpl value, $Res Function(_$AuthLoginImpl) then) =
      __$$AuthLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLoginImpl>
    implements _$$AuthLoginImplCopyWith<$Res> {
  __$$AuthLoginImplCopyWithImpl(
      _$AuthLoginImpl _value, $Res Function(_$AuthLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthLoginImpl implements AuthLogin {
  const _$AuthLoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      __$$AuthLoginImplCopyWithImpl<_$AuthLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthLogin implements AuthEvent {
  const factory AuthLogin(
      {required final String email,
      required final String password}) = _$AuthLoginImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthRegisterImplCopyWith<$Res> {
  factory _$$AuthRegisterImplCopyWith(
          _$AuthRegisterImpl value, $Res Function(_$AuthRegisterImpl) then) =
      __$$AuthRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String firstName, String lastName});
}

/// @nodoc
class __$$AuthRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthRegisterImpl>
    implements _$$AuthRegisterImplCopyWith<$Res> {
  __$$AuthRegisterImplCopyWithImpl(
      _$AuthRegisterImpl _value, $Res Function(_$AuthRegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$AuthRegisterImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthRegisterImpl implements AuthRegister {
  const _$AuthRegisterImpl(
      {required this.email,
      required this.password,
      required this.firstName,
      required this.lastName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, firstName, lastName);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterImplCopyWith<_$AuthRegisterImpl> get copyWith =>
      __$$AuthRegisterImplCopyWithImpl<_$AuthRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return register(email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return register?.call(email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class AuthRegister implements AuthEvent {
  const factory AuthRegister(
      {required final String email,
      required final String password,
      required final String firstName,
      required final String lastName}) = _$AuthRegisterImpl;

  String get email;
  String get password;
  String get firstName;
  String get lastName;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterImplCopyWith<_$AuthRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoginWithBiometricImplCopyWith<$Res> {
  factory _$$AuthLoginWithBiometricImplCopyWith(
          _$AuthLoginWithBiometricImpl value,
          $Res Function(_$AuthLoginWithBiometricImpl) then) =
      __$$AuthLoginWithBiometricImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoginWithBiometricImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLoginWithBiometricImpl>
    implements _$$AuthLoginWithBiometricImplCopyWith<$Res> {
  __$$AuthLoginWithBiometricImplCopyWithImpl(
      _$AuthLoginWithBiometricImpl _value,
      $Res Function(_$AuthLoginWithBiometricImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLoginWithBiometricImpl implements AuthLoginWithBiometric {
  const _$AuthLoginWithBiometricImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithBiometric()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginWithBiometricImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return loginWithBiometric();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return loginWithBiometric?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (loginWithBiometric != null) {
      return loginWithBiometric();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return loginWithBiometric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return loginWithBiometric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (loginWithBiometric != null) {
      return loginWithBiometric(this);
    }
    return orElse();
  }
}

abstract class AuthLoginWithBiometric implements AuthEvent {
  const factory AuthLoginWithBiometric() = _$AuthLoginWithBiometricImpl;
}

/// @nodoc
abstract class _$$AuthLogoutImplCopyWith<$Res> {
  factory _$$AuthLogoutImplCopyWith(
          _$AuthLogoutImpl value, $Res Function(_$AuthLogoutImpl) then) =
      __$$AuthLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogoutImpl>
    implements _$$AuthLogoutImplCopyWith<$Res> {
  __$$AuthLogoutImplCopyWithImpl(
      _$AuthLogoutImpl _value, $Res Function(_$AuthLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLogoutImpl implements AuthLogout {
  const _$AuthLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout implements AuthEvent {
  const factory AuthLogout() = _$AuthLogoutImpl;
}

/// @nodoc
abstract class _$$AuthRefreshTokenImplCopyWith<$Res> {
  factory _$$AuthRefreshTokenImplCopyWith(_$AuthRefreshTokenImpl value,
          $Res Function(_$AuthRefreshTokenImpl) then) =
      __$$AuthRefreshTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthRefreshTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthRefreshTokenImpl>
    implements _$$AuthRefreshTokenImplCopyWith<$Res> {
  __$$AuthRefreshTokenImplCopyWithImpl(_$AuthRefreshTokenImpl _value,
      $Res Function(_$AuthRefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthRefreshTokenImpl implements AuthRefreshToken {
  const _$AuthRefreshTokenImpl();

  @override
  String toString() {
    return 'AuthEvent.refreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthRefreshTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class AuthRefreshToken implements AuthEvent {
  const factory AuthRefreshToken() = _$AuthRefreshTokenImpl;
}

/// @nodoc
abstract class _$$AuthForgotPasswordImplCopyWith<$Res> {
  factory _$$AuthForgotPasswordImplCopyWith(_$AuthForgotPasswordImpl value,
          $Res Function(_$AuthForgotPasswordImpl) then) =
      __$$AuthForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthForgotPasswordImpl>
    implements _$$AuthForgotPasswordImplCopyWith<$Res> {
  __$$AuthForgotPasswordImplCopyWithImpl(_$AuthForgotPasswordImpl _value,
      $Res Function(_$AuthForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthForgotPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthForgotPasswordImpl implements AuthForgotPassword {
  const _$AuthForgotPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthForgotPasswordImplCopyWith<_$AuthForgotPasswordImpl> get copyWith =>
      __$$AuthForgotPasswordImplCopyWithImpl<_$AuthForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class AuthForgotPassword implements AuthEvent {
  const factory AuthForgotPassword({required final String email}) =
      _$AuthForgotPasswordImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthForgotPasswordImplCopyWith<_$AuthForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResetPasswordImplCopyWith<$Res> {
  factory _$$AuthResetPasswordImplCopyWith(_$AuthResetPasswordImpl value,
          $Res Function(_$AuthResetPasswordImpl) then) =
      __$$AuthResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String newPassword});
}

/// @nodoc
class __$$AuthResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthResetPasswordImpl>
    implements _$$AuthResetPasswordImplCopyWith<$Res> {
  __$$AuthResetPasswordImplCopyWithImpl(_$AuthResetPasswordImpl _value,
      $Res Function(_$AuthResetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? newPassword = null,
  }) {
    return _then(_$AuthResetPasswordImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthResetPasswordImpl implements AuthResetPassword {
  const _$AuthResetPasswordImpl(
      {required this.token, required this.newPassword});

  @override
  final String token;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(token: $token, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResetPasswordImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, newPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResetPasswordImplCopyWith<_$AuthResetPasswordImpl> get copyWith =>
      __$$AuthResetPasswordImplCopyWithImpl<_$AuthResetPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return resetPassword(token, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return resetPassword?.call(token, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(token, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class AuthResetPassword implements AuthEvent {
  const factory AuthResetPassword(
      {required final String token,
      required final String newPassword}) = _$AuthResetPasswordImpl;

  String get token;
  String get newPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResetPasswordImplCopyWith<_$AuthResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEnableBiometricImplCopyWith<$Res> {
  factory _$$AuthEnableBiometricImplCopyWith(_$AuthEnableBiometricImpl value,
          $Res Function(_$AuthEnableBiometricImpl) then) =
      __$$AuthEnableBiometricImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEnableBiometricImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEnableBiometricImpl>
    implements _$$AuthEnableBiometricImplCopyWith<$Res> {
  __$$AuthEnableBiometricImplCopyWithImpl(_$AuthEnableBiometricImpl _value,
      $Res Function(_$AuthEnableBiometricImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEnableBiometricImpl implements AuthEnableBiometric {
  const _$AuthEnableBiometricImpl();

  @override
  String toString() {
    return 'AuthEvent.enableBiometric()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEnableBiometricImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return enableBiometric();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return enableBiometric?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (enableBiometric != null) {
      return enableBiometric();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return enableBiometric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return enableBiometric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (enableBiometric != null) {
      return enableBiometric(this);
    }
    return orElse();
  }
}

abstract class AuthEnableBiometric implements AuthEvent {
  const factory AuthEnableBiometric() = _$AuthEnableBiometricImpl;
}

/// @nodoc
abstract class _$$AuthDisableBiometricImplCopyWith<$Res> {
  factory _$$AuthDisableBiometricImplCopyWith(_$AuthDisableBiometricImpl value,
          $Res Function(_$AuthDisableBiometricImpl) then) =
      __$$AuthDisableBiometricImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthDisableBiometricImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthDisableBiometricImpl>
    implements _$$AuthDisableBiometricImplCopyWith<$Res> {
  __$$AuthDisableBiometricImplCopyWithImpl(_$AuthDisableBiometricImpl _value,
      $Res Function(_$AuthDisableBiometricImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthDisableBiometricImpl implements AuthDisableBiometric {
  const _$AuthDisableBiometricImpl();

  @override
  String toString() {
    return 'AuthEvent.disableBiometric()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDisableBiometricImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return disableBiometric();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return disableBiometric?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (disableBiometric != null) {
      return disableBiometric();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return disableBiometric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return disableBiometric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (disableBiometric != null) {
      return disableBiometric(this);
    }
    return orElse();
  }
}

abstract class AuthDisableBiometric implements AuthEvent {
  const factory AuthDisableBiometric() = _$AuthDisableBiometricImpl;
}

/// @nodoc
abstract class _$$AuthUpdateProfileImplCopyWith<$Res> {
  factory _$$AuthUpdateProfileImplCopyWith(_$AuthUpdateProfileImpl value,
          $Res Function(_$AuthUpdateProfileImpl) then) =
      __$$AuthUpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? firstName, String? lastName, String? avatarUrl});
}

/// @nodoc
class __$$AuthUpdateProfileImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthUpdateProfileImpl>
    implements _$$AuthUpdateProfileImplCopyWith<$Res> {
  __$$AuthUpdateProfileImplCopyWithImpl(_$AuthUpdateProfileImpl _value,
      $Res Function(_$AuthUpdateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$AuthUpdateProfileImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthUpdateProfileImpl implements AuthUpdateProfile {
  const _$AuthUpdateProfileImpl(
      {this.firstName, this.lastName, this.avatarUrl});

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'AuthEvent.updateProfile(firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUpdateProfileImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, avatarUrl);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUpdateProfileImplCopyWith<_$AuthUpdateProfileImpl> get copyWith =>
      __$$AuthUpdateProfileImplCopyWithImpl<_$AuthUpdateProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return updateProfile(firstName, lastName, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return updateProfile?.call(firstName, lastName, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(firstName, lastName, avatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class AuthUpdateProfile implements AuthEvent {
  const factory AuthUpdateProfile(
      {final String? firstName,
      final String? lastName,
      final String? avatarUrl}) = _$AuthUpdateProfileImpl;

  String? get firstName;
  String? get lastName;
  String? get avatarUrl;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUpdateProfileImplCopyWith<_$AuthUpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthChangePasswordImplCopyWith<$Res> {
  factory _$$AuthChangePasswordImplCopyWith(_$AuthChangePasswordImpl value,
          $Res Function(_$AuthChangePasswordImpl) then) =
      __$$AuthChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentPassword, String newPassword});
}

/// @nodoc
class __$$AuthChangePasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthChangePasswordImpl>
    implements _$$AuthChangePasswordImplCopyWith<$Res> {
  __$$AuthChangePasswordImplCopyWithImpl(_$AuthChangePasswordImpl _value,
      $Res Function(_$AuthChangePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$AuthChangePasswordImpl(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthChangePasswordImpl implements AuthChangePassword {
  const _$AuthChangePasswordImpl(
      {required this.currentPassword, required this.newPassword});

  @override
  final String currentPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.changePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthChangePasswordImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthChangePasswordImplCopyWith<_$AuthChangePasswordImpl> get copyWith =>
      __$$AuthChangePasswordImplCopyWithImpl<_$AuthChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return changePassword(currentPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return changePassword?.call(currentPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(currentPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class AuthChangePassword implements AuthEvent {
  const factory AuthChangePassword(
      {required final String currentPassword,
      required final String newPassword}) = _$AuthChangePasswordImpl;

  String get currentPassword;
  String get newPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthChangePasswordImplCopyWith<_$AuthChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthVerifyEmailImplCopyWith<$Res> {
  factory _$$AuthVerifyEmailImplCopyWith(_$AuthVerifyEmailImpl value,
          $Res Function(_$AuthVerifyEmailImpl) then) =
      __$$AuthVerifyEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthVerifyEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthVerifyEmailImpl>
    implements _$$AuthVerifyEmailImplCopyWith<$Res> {
  __$$AuthVerifyEmailImplCopyWithImpl(
      _$AuthVerifyEmailImpl _value, $Res Function(_$AuthVerifyEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthVerifyEmailImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthVerifyEmailImpl implements AuthVerifyEmail {
  const _$AuthVerifyEmailImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.verifyEmail(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthVerifyEmailImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthVerifyEmailImplCopyWith<_$AuthVerifyEmailImpl> get copyWith =>
      __$$AuthVerifyEmailImplCopyWithImpl<_$AuthVerifyEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return verifyEmail(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return verifyEmail?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class AuthVerifyEmail implements AuthEvent {
  const factory AuthVerifyEmail({required final String token}) =
      _$AuthVerifyEmailImpl;

  String get token;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthVerifyEmailImplCopyWith<_$AuthVerifyEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResendEmailVerificationImplCopyWith<$Res> {
  factory _$$AuthResendEmailVerificationImplCopyWith(
          _$AuthResendEmailVerificationImpl value,
          $Res Function(_$AuthResendEmailVerificationImpl) then) =
      __$$AuthResendEmailVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthResendEmailVerificationImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthResendEmailVerificationImpl>
    implements _$$AuthResendEmailVerificationImplCopyWith<$Res> {
  __$$AuthResendEmailVerificationImplCopyWithImpl(
      _$AuthResendEmailVerificationImpl _value,
      $Res Function(_$AuthResendEmailVerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthResendEmailVerificationImpl implements AuthResendEmailVerification {
  const _$AuthResendEmailVerificationImpl();

  @override
  String toString() {
    return 'AuthEvent.resendEmailVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResendEmailVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
    required TResult Function(String email, String password) login,
    required TResult Function(
            String email, String password, String firstName, String lastName)
        register,
    required TResult Function() loginWithBiometric,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String token, String newPassword) resetPassword,
    required TResult Function() enableBiometric,
    required TResult Function() disableBiometric,
    required TResult Function(
            String? firstName, String? lastName, String? avatarUrl)
        updateProfile,
    required TResult Function(String currentPassword, String newPassword)
        changePassword,
    required TResult Function(String token) verifyEmail,
    required TResult Function() resendEmailVerification,
  }) {
    return resendEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuthStatus,
    TResult? Function(String email, String password)? login,
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult? Function()? loginWithBiometric,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String newPassword)? resetPassword,
    TResult? Function()? enableBiometric,
    TResult? Function()? disableBiometric,
    TResult? Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult? Function(String currentPassword, String newPassword)?
        changePassword,
    TResult? Function(String token)? verifyEmail,
    TResult? Function()? resendEmailVerification,
  }) {
    return resendEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    TResult Function(String email, String password)? login,
    TResult Function(
            String email, String password, String firstName, String lastName)?
        register,
    TResult Function()? loginWithBiometric,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String newPassword)? resetPassword,
    TResult Function()? enableBiometric,
    TResult Function()? disableBiometric,
    TResult Function(String? firstName, String? lastName, String? avatarUrl)?
        updateProfile,
    TResult Function(String currentPassword, String newPassword)?
        changePassword,
    TResult Function(String token)? verifyEmail,
    TResult Function()? resendEmailVerification,
    required TResult orElse(),
  }) {
    if (resendEmailVerification != null) {
      return resendEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStatus value) checkAuthStatus,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLoginWithBiometric value) loginWithBiometric,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRefreshToken value) refreshToken,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthResetPassword value) resetPassword,
    required TResult Function(AuthEnableBiometric value) enableBiometric,
    required TResult Function(AuthDisableBiometric value) disableBiometric,
    required TResult Function(AuthUpdateProfile value) updateProfile,
    required TResult Function(AuthChangePassword value) changePassword,
    required TResult Function(AuthVerifyEmail value) verifyEmail,
    required TResult Function(AuthResendEmailVerification value)
        resendEmailVerification,
  }) {
    return resendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStatus value)? checkAuthStatus,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthRefreshToken value)? refreshToken,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthResetPassword value)? resetPassword,
    TResult? Function(AuthEnableBiometric value)? enableBiometric,
    TResult? Function(AuthDisableBiometric value)? disableBiometric,
    TResult? Function(AuthUpdateProfile value)? updateProfile,
    TResult? Function(AuthChangePassword value)? changePassword,
    TResult? Function(AuthVerifyEmail value)? verifyEmail,
    TResult? Function(AuthResendEmailVerification value)?
        resendEmailVerification,
  }) {
    return resendEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStatus value)? checkAuthStatus,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLoginWithBiometric value)? loginWithBiometric,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRefreshToken value)? refreshToken,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthResetPassword value)? resetPassword,
    TResult Function(AuthEnableBiometric value)? enableBiometric,
    TResult Function(AuthDisableBiometric value)? disableBiometric,
    TResult Function(AuthUpdateProfile value)? updateProfile,
    TResult Function(AuthChangePassword value)? changePassword,
    TResult Function(AuthVerifyEmail value)? verifyEmail,
    TResult Function(AuthResendEmailVerification value)?
        resendEmailVerification,
    required TResult orElse(),
  }) {
    if (resendEmailVerification != null) {
      return resendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class AuthResendEmailVerification implements AuthEvent {
  const factory AuthResendEmailVerification() =
      _$AuthResendEmailVerificationImpl;
}
