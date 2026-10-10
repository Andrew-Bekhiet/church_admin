// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'data_check.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class DataCheckFields {
  factory DataCheckFields() => _instance;

  DataCheckFields._();

  static final DataCheckFields _instance = DataCheckFields._();

  final FieldMetadata<bool> isComplete = FieldMetadata<bool>(
    getValue: (obj) => obj is DataCheck ? obj.isComplete : null,
    parentType: DataCheck,
    name: 'isComplete',
    label: 'البيانات مكتملة',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<bool> familyCheck = FieldMetadata<bool>(
    getValue: (obj) => obj is DataCheck ? obj.familyCheck : null,
    parentType: DataCheck,
    name: 'familyCheck',
    label: 'بيانات العائلة مكتملة',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<bool> addressCheck = FieldMetadata<bool>(
    getValue: (obj) => obj is DataCheck ? obj.addressCheck : null,
    parentType: DataCheck,
    name: 'addressCheck',
    label: 'العنوان مكتمل',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<bool> userOverride = FieldMetadata<bool>(
    getValue: (obj) => obj is DataCheck ? obj.userOverride : null,
    parentType: DataCheck,
    name: 'userOverride',
    label: 'تعديل يدوي',
    isCodeOnly: false,
    isOrderable: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    isComplete,
    familyCheck,
    addressCheck,
    userOverride,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'isComplete': isComplete,
    'familyCheck': familyCheck,
    'addressCheck': addressCheck,
    'userOverride': userOverride,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataCheck _$DataCheckFromJson(Map json) => DataCheck(
  familyId: json['familyId'] as String,
  isComplete: json['isComplete'] as bool? ?? false,
  familyCheck: json['familyCheck'] as bool? ?? false,
  addressCheck: json['addressCheck'] as bool? ?? false,
  details:
      (json['details'] as List<dynamic>?)
          ?.map(
            (e) => DataCheckItem.fromJson(Map<String, Object?>.from(e as Map)),
          )
          .toList() ??
      [],
  userOverride: json['userOverride'] as bool?,
);

Map<String, dynamic> _$DataCheckToJson(DataCheck instance) => <String, dynamic>{
  'isComplete': instance.isComplete,
  'familyCheck': instance.familyCheck,
  'addressCheck': instance.addressCheck,
  'userOverride': instance.userOverride,
  'familyId': instance.familyId,
  'details': instance.details.map((e) => e.toJson()).toList(),
};
