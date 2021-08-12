import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';

import '../../domain/authentication/authentication_failure.dart';
import '../../domain/authentication/authentication_requester_facade_interface.dart';

class AuthenticationRequesterFacade
    implements AuthenticationRequesterFacadeInterface {
  @override
  Future<Either<Response, AuthenticationFailure>> requestToChangePassword(
      {required String newPassword}) {
    // TODO: implement requestToChangePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, AuthenticationFailure>> requestToChangeUsername(
      {required String newUsername}) {
    // TODO: implement requestToChangeUsername
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, AuthenticationFailure>> requestToCreateUser(
      {required String email, required String password}) {
    // TODO: implement requestToCreateUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, AuthenticationFailure>> requestToSetUsername(
      {required String username}) {
    // TODO: implement requestToSetUsername
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, AuthenticationFailure>>
      requestToValidateUserCredentials(
          {required String email, required String password}) {
    // TODO: implement requestToValidateUserCredentials
    throw UnimplementedError();
  }
}
