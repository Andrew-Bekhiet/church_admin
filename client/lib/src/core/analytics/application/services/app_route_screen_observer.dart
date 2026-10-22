import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class AppRouteScreenObserver extends NavigatorObserver {
  final AnalyticsService analyticsService;

  AppRouteScreenObserver(this.analyticsService);

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

    _maybeTrackScreen(previousRoute);
  }

  void _maybeTrackScreen(Route<dynamic>? route) {
    if (route?.settings.arguments case final AppRoute appRoute) {
      analyticsService.trackScreen(
        appRoute.path,
        appRoute.analyticsProperties,
      );
    }
  }
}
