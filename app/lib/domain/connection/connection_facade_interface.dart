import 'dart:async';

import 'package:dartz/dartz.dart';

import 'connection_failure.dart';

/// Connection class with connection check related method.
///
/// Facade is a higher-level interface, this pattern
/// allows to create simplified class that wraps
/// the set of methods/operations of complex API or subsystem.
// ignore: one_member_abstracts
abstract class ConnectionFacadeInterface {
  /// Method to check if user is connected to the internet.
  ///
  /// Returns a Future that can return [ConnectionFailure]
  /// if connection result is none. In case of valid check result,
  /// returns [Unit] which is Dartz's void replacement - everything is
  /// ok, no further actions needed.
  Future<Either<ConnectionFailure, Unit>> checkIfConnectionExists();
}
