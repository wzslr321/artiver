// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestFailureTearOff {
  const _$RequestFailureTearOff();

  noResponse noResponse({required DioError error}) {
    return noResponse(
      error: error,
    );
  }

  InvalidResponseStatusCode invalidResponseStatusCode(
      {required DioError response}) {
    return InvalidResponseStatusCode(
      response: response,
    );
  }

  InvalidUrl invalidUrl({required DioError url}) {
    return InvalidUrl(
      url: url,
    );
  }

  InvalidRequestBody invalidRequestBody({required DioError body}) {
    return InvalidRequestBody(
      body: body,
    );
  }
}

/// @nodoc
const $RequestFailure = _$RequestFailureTearOff();

/// @nodoc
mixin _$RequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse value) noResponse,
    required TResult Function(InvalidResponseStatusCode value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl value) invalidUrl,
    required TResult Function(InvalidRequestBody value) invalidRequestBody,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse value)? noResponse,
    TResult Function(InvalidResponseStatusCode value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl value)? invalidUrl,
    TResult Function(InvalidRequestBody value)? invalidRequestBody,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFailureCopyWith<$Res> {
  factory $RequestFailureCopyWith(
          RequestFailure value, $Res Function(RequestFailure) then) =
      _$RequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFailureCopyWithImpl<$Res>
    implements $RequestFailureCopyWith<$Res> {
  _$RequestFailureCopyWithImpl(this._value, this._then);

  final RequestFailure _value;
  // ignore: unused_field
  final $Res Function(RequestFailure) _then;
}

/// @nodoc
abstract class $noResponseCopyWith<$Res> {
  factory $noResponseCopyWith(
          noResponse value, $Res Function(noResponse) then) =
      _$noResponseCopyWithImpl<$Res>;
  $Res call({DioError error});
}

/// @nodoc
class _$noResponseCopyWithImpl<$Res> extends _$RequestFailureCopyWithImpl<$Res>
    implements $noResponseCopyWith<$Res> {
  _$noResponseCopyWithImpl(noResponse _value, $Res Function(noResponse) _then)
      : super(_value, (v) => _then(v as noResponse));

  @override
  noResponse get _value => super._value as noResponse;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(noResponse(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$noResponse implements noResponse {
  const _$noResponse({required this.error});

  @override
  final DioError error;

  @override
  String toString() {
    return 'RequestFailure.noResponse(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is noResponse &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $noResponseCopyWith<noResponse> get copyWith =>
      _$noResponseCopyWithImpl<noResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return noResponse(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse value) noResponse,
    required TResult Function(InvalidResponseStatusCode value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl value) invalidUrl,
    required TResult Function(InvalidRequestBody value) invalidRequestBody,
  }) {
    return noResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse value)? noResponse,
    TResult Function(InvalidResponseStatusCode value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl value)? invalidUrl,
    TResult Function(InvalidRequestBody value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(this);
    }
    return orElse();
  }
}

abstract class noResponse implements RequestFailure {
  const factory noResponse({required DioError error}) = _$noResponse;

  DioError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $noResponseCopyWith<noResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidResponseStatusCodeCopyWith<$Res> {
  factory $InvalidResponseStatusCodeCopyWith(InvalidResponseStatusCode value,
          $Res Function(InvalidResponseStatusCode) then) =
      _$InvalidResponseStatusCodeCopyWithImpl<$Res>;
  $Res call({DioError response});
}

/// @nodoc
class _$InvalidResponseStatusCodeCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements $InvalidResponseStatusCodeCopyWith<$Res> {
  _$InvalidResponseStatusCodeCopyWithImpl(InvalidResponseStatusCode _value,
      $Res Function(InvalidResponseStatusCode) _then)
      : super(_value, (v) => _then(v as InvalidResponseStatusCode));

  @override
  InvalidResponseStatusCode get _value =>
      super._value as InvalidResponseStatusCode;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(InvalidResponseStatusCode(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$InvalidResponseStatusCode implements InvalidResponseStatusCode {
  const _$InvalidResponseStatusCode({required this.response});

  @override
  final DioError response;

  @override
  String toString() {
    return 'RequestFailure.invalidResponseStatusCode(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidResponseStatusCode &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $InvalidResponseStatusCodeCopyWith<InvalidResponseStatusCode> get copyWith =>
      _$InvalidResponseStatusCodeCopyWithImpl<InvalidResponseStatusCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return invalidResponseStatusCode(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidResponseStatusCode != null) {
      return invalidResponseStatusCode(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse value) noResponse,
    required TResult Function(InvalidResponseStatusCode value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl value) invalidUrl,
    required TResult Function(InvalidRequestBody value) invalidRequestBody,
  }) {
    return invalidResponseStatusCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse value)? noResponse,
    TResult Function(InvalidResponseStatusCode value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl value)? invalidUrl,
    TResult Function(InvalidRequestBody value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidResponseStatusCode != null) {
      return invalidResponseStatusCode(this);
    }
    return orElse();
  }
}

abstract class InvalidResponseStatusCode implements RequestFailure {
  const factory InvalidResponseStatusCode({required DioError response}) =
      _$InvalidResponseStatusCode;

  DioError get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidResponseStatusCodeCopyWith<InvalidResponseStatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUrlCopyWith<$Res> {
  factory $InvalidUrlCopyWith(
          InvalidUrl value, $Res Function(InvalidUrl) then) =
      _$InvalidUrlCopyWithImpl<$Res>;
  $Res call({DioError url});
}

/// @nodoc
class _$InvalidUrlCopyWithImpl<$Res> extends _$RequestFailureCopyWithImpl<$Res>
    implements $InvalidUrlCopyWith<$Res> {
  _$InvalidUrlCopyWithImpl(InvalidUrl _value, $Res Function(InvalidUrl) _then)
      : super(_value, (v) => _then(v as InvalidUrl));

  @override
  InvalidUrl get _value => super._value as InvalidUrl;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(InvalidUrl(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$InvalidUrl implements InvalidUrl {
  const _$InvalidUrl({required this.url});

  @override
  final DioError url;

  @override
  String toString() {
    return 'RequestFailure.invalidUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUrl &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $InvalidUrlCopyWith<InvalidUrl> get copyWith =>
      _$InvalidUrlCopyWithImpl<InvalidUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return invalidUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse value) noResponse,
    required TResult Function(InvalidResponseStatusCode value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl value) invalidUrl,
    required TResult Function(InvalidRequestBody value) invalidRequestBody,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse value)? noResponse,
    TResult Function(InvalidResponseStatusCode value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl value)? invalidUrl,
    TResult Function(InvalidRequestBody value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidUrl implements RequestFailure {
  const factory InvalidUrl({required DioError url}) = _$InvalidUrl;

  DioError get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidUrlCopyWith<InvalidUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidRequestBodyCopyWith<$Res> {
  factory $InvalidRequestBodyCopyWith(
          InvalidRequestBody value, $Res Function(InvalidRequestBody) then) =
      _$InvalidRequestBodyCopyWithImpl<$Res>;
  $Res call({DioError body});
}

/// @nodoc
class _$InvalidRequestBodyCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements $InvalidRequestBodyCopyWith<$Res> {
  _$InvalidRequestBodyCopyWithImpl(
      InvalidRequestBody _value, $Res Function(InvalidRequestBody) _then)
      : super(_value, (v) => _then(v as InvalidRequestBody));

  @override
  InvalidRequestBody get _value => super._value as InvalidRequestBody;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(InvalidRequestBody(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$InvalidRequestBody implements InvalidRequestBody {
  const _$InvalidRequestBody({required this.body});

  @override
  final DioError body;

  @override
  String toString() {
    return 'RequestFailure.invalidRequestBody(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidRequestBody &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  $InvalidRequestBodyCopyWith<InvalidRequestBody> get copyWith =>
      _$InvalidRequestBodyCopyWithImpl<InvalidRequestBody>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return invalidRequestBody(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidRequestBody != null) {
      return invalidRequestBody(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse value) noResponse,
    required TResult Function(InvalidResponseStatusCode value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl value) invalidUrl,
    required TResult Function(InvalidRequestBody value) invalidRequestBody,
  }) {
    return invalidRequestBody(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse value)? noResponse,
    TResult Function(InvalidResponseStatusCode value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl value)? invalidUrl,
    TResult Function(InvalidRequestBody value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidRequestBody != null) {
      return invalidRequestBody(this);
    }
    return orElse();
  }
}

abstract class InvalidRequestBody implements RequestFailure {
  const factory InvalidRequestBody({required DioError body}) =
      _$InvalidRequestBody;

  DioError get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidRequestBodyCopyWith<InvalidRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
