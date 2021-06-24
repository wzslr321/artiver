part of 'connection_bloc.dart';

/// Registers all circumstances related to connection state.
///
/// Uses [freezed] to make class immutable.
/// Contains 3 constant factory properties that represents
/// possible connection states.
@freezed
class ConnectionState with _$ConnectionState {
  /// Inits connection state to be non-nullable,
  /// it is resolved when creating bloc is finished,
  /// with help of connection check function that is triggered
  /// during app initialization.
  const factory ConnectionState.initial() = Initial;

  /// Informs that this particular event is related to the same connectivity result,
  /// although occurs only once. It gives a possibility to ensure better
  /// user experience and do not show connection's state snackbar
  /// if user opens an app with proper network connection since the beginning.
  const factory ConnectionState.connectedOnInitial() = ConnectedOnInitial;

  /// User is connected to the network - WiFi or Mobile Data.
  const factory ConnectionState.connected() = Connected;

  /// User isn't connected to any network.
  const factory ConnectionState.disconnected() = Disconnected;

  /// User is connected to the internet, but does not have network access,
  /// e.g. when he is connected to the global Wi-Fi. It is not meant to a decider
  /// whether you can reliably make a network connection. Protection against
  /// timeouts and errors are always needed.
  const factory ConnectionState.connectedWithNoNetworkAccess() =
  ConnectedWithNoNetworkAccess;
}