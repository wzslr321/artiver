// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionEventTearOff {
  const _$ConnectionEventTearOff();

  ConnectionCheckRequested connectionCheckRequested() {
    return const ConnectionCheckRequested();
  }
}

/// @nodoc
const $ConnectionEvent = _$ConnectionEventTearOff();

/// @nodoc
mixin _$ConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionCheckRequested value)
        connectionCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionCheckRequested value)? connectionCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionEventCopyWith<$Res> {
  factory $ConnectionEventCopyWith(
          ConnectionEvent value, $Res Function(ConnectionEvent) then) =
      _$ConnectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionEventCopyWithImpl<$Res>
    implements $ConnectionEventCopyWith<$Res> {
  _$ConnectionEventCopyWithImpl(this._value, this._then);

  final ConnectionEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectionEvent) _then;
}

/// @nodoc
abstract class $ConnectionCheckRequestedCopyWith<$Res> {
  factory $ConnectionCheckRequestedCopyWith(ConnectionCheckRequested value,
          $Res Function(ConnectionCheckRequested) then) =
      _$ConnectionCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionCheckRequestedCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res>
    implements $ConnectionCheckRequestedCopyWith<$Res> {
  _$ConnectionCheckRequestedCopyWithImpl(ConnectionCheckRequested _value,
      $Res Function(ConnectionCheckRequested) _then)
      : super(_value, (v) => _then(v as ConnectionCheckRequested));

  @override
  ConnectionCheckRequested get _value =>
      super._value as ConnectionCheckRequested;
}

/// @nodoc

class _$ConnectionCheckRequested implements ConnectionCheckRequested {
  const _$ConnectionCheckRequested();

  @override
  String toString() {
    return 'ConnectionEvent.connectionCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionCheckRequested,
  }) {
    return connectionCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionCheckRequested,
    required TResult orElse(),
  }) {
    if (connectionCheckRequested != null) {
      return connectionCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionCheckRequested value)
        connectionCheckRequested,
  }) {
    return connectionCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionCheckRequested value)? connectionCheckRequested,
    required TResult orElse(),
  }) {
    if (connectionCheckRequested != null) {
      return connectionCheckRequested(this);
    }
    return orElse();
  }
}

abstract class ConnectionCheckRequested implements ConnectionEvent {
  const factory ConnectionCheckRequested() = _$ConnectionCheckRequested;
}

/// @nodoc
class _$ConnectionStateTearOff {
  const _$ConnectionStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ConnectedOnInitial connectedOnInitial() {
    return const ConnectedOnInitial();
  }

  Connected connected() {
    return const Connected();
  }

  Disconnected disconnected() {
    return const Disconnected();
  }

  ConnectedWithNoNetworkAccess connectedWithNoNetworkAccess() {
    return const ConnectedWithNoNetworkAccess();
  }
}

/// @nodoc
const $ConnectionState = _$ConnectionStateTearOff();

/// @nodoc
mixin _$ConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedOnInitial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() connectedWithNoNetworkAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedOnInitial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedOnInitial value) connectedOnInitial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(ConnectedWithNoNetworkAccess value)
        connectedWithNoNetworkAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedOnInitial value)? connectedOnInitial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(ConnectedWithNoNetworkAccess value)?
        connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  final ConnectionState _value;
  // ignore: unused_field
  final $Res Function(ConnectionState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ConnectionStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ConnectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedOnInitial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() connectedWithNoNetworkAccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedOnInitial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedOnInitial value) connectedOnInitial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(ConnectedWithNoNetworkAccess value)
        connectedWithNoNetworkAccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedOnInitial value)? connectedOnInitial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(ConnectedWithNoNetworkAccess value)?
        connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConnectionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ConnectedOnInitialCopyWith<$Res> {
  factory $ConnectedOnInitialCopyWith(
          ConnectedOnInitial value, $Res Function(ConnectedOnInitial) then) =
      _$ConnectedOnInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectedOnInitialCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectedOnInitialCopyWith<$Res> {
  _$ConnectedOnInitialCopyWithImpl(
      ConnectedOnInitial _value, $Res Function(ConnectedOnInitial) _then)
      : super(_value, (v) => _then(v as ConnectedOnInitial));

  @override
  ConnectedOnInitial get _value => super._value as ConnectedOnInitial;
}

/// @nodoc

class _$ConnectedOnInitial implements ConnectedOnInitial {
  const _$ConnectedOnInitial();

  @override
  String toString() {
    return 'ConnectionState.connectedOnInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectedOnInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedOnInitial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() connectedWithNoNetworkAccess,
  }) {
    return connectedOnInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedOnInitial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (connectedOnInitial != null) {
      return connectedOnInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedOnInitial value) connectedOnInitial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(ConnectedWithNoNetworkAccess value)
        connectedWithNoNetworkAccess,
  }) {
    return connectedOnInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedOnInitial value)? connectedOnInitial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(ConnectedWithNoNetworkAccess value)?
        connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (connectedOnInitial != null) {
      return connectedOnInitial(this);
    }
    return orElse();
  }
}

abstract class ConnectedOnInitial implements ConnectionState {
  const factory ConnectedOnInitial() = _$ConnectedOnInitial;
}

/// @nodoc
abstract class $ConnectedCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) then) =
      _$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectedCopyWithImpl<$Res> extends _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(Connected _value, $Res Function(Connected) _then)
      : super(_value, (v) => _then(v as Connected));

  @override
  Connected get _value => super._value as Connected;
}

/// @nodoc

class _$Connected implements Connected {
  const _$Connected();

  @override
  String toString() {
    return 'ConnectionState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedOnInitial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() connectedWithNoNetworkAccess,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedOnInitial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedOnInitial value) connectedOnInitial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(ConnectedWithNoNetworkAccess value)
        connectedWithNoNetworkAccess,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedOnInitial value)? connectedOnInitial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(ConnectedWithNoNetworkAccess value)?
        connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements ConnectionState {
  const factory Connected() = _$Connected;
}

/// @nodoc
abstract class $DisconnectedCopyWith<$Res> {
  factory $DisconnectedCopyWith(
          Disconnected value, $Res Function(Disconnected) then) =
      _$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements $DisconnectedCopyWith<$Res> {
  _$DisconnectedCopyWithImpl(
      Disconnected _value, $Res Function(Disconnected) _then)
      : super(_value, (v) => _then(v as Disconnected));

  @override
  Disconnected get _value => super._value as Disconnected;
}

/// @nodoc

class _$Disconnected implements Disconnected {
  const _$Disconnected();

  @override
  String toString() {
    return 'ConnectionState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedOnInitial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() connectedWithNoNetworkAccess,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedOnInitial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedOnInitial value) connectedOnInitial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(ConnectedWithNoNetworkAccess value)
        connectedWithNoNetworkAccess,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedOnInitial value)? connectedOnInitial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(ConnectedWithNoNetworkAccess value)?
        connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements ConnectionState {
  const factory Disconnected() = _$Disconnected;
}

/// @nodoc
abstract class $ConnectedWithNoNetworkAccessCopyWith<$Res> {
  factory $ConnectedWithNoNetworkAccessCopyWith(
          ConnectedWithNoNetworkAccess value,
          $Res Function(ConnectedWithNoNetworkAccess) then) =
      _$ConnectedWithNoNetworkAccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectedWithNoNetworkAccessCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectedWithNoNetworkAccessCopyWith<$Res> {
  _$ConnectedWithNoNetworkAccessCopyWithImpl(
      ConnectedWithNoNetworkAccess _value,
      $Res Function(ConnectedWithNoNetworkAccess) _then)
      : super(_value, (v) => _then(v as ConnectedWithNoNetworkAccess));

  @override
  ConnectedWithNoNetworkAccess get _value =>
      super._value as ConnectedWithNoNetworkAccess;
}

/// @nodoc

class _$ConnectedWithNoNetworkAccess implements ConnectedWithNoNetworkAccess {
  const _$ConnectedWithNoNetworkAccess();

  @override
  String toString() {
    return 'ConnectionState.connectedWithNoNetworkAccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectedWithNoNetworkAccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedOnInitial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() connectedWithNoNetworkAccess,
  }) {
    return connectedWithNoNetworkAccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedOnInitial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (connectedWithNoNetworkAccess != null) {
      return connectedWithNoNetworkAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedOnInitial value) connectedOnInitial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(ConnectedWithNoNetworkAccess value)
        connectedWithNoNetworkAccess,
  }) {
    return connectedWithNoNetworkAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedOnInitial value)? connectedOnInitial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(ConnectedWithNoNetworkAccess value)?
        connectedWithNoNetworkAccess,
    required TResult orElse(),
  }) {
    if (connectedWithNoNetworkAccess != null) {
      return connectedWithNoNetworkAccess(this);
    }
    return orElse();
  }
}

abstract class ConnectedWithNoNetworkAccess implements ConnectionState {
  const factory ConnectedWithNoNetworkAccess() = _$ConnectedWithNoNetworkAccess;
}
