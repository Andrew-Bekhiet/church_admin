part of 'package:church_admin/src/core/services/router/app_route.dart';

class ForceUpdateRoute extends AppRoute {
  @override
  String get path => '/force_update';

  const ForceUpdateRoute();

  @override
  Widget build(BuildContext context) => ForceUpdateScreen();

  @override
  AppRoute? redirect() {
    if (!FeatureFlagsRepository.I.mustForceUpdate) {
      return AppRoute.home;
    }

    return null;
  }
}
