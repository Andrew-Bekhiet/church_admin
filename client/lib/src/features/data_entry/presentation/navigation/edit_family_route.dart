part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditFamilyRoute extends HomeChildRoute {
  static const String routePath = '/edit_family';

  final FamilyEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => switch (intent ?? const CreateBlankFamily()) {
    CreateFamilyAtAddress(:final address) => {
      'intent_kind': CreateFamilyAtAddress.kind,
      if (address.area case final area?) 'area_id': area.id,
      if (address.street case final street?) 'street_id': street.id,
    },
    CreateChildFamilyOf(:final parent) => {
      'intent_kind': CreateChildFamilyOf.kind,
      'family_id': parent.id,
    },
    CreateParentFamilyOf(:final child) => {
      'intent_kind': CreateParentFamilyOf.kind,
      'family_id': child.id,
    },
    CreateBlankFamily() => {'intent_kind': CreateBlankFamily.kind},
    UpdateFamily(:final family) => {
      'intent_kind': UpdateFamily.kind,
      'family_id': family.id,
    },
  };

  @override
  List<Object?> get props => [intent];

  const EditFamilyRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditFamilyScreen(intent: intent ?? const CreateBlankFamily());
  }
}
