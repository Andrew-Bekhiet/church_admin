// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _PersonFields {
  _PersonFields();

  final FieldMetadata<Person> id = FieldMetadata<Person>(
    parentType: Person,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: Person,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Address> address = FieldMetadata<Address>(
    parentType: Person,
    name: 'address',
    label: 'العنوان',
    isCodeOnly: false,
  );

  final FieldMetadata<String> mainPhone = FieldMetadata<String>(
    parentType: Person,
    name: 'mainPhone',
    label: 'رقم الهاتف',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<DateTime> birthdate = FieldMetadata<DateTime>(
    parentType: Person,
    name: 'birthdate',
    label: 'تاريخ الميلاد',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<String> birthday = FieldMetadata<String>(
    parentType: Person,
    name: 'birthday',
    label: 'يوم وشهر الميلاد',
    isCodeOnly: false,
    operators: {
      ...BirthdayOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<bool> gender = FieldMetadata<bool>(
    parentType: Person,
    name: 'gender',
    label: 'النوع',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<bool> isShammas = FieldMetadata<bool>(
    parentType: Person,
    name: 'isShammas',
    label: 'شماس؟',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<ShammasLevel> shammasLevel = FieldMetadata<ShammasLevel>(
    parentType: Person,
    name: 'shammasLevel',
    label: 'رتبة الشموسية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<School> school = FieldMetadata<School>(
    parentType: Person,
    name: 'school',
    label: 'المدرسة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<College> college = FieldMetadata<College>(
    parentType: Person,
    name: 'college',
    label: 'الكلية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Church> church = FieldMetadata<Church>(
    parentType: Person,
    name: 'church',
    label: 'الكنيسة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Father> father = FieldMetadata<Father>(
    parentType: Person,
    name: 'father',
    label: 'اب الاعتراف',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<bool> isStudent = FieldMetadata<bool>(
    parentType: Person,
    name: 'isStudent',
    label: 'طالب؟',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<Job> job = FieldMetadata<Job>(
    parentType: Person,
    name: 'job',
    label: 'الوظيفة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<String> jobDescription = FieldMetadata<String>(
    parentType: Person,
    name: 'jobDescription',
    label: 'تفاصيل الوظيفة',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Qualification> qualification =
      FieldMetadata<Qualification>(
    parentType: Person,
    name: 'qualification',
    label: 'المؤهل',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<PersonType> personType = FieldMetadata<PersonType>(
    parentType: Person,
    name: 'personType',
    label: 'نوع الفرد في العائلة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<PersonState> state = FieldMetadata<PersonState>(
    parentType: Person,
    name: 'state',
    label: 'الحالة الروحية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<bool> isServant = FieldMetadata<bool>(
    parentType: Person,
    name: 'isServant',
    label: 'خادم؟',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<String> notes = FieldMetadata<String>(
    parentType: Person,
    name: 'notes',
    label: 'ملاحظات',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Family> family = FieldMetadata<Family>(
    parentType: Person,
    name: 'family',
    label: 'العائلة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Store> store = FieldMetadata<Store>(
    parentType: Person,
    name: 'store',
    label: 'المتجر',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<StudyYear> studyYear = FieldMetadata<StudyYear>(
    parentType: Person,
    name: 'studyYear',
    label: 'السنة الدراسية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    parentType: Person,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    parentType: Person,
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastConfession =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'lastConfession',
    label: 'أخر اعتراف',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastKodas =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'lastKodas',
    label: 'أخر تناول',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastAttendance =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'lastAttendance',
    label: 'أخر حضور',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastCall =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'lastCall',
    label: 'أخر مكالمات',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastVisit =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'lastVisit',
    label: 'أخر افتقاد',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<ClassesPersons> classesRel =
      FieldMetadata<ClassesPersons>(
    parentType: Person,
    name: 'classes',
    label: 'classes',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Class> classes = classesRel.redirectTo(
    ClassesPersonsFields().class$,
    isExpandable: false,
  );

  final FieldMetadata<PersonsGroups> groupsRel = FieldMetadata<PersonsGroups>(
    parentType: Person,
    name: 'groups',
    label: 'groups',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Group> groups = groupsRel.redirectTo(
    PersonsGroupsFields().group,
    isExpandable: false,
  );

  final FieldMetadata<PersonsServices> servicesRel =
      FieldMetadata<PersonsServices>(
    parentType: Person,
    name: 'services',
    label: 'services',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Service> services = servicesRel.redirectTo(
    PersonsServicesFields().service,
    isExpandable: false,
  );

  final FieldMetadata<PersonsTags> tagsRel = FieldMetadata<PersonsTags>(
    parentType: Person,
    name: 'tags',
    label: 'tags',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Tag> tags = tagsRel.redirectTo(
    PersonsTagsFields().tag,
    isExpandable: false,
  );

  final FieldMetadata<PersonsHobbies> hobbiesRel =
      FieldMetadata<PersonsHobbies>(
    parentType: Person,
    name: 'hobbies',
    label: 'hobbies',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Hobby> hobbies = hobbiesRel.redirectTo(
    PersonsHobbiesFields().hobby,
    isExpandable: false,
  );

  final FieldMetadata<User> user = FieldMetadata<User>(
    parentType: Person,
    name: 'user',
    label: 'بيانات الخادم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> kodasHistory =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'kodasHistory',
    label: 'سجل التناول',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> attendanceHistory =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'attendanceHistory',
    label: 'سجل الحضور',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> confessionHistory =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'confessionHistory',
    label: 'سجل الاعتراف',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> callHistory =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'callHistory',
    label: 'سجل المكالمات',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> visitHistory =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'visitHistory',
    label: 'سجل الافتقاد',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<LastRecordedByInfo> editHistory =
      FieldMetadata<LastRecordedByInfo>(
    parentType: Person,
    name: 'editHistory',
    label: 'سجل تحديث البيانات',
    isCodeOnly: false,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<AggregateData> kodasHistoryAggregate =
      FieldMetadata<AggregateData>(
    parentType: Person,
    name: 'kodasHistoryAggregate',
    label: 'kodasHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<AggregateData> attendanceHistoryAggregate =
      FieldMetadata<AggregateData>(
    parentType: Person,
    name: 'attendanceHistoryAggregate',
    label: 'attendanceHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<AggregateData> confessionHistoryAggregate =
      FieldMetadata<AggregateData>(
    parentType: Person,
    name: 'confessionHistoryAggregate',
    label: 'confessionHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<AggregateData> callHistoryAggregate =
      FieldMetadata<AggregateData>(
    parentType: Person,
    name: 'callHistoryAggregate',
    label: 'callHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<AggregateData> visitHistoryAggregate =
      FieldMetadata<AggregateData>(
    parentType: Person,
    name: 'visitHistoryAggregate',
    label: 'visitHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<AggregateData> editHistoryAggregate =
      FieldMetadata<AggregateData>(
    parentType: Person,
    name: 'editHistoryAggregate',
    label: 'editHistoryAggregate',
    isCodeOnly: true,
  );

  final FieldMetadata<Point> geolocation = FieldMetadata<Point>(
    parentType: Person,
    name: 'geolocation',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    address,
    mainPhone,
    birthdate,
    birthday,
    gender,
    isShammas,
    shammasLevel,
    school,
    college,
    church,
    father,
    isStudent,
    job,
    jobDescription,
    qualification,
    personType,
    state,
    isServant,
    notes,
    family,
    store,
    studyYear,
    color,
    photoUpdatedAt,
    lastConfession,
    lastKodas,
    lastAttendance,
    lastCall,
    lastVisit,
    lastEdit,
    classes,
    groups,
    services,
    tags,
    hobbies,
    user,
    kodasHistory,
    attendanceHistory,
    confessionHistory,
    callHistory,
    visitHistory,
    editHistory,
    kodasHistoryAggregate,
    attendanceHistoryAggregate,
    confessionHistoryAggregate,
    callHistoryAggregate,
    visitHistoryAggregate,
    editHistoryAggregate,
    geolocation
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'address': address,
    'mainPhone': mainPhone,
    'birthdate': birthdate,
    'birthday': birthday,
    'gender': gender,
    'isShammas': isShammas,
    'shammasLevel': shammasLevel,
    'school': school,
    'college': college,
    'church': church,
    'father': father,
    'isStudent': isStudent,
    'job': job,
    'jobDescription': jobDescription,
    'qualification': qualification,
    'personType': personType,
    'state': state,
    'isServant': isServant,
    'notes': notes,
    'family': family,
    'store': store,
    'studyYear': studyYear,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'lastConfession': lastConfession,
    'lastKodas': lastKodas,
    'lastAttendance': lastAttendance,
    'lastCall': lastCall,
    'lastVisit': lastVisit,
    'lastEdit': lastEdit,
    'classes': classes,
    'groups': groups,
    'services': services,
    'tags': tags,
    'hobbies': hobbies,
    'user': user,
    'kodasHistory': kodasHistory,
    'attendanceHistory': attendanceHistory,
    'confessionHistory': confessionHistory,
    'callHistory': callHistory,
    'visitHistory': visitHistory,
    'editHistory': editHistory,
    'kodasHistoryAggregate': kodasHistoryAggregate,
    'attendanceHistoryAggregate': attendanceHistoryAggregate,
    'confessionHistoryAggregate': confessionHistoryAggregate,
    'callHistoryAggregate': callHistoryAggregate,
    'visitHistoryAggregate': visitHistoryAggregate,
    'editHistoryAggregate': editHistoryAggregate,
    'geolocation': geolocation
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map json) => Person(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      nationalId: (json['nationalId'] as num?)?.toInt(),
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
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
      lastAttendance: json['lastAttendance'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastAttendance'] as Map)),
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
      classes: personsClassesFromJson(json['classes'] as List?),
      groups: personsGroupsFromJson(json['groups'] as List?),
      services: personsServicesFromJson(json['services'] as List?),
      tags: personsTagsFromJson(json['tags'] as List?),
      hobbies: personsHobbiesFromJson(json['hobbies'] as List?),
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
      kodasHistory: (json['kodasHistory'] as List<dynamic>?)
          ?.map((e) =>
              LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      attendanceHistory: (json['attendanceHistory'] as List<dynamic>?)
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
      attendanceHistoryAggregate: json['attendanceHistoryAggregate'] == null
          ? null
          : HistoryAggregateData.fromJson(Map<String, dynamic>.from(
              json['attendanceHistoryAggregate'] as Map)),
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

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'id': instance.id,
      'nationalId': instance.nationalId,
      'name': instance.name,
      'address': instance.address?.toJson(),
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
      'lastAttendance': instance.lastAttendance?.toJson(),
      'lastCall': instance.lastCall?.toJson(),
      'lastVisit': instance.lastVisit?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'classes': personsClassesToJson(instance.classes),
      'groups': personsGroupsToJson(instance.groups),
      'services': personsServicesToJson(instance.services),
      'tags': personsTagsToJson(instance.tags),
      'hobbies': personsHobbiesToJson(instance.hobbies),
      'user': instance.user?.toJson(),
      'kodasHistory': instance.kodasHistory?.map((e) => e.toJson()).toList(),
      'attendanceHistory':
          instance.attendanceHistory?.map((e) => e.toJson()).toList(),
      'confessionHistory':
          instance.confessionHistory?.map((e) => e.toJson()).toList(),
      'callHistory': instance.callHistory?.map((e) => e.toJson()).toList(),
      'visitHistory': instance.visitHistory?.map((e) => e.toJson()).toList(),
      'editHistory': instance.editHistory?.map((e) => e.toJson()).toList(),
      'kodasHistoryAggregate': instance.kodasHistoryAggregate?.toJson(),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate?.toJson(),
      'confessionHistoryAggregate':
          instance.confessionHistoryAggregate?.toJson(),
      'callHistoryAggregate': instance.callHistoryAggregate?.toJson(),
      'visitHistoryAggregate': instance.visitHistoryAggregate?.toJson(),
      'editHistoryAggregate': instance.editHistoryAggregate?.toJson(),
    };
