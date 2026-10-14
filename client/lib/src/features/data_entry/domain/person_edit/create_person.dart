part of 'person_edit_intent.dart';

sealed class CreatePerson extends PersonEditIntent {
  const CreatePerson();

  Person draftPerson(String id);

  Person _draft(
    String id, {
    Address address = const Address(),
    List<Service> services = const [],
    List<Group> groups = const [],
    bool gender = true,
    Family? family,
    StudyYear? studyYear,
  }) => Person(
    id: id,
    name: '',
    family: family,
    familyId: family?.id,
    services: services,
    groups: groups,
    studyYear: studyYear,
    studyYearId: studyYear?.order,
    workStatus: studyYear != null ? WorkStatus.student : WorkStatus.employed,
    gender: gender,
    address: address,
  );
}
