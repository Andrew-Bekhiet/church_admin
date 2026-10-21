part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditPersonRoute extends HomeChildRoute {
  static const String routePath = '/edit_person';

  final PersonEditIntent? intent;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [intent];

  const EditPersonRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditPersonScreen(intent: intent ?? const CreateBlankPerson());
  }
}
