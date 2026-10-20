import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewClassRoute extends HomeChildRoute {
  final String id;
  final Class? $extra;

  @override
  String get path => '/view_class';

  @override
  List<Object?> get props => [id, $extra];

  const ViewClassRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewClass(classId: id, $class: $extra);
  }
}
