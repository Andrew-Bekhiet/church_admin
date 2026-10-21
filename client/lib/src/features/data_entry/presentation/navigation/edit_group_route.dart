part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditGroupRoute extends HomeChildRoute {
  final Group? group;
  final Service? withService;

  @override
  String get path => '/edit_group';

  @override
  List<Object?> get props => [group, withService];

  const EditGroupRoute({this.group, this.withService});

  @override
  Widget build(BuildContext context) {
    return EditGroup(group: group, withService: withService);
  }
}
