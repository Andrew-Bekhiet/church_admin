part of 'package:church_admin/src/core/services/router/app_route.dart';

class ManageUsersRoute extends HomeChildRoute implements ExitAwareRoute {
  @override
  String get path => '/manage_users';

  const ManageUsersRoute();

  @override
  Widget build(BuildContext context) => const ManageUsersScreen();

  @override
  AppRoute? redirect() {
    if (!(AuthBloc.I.currentUserData?.canManageSomeUsers ?? false)) {
      return AppRoute.home;
    }

    if (LocalAuthService.I.shouldAuthenticateForRoute(this)) {
      return BiometricsAuthRoute(next: this);
    }

    return null;
  }

  @override
  void onExit() => LocalAuthService.I.revokeAuthForRoute(this);
}
