// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_persons.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class ClassesPersonsFields {
  static final ClassesPersonsFields _instance = ClassesPersonsFields._();
  factory ClassesPersonsFields() => _instance;
  ClassesPersonsFields._();

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is ClassesPersons ? obj.person : null,
    parentType: ClassesPersons,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Class> class$ = FieldMetadata<Class>(
    getValue: (obj) => obj is ClassesPersons ? obj.class$ : null,
    parentType: ClassesPersons,
    name: 'class',
    label: 'الفصل',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> personId = FieldMetadata<String>(
    getValue: (obj) => obj is ClassesPersons ? obj.personId : null,
    parentType: ClassesPersons,
    name: 'personId',
    label: 'personId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> classId = FieldMetadata<String>(
    getValue: (obj) => obj is ClassesPersons ? obj.classId : null,
    parentType: ClassesPersons,
    name: 'classId',
    label: 'classId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    person,
    class$,
    personId,
    classId
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'person': person,
    'class': class$,
    'personId': personId,
    'classId': classId
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassesPersons _$ClassesPersonsFromJson(Map json) => ClassesPersons(
      person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      class$: Class.fromJson(Map<String, Object?>.from(json[r'class$'] as Map)),
      personId: json['personId'] as String,
      classId: json['classId'] as String,
    );

Map<String, dynamic> _$ClassesPersonsToJson(ClassesPersons instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      r'class$': instance.class$.toJson(),
      'personId': instance.personId,
      'classId': instance.classId,
    };
