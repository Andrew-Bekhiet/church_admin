// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'families_families.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class FamiliesFamiliesFields {
  static final FamiliesFamiliesFields _instance = FamiliesFamiliesFields._();
  final FieldMetadata<Family> parent = FieldMetadata<Family>(
    getValue: (obj) => obj is FamiliesFamilies ? obj.parent : null,
    parentType: FamiliesFamilies,
    name: 'parent',
    label: 'parent',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Family> child = FieldMetadata<Family>(
    getValue: (obj) => obj is FamiliesFamilies ? obj.child : null,
    parentType: FamiliesFamilies,
    name: 'child',
    label: 'child',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> parentFamilyId = FieldMetadata<String>(
    getValue: (obj) => obj is FamiliesFamilies ? obj.parentFamilyId : null,
    parentType: FamiliesFamilies,
    name: 'parentFamilyId',
    label: 'parentFamilyId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> childFamilyId = FieldMetadata<String>(
    getValue: (obj) => obj is FamiliesFamilies ? obj.childFamilyId : null,
    parentType: FamiliesFamilies,
    name: 'childFamilyId',
    label: 'childFamilyId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    parent,
    child,
    parentFamilyId,
    childFamilyId,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'parent': parent,
    'child': child,
    'parentFamilyId': parentFamilyId,
    'childFamilyId': childFamilyId,
  };
  factory FamiliesFamiliesFields() => _instance;
  FamiliesFamiliesFields._();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamiliesFamilies _$FamiliesFamiliesFromJson(Map json) => FamiliesFamilies(
  parent: Family.fromJson(Map<String, Object?>.from(json['parent'] as Map)),
  child: Family.fromJson(Map<String, Object?>.from(json['child'] as Map)),
  parentFamilyId: json['parentFamilyId'] as String,
  childFamilyId: json['childFamilyId'] as String,
);

Map<String, dynamic> _$FamiliesFamiliesToJson(FamiliesFamilies instance) =>
    <String, dynamic>{
      'parent': instance.parent.toJson(),
      'child': instance.child.toJson(),
      'parentFamilyId': instance.parentFamilyId,
      'childFamilyId': instance.childFamilyId,
    };
