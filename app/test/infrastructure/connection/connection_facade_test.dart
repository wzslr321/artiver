import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'package:artiver/infrastructure/connection/connection_facade.dart';
import 'package:artiver/domain/connection/connection_failure.dart';

import 'connection_facade_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late MockConnectivity mockConnectivity;
  late ConnectionFacade connection;

  setUp(() {
    mockConnectivity = MockConnectivity();
    connection = ConnectionFacade(mockConnectivity);
  });

  group('isConnectedToTheNetwork', () {
    test(
        'Should return ConnectionFailure if running without internet connection.',
        () async {
      final _connectivityResultNone = Future.value(ConnectivityResult.none);

      when(mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => _connectivityResultNone,
      );

      final _result = await connection.checkIfConnectionExists();
      final result = _result.fold(
        (l) => const ConnectionFailure.noConnectionFound(),
        (r) => Unit,
      );

      expect(result, const ConnectionFailure.noConnectionFound());
    });

    test('Should return Unit if running with WiFi connection', () async {
      final _connectivityResultWifi = Future.value(ConnectivityResult.wifi);

      when(mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => _connectivityResultWifi,
      );

      final _result = await connection.checkIfConnectionExists();
      final result = _result.fold(
        (l) => const ConnectionFailure.noConnectionFound(),
        (r) => Unit,
      );

      expect(result, Unit);
    });

    test('Should return Unit if running with mobile data connection', () async {
      final _connectivityResultMobile = Future.value(ConnectivityResult.mobile);

      when(mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => _connectivityResultMobile,
      );

      final _result = await connection.checkIfConnectionExists();
      final result = _result.fold(
        (l) => const ConnectionFailure.noConnectionFound(),
        (r) => Unit,
      );

      expect(result, Unit);
    });
  });
}
