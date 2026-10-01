// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Person {
  String get id;
  int? get nationalId;
  String get name;
  Address? get address;
  String? get mainPhone;
  Json get otherPhones;
  List<PhoneContact> get contacts;
  List<FamilyPhoneContact> get familyContacts;
  DateTime? get birthdate;
  String? get birthday;
  bool get gender;
  bool get isShammas;
  String? get shammasLevelId;
  ShammasLevel? get shammasLevel;
  School? get school;
  String? get schoolId;
  College? get college;
  String? get collegeId;
  Church? get church;
  String? get churchId;
  Father? get father;
  String? get fatherId;
  WorkStatus? get workStatus;
  Job? get job;
  String? get jobId;
  String? get jobDescription;
  Qualification? get qualification;
  String? get qualificationId;
  MartialStatus? get martialStatus;
  PersonType? get personType;
  String? get personTypeId;
  PersonState? get state;
  String? get stateId;
  bool get isServant;
  Church? get servingChurch;
  String? get serviceType;
  String? get notes;
  Family? get family;
  String? get familyId;
  Store? get store;
  String? get storeId;
  StudyYear? get studyYear;
  int? get studyYearId;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  LastRecordedByInfo? get lastConfession;
  LastRecordedByInfo? get lastKodas;
  LastRecordedByInfo? get lastAttendance;
  LastRecordedByInfo? get lastCall;
  LastRecordedByInfo? get lastVisit;
  LastRecordedByInfo? get lastEdit;
  List<Class>? get classes;
  List<Group>? get groups;
  List<Service>? get services;
  List<Tag>? get tags;
  List<Hobby>? get hobbies;
  User? get user;
  String? get uid;
  List<LastRecordedByInfo>? get kodasHistory;
  List<LastRecordedByInfo>? get attendanceHistory;
  List<LastRecordedByInfo>? get confessionHistory;
  List<LastRecordedByInfo>? get callHistory;
  List<LastRecordedByInfo>? get visitHistory;
  List<LastRecordedByInfo>? get editHistory;
  HistoryAggregateData? get kodasHistoryAggregate;
  HistoryAggregateData? get attendanceHistoryAggregate;
  HistoryAggregateData? get confessionHistoryAggregate;
  HistoryAggregateData? get callHistoryAggregate;
  HistoryAggregateData? get visitHistoryAggregate;
  HistoryAggregateData? get editHistoryAggregate;
  bool get userCanEdit;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonCopyWith<Person> get copyWith =>
      _$PersonCopyWithImpl<Person>(this as Person, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Person &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nationalId, nationalId) ||
                other.nationalId == nationalId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhone, mainPhone) ||
                other.mainPhone == mainPhone) &&
            const DeepCollectionEquality().equals(
              other.otherPhones,
              otherPhones,
            ) &&
            const DeepCollectionEquality().equals(other.contacts, contacts) &&
            const DeepCollectionEquality().equals(
              other.familyContacts,
              familyContacts,
            ) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isShammas, isShammas) ||
                other.isShammas == isShammas) &&
            (identical(other.shammasLevelId, shammasLevelId) ||
                other.shammasLevelId == shammasLevelId) &&
            (identical(other.shammasLevel, shammasLevel) ||
                other.shammasLevel == shammasLevel) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.collegeId, collegeId) ||
                other.collegeId == collegeId) &&
            (identical(other.church, church) || other.church == church) &&
            (identical(other.churchId, churchId) ||
                other.churchId == churchId) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.workStatus, workStatus) ||
                other.workStatus == workStatus) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.qualificationId, qualificationId) ||
                other.qualificationId == qualificationId) &&
            (identical(other.martialStatus, martialStatus) ||
                other.martialStatus == martialStatus) &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.personTypeId, personTypeId) ||
                other.personTypeId == personTypeId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.isServant, isServant) ||
                other.isServant == isServant) &&
            (identical(other.servingChurch, servingChurch) ||
                other.servingChurch == servingChurch) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            (identical(other.studyYearId, studyYearId) ||
                other.studyYearId == studyYearId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.lastConfession, lastConfession) ||
                other.lastConfession == lastConfession) &&
            (identical(other.lastKodas, lastKodas) ||
                other.lastKodas == lastKodas) &&
            (identical(other.lastAttendance, lastAttendance) ||
                other.lastAttendance == lastAttendance) &&
            (identical(other.lastCall, lastCall) ||
                other.lastCall == lastCall) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality().equals(other.classes, classes) &&
            const DeepCollectionEquality().equals(other.groups, groups) &&
            const DeepCollectionEquality().equals(other.services, services) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.hobbies, hobbies) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(
              other.kodasHistory,
              kodasHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.attendanceHistory,
              attendanceHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.confessionHistory,
              confessionHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.callHistory,
              callHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.visitHistory,
              visitHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.editHistory,
              editHistory,
            ) &&
            (identical(other.kodasHistoryAggregate, kodasHistoryAggregate) ||
                other.kodasHistoryAggregate == kodasHistoryAggregate) &&
            (identical(
                  other.attendanceHistoryAggregate,
                  attendanceHistoryAggregate,
                ) ||
                other.attendanceHistoryAggregate ==
                    attendanceHistoryAggregate) &&
            (identical(
                  other.confessionHistoryAggregate,
                  confessionHistoryAggregate,
                ) ||
                other.confessionHistoryAggregate ==
                    confessionHistoryAggregate) &&
            (identical(other.callHistoryAggregate, callHistoryAggregate) ||
                other.callHistoryAggregate == callHistoryAggregate) &&
            (identical(other.visitHistoryAggregate, visitHistoryAggregate) ||
                other.visitHistoryAggregate == visitHistoryAggregate) &&
            (identical(other.editHistoryAggregate, editHistoryAggregate) ||
                other.editHistoryAggregate == editHistoryAggregate) &&
            (identical(other.userCanEdit, userCanEdit) ||
                other.userCanEdit == userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    nationalId,
    name,
    address,
    mainPhone,
    const DeepCollectionEquality().hash(otherPhones),
    const DeepCollectionEquality().hash(contacts),
    const DeepCollectionEquality().hash(familyContacts),
    birthdate,
    birthday,
    gender,
    isShammas,
    shammasLevelId,
    shammasLevel,
    school,
    schoolId,
    college,
    collegeId,
    church,
    churchId,
    father,
    fatherId,
    workStatus,
    job,
    jobId,
    jobDescription,
    qualification,
    qualificationId,
    martialStatus,
    personType,
    personTypeId,
    state,
    stateId,
    isServant,
    servingChurch,
    serviceType,
    notes,
    family,
    familyId,
    store,
    storeId,
    studyYear,
    studyYearId,
    color,
    photoUpdatedAt,
    blurhash,
    lastConfession,
    lastKodas,
    lastAttendance,
    lastCall,
    lastVisit,
    lastEdit,
    const DeepCollectionEquality().hash(classes),
    const DeepCollectionEquality().hash(groups),
    const DeepCollectionEquality().hash(services),
    const DeepCollectionEquality().hash(tags),
    const DeepCollectionEquality().hash(hobbies),
    user,
    uid,
    const DeepCollectionEquality().hash(kodasHistory),
    const DeepCollectionEquality().hash(attendanceHistory),
    const DeepCollectionEquality().hash(confessionHistory),
    const DeepCollectionEquality().hash(callHistory),
    const DeepCollectionEquality().hash(visitHistory),
    const DeepCollectionEquality().hash(editHistory),
    kodasHistoryAggregate,
    attendanceHistoryAggregate,
    confessionHistoryAggregate,
    callHistoryAggregate,
    visitHistoryAggregate,
    editHistoryAggregate,
    userCanEdit,
  ]);

  @override
  String toString() {
    return 'Person(id: $id, nationalId: $nationalId, name: $name, address: $address, mainPhone: $mainPhone, otherPhones: $otherPhones, contacts: $contacts, familyContacts: $familyContacts, birthdate: $birthdate, birthday: $birthday, gender: $gender, isShammas: $isShammas, shammasLevelId: $shammasLevelId, shammasLevel: $shammasLevel, school: $school, schoolId: $schoolId, college: $college, collegeId: $collegeId, church: $church, churchId: $churchId, father: $father, fatherId: $fatherId, workStatus: $workStatus, job: $job, jobId: $jobId, jobDescription: $jobDescription, qualification: $qualification, qualificationId: $qualificationId, martialStatus: $martialStatus, personType: $personType, personTypeId: $personTypeId, state: $state, stateId: $stateId, isServant: $isServant, servingChurch: $servingChurch, serviceType: $serviceType, notes: $notes, family: $family, familyId: $familyId, store: $store, storeId: $storeId, studyYear: $studyYear, studyYearId: $studyYearId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, lastConfession: $lastConfession, lastKodas: $lastKodas, lastAttendance: $lastAttendance, lastCall: $lastCall, lastVisit: $lastVisit, lastEdit: $lastEdit, classes: $classes, groups: $groups, services: $services, tags: $tags, hobbies: $hobbies, user: $user, uid: $uid, kodasHistory: $kodasHistory, attendanceHistory: $attendanceHistory, confessionHistory: $confessionHistory, callHistory: $callHistory, visitHistory: $visitHistory, editHistory: $editHistory, kodasHistoryAggregate: $kodasHistoryAggregate, attendanceHistoryAggregate: $attendanceHistoryAggregate, confessionHistoryAggregate: $confessionHistoryAggregate, callHistoryAggregate: $callHistoryAggregate, visitHistoryAggregate: $visitHistoryAggregate, editHistoryAggregate: $editHistoryAggregate, userCanEdit: $userCanEdit)';
  }
}

/// @nodoc
abstract mixin class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) _then) =
      _$PersonCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    Map<String, dynamic> otherPhones,
    List<PhoneContact> contacts,
    List<FamilyPhoneContact> familyContacts,
    bool gender,
    bool isShammas,
    WorkStatus? workStatus,
    MartialStatus? martialStatus,
    bool isServant,
    bool userCanEdit,
    int? nationalId,
    Address? address,
    String? mainPhone,
    DateTime? birthdate,
    String? birthday,
    String? shammasLevelId,
    ShammasLevel? shammasLevel,
    School? school,
    String? schoolId,
    College? college,
    String? collegeId,
    Church? church,
    String? churchId,
    Father? father,
    String? fatherId,
    Job? job,
    String? jobId,
    String? jobDescription,
    Qualification? qualification,
    String? qualificationId,
    PersonType? personType,
    String? personTypeId,
    PersonState? state,
    String? stateId,
    Church? servingChurch,
    String? serviceType,
    String? notes,
    Family? family,
    String? familyId,
    Store? store,
    String? storeId,
    StudyYear? studyYear,
    int? studyYearId,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    LastRecordedByInfo? lastConfession,
    LastRecordedByInfo? lastKodas,
    LastRecordedByInfo? lastAttendance,
    LastRecordedByInfo? lastCall,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    List<Class>? classes,
    List<Group>? groups,
    List<Service>? services,
    List<Tag>? tags,
    List<Hobby>? hobbies,
    String? uid,
    User? user,
    List<LastRecordedByInfo>? kodasHistory,
    List<LastRecordedByInfo>? attendanceHistory,
    List<LastRecordedByInfo>? confessionHistory,
    List<LastRecordedByInfo>? callHistory,
    List<LastRecordedByInfo>? visitHistory,
    List<LastRecordedByInfo>? editHistory,
    HistoryAggregateData? kodasHistoryAggregate,
    HistoryAggregateData? attendanceHistoryAggregate,
    HistoryAggregateData? confessionHistoryAggregate,
    HistoryAggregateData? callHistoryAggregate,
    HistoryAggregateData? visitHistoryAggregate,
    HistoryAggregateData? editHistoryAggregate,
  });
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._self, this._then);

  final Person _self;
  final $Res Function(Person) _then;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? otherPhones = null,
    Object? contacts = null,
    Object? familyContacts = null,
    Object? gender = null,
    Object? isShammas = null,
    Object? workStatus = freezed,
    Object? martialStatus = freezed,
    Object? isServant = null,
    Object? userCanEdit = null,
    Object? nationalId = freezed,
    Object? address = freezed,
    Object? mainPhone = freezed,
    Object? birthdate = freezed,
    Object? birthday = freezed,
    Object? shammasLevelId = freezed,
    Object? shammasLevel = freezed,
    Object? school = freezed,
    Object? schoolId = freezed,
    Object? college = freezed,
    Object? collegeId = freezed,
    Object? church = freezed,
    Object? churchId = freezed,
    Object? father = freezed,
    Object? fatherId = freezed,
    Object? job = freezed,
    Object? jobId = freezed,
    Object? jobDescription = freezed,
    Object? qualification = freezed,
    Object? qualificationId = freezed,
    Object? personType = freezed,
    Object? personTypeId = freezed,
    Object? state = freezed,
    Object? stateId = freezed,
    Object? servingChurch = freezed,
    Object? serviceType = freezed,
    Object? notes = freezed,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? store = freezed,
    Object? storeId = freezed,
    Object? studyYear = freezed,
    Object? studyYearId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? lastConfession = freezed,
    Object? lastKodas = freezed,
    Object? lastAttendance = freezed,
    Object? lastCall = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? services = freezed,
    Object? tags = freezed,
    Object? hobbies = freezed,
    Object? uid = freezed,
    Object? user = freezed,
    Object? kodasHistory = freezed,
    Object? attendanceHistory = freezed,
    Object? confessionHistory = freezed,
    Object? callHistory = freezed,
    Object? visitHistory = freezed,
    Object? editHistory = freezed,
    Object? kodasHistoryAggregate = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? confessionHistoryAggregate = freezed,
    Object? callHistoryAggregate = freezed,
    Object? visitHistoryAggregate = freezed,
    Object? editHistoryAggregate = freezed,
  }) {
    return _then(
      Person(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        otherPhones: null == otherPhones
            ? _self.otherPhones
            : otherPhones // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        contacts: null == contacts
            ? _self.contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<PhoneContact>,
        familyContacts: null == familyContacts
            ? _self.familyContacts
            : familyContacts // ignore: cast_nullable_to_non_nullable
                  as List<FamilyPhoneContact>,
        gender: null == gender
            ? _self.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as bool,
        isShammas: null == isShammas
            ? _self.isShammas
            : isShammas // ignore: cast_nullable_to_non_nullable
                  as bool,
        workStatus: freezed == workStatus
            ? _self.workStatus
            : workStatus // ignore: cast_nullable_to_non_nullable
                  as WorkStatus?,
        martialStatus: freezed == martialStatus
            ? _self.martialStatus
            : martialStatus // ignore: cast_nullable_to_non_nullable
                  as MartialStatus?,
        isServant: null == isServant
            ? _self.isServant
            : isServant // ignore: cast_nullable_to_non_nullable
                  as bool,
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
        nationalId: freezed == nationalId
            ? _self.nationalId
            : nationalId // ignore: cast_nullable_to_non_nullable
                  as int?,
        address: freezed == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as Address?,
        mainPhone: freezed == mainPhone
            ? _self.mainPhone
            : mainPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthdate: freezed == birthdate
            ? _self.birthdate
            : birthdate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        birthday: freezed == birthday
            ? _self.birthday
            : birthday // ignore: cast_nullable_to_non_nullable
                  as String?,
        shammasLevelId: freezed == shammasLevelId
            ? _self.shammasLevelId
            : shammasLevelId // ignore: cast_nullable_to_non_nullable
                  as String?,
        shammasLevel: freezed == shammasLevel
            ? _self.shammasLevel
            : shammasLevel // ignore: cast_nullable_to_non_nullable
                  as ShammasLevel?,
        school: freezed == school
            ? _self.school
            : school // ignore: cast_nullable_to_non_nullable
                  as School?,
        schoolId: freezed == schoolId
            ? _self.schoolId
            : schoolId // ignore: cast_nullable_to_non_nullable
                  as String?,
        college: freezed == college
            ? _self.college
            : college // ignore: cast_nullable_to_non_nullable
                  as College?,
        collegeId: freezed == collegeId
            ? _self.collegeId
            : collegeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        church: freezed == church
            ? _self.church
            : church // ignore: cast_nullable_to_non_nullable
                  as Church?,
        churchId: freezed == churchId
            ? _self.churchId
            : churchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        father: freezed == father
            ? _self.father
            : father // ignore: cast_nullable_to_non_nullable
                  as Father?,
        fatherId: freezed == fatherId
            ? _self.fatherId
            : fatherId // ignore: cast_nullable_to_non_nullable
                  as String?,
        job: freezed == job
            ? _self.job
            : job // ignore: cast_nullable_to_non_nullable
                  as Job?,
        jobId: freezed == jobId
            ? _self.jobId
            : jobId // ignore: cast_nullable_to_non_nullable
                  as String?,
        jobDescription: freezed == jobDescription
            ? _self.jobDescription
            : jobDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        qualification: freezed == qualification
            ? _self.qualification
            : qualification // ignore: cast_nullable_to_non_nullable
                  as Qualification?,
        qualificationId: freezed == qualificationId
            ? _self.qualificationId
            : qualificationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        personType: freezed == personType
            ? _self.personType
            : personType // ignore: cast_nullable_to_non_nullable
                  as PersonType?,
        personTypeId: freezed == personTypeId
            ? _self.personTypeId
            : personTypeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _self.state
            : state // ignore: cast_nullable_to_non_nullable
                  as PersonState?,
        stateId: freezed == stateId
            ? _self.stateId
            : stateId // ignore: cast_nullable_to_non_nullable
                  as String?,
        servingChurch: freezed == servingChurch
            ? _self.servingChurch
            : servingChurch // ignore: cast_nullable_to_non_nullable
                  as Church?,
        serviceType: freezed == serviceType
            ? _self.serviceType
            : serviceType // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _self.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        family: freezed == family
            ? _self.family
            : family // ignore: cast_nullable_to_non_nullable
                  as Family?,
        familyId: freezed == familyId
            ? _self.familyId
            : familyId // ignore: cast_nullable_to_non_nullable
                  as String?,
        store: freezed == store
            ? _self.store
            : store // ignore: cast_nullable_to_non_nullable
                  as Store?,
        storeId: freezed == storeId
            ? _self.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        studyYear: freezed == studyYear
            ? _self.studyYear
            : studyYear // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        studyYearId: freezed == studyYearId
            ? _self.studyYearId
            : studyYearId // ignore: cast_nullable_to_non_nullable
                  as int?,
        color: freezed == color
            ? _self.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color?,
        photoUpdatedAt: freezed == photoUpdatedAt
            ? _self.photoUpdatedAt
            : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        blurhash: freezed == blurhash
            ? _self.blurhash
            : blurhash // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastConfession: freezed == lastConfession
            ? _self.lastConfession
            : lastConfession // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastKodas: freezed == lastKodas
            ? _self.lastKodas
            : lastKodas // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastAttendance: freezed == lastAttendance
            ? _self.lastAttendance
            : lastAttendance // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastCall: freezed == lastCall
            ? _self.lastCall
            : lastCall // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastVisit: freezed == lastVisit
            ? _self.lastVisit
            : lastVisit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastEdit: freezed == lastEdit
            ? _self.lastEdit
            : lastEdit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        classes: freezed == classes
            ? _self.classes
            : classes // ignore: cast_nullable_to_non_nullable
                  as List<Class>?,
        groups: freezed == groups
            ? _self.groups
            : groups // ignore: cast_nullable_to_non_nullable
                  as List<Group>?,
        services: freezed == services
            ? _self.services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<Service>?,
        tags: freezed == tags
            ? _self.tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<Tag>?,
        hobbies: freezed == hobbies
            ? _self.hobbies
            : hobbies // ignore: cast_nullable_to_non_nullable
                  as List<Hobby>?,
        uid: freezed == uid
            ? _self.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        kodasHistory: freezed == kodasHistory
            ? _self.kodasHistory
            : kodasHistory // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>?,
        attendanceHistory: freezed == attendanceHistory
            ? _self.attendanceHistory
            : attendanceHistory // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>?,
        confessionHistory: freezed == confessionHistory
            ? _self.confessionHistory
            : confessionHistory // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>?,
        callHistory: freezed == callHistory
            ? _self.callHistory
            : callHistory // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>?,
        visitHistory: freezed == visitHistory
            ? _self.visitHistory
            : visitHistory // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>?,
        editHistory: freezed == editHistory
            ? _self.editHistory
            : editHistory // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>?,
        kodasHistoryAggregate: freezed == kodasHistoryAggregate
            ? _self.kodasHistoryAggregate
            : kodasHistoryAggregate // ignore: cast_nullable_to_non_nullable
                  as HistoryAggregateData?,
        attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
            ? _self.attendanceHistoryAggregate
            : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
                  as HistoryAggregateData?,
        confessionHistoryAggregate: freezed == confessionHistoryAggregate
            ? _self.confessionHistoryAggregate
            : confessionHistoryAggregate // ignore: cast_nullable_to_non_nullable
                  as HistoryAggregateData?,
        callHistoryAggregate: freezed == callHistoryAggregate
            ? _self.callHistoryAggregate
            : callHistoryAggregate // ignore: cast_nullable_to_non_nullable
                  as HistoryAggregateData?,
        visitHistoryAggregate: freezed == visitHistoryAggregate
            ? _self.visitHistoryAggregate
            : visitHistoryAggregate // ignore: cast_nullable_to_non_nullable
                  as HistoryAggregateData?,
        editHistoryAggregate: freezed == editHistoryAggregate
            ? _self.editHistoryAggregate
            : editHistoryAggregate // ignore: cast_nullable_to_non_nullable
                  as HistoryAggregateData?,
      ),
    );
  }
}
