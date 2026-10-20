import 'package:go_router/go_router.dart';

extension ReportRouteChangesImmediately on GoRouter {
  /// Reports every change to the pages on screen as it happens. The Router
  /// reports a pop only once the frame ends, and a [GoRouter.refresh] landing
  /// in that frame re-parses the stale route and brings the popped page back
  /// ([flutter/flutter#194364](https://github.com/flutter/flutter/issues/194364)).
  /// The listener lives on [routerDelegate], so disposing the router ends it.
  GoRouter reportingRouteChangesImmediately() {
    routerDelegate.addListener(_reportCurrentRoute);

    return this;
  }

  void _reportCurrentRoute() {
    if (routeInformationParser.restoreRouteInformation(
          routerDelegate.currentConfiguration,
        )
        case final currentRouteInformation?) {
      routeInformationProvider.routerReportsNewRouteInformation(
        currentRouteInformation,
      );
    }
  }
}
