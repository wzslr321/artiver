abstract class ConnectionInfoFacadeInterface {
  /// Bool variable that is used as
  /// *if statement* argument in connection BLoC.
  Future<bool> get hasConnection;
}
