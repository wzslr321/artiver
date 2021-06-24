part of 'connection_bloc.dart';

/// Immutable class that records all the events related to Connection State.
@freezed
class ConnectionEvent with _$ConnectionEvent {
  /// Gets triggered while initializing the application.
  ///
  /// Ensures that user's network connection state is known from very beginning,
  /// since this function is invoked while creating bloc in AppWidget.
  const factory ConnectionEvent.connectionCheckRequested() =
      ConnectionCheckRequested;
}
