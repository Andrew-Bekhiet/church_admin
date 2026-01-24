// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_groups.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonsGroupsFields {
  static final PersonsGroupsFields _instance = PersonsGroupsFields._();
  factory PersonsGroupsFields() => _instance;
  PersonsGroupsFields._();

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is PersonsGroups ? obj.person : null,
    parentType: PersonsGroups,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Group> group = FieldMetadata<Group>(
    getValue: (obj) => obj is PersonsGroups ? obj.group : null,
    parentType: PersonsGroups,
    name: 'group',
    label: 'المجموعة',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> personId = FieldMetadata<String>(
    getValue: (obj) => obj is PersonsGroups ? obj.personId : null,
    parentType: PersonsGroups,
    name: 'personId',
    label: 'personId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> groupId = FieldMetadata<String>(
    getValue: (obj) => obj is PersonsGroups ? obj.groupId : null,
    parentType: PersonsGroups,
    name: 'groupId',
    label: 'groupId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    person,
    group,
    personId,
    groupId,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'person': person,
    'group': group,
    'personId': personId,
    'groupId': groupId,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonsGroups _$PersonsGroupsFromJson(Map json) => PersonsGroups(
  person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  group: Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
  personId: json['personId'] as String,
  groupId: json['groupId'] as String,
);

Map<String, dynamic> _$PersonsGroupsToJson(PersonsGroups instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      'group': instance.group.toJson(),
      'personId': instance.personId,
      'groupId': instance.groupId,
    };
