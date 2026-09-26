import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'biometrics_auth_route.g.dart';

@TypedGoRoute<BiometricsAuthRoute>(path: '/biometrics_auth')
class BiometricsAuthRoute extends GoRouteData with $BiometricsAuthRoute {
  bool _redirectedOnce = false;

  final String next;

  BiometricsAuthRoute({this.next = '/'});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    // Workaround until https://github.com/flutter/flutter/issues/116651 is fixed
    unawaited(_maybeForceRedirect(context));

    return BiometricsAuthScreen(next: next != '/' ? next : null);
  }

  Future<void> _maybeForceRedirect(BuildContext context) async {
    final goRouter = GoRouter.of(context);

    await WidgetsBinding.instance.endOfFrame;
    if (!context.mounted) return;

    final redirectLocation = _redirectLocation();
    if (redirectLocation != null && !_redirectedOnce) {
      _redirectedOnce = true;
      goRouter.go(redirectLocation);
    }
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    return _redirectLocation();
  }

  String? _redirectLocation() {
    final AuthBloc authBloc = AuthBloc.I;
    final LocalAuthService localAuthService = LocalAuthService.I;

    switch (authBloc.state.unwrapped) {
      case AuthUnauthenticated():
        return const LoginRoute().location;

      case _
          when localAuthService.shouldAuthenticate ||
              (next != '/' && localAuthService.shouldAuthenticateForPath(next)):
        return null;

      case _:
        return next;
    }
  }
}
