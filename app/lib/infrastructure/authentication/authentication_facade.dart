import 'package:fpdart/fpdart.dart';

import '../../domain/authentication/authentication_facade_interface.dart';
import '../../domain/authentication/authentication_failure.dart';

class AuthenticationFacade implements AuthenticationFacadeInterface {
  @override
  Future<Either<AuthenticationFailure, Unit>>? registerWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthenticationFailure, Unit>>? signInWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}