import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/auth_response_entity.dart';
import '../repositories/auth_repository.dart';

/// Use case for refreshing authentication token
class RefreshTokenUseCase implements UseCase<AuthResponseEntity, NoParams> {
  final AuthRepository repository;

  RefreshTokenUseCase(this.repository);

  @override
  Future<Either<Failure, AuthResponseEntity>> call(NoParams params) async {
    return await repository.refreshToken();
  }
}