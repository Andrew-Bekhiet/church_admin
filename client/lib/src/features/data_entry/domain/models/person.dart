import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المخدومين', extensible: true)
class Person extends ViewableWithIDAndImage
    with _$Person
    implements SerializableExtra {
  static const Duration maxSpiritDataAge = Duration(days: 60);

  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  final int? nationalId;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @QueryableField(label: 'تفاصيل العنوان')
  final Address? address;

  @override
  @JsonKey(defaultValue: <PhoneContact>[])
  final List<PhoneContact> contacts;

  @override
  @JsonKey(defaultValue: <FamilyPhoneContact>[])
  final List<FamilyPhoneContact> familyContacts;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'تاريخ الميلاد')
  final DateTime? birthdate;

  @override
  @QueryableField.birthday(label: 'يوم وشهر الميلاد')
  final String? birthday;

  @override
  @QueryableField(label: 'النوع')
  final bool gender;

  @override
  @QueryableField(label: 'شماس؟')
  final bool isShammas;

  @override
  final String? shammasLevelId;

  @override
  @QueryableField(label: 'رتبة الشموسية')
  final ShammasLevel? shammasLevel;

  @override
  @QueryableField(label: 'المدرسة')
  final School? school;

  @override
  final String? schoolId;

  @override
  @QueryableField(label: 'الكلية')
  final College? college;

  @override
  final String? collegeId;

  @override
  @QueryableField(label: 'الكنيسة')
  final Church? church;

  @override
  final String? churchId;

  @override
  @QueryableField(label: 'اب الاعتراف')
  final Father? father;

  @override
  final String? fatherId;

  @override
  @QueryableField(label: 'حالة العمل')
  final WorkStatus? workStatus;

  @override
  @QueryableField(label: 'الوظيفة')
  final Job? job;

  @override
  final String? jobId;

  @override
  @QueryableField(label: 'تفاصيل الوظيفة')
  final String? jobDescription;

  @override
  @QueryableField(label: 'المؤهل')
  final Qualification? qualification;

  @override
  final String? qualificationId;

  @override
  @QueryableField(label: 'الحالة الاجتماعية')
  final MartialStatus? martialStatus;

  @override
  @QueryableField(label: 'نوع الفرد في العائلة')
  final PersonType? personType;

  @override
  final String? personTypeId;

  @override
  @QueryableField(label: 'الحالة الروحية')
  final PersonState? state;

  @override
  final String? stateId;

  @override
  @QueryableField(label: 'خادم؟')
  final bool isServant;

  @override
  @QueryableField(label: 'الكنيسة التي يخدم بها')
  final Church? servingChurch;

  @override
  @QueryableField(label: 'نوع الخدمة')
  final String? serviceType;

  @override
  @QueryableField(label: 'ملاحظات')
  final String? notes;

  @override
  @QueryableField(label: 'العائلة')
  final Family? family;

  @override
  final String? familyId;

  @override
  @QueryableField(label: 'المتجر')
  final Store? store;

  @override
  final String? storeId;

  @override
  @QueryableField(label: 'السنة الدراسية')
  final StudyYear? studyYear;

  @override
  final int? studyYearId;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @QueryableField(label: 'أخر اعتراف')
  final LastRecordedByInfo? lastConfession;

  @override
  @QueryableField(label: 'أخر تناول')
  final LastRecordedByInfo? lastKodas;

  @override
  @QueryableField(label: 'أخر حضور')
  final LastRecordedByInfo? lastAttendance;

  @override
  @QueryableField(label: 'أخر مكالمات')
  final LastRecordedByInfo? lastCall;

  @override
  @QueryableField(label: 'أخر افتقاد')
  final LastRecordedByInfo? lastVisit;

  @override
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @QueryableField(label: 'اكتمال البيانات')
  final DataCheck? dataCheck;

  @override
  @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
  @QueryableField.manyToMany(through: ClassesPersons)
  final List<Class>? classes;

  @override
  @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
  @QueryableField.manyToMany(through: PersonsGroups)
  final List<Group>? groups;

  @override
  @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
  @QueryableField.manyToMany(through: PersonsServices)
  final List<Service>? services;

  @override
  @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
  @QueryableField.manyToMany(through: PersonsTags)
  final List<Tag>? tags;

  @override
  @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
  @QueryableField.manyToMany(through: PersonsHobbies)
  final List<Hobby>? hobbies;

  @override
  @QueryableField(label: 'بيانات الخادم')
  final User? user;

  @override
  final String? uid;

  @override
  @QueryableField.history(label: 'سجل التناول')
  final List<LastRecordedByInfo>? kodasHistory;

  @override
  @QueryableField.history(label: 'سجل الحضور')
  final List<LastRecordedByInfo>? attendanceHistory;

  @override
  @QueryableField.history(label: 'سجل الاعتراف')
  final List<LastRecordedByInfo>? confessionHistory;

  @override
  @QueryableField.history(label: 'سجل المكالمات')
  final List<LastRecordedByInfo>? callHistory;

  @override
  @QueryableField.history(label: 'سجل الافتقاد')
  final List<LastRecordedByInfo>? visitHistory;

  @override
  @QueryableField.history(label: 'سجل تحديث البيانات')
  final List<LastRecordedByInfo>? editHistory;

  @override
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? kodasHistoryAggregate;

  @override
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? attendanceHistoryAggregate;

  @override
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? confessionHistoryAggregate;

  @override
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? callHistoryAggregate;

  @override
  @QueryableField.aggregate(type: AggregateData)
  final HistoryAggregateData? visitHistoryAggregate;

  @override
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
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('persons', id, lastUpdatedTime: photoUpdatedAt);

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
    this.nationalId,
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

  bool spiritDataUpToDate({
    Duration maxAge = maxSpiritDataAge,
    DateTime? now,
  }) {
    final earliestDate = (now ?? DateTime.now()).subtract(maxAge);

    return lastKodas != null &&
        lastConfession != null &&
        !lastKodas!.time.isBefore(earliestDate) &&
        !lastConfession!.time.isBefore(earliestDate);
  }

  Input_PersonsInsertInput toInsertInput() => Input_PersonsInsertInput(
    nationalId: nationalId,
    name: name,
    birthdate: birthdate,
    gender: gender,
    isShammas: isShammas,
    shammasLevelId: shammasLevel?.id.toUuid(),
    schoolId: school?.id.toUuid(),
    collegeId: college?.id.toUuid(),
    churchId: church?.id.toUuid(),
    fatherId: father?.id.toUuid(),
    workStatus: workStatus?.name,
    jobId: job?.id.toUuid(),
    jobDescription: jobDescription,
    qualificationId: qualification?.id.toUuid(),
    martialStatus: martialStatus?.name,
    personTypeId: personType?.id.toUuid(),
    stateId: state?.id.toUuid(),
    isServant: isServant,
    servingChurchId: servingChurch?.id.toUuid(),
    serviceType: serviceType,
    notes: notes,
    contacts: Input_ContactsArrRelInsertInput(
      data: contacts.map((c) => c.toInsertInput()).toList(),
    ),
    family: switch ((family, address)) {
      (null, final address?) => Input_FamiliesObjRelInsertInput(
        data: Family(
          id: Namespace.nil.value,
          name: name.split(' ').sublist(1).join(' '),
          address: address.copyWith(family: null),
          contacts: familyContacts,
        ).toInsertInput(),
      ),
      _ => null,
    },
    familyId: family?.id.toUuid(),
    storeId: store?.id.toUuid(),
    studyYearId: studyYear?.order,
    groups: groups != null
        ? Input_PersonsGroupsArrRelInsertInput(
            data: groups!
                .map(
                  (g) => Input_PersonsGroupsInsertInput(
                    groupId: g.id.toUuid(),
                  ),
                )
                .toList(),
          )
        : null,
    services: services != null
        ? Input_PersonsServicesArrRelInsertInput(
            data: services!
                .map(
                  (s) => Input_PersonsServicesInsertInput(
                    serviceId: s.id.toUuid(),
                  ),
                )
                .toList(),
          )
        : null,
    uid: uid?.toUuid(),
    tags: tags != null
        ? Input_PersonsTagsArrRelInsertInput(
            data: tags!
                .map(
                  (t) => Input_PersonsTagsInsertInput(tagId: t.id.toUuid()),
                )
                .toList(),
          )
        : null,
    hobbies: hobbies != null
        ? Input_PersonsHobbiesArrRelInsertInput(
            data: hobbies!
                .map(
                  (h) => Input_PersonsHobbiesInsertInput(
                    hobbyId: h.id.toUuid(),
                  ),
                )
                .toList(),
          )
        : null,
    color: colorToInt(color),
    kodasHistory: Input_HistoryKodasHistoryArrRelInsertInput(
      data: [
        if (lastKodas != null)
          Input_HistoryKodasHistoryInsertInput(
            day: Input_HistoryAttendanceDaysObjRelInsertInput(
              data: Input_HistoryAttendanceDaysInsertInput(
                day: lastKodas!.time,
              ),
              onConflict: Input_HistoryAttendanceDaysOnConflict(
                constraint:
                    Enum_HistoryAttendanceDaysConstraint.attendance_days_pkey,
                updateColumns: [
                  Enum_HistoryAttendanceDaysUpdateColumn.day,
                ],
              ),
            ),
          ),
      ],
      onConflict: Input_HistoryKodasHistoryOnConflict(
        constraint: Enum_HistoryKodasHistoryConstraint
            .kodas_history_day_id_person_id_key,
      ),
    ),
    confessionHistory: Input_HistoryConfessionHistoryArrRelInsertInput(
      data: [
        if (lastConfession != null)
          Input_HistoryConfessionHistoryInsertInput(
            day: Input_HistoryAttendanceDaysObjRelInsertInput(
              data: Input_HistoryAttendanceDaysInsertInput(
                day: lastConfession!.time,
              ),
              onConflict: Input_HistoryAttendanceDaysOnConflict(
                constraint:
                    Enum_HistoryAttendanceDaysConstraint.attendance_days_pkey,
                updateColumns: [
                  Enum_HistoryAttendanceDaysUpdateColumn.day,
                ],
              ),
            ),
          ),
      ],
      onConflict: Input_HistoryConfessionHistoryOnConflict(
        constraint: Enum_HistoryConfessionHistoryConstraint
            .confession_history_day_id_person_id_key,
      ),
    ),
    visitHistory: Input_HistoryVisitHistoryArrRelInsertInput(
      data: [
        if (lastVisit != null)
          Input_HistoryVisitHistoryInsertInput(
            time: lastVisit!.time,
            isFatherVisit: lastVisit!.isFatherVisit,
            table: 'persons',
          ),
      ],
    ),
    callHistory: Input_HistoryCallHistoryArrRelInsertInput(
      data: [
        if (lastCall != null)
          Input_HistoryCallHistoryInsertInput(
            time: lastCall!.time,
          ),
      ],
    ),
  );

  Input_PersonsSetInput toUpdateInput(Person oldPerson) {
    Input_PersonsSetInput result = Input_PersonsSetInput();

    if (name != oldPerson.name) {
      result = result.copyWith(name: name);
    }

    if (nationalId != oldPerson.nationalId) {
      result = result.copyWith(nationalId: nationalId);
    }

    if (birthdate != oldPerson.birthdate) {
      result = result.copyWith(birthdate: birthdate);
    }

    if (jobDescription != oldPerson.jobDescription) {
      result = result.copyWith(jobDescription: jobDescription);
    }

    if (servingChurch?.id != oldPerson.servingChurch?.id) {
      result = result.copyWith(servingChurchId: servingChurch?.id.toUuid());
    }

    if (serviceType != oldPerson.serviceType) {
      result = result.copyWith(serviceType: serviceType);
    }

    if (isServant != oldPerson.isServant) {
      result = result.copyWith(
        isServant: isServant,
        servingChurchId: isServant ? result.servingChurchId : null,
        serviceType: isServant ? result.serviceType : null,
      );
    }

    if (notes != oldPerson.notes) {
      result = result.copyWith(notes: notes);
    }

    if (color != oldPerson.color) {
      result = result.copyWith(color: colorToInt(color));
    }

    if (shammasLevel?.id != oldPerson.shammasLevel?.id) {
      result = result.copyWith(shammasLevelId: shammasLevel?.id.toUuid());
    }

    if (school?.id != oldPerson.school?.id) {
      result = result.copyWith(schoolId: school?.id.toUuid());
    }

    if (college?.id != oldPerson.college?.id) {
      result = result.copyWith(collegeId: college?.id.toUuid());
    }

    if (studyYear?.order != oldPerson.studyYear?.order) {
      result = result.copyWith(
        studyYearId: studyYear?.order,
        schoolId: (studyYear?.order ?? 0) <= 12 ? school?.id.toUuid() : null,
        collegeId: (studyYear?.order ?? 12) >= 12 ? college?.id.toUuid() : null,
      );
    }

    if (church?.id != oldPerson.church?.id) {
      result = result.copyWith(churchId: church?.id.toUuid());
    }

    if (father?.id != oldPerson.father?.id) {
      result = result.copyWith(fatherId: father?.id.toUuid());
    }

    if (job?.id != oldPerson.job?.id) {
      result = result.copyWith(jobId: job?.id.toUuid());
    }

    if (qualification?.id != oldPerson.qualification?.id) {
      result = result.copyWith(qualificationId: qualification?.id.toUuid());
    }

    if (martialStatus != oldPerson.martialStatus) {
      result = result.copyWith(martialStatus: martialStatus?.name);
    }

    if (personType?.id != oldPerson.personType?.id) {
      result = result.copyWith(personTypeId: personType?.id.toUuid());
    }

    if (state?.id != oldPerson.state?.id) {
      result = result.copyWith(stateId: state?.id.toUuid());
    }

    if (family?.id != oldPerson.family?.id) {
      result = result.copyWith(familyId: family?.id.toUuid());
    }

    if (store?.id != oldPerson.store?.id) {
      result = result.copyWith(storeId: store?.id.toUuid());
    }

    if (workStatus != oldPerson.workStatus) {
      result = result.copyWith(
        workStatus: workStatus?.name,
        studyYearId: workStatus == WorkStatus.student
            ? result.studyYearId
            : null,
        schoolId:
            workStatus == WorkStatus.student && (studyYear?.order ?? 0) <= 12
            ? result.schoolId
            : null,
        collegeId:
            workStatus == WorkStatus.student && (studyYear?.order ?? 12) >= 12
            ? result.collegeId
            : null,
        jobId:
            workStatus == WorkStatus.employed ||
                workStatus == WorkStatus.retired
            ? result.jobId
            : null,
        jobDescription:
            workStatus == WorkStatus.employed ||
                workStatus == WorkStatus.retired
            ? result.jobDescription
            : null,
        qualificationId: workStatus != WorkStatus.student
            ? result.qualificationId
            : null,
      );
    }

    if (isShammas != oldPerson.isShammas) {
      result = result.copyWith(
        isShammas: isShammas,
        shammasLevelId: isShammas ? result.shammasLevelId : null,
      );
    }

    if (gender != oldPerson.gender) {
      result = result.copyWith(
        gender: gender,
        isShammas: isShammas && gender,
        shammasLevelId: isShammas && gender ? result.shammasLevelId : null,
      );
    }

    return result;
  }
}

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

  FieldMetadata<Area> get area => address.redirectTo(
    AddressFields().area,
    isExpandable: false,
  );

  FieldMetadata<Street> get street =>
      address.redirectTo(AddressFields().street, isExpandable: false);

  FieldMetadata<District> get district =>
      address.redirectTo(AddressFields().district, isExpandable: false);

  FieldMetadata<String> get fullAddressText =>
      address.redirectTo(AddressFields().fullAddressText, isExpandable: false);

  @override
  FieldMetadata<Point> get geolocation =>
      address.redirectTo(AddressFields().geolocation, isExpandable: false);

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
    return {
      for (final field in allFields) field.name: field,
    };
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

List<Tag>? personsTagsFromJson(List? data) =>
    data?.map((e) => Tag.fromJson(e['tag'])).toList();
List<Json>? personsTagsToJson(List<Tag>? tags) =>
    tags?.map((e) => {'tag': e.toJson()}).toList();

List<Hobby>? personsHobbiesFromJson(List? data) =>
    data?.map((e) => Hobby.fromJson(e['hobby'])).toList();
List<Json>? personsHobbiesToJson(List<Hobby>? hobbies) =>
    hobbies?.map((e) => {'hobby': e.toJson()}).toList();
