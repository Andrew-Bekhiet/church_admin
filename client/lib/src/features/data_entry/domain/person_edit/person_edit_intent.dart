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
