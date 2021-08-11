import 'package:fpdart/fpdart.dart';

import 'authentication_failure.dart';
import 'value_objects.dart';

/// Authentication class interface which reveals all methods related to authorization.
///
/// Facade is related to SRP - The Single Responsibility Principle, which is
/// one of SOLID principles. *A module should be responsible to one, and only one, actor.*
/// This facade interface contains very little code. It is responsible for instantiating and
/// delegating the code to the classes with the functions.
///
/// This class is implemented by AuthenticationFacade located in /app/lib/infrastructure/authentication directory.
/// AuthenticationFacade overrides implemented methods and contains whole functionality of particular functions.
abstract class AuthenticationFacadeInterface {
  /// Method to register with e-mail and password.
  ///
  /// Returns a future that can return [AuthenticationFailure] if any
  /// unexpected actions will appear that will lead to
  /// unsuccessful registration. In case of correct registration,
  /// returns a [Unit] which is fpdart's void replacement- everything is
  /// ok, no further actions needed.
  Future<Either<AuthenticationFailure, Unit>>? registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  /// Method to sign in with e-mail and password.
  ///
  /// Returns a future that can return [AuthenticationFailure] if any
  /// unexpected actions that leads to unsuccessful login
  /// will appear. In case of correct login,
  /// returns a [Unit] which is fpdart's void replacement.
  Future<Either<AuthenticationFailure, Unit>>? signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  /// Method to sign out user.
  ///
  /// Returns a [Future] to make it awaitable
  /// and possible to avoid any errors
  /// that may happen during not awaited code execution
  /// after [signOut] failure.
  Future<void> signOut();
}
