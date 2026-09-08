// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'person.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _PersonFields {
  final FieldMetadata<Person> id = FieldMetadata<Person>(
    getValue: (obj) => obj is Person ? obj.id : null,
    parentType: Person,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Person ? obj.name : null,
    parentType: Person,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Address> address = FieldMetadata<Address>(
    getValue: (obj) => obj is Person ? obj.address : null,
    parentType: Person,
    name: 'address',
    label: 'تفاصيل العنوان',
    isCodeOnly: false,
  );

  final FieldMetadata<String> mainPhone = FieldMetadata<String>(
    getValue: (obj) => obj is Person ? obj.mainPhone : null,
    parentType: Person,
    name: 'mainPhone',
    label: 'رقم الهاتف',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<DateTime> birthdate = FieldMetadata<DateTime>(
    getValue: (obj) => obj is Person ? obj.birthdate : null,
    parentType: Person,
    name: 'birthdate',
    label: 'تاريخ الميلاد',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> birthday = FieldMetadata<String>(
    getValue: (obj) => obj is Person ? obj.birthday : null,
    parentType: Person,
    name: 'birthday',
    label: 'يوم وشهر الميلاد',
    isCodeOnly: false,
    operators: {
      ...BirthdayOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> gender = FieldMetadata<bool>(
    getValue: (obj) => obj is Person ? obj.gender : null,
    parentType: Person,
    name: 'gender',
    label: 'النوع',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<bool> isShammas = FieldMetadata<bool>(
    getValue: (obj) => obj is Person ? obj.isShammas : null,
    parentType: Person,
    name: 'isShammas',
    label: 'شماس؟',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<ShammasLevel> shammasLevel = FieldMetadata<ShammasLevel>(
    getValue: (obj) => obj is Person ? obj.shammasLevel : null,
    parentType: Person,
    name: 'shammasLevel',
    label: 'رتبة الشموسية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<School> school = FieldMetadata<School>(
    getValue: (obj) => obj is Person ? obj.school : null,
    parentType: Person,
    name: 'school',
    label: 'المدرسة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<College> college = FieldMetadata<College>(
    getValue: (obj) => obj is Person ? obj.college : null,
    parentType: Person,
    name: 'college',
    label: 'الكلية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Church> church = FieldMetadata<Church>(
    getValue: (obj) => obj is Person ? obj.church : null,
    parentType: Person,
    name: 'church',
    label: 'الكنيسة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Father> father = FieldMetadata<Father>(
    getValue: (obj) => obj is Person ? obj.father : null,
    parentType: Person,
    name: 'father',
    label: 'اب الاعتراف',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<WorkStatus> workStatus = FieldMetadata<WorkStatus>(
    getValue: (obj) => obj is Person ? obj.workStatus : null,
    parentType: Person,
    name: 'workStatus',
    label: 'حالة العمل',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Job> job = FieldMetadata<Job>(
    getValue: (obj) => obj is Person ? obj.job : null,
    parentType: Person,
    name: 'job',
    label: 'الوظيفة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> jobDescription = FieldMetadata<String>(
    getValue: (obj) => obj is Person ? obj.jobDescription : null,
    parentType: Person,
    name: 'jobDescription',
    label: 'تفاصيل الوظيفة',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Qualification> qualification =
      FieldMetadata<Qualification>(
        getValue: (obj) => obj is Person ? obj.qualification : null,
        parentType: Person,
        name: 'qualification',
        label: 'المؤهل',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<MartialStatus> martialStatus =
      FieldMetadata<MartialStatus>(
        getValue: (obj) => obj is Person ? obj.martialStatus : null,
        parentType: Person,
        name: 'martialStatus',
        label: 'الحالة الاجتماعية',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<PersonType> personType = FieldMetadata<PersonType>(
    getValue: (obj) => obj is Person ? obj.personType : null,
    parentType: Person,
    name: 'personType',
    label: 'نوع الفرد في العائلة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<PersonState> state = FieldMetadata<PersonState>(
    getValue: (obj) => obj is Person ? obj.state : null,
    parentType: Person,
    name: 'state',
    label: 'الحالة الروحية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> isServant = FieldMetadata<bool>(
    getValue: (obj) => obj is Person ? obj.isServant : null,
    parentType: Person,
    name: 'isServant',
    label: 'خادم؟',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<Church> servingChurch = FieldMetadata<Church>(
    getValue: (obj) => obj is Person ? obj.servingChurch : null,
    parentType: Person,
    name: 'servingChurch',
    label: 'الكنيسة التي يخدم بها',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> serviceType = FieldMetadata<String>(
    getValue: (obj) => obj is Person ? obj.serviceType : null,
    parentType: Person,
    name: 'serviceType',
    label: 'نوع الخدمة',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> notes = FieldMetadata<String>(
    getValue: (obj) => obj is Person ? obj.notes : null,
    parentType: Person,
    name: 'notes',
    label: 'ملاحظات',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Family> family = FieldMetadata<Family>(
    getValue: (obj) => obj is Person ? obj.family : null,
    parentType: Person,
    name: 'family',
    label: 'العائلة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Store> store = FieldMetadata<Store>(
    getValue: (obj) => obj is Person ? obj.store : null,
    parentType: Person,
    name: 'store',
    label: 'المتجر',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<StudyYear> studyYear = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is Person ? obj.studyYear : null,
    parentType: Person,
    name: 'studyYear',
    label: 'السنة الدراسية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Person ? obj.color : null,
    parentType: Person,
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
    getValue: (obj) => obj is Person ? obj.photoUpdatedAt : null,
    parentType: Person,
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

  final FieldMetadata<LastRecordedByInfo> lastConfession =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.lastConfession : null,
        parentType: Person,
        name: 'lastConfession',
        label: 'أخر اعتراف',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastKodas =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.lastKodas : null,
        parentType: Person,
        name: 'lastKodas',
        label: 'أخر تناول',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastAttendance =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.lastAttendance : null,
        parentType: Person,
        name: 'lastAttendance',
        label: 'أخر حضور',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastCall =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.lastCall : null,
        parentType: Person,
        name: 'lastCall',
        label: 'أخر مكالمات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastVisit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.lastVisit : null,
        parentType: Person,
        name: 'lastVisit',
        label: 'أخر افتقاد',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.lastEdit : null,
        parentType: Person,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<ClassesPersons> classesRel =
      FieldMetadata<ClassesPersons>(
        getValue: (obj) => obj is Person ? obj.classes : null,
        parentType: Person,
        name: 'classes',
        label: 'classes',
        isCodeOnly: true,
        isOrderable: false,
      );

  late final FieldMetadata<Class> classes = classesRel.redirectTo(
    ClassesPersonsFields().class$,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<PersonsGroups> groupsRel = FieldMetadata<PersonsGroups>(
    getValue: (obj) => obj is Person ? obj.groups : null,
    parentType: Person,
    name: 'groups',
    label: 'groups',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Group> groups = groupsRel.redirectTo(
    PersonsGroupsFields().group,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<PersonsServices> servicesRel =
      FieldMetadata<PersonsServices>(
        getValue: (obj) => obj is Person ? obj.services : null,
        parentType: Person,
        name: 'services',
        label: 'services',
        isCodeOnly: true,
        isOrderable: false,
      );

  late final FieldMetadata<Service> services = servicesRel.redirectTo(
    PersonsServicesFields().service,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<PersonsTags> tagsRel = FieldMetadata<PersonsTags>(
    getValue: (obj) => obj is Person ? obj.tags : null,
    parentType: Person,
    name: 'tags',
    label: 'tags',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<Tag> tags = tagsRel.redirectTo(
    PersonsTagsFields().tag,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<PersonsHobbies> hobbiesRel =
      FieldMetadata<PersonsHobbies>(
        getValue: (obj) => obj is Person ? obj.hobbies : null,
        parentType: Person,
        name: 'hobbies',
        label: 'hobbies',
        isCodeOnly: true,
        isOrderable: false,
      );

  late final FieldMetadata<Hobby> hobbies = hobbiesRel.redirectTo(
    PersonsHobbiesFields().hobby,
    isExpandable: false,
    isOrderable: false,
  );

  final FieldMetadata<User> user = FieldMetadata<User>(
    getValue: (obj) => obj is Person ? obj.user : null,
    parentType: Person,
    name: 'user',
    label: 'بيانات الخادم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<LastRecordedByInfo> kodasHistory =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.kodasHistory : null,
        parentType: Person,
        name: 'kodasHistory',
        label: 'سجل التناول',
        isCodeOnly: false,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<LastRecordedByInfo> attendanceHistory =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.attendanceHistory : null,
        parentType: Person,
        name: 'attendanceHistory',
        label: 'سجل الحضور',
        isCodeOnly: false,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<LastRecordedByInfo> confessionHistory =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.confessionHistory : null,
        parentType: Person,
        name: 'confessionHistory',
        label: 'سجل الاعتراف',
        isCodeOnly: false,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<LastRecordedByInfo> callHistory =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.callHistory : null,
        parentType: Person,
        name: 'callHistory',
        label: 'سجل المكالمات',
        isCodeOnly: false,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<LastRecordedByInfo> visitHistory =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.visitHistory : null,
        parentType: Person,
        name: 'visitHistory',
        label: 'سجل الافتقاد',
        isCodeOnly: false,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<LastRecordedByInfo> editHistory =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Person ? obj.editHistory : null,
        parentType: Person,
        name: 'editHistory',
        label: 'سجل تحديث البيانات',
        isCodeOnly: false,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<AggregateData> kodasHistoryAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) => obj is Person ? obj.kodasHistoryAggregate : null,
        parentType: Person,
        name: 'kodasHistoryAggregate',
        label: 'kodasHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<AggregateData> attendanceHistoryAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) =>
            obj is Person ? obj.attendanceHistoryAggregate : null,
        parentType: Person,
        name: 'attendanceHistoryAggregate',
        label: 'attendanceHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<AggregateData> confessionHistoryAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) =>
            obj is Person ? obj.confessionHistoryAggregate : null,
        parentType: Person,
        name: 'confessionHistoryAggregate',
        label: 'confessionHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<AggregateData> callHistoryAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) => obj is Person ? obj.callHistoryAggregate : null,
        parentType: Person,
        name: 'callHistoryAggregate',
        label: 'callHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<AggregateData> visitHistoryAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) => obj is Person ? obj.visitHistoryAggregate : null,
        parentType: Person,
        name: 'visitHistoryAggregate',
        label: 'visitHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<AggregateData> editHistoryAggregate =
      FieldMetadata<AggregateData>(
        getValue: (obj) => obj is Person ? obj.editHistoryAggregate : null,
        parentType: Person,
        name: 'editHistoryAggregate',
        label: 'editHistoryAggregate',
        isCodeOnly: true,
      );

  final FieldMetadata<Point> geolocation = FieldMetadata<Point>(
    getValue: (obj) => obj is Person ? obj.geolocation : null,
    parentType: Person,
    name: 'geolocation',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
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
    workStatus,
    job,
    jobDescription,
    qualification,
    martialStatus,
    personType,
    state,
    isServant,
    servingChurch,
    serviceType,
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
    geolocation,
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
    'workStatus': workStatus,
    'job': job,
    'jobDescription': jobDescription,
    'qualification': qualification,
    'martialStatus': martialStatus,
    'personType': personType,
    'state': state,
    'isServant': isServant,
    'servingChurch': servingChurch,
    'serviceType': serviceType,
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
    'geolocation': geolocation,
  };

  _PersonFields();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map json) => Person(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  otherPhones:
      (json['otherPhones'] as Map?)?.map((k, e) => MapEntry(k as String, e)) ??
      const {},
  gender: json['gender'] as bool? ?? true,
  isShammas: json['isShammas'] as bool? ?? false,
  workStatus:
      $enumDecodeNullable(_$WorkStatusEnumMap, json['workStatus']) ??
      WorkStatus.employed,
  martialStatus:
      $enumDecodeNullable(_$MartialStatusEnumMap, json['martialStatus']) ??
      MartialStatus.single,
  isServant: json['isServant'] as bool? ?? false,
  userCanEdit: json['userCanEdit'] as bool? ?? false,
  nationalId: (json['nationalId'] as num?)?.toInt(),
  address: json['address'] == null
      ? null
      : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
  mainPhone: json['mainPhone'] as String?,
  birthdate: _$JsonConverterFromJson<String, DateTime>(
    json['birthdate'],
    const LocalDateTimeConverter().fromJson,
  ),
  birthday: json['birthday'] as String?,
  shammasLevelId: json['shammasLevelId'] as String?,
  shammasLevel: json['shammasLevel'] == null
      ? null
      : ShammasLevel.fromJson(
          Map<String, Object?>.from(json['shammasLevel'] as Map),
        ),
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
  job: json['job'] == null
      ? null
      : Job.fromJson(Map<String, Object?>.from(json['job'] as Map)),
  jobId: json['jobId'] as String?,
  jobDescription: json['jobDescription'] as String?,
  qualification: json['qualification'] == null
      ? null
      : Qualification.fromJson(
          Map<String, Object?>.from(json['qualification'] as Map),
        ),
  qualificationId: json['qualificationId'] as String?,
  personType: json['personType'] == null
      ? null
      : PersonType.fromJson(
          Map<String, Object?>.from(json['personType'] as Map),
        ),
  personTypeId: json['personTypeId'] as String?,
  state: json['state'] == null
      ? null
      : PersonState.fromJson(Map<String, Object?>.from(json['state'] as Map)),
  stateId: json['stateId'] as String?,
  servingChurch: json['servingChurch'] == null
      ? null
      : Church.fromJson(
          Map<String, Object?>.from(json['servingChurch'] as Map),
        ),
  serviceType: json['serviceType'] as String?,
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
      : StudyYear.fromJson(Map<String, Object?>.from(json['studyYear'] as Map)),
  studyYearId: (json['studyYearId'] as num?)?.toInt(),
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  lastConfession: json['lastConfession'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastConfession'] as Map),
        ),
  lastKodas: json['lastKodas'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastKodas'] as Map),
        ),
  lastAttendance: json['lastAttendance'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastAttendance'] as Map),
        ),
  lastCall: json['lastCall'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastCall'] as Map),
        ),
  lastVisit: json['lastVisit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastVisit'] as Map),
        ),
  lastEdit: json['lastEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  classes: personsClassesFromJson(json['classes'] as List?),
  groups: personsGroupsFromJson(json['groups'] as List?),
  services: personsServicesFromJson(json['services'] as List?),
  tags: personsTagsFromJson(json['tags'] as List?),
  hobbies: personsHobbiesFromJson(json['hobbies'] as List?),
  uid: json['uid'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
  kodasHistory: (json['kodasHistory'] as List<dynamic>?)
      ?.map(
        (e) => LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  attendanceHistory: (json['attendanceHistory'] as List<dynamic>?)
      ?.map(
        (e) => LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  confessionHistory: (json['confessionHistory'] as List<dynamic>?)
      ?.map(
        (e) => LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  callHistory: (json['callHistory'] as List<dynamic>?)
      ?.map(
        (e) => LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  visitHistory: (json['visitHistory'] as List<dynamic>?)
      ?.map(
        (e) => LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  editHistory: (json['editHistory'] as List<dynamic>?)
      ?.map(
        (e) => LastRecordedByInfo.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  kodasHistoryAggregate: json['kodasHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['kodasHistoryAggregate'] as Map),
        ),
  attendanceHistoryAggregate: json['attendanceHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['attendanceHistoryAggregate'] as Map),
        ),
  confessionHistoryAggregate: json['confessionHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['confessionHistoryAggregate'] as Map),
        ),
  callHistoryAggregate: json['callHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['callHistoryAggregate'] as Map),
        ),
  visitHistoryAggregate: json['visitHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['visitHistoryAggregate'] as Map),
        ),
  editHistoryAggregate: json['editHistoryAggregate'] == null
      ? null
      : HistoryAggregateData.fromJson(
          Map<String, dynamic>.from(json['editHistoryAggregate'] as Map),
        ),
);

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
  'id': instance.id,
  'nationalId': instance.nationalId,
  'name': instance.name,
  'address': instance.address?.toJson(),
  'mainPhone': instance.mainPhone,
  'otherPhones': instance.otherPhones,
  'birthdate': _$JsonConverterToJson<String, DateTime>(
    instance.birthdate,
    const LocalDateTimeConverter().toJson,
  ),
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
  'workStatus': _$WorkStatusEnumMap[instance.workStatus],
  'job': instance.job?.toJson(),
  'jobId': instance.jobId,
  'jobDescription': instance.jobDescription,
  'qualification': instance.qualification?.toJson(),
  'qualificationId': instance.qualificationId,
  'martialStatus': _$MartialStatusEnumMap[instance.martialStatus],
  'personType': instance.personType?.toJson(),
  'personTypeId': instance.personTypeId,
  'state': instance.state?.toJson(),
  'stateId': instance.stateId,
  'isServant': instance.isServant,
  'servingChurch': instance.servingChurch?.toJson(),
  'serviceType': instance.serviceType,
  'notes': instance.notes,
  'family': instance.family?.toJson(),
  'familyId': instance.familyId,
  'store': instance.store?.toJson(),
  'storeId': instance.storeId,
  'studyYear': instance.studyYear?.toJson(),
  'studyYearId': instance.studyYearId,
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
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
  'uid': instance.uid,
  'kodasHistory': instance.kodasHistory?.map((e) => e.toJson()).toList(),
  'attendanceHistory': instance.attendanceHistory
      ?.map((e) => e.toJson())
      .toList(),
  'confessionHistory': instance.confessionHistory
      ?.map((e) => e.toJson())
      .toList(),
  'callHistory': instance.callHistory?.map((e) => e.toJson()).toList(),
  'visitHistory': instance.visitHistory?.map((e) => e.toJson()).toList(),
  'editHistory': instance.editHistory?.map((e) => e.toJson()).toList(),
  'kodasHistoryAggregate': instance.kodasHistoryAggregate?.toJson(),
  'attendanceHistoryAggregate': instance.attendanceHistoryAggregate?.toJson(),
  'confessionHistoryAggregate': instance.confessionHistoryAggregate?.toJson(),
  'callHistoryAggregate': instance.callHistoryAggregate?.toJson(),
  'visitHistoryAggregate': instance.visitHistoryAggregate?.toJson(),
  'editHistoryAggregate': instance.editHistoryAggregate?.toJson(),
};

const _$WorkStatusEnumMap = {
  WorkStatus.student: 'student',
  WorkStatus.employed: 'employed',
  WorkStatus.unemployed: 'unemployed',
  WorkStatus.retired: 'retired',
};

const _$MartialStatusEnumMap = {
  MartialStatus.married: 'married',
  MartialStatus.separated: 'separated',
  MartialStatus.divorced: 'divorced',
  MartialStatus.widowed: 'widowed',
  MartialStatus.widowedWithoutChildren: 'widowedWithoutChildren',
  MartialStatus.single: 'single',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
