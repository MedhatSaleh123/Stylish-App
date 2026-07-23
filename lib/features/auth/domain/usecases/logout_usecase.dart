import 'package:dartz/dartz.dart';
import 'package:stylish_app/core/errors/failures.dart';
import '../repositories/authentication_repository.dart';

class LogOutUseCase {
  final AuthenticationRepository repository;

  LogOutUseCase(this.repository);

  Future<Either<Failure, Unit>> call() async {
    return await repository.logOut();
  }
}
