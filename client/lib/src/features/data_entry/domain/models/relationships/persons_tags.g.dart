// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'persons_tags.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonsTagsFields {
  static final PersonsTagsFields _instance = PersonsTagsFields._();
  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is PersonsTags ? obj.person : null,
    parentType: PersonsTags,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Tag> tag = FieldMetadata<Tag>(
    getValue: (obj) => obj is PersonsTags ? obj.tag : null,
    parentType: PersonsTags,
    name: 'tag',
    label: 'الشارة',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> personId = FieldMetadata<String>(
    getValue: (obj) => obj is PersonsTags ? obj.personId : null,
    parentType: PersonsTags,
    name: 'personId',
    label: 'personId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> tagId = FieldMetadata<String>(
    getValue: (obj) => obj is PersonsTags ? obj.tagId : null,
    parentType: PersonsTags,
    name: 'tagId',
    label: 'tagId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    person,
    tag,
    personId,
    tagId,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'person': person,
    'tag': tag,
    'personId': personId,
    'tagId': tagId,
  };
  factory PersonsTagsFields() => _instance;
  PersonsTagsFields._();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonsTags _$PersonsTagsFromJson(Map json) => PersonsTags(
  person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  tag: Tag.fromJson(Map<String, Object?>.from(json['tag'] as Map)),
  personId: json['personId'] as String,
  tagId: json['tagId'] as String,
);

Map<String, dynamic> _$PersonsTagsToJson(PersonsTags instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      'tag': instance.tag.toJson(),
      'personId': instance.personId,
      'tagId': instance.tagId,
    };
