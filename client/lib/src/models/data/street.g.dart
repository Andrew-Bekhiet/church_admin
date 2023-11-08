// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$StreetFields = <String, FieldMetadata>{
  'id': FieldMetadata<Street>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'line': FieldMetadata<Line>(
    name: 'line',
    label: 'الموقع',
    operators: Operator.spatial,
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
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreetImpl _$$StreetImplFromJson(Map json) => _$StreetImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      line: lineFromJson(json['line']),
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
    );

Map<String, dynamic> _$$StreetImplToJson(_$StreetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'line': lineToJson(instance.line),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'lastEdit': instance.lastEdit?.toJson(),
    };
