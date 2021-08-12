import 'package:artiver/domain/core/errors.dart';
import 'package:artiver/domain/core/request_failure.dart';
import 'package:artiver/domain/core/requester.dart';
import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';

import '../../domain/authentication/authentication_failure.dart';
import '../../domain/authentication/authentication_requester_facade_interface.dart';

class AuthenticationRequesterFacade
    implements AuthenticationRequesterFacadeInterface {
  @override
  Future<Either<RequestFailure, Response<String>>> requestToCreateUser(
      {required String email, required String password}) {

    });
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

  @override
  Future<Either<RequestError, Response<String>>> sendRequest() {
    // TODO: implement sendRequest
    throw UnimplementedError();
  }

  @override
  // TODO: implement url
  String get url => throw UnimplementedError();
}
