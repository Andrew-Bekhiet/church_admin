part of 'package:church_admin/src/core/services/router/app_route.dart';

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
