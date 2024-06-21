import 'package:church_admin/church_admin.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
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
  tearDown(resetGlobalProviderContainer);

  test(
    'Connectivity Service => internet connection => connected',
    () async {
      when(
        globalProviderContainer
            .read(connectivityPluginProvider)
            .checkConnectivity(),
      ).thenAnswer((_) async => [ConnectivityResult.wifi]);

      final unit = ConnectivityService.I;
      addTearDown(unit.dispose);

      await expectLater(unit.isConnected(), completion(isTrue));

      final captured = verifyInOrder(
        [
          globalProviderContainer
              .read(connectivityPluginProvider)
              .checkConnectivity(),
          (globalProviderContainer.read(dioProvider) as MockDio)
              .get(captureAny),
        ],
      ).captured;

      expect(
        captured[1].first,
        Uri.parse(SecretsService.I.hasuraServer)
            .replace(pathSegments: ['healthz']).toString(),
      );
    },
  );

  test(
    'Connectivity Service => internet connection => disconnected',
    () async {
      when(
        globalProviderContainer
            .read(connectivityPluginProvider)
            .checkConnectivity(),
      ).thenAnswer((_) async => [ConnectivityResult.none]);

      final unit = ConnectivityService.I;
      addTearDown(unit.dispose);

      await expectLater(unit.isConnected(), completion(isFalse));

      verify(
        globalProviderContainer
            .read(connectivityPluginProvider)
            .checkConnectivity(),
      );

      verifyNever(
        (globalProviderContainer.read(dioProvider) as MockDio).get(captureAny),
      );
    },
  );

  test(
    'Connectivity Service => internet connection => connectivityStream',
    () async {
      final connectivityController =
          BehaviorSubject<List<ConnectivityResult>>();
      addTearDown(connectivityController.close);

      when(
        globalProviderContainer
            .read(connectivityPluginProvider)
            .onConnectivityChanged,
      ).thenAnswer((_) => connectivityController);

      final responses = {
        ConnectivityResult.wifi: true,
        ConnectivityResult.bluetooth: true,
        ConnectivityResult.none: false,
        ConnectivityResult.ethernet: false,
        ConnectivityResult.vpn: true,
        ConnectivityResult.mobile: false,
      };

      final unit = ConnectivityService.I;
      addTearDown(unit.dispose);

      expect(
        unit.connectivityStream,
        emitsInOrder(responses.values),
      );

      for (final response in responses.keys) {
        when((globalProviderContainer.read(dioProvider) as MockDio).get(any))
            .thenAnswer(
          (_) async =>
              _createMockResponse(responses[response] ?? false ? 200 : 500),
        );
        connectivityController.add([response]);

        await connectivityController.take(1).first;
      }
    },
  );
}

Future<void> _setUp() async {
  final overrides = [
    _setUpMockConnectivity(),
    _setUpMockSecretsRepo(),
    _setUpMockDio(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpMockConnectivity() {
  final mockConnectivity = MockConnectivity();

  return connectivityPluginProvider.overrideWithValue(mockConnectivity);
}

Override _setUpMockSecretsRepo() {
  final mockSecrets = MockSecretsService();
  when(mockSecrets.hasuraServer).thenReturn('https://hasura.server.mock.com/');

  return secretsServiceProvider.overrideWithValue(mockSecrets);
}

Override _setUpMockDio() {
  final mockDio = MockDio();

  when(mockDio.get(any)).thenAnswer((_) async => _createMockResponse());

  return dioProvider.overrideWithValue(mockDio);
}

MockResponse _createMockResponse([int? responseCode = 200]) {
  final mockResponse = MockResponse();

  when(mockResponse.statusCode).thenReturn(responseCode);
  return mockResponse;
}
