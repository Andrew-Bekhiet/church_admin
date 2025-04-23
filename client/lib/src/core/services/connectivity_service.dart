import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

class ConnectivityService {
  static ConnectivityService get I =>
      globalProviderContainer.read(connectivityServiceProvider);

  ConnectivityService({
    required Connectivity connectivityPlugin,
    required Dio dio,
    SecretsService? secretsService,
    LoggingService? loggingService,
    String? urlToPing,
  })  : assert((secretsService == null) != (urlToPing == null)),
        _connectivityPlugin = connectivityPlugin,
        _dio = dio,
        _loggingService = loggingService ?? LoggingService.I,
        urlToPing = urlToPing ??
            Uri.parse(secretsService!.hasuraServer)
                .replace(pathSegments: ['healthz']).toString() {
    _connectivityStreamSubscription = _createConnectivityStreamSubscription();
  }

  final String urlToPing;

  ValueStream<bool> get connectivityStream => _connectivityStreamSubject.stream;

  final Connectivity _connectivityPlugin;
  final Dio _dio;
  final LoggingService _loggingService;

  late final StreamSubscription<bool> _connectivityStreamSubscription;
  final BehaviorSubject<bool> _connectivityStreamSubject = BehaviorSubject();

  StreamSubscription<bool> _createConnectivityStreamSubscription() {
    return _connectivityPlugin.onConnectivityChanged
        .asBroadcastStream()
        .asyncMap(
          (state) async =>
              state.isNotEmpty &&
              state.singleOrNull != ConnectivityResult.none &&
              await _canPingUrl(),
        )
        .startWithFuture(Future.sync(isConnected))
        .doOnData(
          (isConnected) => _loggingService.info(
            LogRecord(
              moduleName: '$ConnectivityService',
              eventName: 'connectivityChanged',
              message: 'Connectivity changed to $isConnected',
              data: {'isConnected': isConnected},
            ),
          ),
        )
        .listen(
          _connectivityStreamSubject.add,
          onDone: _connectivityStreamSubject.close,
          onError: _connectivityStreamSubject.addError,
        );
  }

  Future<bool> isConnected() async {
    final state = await _connectivityPlugin.checkConnectivity();
    final isConnected =
        state.isNotEmpty && state.singleOrNull != ConnectivityResult.none;

    if (!isConnected) return false;

    return _canPingUrl();
  }

  Future<bool> _canPingUrl() async {
    try {
      final response =
          await _dio.get(urlToPing).timeout(const Duration(seconds: 5));

      return response.statusCode == 200;
    } on Exception {
      return false;
    }
  }

  Future<void> dispose() async {
    await _connectivityStreamSubscription.cancel();

    if (!_connectivityStreamSubject.isClosed) {
      await _connectivityStreamSubject.close();
    }
  }
}
