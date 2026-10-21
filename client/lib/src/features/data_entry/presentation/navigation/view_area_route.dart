part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewAreaRoute extends HomeChildRoute {
  static const String routePath = '/view_area';

  final String id;
  final Area? area;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [id, area];

  const ViewAreaRoute({required this.id, this.area});

  @override
  Widget build(BuildContext context) {
    return ViewArea(areaId: id, area: area);
  }
}
