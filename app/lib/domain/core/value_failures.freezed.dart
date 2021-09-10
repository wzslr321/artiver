// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required String incorrectValue}) {
    return InvalidEmail<T>(
      incorrectValue: incorrectValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({required String incorrectValue}) {
    return InvalidPassword<T>(
      incorrectValue: incorrectValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  String get incorrectValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String incorrectValue) invalidEmail,
    required TResult Function(String incorrectValue) invalidPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String incorrectValue)? invalidEmail,
    TResult Function(String incorrectValue)? invalidPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String incorrectValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? incorrectValue = freezed,
  }) {
    return _then(_value.copyWith(
      incorrectValue: incorrectValue == freezed
          ? _value.incorrectValue
          : incorrectValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String incorrectValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? incorrectValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      incorrectValue: incorrectValue == freezed
          ? _value.incorrectValue
          : incorrectValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.incorrectValue});

  @override
  final String incorrectValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(incorrectValue: $incorrectValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.incorrectValue, incorrectValue) ||
                const DeepCollectionEquality()
                    .equals(other.incorrectValue, incorrectValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(incorrectValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String incorrectValue) invalidEmail,
    required TResult Function(String incorrectValue) invalidPassword,
  }) {
    return invalidEmail(incorrectValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String incorrectValue)? invalidEmail,
    TResult Function(String incorrectValue)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(incorrectValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String incorrectValue}) =
      _$InvalidEmail<T>;

  @override
  String get incorrectValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String incorrectValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object? incorrectValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      incorrectValue: incorrectValue == freezed
          ? _value.incorrectValue
          : incorrectValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({required this.incorrectValue});

  @override
  final String incorrectValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(incorrectValue: $incorrectValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.incorrectValue, incorrectValue) ||
                const DeepCollectionEquality()
                    .equals(other.incorrectValue, incorrectValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(incorrectValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String incorrectValue) invalidEmail,
    required TResult Function(String incorrectValue) invalidPassword,
  }) {
    return invalidPassword(incorrectValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String incorrectValue)? invalidEmail,
    TResult Function(String incorrectValue)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(incorrectValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({required String incorrectValue}) =
      _$InvalidPassword<T>;

  @override
  String get incorrectValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
