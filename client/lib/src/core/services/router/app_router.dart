import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter $appRouter = GoRouter(
  observers: [LoggingService.I.navigatorObserver],
  extraCodec: ChurchAdminRouterExtraCodec(),
  refreshListenable: GoRouterRefreshStream.I,
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
  ],
  errorBuilder: (context, state) {
    if (kReleaseMode) {
      LoggingService.I.reportError(
        state.error,
        hints: {'location': state.uri.toString()},
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => context.go('/'),
        ),
        title: Text(
          'حدث خطأ',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
      ),
      body: ErrorWidget.builder(
        FlutterErrorDetails(exception: state.error!),
      ),
    );
  },
);
