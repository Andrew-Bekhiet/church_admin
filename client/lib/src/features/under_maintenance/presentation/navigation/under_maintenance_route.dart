part of 'package:church_admin/src/core/services/router/app_route.dart';

class UnderMaintenanceRoute extends AppRoute {
  @override
  String get path => '/under_maintenance';

  const UnderMaintenanceRoute();

  @override
  Widget build(BuildContext context) => UnderMaintenanceScreen();

  @override
  AppRoute? redirect() {
    if (!FeatureFlagsRepository.I.isUnderMaintenance) {
      return AppRoute.home;
    }

    return null;
  }
}
