// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'persons_hobbies.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonsHobbiesFields {
  static final PersonsHobbiesFields _instance = PersonsHobbiesFields._();
  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is PersonsHobbies ? obj.person : null,
    parentType: PersonsHobbies,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Hobby> hobby = FieldMetadata<Hobby>(
    getValue: (obj) => obj is PersonsHobbies ? obj.hobby : null,
    parentType: PersonsHobbies,
    name: 'hobby',
    label: 'الهواية',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> personId = FieldMetadata<String>(
    getValue: (obj) => obj is PersonsHobbies ? obj.personId : null,
    parentType: PersonsHobbies,
    name: 'personId',
    label: 'personId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> hobbyId = FieldMetadata<String>(
    getValue: (obj) => obj is PersonsHobbies ? obj.hobbyId : null,
    parentType: PersonsHobbies,
    name: 'hobbyId',
    label: 'hobbyId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    person,
    hobby,
    personId,
    hobbyId,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'person': person,
    'hobby': hobby,
    'personId': personId,
    'hobbyId': hobbyId,
  };
  factory PersonsHobbiesFields() => _instance;
  PersonsHobbiesFields._();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonsHobbies _$PersonsHobbiesFromJson(Map json) => PersonsHobbies(
  person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  hobby: Hobby.fromJson(Map<String, Object?>.from(json['hobby'] as Map)),
  personId: json['personId'] as String,
  hobbyId: json['hobbyId'] as String,
);

Map<String, dynamic> _$PersonsHobbiesToJson(PersonsHobbies instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      'hobby': instance.hobby.toJson(),
      'personId': instance.personId,
      'hobbyId': instance.hobbyId,
    };
