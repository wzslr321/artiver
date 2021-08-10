import 'package:fpdart/fpdart.dart';

import 'package:artiver/domain/core/failures.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;
}