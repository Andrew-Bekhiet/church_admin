// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'service.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class ServiceFields {
  factory ServiceFields() => _instance;

  ServiceFields._();

  static final ServiceFields _instance = ServiceFields._();

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

  final FieldMetadata<Meeting> defaultMeeting = FieldMetadata<Meeting>(
    getValue: (obj) => obj is Service ? obj.defaultMeeting : null,
    parentType: Service,
    name: 'defaultMeeting',
    label: 'الاجتماع الافتراضي',
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

  final FieldMetadata<Meeting> meetings = FieldMetadata<Meeting>(
    getValue: (obj) => obj is Service ? obj.meetings : null,
    parentType: Service,
    name: 'meetings',
    label: 'meetings',
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

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    studyYearFrom,
    studyYearTo,
    nextService,
    defaultMeeting,
    color,
    photoUpdatedAt,
    classes,
    groups,
    meetings,
    lastEdit,
    adminUsers,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'studyYearFrom': studyYearFrom,
    'studyYearTo': studyYearTo,
    'nextService': nextService,
    'defaultMeeting': defaultMeeting,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'classes': classes,
    'groups': groups,
    'meetings': meetings,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map json) => Service(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  userCanEdit: json['userCanEdit'] as bool? ?? false,
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
  defaultMeeting: json['defaultMeeting'] == null
      ? null
      : Meeting.fromJson(
          Map<String, Object?>.from(json['defaultMeeting'] as Map),
        ),
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  classes: (json['classes'] as List<dynamic>?)
      ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  groups: (json['groups'] as List<dynamic>?)
      ?.map((e) => Group.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
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

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'studyYearFrom': instance.studyYearFrom?.toJson(),
  'studyYearTo': instance.studyYearTo?.toJson(),
  'studyYearFromId': instance.studyYearFromId,
  'studyYearToId': instance.studyYearToId,
  'nextService': instance.nextService?.toJson(),
  'nextServiceId': instance.nextServiceId,
  'defaultMeeting': instance.defaultMeeting?.toJson(),
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'classes': instance.classes?.map((e) => e.toJson()).toList(),
  'groups': instance.groups?.map((e) => e.toJson()).toList(),
  'meetings': instance.meetings?.map((e) => e.toJson()).toList(),
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
