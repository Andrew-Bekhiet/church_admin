import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:go_router/go_router.dart';

part 'edit_family_route.g.dart';

@TypedGoRoute<EditFamilyRoute>(path: '/edit_family')
class EditFamilyRoute extends GoRouteData with $EditFamilyRoute {
  final EditFamilyExtra? $extra;
  const EditFamilyRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditFamily(
      family: $extra?.family,
      withChildren: $extra?.children,
      withParents: $extra?.parents,
      withAddress: Address(street: $extra?.street, area: $extra?.area),
    );
  }
}
