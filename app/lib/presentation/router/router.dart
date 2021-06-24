import 'package:auto_route/annotations.dart';

import '../loading_page/loading_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute<LoadingPage>(page: LoadingPage, initial: true),
  ],
)

/// AppRouter class that will be generated with [auto_route](https://pub.dev/packages/auto_route),
/// based on [MaterialAutoRouter].
class $AppRouter {}