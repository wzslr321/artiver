import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../application/connection/connection_bloc.dart';
import '../../injection.dart';
import '../../l10n/l10n.dart';
import '../router/router.gr.dart';
import 'widgets/connection/connection_state_listener_widget.dart';

/// Main application that is on the top of widget tree,
/// contains most essential properties and configuration.
class MyAppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => s1<ConnectionBloc>()
            ..add(const ConnectionEvent.connectionCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: 'ArTiver',
        builder: (context, widget) =>
            ConnectionStateListenerWidget(child: widget!),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('pl', ''),
        ],
      ),
    );
  }
}
