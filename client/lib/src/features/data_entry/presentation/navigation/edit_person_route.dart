import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'edit_person_route.g.dart';

@TypedGoRoute<EditPersonRoute>(path: '/edit_person')
class EditPersonRoute extends GoRouteData with $EditPersonRoute {
  final PersonEditIntent? $extra;
  const EditPersonRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return switch ($extra ?? const CreateBlankPerson()) {
      UpdatePerson(:final person) => EditPerson(person: person),
      CreateBlankPerson() => const EditPerson(person: null),
      CreatePersonInFamily(:final family) => EditPerson(
        person: null,
        withFamily: family,
      ),
      CreatePersonOnStreet(:final street) => EditPerson(
        person: null,
        withAddress: Address(street: street),
      ),
      CreatePersonInArea(:final area) => EditPerson(
        person: null,
        withAddress: Address(area: area),
      ),
      CreatePersonInService(:final service) => EditPerson(
        person: null,
        withService: service,
      ),
      CreatePersonInGroup(:final group) => EditPerson(
        person: null,
        withService: group.service?.copyWith(groups: [group]),
        withGroup: group,
      ),
      CreatePersonInClass(:final class$) => EditPerson(
        person: null,
        withService: class$.service,
        withStudyYear: class$.studyYear,
        withGender: class$.serviceGender,
      ),
    };
  }
}
