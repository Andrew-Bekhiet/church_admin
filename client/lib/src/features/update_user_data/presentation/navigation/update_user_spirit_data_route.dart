import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class UpdateUserSpiritDataRoute extends AppRoute {
  final bool forced;
  final Person? $extra;

  @override
  String get path => '/update_user_spirit_data';

  @override
  List<Object?> get props => [forced, $extra];

  const UpdateUserSpiritDataRoute({this.forced = false, this.$extra});

  @override
  Widget build(BuildContext context) {
    return UpdateUserSpiritDataScreen(userData: $extra);
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
