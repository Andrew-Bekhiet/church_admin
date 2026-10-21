part of 'package:church_admin/src/core/services/router/app_route.dart';

class LoginRoute extends AppRoute {
  @override
  String get path => '/login';

  const LoginRoute();

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }

  @override
  AppRoute? redirect() {
    switch (AuthBloc.I.state.unwrapped) {
      case AuthUnauthenticated():
        return null;

      default:
        return AppRoute.home;
    }
  }
}
