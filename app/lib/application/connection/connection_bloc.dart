import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../domain/connection/connection_facade_interface.dart';
import '../../domain/connection/connection_failure.dart';
import '../../domain/connection/connection_info_facade_interface.dart';

part 'connection_bloc.freezed.dart';
part 'connection_event.dart';
part 'connection_state.dart';

/// Connection BLoC that handles all events related to user's network connection status.
///
/// Uses [injectable] to inject dependencies and  use
/// [getIt](https://pub.dev/packages/get_it) to avoid
/// creating new instances of this BLoC unnecessary.
@injectable
class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  /// Requires non-nullable [_connectionFacade] parameter to
  /// get access to its methods that are responsible for connection check,
  /// e.g. **_connectionFacade.checkIfConnectionExists()**.
  /// [_connectionFacade] will always be injected with usage of [injectable].
  ConnectionBloc(this._connectionFacade, this._connectionInfo)
      : super(const ConnectionState.initial()) {
    monitorConnection();
  }

  final ConnectionFacadeInterface _connectionFacade;
  final ConnectionInfoFacadeInterface _connectionInfo;

  /// Initial state of connection, that is triggered before
  /// connection check is resolved.
  ConnectionState get initialState => const ConnectionState.initial();

  /// Subscription that listens to user's network connection changes.
  /// Emits that user's network state is disconnected if ConnectivityResult is neither
  /// Wi-Fi nor mobile data - it is none. Otherwise it uses [InternetConnectionChecker] package
  /// to determine if user's connection is valid - e.g. it is not global wi-fi with no
  /// network access. If connection is valid, it emits [ConnectionState.connected]
  /// otherwise [ConnectionState.connectedWithNoNetworkAccess] is emitted.
  StreamSubscription<ConnectivityResult> monitorConnection() {
    return networkSubscription =
        Connectivity().onConnectivityChanged.listen((event) async {
      if (event == ConnectivityResult.none) {
        emit(const ConnectionState.disconnected());
      } else {
        if (await _connectionInfo.hasConnection) {
          emit(const ConnectionState.connected());
        } else {
          emit(const ConnectionState.connectedWithNoNetworkAccess());
        }
      }
    });
  }

  /// [Connectivity]'s network subscription which listens on connectivity changes
  /// in [monitorConnection] function.
  StreamSubscription? networkSubscription;

  @override
  Stream<ConnectionState> mapEventToState(ConnectionEvent event) async* {
    yield* event.map(connectionCheckRequested: (event) async* {
      late Either<ConnectionFailure, Unit> connection;

      await Future.delayed(const Duration(milliseconds: 500), () async {
        connection = await _connectionFacade.checkIfConnectionExists();
      });

      yield connection.fold(
        (left) => const ConnectionState.disconnected(),
        (right) => const ConnectionState.connectedOnInitial(),
      );
    });
  }

  @override
  Future<void> close() {
    networkSubscription?.cancel();
    return super.close();
  }
}
