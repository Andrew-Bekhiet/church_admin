import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditServiceRoute extends HomeChildRoute {
  final Service? $extra;

  @override
  String get path => '/edit_service';

  @override
  List<Object?> get props => [$extra];

  const EditServiceRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditService(service: $extra);
  }
}
