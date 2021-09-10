import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

/// [ConnectionSnackbar] displays customized [SnackBar]
/// informing about User's connection state changes.
class ConnectionSnackbar extends SnackBar {
  /// Requires non-nullable named argument [message], which
  /// is a [String] containing information what connection state
  /// change has occurred. It can whether be related to connection
  /// lost or reconnected.
  ConnectionSnackbar(this.message) : super(content: Text(message));

  /// [String] containing information what connection state
  /// change has occurred. It can whether be related to connection
  /// lost or reconnected. It should be declared using l10n package.
  final String message;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('message', message));
  }
}
