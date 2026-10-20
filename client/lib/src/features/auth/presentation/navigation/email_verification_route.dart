import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EmailVerificationRoute extends AppRoute {
  @override
  String get path => '/email_verification';

  const EmailVerificationRoute();

  @override
  Widget build(BuildContext context) {
    return const EmailVerificationScreen();
  }

  @override
  AppRoute? redirect() {
    final authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthUnauthenticated():
        return const LoginRoute();

      case AuthAuthenticated(authUser: AuthUser(emailVerified: true)):
        return AppRoute.home;

      default:
        return null;
    }
  }
}
