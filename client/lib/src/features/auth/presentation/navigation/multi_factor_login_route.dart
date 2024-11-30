import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'multi_factor_login_route.g.dart';

@TypedGoRoute<MultiFactorLoginRoute>(path: '/multifactor')
class MultiFactorLoginRoute extends GoRouteData {
  const MultiFactorLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MultiFactorLogin();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthService authService = AuthService.I;

    if (!authService.multiFactorManager.hasPendingMultifactorLogin &&
        (authService.currentUser?.isMultiFactorEnrolled ?? false)) {
      return '/';
    }
    return null;
  }
}
