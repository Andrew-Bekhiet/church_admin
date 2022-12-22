import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

class ConnectivityService {
  static ConnectivityService get I => GetIt.I<ConnectivityService>();

  ConnectivityService({
    String? urlToPing,
    Connectivity? connectivityPlugin,
    Dio? dio,
  })  : _connectivityPlugin = connectivityPlugin ?? GetIt.I<Connectivity>(),
        _dio = dio ?? GetIt.I<Dio>(),
        urlToPing = urlToPing ??
            Uri.parse(GetIt.I<SecretsService>().hasuraServer)
                .replace(pathSegments: ['healthz']).toString() {
    _connectivityStreamSubscription = _createConnectivityStreamSubscription();
  }

  final String urlToPing;

  ValueStream<bool> get connectivityStream => _connectivityStreamSubject.stream;

  final Connectivity _connectivityPlugin;
  final Dio _dio;

  late final StreamSubscription<bool> _connectivityStreamSubscription;
  final BehaviorSubject<bool> _connectivityStreamSubject = BehaviorSubject();

  StreamSubscription<bool> _createConnectivityStreamSubscription() {
    return _connectivityPlugin.onConnectivityChanged
        .asBroadcastStream()
        .asyncMap(
          (state) async =>
              state != ConnectivityResult.none && await _canPingUrl(),
        )
        .startWithFuture(Future.sync(isConnected))
        .listen(
          _connectivityStreamSubject.add,
          onDone: _connectivityStreamSubject.close,
          onError: _connectivityStreamSubject.addError,
        );
  }

  Future<bool> isConnected() async {
    final isConnected = await _connectivityPlugin.checkConnectivity() !=
        ConnectivityResult.none;

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
