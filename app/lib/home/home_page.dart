import 'package:flutter/material.dart';
import '../l10n/l10n.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.helloWorld),
      ),
      body: Text(l10n.helloWorld),
    );
  }
}
