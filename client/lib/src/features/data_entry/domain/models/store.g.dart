// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$StoreFields = <String, FieldMetadata>{
  'id': FieldMetadata<Store>(
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
  'family': FieldMetadata<Family>(
    name: 'family',
    label: 'العائلة',
  ),
  'color': FieldMetadata<Color>(
    name: 'color',
    label: 'اللون',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'lastEdit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
  ),
  'photoUpdatedAt': FieldMetadata<DateTime>(
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map json) => _$StoreImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
      family: json['family'] == null
          ? null
          : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
      familyId: json['adminFamily'] as String?,
      color: colorFromInt((json['color'] as num?)?.toInt()),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address?.toJson(),
      'family': instance.family?.toJson(),
      'adminFamily': instance.familyId,
      'color': colorToInt(instance.color),
      'lastEdit': instance.lastEdit?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
    };
