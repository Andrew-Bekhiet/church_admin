part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditFamilyRoute extends HomeChildRoute {
  final Family? family;
  final Set<Family>? withChildren;
  final Set<Family>? withParents;
  final Address? withAddress;

  @override
  String get path => '/edit_family';

  @override
  List<Object?> get props => [family, withChildren, withParents, withAddress];

  @override
  Map<String, String> get urlParameters => {'id': ?family?.id};

  const EditFamilyRoute({
    this.family,
    this.withChildren,
    this.withParents,
    this.withAddress,
  });

  @override
  Widget build(BuildContext context) {
    return EditFamily(
      family: family,
      withChildren: withChildren,
      withParents: withParents,
      withAddress: withAddress ?? const Address(),
    );
  }
}
