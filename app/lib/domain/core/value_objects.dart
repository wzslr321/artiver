import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'errors.dart';
import 'value_failures.dart';

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

  ///  Generic function that uses "fpdart" package to
  ///  fold a value and return valid value or crash otherwise.
  ///
  /// If attempt to get value returns left side, in "fpdart"
  /// it means that it failed, so [UnexpectedValueError] is thrown.
  /// Otherwise, right side is returned with usage of [id] function,
  /// which simple source code shows that in this case it is a shortcut
  /// for a : (right) => right
  T getOrCrash() {
    return value.fold((left) => throw UnexpectedValueError(left), id);
  }
}
