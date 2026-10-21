part of 'package:church_admin/src/core/services/router/app_route.dart';

class BiometricsAuthRoute extends AppRoute {
  final AppRoute? next;

  @override
  String get path => '/biometrics_auth';

  @override
  List<Object?> get props => [next];

  const BiometricsAuthRoute({this.next});

  @override
  Widget build(BuildContext context) => BiometricsAuthScreen(next: next);

  @override
  AppRoute? redirect() {
    final AuthBloc authBloc = AuthBloc.I;
    final LocalAuthService localAuthService = LocalAuthService.I;
    final nextStillLocked = switch (next) {
      final next? => localAuthService.shouldAuthenticateForRoute(next),
      null => false,
    };

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
