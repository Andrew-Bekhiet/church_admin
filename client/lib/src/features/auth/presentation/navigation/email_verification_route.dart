part of 'package:church_admin/src/core/services/router/app_route.dart';

class EmailVerificationRoute extends AppRoute {
  static const String routePath = '/email_verification';

  @override
  String get path => routePath;

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
