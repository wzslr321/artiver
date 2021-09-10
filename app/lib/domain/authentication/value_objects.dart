import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

/// A class that represents [String] coming from User's email input.
///
/// It extends [ValueObject] to get access to the methods,
/// that resolve common operations on value objects.
@immutable
class EmailAddress extends ValueObject<String> {
  /// Use factory to access [validateEmailAddress] in a constructor
  /// without creating a new instance of the class. It returns
  /// a [String] if user's email input passes the validation
  /// or [ValueFailure] if it fails.
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

/// A class that represents [String] coming from User's password input.
///
/// It extends [ValueObject] to get access to the methods,
/// that resolve common operations on value objects.
class Password extends ValueObject<String> {
  /// Use factory to access [validatePassword] in a constructor
  // without creating a new instance of the class. It returns
  /// a [String] if user's password input passes the validation
  /// or [ValueFailure] if it fails.
  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
