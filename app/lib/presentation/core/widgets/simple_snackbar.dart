import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Simple SnackBar Widget to show a text message
class SimpleSnackBar extends SnackBar {
  /// SimpleSnackBar requires a string message
  SimpleSnackBar(this.message) : super(content: Text(message));

  /// string message to use with SnackBar
  final String message;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('message', message));
  }
}
