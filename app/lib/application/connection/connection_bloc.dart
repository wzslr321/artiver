import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'connection_event.dart';
part 'connection_state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  ConnectionBloc() : super(ConnectionInitial());

  @override
  Stream<ConnectionState> mapEventToState(
    ConnectionEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
