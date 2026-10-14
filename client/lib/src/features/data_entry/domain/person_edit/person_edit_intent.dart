import 'package:church_admin/church_admin.dart';

part 'create_person.dart';
part 'create_person_in_area.dart';
part 'create_person_in_class.dart';
part 'create_person_in_family.dart';
part 'create_person_in_group.dart';
part 'create_person_in_service.dart';
part 'create_person_on_street.dart';
part 'create_blank_person.dart';
part 'update_person.dart';

sealed class PersonEditIntent extends SerializableExtra {
  static const String _kindKey = 'kind';
  static const String _subjectKey = 'subject';

  static Json _subjectJson(Object? subject) =>
      Map<String, Object?>.from(subject! as Map);

  @override
  String get typeName => 'PersonEditIntent';

  const PersonEditIntent();

  factory PersonEditIntent.fromJson(Json json) {
    final subject = json[_subjectKey];

    return switch (json[_kindKey]) {
      UpdatePerson.kind => UpdatePerson(
        person: Person.fromJson(_subjectJson(subject)),
      ),
      CreatePersonInFamily.kind => CreatePersonInFamily(
        family: Family.fromJson(_subjectJson(subject)),
      ),
      CreatePersonOnStreet.kind => CreatePersonOnStreet(
        street: Street.fromJson(_subjectJson(subject)),
      ),
      CreatePersonInArea.kind => CreatePersonInArea(
        area: Area.fromJson(_subjectJson(subject)),
      ),
      CreatePersonInService.kind => CreatePersonInService(
        service: Service.fromJson(_subjectJson(subject)),
      ),
      CreatePersonInGroup.kind => CreatePersonInGroup(
        group: Group.fromJson(_subjectJson(subject)),
      ),
      CreatePersonInClass.kind => CreatePersonInClass(
        class$: Class.fromJson(_subjectJson(subject)),
      ),
      _ => const CreateBlankPerson(),
    };
  }

  Json _toJsonOfKind(String kind, [ToJson? subject]) => {
    _kindKey: kind,
    if (subject != null) _subjectKey: subject.toJson(),
  };
}
