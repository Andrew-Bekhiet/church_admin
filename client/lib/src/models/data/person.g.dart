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
      shammasLevelId: json['shammasLevelId'] as String?,
      shammasLevel: json['shammasLevel'] == null
          ? null
          : ShammasLevel.fromJson(json['shammasLevel'] as Map<String, dynamic>),
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
      schoolId: json['schoolId'] as String?,
      college: json['college'] == null
          ? null
          : College.fromJson(json['college'] as Map<String, dynamic>),
      collegeId: json['collegeId'] as String?,
      church: json['church'] == null
          ? null
          : Church.fromJson(json['church'] as Map<String, dynamic>),
      churchId: json['churchId'] as String?,
      father: json['father'] == null
          ? null
          : Father.fromJson(json['father'] as Map<String, dynamic>),
      fatherId: json['fatherId'] as String?,
      isStudent: json['isStudent'] as bool? ?? false,
      job: json['job'] == null
          ? null
          : Job.fromJson(json['job'] as Map<String, dynamic>),
      jobId: json['jobId'] as String?,
      jobDescription: json['jobDescription'] as String?,
      qualification: json['qualification'] == null
          ? null
          : Qualification.fromJson(
              json['qualification'] as Map<String, dynamic>),
      qualificationId: json['qualificationId'] as String?,
      personType: json['personType'] == null
          ? null
          : PersonType.fromJson(json['personType'] as Map<String, dynamic>),
      personTypeId: json['personTypeId'] as String?,
      state: json['state'] == null
          ? null
          : PersonState.fromJson(json['state'] as Map<String, dynamic>),
      stateId: json['stateId'] as String?,
      isServant: json['isServant'] as bool? ?? false,
      notes: json['notes'] as String?,
      family: json['family'] == null
          ? null
          : Family.fromJson(json['family'] as Map<String, dynamic>),
      familyId: json['familyId'] as String?,
      storeId: json['storeId'] as String?,
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(json['studyYear'] as Map<String, dynamic>),
      studyYearId: json['studyYearId'] as int?,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      lastConfession: json['lastConfession'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              json['lastConfession'] as Map<String, dynamic>),
      lastKodas: json['lastKodas'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              json['lastKodas'] as Map<String, dynamic>),
      lastCall: json['lastCall'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              json['lastCall'] as Map<String, dynamic>),
      lastVisit: json['lastVisit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              json['lastVisit'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: personsGroupsFromJson(json['groups'] as List?),
      services: personsServicesFromJson(json['services'] as List?),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(e as Map<String, dynamic>))
          .toList(),
      streets: (json['streets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: personsTagsFromJson(json['tags'] as List?),
      uid: json['uid'] as String?,
      kodasHistoryAggregate: analysisDataFromJson(
          json['kodasHistory_aggregate'] as Map<String, dynamic>?),
      confessionHistoryAggregate: analysisDataFromJson(
          json['confessionHistory_aggregate'] as Map<String, dynamic>?),
      callHistoryAggregate: analysisDataFromJson(
          json['callHistory_aggregate'] as Map<String, dynamic>?),
      visitHistoryAggregate: analysisDataFromJson(
          json['visitHistory_aggregate'] as Map<String, dynamic>?),
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
      'shammasLevelId': instance.shammasLevelId,
      'shammasLevel': instance.shammasLevel?.toJson(),
      'school': instance.school?.toJson(),
      'schoolId': instance.schoolId,
      'college': instance.college?.toJson(),
      'collegeId': instance.collegeId,
      'church': instance.church?.toJson(),
      'churchId': instance.churchId,
      'father': instance.father?.toJson(),
      'fatherId': instance.fatherId,
      'isStudent': instance.isStudent,
      'job': instance.job?.toJson(),
      'jobId': instance.jobId,
      'jobDescription': instance.jobDescription,
      'qualification': instance.qualification?.toJson(),
      'qualificationId': instance.qualificationId,
      'personType': instance.personType?.toJson(),
      'personTypeId': instance.personTypeId,
      'state': instance.state?.toJson(),
      'stateId': instance.stateId,
      'isServant': instance.isServant,
      'notes': instance.notes,
      'family': instance.family?.toJson(),
      'familyId': instance.familyId,
      'storeId': instance.storeId,
      'studyYear': instance.studyYear?.toJson(),
      'studyYearId': instance.studyYearId,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'lastConfession': instance.lastConfession?.toJson(),
      'lastKodas': instance.lastKodas?.toJson(),
      'lastCall': instance.lastCall?.toJson(),
      'lastVisit': instance.lastVisit?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': personsGroupsToJson(instance.groups),
      'services': personsServicesToJson(instance.services),
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'streets': instance.streets?.map((e) => e.toJson()).toList(),
      'tags': personsTagsToJson(instance.tags),
      'uid': instance.uid,
      'kodasHistory_aggregate':
          analysisDataToJson(instance.kodasHistoryAggregate),
      'confessionHistory_aggregate':
          analysisDataToJson(instance.confessionHistoryAggregate),
      'callHistory_aggregate':
          analysisDataToJson(instance.callHistoryAggregate),
      'visitHistory_aggregate':
          analysisDataToJson(instance.visitHistoryAggregate),
    };
