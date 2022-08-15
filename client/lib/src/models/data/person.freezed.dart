// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation => throw _privateConstructorUsedError;
  String? get mainPhone => throw _privateConstructorUsedError;
  Map<String, dynamic> get otherPhones => throw _privateConstructorUsedError;
  DateTime? get birthdate => throw _privateConstructorUsedError;
  bool get gender => throw _privateConstructorUsedError;
  bool get isShammas => throw _privateConstructorUsedError;
  String? get shammasLevelId => throw _privateConstructorUsedError;
  ShammasLevel? get shammasLevel => throw _privateConstructorUsedError;
  School? get school => throw _privateConstructorUsedError;
  String? get schoolId => throw _privateConstructorUsedError;
  College? get college => throw _privateConstructorUsedError;
  String? get collegeId => throw _privateConstructorUsedError;
  Church? get church => throw _privateConstructorUsedError;
  String? get churchId => throw _privateConstructorUsedError;
  Father? get father => throw _privateConstructorUsedError;
  String? get fatherId => throw _privateConstructorUsedError;
  bool get isStudent => throw _privateConstructorUsedError;
  Job? get job => throw _privateConstructorUsedError;
  String? get jobId => throw _privateConstructorUsedError;
  String? get jobDescription => throw _privateConstructorUsedError;
  Qualification? get qualification => throw _privateConstructorUsedError;
  String? get qualificationId => throw _privateConstructorUsedError;
  PersonType? get personType => throw _privateConstructorUsedError;
  String? get personTypeId => throw _privateConstructorUsedError;
  PersonState? get state => throw _privateConstructorUsedError;
  String? get stateId => throw _privateConstructorUsedError;
  bool get isServant => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Family? get family => throw _privateConstructorUsedError;
  String? get familyId => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  StudyYear? get studyYear => throw _privateConstructorUsedError;
  int? get studyYearId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastConfession => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastKodas => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastCall => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastVisit => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;
  List<Class>? get classes => throw _privateConstructorUsedError;
  @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
  List<Group>? get groups => throw _privateConstructorUsedError;
  @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
  List<Service>? get services => throw _privateConstructorUsedError;
  List<Area>? get areas => throw _privateConstructorUsedError;
  List<Street>? get streets => throw _privateConstructorUsedError;
  @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
  List<Tag>? get tags => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get kodasHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get confessionHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get callHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get visitHistoryAggregate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
          Point? geolocation,
      String? mainPhone,
      Map<String, dynamic> otherPhones,
      DateTime? birthdate,
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
      String? storeId,
      StudyYear? studyYear,
      int? studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      LastRecordedByInfo? lastConfession,
      LastRecordedByInfo? lastKodas,
      LastRecordedByInfo? lastCall,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit,
      List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
          List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
          List<Service>? services,
      List<Area>? areas,
      List<Street>? streets,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
          List<Tag>? tags,
      User? user,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? kodasHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? confessionHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? callHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? visitHistoryAggregate});

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
  $StudyYearCopyWith<$Res>? get studyYear;
  $LastRecordedByInfoCopyWith<$Res>? get lastConfession;
  $LastRecordedByInfoCopyWith<$Res>? get lastKodas;
  $LastRecordedByInfoCopyWith<$Res>? get lastCall;
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $UserCopyWith<$Res>? get user;
  $AnalysisDataCopyWith<DateTime, $Res>? get kodasHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get confessionHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get callHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get visitHistoryAggregate;
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
    Object? mainPhone = freezed,
    Object? otherPhones = freezed,
    Object? birthdate = freezed,
    Object? gender = freezed,
    Object? isShammas = freezed,
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
    Object? isStudent = freezed,
    Object? job = freezed,
    Object? jobId = freezed,
    Object? jobDescription = freezed,
    Object? qualification = freezed,
    Object? qualificationId = freezed,
    Object? personType = freezed,
    Object? personTypeId = freezed,
    Object? state = freezed,
    Object? stateId = freezed,
    Object? isServant = freezed,
    Object? notes = freezed,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? storeId = freezed,
    Object? studyYear = freezed,
    Object? studyYearId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? lastConfession = freezed,
    Object? lastKodas = freezed,
    Object? lastCall = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? services = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? tags = freezed,
    Object? user = freezed,
    Object? kodasHistoryAggregate = freezed,
    Object? confessionHistoryAggregate = freezed,
    Object? callHistoryAggregate = freezed,
    Object? visitHistoryAggregate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      mainPhone: mainPhone == freezed
          ? _value.mainPhone
          : mainPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPhones: otherPhones == freezed
          ? _value.otherPhones
          : otherPhones // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      isShammas: isShammas == freezed
          ? _value.isShammas
          : isShammas // ignore: cast_nullable_to_non_nullable
              as bool,
      shammasLevelId: shammasLevelId == freezed
          ? _value.shammasLevelId
          : shammasLevelId // ignore: cast_nullable_to_non_nullable
              as String?,
      shammasLevel: shammasLevel == freezed
          ? _value.shammasLevel
          : shammasLevel // ignore: cast_nullable_to_non_nullable
              as ShammasLevel?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as College?,
      collegeId: collegeId == freezed
          ? _value.collegeId
          : collegeId // ignore: cast_nullable_to_non_nullable
              as String?,
      church: church == freezed
          ? _value.church
          : church // ignore: cast_nullable_to_non_nullable
              as Church?,
      churchId: churchId == freezed
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
      father: father == freezed
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as Father?,
      fatherId: fatherId == freezed
          ? _value.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      isStudent: isStudent == freezed
          ? _value.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job?,
      jobId: jobId == freezed
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDescription: jobDescription == freezed
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      qualification: qualification == freezed
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
      qualificationId: qualificationId == freezed
          ? _value.qualificationId
          : qualificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      personType: personType == freezed
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as PersonType?,
      personTypeId: personTypeId == freezed
          ? _value.personTypeId
          : personTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PersonState?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      isServant: isServant == freezed
          ? _value.isServant
          : isServant // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      familyId: familyId == freezed
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      studyYear: studyYear == freezed
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearId: studyYearId == freezed
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastConfession: lastConfession == freezed
          ? _value.lastConfession
          : lastConfession // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastKodas: lastKodas == freezed
          ? _value.lastKodas
          : lastKodas // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastCall: lastCall == freezed
          ? _value.lastCall
          : lastCall // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastVisit: lastVisit == freezed
          ? _value.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastEdit: lastEdit == freezed
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      classes: classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      areas: areas == freezed
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
      streets: streets == freezed
          ? _value.streets
          : streets // ignore: cast_nullable_to_non_nullable
              as List<Street>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      kodasHistoryAggregate: kodasHistoryAggregate == freezed
          ? _value.kodasHistoryAggregate
          : kodasHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      confessionHistoryAggregate: confessionHistoryAggregate == freezed
          ? _value.confessionHistoryAggregate
          : confessionHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      callHistoryAggregate: callHistoryAggregate == freezed
          ? _value.callHistoryAggregate
          : callHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      visitHistoryAggregate: visitHistoryAggregate == freezed
          ? _value.visitHistoryAggregate
          : visitHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
    ));
  }

  @override
  $ShammasLevelCopyWith<$Res>? get shammasLevel {
    if (_value.shammasLevel == null) {
      return null;
    }

    return $ShammasLevelCopyWith<$Res>(_value.shammasLevel!, (value) {
      return _then(_value.copyWith(shammasLevel: value));
    });
  }

  @override
  $SchoolCopyWith<$Res>? get school {
    if (_value.school == null) {
      return null;
    }

    return $SchoolCopyWith<$Res>(_value.school!, (value) {
      return _then(_value.copyWith(school: value));
    });
  }

  @override
  $CollegeCopyWith<$Res>? get college {
    if (_value.college == null) {
      return null;
    }

    return $CollegeCopyWith<$Res>(_value.college!, (value) {
      return _then(_value.copyWith(college: value));
    });
  }

  @override
  $ChurchCopyWith<$Res>? get church {
    if (_value.church == null) {
      return null;
    }

    return $ChurchCopyWith<$Res>(_value.church!, (value) {
      return _then(_value.copyWith(church: value));
    });
  }

  @override
  $FatherCopyWith<$Res>? get father {
    if (_value.father == null) {
      return null;
    }

    return $FatherCopyWith<$Res>(_value.father!, (value) {
      return _then(_value.copyWith(father: value));
    });
  }

  @override
  $JobCopyWith<$Res>? get job {
    if (_value.job == null) {
      return null;
    }

    return $JobCopyWith<$Res>(_value.job!, (value) {
      return _then(_value.copyWith(job: value));
    });
  }

  @override
  $QualificationCopyWith<$Res>? get qualification {
    if (_value.qualification == null) {
      return null;
    }

    return $QualificationCopyWith<$Res>(_value.qualification!, (value) {
      return _then(_value.copyWith(qualification: value));
    });
  }

  @override
  $PersonTypeCopyWith<$Res>? get personType {
    if (_value.personType == null) {
      return null;
    }

    return $PersonTypeCopyWith<$Res>(_value.personType!, (value) {
      return _then(_value.copyWith(personType: value));
    });
  }

  @override
  $PersonStateCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $PersonStateCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value));
    });
  }

  @override
  $FamilyCopyWith<$Res>? get family {
    if (_value.family == null) {
      return null;
    }

    return $FamilyCopyWith<$Res>(_value.family!, (value) {
      return _then(_value.copyWith(family: value));
    });
  }

  @override
  $StudyYearCopyWith<$Res>? get studyYear {
    if (_value.studyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.studyYear!, (value) {
      return _then(_value.copyWith(studyYear: value));
    });
  }

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastConfession {
    if (_value.lastConfession == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastConfession!, (value) {
      return _then(_value.copyWith(lastConfession: value));
    });
  }

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastKodas {
    if (_value.lastKodas == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastKodas!, (value) {
      return _then(_value.copyWith(lastKodas: value));
    });
  }

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastCall {
    if (_value.lastCall == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastCall!, (value) {
      return _then(_value.copyWith(lastCall: value));
    });
  }

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit {
    if (_value.lastVisit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastVisit!, (value) {
      return _then(_value.copyWith(lastVisit: value));
    });
  }

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_value.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastEdit!, (value) {
      return _then(_value.copyWith(lastEdit: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get kodasHistoryAggregate {
    if (_value.kodasHistoryAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(_value.kodasHistoryAggregate!,
        (value) {
      return _then(_value.copyWith(kodasHistoryAggregate: value));
    });
  }

  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get confessionHistoryAggregate {
    if (_value.confessionHistoryAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(
        _value.confessionHistoryAggregate!, (value) {
      return _then(_value.copyWith(confessionHistoryAggregate: value));
    });
  }

  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get callHistoryAggregate {
    if (_value.callHistoryAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(_value.callHistoryAggregate!,
        (value) {
      return _then(_value.copyWith(callHistoryAggregate: value));
    });
  }

  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get visitHistoryAggregate {
    if (_value.visitHistoryAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(_value.visitHistoryAggregate!,
        (value) {
      return _then(_value.copyWith(visitHistoryAggregate: value));
    });
  }
}

/// @nodoc
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
          Point? geolocation,
      String? mainPhone,
      Map<String, dynamic> otherPhones,
      DateTime? birthdate,
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
      String? storeId,
      StudyYear? studyYear,
      int? studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      LastRecordedByInfo? lastConfession,
      LastRecordedByInfo? lastKodas,
      LastRecordedByInfo? lastCall,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit,
      List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
          List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
          List<Service>? services,
      List<Area>? areas,
      List<Street>? streets,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
          List<Tag>? tags,
      User? user,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? kodasHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? confessionHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? callHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? visitHistoryAggregate});

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
  $AnalysisDataCopyWith<DateTime, $Res>? get kodasHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get confessionHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get callHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get visitHistoryAggregate;
}

/// @nodoc
class __$$_PersonCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$$_PersonCopyWith<$Res> {
  __$$_PersonCopyWithImpl(_$_Person _value, $Res Function(_$_Person) _then)
      : super(_value, (v) => _then(v as _$_Person));

  @override
  _$_Person get _value => super._value as _$_Person;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
    Object? mainPhone = freezed,
    Object? otherPhones = freezed,
    Object? birthdate = freezed,
    Object? gender = freezed,
    Object? isShammas = freezed,
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
    Object? isStudent = freezed,
    Object? job = freezed,
    Object? jobId = freezed,
    Object? jobDescription = freezed,
    Object? qualification = freezed,
    Object? qualificationId = freezed,
    Object? personType = freezed,
    Object? personTypeId = freezed,
    Object? state = freezed,
    Object? stateId = freezed,
    Object? isServant = freezed,
    Object? notes = freezed,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? storeId = freezed,
    Object? studyYear = freezed,
    Object? studyYearId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? lastConfession = freezed,
    Object? lastKodas = freezed,
    Object? lastCall = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? services = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? tags = freezed,
    Object? user = freezed,
    Object? kodasHistoryAggregate = freezed,
    Object? confessionHistoryAggregate = freezed,
    Object? callHistoryAggregate = freezed,
    Object? visitHistoryAggregate = freezed,
  }) {
    return _then(_$_Person(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      mainPhone: mainPhone == freezed
          ? _value.mainPhone
          : mainPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPhones: otherPhones == freezed
          ? _value._otherPhones
          : otherPhones // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      isShammas: isShammas == freezed
          ? _value.isShammas
          : isShammas // ignore: cast_nullable_to_non_nullable
              as bool,
      shammasLevelId: shammasLevelId == freezed
          ? _value.shammasLevelId
          : shammasLevelId // ignore: cast_nullable_to_non_nullable
              as String?,
      shammasLevel: shammasLevel == freezed
          ? _value.shammasLevel
          : shammasLevel // ignore: cast_nullable_to_non_nullable
              as ShammasLevel?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as College?,
      collegeId: collegeId == freezed
          ? _value.collegeId
          : collegeId // ignore: cast_nullable_to_non_nullable
              as String?,
      church: church == freezed
          ? _value.church
          : church // ignore: cast_nullable_to_non_nullable
              as Church?,
      churchId: churchId == freezed
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
      father: father == freezed
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as Father?,
      fatherId: fatherId == freezed
          ? _value.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      isStudent: isStudent == freezed
          ? _value.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job?,
      jobId: jobId == freezed
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDescription: jobDescription == freezed
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      qualification: qualification == freezed
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
      qualificationId: qualificationId == freezed
          ? _value.qualificationId
          : qualificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      personType: personType == freezed
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as PersonType?,
      personTypeId: personTypeId == freezed
          ? _value.personTypeId
          : personTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PersonState?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      isServant: isServant == freezed
          ? _value.isServant
          : isServant // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      familyId: familyId == freezed
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      studyYear: studyYear == freezed
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearId: studyYearId == freezed
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastConfession: lastConfession == freezed
          ? _value.lastConfession
          : lastConfession // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastKodas: lastKodas == freezed
          ? _value.lastKodas
          : lastKodas // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastCall: lastCall == freezed
          ? _value.lastCall
          : lastCall // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastVisit: lastVisit == freezed
          ? _value.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastEdit: lastEdit == freezed
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      classes: classes == freezed
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      areas: areas == freezed
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
      streets: streets == freezed
          ? _value._streets
          : streets // ignore: cast_nullable_to_non_nullable
              as List<Street>?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      kodasHistoryAggregate: kodasHistoryAggregate == freezed
          ? _value.kodasHistoryAggregate
          : kodasHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      confessionHistoryAggregate: confessionHistoryAggregate == freezed
          ? _value.confessionHistoryAggregate
          : confessionHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      callHistoryAggregate: callHistoryAggregate == freezed
          ? _value.callHistoryAggregate
          : callHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      visitHistoryAggregate: visitHistoryAggregate == freezed
          ? _value.visitHistoryAggregate
          : visitHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Person extends _Person {
  _$_Person(
      {required this.id,
      required this.name,
      this.address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
          this.geolocation,
      this.mainPhone,
      final Map<String, dynamic> otherPhones = const {},
      this.birthdate,
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
      this.storeId,
      this.studyYear,
      this.studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          this.color,
      this.photoUpdatedAt,
      this.lastConfession,
      this.lastKodas,
      this.lastCall,
      this.lastVisit,
      this.lastEdit,
      final List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
          final List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
          final List<Service>? services,
      final List<Area>? areas,
      final List<Street>? streets,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
          final List<Tag>? tags,
      this.user,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.kodasHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.confessionHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.callHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.visitHistoryAggregate})
      : _otherPhones = otherPhones,
        _classes = classes,
        _groups = groups,
        _services = services,
        _areas = areas,
        _streets = streets,
        _tags = tags,
        super._();

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? address;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  final Point? geolocation;
  @override
  final String? mainPhone;
  final Map<String, dynamic> _otherPhones;
  @override
  @JsonKey()
  Map<String, dynamic> get otherPhones {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_otherPhones);
  }

  @override
  final DateTime? birthdate;
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
  List<Class>? get classes {
    final value = _classes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Group>? _groups;
  @override
  @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Service>? _services;
  @override
  @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Area>? _areas;
  @override
  List<Area>? get areas {
    final value = _areas;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Street>? _streets;
  @override
  List<Street>? get streets {
    final value = _streets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Tag>? _tags;
  @override
  @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? user;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? kodasHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? confessionHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? callHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? visitHistoryAggregate;

  @override
  String toString() {
    return 'Person(id: $id, name: $name, address: $address, geolocation: $geolocation, mainPhone: $mainPhone, otherPhones: $otherPhones, birthdate: $birthdate, gender: $gender, isShammas: $isShammas, shammasLevelId: $shammasLevelId, shammasLevel: $shammasLevel, school: $school, schoolId: $schoolId, college: $college, collegeId: $collegeId, church: $church, churchId: $churchId, father: $father, fatherId: $fatherId, isStudent: $isStudent, job: $job, jobId: $jobId, jobDescription: $jobDescription, qualification: $qualification, qualificationId: $qualificationId, personType: $personType, personTypeId: $personTypeId, state: $state, stateId: $stateId, isServant: $isServant, notes: $notes, family: $family, familyId: $familyId, storeId: $storeId, studyYear: $studyYear, studyYearId: $studyYearId, color: $color, photoUpdatedAt: $photoUpdatedAt, lastConfession: $lastConfession, lastKodas: $lastKodas, lastCall: $lastCall, lastVisit: $lastVisit, lastEdit: $lastEdit, classes: $classes, groups: $groups, services: $services, areas: $areas, streets: $streets, tags: $tags, user: $user, kodasHistoryAggregate: $kodasHistoryAggregate, confessionHistoryAggregate: $confessionHistoryAggregate, callHistoryAggregate: $callHistoryAggregate, visitHistoryAggregate: $visitHistoryAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.geolocation, geolocation) &&
            const DeepCollectionEquality().equals(other.mainPhone, mainPhone) &&
            const DeepCollectionEquality()
                .equals(other._otherPhones, _otherPhones) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.isShammas, isShammas) &&
            const DeepCollectionEquality()
                .equals(other.shammasLevelId, shammasLevelId) &&
            const DeepCollectionEquality()
                .equals(other.shammasLevel, shammasLevel) &&
            const DeepCollectionEquality().equals(other.school, school) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.collegeId, collegeId) &&
            const DeepCollectionEquality().equals(other.church, church) &&
            const DeepCollectionEquality().equals(other.churchId, churchId) &&
            const DeepCollectionEquality().equals(other.father, father) &&
            const DeepCollectionEquality().equals(other.fatherId, fatherId) &&
            const DeepCollectionEquality().equals(other.isStudent, isStudent) &&
            const DeepCollectionEquality().equals(other.job, job) &&
            const DeepCollectionEquality().equals(other.jobId, jobId) &&
            const DeepCollectionEquality()
                .equals(other.jobDescription, jobDescription) &&
            const DeepCollectionEquality()
                .equals(other.qualification, qualification) &&
            const DeepCollectionEquality()
                .equals(other.qualificationId, qualificationId) &&
            const DeepCollectionEquality()
                .equals(other.personType, personType) &&
            const DeepCollectionEquality()
                .equals(other.personTypeId, personTypeId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.isServant, isServant) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.familyId, familyId) &&
            const DeepCollectionEquality().equals(other.storeId, storeId) &&
            const DeepCollectionEquality().equals(other.studyYear, studyYear) &&
            const DeepCollectionEquality()
                .equals(other.studyYearId, studyYearId) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.photoUpdatedAt, photoUpdatedAt) &&
            const DeepCollectionEquality()
                .equals(other.lastConfession, lastConfession) &&
            const DeepCollectionEquality().equals(other.lastKodas, lastKodas) &&
            const DeepCollectionEquality().equals(other.lastCall, lastCall) &&
            const DeepCollectionEquality().equals(other.lastVisit, lastVisit) &&
            const DeepCollectionEquality().equals(other.lastEdit, lastEdit) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._streets, _streets) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.kodasHistoryAggregate, kodasHistoryAggregate) &&
            const DeepCollectionEquality().equals(
                other.confessionHistoryAggregate, confessionHistoryAggregate) &&
            const DeepCollectionEquality()
                .equals(other.callHistoryAggregate, callHistoryAggregate) &&
            const DeepCollectionEquality()
                .equals(other.visitHistoryAggregate, visitHistoryAggregate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(geolocation),
        const DeepCollectionEquality().hash(mainPhone),
        const DeepCollectionEquality().hash(_otherPhones),
        const DeepCollectionEquality().hash(birthdate),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(isShammas),
        const DeepCollectionEquality().hash(shammasLevelId),
        const DeepCollectionEquality().hash(shammasLevel),
        const DeepCollectionEquality().hash(school),
        const DeepCollectionEquality().hash(schoolId),
        const DeepCollectionEquality().hash(college),
        const DeepCollectionEquality().hash(collegeId),
        const DeepCollectionEquality().hash(church),
        const DeepCollectionEquality().hash(churchId),
        const DeepCollectionEquality().hash(father),
        const DeepCollectionEquality().hash(fatherId),
        const DeepCollectionEquality().hash(isStudent),
        const DeepCollectionEquality().hash(job),
        const DeepCollectionEquality().hash(jobId),
        const DeepCollectionEquality().hash(jobDescription),
        const DeepCollectionEquality().hash(qualification),
        const DeepCollectionEquality().hash(qualificationId),
        const DeepCollectionEquality().hash(personType),
        const DeepCollectionEquality().hash(personTypeId),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(stateId),
        const DeepCollectionEquality().hash(isServant),
        const DeepCollectionEquality().hash(notes),
        const DeepCollectionEquality().hash(family),
        const DeepCollectionEquality().hash(familyId),
        const DeepCollectionEquality().hash(storeId),
        const DeepCollectionEquality().hash(studyYear),
        const DeepCollectionEquality().hash(studyYearId),
        const DeepCollectionEquality().hash(color),
        const DeepCollectionEquality().hash(photoUpdatedAt),
        const DeepCollectionEquality().hash(lastConfession),
        const DeepCollectionEquality().hash(lastKodas),
        const DeepCollectionEquality().hash(lastCall),
        const DeepCollectionEquality().hash(lastVisit),
        const DeepCollectionEquality().hash(lastEdit),
        const DeepCollectionEquality().hash(_classes),
        const DeepCollectionEquality().hash(_groups),
        const DeepCollectionEquality().hash(_services),
        const DeepCollectionEquality().hash(_areas),
        const DeepCollectionEquality().hash(_streets),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(kodasHistoryAggregate),
        const DeepCollectionEquality().hash(confessionHistoryAggregate),
        const DeepCollectionEquality().hash(callHistoryAggregate),
        const DeepCollectionEquality().hash(visitHistoryAggregate)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToJson(
      this,
    );
  }
}

abstract class _Person extends Person {
  factory _Person(
      {required final String id,
      required final String name,
      final String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
          final Point? geolocation,
      final String? mainPhone,
      final Map<String, dynamic> otherPhones,
      final DateTime? birthdate,
      final bool gender,
      final bool isShammas,
      final String? shammasLevelId,
      final ShammasLevel? shammasLevel,
      final School? school,
      final String? schoolId,
      final College? college,
      final String? collegeId,
      final Church? church,
      final String? churchId,
      final Father? father,
      final String? fatherId,
      final bool isStudent,
      final Job? job,
      final String? jobId,
      final String? jobDescription,
      final Qualification? qualification,
      final String? qualificationId,
      final PersonType? personType,
      final String? personTypeId,
      final PersonState? state,
      final String? stateId,
      final bool isServant,
      final String? notes,
      final Family? family,
      final String? familyId,
      final String? storeId,
      final StudyYear? studyYear,
      final int? studyYearId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt,
      final LastRecordedByInfo? lastConfession,
      final LastRecordedByInfo? lastKodas,
      final LastRecordedByInfo? lastCall,
      final LastRecordedByInfo? lastVisit,
      final LastRecordedByInfo? lastEdit,
      final List<Class>? classes,
      @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
          final List<Group>? groups,
      @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
          final List<Service>? services,
      final List<Area>? areas,
      final List<Street>? streets,
      @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
          final List<Tag>? tags,
      final User? user,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? kodasHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? confessionHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? callHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? visitHistoryAggregate}) = _$_Person;
  _Person._() : super._();

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get address;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation;
  @override
  String? get mainPhone;
  @override
  Map<String, dynamic> get otherPhones;
  @override
  DateTime? get birthdate;
  @override
  bool get gender;
  @override
  bool get isShammas;
  @override
  String? get shammasLevelId;
  @override
  ShammasLevel? get shammasLevel;
  @override
  School? get school;
  @override
  String? get schoolId;
  @override
  College? get college;
  @override
  String? get collegeId;
  @override
  Church? get church;
  @override
  String? get churchId;
  @override
  Father? get father;
  @override
  String? get fatherId;
  @override
  bool get isStudent;
  @override
  Job? get job;
  @override
  String? get jobId;
  @override
  String? get jobDescription;
  @override
  Qualification? get qualification;
  @override
  String? get qualificationId;
  @override
  PersonType? get personType;
  @override
  String? get personTypeId;
  @override
  PersonState? get state;
  @override
  String? get stateId;
  @override
  bool get isServant;
  @override
  String? get notes;
  @override
  Family? get family;
  @override
  String? get familyId;
  @override
  String? get storeId;
  @override
  StudyYear? get studyYear;
  @override
  int? get studyYearId;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  LastRecordedByInfo? get lastConfession;
  @override
  LastRecordedByInfo? get lastKodas;
  @override
  LastRecordedByInfo? get lastCall;
  @override
  LastRecordedByInfo? get lastVisit;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  List<Class>? get classes;
  @override
  @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
  List<Group>? get groups;
  @override
  @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
  List<Service>? get services;
  @override
  List<Area>? get areas;
  @override
  List<Street>? get streets;
  @override
  @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
  List<Tag>? get tags;
  @override
  User? get user;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get kodasHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get confessionHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get callHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get visitHistoryAggregate;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      throw _privateConstructorUsedError;
}
