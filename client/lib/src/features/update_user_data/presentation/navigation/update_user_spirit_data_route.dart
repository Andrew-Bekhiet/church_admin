part of 'package:church_admin/src/core/services/router/app_route.dart';

class UpdateUserSpiritDataRoute extends AppRoute {
  static const String routePath = '/update_user_spirit_data';

  final Person? userData;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [userData];

  const UpdateUserSpiritDataRoute({this.userData});

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
