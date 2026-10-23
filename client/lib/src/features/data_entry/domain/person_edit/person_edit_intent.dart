import 'package:church_admin/church_admin.dart';

sealed class PersonEditIntent extends SerializableExtra {
  @override
  String get typeName => 'PersonEditIntent';

  Json get analyticsProperties => switch (this) {
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

  const PersonEditIntent();

  factory PersonEditIntent.fromJson(Json json) {
    late final subject = EditIntentJson.subjectOf(
      json,
      intentName: 'PersonEditIntent',
    );

    return switch (json[EditIntentJson.kindKey]) {
      UpdatePerson.kind => UpdatePerson(
        person: Person.fromJson(subject),
      ),
      CreatePersonInFamily.kind => CreatePersonInFamily(
        family: Family.fromJson(subject),
      ),
      CreatePersonOnStreet.kind => CreatePersonOnStreet(
        street: Street.fromJson(subject),
      ),
      CreatePersonInArea.kind => CreatePersonInArea(
        area: Area.fromJson(subject),
      ),
      CreatePersonInService.kind => CreatePersonInService(
        service: Service.fromJson(subject),
      ),
      CreatePersonInGroup.kind => CreatePersonInGroup(
        group: Group.fromJson(subject),
      ),
      CreatePersonInClass.kind => CreatePersonInClass(
        class$: Class.fromJson(subject),
      ),
      _ => const CreateBlankPerson(),
    };
  }
}

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

final class CreatePersonInArea extends CreatePerson {
  static const String kind = 'inArea';

  final Area area;

  const CreatePersonInArea({required this.area});

  @override
  Person draftPerson(String id) => _draft(id, address: Address(area: area));

  @override
  Json toJson() => EditIntentJson.ofKind(kind, area);
}

final class CreatePersonInClass extends CreatePerson {
  static const String kind = 'inClass';

  final Class class$;

  const CreatePersonInClass({required this.class$});

  @override
  Person draftPerson(String id) => _draft(
    id,
    services: [?class$.service],
    studyYear: class$.studyYear,
    gender: class$.serviceGender ?? true,
  );

  @override
  Json toJson() => EditIntentJson.ofKind(kind, class$);
}

final class CreatePersonInFamily extends CreatePerson {
  static const String kind = 'inFamily';

  final Family family;

  const CreatePersonInFamily({required this.family});

  @override
  Person draftPerson(String id) => _draft(id, family: family);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, family);
}

final class CreatePersonInGroup extends CreatePerson {
  static const String kind = 'inGroup';

  final Group group;

  const CreatePersonInGroup({required this.group});

  @override
  Person draftPerson(String id) => _draft(
    id,
    services: [
      if (group.service case final service?) service.copyWith(groups: [group]),
    ],
    groups: [group],
  );

  @override
  Json toJson() => EditIntentJson.ofKind(kind, group);
}

final class CreatePersonInService extends CreatePerson {
  static const String kind = 'inService';

  final Service service;

  const CreatePersonInService({required this.service});

  @override
  Person draftPerson(String id) => _draft(id, services: [service]);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, service);
}

final class CreatePersonOnStreet extends CreatePerson {
  static const String kind = 'onStreet';

  final Street street;

  const CreatePersonOnStreet({required this.street});

  @override
  Person draftPerson(String id) => _draft(id, address: Address(street: street));

  @override
  Json toJson() => EditIntentJson.ofKind(kind, street);
}

final class CreateBlankPerson extends CreatePerson {
  static const String kind = 'create';

  const CreateBlankPerson();

  @override
  Person draftPerson(String id) => _draft(id);

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class UpdatePerson extends PersonEditIntent {
  static const String kind = 'update';

  final Person person;

  Person get personWithRelationIds => person.copyWith(
    familyId: person.family?.id ?? person.familyId,
    churchId: person.church?.id ?? person.churchId,
    collegeId: person.college?.id ?? person.collegeId,
    fatherId: person.father?.id ?? person.fatherId,
    jobId: person.job?.id ?? person.jobId,
    personTypeId: person.personType?.id ?? person.personTypeId,
    qualificationId: person.qualification?.id ?? person.qualificationId,
    schoolId: person.school?.id ?? person.schoolId,
    shammasLevelId: person.shammasLevel?.id ?? person.shammasLevelId,
    stateId: person.state?.id ?? person.stateId,
    storeId: person.store?.id ?? person.storeId,
    studyYearId: person.studyYear?.order ?? person.studyYearId,
  );

  const UpdatePerson({required this.person});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, person);
}
