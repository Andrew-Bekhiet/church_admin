import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

extension RefreshFromCurrentRoute on GoRouter {
  /// Refreshes on every change from the pages on screen. [GoRouter.refresh]
  /// alone re-parses the route information last reported to the platform,
  /// which trails a pop until the frame ends, so a change landing in that
  /// frame would bring the popped page back.
  GoRouter refreshingFromCurrentRouteOn(Listenable changes) {
    changes.addListener(_refreshFromCurrentRoute);

    return this;
  }

  void _refreshFromCurrentRoute() {
    if (routeInformationParser.restoreRouteInformation(
          routerDelegate.currentConfiguration,
        )
        case final currentRouteInformation?) {
      routeInformationProvider.routerReportsNewRouteInformation(
        currentRouteInformation,
      );
    }

    refresh();
  }
}
