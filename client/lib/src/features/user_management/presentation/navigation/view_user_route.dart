import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewUserRoute extends HomeChildRoute {
  final String uid;
  final User? $extra;

  @override
  String get path => '/view_user';

  @override
  List<Object?> get props => [uid, $extra];

  const ViewUserRoute({required this.uid, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewUser(userId: uid, user: $extra);
  }
}
