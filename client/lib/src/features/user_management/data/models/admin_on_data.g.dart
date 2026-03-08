// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_on_data.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class AdminOnDataFields {
  static final AdminOnDataFields _instance = AdminOnDataFields._();
  factory AdminOnDataFields() => _instance;
  AdminOnDataFields._();

  final FieldMetadata<Area> area = FieldMetadata<Area>(
    getValue: (obj) => obj is AdminOnData ? obj.area : null,
    parentType: AdminOnData,
    name: 'area',
    label: 'المنطقة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> areaAllowExport = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.areaAllowExport : null,
    parentType: AdminOnData,
    name: 'areaAllowExport',
    label: 'يمكنه تصدير بيانات المنطقة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> areaAllowEdit = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.areaAllowEdit : null,
    parentType: AdminOnData,
    name: 'areaAllowEdit',
    label: 'يمكنه تعديل المنطقة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> areaAdminOnUsers = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.areaAdminOnUsers : null,
    parentType: AdminOnData,
    name: 'areaAdminOnUsers',
    label: 'مسؤول عن خدام المنطقة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Service> service = FieldMetadata<Service>(
    getValue: (obj) => obj is AdminOnData ? obj.service : null,
    parentType: AdminOnData,
    name: 'service',
    label: 'الخدمة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<StudyYear> serviceStudyYearData =
      FieldMetadata<StudyYear>(
        getValue: (obj) => obj is AdminOnData ? obj.serviceStudyYearData : null,
        parentType: AdminOnData,
        name: 'serviceStudyYearData',
        label: 'السنة الدراسية',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<bool> serviceGender = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.serviceGender : null,
    parentType: AdminOnData,
    name: 'serviceGender',
    label: 'نوع المخدومين المسؤول عنهم',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> serviceAllowExport = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.serviceAllowExport : null,
    parentType: AdminOnData,
    name: 'serviceAllowExport',
    label: 'يمكنه تصدير بيانات الخدمة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> serviceAllowEdit = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.serviceAllowEdit : null,
    parentType: AdminOnData,
    name: 'serviceAllowEdit',
    label: 'يمكنه تعديل الخدمة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> serviceAdminOnUsers = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.serviceAdminOnUsers : null,
    parentType: AdminOnData,
    name: 'serviceAdminOnUsers',
    label: 'مسؤول عن خدام الخدمة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> serviceWriteRelatedFamilies = FieldMetadata<bool>(
    getValue: (obj) =>
        obj is AdminOnData ? obj.serviceWriteRelatedFamilies : null,
    parentType: AdminOnData,
    name: 'serviceWriteRelatedFamilies',
    label: 'يمكنه تعديل عائلات المخدومين بالخدمة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Class> classes = FieldMetadata<Class>(
    getValue: (obj) => obj is AdminOnData ? obj.classes : null,
    parentType: AdminOnData,
    name: 'classes',
    label: 'الفصول',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Group> group = FieldMetadata<Group>(
    getValue: (obj) => obj is AdminOnData ? obj.group : null,
    parentType: AdminOnData,
    name: 'group',
    label: 'المجموعة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> groupAllowExport = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.groupAllowExport : null,
    parentType: AdminOnData,
    name: 'groupAllowExport',
    label: 'يمكنه تصدير بيانات المجموعة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> groupAllowEdit = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.groupAllowEdit : null,
    parentType: AdminOnData,
    name: 'groupAllowEdit',
    label: 'يمكنه تعديل المجموعة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> groupAdminOnUsers = FieldMetadata<bool>(
    getValue: (obj) => obj is AdminOnData ? obj.groupAdminOnUsers : null,
    parentType: AdminOnData,
    name: 'groupAdminOnUsers',
    label: 'مسؤول عن خدام المجموعة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> groupWriteRelatedFamilies = FieldMetadata<bool>(
    getValue: (obj) =>
        obj is AdminOnData ? obj.groupWriteRelatedFamilies : null,
    parentType: AdminOnData,
    name: 'groupWriteRelatedFamilies',
    label: 'يمكنه تعديل عائلات المخدومين بالمجموعة',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<User> user = FieldMetadata<User>(
    getValue: (obj) => obj is AdminOnData ? obj.user : null,
    parentType: AdminOnData,
    name: 'user',
    label: 'بيانات الخادم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    area,
    areaAllowExport,
    areaAllowEdit,
    areaAdminOnUsers,
    service,
    serviceStudyYearData,
    serviceGender,
    serviceAllowExport,
    serviceAllowEdit,
    serviceAdminOnUsers,
    serviceWriteRelatedFamilies,
    classes,
    group,
    groupAllowExport,
    groupAllowEdit,
    groupAdminOnUsers,
    groupWriteRelatedFamilies,
    user,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'area': area,
    'areaAllowExport': areaAllowExport,
    'areaAllowEdit': areaAllowEdit,
    'areaAdminOnUsers': areaAdminOnUsers,
    'service': service,
    'serviceStudyYearData': serviceStudyYearData,
    'serviceGender': serviceGender,
    'serviceAllowExport': serviceAllowExport,
    'serviceAllowEdit': serviceAllowEdit,
    'serviceAdminOnUsers': serviceAdminOnUsers,
    'serviceWriteRelatedFamilies': serviceWriteRelatedFamilies,
    'classes': classes,
    'group': group,
    'groupAllowExport': groupAllowExport,
    'groupAllowEdit': groupAllowEdit,
    'groupAdminOnUsers': groupAdminOnUsers,
    'groupWriteRelatedFamilies': groupWriteRelatedFamilies,
    'user': user,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminOnData _$AdminOnDataFromJson(Map json) => AdminOnData(
  permissionId: json['permissionId'] as String,
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  areaAllowExport: json['areaAllowExport'] as bool?,
  areaAllowEdit: json['areaAllowEdit'] as bool?,
  areaAdminOnUsers: json['areaAdminOnUsers'] as bool?,
  service: json['service'] == null
      ? null
      : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
  serviceStudyYearData: json['serviceStudyYearData'] == null
      ? null
      : StudyYear.fromJson(
          Map<String, Object?>.from(json['serviceStudyYearData'] as Map),
        ),
  serviceGender: json['serviceGender'] as bool?,
  serviceAllowExport: json['serviceAllowExport'] as bool?,
  serviceAllowEdit: json['serviceAllowEdit'] as bool?,
  serviceAdminOnUsers: json['serviceAdminOnUsers'] as bool?,
  serviceWriteRelatedFamilies: json['serviceWriteRelatedFamilies'] as bool?,
  classes:
      (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
          .toList() ??
      const [],
  group: json['group'] == null
      ? null
      : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
  groupAllowExport: json['groupAllowExport'] as bool?,
  groupAllowEdit: json['groupAllowEdit'] as bool?,
  groupAdminOnUsers: json['groupAdminOnUsers'] as bool?,
  groupWriteRelatedFamilies: json['groupWriteRelatedFamilies'] as bool?,
  user: json['user'] == null
      ? null
      : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
);

Map<String, dynamic> _$AdminOnDataToJson(AdminOnData instance) =>
    <String, dynamic>{
      'permissionId': instance.permissionId,
      'area': instance.area?.toJson(),
      'areaAllowExport': instance.areaAllowExport,
      'areaAllowEdit': instance.areaAllowEdit,
      'areaAdminOnUsers': instance.areaAdminOnUsers,
      'service': instance.service?.toJson(),
      'serviceStudyYearData': instance.serviceStudyYearData?.toJson(),
      'serviceGender': instance.serviceGender,
      'serviceAllowExport': instance.serviceAllowExport,
      'serviceAllowEdit': instance.serviceAllowEdit,
      'serviceAdminOnUsers': instance.serviceAdminOnUsers,
      'serviceWriteRelatedFamilies': instance.serviceWriteRelatedFamilies,
      'classes': instance.classes.map((e) => e.toJson()).toList(),
      'group': instance.group?.toJson(),
      'groupAllowExport': instance.groupAllowExport,
      'groupAllowEdit': instance.groupAllowEdit,
      'groupAdminOnUsers': instance.groupAdminOnUsers,
      'groupWriteRelatedFamilies': instance.groupWriteRelatedFamilies,
      'user': instance.user?.toJson(),
    };
