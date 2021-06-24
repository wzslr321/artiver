import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'presentation/core/my_app_widget.dart';
import 'injection.dart' as d1;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  d1.configureInjection(Environment.dev);
  await d1.init();
  runApp(MyAppWidget());
}