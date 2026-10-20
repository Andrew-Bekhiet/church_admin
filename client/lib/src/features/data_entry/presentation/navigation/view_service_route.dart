import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewServiceRoute extends HomeChildRoute {
  final String id;
  final Service? $extra;

  @override
  String get path => '/view_service';

  @override
  List<Object?> get props => [id, $extra];

  const ViewServiceRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewService(serviceId: id, service: $extra);
  }
}
