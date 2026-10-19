// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'street.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _StreetFields {
  _StreetFields();

  final FieldMetadata<Street> id = FieldMetadata<Street>(
    getValue: (obj) => obj is Street ? obj.id : null,
    parentType: Street,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Street ? obj.name : null,
    parentType: Street,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Line> line = FieldMetadata<Line>(
    getValue: (obj) => obj is Street ? obj.line : null,
    parentType: Street,
    name: 'line',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Street ? obj.color : null,
    parentType: Street,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    getValue: (obj) => obj is Street ? obj.photoUpdatedAt : null,
    parentType: Street,
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Area> areas = FieldMetadata<Area>(
    getValue: (obj) => obj is Street ? obj.areas : null,
    parentType: Street,
    name: 'areas',
    label: 'المناطق',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> lastVisit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Street ? obj.lastVisit : null,
        parentType: Street,
        name: 'lastVisit',
        label: 'أخر افتقاد',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Street ? obj.lastEdit : null,
        parentType: Street,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    line,
    color,
    photoUpdatedAt,
    areas,
    lastVisit,
    lastEdit,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'line': line,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'areas': areas,
    'lastVisit': lastVisit,
    'lastEdit': lastEdit,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Street _$StreetFromJson(Map json) => Street(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  userCanEdit: json['userCanEdit'] as bool? ?? false,
  line: lineFromJson(json['line']),
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  areas: (json['areas'] as List<dynamic>?)
      ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  lastVisit: json['latestVisit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['latestVisit'] as Map),
        ),
  lastEdit: json['latestEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['latestEdit'] as Map),
        ),
);

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'line': lineToJson(instance.line),
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'areas': instance.areas?.map((e) => e.toJson()).toList(),
  'latestVisit': instance.lastVisit?.toJson(),
  'latestEdit': instance.lastEdit?.toJson(),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
