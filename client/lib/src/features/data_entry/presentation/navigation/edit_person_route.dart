import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditPersonRoute extends HomeChildRoute {
  final PersonEditIntent? $extra;

  @override
  String get path => '/edit_person';

  @override
  List<Object?> get props => [$extra];

  const EditPersonRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditPersonScreen(intent: $extra ?? const CreateBlankPerson());
  }
}
