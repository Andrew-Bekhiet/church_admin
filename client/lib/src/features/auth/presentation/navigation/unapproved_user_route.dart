import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class UnapprovedUserRoute extends AppRoute {
  @override
  String get path => '/unapproved_user';

  const UnapprovedUserRoute();

  @override
  Widget build(BuildContext context) {
    return const UnapprovedUserScreen();
  }

  @override
  AppRoute? redirect() {
    final authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthUnauthenticated():
        return const LoginRoute();

      case AuthAuthenticated(isApproved: true):
        return AppRoute.home;

      default:
        return null;
    }
  }
}
