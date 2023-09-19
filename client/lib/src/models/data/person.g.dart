// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map json) => _$_Person(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      geolocation: pointFromJson(json['geolocation']),
      mainPhone: json['mainPhone'] as String?,
      otherPhones: (json['otherPhones'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      gender: json['gender'] as bool? ?? true,
      isShammas: json['isShammas'] as bool? ?? false,
      shammasLevelId: json['shammasLevelId'] as String?,
      shammasLevel: json['shammasLevel'] == null
          ? null
          : ShammasLevel.fromJson(
              Map<String, Object?>.from(json['shammasLevel'] as Map)),
      school: json['school'] == null
          ? null
          : School.fromJson(Map<String, Object?>.from(json['school'] as Map)),
      schoolId: json['schoolId'] as String?,
      college: json['college'] == null
          ? null
          : College.fromJson(Map<String, Object?>.from(json['college'] as Map)),
      collegeId: json['collegeId'] as String?,
      church: json['church'] == null
          ? null
          : Church.fromJson(Map<String, Object?>.from(json['church'] as Map)),
      churchId: json['churchId'] as String?,
      father: json['father'] == null
          ? null
          : Father.fromJson(Map<String, Object?>.from(json['father'] as Map)),
      fatherId: json['fatherId'] as String?,
      isStudent: json['isStudent'] as bool? ?? false,
      job: json['job'] == null
          ? null
          : Job.fromJson(Map<String, Object?>.from(json['job'] as Map)),
      jobId: json['jobId'] as String?,
      jobDescription: json['jobDescription'] as String?,
      qualification: json['qualification'] == null
          ? null
          : Qualification.fromJson(
              Map<String, Object?>.from(json['qualification'] as Map)),
      qualificationId: json['qualificationId'] as String?,
      personType: json['personType'] == null
          ? null
          : PersonType.fromJson(
              Map<String, Object?>.from(json['personType'] as Map)),
      personTypeId: json['personTypeId'] as String?,
      state: json['state'] == null
          ? null
          : PersonState.fromJson(
              Map<String, Object?>.from(json['state'] as Map)),
      stateId: json['stateId'] as String?,
      isServant: json['isServant'] as bool? ?? false,
      notes: json['notes'] as String?,
      family: json['family'] == null
          ? null
          : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
      familyId: json['familyId'] as String?,
      storeId: json['storeId'] as String?,
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYear'] as Map)),
      studyYearId: json['studyYearId'] as int?,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      lastConfession: json['lastConfession'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastConfession'] as Map)),
      lastKodas: json['lastKodas'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastKodas'] as Map)),
      lastCall: json['lastCall'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastCall'] as Map)),
      lastVisit: json['lastVisit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastVisit'] as Map)),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      groups: personsGroupsFromJson(json['groups'] as List?),
      services: personsServicesFromJson(json['services'] as List?),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      streets: (json['streets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      tags: personsTagsFromJson(json['tags'] as List?),
      hobbies: personsHobbiesFromJson(json['hobbies'] as List?),
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
      kodasHistoryAggregate: analysisDataFromJson(
          json['kodasHistoryAggregate'] as Map<String, dynamic>?),
      confessionHistoryAggregate: analysisDataFromJson(
          json['confessionHistoryAggregate'] as Map<String, dynamic>?),
      callHistoryAggregate: analysisDataFromJson(
          json['callHistoryAggregate'] as Map<String, dynamic>?),
      visitHistoryAggregate: analysisDataFromJson(
          json['visitHistoryAggregate'] as Map<String, dynamic>?),
      editHistoryAggregate: analysisDataFromJson(
          json['editHistoryAggregate'] as Map<String, dynamic>?),
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
      'blurhash': instance.blurhash,
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
      'hobbies': personsHobbiesToJson(instance.hobbies),
      'user': instance.user?.toJson(),
      'kodasHistoryAggregate':
          analysisDataToJson(instance.kodasHistoryAggregate),
      'confessionHistoryAggregate':
          analysisDataToJson(instance.confessionHistoryAggregate),
      'callHistoryAggregate': analysisDataToJson(instance.callHistoryAggregate),
      'visitHistoryAggregate':
          analysisDataToJson(instance.visitHistoryAggregate),
      'editHistoryAggregate': analysisDataToJson(instance.editHistoryAggregate),
    };
