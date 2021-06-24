// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connection_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionFailureTearOff {
  const _$ConnectionFailureTearOff();

  NoConnectionFound noConnectionFound() {
    return const NoConnectionFound();
  }
}

/// @nodoc
const $ConnectionFailure = _$ConnectionFailureTearOff();

/// @nodoc
mixin _$ConnectionFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnectionFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnectionFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnectionFound value) noConnectionFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnectionFound value)? noConnectionFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(this._value, this._then);

  final ConnectionFailure _value;
  // ignore: unused_field
  final $Res Function(ConnectionFailure) _then;
}

/// @nodoc
abstract class $NoConnectionFoundCopyWith<$Res> {
  factory $NoConnectionFoundCopyWith(
          NoConnectionFound value, $Res Function(NoConnectionFound) then) =
      _$NoConnectionFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoConnectionFoundCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res>
    implements $NoConnectionFoundCopyWith<$Res> {
  _$NoConnectionFoundCopyWithImpl(
      NoConnectionFound _value, $Res Function(NoConnectionFound) _then)
      : super(_value, (v) => _then(v as NoConnectionFound));

  @override
  NoConnectionFound get _value => super._value as NoConnectionFound;
}

/// @nodoc

class _$NoConnectionFound implements NoConnectionFound {
  const _$NoConnectionFound();

  @override
  String toString() {
    return 'ConnectionFailure.noConnectionFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoConnectionFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnectionFound,
  }) {
    return noConnectionFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnectionFound,
    required TResult orElse(),
  }) {
    if (noConnectionFound != null) {
      return noConnectionFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnectionFound value) noConnectionFound,
  }) {
    return noConnectionFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnectionFound value)? noConnectionFound,
    required TResult orElse(),
  }) {
    if (noConnectionFound != null) {
      return noConnectionFound(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFound implements ConnectionFailure {
  const factory NoConnectionFound() = _$NoConnectionFound;
}
