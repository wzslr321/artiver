import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_failure.freezed.dart';

/// Immutable class that handles all possible circumstances that leads to *Connection Failure*.
@freezed
class ConnectionFailure with _$ConnectionFailure {
  /// Occurs when connection check failed to find a connection - user
  /// is not connected to the internet during app initialization.
  const factory ConnectionFailure.noConnectionFound() = NoConnectionFound;
}