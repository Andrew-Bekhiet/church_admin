// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Person {
  String get id;
  String get name;
  Address? get address;
  String? get mainPhone;
  Json get otherPhones;
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
  bool get isStudent;
  Job? get job;
  String? get jobId;
  String? get jobDescription;
  Qualification? get qualification;
  String? get qualificationId;
  PersonType? get personType;
  String? get personTypeId;
  PersonState? get state;
  String? get stateId;
  bool get isServant;
  String? get notes;
  Family? get family;
  String? get familyId;
  Store? get store;
  String? get storeId;
  StudyYear? get studyYear;
  int? get studyYearId;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  LastRecordedByInfo? get lastConfession;
  LastRecordedByInfo? get lastKodas;
  LastRecordedByInfo? get lastCall;
  LastRecordedByInfo? get lastVisit;
  LastRecordedByInfo? get lastEdit;
  @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
  List<Class>? get classes;
  @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
  List<Group>? get groups;
  @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
  List<Service>? get services;
  @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
  List<Tag>? get tags;
  @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
  List<Hobby>? get hobbies;
  User? get user;
  List<LastRecordedByInfo>? get kodasHistory;
  List<LastRecordedByInfo>? get confessionHistory;
  List<LastRecordedByInfo>? get callHistory;
  List<LastRecordedByInfo>? get visitHistory;
  List<LastRecordedByInfo>? get editHistory;
  HistoryAggregateData? get kodasHistoryAggregate;
  HistoryAggregateData? get confessionHistoryAggregate;
  HistoryAggregateData? get callHistoryAggregate;
  HistoryAggregateData? get visitHistoryAggregate;
  HistoryAggregateData? get editHistoryAggregate;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonCopyWith<Person> get copyWith =>
      _$PersonCopyWithImpl<Person>(this as Person, _$identity);

  /// Serializes this Person to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Person &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhone, mainPhone) ||
                other.mainPhone == mainPhone) &&
            const DeepCollectionEquality()
                .equals(other.otherPhones, otherPhones) &&
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
            (identical(other.isStudent, isStudent) ||
                other.isStudent == isStudent) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.qualificationId, qualificationId) ||
                other.qualificationId == qualificationId) &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.personTypeId, personTypeId) ||
                other.personTypeId == personTypeId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.isServant, isServant) ||
                other.isServant == isServant) &&
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
            const DeepCollectionEquality()
                .equals(other.kodasHistory, kodasHistory) &&
            const DeepCollectionEquality()
                .equals(other.confessionHistory, confessionHistory) &&
            const DeepCollectionEquality()
                .equals(other.callHistory, callHistory) &&
            const DeepCollectionEquality()
                .equals(other.visitHistory, visitHistory) &&
            const DeepCollectionEquality()
                .equals(other.editHistory, editHistory) &&
            (identical(other.kodasHistoryAggregate, kodasHistoryAggregate) ||
                other.kodasHistoryAggregate == kodasHistoryAggregate) &&
            (identical(other.confessionHistoryAggregate,
                    confessionHistoryAggregate) ||
                other.confessionHistoryAggregate ==
                    confessionHistoryAggregate) &&
            (identical(other.callHistoryAggregate, callHistoryAggregate) ||
                other.callHistoryAggregate == callHistoryAggregate) &&
            (identical(other.visitHistoryAggregate, visitHistoryAggregate) ||
                other.visitHistoryAggregate == visitHistoryAggregate) &&
            (identical(other.editHistoryAggregate, editHistoryAggregate) ||
                other.editHistoryAggregate == editHistoryAggregate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        address,
        mainPhone,
        const DeepCollectionEquality().hash(otherPhones),
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
        isStudent,
        job,
        jobId,
        jobDescription,
        qualification,
        qualificationId,
        personType,
        personTypeId,
        state,
        stateId,
        isServant,
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
        lastCall,
        lastVisit,
        lastEdit,
        const DeepCollectionEquality().hash(classes),
        const DeepCollectionEquality().hash(groups),
        const DeepCollectionEquality().hash(services),
        const DeepCollectionEquality().hash(tags),
        const DeepCollectionEquality().hash(hobbies),
        user,
        const DeepCollectionEquality().hash(kodasHistory),
        const DeepCollectionEquality().hash(confessionHistory),
        const DeepCollectionEquality().hash(callHistory),
        const DeepCollectionEquality().hash(visitHistory),
        const DeepCollectionEquality().hash(editHistory),
        kodasHistoryAggregate,
        confessionHistoryAggregate,
        callHistoryAggregate,
        visitHistoryAggregate,
        editHistoryAggregate
      ]);

  @override
  String toString() {
    return 'Person(id: $id, name: $name, address: $address, mainPhone: $mainPhone, otherPhones: $otherPhones, birthdate: $birthdate, birthday: $birthday, gender: $gender, isShammas: $isShammas, shammasLevelId: $shammasLevelId, shammasLevel: $shammasLevel, school: $school, schoolId: $schoolId, college: $college, collegeId: $collegeId, church: $church, churchId: $churchId, father: $father, fatherId: $fatherId, isStudent: $isStudent, job: $job, jobId: $jobId, jobDescription: $jobDescription, qualification: $qualification, qualificationId: $qualificationId, personType: $personType, personTypeId: $personTypeId, state: $state, stateId: $stateId, isServant: $isServant, notes: $notes, family: $family, familyId: $familyId, store: $store, storeId: $storeId, studyYear: $studyYear, studyYearId: $studyYearId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, lastConfession: $lastConfession, lastKodas: $lastKodas, lastCall: $lastCall, lastVisit: $lastVisit, lastEdit: $lastEdit, classes: $classes, groups: $groups, services: $services, tags: $tags, hobbies: $hobbies, user: $user, kodasHistory: $kodasHistory, confessionHistory: $confessionHistory, callHistory: $callHistory, visitHistory: $visitHistory, editHistory: $editHistory, kodasHistoryAggregate: $kodasHistoryAggregate, confessionHistoryAggregate: $confessionHistoryAggregate, callHistoryAggregate: $callHistoryAggregate, visitHistoryAggregate: $visitHistoryAggregate, editHistoryAggregate: $editHistoryAggregate)';
  }
}

/// @nodoc
abstract mixin class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) _then) =
      _$PersonCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      String? mainPhone,
      Json otherPhones,
      DateTime? birthdate,
      String? birthday,
      bool gender,
      bool isShammas,
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
      bool isStudent,
      Job? job,
      String? jobId,
      String? jobDescription,
      Qualification? qualification,
      String? qualificationId,
      PersonType? personType,
      String? personTypeId,
      PersonState? state,
      String? stateId,
      bool isServant,
      String? notes,
      Family? family,
      String? familyId,
      Store? store,
      String? storeId,
      StudyYear? studyYear,
      int? studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      LastRecordedByInfo? lastConfession,
      LastRecordedByInfo? lastKodas,
      LastRecordedByInfo? lastCall,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
      List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
      List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
      List<Service>? services,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
      List<Tag>? tags,
      @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
      List<Hobby>? hobbies,
      User? user,
      List<LastRecordedByInfo>? kodasHistory,
      List<LastRecordedByInfo>? confessionHistory,
      List<LastRecordedByInfo>? callHistory,
      List<LastRecordedByInfo>? visitHistory,
      List<LastRecordedByInfo>? editHistory,
      HistoryAggregateData? kodasHistoryAggregate,
      HistoryAggregateData? confessionHistoryAggregate,
      HistoryAggregateData? callHistoryAggregate,
      HistoryAggregateData? visitHistoryAggregate,
      HistoryAggregateData? editHistoryAggregate});

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
  $FamilyCopyWith<$Res>? get family;
  $StoreCopyWith<$Res>? get store;
  $StudyYearCopyWith<$Res>? get studyYear;
  $LastRecordedByInfoCopyWith<$Res>? get lastConfession;
  $LastRecordedByInfoCopyWith<$Res>? get lastKodas;
  $LastRecordedByInfoCopyWith<$Res>? get lastCall;
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $UserCopyWith<$Res>? get user;
  $HistoryAggregateDataCopyWith<$Res>? get kodasHistoryAggregate;
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
    Object? address = freezed,
    Object? mainPhone = freezed,
    Object? otherPhones = null,
    Object? birthdate = freezed,
    Object? birthday = freezed,
    Object? gender = null,
    Object? isShammas = null,
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
    Object? isStudent = null,
    Object? job = freezed,
    Object? jobId = freezed,
    Object? jobDescription = freezed,
    Object? qualification = freezed,
    Object? qualificationId = freezed,
    Object? personType = freezed,
    Object? personTypeId = freezed,
    Object? state = freezed,
    Object? stateId = freezed,
    Object? isServant = null,
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
    Object? lastCall = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? services = freezed,
    Object? tags = freezed,
    Object? hobbies = freezed,
    Object? user = freezed,
    Object? kodasHistory = freezed,
    Object? confessionHistory = freezed,
    Object? callHistory = freezed,
    Object? visitHistory = freezed,
    Object? editHistory = freezed,
    Object? kodasHistoryAggregate = freezed,
    Object? confessionHistoryAggregate = freezed,
    Object? callHistoryAggregate = freezed,
    Object? visitHistoryAggregate = freezed,
    Object? editHistoryAggregate = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      mainPhone: freezed == mainPhone
          ? _self.mainPhone
          : mainPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPhones: null == otherPhones
          ? _self.otherPhones
          : otherPhones // ignore: cast_nullable_to_non_nullable
              as Json,
      birthdate: freezed == birthdate
          ? _self.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthday: freezed == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      isShammas: null == isShammas
          ? _self.isShammas
          : isShammas // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isStudent: null == isStudent
          ? _self.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isServant: null == isServant
          ? _self.isServant
          : isServant // ignore: cast_nullable_to_non_nullable
              as bool,
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
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      kodasHistory: freezed == kodasHistory
          ? _self.kodasHistory
          : kodasHistory // ignore: cast_nullable_to_non_nullable
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
    ));
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

    return $HistoryAggregateDataCopyWith<$Res>(_self.kodasHistoryAggregate!,
        (value) {
      return _then(_self.copyWith(kodasHistoryAggregate: value));
    });
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
        _self.confessionHistoryAggregate!, (value) {
      return _then(_self.copyWith(confessionHistoryAggregate: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get callHistoryAggregate {
    if (_self.callHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(_self.callHistoryAggregate!,
        (value) {
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

    return $HistoryAggregateDataCopyWith<$Res>(_self.visitHistoryAggregate!,
        (value) {
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

    return $HistoryAggregateDataCopyWith<$Res>(_self.editHistoryAggregate!,
        (value) {
      return _then(_self.copyWith(editHistoryAggregate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Person extends Person {
  _Person(
      {required this.id,
      required this.name,
      this.address,
      this.mainPhone,
      final Json otherPhones = const {},
      this.birthdate,
      this.birthday,
      this.gender = true,
      this.isShammas = false,
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
      this.isStudent = false,
      this.job,
      this.jobId,
      this.jobDescription,
      this.qualification,
      this.qualificationId,
      this.personType,
      this.personTypeId,
      this.state,
      this.stateId,
      this.isServant = false,
      this.notes,
      this.family,
      this.familyId,
      this.store,
      this.storeId,
      this.studyYear,
      this.studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      this.lastConfession,
      this.lastKodas,
      this.lastCall,
      this.lastVisit,
      this.lastEdit,
      @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
      final List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
      final List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
      final List<Service>? services,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
      final List<Tag>? tags,
      @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
      final List<Hobby>? hobbies,
      this.user,
      final List<LastRecordedByInfo>? kodasHistory,
      final List<LastRecordedByInfo>? confessionHistory,
      final List<LastRecordedByInfo>? callHistory,
      final List<LastRecordedByInfo>? visitHistory,
      final List<LastRecordedByInfo>? editHistory,
      this.kodasHistoryAggregate,
      this.confessionHistoryAggregate,
      this.callHistoryAggregate,
      this.visitHistoryAggregate,
      this.editHistoryAggregate})
      : _otherPhones = otherPhones,
        _classes = classes,
        _groups = groups,
        _services = services,
        _tags = tags,
        _hobbies = hobbies,
        _kodasHistory = kodasHistory,
        _confessionHistory = confessionHistory,
        _callHistory = callHistory,
        _visitHistory = visitHistory,
        _editHistory = editHistory,
        super._();
  factory _Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Address? address;
  @override
  final String? mainPhone;
  final Json _otherPhones;
  @override
  @JsonKey()
  Json get otherPhones {
    if (_otherPhones is EqualUnmodifiableMapView) return _otherPhones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_otherPhones);
  }

  @override
  final DateTime? birthdate;
  @override
  final String? birthday;
  @override
  @JsonKey()
  final bool gender;
  @override
  @JsonKey()
  final bool isShammas;
  @override
  final String? shammasLevelId;
  @override
  final ShammasLevel? shammasLevel;
  @override
  final School? school;
  @override
  final String? schoolId;
  @override
  final College? college;
  @override
  final String? collegeId;
  @override
  final Church? church;
  @override
  final String? churchId;
  @override
  final Father? father;
  @override
  final String? fatherId;
  @override
  @JsonKey()
  final bool isStudent;
  @override
  final Job? job;
  @override
  final String? jobId;
  @override
  final String? jobDescription;
  @override
  final Qualification? qualification;
  @override
  final String? qualificationId;
  @override
  final PersonType? personType;
  @override
  final String? personTypeId;
  @override
  final PersonState? state;
  @override
  final String? stateId;
  @override
  @JsonKey()
  final bool isServant;
  @override
  final String? notes;
  @override
  final Family? family;
  @override
  final String? familyId;
  @override
  final Store? store;
  @override
  final String? storeId;
  @override
  final StudyYear? studyYear;
  @override
  final int? studyYearId;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  final LastRecordedByInfo? lastConfession;
  @override
  final LastRecordedByInfo? lastKodas;
  @override
  final LastRecordedByInfo? lastCall;
  @override
  final LastRecordedByInfo? lastVisit;
  @override
  final LastRecordedByInfo? lastEdit;
  final List<Class>? _classes;
  @override
  @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
  List<Class>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Group>? _groups;
  @override
  @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Service>? _services;
  @override
  @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Tag>? _tags;
  @override
  @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Hobby>? _hobbies;
  @override
  @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
  List<Hobby>? get hobbies {
    final value = _hobbies;
    if (value == null) return null;
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? user;
  final List<LastRecordedByInfo>? _kodasHistory;
  @override
  List<LastRecordedByInfo>? get kodasHistory {
    final value = _kodasHistory;
    if (value == null) return null;
    if (_kodasHistory is EqualUnmodifiableListView) return _kodasHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LastRecordedByInfo>? _confessionHistory;
  @override
  List<LastRecordedByInfo>? get confessionHistory {
    final value = _confessionHistory;
    if (value == null) return null;
    if (_confessionHistory is EqualUnmodifiableListView)
      return _confessionHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LastRecordedByInfo>? _callHistory;
  @override
  List<LastRecordedByInfo>? get callHistory {
    final value = _callHistory;
    if (value == null) return null;
    if (_callHistory is EqualUnmodifiableListView) return _callHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LastRecordedByInfo>? _visitHistory;
  @override
  List<LastRecordedByInfo>? get visitHistory {
    final value = _visitHistory;
    if (value == null) return null;
    if (_visitHistory is EqualUnmodifiableListView) return _visitHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LastRecordedByInfo>? _editHistory;
  @override
  List<LastRecordedByInfo>? get editHistory {
    final value = _editHistory;
    if (value == null) return null;
    if (_editHistory is EqualUnmodifiableListView) return _editHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HistoryAggregateData? kodasHistoryAggregate;
  @override
  final HistoryAggregateData? confessionHistoryAggregate;
  @override
  final HistoryAggregateData? callHistoryAggregate;
  @override
  final HistoryAggregateData? visitHistoryAggregate;
  @override
  final HistoryAggregateData? editHistoryAggregate;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PersonCopyWith<_Person> get copyWith =>
      __$PersonCopyWithImpl<_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PersonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Person &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhone, mainPhone) ||
                other.mainPhone == mainPhone) &&
            const DeepCollectionEquality()
                .equals(other._otherPhones, _otherPhones) &&
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
            (identical(other.isStudent, isStudent) ||
                other.isStudent == isStudent) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.qualificationId, qualificationId) ||
                other.qualificationId == qualificationId) &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.personTypeId, personTypeId) ||
                other.personTypeId == personTypeId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.isServant, isServant) ||
                other.isServant == isServant) &&
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
            (identical(other.lastCall, lastCall) ||
                other.lastCall == lastCall) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._kodasHistory, _kodasHistory) &&
            const DeepCollectionEquality()
                .equals(other._confessionHistory, _confessionHistory) &&
            const DeepCollectionEquality()
                .equals(other._callHistory, _callHistory) &&
            const DeepCollectionEquality()
                .equals(other._visitHistory, _visitHistory) &&
            const DeepCollectionEquality()
                .equals(other._editHistory, _editHistory) &&
            (identical(other.kodasHistoryAggregate, kodasHistoryAggregate) ||
                other.kodasHistoryAggregate == kodasHistoryAggregate) &&
            (identical(other.confessionHistoryAggregate,
                    confessionHistoryAggregate) ||
                other.confessionHistoryAggregate ==
                    confessionHistoryAggregate) &&
            (identical(other.callHistoryAggregate, callHistoryAggregate) ||
                other.callHistoryAggregate == callHistoryAggregate) &&
            (identical(other.visitHistoryAggregate, visitHistoryAggregate) ||
                other.visitHistoryAggregate == visitHistoryAggregate) &&
            (identical(other.editHistoryAggregate, editHistoryAggregate) ||
                other.editHistoryAggregate == editHistoryAggregate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        address,
        mainPhone,
        const DeepCollectionEquality().hash(_otherPhones),
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
        isStudent,
        job,
        jobId,
        jobDescription,
        qualification,
        qualificationId,
        personType,
        personTypeId,
        state,
        stateId,
        isServant,
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
        lastCall,
        lastVisit,
        lastEdit,
        const DeepCollectionEquality().hash(_classes),
        const DeepCollectionEquality().hash(_groups),
        const DeepCollectionEquality().hash(_services),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_hobbies),
        user,
        const DeepCollectionEquality().hash(_kodasHistory),
        const DeepCollectionEquality().hash(_confessionHistory),
        const DeepCollectionEquality().hash(_callHistory),
        const DeepCollectionEquality().hash(_visitHistory),
        const DeepCollectionEquality().hash(_editHistory),
        kodasHistoryAggregate,
        confessionHistoryAggregate,
        callHistoryAggregate,
        visitHistoryAggregate,
        editHistoryAggregate
      ]);

  @override
  String toString() {
    return 'Person(id: $id, name: $name, address: $address, mainPhone: $mainPhone, otherPhones: $otherPhones, birthdate: $birthdate, birthday: $birthday, gender: $gender, isShammas: $isShammas, shammasLevelId: $shammasLevelId, shammasLevel: $shammasLevel, school: $school, schoolId: $schoolId, college: $college, collegeId: $collegeId, church: $church, churchId: $churchId, father: $father, fatherId: $fatherId, isStudent: $isStudent, job: $job, jobId: $jobId, jobDescription: $jobDescription, qualification: $qualification, qualificationId: $qualificationId, personType: $personType, personTypeId: $personTypeId, state: $state, stateId: $stateId, isServant: $isServant, notes: $notes, family: $family, familyId: $familyId, store: $store, storeId: $storeId, studyYear: $studyYear, studyYearId: $studyYearId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, lastConfession: $lastConfession, lastKodas: $lastKodas, lastCall: $lastCall, lastVisit: $lastVisit, lastEdit: $lastEdit, classes: $classes, groups: $groups, services: $services, tags: $tags, hobbies: $hobbies, user: $user, kodasHistory: $kodasHistory, confessionHistory: $confessionHistory, callHistory: $callHistory, visitHistory: $visitHistory, editHistory: $editHistory, kodasHistoryAggregate: $kodasHistoryAggregate, confessionHistoryAggregate: $confessionHistoryAggregate, callHistoryAggregate: $callHistoryAggregate, visitHistoryAggregate: $visitHistoryAggregate, editHistoryAggregate: $editHistoryAggregate)';
  }
}

/// @nodoc
abstract mixin class _$PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$PersonCopyWith(_Person value, $Res Function(_Person) _then) =
      __$PersonCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      String? mainPhone,
      Json otherPhones,
      DateTime? birthdate,
      String? birthday,
      bool gender,
      bool isShammas,
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
      bool isStudent,
      Job? job,
      String? jobId,
      String? jobDescription,
      Qualification? qualification,
      String? qualificationId,
      PersonType? personType,
      String? personTypeId,
      PersonState? state,
      String? stateId,
      bool isServant,
      String? notes,
      Family? family,
      String? familyId,
      Store? store,
      String? storeId,
      StudyYear? studyYear,
      int? studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      LastRecordedByInfo? lastConfession,
      LastRecordedByInfo? lastKodas,
      LastRecordedByInfo? lastCall,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
      List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
      List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
      List<Service>? services,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
      List<Tag>? tags,
      @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
      List<Hobby>? hobbies,
      User? user,
      List<LastRecordedByInfo>? kodasHistory,
      List<LastRecordedByInfo>? confessionHistory,
      List<LastRecordedByInfo>? callHistory,
      List<LastRecordedByInfo>? visitHistory,
      List<LastRecordedByInfo>? editHistory,
      HistoryAggregateData? kodasHistoryAggregate,
      HistoryAggregateData? confessionHistoryAggregate,
      HistoryAggregateData? callHistoryAggregate,
      HistoryAggregateData? visitHistoryAggregate,
      HistoryAggregateData? editHistoryAggregate});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ShammasLevelCopyWith<$Res>? get shammasLevel;
  @override
  $SchoolCopyWith<$Res>? get school;
  @override
  $CollegeCopyWith<$Res>? get college;
  @override
  $ChurchCopyWith<$Res>? get church;
  @override
  $FatherCopyWith<$Res>? get father;
  @override
  $JobCopyWith<$Res>? get job;
  @override
  $QualificationCopyWith<$Res>? get qualification;
  @override
  $PersonTypeCopyWith<$Res>? get personType;
  @override
  $PersonStateCopyWith<$Res>? get state;
  @override
  $FamilyCopyWith<$Res>? get family;
  @override
  $StoreCopyWith<$Res>? get store;
  @override
  $StudyYearCopyWith<$Res>? get studyYear;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastConfession;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastKodas;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastCall;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get kodasHistoryAggregate;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get confessionHistoryAggregate;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get callHistoryAggregate;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get visitHistoryAggregate;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get editHistoryAggregate;
}

/// @nodoc
class __$PersonCopyWithImpl<$Res> implements _$PersonCopyWith<$Res> {
  __$PersonCopyWithImpl(this._self, this._then);

  final _Person _self;
  final $Res Function(_Person) _then;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? mainPhone = freezed,
    Object? otherPhones = null,
    Object? birthdate = freezed,
    Object? birthday = freezed,
    Object? gender = null,
    Object? isShammas = null,
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
    Object? isStudent = null,
    Object? job = freezed,
    Object? jobId = freezed,
    Object? jobDescription = freezed,
    Object? qualification = freezed,
    Object? qualificationId = freezed,
    Object? personType = freezed,
    Object? personTypeId = freezed,
    Object? state = freezed,
    Object? stateId = freezed,
    Object? isServant = null,
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
    Object? lastCall = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? services = freezed,
    Object? tags = freezed,
    Object? hobbies = freezed,
    Object? user = freezed,
    Object? kodasHistory = freezed,
    Object? confessionHistory = freezed,
    Object? callHistory = freezed,
    Object? visitHistory = freezed,
    Object? editHistory = freezed,
    Object? kodasHistoryAggregate = freezed,
    Object? confessionHistoryAggregate = freezed,
    Object? callHistoryAggregate = freezed,
    Object? visitHistoryAggregate = freezed,
    Object? editHistoryAggregate = freezed,
  }) {
    return _then(_Person(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      mainPhone: freezed == mainPhone
          ? _self.mainPhone
          : mainPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPhones: null == otherPhones
          ? _self._otherPhones
          : otherPhones // ignore: cast_nullable_to_non_nullable
              as Json,
      birthdate: freezed == birthdate
          ? _self.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthday: freezed == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      isShammas: null == isShammas
          ? _self.isShammas
          : isShammas // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isStudent: null == isStudent
          ? _self.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isServant: null == isServant
          ? _self.isServant
          : isServant // ignore: cast_nullable_to_non_nullable
              as bool,
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
          ? _self._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: freezed == groups
          ? _self._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      services: freezed == services
          ? _self._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      hobbies: freezed == hobbies
          ? _self._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Hobby>?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      kodasHistory: freezed == kodasHistory
          ? _self._kodasHistory
          : kodasHistory // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>?,
      confessionHistory: freezed == confessionHistory
          ? _self._confessionHistory
          : confessionHistory // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>?,
      callHistory: freezed == callHistory
          ? _self._callHistory
          : callHistory // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>?,
      visitHistory: freezed == visitHistory
          ? _self._visitHistory
          : visitHistory // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>?,
      editHistory: freezed == editHistory
          ? _self._editHistory
          : editHistory // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>?,
      kodasHistoryAggregate: freezed == kodasHistoryAggregate
          ? _self.kodasHistoryAggregate
          : kodasHistoryAggregate // ignore: cast_nullable_to_non_nullable
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
    ));
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

    return $HistoryAggregateDataCopyWith<$Res>(_self.kodasHistoryAggregate!,
        (value) {
      return _then(_self.copyWith(kodasHistoryAggregate: value));
    });
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
        _self.confessionHistoryAggregate!, (value) {
      return _then(_self.copyWith(confessionHistoryAggregate: value));
    });
  }

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get callHistoryAggregate {
    if (_self.callHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(_self.callHistoryAggregate!,
        (value) {
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

    return $HistoryAggregateDataCopyWith<$Res>(_self.visitHistoryAggregate!,
        (value) {
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

    return $HistoryAggregateDataCopyWith<$Res>(_self.editHistoryAggregate!,
        (value) {
      return _then(_self.copyWith(editHistoryAggregate: value));
    });
  }
}

// dart format on
