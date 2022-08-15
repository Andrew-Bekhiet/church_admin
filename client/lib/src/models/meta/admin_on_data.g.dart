// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_on_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminOnData _$$_AdminOnDataFromJson(Map<String, dynamic> json) =>
    _$_AdminOnData(
      permissionId: json['permissionId'] as String,
      area: json['area'] == null
          ? null
          : Area.fromJson(json['area'] as Map<String, dynamic>),
      areaAllowEdit: json['areaAllowEdit'] as bool?,
      areaAdminOnUsers: json['areaAdminOnUsers'] as bool?,
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      serviceStudyYearData: json['serviceStudyYearData'] == null
          ? null
          : StudyYear.fromJson(
              json['serviceStudyYearData'] as Map<String, dynamic>),
      serviceGender: json['serviceGender'] as bool?,
      serviceAllowEdit: json['serviceAllowEdit'] as bool?,
      serviceAdminOnUsers: json['serviceAdminOnUsers'] as bool?,
      classes: (json['classes'] as List<dynamic>?)
              ?.map((e) => Class.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      groupAllowEdit: json['groupAllowEdit'] as bool?,
      groupAdminOnUsers: json['groupAdminOnUsers'] as bool?,
    );

Map<String, dynamic> _$$_AdminOnDataToJson(_$_AdminOnData instance) =>
    <String, dynamic>{
      'permissionId': instance.permissionId,
      'area': instance.area?.toJson(),
      'areaAllowEdit': instance.areaAllowEdit,
      'areaAdminOnUsers': instance.areaAdminOnUsers,
      'service': instance.service?.toJson(),
      'serviceStudyYearData': instance.serviceStudyYearData?.toJson(),
      'serviceGender': instance.serviceGender,
      'serviceAllowEdit': instance.serviceAllowEdit,
      'serviceAdminOnUsers': instance.serviceAdminOnUsers,
      'classes': instance.classes.map((e) => e.toJson()).toList(),
      'group': instance.group?.toJson(),
      'groupAllowEdit': instance.groupAllowEdit,
      'groupAdminOnUsers': instance.groupAdminOnUsers,
    };
