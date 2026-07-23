import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stylish_app/core/errors/failures.dart';
import '../repositories/authentication_repository.dart';

class GoogleAuthUseCase {
  final AuthenticationRepository repository;

  GoogleAuthUseCase(this.repository);

  Future<Either<Failure, UserCredential>> call() async {
    return await repository.googleSignIn();
  }
}
