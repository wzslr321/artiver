import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

/// Authentication class revealing all the methods that may be triggered
/// when authentication failure occurs.
@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;

  const factory AuthenticationFailure.serverError() = ServerError;

  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthenticationFailure.usernameAlreadyInUse() = usernameAlreadyInUse;

  const factory AuthenticationFailure.invalidCredentials() = InvalidCredentials;
}