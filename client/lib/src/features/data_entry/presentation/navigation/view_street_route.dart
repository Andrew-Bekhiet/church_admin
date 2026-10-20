import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewStreetRoute extends HomeChildRoute {
  final String id;
  final Street? $extra;

  @override
  String get path => '/view_street';

  @override
  List<Object?> get props => [id, $extra];

  const ViewStreetRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewStreet(streetId: id, street: $extra);
  }
}
