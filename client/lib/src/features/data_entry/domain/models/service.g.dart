// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _ServiceFields {
  _ServiceFields();

  final FieldMetadata<Service> id = FieldMetadata<Service>(
    getValue: (obj) => obj is Service ? obj.id : null,
    parentType: Service,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Service ? obj.name : null,
    parentType: Service,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<StudyYear> studyYearFrom = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is Service ? obj.studyYearFrom : null,
    parentType: Service,
    name: 'studyYearFrom',
    label: 'السنة الدراسية: من',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<StudyYear> studyYearTo = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is Service ? obj.studyYearTo : null,
    parentType: Service,
    name: 'studyYearTo',
    label: 'السنة الدراسية: إلى',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Service> nextService = FieldMetadata<Service>(
    getValue: (obj) => obj is Service ? obj.nextService : null,
    parentType: Service,
    name: 'nextService',
    label: 'الخدمة التالية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Service ? obj.color : null,
    parentType: Service,
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
    getValue: (obj) => obj is Service ? obj.photoUpdatedAt : null,
    parentType: Service,
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

  final FieldMetadata<Class> classes = FieldMetadata<Class>(
    getValue: (obj) => obj is Service ? obj.classes : null,
    parentType: Service,
    name: 'classes',
    label: 'الفصول',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Group> groups = FieldMetadata<Group>(
    getValue: (obj) => obj is Service ? obj.groups : null,
    parentType: Service,
    name: 'groups',
    label: 'المجموعات',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Service ? obj.lastEdit : null,
        parentType: Service,
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
    getValue: (obj) => obj is Service ? obj.adminUsers : null,
    parentType: Service,
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
        getValue: (obj) =>
            obj is Service ? obj.attendanceHistoryAggregate : null,
        parentType: Service,
        name: 'attendanceHistoryAggregate',
        label: 'attendanceHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<AggregateData> attendanceDaysConstraintsAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) =>
            obj is Service ? obj.attendanceDaysConstraintsAggregate : null,
        parentType: Service,
        name: 'attendanceDaysConstraintsAggregate',
        label: 'attendanceDaysConstraintsAggregate',
        isCodeOnly: true,
      );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    studyYearFrom,
    studyYearTo,
    nextService,
    color,
    photoUpdatedAt,
    classes,
    groups,
    lastEdit,
    adminUsers,
    attendanceHistoryAggregate,
    attendanceDaysConstraintsAggregate,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'studyYearFrom': studyYearFrom,
    'studyYearTo': studyYearTo,
    'nextService': nextService,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'classes': classes,
    'groups': groups,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers,
    'attendanceHistoryAggregate': attendanceHistoryAggregate,
    'attendanceDaysConstraintsAggregate': attendanceDaysConstraintsAggregate,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map json) => Service(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  studyYearFrom: json['studyYearFrom'] == null
      ? null
      : StudyYear.fromJson(
          Map<String, Object?>.from(json['studyYearFrom'] as Map),
        ),
  studyYearTo: json['studyYearTo'] == null
      ? null
      : StudyYear.fromJson(
          Map<String, Object?>.from(json['studyYearTo'] as Map),
        ),
  studyYearFromId: (json['studyYearFromId'] as num?)?.toInt(),
  studyYearToId: (json['studyYearToId'] as num?)?.toInt(),
  nextService: json['nextService'] == null
      ? null
      : Service.fromJson(Map<String, Object?>.from(json['nextService'] as Map)),
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
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
  attendanceHistoryAggregate: json['attendanceHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['attendanceHistoryAggregate'] as Map),
        ),
  attendanceDaysConstraintsAggregate:
      json['attendanceDaysConstraintsAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(
            json['attendanceDaysConstraintsAggregate'] as Map,
          ),
        ),
  userCanEdit: json['userCanEdit'] as bool? ?? false,
);

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
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
  'attendanceHistoryAggregate': instance.attendanceHistoryAggregate?.toJson(),
  'attendanceDaysConstraintsAggregate': instance
      .attendanceDaysConstraintsAggregate
      ?.toJson(),
};
