part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditGroupRoute extends HomeChildRoute {
  static const String routePath = '/edit_group';

  final GroupEditIntent? intent;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [intent];

  const EditGroupRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditGroupScreen(intent: intent ?? const CreateBlankGroup());
  }
}
