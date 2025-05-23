// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$FamilyFields = <String, FieldMetadata>{
  'id': FieldMetadata<Family>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'address': FieldMetadata<Address>(
    name: 'address',
    label: 'العنوان',
  ),
  'notes': FieldMetadata<String>(
    name: 'notes',
    label: 'ملاحظات',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'color': FieldMetadata<Color>(
    name: 'color',
    label: 'اللون',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'photoUpdatedAt': FieldMetadata<DateTime>(
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    operators: Operator.dateComparitive.union({Operator.isNull}),
  ),
  'children': FieldMetadata<Family>(
    name: 'children',
    label: 'العائلات الأبناء',
    isOrderable: false,
  ),
  'parents': FieldMetadata<Family>(
    name: 'parents',
    label: 'العائلات الأباء',
    isOrderable: false,
  ),
  'lastEdit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Family _$FamilyFromJson(Map json) => _Family(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
      notes: json['notes'] as String?,
      color: colorFromInt((json['color'] as num?)?.toInt()),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      children: familyChildrenFromJson(json['children'] as List?),
      parents: familyParentsFromJson(json['parents'] as List?),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
    );

Map<String, dynamic> _$FamilyToJson(_Family instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address?.toJson(),
      'notes': instance.notes,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'children': familyChildrenToJson(instance.children),
      'parents': familyParentsToJson(instance.parents),
      'lastEdit': instance.lastEdit?.toJson(),
    };
