import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'authentication_failure.dart';

abstract class AuthenticationRequesterFacadeInterface {
  Future<Either<Response, AuthenticationFailure>> requestToCreateUser({
    required String email,
    required String password,
  });

  Future<Either<Response, AuthenticationFailure>> requestToSetUsername({
    required String username,
  });

  Future<Either<Response, AuthenticationFailure>>
      requestToValidateUserCredentials({
    required String email,
    required String password,
  });

  Future<Either<Response, AuthenticationFailure>> requestToChangePassword({
    required String newPassword,
  });

  Future<Either<Response, AuthenticationFailure>> requestToChangeUsername({
    required String newUsername,
  });
}
