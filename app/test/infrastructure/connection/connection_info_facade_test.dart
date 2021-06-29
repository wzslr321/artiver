import 'package:artiver/infrastructure/connection/connection_info_facade.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'connection_info_facade_test.mocks.dart';

@GenerateMocks([InternetConnectionChecker])
void main() {
  late ConnectionInfoFacade connectionInfo;
  late MockInternetConnectionChecker mockInternetConnectionChecker;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    connectionInfo = ConnectionInfoFacade(mockInternetConnectionChecker);
  });

  group('isConnectedToValidNetwork', () {
    test('Should forward the call to InternetConnectionChecker.hasConnection',
            () async {
          final hasConnectionFuture = Future.value(true);

          when(mockInternetConnectionChecker.hasConnection)
              .thenAnswer((_) => hasConnectionFuture);

          final result = connectionInfo.hasConnection;

          verify(mockInternetConnectionChecker.hasConnection);
          expect(result, hasConnectionFuture);
        });
  });
}