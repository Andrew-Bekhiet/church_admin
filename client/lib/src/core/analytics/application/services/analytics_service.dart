import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class AnalyticsService {
  static AnalyticsService get I =>
      globalProviderContainer.read(analyticsServiceProvider);

  static bool _alwaysEnabled() => true;

  final List<AnalyticsProvider> providers;

  final LoggingService _loggingService;

  final bool Function() _isAnalyticsEnabled;

  late final List<NavigatorObserver> navigatorObservers = [
    AppRouteScreenObserver(this),
    ...providers.expand((provider) => provider.navigatorObservers),
  ];

  AnalyticsService(
    this.providers,
    this._loggingService, {
    bool Function() isAnalyticsEnabled = _alwaysEnabled,
  }) : _isAnalyticsEnabled = isAnalyticsEnabled;

  Future<void> initialize() =>
      _forEachProvider((provider) => provider.initialize());

  Future<void> identify(AnalyticsUser? user) =>
      _forEachProviderIfAnalyticsEnabled(
        (provider) => provider.identify(user),
      );

  void track(AnalyticsEvent event) => unawaited(
    _forEachProviderIfAnalyticsEnabled((provider) => provider.track(event)),
  );

  void trackScreen(String screenName, [Json properties = const {}]) =>
      unawaited(
        _forEachProviderIfAnalyticsEnabled(
          (provider) => provider.trackScreen(screenName, properties),
        ),
      );

  Future<void> _forEachProviderIfAnalyticsEnabled(
    Future<void> Function(AnalyticsProvider provider) action,
  ) async {
    if (!_isAnalyticsEnabled()) return;

    await _forEachProvider(action);
  }

  Future<void> _forEachProvider(
    Future<void> Function(AnalyticsProvider provider) action,
  ) => Future.wait(
    providers.map((provider) async {
      try {
        await action(provider);
      } catch (e, stackTrace) {
        await _tryReportProviderFailure(provider, e, stackTrace);
      }
    }),
  );

  Future<void> _tryReportProviderFailure(
    AnalyticsProvider provider,
    Object error,
    StackTrace stackTrace,
  ) async {
    try {
      await _loggingService.exception(
        LogRecord(
          moduleName: provider.runtimeType.toString(),
          error: error,
          stackTrace: stackTrace,
        ),
      );
    } on Object {
      return;
    }
  }
}
