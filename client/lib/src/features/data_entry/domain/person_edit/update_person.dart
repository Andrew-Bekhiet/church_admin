part of 'person_edit_intent.dart';

final class UpdatePerson extends PersonEditIntent {
  static const String kind = 'update';

  final Person person;

  Person get personWithRelationIds => person.copyWith(
    familyId: person.family?.id,
    churchId: person.church?.id,
    collegeId: person.college?.id,
    fatherId: person.father?.id,
    jobId: person.job?.id,
    personTypeId: person.personType?.id,
    qualificationId: person.qualification?.id,
    schoolId: person.school?.id,
    shammasLevelId: person.shammasLevel?.id,
    stateId: person.state?.id,
    storeId: person.store?.id,
    studyYearId: person.studyYear?.order,
  );

  const UpdatePerson({required this.person});

  @override
  Json toJson() => _toJsonOfKind(kind, person);
}
