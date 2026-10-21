part of 'package:church_admin/src/core/services/router/app_route.dart';

class OutdatedFeatureRoute extends AppRoute {
  static const String routePath = '/outdated_feature';

  @override
  String get path => routePath;

  const OutdatedFeatureRoute();

  @override
  Widget build(BuildContext context) => const OutdatedFeatureScreen();
}
