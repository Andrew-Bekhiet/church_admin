import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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
