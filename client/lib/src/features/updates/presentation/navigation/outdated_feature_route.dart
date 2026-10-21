part of 'package:church_admin/src/core/services/router/app_route.dart';

class OutdatedFeatureRoute extends AppRoute {
  @override
  String get path => '/outdated_feature';

  const OutdatedFeatureRoute();

  @override
  Widget build(BuildContext context) => const OutdatedFeatureScreen();
}
