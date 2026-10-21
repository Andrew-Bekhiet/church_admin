part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditAreaRoute extends HomeChildRoute {
  static const String routePath = '/edit_area';

  final Area? area;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [area];

  const EditAreaRoute({this.area});

  @override
  Widget build(BuildContext context) {
    return EditArea(area: area);
  }
}
