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

  noResponse<T> noResponse<T>({required DioError response}) {
    return noResponse<T>(
      response: response,
    );
  }

  InvalidResponseStatusCode<T> invalidResponseStatusCode<T>(
      {required DioError response}) {
    return InvalidResponseStatusCode<T>(
      response: response,
    );
  }

  InvalidUrl<T> invalidUrl<T>({required DioError url}) {
    return InvalidUrl<T>(
      url: url,
    );
  }

  InvalidRequestBody<T> invalidRequestBody<T>({required DioError body}) {
    return InvalidRequestBody<T>(
      body: body,
    );
  }
}

/// @nodoc
const $RequestFailure = _$RequestFailureTearOff();

/// @nodoc
mixin _$RequestFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError response) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError response)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse<T> value) noResponse,
    required TResult Function(InvalidResponseStatusCode<T> value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
    required TResult Function(InvalidRequestBody<T> value) invalidRequestBody,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse<T> value)? noResponse,
    TResult Function(InvalidResponseStatusCode<T> value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    TResult Function(InvalidRequestBody<T> value)? invalidRequestBody,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFailureCopyWith<T, $Res> {
  factory $RequestFailureCopyWith(
          RequestFailure<T> value, $Res Function(RequestFailure<T>) then) =
      _$RequestFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RequestFailureCopyWithImpl<T, $Res>
    implements $RequestFailureCopyWith<T, $Res> {
  _$RequestFailureCopyWithImpl(this._value, this._then);

  final RequestFailure<T> _value;
  // ignore: unused_field
  final $Res Function(RequestFailure<T>) _then;
}

/// @nodoc
abstract class $noResponseCopyWith<T, $Res> {
  factory $noResponseCopyWith(
          noResponse<T> value, $Res Function(noResponse<T>) then) =
      _$noResponseCopyWithImpl<T, $Res>;
  $Res call({DioError response});
}

/// @nodoc
class _$noResponseCopyWithImpl<T, $Res>
    extends _$RequestFailureCopyWithImpl<T, $Res>
    implements $noResponseCopyWith<T, $Res> {
  _$noResponseCopyWithImpl(
      noResponse<T> _value, $Res Function(noResponse<T>) _then)
      : super(_value, (v) => _then(v as noResponse<T>));

  @override
  noResponse<T> get _value => super._value as noResponse<T>;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(noResponse<T>(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$noResponse<T> implements noResponse<T> {
  const _$noResponse({required this.response});

  @override
  final DioError response;

  @override
  String toString() {
    return 'RequestFailure<$T>.noResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is noResponse<T> &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $noResponseCopyWith<T, noResponse<T>> get copyWith =>
      _$noResponseCopyWithImpl<T, noResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError response) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return noResponse(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError response)? noResponse,
    TResult Function(DioError response)? invalidResponseStatusCode,
    TResult Function(DioError url)? invalidUrl,
    TResult Function(DioError body)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(noResponse<T> value) noResponse,
    required TResult Function(InvalidResponseStatusCode<T> value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
    required TResult Function(InvalidRequestBody<T> value) invalidRequestBody,
  }) {
    return noResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse<T> value)? noResponse,
    TResult Function(InvalidResponseStatusCode<T> value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    TResult Function(InvalidRequestBody<T> value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(this);
    }
    return orElse();
  }
}

abstract class noResponse<T> implements RequestFailure<T> {
  const factory noResponse({required DioError response}) = _$noResponse<T>;

  DioError get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $noResponseCopyWith<T, noResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidResponseStatusCodeCopyWith<T, $Res> {
  factory $InvalidResponseStatusCodeCopyWith(InvalidResponseStatusCode<T> value,
          $Res Function(InvalidResponseStatusCode<T>) then) =
      _$InvalidResponseStatusCodeCopyWithImpl<T, $Res>;
  $Res call({DioError response});
}

/// @nodoc
class _$InvalidResponseStatusCodeCopyWithImpl<T, $Res>
    extends _$RequestFailureCopyWithImpl<T, $Res>
    implements $InvalidResponseStatusCodeCopyWith<T, $Res> {
  _$InvalidResponseStatusCodeCopyWithImpl(InvalidResponseStatusCode<T> _value,
      $Res Function(InvalidResponseStatusCode<T>) _then)
      : super(_value, (v) => _then(v as InvalidResponseStatusCode<T>));

  @override
  InvalidResponseStatusCode<T> get _value =>
      super._value as InvalidResponseStatusCode<T>;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(InvalidResponseStatusCode<T>(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$InvalidResponseStatusCode<T> implements InvalidResponseStatusCode<T> {
  const _$InvalidResponseStatusCode({required this.response});

  @override
  final DioError response;

  @override
  String toString() {
    return 'RequestFailure<$T>.invalidResponseStatusCode(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidResponseStatusCode<T> &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $InvalidResponseStatusCodeCopyWith<T, InvalidResponseStatusCode<T>>
      get copyWith => _$InvalidResponseStatusCodeCopyWithImpl<T,
          InvalidResponseStatusCode<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError response) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return invalidResponseStatusCode(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError response)? noResponse,
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
    required TResult Function(noResponse<T> value) noResponse,
    required TResult Function(InvalidResponseStatusCode<T> value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
    required TResult Function(InvalidRequestBody<T> value) invalidRequestBody,
  }) {
    return invalidResponseStatusCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse<T> value)? noResponse,
    TResult Function(InvalidResponseStatusCode<T> value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    TResult Function(InvalidRequestBody<T> value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidResponseStatusCode != null) {
      return invalidResponseStatusCode(this);
    }
    return orElse();
  }
}

abstract class InvalidResponseStatusCode<T> implements RequestFailure<T> {
  const factory InvalidResponseStatusCode({required DioError response}) =
      _$InvalidResponseStatusCode<T>;

  DioError get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidResponseStatusCodeCopyWith<T, InvalidResponseStatusCode<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUrlCopyWith<T, $Res> {
  factory $InvalidUrlCopyWith(
          InvalidUrl<T> value, $Res Function(InvalidUrl<T>) then) =
      _$InvalidUrlCopyWithImpl<T, $Res>;
  $Res call({DioError url});
}

/// @nodoc
class _$InvalidUrlCopyWithImpl<T, $Res>
    extends _$RequestFailureCopyWithImpl<T, $Res>
    implements $InvalidUrlCopyWith<T, $Res> {
  _$InvalidUrlCopyWithImpl(
      InvalidUrl<T> _value, $Res Function(InvalidUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidUrl<T>));

  @override
  InvalidUrl<T> get _value => super._value as InvalidUrl<T>;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(InvalidUrl<T>(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$InvalidUrl<T> implements InvalidUrl<T> {
  const _$InvalidUrl({required this.url});

  @override
  final DioError url;

  @override
  String toString() {
    return 'RequestFailure<$T>.invalidUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUrl<T> &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith =>
      _$InvalidUrlCopyWithImpl<T, InvalidUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError response) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return invalidUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError response)? noResponse,
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
    required TResult Function(noResponse<T> value) noResponse,
    required TResult Function(InvalidResponseStatusCode<T> value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
    required TResult Function(InvalidRequestBody<T> value) invalidRequestBody,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse<T> value)? noResponse,
    TResult Function(InvalidResponseStatusCode<T> value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    TResult Function(InvalidRequestBody<T> value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidUrl<T> implements RequestFailure<T> {
  const factory InvalidUrl({required DioError url}) = _$InvalidUrl<T>;

  DioError get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidRequestBodyCopyWith<T, $Res> {
  factory $InvalidRequestBodyCopyWith(InvalidRequestBody<T> value,
          $Res Function(InvalidRequestBody<T>) then) =
      _$InvalidRequestBodyCopyWithImpl<T, $Res>;
  $Res call({DioError body});
}

/// @nodoc
class _$InvalidRequestBodyCopyWithImpl<T, $Res>
    extends _$RequestFailureCopyWithImpl<T, $Res>
    implements $InvalidRequestBodyCopyWith<T, $Res> {
  _$InvalidRequestBodyCopyWithImpl(
      InvalidRequestBody<T> _value, $Res Function(InvalidRequestBody<T>) _then)
      : super(_value, (v) => _then(v as InvalidRequestBody<T>));

  @override
  InvalidRequestBody<T> get _value => super._value as InvalidRequestBody<T>;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(InvalidRequestBody<T>(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$InvalidRequestBody<T> implements InvalidRequestBody<T> {
  const _$InvalidRequestBody({required this.body});

  @override
  final DioError body;

  @override
  String toString() {
    return 'RequestFailure<$T>.invalidRequestBody(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidRequestBody<T> &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  $InvalidRequestBodyCopyWith<T, InvalidRequestBody<T>> get copyWith =>
      _$InvalidRequestBodyCopyWithImpl<T, InvalidRequestBody<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError response) noResponse,
    required TResult Function(DioError response) invalidResponseStatusCode,
    required TResult Function(DioError url) invalidUrl,
    required TResult Function(DioError body) invalidRequestBody,
  }) {
    return invalidRequestBody(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError response)? noResponse,
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
    required TResult Function(noResponse<T> value) noResponse,
    required TResult Function(InvalidResponseStatusCode<T> value)
        invalidResponseStatusCode,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
    required TResult Function(InvalidRequestBody<T> value) invalidRequestBody,
  }) {
    return invalidRequestBody(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(noResponse<T> value)? noResponse,
    TResult Function(InvalidResponseStatusCode<T> value)?
        invalidResponseStatusCode,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    TResult Function(InvalidRequestBody<T> value)? invalidRequestBody,
    required TResult orElse(),
  }) {
    if (invalidRequestBody != null) {
      return invalidRequestBody(this);
    }
    return orElse();
  }
}

abstract class InvalidRequestBody<T> implements RequestFailure<T> {
  const factory InvalidRequestBody({required DioError body}) =
      _$InvalidRequestBody<T>;

  DioError get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidRequestBodyCopyWith<T, InvalidRequestBody<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
