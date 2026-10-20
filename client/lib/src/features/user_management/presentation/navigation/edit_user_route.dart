import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditUserRoute extends HomeChildRoute {
  final UserEditIntent $extra;

  @override
  String get path => '/edit_user';

  @override
  List<Object?> get props => [$extra];

  const EditUserRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditUserScreen(intent: $extra);
  }
}
