import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure<T> with _$RequestFailure<T> {
  const factory RequestFailure.serverError({
    required String statusCode,
  }) = ServerError<T>;
}