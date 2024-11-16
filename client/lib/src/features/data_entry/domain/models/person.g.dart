// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$PersonFields = <String, FieldMetadata>{
  'id': FieldMetadata<Person>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'address': FieldMetadata<String>(
    name: 'address',
    label: 'العنوان',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'geolocation': FieldMetadata<Point>(
    name: 'geolocation',
    label: 'الموقع',
    operators: Operator.spatial,
  ),
  'mainPhone': FieldMetadata<String>(
    name: 'mainPhone',
    label: 'رقم الهاتف',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'birthdate': FieldMetadata<DateTime>(
    name: 'birthdate',
    label: 'تاريخ الميلاد',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'birthday': FieldMetadata<String>(
    name: 'birthday',
    label: 'يوم وشهر الميلاد',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'gender': FieldMetadata<bool>(
    name: 'gender',
    label: 'النوع',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'isShammas': FieldMetadata<bool>(
    name: 'isShammas',
    label: 'شماس؟',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'shammasLevel': FieldMetadata<ShammasLevel>(
    name: 'shammasLevel',
    label: 'رتبة الشموسية',
  ),
  'school': FieldMetadata<School>(
    name: 'school',
    label: 'المدرسة',
  ),
  'college': FieldMetadata<College>(
    name: 'college',
    label: 'الكلية',
  ),
  'church': FieldMetadata<Church>(
    name: 'church',
    label: 'الكنيسة',
  ),
  'father': FieldMetadata<Father>(
    name: 'father',
    label: 'اب الاعتراف',
  ),
  'isStudent': FieldMetadata<bool>(
    name: 'isStudent',
    label: 'طالب؟',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'job': FieldMetadata<Job>(
    name: 'job',
    label: 'الوظيفة',
  ),
  'jobDescription': FieldMetadata<String>(
    name: 'jobDescription',
    label: 'تفاصيل الوظيفة',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'qualification': FieldMetadata<Qualification>(
    name: 'qualification',
    label: 'المؤهل',
  ),
  'personType': FieldMetadata<PersonType>(
    name: 'personType',
    label: 'الحالة الاجتماعية',
  ),
  'state': FieldMetadata<PersonState>(
    name: 'state',
    label: 'الحالة الروحية',
  ),
  'isServant': FieldMetadata<bool>(
    name: 'isServant',
    label: 'خادم؟',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'notes': FieldMetadata<String>(
    name: 'notes',
    label: 'ملاحظات',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'family': FieldMetadata<Family>(
    name: 'family',
    label: 'العائلة',
  ),
  'store': FieldMetadata<Store>(
    name: 'store',
    label: 'المتجر',
  ),
  'studyYear': FieldMetadata<StudyYear>(
    name: 'studyYear',
    label: 'السنة الدراسية',
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
  'lastConfession': FieldMetadata<LastRecordedByInfo>(
    name: 'lastConfession',
    label: 'أخر اعتراف',
  ),
  'lastKodas': FieldMetadata<LastRecordedByInfo>(
    name: 'lastKodas',
    label: 'أخر تناول',
  ),
  'lastCall': FieldMetadata<LastRecordedByInfo>(
    name: 'lastCall',
    label: 'أخر مكالمات',
  ),
  'lastVisit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastVisit',
    label: 'أخر افتقاد',
  ),
  'lastEdit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
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
  'services': FieldMetadata<Service>(
    name: 'services',
    label: 'الخدمات',
    isOrderable: false,
  ),
  'areas': FieldMetadata<Area>(
    name: 'areas',
    label: 'المناطق',
    isOrderable: false,
  ),
  'streets': FieldMetadata<Street>(
    name: 'streets',
    label: 'الشوارع',
    isOrderable: false,
  ),
  'tags': FieldMetadata<Tag>(
    name: 'tags',
    label: 'الشارات',
    isOrderable: false,
  ),
  'hobbies': FieldMetadata<Hobby>(
    name: 'hobbies',
    label: 'الهوايات',
    isOrderable: false,
  ),
  'user': FieldMetadata<User>(
    name: 'user',
    label: 'بيانات الخادم',
  ),
  'kodasHistory': FieldMetadata<LastRecordedByInfo>(
    name: 'kodasHistory',
    label: 'سجل التناول',
    isOrderable: false,
  ),
  'confessionHistory': FieldMetadata<LastRecordedByInfo>(
    name: 'confessionHistory',
    label: 'سجل الاعتراف',
    isOrderable: false,
  ),
  'callHistory': FieldMetadata<LastRecordedByInfo>(
    name: 'callHistory',
    label: 'سجل المكالمات',
    isOrderable: false,
  ),
  'visitHistory': FieldMetadata<LastRecordedByInfo>(
    name: 'visitHistory',
    label: 'سجل الافتقاد',
    isOrderable: false,
  ),
  'editHistory': FieldMetadata<LastRecordedByInfo>(
    name: 'editHistory',
    label: 'سجل تحديث البيانات',
    isOrderable: false,
  ),
  'kodasHistoryAggregate': FieldMetadata<AggregateData>(
    name: 'kodasHistoryAggregate',
    label: 'إحصائيات سجل التناول',
  ),
  'confessionHistoryAggregate': FieldMetadata<AggregateData>(
    name: 'confessionHistoryAggregate',
    label: 'إحصائيات سجل الاعتراف',
  ),
  'callHistoryAggregate': FieldMetadata<AggregateData>(
    name: 'callHistoryAggregate',
    label: 'إحصائيات سجل المكالمات',
  ),
  'visitHistoryAggregate': FieldMetadata<AggregateData>(
    name: 'visitHistoryAggregate',
    label: 'إحصائيات سجل الافتقاد',
  ),
  'editHistoryAggregate': FieldMetadata<AggregateData>(
    name: 'editHistoryAggregate',
    label: 'إحصائيات سجل تحديث البيانات',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map json) => _$PersonImpl(
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
      birthday: json['birthday'] as String?,
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
      store: json['store'] == null
          ? null
          : Store.fromJson(Map<String, Object?>.from(json['store'] as Map)),
      storeId: json['storeId'] as String?,
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYear'] as Map)),
      studyYearId: (json['studyYearId'] as num?)?.toInt(),
      color: colorFromInt((json['color'] as num?)?.toInt()),
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
      kodasHistory: (json['kodasHistory'] as List<dynamic>?)
          ?.map((e) =>
              LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      confessionHistory: (json['confessionHistory'] as List<dynamic>?)
          ?.map((e) =>
              LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      callHistory: (json['callHistory'] as List<dynamic>?)
          ?.map((e) =>
              LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      visitHistory: (json['visitHistory'] as List<dynamic>?)
          ?.map((e) =>
              LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      editHistory: (json['editHistory'] as List<dynamic>?)
          ?.map((e) =>
              LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      kodasHistoryAggregate: json['kodasHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(
              Map<String, dynamic>.from(json['kodasHistoryAggregate'] as Map)),
      confessionHistoryAggregate: json['confessionHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(Map<String, dynamic>.from(
              json['confessionHistoryAggregate'] as Map)),
      callHistoryAggregate: json['callHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(
              Map<String, dynamic>.from(json['callHistoryAggregate'] as Map)),
      visitHistoryAggregate: json['visitHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(
              Map<String, dynamic>.from(json['visitHistoryAggregate'] as Map)),
      editHistoryAggregate: json['editHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(
              Map<String, dynamic>.from(json['editHistoryAggregate'] as Map)),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'geolocation': pointToJson(instance.geolocation),
      'mainPhone': instance.mainPhone,
      'otherPhones': instance.otherPhones,
      'birthdate': instance.birthdate?.toIso8601String(),
      'birthday': instance.birthday,
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
      'store': instance.store?.toJson(),
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
      'kodasHistory': instance.kodasHistory?.map((e) => e.toJson()).toList(),
      'confessionHistory':
          instance.confessionHistory?.map((e) => e.toJson()).toList(),
      'callHistory': instance.callHistory?.map((e) => e.toJson()).toList(),
      'visitHistory': instance.visitHistory?.map((e) => e.toJson()).toList(),
      'editHistory': instance.editHistory?.map((e) => e.toJson()).toList(),
      'kodasHistoryAggregate': instance.kodasHistoryAggregate?.toJson(),
      'confessionHistoryAggregate':
          instance.confessionHistoryAggregate?.toJson(),
      'callHistoryAggregate': instance.callHistoryAggregate?.toJson(),
      'visitHistoryAggregate': instance.visitHistoryAggregate?.toJson(),
      'editHistoryAggregate': instance.editHistoryAggregate?.toJson(),
    };
