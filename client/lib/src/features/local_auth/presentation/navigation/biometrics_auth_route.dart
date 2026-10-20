import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class BiometricsAuthRoute extends AppRoute {
  final AppRoute? next;

  @override
  String get path => '/biometrics_auth';

  @override
  List<Object?> get props => [next];

  const BiometricsAuthRoute({this.next});

  @override
  Widget build(BuildContext context) =>
      BiometricsAuthScreen(next: next?.routeName);

  @override
  AppRoute? redirect() {
    final AuthBloc authBloc = AuthBloc.I;
    final LocalAuthService localAuthService = LocalAuthService.I;
    final nextPath = next?.routeName;
    final nextStillLocked =
        nextPath != null &&
        localAuthService.shouldAuthenticateForPath(nextPath);

    switch (authBloc.state.unwrapped) {
      case AuthUnauthenticated():
        return const LoginRoute();

      case _ when localAuthService.shouldAuthenticate || nextStillLocked:
        return null;

      case _:
        return next ?? AppRoute.home;
    }
  }
}
