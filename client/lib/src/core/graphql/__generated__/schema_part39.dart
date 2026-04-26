// Part 39 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsBoolExp<TRes> {
  factory CopyWith_Input_PersonsBoolExp(
    Input_PersonsBoolExp instance,
    TRes Function(Input_PersonsBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsBoolExp;

  factory CopyWith_Input_PersonsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsBoolExp;

  TRes call({
    List<Input_PersonsBoolExp>? $_and,
    Input_PersonsBoolExp? $_not,
    List<Input_PersonsBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_DateComparisonExp? birthdate,
    Input_StringComparisonExp? birthday,
    Input_StringComparisonExp? blurhash,
    Input_HistoryCallHistoryBoolExp? callHistory,
    Input_HistoryCallHistoryAggregateBoolExp? callHistoryAggregate,
    Input_ChurchesBoolExp? church,
    Input_UuidComparisonExp? churchId,
    Input_ClassesPersonsBoolExp? classes,
    Input_CollegesBoolExp? college,
    Input_UuidComparisonExp? collegeId,
    Input_BigintComparisonExp? color,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_FathersBoolExp? father,
    Input_UuidComparisonExp? fatherId,
    Input_BooleanComparisonExp? gender,
    Input_PersonsGroupsBoolExp? groups,
    Input_PersonsHobbiesBoolExp? hobbies,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isServant,
    Input_BooleanComparisonExp? isShammas,
    Input_BooleanComparisonExp? isStudent,
    Input_JobsBoolExp? job,
    Input_StringComparisonExp? jobDescription,
    Input_UuidComparisonExp? jobId,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
    Input_HistoryLatestCallsBoolExp? lastCall,
    Input_HistoryLatestConfessionsBoolExp? lastConfession,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryLatestKodasesBoolExp? lastKodas,
    Input_HistoryLatestVisitsBoolExp? lastVisit,
    Input_StringComparisonExp? mainPhone,
    Input_StringComparisonExp? martialStatus,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? nationalId,
    Input_StringComparisonExp? notes,
    Input_JsonbComparisonExp? otherPhones,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_QualificationsBoolExp? qualification,
    Input_UuidComparisonExp? qualificationId,
    Input_SchoolsBoolExp? school,
    Input_UuidComparisonExp? schoolId,
    Input_StringComparisonExp? serviceType,
    Input_PersonsServicesBoolExp? services,
    Input_ChurchesBoolExp? servingChurch,
    Input_UuidComparisonExp? servingChurchId,
    Input_ShammasLevelsBoolExp? shammasLevel,
    Input_UuidComparisonExp? shammasLevelId,
    Input_PersonStatesBoolExp? state,
    Input_UuidComparisonExp? stateId,
    Input_StoresBoolExp? store,
    Input_UuidComparisonExp? storeId,
    Input_StudyYearsBoolExp? studyYear,
    Input_SmallintComparisonExp? studyYearId,
    Input_PersonsTagsBoolExp? tags,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
    Input_BooleanComparisonExp? userCanEdit,
    Input_HistoryVisitHistoryBoolExp? visitHistory,
    Input_HistoryVisitHistoryAggregateBoolExp? visitHistoryAggregate,
    Input_StringComparisonExp? workStatus,
  });
  TRes $_and(
    Iterable<Input_PersonsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsBoolExp<Input_PersonsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsBoolExp<Input_PersonsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AddressesBoolExp<TRes> get address;
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_DateComparisonExp<TRes> get birthdate;
  CopyWith_Input_StringComparisonExp<TRes> get birthday;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get callHistory;
  CopyWith_Input_HistoryCallHistoryAggregateBoolExp<TRes>
  get callHistoryAggregate;
  CopyWith_Input_ChurchesBoolExp<TRes> get church;
  CopyWith_Input_UuidComparisonExp<TRes> get churchId;
  CopyWith_Input_ClassesPersonsBoolExp<TRes> get classes;
  CopyWith_Input_CollegesBoolExp<TRes> get college;
  CopyWith_Input_UuidComparisonExp<TRes> get collegeId;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory;
  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate;
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_FathersBoolExp<TRes> get father;
  CopyWith_Input_UuidComparisonExp<TRes> get fatherId;
  CopyWith_Input_BooleanComparisonExp<TRes> get gender;
  CopyWith_Input_PersonsGroupsBoolExp<TRes> get groups;
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get hobbies;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isServant;
  CopyWith_Input_BooleanComparisonExp<TRes> get isShammas;
  CopyWith_Input_BooleanComparisonExp<TRes> get isStudent;
  CopyWith_Input_JobsBoolExp<TRes> get job;
  CopyWith_Input_StringComparisonExp<TRes> get jobDescription;
  CopyWith_Input_UuidComparisonExp<TRes> get jobId;
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory;
  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate;
  CopyWith_Input_HistoryLatestCallsBoolExp<TRes> get lastCall;
  CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> get lastConfession;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> get lastKodas;
  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get lastVisit;
  CopyWith_Input_StringComparisonExp<TRes> get mainPhone;
  CopyWith_Input_StringComparisonExp<TRes> get martialStatus;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_IntComparisonExp<TRes> get nationalId;
  CopyWith_Input_StringComparisonExp<TRes> get notes;
  CopyWith_Input_JsonbComparisonExp<TRes> get otherPhones;
  CopyWith_Input_PersonTypesBoolExp<TRes> get personType;
  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_QualificationsBoolExp<TRes> get qualification;
  CopyWith_Input_UuidComparisonExp<TRes> get qualificationId;
  CopyWith_Input_SchoolsBoolExp<TRes> get school;
  CopyWith_Input_UuidComparisonExp<TRes> get schoolId;
  CopyWith_Input_StringComparisonExp<TRes> get serviceType;
  CopyWith_Input_PersonsServicesBoolExp<TRes> get services;
  CopyWith_Input_ChurchesBoolExp<TRes> get servingChurch;
  CopyWith_Input_UuidComparisonExp<TRes> get servingChurchId;
  CopyWith_Input_ShammasLevelsBoolExp<TRes> get shammasLevel;
  CopyWith_Input_UuidComparisonExp<TRes> get shammasLevelId;
  CopyWith_Input_PersonStatesBoolExp<TRes> get state;
  CopyWith_Input_UuidComparisonExp<TRes> get stateId;
  CopyWith_Input_StoresBoolExp<TRes> get store;
  CopyWith_Input_UuidComparisonExp<TRes> get storeId;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear;
  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearId;
  CopyWith_Input_PersonsTagsBoolExp<TRes> get tags;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit;
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get visitHistory;
  CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
  get visitHistoryAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get workStatus;
}

class _CopyWithImpl_Input_PersonsBoolExp<TRes>
    implements CopyWith_Input_PersonsBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsBoolExp(this._instance, this._then);

  final Input_PersonsBoolExp _instance;

  final TRes Function(Input_PersonsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? address = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? birthdate = _undefined,
    Object? birthday = _undefined,
    Object? blurhash = _undefined,
    Object? callHistory = _undefined,
    Object? callHistoryAggregate = _undefined,
    Object? church = _undefined,
    Object? churchId = _undefined,
    Object? classes = _undefined,
    Object? college = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? confessionHistory = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? father = _undefined,
    Object? fatherId = _undefined,
    Object? gender = _undefined,
    Object? groups = _undefined,
    Object? hobbies = _undefined,
    Object? id = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? kodasHistory = _undefined,
    Object? kodasHistoryAggregate = _undefined,
    Object? lastCall = _undefined,
    Object? lastConfession = _undefined,
    Object? lastEdit = _undefined,
    Object? lastKodas = _undefined,
    Object? lastVisit = _undefined,
    Object? mainPhone = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personType = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualification = _undefined,
    Object? qualificationId = _undefined,
    Object? school = _undefined,
    Object? schoolId = _undefined,
    Object? serviceType = _undefined,
    Object? services = _undefined,
    Object? servingChurch = _undefined,
    Object? servingChurchId = _undefined,
    Object? shammasLevel = _undefined,
    Object? shammasLevelId = _undefined,
    Object? state = _undefined,
    Object? stateId = _undefined,
    Object? store = _undefined,
    Object? storeId = _undefined,
    Object? studyYear = _undefined,
    Object? studyYearId = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
    Object? userCanEdit = _undefined,
    Object? visitHistory = _undefined,
    Object? visitHistoryAggregate = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_PersonsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_PersonsBoolExp>?),
      if (address != _undefined)
        'address': (address as Input_AddressesBoolExp?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (birthdate != _undefined)
        'birthdate': (birthdate as Input_DateComparisonExp?),
      if (birthday != _undefined)
        'birthday': (birthday as Input_StringComparisonExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (callHistory != _undefined)
        'callHistory': (callHistory as Input_HistoryCallHistoryBoolExp?),
      if (callHistoryAggregate != _undefined)
        'callHistoryAggregate':
            (callHistoryAggregate as Input_HistoryCallHistoryAggregateBoolExp?),
      if (church != _undefined) 'church': (church as Input_ChurchesBoolExp?),
      if (churchId != _undefined)
        'churchId': (churchId as Input_UuidComparisonExp?),
      if (classes != _undefined)
        'classes': (classes as Input_ClassesPersonsBoolExp?),
      if (college != _undefined) 'college': (college as Input_CollegesBoolExp?),
      if (collegeId != _undefined)
        'collegeId': (collegeId as Input_UuidComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (confessionHistory != _undefined)
        'confessionHistory':
            (confessionHistory as Input_HistoryConfessionHistoryBoolExp?),
      if (confessionHistoryAggregate != _undefined)
        'confessionHistoryAggregate':
            (confessionHistoryAggregate
                as Input_HistoryConfessionHistoryAggregateBoolExp?),
      if (editHistory != _undefined)
        'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (father != _undefined) 'father': (father as Input_FathersBoolExp?),
      if (fatherId != _undefined)
        'fatherId': (fatherId as Input_UuidComparisonExp?),
      if (gender != _undefined)
        'gender': (gender as Input_BooleanComparisonExp?),
      if (groups != _undefined)
        'groups': (groups as Input_PersonsGroupsBoolExp?),
      if (hobbies != _undefined)
        'hobbies': (hobbies as Input_PersonsHobbiesBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isServant != _undefined)
        'isServant': (isServant as Input_BooleanComparisonExp?),
      if (isShammas != _undefined)
        'isShammas': (isShammas as Input_BooleanComparisonExp?),
      if (isStudent != _undefined)
        'isStudent': (isStudent as Input_BooleanComparisonExp?),
      if (job != _undefined) 'job': (job as Input_JobsBoolExp?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Input_StringComparisonExp?),
      if (jobId != _undefined) 'jobId': (jobId as Input_UuidComparisonExp?),
      if (kodasHistory != _undefined)
        'kodasHistory': (kodasHistory as Input_HistoryKodasHistoryBoolExp?),
      if (kodasHistoryAggregate != _undefined)
        'kodasHistoryAggregate':
            (kodasHistoryAggregate
                as Input_HistoryKodasHistoryAggregateBoolExp?),
      if (lastCall != _undefined)
        'lastCall': (lastCall as Input_HistoryLatestCallsBoolExp?),
      if (lastConfession != _undefined)
        'lastConfession':
            (lastConfession as Input_HistoryLatestConfessionsBoolExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (lastKodas != _undefined)
        'lastKodas': (lastKodas as Input_HistoryLatestKodasesBoolExp?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_HistoryLatestVisitsBoolExp?),
      if (mainPhone != _undefined)
        'mainPhone': (mainPhone as Input_StringComparisonExp?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Input_StringComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (nationalId != _undefined)
        'nationalId': (nationalId as Input_IntComparisonExp?),
      if (notes != _undefined) 'notes': (notes as Input_StringComparisonExp?),
      if (otherPhones != _undefined)
        'otherPhones': (otherPhones as Input_JsonbComparisonExp?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesBoolExp?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Input_UuidComparisonExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (qualification != _undefined)
        'qualification': (qualification as Input_QualificationsBoolExp?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as Input_UuidComparisonExp?),
      if (school != _undefined) 'school': (school as Input_SchoolsBoolExp?),
      if (schoolId != _undefined)
        'schoolId': (schoolId as Input_UuidComparisonExp?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Input_StringComparisonExp?),
      if (services != _undefined)
        'services': (services as Input_PersonsServicesBoolExp?),
      if (servingChurch != _undefined)
        'servingChurch': (servingChurch as Input_ChurchesBoolExp?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as Input_UuidComparisonExp?),
      if (shammasLevel != _undefined)
        'shammasLevel': (shammasLevel as Input_ShammasLevelsBoolExp?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Input_UuidComparisonExp?),
      if (state != _undefined) 'state': (state as Input_PersonStatesBoolExp?),
      if (stateId != _undefined)
        'stateId': (stateId as Input_UuidComparisonExp?),
      if (store != _undefined) 'store': (store as Input_StoresBoolExp?),
      if (storeId != _undefined)
        'storeId': (storeId as Input_UuidComparisonExp?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsBoolExp?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Input_SmallintComparisonExp?),
      if (tags != _undefined) 'tags': (tags as Input_PersonsTagsBoolExp?),
      if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_BooleanComparisonExp?),
      if (visitHistory != _undefined)
        'visitHistory': (visitHistory as Input_HistoryVisitHistoryBoolExp?),
      if (visitHistoryAggregate != _undefined)
        'visitHistoryAggregate':
            (visitHistoryAggregate
                as Input_HistoryVisitHistoryAggregateBoolExp?),
      if (workStatus != _undefined)
        'workStatus': (workStatus as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsBoolExp<Input_PersonsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_PersonsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_PersonsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_PersonsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsBoolExp<Input_PersonsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_PersonsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AddressesBoolExp<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_DateComparisonExp<TRes> get birthdate {
    final local$birthdate = _instance.birthdate;
    return local$birthdate == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(
            local$birthdate,
            (e) => call(birthdate: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get birthday {
    final local$birthday = _instance.birthday;
    return local$birthday == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$birthday,
            (e) => call(birthday: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get callHistory {
    final local$callHistory = _instance.callHistory;
    return local$callHistory == null
        ? CopyWith_Input_HistoryCallHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryBoolExp(
            local$callHistory,
            (e) => call(callHistory: e),
          );
  }

  CopyWith_Input_HistoryCallHistoryAggregateBoolExp<TRes>
  get callHistoryAggregate {
    final local$callHistoryAggregate = _instance.callHistoryAggregate;
    return local$callHistoryAggregate == null
        ? CopyWith_Input_HistoryCallHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryCallHistoryAggregateBoolExp(
            local$callHistoryAggregate,
            (e) => call(callHistoryAggregate: e),
          );
  }

  CopyWith_Input_ChurchesBoolExp<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ChurchesBoolExp(local$church, (e) => call(church: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get churchId {
    final local$churchId = _instance.churchId;
    return local$churchId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$churchId,
            (e) => call(churchId: e),
          );
  }

  CopyWith_Input_ClassesPersonsBoolExp<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesPersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsBoolExp(
            local$classes,
            (e) => call(classes: e),
          );
  }

  CopyWith_Input_CollegesBoolExp<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Input_CollegesBoolExp.stub(_then(_instance))
        : CopyWith_Input_CollegesBoolExp(
            local$college,
            (e) => call(college: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get collegeId {
    final local$collegeId = _instance.collegeId;
    return local$collegeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$collegeId,
            (e) => call(collegeId: e),
          );
  }

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$confessionHistory,
            (e) => call(confessionHistory: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory {
    final local$editHistory = _instance.editHistory;
    return local$editHistory == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistory,
            (e) => call(editHistory: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistoryAggregate,
            (e) => call(editHistoryAggregate: e),
          );
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$family, (e) => call(family: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_FathersBoolExp<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Input_FathersBoolExp.stub(_then(_instance))
        : CopyWith_Input_FathersBoolExp(local$father, (e) => call(father: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get fatherId {
    final local$fatherId = _instance.fatherId;
    return local$fatherId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$fatherId,
            (e) => call(fatherId: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get gender {
    final local$gender = _instance.gender;
    return local$gender == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$gender,
            (e) => call(gender: e),
          );
  }

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Input_PersonsGroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsBoolExp(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get hobbies {
    final local$hobbies = _instance.hobbies;
    return local$hobbies == null
        ? CopyWith_Input_PersonsHobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesBoolExp(
            local$hobbies,
            (e) => call(hobbies: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isServant {
    final local$isServant = _instance.isServant;
    return local$isServant == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isServant,
            (e) => call(isServant: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isShammas {
    final local$isShammas = _instance.isShammas;
    return local$isShammas == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isShammas,
            (e) => call(isShammas: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isStudent {
    final local$isStudent = _instance.isStudent;
    return local$isStudent == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isStudent,
            (e) => call(isStudent: e),
          );
  }

  CopyWith_Input_JobsBoolExp<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Input_JobsBoolExp.stub(_then(_instance))
        : CopyWith_Input_JobsBoolExp(local$job, (e) => call(job: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get jobDescription {
    final local$jobDescription = _instance.jobDescription;
    return local$jobDescription == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$jobDescription,
            (e) => call(jobDescription: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get jobId {
    final local$jobId = _instance.jobId;
    return local$jobId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$jobId, (e) => call(jobId: e));
  }

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$kodasHistory,
            (e) => call(kodasHistory: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryAggregateBoolExp(
            local$kodasHistoryAggregate,
            (e) => call(kodasHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryLatestCallsBoolExp<TRes> get lastCall {
    final local$lastCall = _instance.lastCall;
    return local$lastCall == null
        ? CopyWith_Input_HistoryLatestCallsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestCallsBoolExp(
            local$lastCall,
            (e) => call(lastCall: e),
          );
  }

  CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Input_HistoryLatestConfessionsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestConfessionsBoolExp(
            local$lastConfession,
            (e) => call(lastConfession: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Input_HistoryLatestKodasesBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestKodasesBoolExp(
            local$lastKodas,
            (e) => call(lastKodas: e),
          );
  }

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestVisitsBoolExp(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get mainPhone {
    final local$mainPhone = _instance.mainPhone;
    return local$mainPhone == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$mainPhone,
            (e) => call(mainPhone: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get martialStatus {
    final local$martialStatus = _instance.martialStatus;
    return local$martialStatus == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$martialStatus,
            (e) => call(martialStatus: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get nationalId {
    final local$nationalId = _instance.nationalId;
    return local$nationalId == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$nationalId,
            (e) => call(nationalId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$notes,
            (e) => call(notes: e),
          );
  }

  CopyWith_Input_JsonbComparisonExp<TRes> get otherPhones {
    final local$otherPhones = _instance.otherPhones;
    return local$otherPhones == null
        ? CopyWith_Input_JsonbComparisonExp.stub(_then(_instance))
        : CopyWith_Input_JsonbComparisonExp(
            local$otherPhones,
            (e) => call(otherPhones: e),
          );
  }

  CopyWith_Input_PersonTypesBoolExp<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId {
    final local$personTypeId = _instance.personTypeId;
    return local$personTypeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personTypeId,
            (e) => call(personTypeId: e),
          );
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_QualificationsBoolExp<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Input_QualificationsBoolExp.stub(_then(_instance))
        : CopyWith_Input_QualificationsBoolExp(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get qualificationId {
    final local$qualificationId = _instance.qualificationId;
    return local$qualificationId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$qualificationId,
            (e) => call(qualificationId: e),
          );
  }

  CopyWith_Input_SchoolsBoolExp<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Input_SchoolsBoolExp.stub(_then(_instance))
        : CopyWith_Input_SchoolsBoolExp(local$school, (e) => call(school: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get schoolId {
    final local$schoolId = _instance.schoolId;
    return local$schoolId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$schoolId,
            (e) => call(schoolId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get serviceType {
    final local$serviceType = _instance.serviceType;
    return local$serviceType == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$serviceType,
            (e) => call(serviceType: e),
          );
  }

  CopyWith_Input_PersonsServicesBoolExp<TRes> get services {
    final local$services = _instance.services;
    return local$services == null
        ? CopyWith_Input_PersonsServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesBoolExp(
            local$services,
            (e) => call(services: e),
          );
  }

  CopyWith_Input_ChurchesBoolExp<TRes> get servingChurch {
    final local$servingChurch = _instance.servingChurch;
    return local$servingChurch == null
        ? CopyWith_Input_ChurchesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ChurchesBoolExp(
            local$servingChurch,
            (e) => call(servingChurch: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get servingChurchId {
    final local$servingChurchId = _instance.servingChurchId;
    return local$servingChurchId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$servingChurchId,
            (e) => call(servingChurchId: e),
          );
  }

  CopyWith_Input_ShammasLevelsBoolExp<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Input_ShammasLevelsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ShammasLevelsBoolExp(
            local$shammasLevel,
            (e) => call(shammasLevel: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get shammasLevelId {
    final local$shammasLevelId = _instance.shammasLevelId;
    return local$shammasLevelId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$shammasLevelId,
            (e) => call(shammasLevelId: e),
          );
  }

  CopyWith_Input_PersonStatesBoolExp<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Input_PersonStatesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonStatesBoolExp(
            local$state,
            (e) => call(state: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get stateId {
    final local$stateId = _instance.stateId;
    return local$stateId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$stateId,
            (e) => call(stateId: e),
          );
  }

  CopyWith_Input_StoresBoolExp<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$store, (e) => call(store: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get storeId {
    final local$storeId = _instance.storeId;
    return local$storeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$storeId,
            (e) => call(storeId: e),
          );
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearId {
    final local$studyYearId = _instance.studyYearId;
    return local$studyYearId == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$studyYearId,
            (e) => call(studyYearId: e),
          );
  }

  CopyWith_Input_PersonsTagsBoolExp<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith_Input_PersonsTagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsBoolExp(local$tags, (e) => call(tags: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get visitHistory {
    final local$visitHistory = _instance.visitHistory;
    return local$visitHistory == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$visitHistory,
            (e) => call(visitHistory: e),
          );
  }

  CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
  get visitHistoryAggregate {
    final local$visitHistoryAggregate = _instance.visitHistoryAggregate;
    return local$visitHistoryAggregate == null
        ? CopyWith_Input_HistoryVisitHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryVisitHistoryAggregateBoolExp(
            local$visitHistoryAggregate,
            (e) => call(visitHistoryAggregate: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get workStatus {
    final local$workStatus = _instance.workStatus;
    return local$workStatus == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$workStatus,
            (e) => call(workStatus: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsBoolExp<TRes>
    implements CopyWith_Input_PersonsBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsBoolExp>? $_and,
    Input_PersonsBoolExp? $_not,
    List<Input_PersonsBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_DateComparisonExp? birthdate,
    Input_StringComparisonExp? birthday,
    Input_StringComparisonExp? blurhash,
    Input_HistoryCallHistoryBoolExp? callHistory,
    Input_HistoryCallHistoryAggregateBoolExp? callHistoryAggregate,
    Input_ChurchesBoolExp? church,
    Input_UuidComparisonExp? churchId,
    Input_ClassesPersonsBoolExp? classes,
    Input_CollegesBoolExp? college,
    Input_UuidComparisonExp? collegeId,
    Input_BigintComparisonExp? color,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_FathersBoolExp? father,
    Input_UuidComparisonExp? fatherId,
    Input_BooleanComparisonExp? gender,
    Input_PersonsGroupsBoolExp? groups,
    Input_PersonsHobbiesBoolExp? hobbies,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isServant,
    Input_BooleanComparisonExp? isShammas,
    Input_BooleanComparisonExp? isStudent,
    Input_JobsBoolExp? job,
    Input_StringComparisonExp? jobDescription,
    Input_UuidComparisonExp? jobId,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
    Input_HistoryLatestCallsBoolExp? lastCall,
    Input_HistoryLatestConfessionsBoolExp? lastConfession,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryLatestKodasesBoolExp? lastKodas,
    Input_HistoryLatestVisitsBoolExp? lastVisit,
    Input_StringComparisonExp? mainPhone,
    Input_StringComparisonExp? martialStatus,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? nationalId,
    Input_StringComparisonExp? notes,
    Input_JsonbComparisonExp? otherPhones,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_QualificationsBoolExp? qualification,
    Input_UuidComparisonExp? qualificationId,
    Input_SchoolsBoolExp? school,
    Input_UuidComparisonExp? schoolId,
    Input_StringComparisonExp? serviceType,
    Input_PersonsServicesBoolExp? services,
    Input_ChurchesBoolExp? servingChurch,
    Input_UuidComparisonExp? servingChurchId,
    Input_ShammasLevelsBoolExp? shammasLevel,
    Input_UuidComparisonExp? shammasLevelId,
    Input_PersonStatesBoolExp? state,
    Input_UuidComparisonExp? stateId,
    Input_StoresBoolExp? store,
    Input_UuidComparisonExp? storeId,
    Input_StudyYearsBoolExp? studyYear,
    Input_SmallintComparisonExp? studyYearId,
    Input_PersonsTagsBoolExp? tags,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
    Input_BooleanComparisonExp? userCanEdit,
    Input_HistoryVisitHistoryBoolExp? visitHistory,
    Input_HistoryVisitHistoryAggregateBoolExp? visitHistoryAggregate,
    Input_StringComparisonExp? workStatus,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get address =>
      CopyWith_Input_AddressesBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get birthdate =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get birthday =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get callHistory =>
      CopyWith_Input_HistoryCallHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryCallHistoryAggregateBoolExp<TRes>
  get callHistoryAggregate =>
      CopyWith_Input_HistoryCallHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_ChurchesBoolExp<TRes> get church =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get churchId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_ClassesPersonsBoolExp<TRes> get classes =>
      CopyWith_Input_ClassesPersonsBoolExp.stub(_res);

  CopyWith_Input_CollegesBoolExp<TRes> get college =>
      CopyWith_Input_CollegesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get collegeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate =>
      CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_FathersBoolExp<TRes> get father =>
      CopyWith_Input_FathersBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get fatherId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get gender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get groups =>
      CopyWith_Input_PersonsGroupsBoolExp.stub(_res);

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get hobbies =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isServant =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isShammas =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isStudent =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_JobsBoolExp<TRes> get job =>
      CopyWith_Input_JobsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get jobDescription =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get jobId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate =>
      CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_HistoryLatestCallsBoolExp<TRes> get lastCall =>
      CopyWith_Input_HistoryLatestCallsBoolExp.stub(_res);

  CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> get lastConfession =>
      CopyWith_Input_HistoryLatestConfessionsBoolExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> get lastKodas =>
      CopyWith_Input_HistoryLatestKodasesBoolExp.stub(_res);

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get lastVisit =>
      CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get mainPhone =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get martialStatus =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get nationalId =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get notes =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_JsonbComparisonExp<TRes> get otherPhones =>
      CopyWith_Input_JsonbComparisonExp.stub(_res);

  CopyWith_Input_PersonTypesBoolExp<TRes> get personType =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_QualificationsBoolExp<TRes> get qualification =>
      CopyWith_Input_QualificationsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get qualificationId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_SchoolsBoolExp<TRes> get school =>
      CopyWith_Input_SchoolsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get schoolId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get serviceType =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsServicesBoolExp<TRes> get services =>
      CopyWith_Input_PersonsServicesBoolExp.stub(_res);

  CopyWith_Input_ChurchesBoolExp<TRes> get servingChurch =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get servingChurchId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_ShammasLevelsBoolExp<TRes> get shammasLevel =>
      CopyWith_Input_ShammasLevelsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get shammasLevelId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonStatesBoolExp<TRes> get state =>
      CopyWith_Input_PersonStatesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get stateId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StoresBoolExp<TRes> get store =>
      CopyWith_Input_StoresBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get storeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearId =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_PersonsTagsBoolExp<TRes> get tags =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get visitHistory =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
  get visitHistoryAggregate =>
      CopyWith_Input_HistoryVisitHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get workStatus =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_PersonsDeleteAtPathInput {
  factory Input_PersonsDeleteAtPathInput({List<String>? otherPhones}) =>
      Input_PersonsDeleteAtPathInput._({
        if (otherPhones != null) r'otherPhones': otherPhones,
      });

  Input_PersonsDeleteAtPathInput._(this._$data);

  factory Input_PersonsDeleteAtPathInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input_PersonsDeleteAtPathInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get otherPhones => (_$data['otherPhones'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith_Input_PersonsDeleteAtPathInput<Input_PersonsDeleteAtPathInput>
  get copyWith => CopyWith_Input_PersonsDeleteAtPathInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsDeleteAtPathInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != null && lOther$otherPhones != null) {
      if (l$otherPhones.length != lOther$otherPhones.length) {
        return false;
      }
      for (int i = 0; i < l$otherPhones.length; i++) {
        final l$otherPhones$entry = l$otherPhones[i];
        final lOther$otherPhones$entry = lOther$otherPhones[i];
        if (l$otherPhones$entry != lOther$otherPhones$entry) {
          return false;
        }
      }
    } else if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otherPhones = otherPhones;
    return Object.hashAll([
      _$data.containsKey('otherPhones')
          ? l$otherPhones == null
                ? null
                : Object.hashAll(l$otherPhones.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsDeleteAtPathInput<TRes> {
  factory CopyWith_Input_PersonsDeleteAtPathInput(
    Input_PersonsDeleteAtPathInput instance,
    TRes Function(Input_PersonsDeleteAtPathInput) then,
  ) = _CopyWithImpl_Input_PersonsDeleteAtPathInput;

  factory CopyWith_Input_PersonsDeleteAtPathInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsDeleteAtPathInput;

  TRes call({List<String>? otherPhones});
}

class _CopyWithImpl_Input_PersonsDeleteAtPathInput<TRes>
    implements CopyWith_Input_PersonsDeleteAtPathInput<TRes> {
  _CopyWithImpl_Input_PersonsDeleteAtPathInput(this._instance, this._then);

  final Input_PersonsDeleteAtPathInput _instance;

  final TRes Function(Input_PersonsDeleteAtPathInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? otherPhones = _undefined}) => _then(
    Input_PersonsDeleteAtPathInput._({
      ..._instance._$data,
      if (otherPhones != _undefined)
        'otherPhones': (otherPhones as List<String>?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsDeleteAtPathInput<TRes>
    implements CopyWith_Input_PersonsDeleteAtPathInput<TRes> {
  _CopyWithStubImpl_Input_PersonsDeleteAtPathInput(this._res);

  TRes _res;

  call({List<String>? otherPhones}) => _res;
}

class Input_PersonsDeleteElemInput {
  factory Input_PersonsDeleteElemInput({int? otherPhones}) =>
      Input_PersonsDeleteElemInput._({
        if (otherPhones != null) r'otherPhones': otherPhones,
      });

  Input_PersonsDeleteElemInput._(this._$data);

  factory Input_PersonsDeleteElemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as int?);
    }
    return Input_PersonsDeleteElemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get otherPhones => (_$data['otherPhones'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    return result$data;
  }

  CopyWith_Input_PersonsDeleteElemInput<Input_PersonsDeleteElemInput>
  get copyWith => CopyWith_Input_PersonsDeleteElemInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsDeleteElemInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otherPhones = otherPhones;
    return Object.hashAll([
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsDeleteElemInput<TRes> {
  factory CopyWith_Input_PersonsDeleteElemInput(
    Input_PersonsDeleteElemInput instance,
    TRes Function(Input_PersonsDeleteElemInput) then,
  ) = _CopyWithImpl_Input_PersonsDeleteElemInput;

  factory CopyWith_Input_PersonsDeleteElemInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsDeleteElemInput;

  TRes call({int? otherPhones});
}

class _CopyWithImpl_Input_PersonsDeleteElemInput<TRes>
    implements CopyWith_Input_PersonsDeleteElemInput<TRes> {
  _CopyWithImpl_Input_PersonsDeleteElemInput(this._instance, this._then);

  final Input_PersonsDeleteElemInput _instance;

  final TRes Function(Input_PersonsDeleteElemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? otherPhones = _undefined}) => _then(
    Input_PersonsDeleteElemInput._({
      ..._instance._$data,
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsDeleteElemInput<TRes>
    implements CopyWith_Input_PersonsDeleteElemInput<TRes> {
  _CopyWithStubImpl_Input_PersonsDeleteElemInput(this._res);

  TRes _res;

  call({int? otherPhones}) => _res;
}

class Input_PersonsDeleteKeyInput {
  factory Input_PersonsDeleteKeyInput({String? otherPhones}) =>
      Input_PersonsDeleteKeyInput._({
        if (otherPhones != null) r'otherPhones': otherPhones,
      });

  Input_PersonsDeleteKeyInput._(this._$data);

  factory Input_PersonsDeleteKeyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as String?);
    }
    return Input_PersonsDeleteKeyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get otherPhones => (_$data['otherPhones'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    return result$data;
  }

  CopyWith_Input_PersonsDeleteKeyInput<Input_PersonsDeleteKeyInput>
  get copyWith => CopyWith_Input_PersonsDeleteKeyInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsDeleteKeyInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otherPhones = otherPhones;
    return Object.hashAll([
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsDeleteKeyInput<TRes> {
  factory CopyWith_Input_PersonsDeleteKeyInput(
    Input_PersonsDeleteKeyInput instance,
    TRes Function(Input_PersonsDeleteKeyInput) then,
  ) = _CopyWithImpl_Input_PersonsDeleteKeyInput;

  factory CopyWith_Input_PersonsDeleteKeyInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsDeleteKeyInput;

  TRes call({String? otherPhones});
}

class _CopyWithImpl_Input_PersonsDeleteKeyInput<TRes>
    implements CopyWith_Input_PersonsDeleteKeyInput<TRes> {
  _CopyWithImpl_Input_PersonsDeleteKeyInput(this._instance, this._then);

  final Input_PersonsDeleteKeyInput _instance;

  final TRes Function(Input_PersonsDeleteKeyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? otherPhones = _undefined}) => _then(
    Input_PersonsDeleteKeyInput._({
      ..._instance._$data,
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsDeleteKeyInput<TRes>
    implements CopyWith_Input_PersonsDeleteKeyInput<TRes> {
  _CopyWithStubImpl_Input_PersonsDeleteKeyInput(this._res);

  TRes _res;

  call({String? otherPhones}) => _res;
}

class Input_PersonsGroupsAggregateOrderBy {
  factory Input_PersonsGroupsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_PersonsGroupsMaxOrderBy? max,
    Input_PersonsGroupsMinOrderBy? min,
  }) => Input_PersonsGroupsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_PersonsGroupsAggregateOrderBy._(this._$data);

  factory Input_PersonsGroupsAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_PersonsGroupsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_PersonsGroupsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_PersonsGroupsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_PersonsGroupsMaxOrderBy? get max =>
      (_$data['max'] as Input_PersonsGroupsMaxOrderBy?);

  Input_PersonsGroupsMinOrderBy? get min =>
      (_$data['min'] as Input_PersonsGroupsMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count == null
          ? null
          : toJson_Enum_OrderBy(l$count);
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max?.toJson();
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsAggregateOrderBy<
    Input_PersonsGroupsAggregateOrderBy
  >
  get copyWith => CopyWith_Input_PersonsGroupsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsAggregateOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> {
  factory CopyWith_Input_PersonsGroupsAggregateOrderBy(
    Input_PersonsGroupsAggregateOrderBy instance,
    TRes Function(Input_PersonsGroupsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsGroupsAggregateOrderBy;

  factory CopyWith_Input_PersonsGroupsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_PersonsGroupsMaxOrderBy? max,
    Input_PersonsGroupsMinOrderBy? min,
  });
  CopyWith_Input_PersonsGroupsMaxOrderBy<TRes> get max;
  CopyWith_Input_PersonsGroupsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_PersonsGroupsAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsGroupsAggregateOrderBy(this._instance, this._then);

  final Input_PersonsGroupsAggregateOrderBy _instance;

  final TRes Function(Input_PersonsGroupsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_PersonsGroupsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_PersonsGroupsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_PersonsGroupsMinOrderBy?),
    }),
  );

  CopyWith_Input_PersonsGroupsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_PersonsGroupsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_PersonsGroupsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_PersonsGroupsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_PersonsGroupsMaxOrderBy? max,
    Input_PersonsGroupsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_PersonsGroupsMaxOrderBy<TRes> get max =>
      CopyWith_Input_PersonsGroupsMaxOrderBy.stub(_res);

  CopyWith_Input_PersonsGroupsMinOrderBy<TRes> get min =>
      CopyWith_Input_PersonsGroupsMinOrderBy.stub(_res);
}

class Input_PersonsGroupsArrRelInsertInput {
  factory Input_PersonsGroupsArrRelInsertInput({
    required List<Input_PersonsGroupsInsertInput> data,
    Input_PersonsGroupsOnConflict? onConflict,
  }) => Input_PersonsGroupsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsGroupsArrRelInsertInput._(this._$data);

  factory Input_PersonsGroupsArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_PersonsGroupsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsGroupsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsGroupsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsGroupsInsertInput> get data =>
      (_$data['data'] as List<Input_PersonsGroupsInsertInput>);

  Input_PersonsGroupsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsGroupsOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsArrRelInsertInput<
    Input_PersonsGroupsArrRelInsertInput
  >
  get copyWith => CopyWith_Input_PersonsGroupsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsArrRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
    }
    final l$onConflict = onConflict;
    final lOther$onConflict = other.onConflict;
    if (_$data.containsKey('onConflict') !=
        other._$data.containsKey('onConflict')) {
      return false;
    }
    if (l$onConflict != lOther$onConflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$onConflict = onConflict;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsGroupsArrRelInsertInput(
    Input_PersonsGroupsArrRelInsertInput instance,
    TRes Function(Input_PersonsGroupsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsGroupsArrRelInsertInput;

  factory CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsArrRelInsertInput;

  TRes call({
    List<Input_PersonsGroupsInsertInput>? data,
    Input_PersonsGroupsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_PersonsGroupsInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsGroupsInsertInput<Input_PersonsGroupsInsertInput>
      >,
    )
    _fn,
  );
  CopyWith_Input_PersonsGroupsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsGroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsGroupsArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsArrRelInsertInput _instance;

  final TRes Function(Input_PersonsGroupsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonsGroupsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_PersonsGroupsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonsGroupsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_PersonsGroupsInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsGroupsInsertInput<Input_PersonsGroupsInsertInput>
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_PersonsGroupsInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_PersonsGroupsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsGroupsOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsGroupsInsertInput>? data,
    Input_PersonsGroupsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsGroupsOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsGroupsOnConflict.stub(_res);
}

class Input_PersonsGroupsBoolExp {
  factory Input_PersonsGroupsBoolExp({
    List<Input_PersonsGroupsBoolExp>? $_and,
    Input_PersonsGroupsBoolExp? $_not,
    List<Input_PersonsGroupsBoolExp>? $_or,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => Input_PersonsGroupsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_PersonsGroupsBoolExp._(this._$data);

  factory Input_PersonsGroupsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsGroupsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsGroupsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsGroupsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$groupId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    return Input_PersonsGroupsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsGroupsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsGroupsBoolExp>?);

  Input_PersonsGroupsBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsGroupsBoolExp?);

  List<Input_PersonsGroupsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsGroupsBoolExp>?);

  Input_GroupsBoolExp? get group => (_$data['group'] as Input_GroupsBoolExp?);

  Input_UuidComparisonExp? get groupId =>
      (_$data['groupId'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsBoolExp<Input_PersonsGroupsBoolExp>
  get copyWith => CopyWith_Input_PersonsGroupsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsBoolExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$group = group;
    final l$groupId = groupId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
                ? null
                : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
                ? null
                : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsBoolExp<TRes> {
  factory CopyWith_Input_PersonsGroupsBoolExp(
    Input_PersonsGroupsBoolExp instance,
    TRes Function(Input_PersonsGroupsBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsGroupsBoolExp;

  factory CopyWith_Input_PersonsGroupsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsBoolExp;

  TRes call({
    List<Input_PersonsGroupsBoolExp>? $_and,
    Input_PersonsGroupsBoolExp? $_not,
    List<Input_PersonsGroupsBoolExp>? $_or,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
    Iterable<Input_PersonsGroupsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsGroupsBoolExp<Input_PersonsGroupsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsGroupsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsGroupsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsGroupsBoolExp<Input_PersonsGroupsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_GroupsBoolExp<TRes> get group;
  CopyWith_Input_UuidComparisonExp<TRes> get groupId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_PersonsGroupsBoolExp<TRes>
    implements CopyWith_Input_PersonsGroupsBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsGroupsBoolExp(this._instance, this._then);

  final Input_PersonsGroupsBoolExp _instance;

  final TRes Function(Input_PersonsGroupsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_PersonsGroupsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsGroupsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonsGroupsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_PersonsGroupsBoolExp>?),
      if (group != _undefined) 'group': (group as Input_GroupsBoolExp?),
      if (groupId != _undefined)
        'groupId': (groupId as Input_UuidComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsGroupsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsGroupsBoolExp<Input_PersonsGroupsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsGroupsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsGroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_PersonsGroupsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsGroupsBoolExp<Input_PersonsGroupsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsGroupsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_GroupsBoolExp<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$group, (e) => call(group: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$groupId,
            (e) => call(groupId: e),
          );
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personId,
            (e) => call(personId: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsBoolExp<TRes>
    implements CopyWith_Input_PersonsGroupsBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsGroupsBoolExp>? $_and,
    Input_PersonsGroupsBoolExp? $_not,
    List<Input_PersonsGroupsBoolExp>? $_or,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsGroupsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_GroupsBoolExp<TRes> get group =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get groupId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsGroupsInsertInput {
  factory Input_PersonsGroupsInsertInput({
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => Input_PersonsGroupsInsertInput._({
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_PersonsGroupsInsertInput._(this._$data);

  factory Input_PersonsGroupsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsObjRelInsertInput.fromJson(
              (l$group as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsObjRelInsertInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_PersonsGroupsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsObjRelInsertInput? get group =>
      (_$data['group'] as Input_GroupsObjRelInsertInput?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsInsertInput<Input_PersonsGroupsInsertInput>
  get copyWith => CopyWith_Input_PersonsGroupsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$groupId = groupId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}
