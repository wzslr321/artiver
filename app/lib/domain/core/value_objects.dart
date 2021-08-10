import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'failures.dart';

/// Immutable class that make use of generic types to create overridable methods,
/// that clarifies basic operations that can be performed on particular values.
@immutable
abstract class ValueObject<T> {
  /// Empty constructor, which lets to extend this class.
  const ValueObject();

  /// Getter that value can be assigned to
  /// [ValueFailure] if validation fails,
  /// or to specified type if success.
  ///
  /// Usage of generic types for customizability purposes.
  Either<ValueFailure<T>, T> get value;
}