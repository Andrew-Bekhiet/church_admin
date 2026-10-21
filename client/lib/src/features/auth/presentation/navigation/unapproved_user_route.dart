part of 'package:church_admin/src/core/services/router/app_route.dart';

class UnapprovedUserRoute extends AppRoute {
  static const String routePath = '/unapproved_user';

  @override
  String get path => routePath;

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
