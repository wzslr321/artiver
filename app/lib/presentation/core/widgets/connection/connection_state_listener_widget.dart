// ConnectionState hidden because ConnectionBloc already has a class with the same name
// renaming the class or using a namespace for connection_bloc are also possible options
import 'package:flutter/material.dart' hide ConnectionState;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/connection/connection_bloc.dart';
import '../../../../l10n/l10n.dart';
import 'connection_snackbar.dart';

/// A top level widget that listens to the connection state.
/// Must be located under the MaterialApp context to be able to show snackbar messages
class ConnectionStateListenerWidget extends StatelessWidget {
  /// [ConnectionStateListenerWidget] requires non-nullable named argument
  /// responsible for the actual UI.
  const ConnectionStateListenerWidget({required this.child});

  /// [child] refers to almost whole widget tree of the page.
  ///
  /// [ConnectionStateListenerWidget] will always be on the top level of the widget tree.
  /// Unless [ConnectionState] is changed, it makes no impact on the actual page,
  /// so in such a case, everything what is seen, is related to the [child].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectionBloc, ConnectionState>(
      listener: (context, state) {
        state.map(
          connected: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
                ConnectionSnackbar(context.l10n.connection_established));
          },
          connectedOnInitial: (_) {},
          connectedWithNoNetworkAccess: (_) {},
          disconnected: (_) => ScaffoldMessenger.of(context)
              .showSnackBar(ConnectionSnackbar(context.l10n.connection_lost)),
          initial: (_) {},
        );
      },
      child: child,
    );
  }
}
