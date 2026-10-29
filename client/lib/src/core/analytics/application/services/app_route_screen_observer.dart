import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class AppRouteScreenObserver extends NavigatorObserver
    with WidgetsBindingObserver {
  final AnalyticsService analyticsService;

  AppLifecycleState? _appLifecycleState;

  AppRouteScreenObserver(this.analyticsService) {
    WidgetsBinding.instance.addObserver(this);
    _appLifecycleState = WidgetsBinding.instance.lifecycleState;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _appLifecycleState = state;
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);

    _maybeTrackScreen(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);

    _maybeTrackScreen(newRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);

    final poppedAppScreen = route.settings.arguments is AppRoute;
    if (poppedAppScreen) _maybeTrackScreen(previousRoute);
  }

  void _maybeTrackScreen(Route<dynamic>? route) {
    final isForeground =
        _appLifecycleState == null ||
        _appLifecycleState == AppLifecycleState.resumed;
    if (!isForeground) return;

    if (route?.settings.arguments case final AppRoute appRoute) {
      analyticsService.trackScreen(
        appRoute.path,
        appRoute.analyticsProperties,
      );
    }
  }
}
