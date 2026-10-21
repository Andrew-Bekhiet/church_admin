part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewAreaRoute extends HomeChildRoute {
  final String id;
  final Area? $extra;

  @override
  String get path => '/view_area';

  @override
  List<Object?> get props => [id, $extra];

  const ViewAreaRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewArea(areaId: id, area: $extra);
  }
}
