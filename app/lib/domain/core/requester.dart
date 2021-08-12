import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'errors.dart';
import 'request_failure.dart';

@immutable
abstract class Requester{
  const Requester(this.url);

  final String url;

  Future<Either<RequestError, Response<String>>> sendRequest() async {
    try {
      final dio = Dio();
      final response = await dio.get<String>(url);
      return right(response);
    } on DioError catch (error) {
      if (error.response != null) {
        final requestFailure =
            RequestFailure<DioError>.invalidResponseStatusCode(response: error);

        return left(RequestError(requestFailure));
      } else {
        final requestFailure =
            RequestFailure<DioError>.noResponse(response: error);

        return left(RequestError(requestFailure));
      }
    }
  }
}
