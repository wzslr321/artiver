import 'package:flutter/material.dart' hide ConnectionState;
// ConnectionState hided because ConnectionBloc already has a class with the same name
// renaming the class or using a namespace for connection_bloc are also possible options
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/connection/connection_bloc.dart';
import '../../../l10n/l10n.dart';
import 'simple_snackbar.dart';

/// A top level widget that listens connection state
/// Must be located under the MetarialApp context to be able to show snackbar messages
class ConnectionStateListenerWidget extends StatelessWidget {
  /// ConnectionStateListenerWidget
  const ConnectionStateListenerWidget({required this.child});

  /// child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectionBloc, ConnectionState>(
      listener: (context, state) {
        state.map(
          connected: (_) => ScaffoldMessenger.of(context)
              .showSnackBar(SimpleSnackBar(context.l10n.connected)),
          connectedOnInitial: (_) {},
          connectedWithNoNetworkAccess: (_) {},
          disconnected: (_) => ScaffoldMessenger.of(context)
              .showSnackBar(SimpleSnackBar(context.l10n.disconnected)),
          initial: (_) {},
        );
      },
      child: child,
    );
  }
}
