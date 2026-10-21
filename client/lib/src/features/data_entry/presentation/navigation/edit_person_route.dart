part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditPersonRoute extends HomeChildRoute {
  final PersonEditIntent? $extra;

  @override
  String get path => '/edit_person';

  @override
  List<Object?> get props => [$extra];

  const EditPersonRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditPersonScreen(intent: $extra ?? const CreateBlankPerson());
  }
}
