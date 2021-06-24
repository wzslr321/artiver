/// Class related to Internet Connection check,
/// that determines if user's connection is valid.
abstract class ConnectionInfoFacadeInterface {
  /// Bool variable that is used as
  /// *if statement* argument in connection BLoC.
  Future<bool> get hasConnection;
}
