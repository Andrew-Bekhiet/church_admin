part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditFamilyRoute extends HomeChildRoute {
  final EditFamilyExtra? $extra;

  @override
  String get path => '/edit_family';

  @override
  List<Object?> get props => [$extra];

  const EditFamilyRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditFamily(
      family: $extra?.family,
      withChildren: $extra?.children,
      withParents: $extra?.parents,
      withAddress: Address(street: $extra?.street, area: $extra?.area),
    );
  }
}
