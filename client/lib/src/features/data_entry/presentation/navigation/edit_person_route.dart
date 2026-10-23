part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditPersonRoute extends HomeChildRoute {
  static const String routePath = '/edit_person';

  final PersonEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => switch (intent ?? const CreateBlankPerson()) {
    CreatePersonInArea(:final area) => {
      'intent_kind': CreatePersonInArea.kind,
      'area_id': area.id,
    },
    CreatePersonInClass(:final class$) => {
      'intent_kind': CreatePersonInClass.kind,
      'class_id': class$.id,
    },
    CreatePersonInFamily(:final family) => {
      'intent_kind': CreatePersonInFamily.kind,
      'family_id': family.id,
    },
    CreatePersonInGroup(:final group) => {
      'intent_kind': CreatePersonInGroup.kind,
      'group_id': group.id,
    },
    CreatePersonInService(:final service) => {
      'intent_kind': CreatePersonInService.kind,
      'service_id': service.id,
    },
    CreatePersonOnStreet(:final street) => {
      'intent_kind': CreatePersonOnStreet.kind,
      'street_id': street.id,
    },
    CreateBlankPerson() => {'intent_kind': CreateBlankPerson.kind},
    UpdatePerson(:final person) => {
      'intent_kind': UpdatePerson.kind,
      'person_id': person.id,
    },
  };

  @override
  List<Object?> get props => [intent];

  const EditPersonRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditPersonScreen(intent: intent ?? const CreateBlankPerson());
  }
}
