// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'group.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class GroupFields {
  factory GroupFields() => _instance;

  GroupFields._();

  static final GroupFields _instance = GroupFields._();

  final FieldMetadata<Group> id = FieldMetadata<Group>(
    getValue: (obj) => obj is Group ? obj.id : null,
    parentType: Group,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Group ? obj.name : null,
    parentType: Group,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Group ? obj.color : null,
    parentType: Group,
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
    getValue: (obj) => obj is Group ? obj.photoUpdatedAt : null,
    parentType: Group,
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

  final FieldMetadata<Service> service = FieldMetadata<Service>(
    getValue: (obj) => obj is Group ? obj.service : null,
    parentType: Group,
    name: 'service',
    label: 'الخدمة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Meeting> defaultMeeting = FieldMetadata<Meeting>(
    getValue: (obj) => obj is Group ? obj.defaultMeeting : null,
    parentType: Group,
    name: 'defaultMeeting',
    label: 'الاجتماع الافتراضي',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Meeting> meetings = FieldMetadata<Meeting>(
    getValue: (obj) => obj is Group ? obj.meetings : null,
    parentType: Group,
    name: 'meetings',
    label: 'meetings',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<DateTimeRange<DateTime>> validity =
      FieldMetadata<DateTimeRange<DateTime>>(
        getValue: (obj) => obj is Group ? obj.validity : null,
        parentType: Group,
        name: 'validity',
        label: 'validity',
        isCodeOnly: true,
      );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Group ? obj.lastEdit : null,
        parentType: Group,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<AdminOnData> adminUsersRel = FieldMetadata<AdminOnData>(
    getValue: (obj) => obj is Group ? obj.adminUsers : null,
    parentType: Group,
    name: 'adminUsers',
    label: 'adminUsers',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<User> adminUsers = adminUsersRel.redirectTo(
    AdminOnDataFields().user,
    isExpandable: false,
    isOrderable: false,
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    color,
    photoUpdatedAt,
    service,
    defaultMeeting,
    meetings,
    validity,
    lastEdit,
    adminUsers,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'service': service,
    'defaultMeeting': defaultMeeting,
    'meetings': meetings,
    'validity': validity,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map json) => Group(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  userCanEdit: json['userCanEdit'] as bool? ?? false,
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  serviceId: json['serviceId'] as String?,
  service: json['service'] == null
      ? null
      : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
  defaultMeeting: json['defaultMeeting'] == null
      ? null
      : Meeting.fromJson(
          Map<String, Object?>.from(json['defaultMeeting'] as Map),
        ),
  validity: dateRangeFromString(json['validity']),
  meetings: (json['meetings'] as List<dynamic>?)
      ?.map((e) => Meeting.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  lastEdit: json['lastEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
);

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'serviceId': instance.serviceId,
  'service': instance.service?.toJson(),
  'defaultMeeting': instance.defaultMeeting?.toJson(),
  'meetings': instance.meetings?.map((e) => e.toJson()).toList(),
  'validity': dateRangeToString(instance.validity),
  'lastEdit': instance.lastEdit?.toJson(),
  'adminUsers': adminUsersToJson(instance.adminUsers),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
