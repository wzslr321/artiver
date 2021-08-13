import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../core/request_failure.dart';

abstract class AuthenticationRequesterFacadeInterface {
  Future<Either<RequestFailure, Response>> requestToCreateUser({
    required String email,
    required String password,
  });

  Future<Either<RequestFailure, Response>> requestToSetUsername({
    required String username,
  });

  Future<Either<RequestFailure, Response>> requestToValidateUserCredentials({
    required String email,
    required String password,
  });

  Future<Either<RequestFailure, Response>> requestToChangePassword({
    required String newPassword,
  });

  Future<Either<RequestFailure, Response>> requestToChangeUsername({
    required String newUsername,
  });
}
