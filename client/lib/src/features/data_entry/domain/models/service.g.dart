// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$ServiceFields = <String, FieldMetadata>{
  'id': FieldMetadata<Service>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'studyYearFrom': FieldMetadata<StudyYear>(
    name: 'studyYearFrom',
    label: 'السنة الدراسية: من',
  ),
  'studyYearTo': FieldMetadata<StudyYear>(
    name: 'studyYearTo',
    label: 'السنة الدراسية: إلى',
  ),
  'nextService': FieldMetadata<Service>(
    name: 'nextService',
    label: 'الخدمة التالية',
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
  'classes': FieldMetadata<Class>(
    name: 'classes',
    label: 'الفصول',
    isOrderable: false,
  ),
  'groups': FieldMetadata<Group>(
    name: 'groups',
    label: 'المجموعات',
    isOrderable: false,
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

_$ServiceImpl _$$ServiceImplFromJson(Map json) => _$ServiceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      studyYearFrom: json['studyYearFrom'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYearFrom'] as Map)),
      studyYearTo: json['studyYearTo'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYearTo'] as Map)),
      studyYearFromId: (json['studyYearFromId'] as num?)?.toInt(),
      studyYearToId: (json['studyYearToId'] as num?)?.toInt(),
      nextService: json['nextService'] == null
          ? null
          : Service.fromJson(
              Map<String, Object?>.from(json['nextService'] as Map)),
      nextServiceId: json['nextServiceId'] as String?,
      color: colorFromInt((json['color'] as num?)?.toInt()),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
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

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'studyYearFrom': instance.studyYearFrom?.toJson(),
      'studyYearTo': instance.studyYearTo?.toJson(),
      'studyYearFromId': instance.studyYearFromId,
      'studyYearToId': instance.studyYearToId,
      'nextService': instance.nextService?.toJson(),
      'nextServiceId': instance.nextServiceId,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate?.toJson(),
      'attendanceDaysConstraintsAggregate':
          instance.attendanceDaysConstraintsAggregate?.toJson(),
    };
