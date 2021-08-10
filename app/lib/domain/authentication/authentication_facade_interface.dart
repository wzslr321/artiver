import 'package:fpdart/fpdart.dart';

import 'authentication_failure.dart';

/// Authentication class which reveals all methods related to authorization.
///
/// Facade is related to SRP - The Single Responsibility Principle, which is
/// one of SOLID principles. *A module should be responsible to one, and only one, actor.*
/// This facade interface contains very little code. It is responsible for instantiating and
/// delegating the code to the classes with the functions.
///
/// This class is implemented by AuthenticationFacade located in /app/lib/infrastructure/authentication directory.
/// AuthenticationFacade overrides implemented methods and contains whole functionality of particular functions.
abstract class AuthenticationFacadeInterface {
  Future<Either<AuthenticationFailure, Unit>>? registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<AuthenticationFailure, Unit>>? signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

