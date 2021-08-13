import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure with _$RequestFailure {
  const factory RequestFailure.noResponse({
    required DioError error,
  }) = noResponse;

  const factory RequestFailure.invalidResponseStatusCode({
    required DioError response,
  }) = InvalidResponseStatusCode;

  const factory RequestFailure.invalidUrl({
    required DioError url,
  }) = InvalidUrl;

  const factory RequestFailure.invalidRequestBody({
    required DioError body,
  }) = InvalidRequestBody;
}
