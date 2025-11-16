// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class StreetFields {
  static final StreetFields _instance = StreetFields._();
  factory StreetFields() => _instance;
  StreetFields._();

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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<AreasStreets> areasRel = FieldMetadata<AreasStreets>(
    getValue: (obj) => obj is Street ? obj.areas : null,
    parentType: Street,
    name: 'areas',
    label: 'areas',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Area> areas = areasRel.redirectTo(
    AreasStreetsFields().area,
    isExpandable: false,
    isOrderable: false,
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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
    lastEdit
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'line': line,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'areas': areas,
    'lastVisit': lastVisit,
    'lastEdit': lastEdit
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Street _$StreetFromJson(Map json) => Street(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      line: lineFromJson(json['line']),
      color: colorFromInt((json['color'] as num?)?.toInt()),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      areas: streetsAreasFromJson(json['areas'] as List?),
      lastVisit: json['lastVisit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastVisit'] as Map)),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      userCanEdit: json['userCanEdit'] as bool? ?? false,
    );

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'line': lineToJson(instance.line),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'areas': streetsAreasToJson(instance.areas),
      'lastVisit': instance.lastVisit?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
    };
