import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:go_router/go_router.dart';

part 'edit_person_route.g.dart';

@TypedGoRoute<EditPersonRoute>(path: '/edit_person')
class EditPersonRoute extends GoRouteData with $EditPersonRoute {
  final PersonEditIntent? $extra;
  const EditPersonRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditPersonScreen(intent: $extra ?? const CreateBlankPerson());
  }
}
