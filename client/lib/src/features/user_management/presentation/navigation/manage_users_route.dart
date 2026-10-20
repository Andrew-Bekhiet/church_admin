import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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

    if (LocalAuthService.I.shouldAuthenticateForPath(path)) {
      return BiometricsAuthRoute(next: this);
    }

    return null;
  }

  @override
  void onExit() => LocalAuthService.I.revokeAuthForPath(path);
}
