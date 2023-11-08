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
  'address': FieldMetadata<String>(
    name: 'address',
    label: 'العنوان',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'geolocation': FieldMetadata<Point>(
    name: 'geolocation',
    label: 'الموقع',
    operators: Operator.spatial,
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
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'areas': FieldMetadata<Area>(
    name: 'areas',
    label: 'المناطق',
    isOrderable: false,
  ),
  'streets': FieldMetadata<Street>(
    name: 'streets',
    label: 'الشوارع',
    isOrderable: false,
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
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyImpl _$$FamilyImplFromJson(Map json) => _$FamilyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      geolocation: pointFromJson(json['geolocation']),
      notes: json['notes'] as String?,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      streets: (json['streets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      children: familyChildrenFromJson(json['children'] as List?),
      parents: familyParentsFromJson(json['parents'] as List?),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
    );

Map<String, dynamic> _$$FamilyImplToJson(_$FamilyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'geolocation': pointToJson(instance.geolocation),
      'notes': instance.notes,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'streets': instance.streets?.map((e) => e.toJson()).toList(),
      'children': familyChildrenToJson(instance.children),
      'parents': familyParentsToJson(instance.parents),
      'lastEdit': instance.lastEdit?.toJson(),
    };
