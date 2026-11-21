// Part 45 of the schema
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
    Input_ContactsBoolExp? contacts,
    Input_DataChecksBoolExp? dataCheck,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesBoolExp? family,
    Input_ResolvedContactsBoolExp? familyContacts,
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
    Input_PersonsMainContactsBoolExp? mainContact,
    Input_StringComparisonExp? martialStatus,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? nationalId,
    Input_StringComparisonExp? notes,
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
  CopyWith_Input_ContactsBoolExp<TRes> get contacts;
  CopyWith_Input_DataChecksBoolExp<TRes> get dataCheck;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate;
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_ResolvedContactsBoolExp<TRes> get familyContacts;
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
  CopyWith_Input_PersonsMainContactsBoolExp<TRes> get mainContact;
  CopyWith_Input_StringComparisonExp<TRes> get martialStatus;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_IntComparisonExp<TRes> get nationalId;
  CopyWith_Input_StringComparisonExp<TRes> get notes;
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
    Object? contacts = _undefined,
    Object? dataCheck = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? family = _undefined,
    Object? familyContacts = _undefined,
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
    Object? mainContact = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
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
      if (contacts != _undefined)
        'contacts': (contacts as Input_ContactsBoolExp?),
      if (dataCheck != _undefined)
        'dataCheck': (dataCheck as Input_DataChecksBoolExp?),
      if (editHistory != _undefined)
        'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (familyContacts != _undefined)
        'familyContacts': (familyContacts as Input_ResolvedContactsBoolExp?),
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
      if (mainContact != _undefined)
        'mainContact': (mainContact as Input_PersonsMainContactsBoolExp?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Input_StringComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (nationalId != _undefined)
        'nationalId': (nationalId as Input_IntComparisonExp?),
      if (notes != _undefined) 'notes': (notes as Input_StringComparisonExp?),
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

  CopyWith_Input_ContactsBoolExp<TRes> get contacts {
    final local$contacts = _instance.contacts;
    return local$contacts == null
        ? CopyWith_Input_ContactsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ContactsBoolExp(
            local$contacts,
            (e) => call(contacts: e),
          );
  }

  CopyWith_Input_DataChecksBoolExp<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Input_DataChecksBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataChecksBoolExp(
            local$dataCheck,
            (e) => call(dataCheck: e),
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

  CopyWith_Input_ResolvedContactsBoolExp<TRes> get familyContacts {
    final local$familyContacts = _instance.familyContacts;
    return local$familyContacts == null
        ? CopyWith_Input_ResolvedContactsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ResolvedContactsBoolExp(
            local$familyContacts,
            (e) => call(familyContacts: e),
          );
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

  CopyWith_Input_PersonsMainContactsBoolExp<TRes> get mainContact {
    final local$mainContact = _instance.mainContact;
    return local$mainContact == null
        ? CopyWith_Input_PersonsMainContactsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsMainContactsBoolExp(
            local$mainContact,
            (e) => call(mainContact: e),
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
    Input_ContactsBoolExp? contacts,
    Input_DataChecksBoolExp? dataCheck,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesBoolExp? family,
    Input_ResolvedContactsBoolExp? familyContacts,
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
    Input_PersonsMainContactsBoolExp? mainContact,
    Input_StringComparisonExp? martialStatus,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? nationalId,
    Input_StringComparisonExp? notes,
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

  CopyWith_Input_ContactsBoolExp<TRes> get contacts =>
      CopyWith_Input_ContactsBoolExp.stub(_res);

  CopyWith_Input_DataChecksBoolExp<TRes> get dataCheck =>
      CopyWith_Input_DataChecksBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_ResolvedContactsBoolExp<TRes> get familyContacts =>
      CopyWith_Input_ResolvedContactsBoolExp.stub(_res);

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

  CopyWith_Input_PersonsMainContactsBoolExp<TRes> get mainContact =>
      CopyWith_Input_PersonsMainContactsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get martialStatus =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get nationalId =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get notes =>
      CopyWith_Input_StringComparisonExp.stub(_res);

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

class Input_PersonsFingerprintIdsBoolExp {
  factory Input_PersonsFingerprintIdsBoolExp({
    List<Input_PersonsFingerprintIdsBoolExp>? $_and,
    Input_PersonsFingerprintIdsBoolExp? $_not,
    List<Input_PersonsFingerprintIdsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? addedAt,
    Input_UuidComparisonExp? addedBy,
    Input_AuthUsersDataBoolExp? addedByUser,
    Input_StringComparisonExp? employeeCode,
    Input_UuidComparisonExp? id,
    Input_UuidComparisonExp? personId,
  }) => Input_PersonsFingerprintIdsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (addedAt != null) r'addedAt': addedAt,
    if (addedBy != null) r'addedBy': addedBy,
    if (addedByUser != null) r'addedByUser': addedByUser,
    if (employeeCode != null) r'employeeCode': employeeCode,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
  });

  Input_PersonsFingerprintIdsBoolExp._(this._$data);

  factory Input_PersonsFingerprintIdsBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsFingerprintIdsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsFingerprintIdsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsFingerprintIdsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('addedAt')) {
      final l$addedAt = data['addedAt'];
      result$data['addedAt'] = l$addedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$addedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addedBy')) {
      final l$addedBy = data['addedBy'];
      result$data['addedBy'] = l$addedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$addedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addedByUser')) {
      final l$addedByUser = data['addedByUser'];
      result$data['addedByUser'] = l$addedByUser == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$addedByUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('employeeCode')) {
      final l$employeeCode = data['employeeCode'];
      result$data['employeeCode'] = l$employeeCode == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$employeeCode as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    return Input_PersonsFingerprintIdsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsFingerprintIdsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsFingerprintIdsBoolExp>?);

  Input_PersonsFingerprintIdsBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsFingerprintIdsBoolExp?);

  List<Input_PersonsFingerprintIdsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsFingerprintIdsBoolExp>?);

  Input_TimestamptzComparisonExp? get addedAt =>
      (_$data['addedAt'] as Input_TimestamptzComparisonExp?);

  Input_UuidComparisonExp? get addedBy =>
      (_$data['addedBy'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get addedByUser =>
      (_$data['addedByUser'] as Input_AuthUsersDataBoolExp?);

  Input_StringComparisonExp? get employeeCode =>
      (_$data['employeeCode'] as Input_StringComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('addedAt')) {
      final l$addedAt = addedAt;
      result$data['addedAt'] = l$addedAt?.toJson();
    }
    if (_$data.containsKey('addedBy')) {
      final l$addedBy = addedBy;
      result$data['addedBy'] = l$addedBy?.toJson();
    }
    if (_$data.containsKey('addedByUser')) {
      final l$addedByUser = addedByUser;
      result$data['addedByUser'] = l$addedByUser?.toJson();
    }
    if (_$data.containsKey('employeeCode')) {
      final l$employeeCode = employeeCode;
      result$data['employeeCode'] = l$employeeCode?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsFingerprintIdsBoolExp<
    Input_PersonsFingerprintIdsBoolExp
  >
  get copyWith => CopyWith_Input_PersonsFingerprintIdsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsFingerprintIdsBoolExp ||
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
    final l$addedAt = addedAt;
    final lOther$addedAt = other.addedAt;
    if (_$data.containsKey('addedAt') != other._$data.containsKey('addedAt')) {
      return false;
    }
    if (l$addedAt != lOther$addedAt) {
      return false;
    }
    final l$addedBy = addedBy;
    final lOther$addedBy = other.addedBy;
    if (_$data.containsKey('addedBy') != other._$data.containsKey('addedBy')) {
      return false;
    }
    if (l$addedBy != lOther$addedBy) {
      return false;
    }
    final l$addedByUser = addedByUser;
    final lOther$addedByUser = other.addedByUser;
    if (_$data.containsKey('addedByUser') !=
        other._$data.containsKey('addedByUser')) {
      return false;
    }
    if (l$addedByUser != lOther$addedByUser) {
      return false;
    }
    final l$employeeCode = employeeCode;
    final lOther$employeeCode = other.employeeCode;
    if (_$data.containsKey('employeeCode') !=
        other._$data.containsKey('employeeCode')) {
      return false;
    }
    if (l$employeeCode != lOther$employeeCode) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$addedAt = addedAt;
    final l$addedBy = addedBy;
    final l$addedByUser = addedByUser;
    final l$employeeCode = employeeCode;
    final l$id = id;
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
      _$data.containsKey('addedAt') ? l$addedAt : const {},
      _$data.containsKey('addedBy') ? l$addedBy : const {},
      _$data.containsKey('addedByUser') ? l$addedByUser : const {},
      _$data.containsKey('employeeCode') ? l$employeeCode : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> {
  factory CopyWith_Input_PersonsFingerprintIdsBoolExp(
    Input_PersonsFingerprintIdsBoolExp instance,
    TRes Function(Input_PersonsFingerprintIdsBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsFingerprintIdsBoolExp;

  factory CopyWith_Input_PersonsFingerprintIdsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsFingerprintIdsBoolExp;

  TRes call({
    List<Input_PersonsFingerprintIdsBoolExp>? $_and,
    Input_PersonsFingerprintIdsBoolExp? $_not,
    List<Input_PersonsFingerprintIdsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? addedAt,
    Input_UuidComparisonExp? addedBy,
    Input_AuthUsersDataBoolExp? addedByUser,
    Input_StringComparisonExp? employeeCode,
    Input_UuidComparisonExp? id,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
    Iterable<Input_PersonsFingerprintIdsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsFingerprintIdsBoolExp<
          Input_PersonsFingerprintIdsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsFingerprintIdsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsFingerprintIdsBoolExp<
          Input_PersonsFingerprintIdsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_TimestamptzComparisonExp<TRes> get addedAt;
  CopyWith_Input_UuidComparisonExp<TRes> get addedBy;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get addedByUser;
  CopyWith_Input_StringComparisonExp<TRes> get employeeCode;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_PersonsFingerprintIdsBoolExp<TRes>
    implements CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsFingerprintIdsBoolExp(this._instance, this._then);

  final Input_PersonsFingerprintIdsBoolExp _instance;

  final TRes Function(Input_PersonsFingerprintIdsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? addedAt = _undefined,
    Object? addedBy = _undefined,
    Object? addedByUser = _undefined,
    Object? employeeCode = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_PersonsFingerprintIdsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsFingerprintIdsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_PersonsFingerprintIdsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_PersonsFingerprintIdsBoolExp>?),
      if (addedAt != _undefined)
        'addedAt': (addedAt as Input_TimestamptzComparisonExp?),
      if (addedBy != _undefined)
        'addedBy': (addedBy as Input_UuidComparisonExp?),
      if (addedByUser != _undefined)
        'addedByUser': (addedByUser as Input_AuthUsersDataBoolExp?),
      if (employeeCode != _undefined)
        'employeeCode': (employeeCode as Input_StringComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsFingerprintIdsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsFingerprintIdsBoolExp<
          Input_PersonsFingerprintIdsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsFingerprintIdsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsFingerprintIdsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsFingerprintIdsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_PersonsFingerprintIdsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsFingerprintIdsBoolExp<
          Input_PersonsFingerprintIdsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsFingerprintIdsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_TimestamptzComparisonExp<TRes> get addedAt {
    final local$addedAt = _instance.addedAt;
    return local$addedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$addedAt,
            (e) => call(addedAt: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get addedBy {
    final local$addedBy = _instance.addedBy;
    return local$addedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$addedBy,
            (e) => call(addedBy: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get addedByUser {
    final local$addedByUser = _instance.addedByUser;
    return local$addedByUser == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(
            local$addedByUser,
            (e) => call(addedByUser: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get employeeCode {
    final local$employeeCode = _instance.employeeCode;
    return local$employeeCode == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$employeeCode,
            (e) => call(employeeCode: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
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

class _CopyWithStubImpl_Input_PersonsFingerprintIdsBoolExp<TRes>
    implements CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsFingerprintIdsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsFingerprintIdsBoolExp>? $_and,
    Input_PersonsFingerprintIdsBoolExp? $_not,
    List<Input_PersonsFingerprintIdsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? addedAt,
    Input_UuidComparisonExp? addedBy,
    Input_AuthUsersDataBoolExp? addedByUser,
    Input_StringComparisonExp? employeeCode,
    Input_UuidComparisonExp? id,
    Input_UuidComparisonExp? personId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsFingerprintIdsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_TimestamptzComparisonExp<TRes> get addedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get addedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get addedByUser =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get employeeCode =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsFingerprintIdsInsertInput {
  factory Input_PersonsFingerprintIdsInsertInput({
    Input_AuthUsersDataObjRelInsertInput? addedByUser,
    String? employeeCode,
    UuidValue? personId,
  }) => Input_PersonsFingerprintIdsInsertInput._({
    if (addedByUser != null) r'addedByUser': addedByUser,
    if (employeeCode != null) r'employeeCode': employeeCode,
    if (personId != null) r'personId': personId,
  });

  Input_PersonsFingerprintIdsInsertInput._(this._$data);

  factory Input_PersonsFingerprintIdsInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addedByUser')) {
      final l$addedByUser = data['addedByUser'];
      result$data['addedByUser'] = l$addedByUser == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$addedByUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('employeeCode')) {
      final l$employeeCode = data['employeeCode'];
      result$data['employeeCode'] = (l$employeeCode as String?);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_PersonsFingerprintIdsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersDataObjRelInsertInput? get addedByUser =>
      (_$data['addedByUser'] as Input_AuthUsersDataObjRelInsertInput?);

  String? get employeeCode => (_$data['employeeCode'] as String?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addedByUser')) {
      final l$addedByUser = addedByUser;
      result$data['addedByUser'] = l$addedByUser?.toJson();
    }
    if (_$data.containsKey('employeeCode')) {
      final l$employeeCode = employeeCode;
      result$data['employeeCode'] = l$employeeCode;
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsFingerprintIdsInsertInput<
    Input_PersonsFingerprintIdsInsertInput
  >
  get copyWith =>
      CopyWith_Input_PersonsFingerprintIdsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsFingerprintIdsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addedByUser = addedByUser;
    final lOther$addedByUser = other.addedByUser;
    if (_$data.containsKey('addedByUser') !=
        other._$data.containsKey('addedByUser')) {
      return false;
    }
    if (l$addedByUser != lOther$addedByUser) {
      return false;
    }
    final l$employeeCode = employeeCode;
    final lOther$employeeCode = other.employeeCode;
    if (_$data.containsKey('employeeCode') !=
        other._$data.containsKey('employeeCode')) {
      return false;
    }
    if (l$employeeCode != lOther$employeeCode) {
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
    final l$addedByUser = addedByUser;
    final l$employeeCode = employeeCode;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('addedByUser') ? l$addedByUser : const {},
      _$data.containsKey('employeeCode') ? l$employeeCode : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsFingerprintIdsInsertInput<TRes> {
  factory CopyWith_Input_PersonsFingerprintIdsInsertInput(
    Input_PersonsFingerprintIdsInsertInput instance,
    TRes Function(Input_PersonsFingerprintIdsInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsFingerprintIdsInsertInput;

  factory CopyWith_Input_PersonsFingerprintIdsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsFingerprintIdsInsertInput;

  TRes call({
    Input_AuthUsersDataObjRelInsertInput? addedByUser,
    String? employeeCode,
    UuidValue? personId,
  });
  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get addedByUser;
}

class _CopyWithImpl_Input_PersonsFingerprintIdsInsertInput<TRes>
    implements CopyWith_Input_PersonsFingerprintIdsInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsFingerprintIdsInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsFingerprintIdsInsertInput _instance;

  final TRes Function(Input_PersonsFingerprintIdsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addedByUser = _undefined,
    Object? employeeCode = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_PersonsFingerprintIdsInsertInput._({
      ..._instance._$data,
      if (addedByUser != _undefined)
        'addedByUser': (addedByUser as Input_AuthUsersDataObjRelInsertInput?),
      if (employeeCode != _undefined) 'employeeCode': (employeeCode as String?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
    }),
  );

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get addedByUser {
    final local$addedByUser = _instance.addedByUser;
    return local$addedByUser == null
        ? CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataObjRelInsertInput(
            local$addedByUser,
            (e) => call(addedByUser: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsFingerprintIdsInsertInput<TRes>
    implements CopyWith_Input_PersonsFingerprintIdsInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsFingerprintIdsInsertInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersDataObjRelInsertInput? addedByUser,
    String? employeeCode,
    UuidValue? personId,
  }) => _res;

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get addedByUser =>
      CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_res);
}

class Input_PersonsFingerprintIdsOnConflict {
  factory Input_PersonsFingerprintIdsOnConflict({
    required Enum_PersonsFingerprintIdsConstraint constraint,
    List<Enum_PersonsFingerprintIdsUpdateColumn>? updateColumns,
    Input_PersonsFingerprintIdsBoolExp? where,
  }) => Input_PersonsFingerprintIdsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonsFingerprintIdsOnConflict._(this._$data);

  factory Input_PersonsFingerprintIdsOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonsFingerprintIdsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) =>
                fromJson_Enum_PersonsFingerprintIdsUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsFingerprintIdsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonsFingerprintIdsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsFingerprintIdsConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsFingerprintIdsConstraint);

  List<Enum_PersonsFingerprintIdsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_PersonsFingerprintIdsUpdateColumn>?);

  Input_PersonsFingerprintIdsBoolExp? get where =>
      (_$data['where'] as Input_PersonsFingerprintIdsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsFingerprintIdsConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsFingerprintIdsUpdateColumn>)
              .map((e) => toJson_Enum_PersonsFingerprintIdsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsFingerprintIdsOnConflict<
    Input_PersonsFingerprintIdsOnConflict
  >
  get copyWith =>
      CopyWith_Input_PersonsFingerprintIdsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsFingerprintIdsOnConflict ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$updateColumns = updateColumns;
    final lOther$updateColumns = other.updateColumns;
    if (_$data.containsKey('updateColumns') !=
        other._$data.containsKey('updateColumns')) {
      return false;
    }
    if (l$updateColumns != null && lOther$updateColumns != null) {
      if (l$updateColumns.length != lOther$updateColumns.length) {
        return false;
      }
      for (int i = 0; i < l$updateColumns.length; i++) {
        final l$updateColumns$entry = l$updateColumns[i];
        final lOther$updateColumns$entry = lOther$updateColumns[i];
        if (l$updateColumns$entry != lOther$updateColumns$entry) {
          return false;
        }
      }
    } else if (l$updateColumns != lOther$updateColumns) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$updateColumns = updateColumns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      _$data.containsKey('updateColumns')
          ? l$updateColumns == null
                ? null
                : Object.hashAll(l$updateColumns.map((v) => v))
          : const {},
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsFingerprintIdsOnConflict<TRes> {
  factory CopyWith_Input_PersonsFingerprintIdsOnConflict(
    Input_PersonsFingerprintIdsOnConflict instance,
    TRes Function(Input_PersonsFingerprintIdsOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsFingerprintIdsOnConflict;

  factory CopyWith_Input_PersonsFingerprintIdsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsFingerprintIdsOnConflict;

  TRes call({
    Enum_PersonsFingerprintIdsConstraint? constraint,
    List<Enum_PersonsFingerprintIdsUpdateColumn>? updateColumns,
    Input_PersonsFingerprintIdsBoolExp? where,
  });
  CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsFingerprintIdsOnConflict<TRes>
    implements CopyWith_Input_PersonsFingerprintIdsOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsFingerprintIdsOnConflict(
    this._instance,
    this._then,
  );

  final Input_PersonsFingerprintIdsOnConflict _instance;

  final TRes Function(Input_PersonsFingerprintIdsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonsFingerprintIdsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_PersonsFingerprintIdsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_PersonsFingerprintIdsUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_PersonsFingerprintIdsBoolExp?),
    }),
  );

  CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsFingerprintIdsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsFingerprintIdsBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsFingerprintIdsOnConflict<TRes>
    implements CopyWith_Input_PersonsFingerprintIdsOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsFingerprintIdsOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsFingerprintIdsConstraint? constraint,
    List<Enum_PersonsFingerprintIdsUpdateColumn>? updateColumns,
    Input_PersonsFingerprintIdsBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonsFingerprintIdsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsFingerprintIdsBoolExp.stub(_res);
}

class Input_PersonsFingerprintIdsOrderBy {
  factory Input_PersonsFingerprintIdsOrderBy({
    Enum_OrderBy? addedAt,
    Enum_OrderBy? addedBy,
    Input_AuthUsersDataOrderBy? addedByUser,
    Enum_OrderBy? employeeCode,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
  }) => Input_PersonsFingerprintIdsOrderBy._({
    if (addedAt != null) r'addedAt': addedAt,
    if (addedBy != null) r'addedBy': addedBy,
    if (addedByUser != null) r'addedByUser': addedByUser,
    if (employeeCode != null) r'employeeCode': employeeCode,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
  });

  Input_PersonsFingerprintIdsOrderBy._(this._$data);

  factory Input_PersonsFingerprintIdsOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addedAt')) {
      final l$addedAt = data['addedAt'];
      result$data['addedAt'] = l$addedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$addedAt as String));
    }
    if (data.containsKey('addedBy')) {
      final l$addedBy = data['addedBy'];
      result$data['addedBy'] = l$addedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$addedBy as String));
    }
    if (data.containsKey('addedByUser')) {
      final l$addedByUser = data['addedByUser'];
      result$data['addedByUser'] = l$addedByUser == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$addedByUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('employeeCode')) {
      final l$employeeCode = data['employeeCode'];
      result$data['employeeCode'] = l$employeeCode == null
          ? null
          : fromJson_Enum_OrderBy((l$employeeCode as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsFingerprintIdsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get addedAt => (_$data['addedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get addedBy => (_$data['addedBy'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get addedByUser =>
      (_$data['addedByUser'] as Input_AuthUsersDataOrderBy?);

  Enum_OrderBy? get employeeCode => (_$data['employeeCode'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addedAt')) {
      final l$addedAt = addedAt;
      result$data['addedAt'] = l$addedAt == null
          ? null
          : toJson_Enum_OrderBy(l$addedAt);
    }
    if (_$data.containsKey('addedBy')) {
      final l$addedBy = addedBy;
      result$data['addedBy'] = l$addedBy == null
          ? null
          : toJson_Enum_OrderBy(l$addedBy);
    }
    if (_$data.containsKey('addedByUser')) {
      final l$addedByUser = addedByUser;
      result$data['addedByUser'] = l$addedByUser?.toJson();
    }
    if (_$data.containsKey('employeeCode')) {
      final l$employeeCode = employeeCode;
      result$data['employeeCode'] = l$employeeCode == null
          ? null
          : toJson_Enum_OrderBy(l$employeeCode);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsFingerprintIdsOrderBy<
    Input_PersonsFingerprintIdsOrderBy
  >
  get copyWith => CopyWith_Input_PersonsFingerprintIdsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsFingerprintIdsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addedAt = addedAt;
    final lOther$addedAt = other.addedAt;
    if (_$data.containsKey('addedAt') != other._$data.containsKey('addedAt')) {
      return false;
    }
    if (l$addedAt != lOther$addedAt) {
      return false;
    }
    final l$addedBy = addedBy;
    final lOther$addedBy = other.addedBy;
    if (_$data.containsKey('addedBy') != other._$data.containsKey('addedBy')) {
      return false;
    }
    if (l$addedBy != lOther$addedBy) {
      return false;
    }
    final l$addedByUser = addedByUser;
    final lOther$addedByUser = other.addedByUser;
    if (_$data.containsKey('addedByUser') !=
        other._$data.containsKey('addedByUser')) {
      return false;
    }
    if (l$addedByUser != lOther$addedByUser) {
      return false;
    }
    final l$employeeCode = employeeCode;
    final lOther$employeeCode = other.employeeCode;
    if (_$data.containsKey('employeeCode') !=
        other._$data.containsKey('employeeCode')) {
      return false;
    }
    if (l$employeeCode != lOther$employeeCode) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$addedAt = addedAt;
    final l$addedBy = addedBy;
    final l$addedByUser = addedByUser;
    final l$employeeCode = employeeCode;
    final l$id = id;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('addedAt') ? l$addedAt : const {},
      _$data.containsKey('addedBy') ? l$addedBy : const {},
      _$data.containsKey('addedByUser') ? l$addedByUser : const {},
      _$data.containsKey('employeeCode') ? l$employeeCode : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}
