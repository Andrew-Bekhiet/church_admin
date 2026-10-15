import 'package:church_admin/church_admin.dart';

sealed class PersonEditIntent extends SerializableExtra {
  static const String _kindKey = 'kind';
  static const String _subjectKey = 'subject';

  static Json _subjectJson(Object? kind, Object? subject) => switch (subject) {
    final Map<Object?, Object?> map => Map<String, Object?>.from(map),
    _ => throw FormatException('PersonEditIntent kind "$kind" has no subject'),
  };

  @override
  String get typeName => 'PersonEditIntent';

  const PersonEditIntent();

  factory PersonEditIntent.fromJson(Json json) {
    final kind = json[_kindKey];
    final subject = json[_subjectKey];

    return switch (kind) {
      UpdatePerson.kind => UpdatePerson(
        person: Person.fromJson(_subjectJson(kind, subject)),
      ),
      CreatePersonInFamily.kind => CreatePersonInFamily(
        family: Family.fromJson(_subjectJson(kind, subject)),
      ),
      CreatePersonOnStreet.kind => CreatePersonOnStreet(
        street: Street.fromJson(_subjectJson(kind, subject)),
      ),
      CreatePersonInArea.kind => CreatePersonInArea(
        area: Area.fromJson(_subjectJson(kind, subject)),
      ),
      CreatePersonInService.kind => CreatePersonInService(
        service: Service.fromJson(_subjectJson(kind, subject)),
      ),
      CreatePersonInGroup.kind => CreatePersonInGroup(
        group: Group.fromJson(_subjectJson(kind, subject)),
      ),
      CreatePersonInClass.kind => CreatePersonInClass(
        class$: Class.fromJson(_subjectJson(kind, subject)),
      ),
      _ => const CreateBlankPerson(),
    };
  }

  Json _toJsonOfKind(String kind, [ToJson? subject]) => {
    _kindKey: kind,
    if (subject != null) _subjectKey: subject.toJson(),
  };
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
  Json toJson() => _toJsonOfKind(kind, area);
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
  Json toJson() => _toJsonOfKind(kind, class$);
}

final class CreatePersonInFamily extends CreatePerson {
  static const String kind = 'inFamily';

  final Family family;

  const CreatePersonInFamily({required this.family});

  @override
  Person draftPerson(String id) => _draft(id, family: family);

  @override
  Json toJson() => _toJsonOfKind(kind, family);
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
  Json toJson() => _toJsonOfKind(kind, group);
}

final class CreatePersonInService extends CreatePerson {
  static const String kind = 'inService';

  final Service service;

  const CreatePersonInService({required this.service});

  @override
  Person draftPerson(String id) => _draft(id, services: [service]);

  @override
  Json toJson() => _toJsonOfKind(kind, service);
}

final class CreatePersonOnStreet extends CreatePerson {
  static const String kind = 'onStreet';

  final Street street;

  const CreatePersonOnStreet({required this.street});

  @override
  Person draftPerson(String id) => _draft(id, address: Address(street: street));

  @override
  Json toJson() => _toJsonOfKind(kind, street);
}

final class CreateBlankPerson extends CreatePerson {
  static const String kind = 'create';

  const CreateBlankPerson();

  @override
  Person draftPerson(String id) => _draft(id);

  @override
  Json toJson() => _toJsonOfKind(kind);
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
  Json toJson() => _toJsonOfKind(kind, person);
}
