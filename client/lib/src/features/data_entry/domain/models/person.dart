import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المخدومين', extensible: true)
class Person extends ViewableWithIDAndImage
    with _$Person
    implements SerializableExtra, HasDataCheck {
  static const Duration maxSpiritDataAge = Duration(days: 60);

  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @QueryableField(label: 'تفاصيل العنوان', orderable: false)
  final Address? address;

  @JsonKey(defaultValue: <PhoneContact>[])
  final List<PhoneContact> contacts;

  @JsonKey(defaultValue: <FamilyPhoneContact>[])
  final List<FamilyPhoneContact> familyContacts;

  @LocalDateTimeConverter()
  @QueryableField(label: 'تاريخ الميلاد', dateOnly: true)
  final DateTime? birthdate;

  @QueryableField.birthday(label: 'يوم وشهر الميلاد')
  final String? birthday;

  @QueryableField(label: 'النوع')
  final bool gender;

  @QueryableField(label: 'شماس؟')
  final bool isShammas;

  final String? shammasLevelId;

  @QueryableField(label: 'رتبة الشموسية')
  final ShammasLevel? shammasLevel;

  @QueryableField(label: 'المدرسة')
  final School? school;

  final String? schoolId;

  @QueryableField(label: 'الكلية')
  final College? college;

  final String? collegeId;

  @QueryableField(label: 'الكنيسة')
  final Church? church;

  final String? churchId;

  @QueryableField(label: 'اب الاعتراف')
  final Father? father;

  final String? fatherId;

  @QueryableField(label: 'حالة العمل')
  final WorkStatus? workStatus;

  @QueryableField(label: 'الوظيفة')
  final Job? job;

  final String? jobId;

  @QueryableField(label: 'تفاصيل الوظيفة')
  final String? jobDescription;

  @QueryableField(label: 'المؤهل')
  final Qualification? qualification;

  final String? qualificationId;

  @QueryableField(label: 'الحالة الاجتماعية')
  final MartialStatus? martialStatus;

  @QueryableField(label: 'نوع الفرد في العائلة')
  final PersonType? personType;

  final String? personTypeId;

  @QueryableField(label: 'الحالة الروحية')
  final PersonState? state;

  final String? stateId;

  @QueryableField(label: 'خادم؟')
  final bool isServant;

  @QueryableField(label: 'الكنيسة التي يخدم بها')
  final Church? servingChurch;

  @QueryableField(label: 'نوع الخدمة')
  final String? serviceType;

  @QueryableField(label: 'ملاحظات')
  final String? notes;

  @QueryableField(label: 'العائلة')
  final Family? family;

  final String? familyId;

  @QueryableField(label: 'المتجر')
  final Store? store;

  final String? storeId;

  @QueryableField(label: 'السنة الدراسية')
  final StudyYear? studyYear;

  final int? studyYearId;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @JsonKey(name: 'latestConfession')
  @QueryableField(
    label: 'أخر اعتراف',
    graphqlName: 'lastConfessionDay',
    dateOnly: true,
  )
  final LastRecordedByInfo? lastConfession;

  @JsonKey(name: 'latestKodas')
  @QueryableField(
    label: 'أخر تناول',
    graphqlName: 'lastKodasDay',
    dateOnly: true,
  )
  final LastRecordedByInfo? lastKodas;

  @QueryableField(label: 'أخر حضور', graphqlName: 'lastAttendedAt')
  final LastRecordedByInfo? lastAttendance;

  @JsonKey(name: 'latestCall')
  @QueryableField(label: 'أخر مكالمات')
  final LastRecordedByInfo? lastCall;

  @JsonKey(name: 'latestVisit')
  @QueryableField(label: 'أخر افتقاد', graphqlName: 'lastVisitAt')
  final LastRecordedByInfo? lastVisit;

  @JsonKey(name: 'latestEdit')
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @QueryableField(label: 'اكتمال البيانات', orderable: false)
  final DataCheck? dataCheck;

  @JsonKey(
    name: 'classMemberships',
    fromJson: personsClassesFromJson,
    toJson: personsClassesToJson,
  )
  @QueryableField.manyToMany(
    through: ClassesPersons,
    graphqlName: 'classMemberships',
  )
  final List<Class>? classes;

  @JsonKey(
    name: 'groupMemberships',
    fromJson: personsGroupsFromJson,
    toJson: personsGroupsToJson,
  )
  @QueryableField.manyToMany(
    through: PersonsGroups,
    graphqlName: 'groupMemberships',
  )
  final List<Group>? groups;

  @JsonKey(
    name: 'serviceMemberships',
    fromJson: personsServicesFromJson,
    toJson: personsServicesToJson,
  )
  @QueryableField.manyToMany(
    through: PersonsServices,
    graphqlName: 'serviceMemberships',
  )
  final List<Service>? services;

  @QueryableField(label: 'الشارة', orderable: false)
  final List<Tag>? tags;

  @QueryableField(label: 'الهواية', orderable: false)
  final List<Hobby>? hobbies;

  @QueryableField(label: 'بيانات الخادم')
  final User? user;

  final String? uid;

  @JsonKey(name: 'kodases')
  @QueryableField.history(
    label: 'سجل التناول',
    graphqlName: 'kodases',
    dateOnly: true,
  )
  final List<LastRecordedByInfo>? kodasHistory;

  @JsonKey(name: 'attendanceRecords')
  @QueryableField.history(
    label: 'سجل الحضور',
    graphqlName: 'attendanceRecords',
    type: AttendanceRecord,
  )
  final List<LastRecordedByInfo>? attendanceHistory;

  @JsonKey(name: 'confessions')
  @QueryableField.history(
    label: 'سجل الاعتراف',
    graphqlName: 'confessions',
    dateOnly: true,
  )
  final List<LastRecordedByInfo>? confessionHistory;

  @JsonKey(name: 'calls')
  @QueryableField.history(label: 'سجل المكالمات', graphqlName: 'calls')
  final List<LastRecordedByInfo>? callHistory;

  @JsonKey(name: 'visits')
  @QueryableField.history(label: 'سجل الافتقاد', graphqlName: 'visits')
  final List<LastRecordedByInfo>? visitHistory;

  @JsonKey(name: 'edits')
  @QueryableField.history(label: 'سجل تحديث البيانات', graphqlName: 'edits')
  final List<LastRecordedByInfo>? editHistory;

  @JsonKey(fromJson: HistoryAggregateData.fromJsonOrNodes)
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? kodasHistoryAggregate;

  @JsonKey(fromJson: HistoryAggregateData.fromJsonOrNodes)
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? attendanceHistoryAggregate;

  @JsonKey(fromJson: HistoryAggregateData.fromJsonOrNodes)
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? confessionHistoryAggregate;

  @JsonKey(fromJson: HistoryAggregateData.fromJsonOrNodes)
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? callHistoryAggregate;

  @JsonKey(fromJson: HistoryAggregateData.fromJsonOrNodes)
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? visitHistoryAggregate;

  @JsonKey(fromJson: HistoryAggregateData.fromJsonOrNodes)
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? editHistoryAggregate;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @QueryableField(label: 'الموقع')
  Point? get geolocation => address?.geolocation;

  bool get isStudent => workStatus == WorkStatus.student;

  List<FamilyPhoneContact> get visibleFamilyContacts => switch (personType) {
    PersonType(isFamilyAdmin: true) => const [],
    _ => familyContacts,
  };

  @override
  String get typeName => AdvancedQueriesMetadata().person.name;
  @override
  ObjectImageInfo get imageInfo => ObjectPhotoInfo(
    Enum_PhotoSubject.PERSONS,
    id,
    lastUpdatedTime: photoUpdatedAt,
  );

  Person({
    required this.id,
    required this.name,
    this.contacts = const [],
    this.familyContacts = const [],
    this.gender = true,
    this.isShammas = false,
    this.workStatus = WorkStatus.employed,
    this.martialStatus = MartialStatus.single,
    this.isServant = false,
    this.userCanEdit = false,
    this.address,
    this.birthdate,
    this.birthday,
    this.shammasLevelId,
    this.shammasLevel,
    this.school,
    this.schoolId,
    this.college,
    this.collegeId,
    this.church,
    this.churchId,
    this.father,
    this.fatherId,
    this.job,
    this.jobId,
    this.jobDescription,
    this.qualification,
    this.qualificationId,
    this.personType,
    this.personTypeId,
    this.state,
    this.stateId,
    this.servingChurch,
    this.serviceType,
    this.notes,
    this.family,
    this.familyId,
    this.store,
    this.storeId,
    this.studyYear,
    this.studyYearId,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    LastRecordedByInfo? lastConfession,
    LastRecordedByInfo? lastKodas,
    LastRecordedByInfo? lastAttendance,
    LastRecordedByInfo? lastCall,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    this.dataCheck,
    this.classes,
    this.groups,
    this.services,
    this.tags,
    this.hobbies,
    this.uid,
    this.user,
    this.kodasHistory,
    this.attendanceHistory,
    this.confessionHistory,
    this.callHistory,
    this.visitHistory,
    this.editHistory,
    this.kodasHistoryAggregate,
    this.attendanceHistoryAggregate,
    this.confessionHistoryAggregate,
    this.callHistoryAggregate,
    this.visitHistoryAggregate,
    this.editHistoryAggregate,
  }) : lastConfession =
           lastConfession ??
           confessionHistoryAggregate?.aggregate.max ??
           confessionHistory?.singleOrNull,
       lastKodas =
           lastKodas ??
           kodasHistoryAggregate?.aggregate.max ??
           kodasHistory?.singleOrNull,
       lastAttendance =
           lastAttendance ??
           attendanceHistoryAggregate?.aggregate.max ??
           attendanceHistory?.singleOrNull,
       lastCall =
           lastCall ??
           callHistoryAggregate?.aggregate.max ??
           callHistory?.singleOrNull,
       lastVisit =
           lastVisit ??
           visitHistoryAggregate?.aggregate.max ??
           visitHistory?.singleOrNull,
       lastEdit =
           lastEdit ??
           editHistoryAggregate?.aggregate.max ??
           editHistory?.singleOrNull;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);

  @override
  Json toJson() => _$PersonToJson(this);

  bool spiritDataUpToDate({Duration maxAge = maxSpiritDataAge, DateTime? now}) {
    final earliestDate = (now ?? DateTime.now()).subtract(maxAge);

    return lastKodas != null &&
        lastConfession != null &&
        !lastKodas!.time.isBefore(earliestDate) &&
        !lastConfession!.time.isBefore(earliestDate);
  }
}

// Extends the generated private base, which only this library can see
// ignore: solid_lints/avoid_multiple_declarations_per_file
class PersonFields extends _PersonFields {
  FieldMetadata<String> get uid => FieldMetadata<String>(
    parentType: Person,
    name: 'uid',
    label: 'معرف حساب المستخدم',
    operators: {...StringOperator.values},
    isCodeOnly: true,
    getValue: (obj) => obj is Person ? obj.uid : null,
  );

  FieldMetadata<String> get mainPhone => PhoneSearchFieldMetadata(
    parentType: Person,
    name: 'mainPhone',
    label: 'رقم الهاتف',
  );

  FieldMetadata<Area> get area =>
      address.redirectTo(AddressFields().area, isExpandable: false);

  FieldMetadata<Street> get street =>
      address.redirectTo(AddressFields().street, isExpandable: false);

  FieldMetadata<District> get district =>
      address.redirectTo(AddressFields().district, isExpandable: false);

  FieldMetadata<String> get fullAddressText =>
      address.redirectTo(AddressFields().fullAddressText, isExpandable: false);

  @override
  FieldMetadata<Point> get geolocation => address.redirectTo(
    AddressFields().geolocation,
    isExpandable: false,
    isOrderable: false,
  );

  @override
  List<FieldMetadata<Object>> get allFields => {
    id,
    name,
    address,
    fullAddressText,
    area,
    street,
    district,
    geolocation,
    mainPhone,
    birthdate,
    birthday,
    gender,
    isServant,
    church,
    father,
    isShammas,
    shammasLevel,
    workStatus,
    studyYear,
    school,
    college,
    qualification,
    job,
    jobDescription,
    martialStatus,
    personType,
    state,
    hobbies,
    notes,
    tags,
    family,
    store,
    classes,
    groups,
    services,
    user,
    confessionHistory,
    lastConfession,
    kodasHistory,
    lastKodas,
    attendanceHistory,
    lastAttendance,
    callHistory,
    lastCall,
    visitHistory,
    lastVisit,
    editHistory,
    lastEdit,
    ...super.allFields,
  }.toList();

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {for (final field in allFields) field.name: field};
  }

  PersonFields();
}

List<Class>? personsClassesFromJson(List? data) =>
    data?.map((e) => Class.fromJson(e['class'])).toList();
List<Json>? personsClassesToJson(List<Class>? classes) =>
    classes?.map((e) => {'class': e.toJson()}).toList();

List<Group>? personsGroupsFromJson(List? data) =>
    data?.map((e) => Group.fromJson(e['group'])).toList();
List<Json>? personsGroupsToJson(List<Group>? groups) =>
    groups?.map((e) => {'group': e.toJson()}).toList();

List<Service>? personsServicesFromJson(List? data) =>
    data?.map((e) => Service.fromJson(e['service'])).toList();
List<Json>? personsServicesToJson(List<Service>? services) =>
    services?.map((e) => {'service': e.toJson()}).toList();
