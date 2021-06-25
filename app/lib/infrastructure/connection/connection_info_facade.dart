import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:injectable/injectable.dart';

import '../../domain/connection/connection_info_facade_interface.dart';

/// Class which determines if user's connection is valid.
/// It lets to perform proper BLoC event in case when user
/// is connected to the internet, but he doesn't have a network access.
/// Class that overrides [hasConnection] to use it along
/// with [InternetConnectionChecker].
@LazySingleton(as: ConnectionInfoFacadeInterface)
class ConnectionInfoFacade implements ConnectionInfoFacadeInterface {
  /// Require non-nullable [InternetConnectionChecker] parameter
  /// to use it as final variable.
  ConnectionInfoFacade(this._connectionChecker);

  /// Variable used to get access to [InternetConnectionChecker.hasConnection] method
  /// that lets to determine if connection is valid.
  final InternetConnectionChecker _connectionChecker;

  @override
  Future<bool> get hasConnection => _connectionChecker.hasConnection;
}