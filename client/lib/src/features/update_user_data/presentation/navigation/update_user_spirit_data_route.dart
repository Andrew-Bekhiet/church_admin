part of 'package:church_admin/src/core/services/router/app_route.dart';

class UpdateUserSpiritDataRoute extends AppRoute {
  final bool forced;
  final Person? userData;

  @override
  String get path => '/update_user_spirit_data';

  @override
  List<Object?> get props => [forced, userData];

  const UpdateUserSpiritDataRoute({this.forced = false, this.userData});

  @override
  Widget build(BuildContext context) {
    return UpdateUserSpiritDataScreen(userData: userData);
  }

  @override
  AppRoute? redirect() {
    final AuthBloc authBloc = AuthBloc.I;

    switch (authBloc.state.unwrapped) {
      case AuthUnauthenticated():
        return const LoginRoute();

      case AuthAuthenticated(userData: User(person: null)):
        return const EditPersonRoute();

      case AuthAuthenticated(userData: User(:final person?))
          when person.spiritDataUpToDate():
        return AppRoute.home;

      case _:
        return null;
    }
  }
}
