import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class OutdatedFeatureRoute extends AppRoute {
  @override
  String get path => '/outdated_feature';

  const OutdatedFeatureRoute();

  @override
  Widget build(BuildContext context) => const OutdatedFeatureScreen();
}
