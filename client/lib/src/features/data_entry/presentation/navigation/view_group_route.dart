part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewGroupRoute extends HomeChildRoute {
  final String id;
  final Group? group;

  @override
  String get path => '/view_group';

  @override
  List<Object?> get props => [id, group];

  @override
  Map<String, String> get urlParameters => {'id': id};

  const ViewGroupRoute({required this.id, this.group});

  @override
  Widget build(BuildContext context) {
    return ViewGroup(groupId: id, group: group);
  }
}
