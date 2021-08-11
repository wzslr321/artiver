import 'package:fpdart/fpdart.dart';

import 'failures.dart';

/// [validateEmailAddress] checks if email contains '@' sign,
/// is at least 3 characters long and if '@' isn't the last character.
///
/// Whether the email is valid or not, the same input is a part
/// of a return statement, but as different site of [Either].
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  final lastChar = input.length - 1;

  final hasMinLen = input.length >= 3;
  final hasAtChar = input.contains('@');
  final hasAtCharAsLast = input[lastChar] == '@';

  final isValid = hasMinLen && hasAtChar && !hasAtCharAsLast;

  final valueFailure = ValueFailure<String>.invalidEmail(incorrectValue: input);

  return isValid ? Either.right(input) : Either.left(valueFailure);
}

/// [validatePassword] checks if password contains at least 8 and maximum 16 characters,
/// at least one uppercase letter, one lowercase letter, one number and one special character.
///
/// Whether the email is valid or not, the same input it a part of a return statement,
/// but as a different site of [Either].
Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegExp =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$';

  final isValid = RegExp(passwordRegExp).hasMatch(input);
  final valueFailure = ValueFailure<String>.invalidEmail(incorrectValue: input);

  return isValid ? Either.right(input) : Either.left(valueFailure);
}
