class AuthenticationException implements Exception {
  AuthenticationException(this.code);

  final String code;
}
