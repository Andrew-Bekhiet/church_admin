// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _GroupFields {
  _GroupFields();

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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<DateTimeRange<DateTime>> validity =
      FieldMetadata<DateTimeRange<DateTime>>(
    getValue: (obj) => obj is Group ? obj.validity : null,
    parentType: Group,
    name: 'validity',
    label: 'validity',
    isCodeOnly: false,
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
      PrimitiveOperator.isNotNull
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

  final FieldMetadata<AggregateData> attendanceHistoryAggregate =
      FieldMetadata<AggregateData>(
    getValue: (obj) => obj is Group ? obj.attendanceHistoryAggregate : null,
    parentType: Group,
    name: 'attendanceHistoryAggregate',
    label: 'attendanceHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<AggregateData> attendanceDaysConstraintsAggregate =
      FieldMetadata<AggregateData>(
    getValue: (obj) =>
        obj is Group ? obj.attendanceDaysConstraintsAggregate : null,
    parentType: Group,
    name: 'attendanceDaysConstraintsAggregate',
    label: 'attendanceDaysConstraintsAggregate',
    isCodeOnly: true,
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    color,
    photoUpdatedAt,
    service,
    validity,
    lastEdit,
    adminUsers,
    attendanceHistoryAggregate,
    attendanceDaysConstraintsAggregate
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'service': service,
    'validity': validity,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers,
    'attendanceHistoryAggregate': attendanceHistoryAggregate,
    'attendanceDaysConstraintsAggregate': attendanceDaysConstraintsAggregate
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map json) => Group(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      color: colorFromInt((json['color'] as num?)?.toInt()),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      serviceId: json['serviceId'] as String?,
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      validity: dateRangeFromString(json['validity']),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
      attendanceHistoryAggregate: json['attendanceHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(Map<String, dynamic>.from(
              json['attendanceHistoryAggregate'] as Map)),
      attendanceDaysConstraintsAggregate:
          json['attendanceDaysConstraintsAggregate'] == null
              ? null
              : HistoryAggregateData.fromJson(Map<String, dynamic>.from(
                  json['attendanceDaysConstraintsAggregate'] as Map)),
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'serviceId': instance.serviceId,
      'service': instance.service?.toJson(),
      'validity': dateRangeToString(instance.validity),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate?.toJson(),
      'attendanceDaysConstraintsAggregate':
          instance.attendanceDaysConstraintsAggregate?.toJson(),
    };
