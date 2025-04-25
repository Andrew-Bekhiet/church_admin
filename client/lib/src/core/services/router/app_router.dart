import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter $appRouter = GoRouter(
  observers: [LoggingService.I.navigatorObserver],
  extraCodec: ChurchAdminRouterExtraCodec(),
  refreshListenable: GoRouterRefreshStream.I,
  redirect: (context, state) {
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
    if (kReleaseMode) {
      LoggingService.I.error(
        LogRecord(
          error: state.error,
          data: {
            'location': state.uri.toString(),
            'extra': state.extra.toString(),
          },
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
