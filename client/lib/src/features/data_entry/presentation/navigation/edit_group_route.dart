part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditGroupRoute extends HomeChildRoute {
  final EditGroupExtra? $extra;

  @override
  String get path => '/edit_group';

  @override
  List<Object?> get props => [$extra];

  const EditGroupRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditGroup(
      group: $extra?.group,
      withService: $extra?.service,
    );
  }
}
