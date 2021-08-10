import 'package:fpdart/fpdart.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  final _lastChar = input.length - 1;

  final _hasMinLen = input.length >= 3;
  final _hasAtChar = input.contains('@');
  final _hasAtCharAsLast =  input[_lastChar] == '@';

  final isValid = _hasMinLen && _hasAtChar && !_hasAtCharAsLast;

  final _valueFailure = ValueFailure<String>.invalidEmail(incorrectValue: input);

  return isValid ? Either.right(input) : Either.left(_valueFailure);
}