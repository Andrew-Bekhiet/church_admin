import 'package:church_admin/church_admin.dart';

abstract class HomeChildRoute extends AppRoute {
  @override
  List<AppRoute> get breadcrumbs => [AppRoute.home, this];

  const HomeChildRoute();
}
