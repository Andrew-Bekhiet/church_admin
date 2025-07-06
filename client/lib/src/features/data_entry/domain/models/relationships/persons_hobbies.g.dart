// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_hobbies.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonsHobbiesFields {
  static final PersonsHobbiesFields _instance = PersonsHobbiesFields._();
  factory PersonsHobbiesFields() => _instance;
  PersonsHobbiesFields._();

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    parentType: PersonsHobbies,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Hobby> hobby = FieldMetadata<Hobby>(
    parentType: PersonsHobbies,
    name: 'hobby',
    label: 'الهواية',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> personId = FieldMetadata<String>(
    parentType: PersonsHobbies,
    name: 'personId',
    label: 'personId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> hobbyId = FieldMetadata<String>(
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
    hobbyId
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'person': person,
    'hobby': hobby,
    'personId': personId,
    'hobbyId': hobbyId
  };
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
