import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewFamilyRoute extends HomeChildRoute {
  final String id;
  final Family? $extra;

  @override
  String get path => '/view_family';

  @override
  List<Object?> get props => [id, $extra];

  const ViewFamilyRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewFamily(familyId: id, family: $extra);
  }
}
