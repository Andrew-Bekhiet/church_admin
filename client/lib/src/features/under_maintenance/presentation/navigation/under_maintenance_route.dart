import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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
