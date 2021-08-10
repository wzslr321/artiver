import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}