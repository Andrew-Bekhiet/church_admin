// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Person {
  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonCopyWith<Person> get copyWith =>
      _$PersonCopyWithImpl<Person>(this as Person, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Person;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Person &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.nationalId, _this.nationalId) ||
                other.nationalId == _this.nationalId) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.address, _this.address) ||
                other.address == _this.address) &&
            const DeepCollectionEquality().equals(
              other.contacts,
              _this.contacts,
            ) &&
            const DeepCollectionEquality().equals(
              other.familyContacts,
              _this.familyContacts,
            ) &&
            (identical(other.birthdate, _this.birthdate) ||
                other.birthdate == _this.birthdate) &&
            (identical(other.birthday, _this.birthday) ||
                other.birthday == _this.birthday) &&
            (identical(other.gender, _this.gender) ||
                other.gender == _this.gender) &&
            (identical(other.isShammas, _this.isShammas) ||
                other.isShammas == _this.isShammas) &&
            (identical(other.shammasLevelId, _this.shammasLevelId) ||
                other.shammasLevelId == _this.shammasLevelId) &&
            (identical(other.shammasLevel, _this.shammasLevel) ||
                other.shammasLevel == _this.shammasLevel) &&
            (identical(other.school, _this.school) ||
                other.school == _this.school) &&
            (identical(other.schoolId, _this.schoolId) ||
                other.schoolId == _this.schoolId) &&
            (identical(other.college, _this.college) ||
                other.college == _this.college) &&
            (identical(other.collegeId, _this.collegeId) ||
                other.collegeId == _this.collegeId) &&
            (identical(other.church, _this.church) ||
                other.church == _this.church) &&
            (identical(other.churchId, _this.churchId) ||
                other.churchId == _this.churchId) &&
            (identical(other.father, _this.father) ||
                other.father == _this.father) &&
            (identical(other.fatherId, _this.fatherId) ||
                other.fatherId == _this.fatherId) &&
            (identical(other.workStatus, _this.workStatus) ||
                other.workStatus == _this.workStatus) &&
            (identical(other.job, _this.job) || other.job == _this.job) &&
            (identical(other.jobId, _this.jobId) ||
                other.jobId == _this.jobId) &&
            (identical(other.jobDescription, _this.jobDescription) ||
                other.jobDescription == _this.jobDescription) &&
            (identical(other.qualification, _this.qualification) ||
                other.qualification == _this.qualification) &&
            (identical(other.qualificationId, _this.qualificationId) ||
                other.qualificationId == _this.qualificationId) &&
            (identical(other.martialStatus, _this.martialStatus) ||
                other.martialStatus == _this.martialStatus) &&
            (identical(other.personType, _this.personType) ||
                other.personType == _this.personType) &&
            (identical(other.personTypeId, _this.personTypeId) ||
                other.personTypeId == _this.personTypeId) &&
            (identical(other.state, _this.state) ||
                other.state == _this.state) &&
            (identical(other.stateId, _this.stateId) ||
                other.stateId == _this.stateId) &&
            (identical(other.isServant, _this.isServant) ||
                other.isServant == _this.isServant) &&
            (identical(other.servingChurch, _this.servingChurch) ||
                other.servingChurch == _this.servingChurch) &&
            (identical(other.serviceType, _this.serviceType) ||
                other.serviceType == _this.serviceType) &&
            (identical(other.notes, _this.notes) ||
                other.notes == _this.notes) &&
            (identical(other.family, _this.family) ||
                other.family == _this.family) &&
            (identical(other.familyId, _this.familyId) ||
                other.familyId == _this.familyId) &&
            (identical(other.store, _this.store) ||
                other.store == _this.store) &&
            (identical(other.storeId, _this.storeId) ||
                other.storeId == _this.storeId) &&
            (identical(other.studyYear, _this.studyYear) ||
                other.studyYear == _this.studyYear) &&
            (identical(other.studyYearId, _this.studyYearId) ||
                other.studyYearId == _this.studyYearId) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            (identical(other.lastConfession, _this.lastConfession) ||
                other.lastConfession == _this.lastConfession) &&
            (identical(other.lastKodas, _this.lastKodas) ||
                other.lastKodas == _this.lastKodas) &&
            (identical(other.lastAttendance, _this.lastAttendance) ||
                other.lastAttendance == _this.lastAttendance) &&
            (identical(other.lastCall, _this.lastCall) ||
                other.lastCall == _this.lastCall) &&
            (identical(other.lastVisit, _this.lastVisit) ||
                other.lastVisit == _this.lastVisit) &&
            (identical(other.lastEdit, _this.lastEdit) ||
                other.lastEdit == _this.lastEdit) &&
            (identical(other.dataCheck, _this.dataCheck) ||
                other.dataCheck == _this.dataCheck) &&
            const DeepCollectionEquality().equals(
              other.classes,
              _this.classes,
            ) &&
            const DeepCollectionEquality().equals(other.groups, _this.groups) &&
            const DeepCollectionEquality().equals(
              other.services,
              _this.services,
            ) &&
            const DeepCollectionEquality().equals(other.tags, _this.tags) &&
            const DeepCollectionEquality().equals(
              other.hobbies,
              _this.hobbies,
            ) &&
            (identical(other.user, _this.user) || other.user == _this.user) &&
            (identical(other.uid, _this.uid) || other.uid == _this.uid) &&
            const DeepCollectionEquality().equals(
              other.kodasHistory,
              _this.kodasHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.attendanceHistory,
              _this.attendanceHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.confessionHistory,
              _this.confessionHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.callHistory,
              _this.callHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.visitHistory,
              _this.visitHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.editHistory,
              _this.editHistory,
            ) &&
            (identical(
                  other.kodasHistoryAggregate,
                  _this.kodasHistoryAggregate,
                ) ||
                other.kodasHistoryAggregate == _this.kodasHistoryAggregate) &&
            (identical(
                  other.attendanceHistoryAggregate,
                  _this.attendanceHistoryAggregate,
                ) ||
                other.attendanceHistoryAggregate ==
                    _this.attendanceHistoryAggregate) &&
            (identical(
                  other.confessionHistoryAggregate,
                  _this.confessionHistoryAggregate,
                ) ||
                other.confessionHistoryAggregate ==
                    _this.confessionHistoryAggregate) &&
            (identical(
                  other.callHistoryAggregate,
                  _this.callHistoryAggregate,
                ) ||
                other.callHistoryAggregate == _this.callHistoryAggregate) &&
            (identical(
                  other.visitHistoryAggregate,
                  _this.visitHistoryAggregate,
                ) ||
                other.visitHistoryAggregate == _this.visitHistoryAggregate) &&
            (identical(
                  other.editHistoryAggregate,
                  _this.editHistoryAggregate,
                ) ||
                other.editHistoryAggregate == _this.editHistoryAggregate) &&
            (identical(other.userCanEdit, _this.userCanEdit) ||
                other.userCanEdit == _this.userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Person;
    return Object.hashAll([
      runtimeType,
      _this.id,
      _this.nationalId,
      _this.name,
      _this.address,
      const DeepCollectionEquality().hash(_this.contacts),
      const DeepCollectionEquality().hash(_this.familyContacts),
      _this.birthdate,
      _this.birthday,
      _this.gender,
      _this.isShammas,
      _this.shammasLevelId,
      _this.shammasLevel,
      _this.school,
      _this.schoolId,
      _this.college,
      _this.collegeId,
      _this.church,
      _this.churchId,
      _this.father,
      _this.fatherId,
      _this.workStatus,
      _this.job,
      _this.jobId,
      _this.jobDescription,
      _this.qualification,
      _this.qualificationId,
      _this.martialStatus,
      _this.personType,
      _this.personTypeId,
      _this.state,
      _this.stateId,
      _this.isServant,
      _this.servingChurch,
      _this.serviceType,
      _this.notes,
      _this.family,
      _this.familyId,
      _this.store,
      _this.storeId,
      _this.studyYear,
      _this.studyYearId,
      _this.color,
      _this.photoUpdatedAt,
      _this.blurhash,
      _this.lastConfession,
      _this.lastKodas,
      _this.lastAttendance,
      _this.lastCall,
      _this.lastVisit,
      _this.lastEdit,
      _this.dataCheck,
      const DeepCollectionEquality().hash(_this.classes),
      const DeepCollectionEquality().hash(_this.groups),
      const DeepCollectionEquality().hash(_this.services),
      const DeepCollectionEquality().hash(_this.tags),
      const DeepCollectionEquality().hash(_this.hobbies),
      _this.user,
      _this.uid,
      const DeepCollectionEquality().hash(_this.kodasHistory),
      const DeepCollectionEquality().hash(_this.attendanceHistory),
      const DeepCollectionEquality().hash(_this.confessionHistory),
      const DeepCollectionEquality().hash(_this.callHistory),
      const DeepCollectionEquality().hash(_this.visitHistory),
      const DeepCollectionEquality().hash(_this.editHistory),
      _this.kodasHistoryAggregate,
      _this.attendanceHistoryAggregate,
      _this.confessionHistoryAggregate,
      _this.callHistoryAggregate,
      _this.visitHistoryAggregate,
      _this.editHistoryAggregate,
      _this.userCanEdit,
    ]);
  }

  @override
  String toString() {
    final _this = this as Person;
    return 'Person(id: ${_this.id}, nationalId: ${_this.nationalId}, name: ${_this.name}, address: ${_this.address}, contacts: ${_this.contacts}, familyContacts: ${_this.familyContacts}, birthdate: ${_this.birthdate}, birthday: ${_this.birthday}, gender: ${_this.gender}, isShammas: ${_this.isShammas}, shammasLevelId: ${_this.shammasLevelId}, shammasLevel: ${_this.shammasLevel}, school: ${_this.school}, schoolId: ${_this.schoolId}, college: ${_this.college}, collegeId: ${_this.collegeId}, church: ${_this.church}, churchId: ${_this.churchId}, father: ${_this.father}, fatherId: ${_this.fatherId}, workStatus: ${_this.workStatus}, job: ${_this.job}, jobId: ${_this.jobId}, jobDescription: ${_this.jobDescription}, qualification: ${_this.qualification}, qualificationId: ${_this.qualificationId}, martialStatus: ${_this.martialStatus}, personType: ${_this.personType}, personTypeId: ${_this.personTypeId}, state: ${_this.state}, stateId: ${_this.stateId}, isServant: ${_this.isServant}, servingChurch: ${_this.servingChurch}, serviceType: ${_this.serviceType}, notes: ${_this.notes}, family: ${_this.family}, familyId: ${_this.familyId}, store: ${_this.store}, storeId: ${_this.storeId}, studyYear: ${_this.studyYear}, studyYearId: ${_this.studyYearId}, color: ${_this.color}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, lastConfession: ${_this.lastConfession}, lastKodas: ${_this.lastKodas}, lastAttendance: ${_this.lastAttendance}, lastCall: ${_this.lastCall}, lastVisit: ${_this.lastVisit}, lastEdit: ${_this.lastEdit}, dataCheck: ${_this.dataCheck}, classes: ${_this.classes}, groups: ${_this.groups}, services: ${_this.services}, tags: ${_this.tags}, hobbies: ${_this.hobbies}, user: ${_this.user}, uid: ${_this.uid}, kodasHistory: ${_this.kodasHistory}, attendanceHistory: ${_this.attendanceHistory}, confessionHistory: ${_this.confessionHistory}, callHistory: ${_this.callHistory}, visitHistory: ${_this.visitHistory}, editHistory: ${_this.editHistory}, kodasHistoryAggregate: ${_this.kodasHistoryAggregate}, attendanceHistoryAggregate: ${_this.attendanceHistoryAggregate}, confessionHistoryAggregate: ${_this.confessionHistoryAggregate}, callHistoryAggregate: ${_this.callHistoryAggregate}, visitHistoryAggregate: ${_this.visitHistoryAggregate}, editHistoryAggregate: ${_this.editHistoryAggregate}, userCanEdit: ${_this.userCanEdit})';
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
    List<PhoneContact> contacts,
    List<FamilyPhoneContact> familyContacts,
    Gender gender,
    bool isShammas,
    WorkStatus? workStatus,
    MartialStatus? martialStatus,
    bool isServant,
    bool userCanEdit,
    int? nationalId,
    Address? address,
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
    DataCheck? dataCheck,
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

  $AddressCopyWith<$Res>? get address;
  $ShammasLevelCopyWith<$Res>? get shammasLevel;
  $SchoolCopyWith<$Res>? get school;
  $CollegeCopyWith<$Res>? get college;
  $ChurchCopyWith<$Res>? get church;
  $FatherCopyWith<$Res>? get father;
  $JobCopyWith<$Res>? get job;
  $QualificationCopyWith<$Res>? get qualification;
  $PersonTypeCopyWith<$Res>? get personType;
  $PersonStateCopyWith<$Res>? get state;
  $ChurchCopyWith<$Res>? get servingChurch;
  $FamilyCopyWith<$Res>? get family;
  $StoreCopyWith<$Res>? get store;
  $StudyYearCopyWith<$Res>? get studyYear;
  $LastRecordedByInfoCopyWith<$Res>? get lastConfession;
  $LastRecordedByInfoCopyWith<$Res>? get lastKodas;
  $LastRecordedByInfoCopyWith<$Res>? get lastAttendance;
  $LastRecordedByInfoCopyWith<$Res>? get lastCall;
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $DataCheckCopyWith<$Res>? get dataCheck;
  $UserCopyWith<$Res>? get user;
  $HistoryAggregateDataCopyWith<$Res>? get kodasHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get confessionHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get callHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get visitHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get editHistoryAggregate;
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
    Object? dataCheck = freezed,
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
                  as Gender,
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
        dataCheck: freezed == dataCheck
            ? _self.dataCheck
            : dataCheck // ignore: cast_nullable_to_non_nullable
                  as DataCheck?,
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

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShammasLevelCopyWith<$Res>? get shammasLevel {
    if (_self.shammasLevel == null) {
      return null;
    }

    return $ShammasLevelCopyWith<$Res>(_self.shammasLevel!, (value) {
      return _then(_self.copyWith(shammasLevel: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
      return null;
    }

    return $SchoolCopyWith<$Res>(_self.school!, (value) {
      return _then(_self.copyWith(school: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollegeCopyWith<$Res>? get college {
    if (_self.college == null) {
      return null;
    }

    return $CollegeCopyWith<$Res>(_self.college!, (value) {
      return _then(_self.copyWith(college: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChurchCopyWith<$Res>? get church {
    if (_self.church == null) {
      return null;
    }

    return $ChurchCopyWith<$Res>(_self.church!, (value) {
      return _then(_self.copyWith(church: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FatherCopyWith<$Res>? get father {
    if (_self.father == null) {
      return null;
    }

    return $FatherCopyWith<$Res>(_self.father!, (value) {
      return _then(_self.copyWith(father: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobCopyWith<$Res>? get job {
    if (_self.job == null) {
      return null;
    }

    return $JobCopyWith<$Res>(_self.job!, (value) {
      return _then(_self.copyWith(job: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res>? get qualification {
    if (_self.qualification == null) {
      return null;
    }

    return $QualificationCopyWith<$Res>(_self.qualification!, (value) {
      return _then(_self.copyWith(qualification: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonTypeCopyWith<$Res>? get personType {
    if (_self.personType == null) {
      return null;
    }

    return $PersonTypeCopyWith<$Res>(_self.personType!, (value) {
      return _then(_self.copyWith(personType: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonStateCopyWith<$Res>? get state {
    if (_self.state == null) {
      return null;
    }

    return $PersonStateCopyWith<$Res>(_self.state!, (value) {
      return _then(_self.copyWith(state: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChurchCopyWith<$Res>? get servingChurch {
    if (_self.servingChurch == null) {
      return null;
    }

    return $ChurchCopyWith<$Res>(_self.servingChurch!, (value) {
      return _then(_self.copyWith(servingChurch: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<$Res>? get family {
    if (_self.family == null) {
      return null;
    }

    return $FamilyCopyWith<$Res>(_self.family!, (value) {
      return _then(_self.copyWith(family: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_self.store!, (value) {
      return _then(_self.copyWith(store: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get studyYear {
    if (_self.studyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.studyYear!, (value) {
      return _then(_self.copyWith(studyYear: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastConfession {
    if (_self.lastConfession == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastConfession!, (value) {
      return _then(_self.copyWith(lastConfession: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastKodas {
    if (_self.lastKodas == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastKodas!, (value) {
      return _then(_self.copyWith(lastKodas: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastAttendance {
    if (_self.lastAttendance == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastAttendance!, (value) {
      return _then(_self.copyWith(lastAttendance: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastCall {
    if (_self.lastCall == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastCall!, (value) {
      return _then(_self.copyWith(lastCall: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit {
    if (_self.lastVisit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastVisit!, (value) {
      return _then(_self.copyWith(lastVisit: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_self.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastEdit!, (value) {
      return _then(_self.copyWith(lastEdit: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCheckCopyWith<$Res>? get dataCheck {
    if (_self.dataCheck == null) {
      return null;
    }

    return $DataCheckCopyWith<$Res>(_self.dataCheck!, (value) {
      return _then(_self.copyWith(dataCheck: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get kodasHistoryAggregate {
    if (_self.kodasHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(_self.kodasHistoryAggregate!, (
      value,
    ) {
      return _then(_self.copyWith(kodasHistoryAggregate: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate {
    if (_self.attendanceHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
      _self.attendanceHistoryAggregate!,
      (value) {
        return _then(_self.copyWith(attendanceHistoryAggregate: value));
      },
    );
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get confessionHistoryAggregate {
    if (_self.confessionHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
      _self.confessionHistoryAggregate!,
      (value) {
        return _then(_self.copyWith(confessionHistoryAggregate: value));
      },
    );
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get callHistoryAggregate {
    if (_self.callHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(_self.callHistoryAggregate!, (
      value,
    ) {
      return _then(_self.copyWith(callHistoryAggregate: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get visitHistoryAggregate {
    if (_self.visitHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(_self.visitHistoryAggregate!, (
      value,
    ) {
      return _then(_self.copyWith(visitHistoryAggregate: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get editHistoryAggregate {
    if (_self.editHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(_self.editHistoryAggregate!, (
      value,
    ) {
      return _then(_self.copyWith(editHistoryAggregate: value));
    });
  }
}
