import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

/// Authentication class revealing all the methods that may be triggered
/// when authentication failure occurs.
@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  /// Occurs when user stops the authentication by himself.
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;

  /// Occurs when server's error leads to an incorrect request.
  const factory AuthenticationFailure.serverError() = ServerError;

  /// Occurs when user wants to create an account using
  /// an email that is already assigned to another account.
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  /// Occurs when user wants to create an account using
  /// a username that is already assigned to another account
  const factory AuthenticationFailure.usernameAlreadyInUse() =
      usernameAlreadyInUse;

  /// Occurs when user entered incorrect input, that does not match
  /// any account in the database.
  const factory AuthenticationFailure.invalidCredentials() = InvalidCredentials;
}
