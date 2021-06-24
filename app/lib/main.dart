import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart' as di;
import 'presentation/core/my_app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.configureInjection(Environment.dev);
  await di.init();
  runApp(MyAppWidget());
}