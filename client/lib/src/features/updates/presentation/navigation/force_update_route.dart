part of 'package:church_admin/src/core/services/router/app_route.dart';

class ForceUpdateRoute extends AppRoute {
  static const String routePath = '/force_update';

  @override
  String get path => routePath;

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
