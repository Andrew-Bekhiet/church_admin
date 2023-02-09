import 'package:church_admin/church_admin.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import 'connectivity_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Connectivity>(),
  MockSpec<Dio>(),
  MockSpec<Response>(),
  MockSpec<SecretsService>(),
])
void main() {
  setUp(_setUp);
  tearDown(GetIt.I.reset);

  test(
    'Connectivity Service => internet connection => connected',
    () async {
      when(GetIt.I<Connectivity>().checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);

      final unit = ConnectivityService();
      addTearDown(unit.dispose);

      await expectLater(unit.isConnected(), completion(isTrue));

      final captured = verifyInOrder(
        [
          GetIt.I<Connectivity>().checkConnectivity(),
          (GetIt.I<Dio>() as MockDio).get(captureAny)
        ],
      ).captured;

      expect(
        captured[1].first,
        Uri.parse(GetIt.I<SecretsService>().hasuraServer)
            .replace(pathSegments: ['healthz']).toString(),
      );
    },
  );

  test(
    'Connectivity Service => internet connection => disconnected',
    () async {
      when(GetIt.I<Connectivity>().checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.none);

      final unit = ConnectivityService();
      addTearDown(unit.dispose);

      await expectLater(unit.isConnected(), completion(isFalse));

      verify(
        GetIt.I<Connectivity>().checkConnectivity(),
      );

      verifyNever(
        (GetIt.I<Dio>() as MockDio).get(captureAny),
      );
    },
  );

  test(
    'Connectivity Service => internet connection => connectivityStream',
    () async {
      final connectivityController = BehaviorSubject<ConnectivityResult>();
      addTearDown(connectivityController.close);

      when(GetIt.I<Connectivity>().onConnectivityChanged)
          .thenAnswer((_) => connectivityController);

      final responses = {
        ConnectivityResult.wifi: true,
        ConnectivityResult.bluetooth: true,
        ConnectivityResult.none: false,
        ConnectivityResult.ethernet: false,
        ConnectivityResult.vpn: true,
        ConnectivityResult.mobile: false
      };

      final unit = ConnectivityService();
      addTearDown(unit.dispose);

      expect(
        unit.connectivityStream,
        emitsInOrder(responses.values),
      );

      for (final response in responses.keys) {
        when((GetIt.I<Dio>() as MockDio).get(any)).thenAnswer(
          (_) async =>
              _createMockResponse(responses[response] ?? false ? 200 : 500),
        );
        connectivityController.add(response);

        await connectivityController.take(1).first;
      }
    },
  );
}

Future<void> _setUp() async {
  _setUpMockConnectivity();
  _setUpMockSecretsRepo();
  await _setUpMockDio();
}

void _setUpMockConnectivity() {
  final mockConnectivity = MockConnectivity();

  GetIt.I.registerSingleton<Connectivity>(mockConnectivity);
}

void _setUpMockSecretsRepo() {
  final mockSecrets = MockSecretsService();
  when(mockSecrets.hasuraServer).thenReturn('https://hasura.server.mock.com/');

  GetIt.I.registerSingleton<SecretsService>(mockSecrets);
}

Future<void> _setUpMockDio() async {
  final mockDio = MockDio();

  when(mockDio.get(any)).thenAnswer((_) async => _createMockResponse());

  GetIt.I.registerSingleton<Dio>(mockDio);
}

MockResponse _createMockResponse([int? responseCode = 200]) {
  final mockResponse = MockResponse();

  when(mockResponse.statusCode).thenReturn(responseCode);
  return mockResponse;
}
