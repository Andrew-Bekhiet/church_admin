import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditAreaRoute extends HomeChildRoute {
  final Area? $extra;

  @override
  String get path => '/edit_area';

  @override
  List<Object?> get props => [$extra];

  const EditAreaRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditArea(area: $extra);
  }
}
