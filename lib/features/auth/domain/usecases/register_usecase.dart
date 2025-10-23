import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/auth_response_entity.dart';
import '../repositories/auth_repository.dart';

/// Use case for user registration
class RegisterUseCase implements UseCase<AuthResponseEntity, RegisterParams> {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<Either<Failure, AuthResponseEntity>> call(RegisterParams params) async {
    // Validate input
    final validation = _validateParams(params);
    if (validation != null) {
      return Left(ValidationFailure(message: validation));
    }

    return await repository.register(
      email: params.email,
      password: params.password,
      firstName: params.firstName,
      lastName: params.lastName,
    );
  }

  String? _validateParams(RegisterParams params) {
    if (params.email.isEmpty) return 'Email is required';
    if (params.password.isEmpty) return 'Password is required';
    if (params.firstName.isEmpty) return 'First name is required';
    if (params.lastName.isEmpty) return 'Last name is required';
    
    if (!_isValidEmail(params.email)) return 'Invalid email format';
    if (!_isValidPassword(params.password)) {
      return 'Password must be at least 8 characters with uppercase, lowercase, number and special character';
    }
    
    return null;
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  bool _isValidPassword(String password) {
    // At least 8 characters, uppercase, lowercase, number, special character
    return password.length >= 8 &&
        RegExp(r'[A-Z]').hasMatch(password) &&
        RegExp(r'[a-z]').hasMatch(password) &&
        RegExp(r'[0-9]').hasMatch(password) &&
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
  }
}

/// Parameters for register use case
class RegisterParams extends Equatable {
  final String email;
  final String password;
  final String firstName;
  final String lastName;

  const RegisterParams({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object> get props => [email, password, firstName, lastName];
}