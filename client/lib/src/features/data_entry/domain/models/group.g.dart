// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$GroupFields = <String, FieldMetadata>{
  'id': FieldMetadata<Group>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
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
  'service': FieldMetadata<Service>(
    name: 'service',
    label: 'الخدمة',
  ),
  'lastEdit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
  ),
  'adminUsers': FieldMetadata<User>(
    name: 'adminUsers',
    label: 'الخدام المسؤلين',
    isOrderable: false,
  ),
  'attendanceHistoryAggregate': FieldMetadata<AggregateData>(
    name: 'attendanceHistoryAggregate',
    label: 'attendanceHistoryAggregate',
  ),
  'attendanceDaysConstraintsAggregate': FieldMetadata<AggregateData>(
    name: 'attendanceDaysConstraintsAggregate',
    label: 'attendanceDaysConstraintsAggregate',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupImpl _$$GroupImplFromJson(Map json) => _$GroupImpl(
      id: json['id'] as String,
      name: json['name'] as String,
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

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
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
