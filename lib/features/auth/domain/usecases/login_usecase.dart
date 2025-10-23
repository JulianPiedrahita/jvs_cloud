import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/auth_response_entity.dart';
import '../repositories/auth_repository.dart';

/// Use case for user login
class LoginUseCase implements UseCase<AuthResponseEntity, LoginParams> {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, AuthResponseEntity>> call(LoginParams params) async {
    // Validate input
    if (params.email.isEmpty) {
      return const Left(ValidationFailure(message: 'Email is required'));
    }
    if (params.password.isEmpty) {
      return const Left(ValidationFailure(message: 'Password is required'));
    }
    if (!_isValidEmail(params.email)) {
      return const Left(ValidationFailure(message: 'Invalid email format'));
    }

    return await repository.login(
      email: params.email,
      password: params.password,
    );
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}

/// Parameters for login use case
class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}