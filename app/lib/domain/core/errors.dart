import 'value_failures.dart';

/// Class that handles unexpected Error, that should've never happened.
///
/// Requires non-nullable argument of type [ValueFailure].
/// Overrides [toString] to return text converted with [safeToString],
/// to avoid any circumstances of possibly invalid formatting.
class UnexpectedValueError extends Error {
  /// Requires the actual value that caused error to occur.
  UnexpectedValueError(this.valueFailure);

  /// Final variable of immutable class representing
  /// errors related to failures caused by incorrect values.
  final ValueFailure valueFailure;

  @override
  String toString() {
    return Error.safeToString(
        'Encountered a ValueFailure at an unrecoverable point. Terminating. Failure was: $valueFailure');
  }
}
