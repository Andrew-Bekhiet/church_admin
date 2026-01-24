import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter $appRouter = GoRouter(
  observers: [LoggingService.I.navigatorObserver],
  extraCodec: ChurchAdminRouterExtraCodec(),
  refreshListenable: GoRouterRefreshStream.I,
  redirect: (context, state) {
    // Ignore external custom-scheme callbacks (e.g., Firebase Auth com.googleusercontent.apps)
    // and route back to a safe in-app location instead of showing an error page.
    final uri = state.uri;
    if (uri.scheme.isNotEmpty &&
        uri.scheme != 'http' &&
        uri.scheme != 'https') {
      return const LoginRoute().location;
    }

    final featureFlags = FeatureFlagsRepository.I;

    if (featureFlags.mustForceUpdate) {
      return const ForceUpdateRoute().location;
    }

    if (featureFlags.isUnderMaintenance) {
      return const UnderMaintenanceRoute().location;
    }

    if (state.fullPath != null &&
        featureFlags.disabledRoutes.contains(state.fullPath)) {
      return const OutdatedFeatureRoute().location;
    }

    return null;
  },
  routes: [
    if (kIsWeb) $homeScreenWebRoute else $homeScreenRoute,
    $forgotPasswordRoute,
    $loginRoute,
    $emailVerificationRoute,
    $multiFactorLoginRoute,
    $authLoadingRoute,
    $unapprovedUserRoute,
    $updateUserSpiritDataRoute,
    $authenticateRoute,
    $forceUpdateRoute,
    $underMaintenanceRoute,
    $outdatedFeatureRoute,
  ],
  errorBuilder: (context, state) {
    // If an external callback URL slips through to the router, fail closed to login
    // instead of rendering an error screen with the raw URL.
    final uri = state.uri;
    if (uri.scheme.isNotEmpty &&
        uri.scheme != 'http' &&
        uri.scheme != 'https') {
      // Defer navigation to the next microtask to avoid build-time navigation
      WidgetsBinding.instance.addPostFrameCallback((_) => context.go('/login'));
      return const SizedBox.shrink();
    }

    if (kReleaseMode) {
      unawaited(
        LoggingService.I.error(
          LogRecord(
            error: state.error,
            data: {
              'location': state.uri.toString(),
              'extra': state.extra.toString(),
            },
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.go('/')),
        title: Text(
          'حدث خطأ',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
      ),
      body: ErrorWidget.builder(FlutterErrorDetails(exception: state.error!)),
    );
  },
);
