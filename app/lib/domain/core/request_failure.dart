import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure<T> with _$RequestFailure<T> {
  const factory RequestFailure.noResponse({
    required DioError response,
  }) = noResponse<T>;

  const factory RequestFailure.invalidResponseStatusCode({
    required DioError response,
  }) = InvalidResponseStatusCode<T>;

  const factory RequestFailure.invalidUrl({
    required DioError url,
  }) = InvalidUrl<T>;

  const factory RequestFailure.invalidRequestBody({
    required DioError body,
  }) = InvalidRequestBody<T>;
}
