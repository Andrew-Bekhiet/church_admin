part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewGroupRoute extends HomeChildRoute {
  static const String routePath = '/view_group';

  final String id;
  final Group? group;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {'group_id': id};

  @override
  List<Object?> get props => [id, group];

  const ViewGroupRoute({required this.id, this.group});

  @override
  Widget build(BuildContext context) {
    return ViewGroup(groupId: id, group: group);
  }
}
