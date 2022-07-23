// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      geolocation: pointFromJson(json['geolocation']),
      mainPhone: json['mainPhone'] as String?,
      otherPhones: json['otherPhones'] as Map<String, dynamic>? ?? const {},
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      gender: json['gender'] as bool? ?? true,
      isShammas: json['isShammas'] as bool? ?? false,
      shammasLevel: json['shammasLevel'] as String?,
      schoolId: json['schoolId'] as String?,
      collegeId: json['collegeId'] as String?,
      churchId: json['churchId'] as String?,
      fatherId: json['fatherId'] as String?,
      isStudent: json['isStudent'] as bool? ?? false,
      jobId: json['jobId'] as String?,
      jobDescription: json['jobDescription'] as String?,
      qualificationId: json['qualificationId'] as String?,
      personTypeId: json['personTypeId'] as String?,
      stateId: json['stateId'] as String?,
      isServant: json['isServant'] as bool? ?? false,
      notes: json['notes'] as String?,
      uid: json['uid'] as String?,
      familyId: json['familyId'] as String?,
      storeId: json['storeId'] as String?,
      studyYearId: json['studyYearId'] as int?,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      lastConfession: lastEditFromJson(json['lastConfession']),
      lastKodas: lastEditFromJson(json['lastKodas']),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'geolocation': pointToJson(instance.geolocation),
      'mainPhone': instance.mainPhone,
      'otherPhones': instance.otherPhones,
      'birthdate': instance.birthdate?.toIso8601String(),
      'gender': instance.gender,
      'isShammas': instance.isShammas,
      'shammasLevel': instance.shammasLevel,
      'schoolId': instance.schoolId,
      'collegeId': instance.collegeId,
      'churchId': instance.churchId,
      'fatherId': instance.fatherId,
      'isStudent': instance.isStudent,
      'jobId': instance.jobId,
      'jobDescription': instance.jobDescription,
      'qualificationId': instance.qualificationId,
      'personTypeId': instance.personTypeId,
      'stateId': instance.stateId,
      'isServant': instance.isServant,
      'notes': instance.notes,
      'uid': instance.uid,
      'familyId': instance.familyId,
      'storeId': instance.storeId,
      'studyYearId': instance.studyYearId,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'lastConfession': lastEditToJson(instance.lastConfession),
      'lastKodas': lastEditToJson(instance.lastKodas),
    };
