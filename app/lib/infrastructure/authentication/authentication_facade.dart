import 'package:artiver/domain/core/request_failure.dart';
import 'package:artiver/domain/core/requester.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/authentication/authentication_facade_interface.dart';
import '../../domain/authentication/authentication_failure.dart';
import '../../domain/authentication/value_objects.dart';
import 'authentication_requester_facade.dart';

/// AuthenticationFacade responsible for implementing functionality of authorization methods.
///
/// Facade is related to SRP - The Single Responsibility Principle, which is
/// one of SOLID principles. *A module should be responsible to one, and only one, actor.*
/// This facade interface contains very little code. It is responsible for instantiating and
/// delegating the code to the classes with the functions.
///
/// This class implements [AuthenticationFacadeInterface] located in /app/lib/domain/authentication directory.
/// It makes it possible to override revealed methods and code their functionality.
@injectable
class AuthenticationFacade implements AuthenticationFacadeInterface {
  AuthenticationFacade(this._authFacade);

  final AuthenticationRequesterFacade _authFacade;

  @override
  Future<Either<AuthenticationFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailString = email.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      // <!> TODO --> Create a method to register, with use of Dio and request to back-end server. <!>
      // Consider creating a facade class like 'AuthRequester'
      // Store URL's for requests in a different file.
      await Requester.sendRequest(
        () => _authFacade.requestToCreateUser(
          email: emailString,
          password: passwordString,
        ),
      );
      return right(unit);
    } on PlatformException catch (error) {
      if (error.code == 'email-already-in-use') {
        return left(const AuthenticationFailure.emailAlreadyInUse());
      }
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword(
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
