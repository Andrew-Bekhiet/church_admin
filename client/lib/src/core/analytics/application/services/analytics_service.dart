import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class AnalyticsService {
  static AnalyticsService get I =>
      globalProviderContainer.read(analyticsServiceProvider);

  final List<AnalyticsProvider> providers;

  final LoggingService _loggingService;

  late final List<NavigatorObserver> navigatorObservers = [
    AppRouteScreenObserver(this),
    ...providers.expand((provider) => provider.navigatorObservers),
  ];

  AnalyticsService(this.providers, this._loggingService);

  Future<void> initialize() =>
      _forEachProvider((provider) => provider.initialize());

  Future<void> identify(AnalyticsUser? user) =>
      _forEachProvider((provider) => provider.identify(user));

  void track(AnalyticsEvent event) =>
      unawaited(_forEachProvider((provider) => provider.track(event)));

  void trackScreen(String screenName, [Json properties = const {}]) =>
      unawaited(
        _forEachProvider(
          (provider) => provider.trackScreen(screenName, properties),
        ),
      );

  Future<void> _forEachProvider(
    Future<void> Function(AnalyticsProvider provider) action,
  ) => Future.wait(
    providers.map((provider) async {
      try {
        await action(provider);
      } catch (e, stackTrace) {
        await _loggingService.exception(
          LogRecord(
            moduleName: provider.runtimeType.toString(),
            error: e,
            stackTrace: stackTrace,
          ),
        );
      }
    }),
  );
}
