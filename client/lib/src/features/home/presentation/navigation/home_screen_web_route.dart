import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreenWebRoute extends AppRoute {
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
        return const UpdateUserSpiritDataRoute(forced: true);

      case _:
        return null;
    }
  }

  @override
  String get path => '/';

  const HomeScreenWebRoute();

  @override
  Widget build(BuildContext context) => const DownloadAppScreen();

  @override
  AppRoute? redirect() => maybeRedirectToAccountSetup();
}
