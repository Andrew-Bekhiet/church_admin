import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

abstract final class AppRouteRedirects {
  static const int _maxRedirects = 5;

  static List<AppRoute> guard(
    List<AppRoute> current,
    List<AppRoute> proposed,
  ) => resolve(proposed);

  static List<AppRoute> resolve(List<AppRoute> stack) {
    var resolved = stack;
    for (var hop = 0; hop < _maxRedirects; hop++) {
      final redirected = _maybeRedirectOnce(resolved);
      if (redirected == null) return resolved;

      resolved = redirected;
    }

    final redirectsStillPending = _maybeRedirectOnce(resolved) != null;
    if (redirectsStillPending) {
      unawaited(
        LoggingService.I.error(
          LogRecord(error: RedirectLoopException(resolved)),
        ),
      );
    }

    return resolved;
  }

  static List<AppRoute>? _maybeRedirectOnce(List<AppRoute> stack) =>
      _maybeRedirectByFeatureFlags(stack) ??
      stack
          .mapIndexed(
            (index, route) => switch (route.redirect()) {
              final target? => _redirectRouteAt(stack, index, target),
              null => null,
            },
          )
          .nonNulls
          .firstOrNull;

  static List<AppRoute>? _maybeRedirectByFeatureFlags(List<AppRoute> stack) {
    final featureFlags = FeatureFlagsRepository.I;

    if (featureFlags.mustForceUpdate) {
      return _goUnlessAlreadyThere(stack, const ForceUpdateRoute());
    }

    if (featureFlags.isUnderMaintenance) {
      return _goUnlessAlreadyThere(stack, const UnderMaintenanceRoute());
    }

    final topRouteIsDisabled = featureFlags.disabledRoutes.contains(
      stack.last.routeName,
    );
    if (topRouteIsDisabled) {
      return [...stack.take(stack.length - 1), const OutdatedFeatureRoute()];
    }

    return null;
  }

  static List<AppRoute>? _goUnlessAlreadyThere(
    List<AppRoute> stack,
    AppRoute target,
  ) {
    final isAlreadyThere = stack.length == 1 && stack.single == target;

    return isAlreadyThere ? null : target.breadcrumbs;
  }

  static List<AppRoute> _redirectRouteAt(
    List<AppRoute> stack,
    int index,
    AppRoute target,
  ) {
    if (index == 0) return target.breadcrumbs;

    final below = stack.take(index).toList();
    final existingTargetIndex = below.indexOf(target);
    if (existingTargetIndex != -1) {
      return below.sublist(0, existingTargetIndex + 1);
    }

    return [...below, target];
  }
}
