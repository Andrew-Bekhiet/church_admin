import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewGroupRoute extends HomeChildRoute {
  final String id;
  final Group? $extra;

  @override
  String get path => '/view_group';

  @override
  List<Object?> get props => [id, $extra];

  const ViewGroupRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewGroup(groupId: id, group: $extra);
  }
}
