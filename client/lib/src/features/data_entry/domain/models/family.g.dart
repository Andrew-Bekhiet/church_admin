// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _FamilyFields {
  _FamilyFields();

  final FieldMetadata<Family> id = FieldMetadata<Family>(
    parentType: Family,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: Family,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Address> address = FieldMetadata<Address>(
    parentType: Family,
    name: 'address',
    label: 'العنوان',
    isCodeOnly: false,
  );

  final FieldMetadata<MartialStatus> status = FieldMetadata<MartialStatus>(
    parentType: Family,
    name: 'status',
    label: 'الحالة الاجتماعية',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<DateTime> marriageDate = FieldMetadata<DateTime>(
    parentType: Family,
    name: 'marriageDate',
    label: 'تاريخ الزواج',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<String> deceasedSpouseName = FieldMetadata<String>(
    parentType: Family,
    name: 'deceasedSpouseName',
    label: 'اسم الزوج المتوفي',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<String> notes = FieldMetadata<String>(
    parentType: Family,
    name: 'notes',
    label: 'ملاحظات',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    parentType: Family,
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
    parentType: Family,
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

  final FieldMetadata<FamiliesFamilies> childrenRel =
      FieldMetadata<FamiliesFamilies>(
    parentType: Family,
    name: 'children',
    label: 'children',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Family> children = childrenRel.redirectTo(
    FamiliesFamiliesFields().child,
    isExpandable: false,
  );

  final FieldMetadata<FamiliesFamilies> parentsRel =
      FieldMetadata<FamiliesFamilies>(
    parentType: Family,
    name: 'parents',
    label: 'parents',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Family> parents = parentsRel.redirectTo(
    FamiliesFamiliesFields().parent,
    isExpandable: false,
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Family,
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Point> geolocation = FieldMetadata<Point>(
    parentType: Family,
    name: 'geolocation',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    address,
    status,
    marriageDate,
    deceasedSpouseName,
    notes,
    color,
    photoUpdatedAt,
    children,
    parents,
    lastEdit,
    geolocation
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'address': address,
    'status': status,
    'marriageDate': marriageDate,
    'deceasedSpouseName': deceasedSpouseName,
    'notes': notes,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'children': children,
    'parents': parents,
    'lastEdit': lastEdit,
    'geolocation': geolocation
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Family _$FamilyFromJson(Map json) => Family(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
      status: $enumDecodeNullable(_$MartialStatusEnumMap, json['status']) ??
          MartialStatus.married,
      marriageDate: json['marriageDate'] == null
          ? null
          : DateTime.parse(json['marriageDate'] as String),
      deceasedSpouseName: json['deceasedSpouseName'] as String?,
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

Map<String, dynamic> _$FamilyToJson(Family instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address?.toJson(),
      'status': _$MartialStatusEnumMap[instance.status]!,
      'marriageDate': instance.marriageDate?.toIso8601String(),
      'deceasedSpouseName': instance.deceasedSpouseName,
      'notes': instance.notes,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'children': familyChildrenToJson(instance.children),
      'parents': familyParentsToJson(instance.parents),
      'lastEdit': instance.lastEdit?.toJson(),
    };

const _$MartialStatusEnumMap = {
  MartialStatus.married: 'married',
  MartialStatus.separated: 'separated',
  MartialStatus.divorced: 'divorced',
  MartialStatus.widowed: 'widowed',
};
