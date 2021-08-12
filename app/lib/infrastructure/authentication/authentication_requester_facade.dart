import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/authentication/authentication_requester_facade_interface.dart';
import '../../domain/core/request_failure.dart';

class AuthenticationRequesterFacade
    implements AuthenticationRequesterFacadeInterface {
  @override
  Future<Either<RequestFailure, Response<String>>> requestToCreateUser(
      {required String email, required String password}) {
    // do sth with dio, to be implemented
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Response>> requestToSetUsername(
      {required String username}) {
    // TODO: implement requestToSetUsername
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Response>> requestToValidateUserCredentials(
      {required String email, required String password}) {
    // TODO: implement requestToValidateUserCredentials
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Response>> requestToChangePassword(
      {required String newPassword}) {
    // TODO: implement requestToChangePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Response>> requestToChangeUsername(
      {required String newUsername}) {
    // TODO: implement requestToChangeUsername
    throw UnimplementedError();
  }
}
