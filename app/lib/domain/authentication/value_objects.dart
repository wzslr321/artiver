import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

/// A class that represents [String] coming from User's email input.
///
/// It extends [ValueObject] to get access to the methods,
/// that resolve common operations on value objects.
@immutable
class EmailAddress extends ValueObject<String> {
  /// Use factory to access [validateEmailAddress] that returns
  /// a [String] if user's email input passes the validation
  /// or [ValueFailure] if it fails.
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}