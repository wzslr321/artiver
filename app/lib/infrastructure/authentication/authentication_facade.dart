import 'package:fpdart/fpdart.dart';

import '../../domain/authentication/authentication_facade_interface.dart';
import '../../domain/authentication/authentication_failure.dart';
import '../../domain/authentication/value_objects.dart';

/// AuthenticationFacade responsible for implementing functionality of authorization methods.
///
/// Facade is related to SRP - The Single Responsibility Principle, which is
/// one of SOLID principles. *A module should be responsible to one, and only one, actor.*
/// This facade interface contains very little code. It is responsible for instantiating and
/// delegating the code to the classes with the functions.
///
/// This class implements [AuthenticationFacadeInterface] located in /app/lib/domain/authentication directory.
/// It makes it possible to override revealed methods and code their functionality.
class AuthenticationFacade implements AuthenticationFacadeInterface {
  @override
  Future<Either<AuthenticationFailure, Unit>>? registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailString = email.getOrCrash();
    final passwordString = password.getOrCrash();

    /*
    try {
      // <!> TODO --> Create a method to register, with use of Dio and request to back-end server. <!>
      // Consider creating a facade class like 'AuthRequester'
      // Store URL's for requests in a different file.
      return right(unit);
    }
    // <!> TODO --> Figure out how to receive an error from back-end response and use it in on catch block. <!>
    on ?? catch (error) {
      if error == email already in use {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if error == username already in use {
        return left(const AuthFailure.usernameAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
     */
  }

  @override
  Future<Either<AuthenticationFailure, Unit>>? signInWithEmailAndPassword(
      {required EmailAddress email, required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
