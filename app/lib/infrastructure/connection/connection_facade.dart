import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/connection/connection_facade_interface.dart';
import '../../domain/connection/connection_failure.dart';

/// Class that communicates directly with [Connectivity] package
/// and its function to handle user's network connection check.
///
/// Uses [LazySingleton](https://pub.dev/documentation/injectable/latest/injectable/LazySingleton-class.html)
/// from *Injectable* package for dependency injection.
///
/// Contains overridden method to check if user is connected to the network.
@LazySingleton(as: ConnectionFacadeInterface)
class ConnectionFacade implements ConnectionFacadeInterface {
  /// Requires non-nullable parameter type [Connectivity]
  /// to use along with dependency injection at make it testable.
  ConnectionFacade(this._connectivity);

  final Connectivity _connectivity;

  @override
  Future<Either<ConnectionFailure, Unit>> checkIfConnectionExists() async {
    final connectivityResult = await _connectivity.checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      return left(const ConnectionFailure.noConnectionFound());
    } else {
      return right(unit);
    }
  }
}
