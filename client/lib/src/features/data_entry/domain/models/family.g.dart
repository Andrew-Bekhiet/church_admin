// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'family.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _FamilyFields {
  _FamilyFields();

  final FieldMetadata<Family> id = FieldMetadata<Family>(
    getValue: (obj) => obj is Family ? obj.id : null,
    parentType: Family,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Family ? obj.name : null,
    parentType: Family,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Address> address = FieldMetadata<Address>(
    getValue: (obj) => obj is Family ? obj.address : null,
    parentType: Family,
    name: 'address',
    label: 'تفاصيل العنوان',
    isCodeOnly: false,
  );

  final FieldMetadata<MartialStatus> status = FieldMetadata<MartialStatus>(
    getValue: (obj) => obj is Family ? obj.status : null,
    parentType: Family,
    name: 'status',
    label: 'الحالة الاجتماعية',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<DateTime> marriageDate = FieldMetadata<DateTime>(
    getValue: (obj) => obj is Family ? obj.marriageDate : null,
    parentType: Family,
    name: 'marriageDate',
    label: 'تاريخ الزواج',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> deceasedSpouseName = FieldMetadata<String>(
    getValue: (obj) => obj is Family ? obj.deceasedSpouseName : null,
    parentType: Family,
    name: 'deceasedSpouseName',
    label: 'اسم الزوج المتوفي',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Church> church = FieldMetadata<Church>(
    getValue: (obj) => obj is Family ? obj.church : null,
    parentType: Family,
    name: 'church',
    label: 'الكنيسة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> notes = FieldMetadata<String>(
    getValue: (obj) => obj is Family ? obj.notes : null,
    parentType: Family,
    name: 'notes',
    label: 'ملاحظات',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Family ? obj.color : null,
    parentType: Family,
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
    getValue: (obj) => obj is Family ? obj.photoUpdatedAt : null,
    parentType: Family,
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

  final FieldMetadata<FamiliesFamilies> childrenRel =
      FieldMetadata<FamiliesFamilies>(
        getValue: (obj) => obj is Family ? obj.children : null,
        parentType: Family,
        name: 'children',
        label: 'children',
        isCodeOnly: true,
        isOrderable: false,
      );

  late final FieldMetadata<Family> children = childrenRel.redirectTo(
    FamiliesFamiliesFields().child,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<FamiliesFamilies> parentsRel =
      FieldMetadata<FamiliesFamilies>(
        getValue: (obj) => obj is Family ? obj.parents : null,
        parentType: Family,
        name: 'parents',
        label: 'parents',
        isCodeOnly: true,
        isOrderable: false,
      );

  late final FieldMetadata<Family> parents = parentsRel.redirectTo(
    FamiliesFamiliesFields().parent,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Family ? obj.lastEdit : null,
        parentType: Family,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastVisit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Family ? obj.lastVisit : null,
        parentType: Family,
        name: 'lastVisit',
        label: 'أخر افتقاد',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastFatherVisit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Family ? obj.lastFatherVisit : null,
        parentType: Family,
        name: 'lastFatherVisit',
        label: 'آخر افتقاد للأب الكاهن',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<Point> geolocation = FieldMetadata<Point>(
    getValue: (obj) => obj is Family ? obj.geolocation : null,
    parentType: Family,
    name: 'geolocation',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    address,
    status,
    marriageDate,
    deceasedSpouseName,
    church,
    notes,
    color,
    photoUpdatedAt,
    children,
    parents,
    lastEdit,
    lastVisit,
    lastFatherVisit,
    geolocation,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'address': address,
    'status': status,
    'marriageDate': marriageDate,
    'deceasedSpouseName': deceasedSpouseName,
    'church': church,
    'notes': notes,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'children': children,
    'parents': parents,
    'lastEdit': lastEdit,
    'lastVisit': lastVisit,
    'lastFatherVisit': lastFatherVisit,
    'geolocation': geolocation,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Family _$FamilyFromJson(Map json) => Family(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  status:
      $enumDecodeNullable(_$MartialStatusEnumMap, json['status']) ??
      MartialStatus.married,
  userCanEdit: json['userCanEdit'] as bool? ?? false,
  contacts:
      (json['contacts'] as List<dynamic>?)
          ?.map(
            (e) => FamilyPhoneContact.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList() ??
      [],
  address: json['address'] == null
      ? null
      : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
  marriageDate: _$JsonConverterFromJson<String, DateTime>(
    json['marriageDate'],
    const LocalDateTimeConverter().fromJson,
  ),
  deceasedSpouseName: json['deceasedSpouseName'] as String?,
  church: json['church'] == null
      ? null
      : Church.fromJson(Map<String, Object?>.from(json['church'] as Map)),
  notes: json['notes'] as String?,
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  children: familyChildrenFromJson(json['children'] as List?),
  parents: familyParentsFromJson(json['parents'] as List?),
  lastEdit: json['lastEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  lastVisit: json['lastVisit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastVisit'] as Map),
        ),
  lastFatherVisit: json['lastFatherVisit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastFatherVisit'] as Map),
        ),
);

Map<String, dynamic> _$FamilyToJson(Family instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address?.toJson(),
  'status': _$MartialStatusEnumMap[instance.status]!,
  'marriageDate': _$JsonConverterToJson<String, DateTime>(
    instance.marriageDate,
    const LocalDateTimeConverter().toJson,
  ),
  'deceasedSpouseName': instance.deceasedSpouseName,
  'church': instance.church?.toJson(),
  'notes': instance.notes,
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'children': familyChildrenToJson(instance.children),
  'parents': familyParentsToJson(instance.parents),
  'contacts': instance.contacts.map((e) => e.toJson()).toList(),
  'lastEdit': instance.lastEdit?.toJson(),
  'lastVisit': instance.lastVisit?.toJson(),
  'lastFatherVisit': instance.lastFatherVisit?.toJson(),
};

const _$MartialStatusEnumMap = {
  MartialStatus.married: 'married',
  MartialStatus.separated: 'separated',
  MartialStatus.divorced: 'divorced',
  MartialStatus.widowed: 'widowed',
  MartialStatus.widowedWithoutChildren: 'widowedWithoutChildren',
  MartialStatus.single: 'single',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
