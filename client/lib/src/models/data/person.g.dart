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
      schoolID: json['schoolID'] as String?,
      collegeID: json['collegeID'] as String?,
      churchID: json['churchID'] as String?,
      fatherID: json['fatherID'] as String?,
      isStudent: json['isStudent'] as bool? ?? false,
      jobID: json['jobID'] as String?,
      jobDescription: json['jobDescription'] as String?,
      qualificationID: json['qualificationID'] as String?,
      personTypeID: json['personTypeID'] as String?,
      stateID: json['stateID'] as String?,
      isServant: json['isServant'] as bool? ?? false,
      notes: json['notes'] as String?,
      uid: json['uid'] as String?,
      familyID: json['familyID'] as String?,
      storeID: json['storeID'] as String?,
      studyYearID: json['studyYearID'] as int?,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      lastConfession: json['lastConfession'] == null
          ? null
          : DateTime.parse(json['lastConfession'] as String),
      lastKodas: json['lastKodas'] == null
          ? null
          : DateTime.parse(json['lastKodas'] as String),
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
      'schoolID': instance.schoolID,
      'collegeID': instance.collegeID,
      'churchID': instance.churchID,
      'fatherID': instance.fatherID,
      'isStudent': instance.isStudent,
      'jobID': instance.jobID,
      'jobDescription': instance.jobDescription,
      'qualificationID': instance.qualificationID,
      'personTypeID': instance.personTypeID,
      'stateID': instance.stateID,
      'isServant': instance.isServant,
      'notes': instance.notes,
      'uid': instance.uid,
      'familyID': instance.familyID,
      'storeID': instance.storeID,
      'studyYearID': instance.studyYearID,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'lastConfession': instance.lastConfession?.toIso8601String(),
      'lastKodas': instance.lastKodas?.toIso8601String(),
    };
