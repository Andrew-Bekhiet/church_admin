part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditAreaRoute extends HomeChildRoute {
  final Area? area;

  @override
  String get path => '/edit_area';

  @override
  List<Object?> get props => [area];

  @override
  Map<String, String> get urlParameters => {'id': ?area?.id};

  const EditAreaRoute({this.area});

  @override
  Widget build(BuildContext context) {
    return EditArea(area: area);
  }
}
