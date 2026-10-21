part of 'package:church_admin/src/core/services/router/app_route.dart';

class HomeScreenWebRoute extends AppRoute {
  static const String routePath = '/';

  static AppRoute? maybeRedirectToAccountSetup() {
    final AuthState authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthUnauthenticated():
        return const LoginRoute();

      case AuthAuthenticated(authUser: AuthUser(emailVerified: false)):
        return const EmailVerificationRoute();

      case AuthAuthenticated(isApproved: false):
        return const UnapprovedUserRoute();

      // TODO(ENG-226): add a redirect to EditPersonRoute if the user has no person data

      case AuthAuthenticated(userData: User(person: null)):
      case AuthAuthenticated(userData: User(:final person?))
          when !person.spiritDataUpToDate():
        return const UpdateUserSpiritDataRoute();

      case _:
        return null;
    }
  }

  @override
  String get path => routePath;

  const HomeScreenWebRoute();

  @override
  Widget build(BuildContext context) => const DownloadAppScreen();

  @override
  AppRoute? redirect() => maybeRedirectToAccountSetup();
}
