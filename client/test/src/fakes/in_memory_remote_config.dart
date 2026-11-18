import 'dart:async';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';

class InMemoryRemoteConfig extends Fake implements FirebaseRemoteConfig {
  final Object? fetchFailure;
  final Map<String, Object> fetchedValues;

  final Map<String, Object> _defaults = {};
  final Map<String, Object> _activeValues = {};

  final StreamController<RemoteConfigUpdate> _configUpdates =
      StreamController.broadcast();

  InMemoryRemoteConfig({this.fetchFailure, this.fetchedValues = const {}});

  @override
  Stream<RemoteConfigUpdate> get onConfigUpdated => _configUpdates.stream;

  void publishConfigUpdate() => _configUpdates.add(RemoteConfigUpdate({}));

  Future<void> close() => _configUpdates.close();

  @override
  Future<void> setDefaults(Map<String, dynamic> defaultParameters) async {
    _defaults.addAll(defaultParameters.cast<String, Object>());
  }

  @override
  Future<bool> fetchAndActivate() async {
    if (fetchFailure case final failure?) {
      throw failure;
    }

    _activeValues.addAll(fetchedValues);
    return true;
  }

  Object? _valueOf(String key) => _activeValues[key] ?? _defaults[key];

  @override
  bool getBool(String key) => _valueOf(key) == true;

  @override
  String getString(String key) => _valueOf(key)?.toString() ?? '';

  @override
  double getDouble(String key) => (_valueOf(key) as num?)?.toDouble() ?? 0;
}
