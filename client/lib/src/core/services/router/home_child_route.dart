part of 'package:church_admin/src/core/services/router/app_route.dart';

sealed class HomeChildRoute extends AppRoute {
  @override
  List<AppRoute> get breadcrumbs => [AppRoute.home, this];

  const HomeChildRoute();
}
