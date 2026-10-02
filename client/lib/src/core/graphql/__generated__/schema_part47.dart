// Part 47 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsOrderBy<TRes> {
  factory CopyWith_Input_PersonsOrderBy(
    Input_PersonsOrderBy instance,
    TRes Function(Input_PersonsOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsOrderBy;

  factory CopyWith_Input_PersonsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsOrderBy;

  TRes call({
    Input_AddressesOrderBy? address,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? birthday,
    Enum_OrderBy? blurhash,
    Input_HistoryCallHistoryAggregateOrderBy? callHistoryAggregate,
    Input_ChurchesOrderBy? church,
    Enum_OrderBy? churchId,
    Input_ClassesPersonsAggregateOrderBy? classesAggregate,
    Input_CollegesOrderBy? college,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Input_FathersOrderBy? father,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? gender,
    Input_PersonsGroupsAggregateOrderBy? groupsAggregate,
    Input_PersonsHobbiesAggregateOrderBy? hobbiesAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? isServant,
    Enum_OrderBy? isShammas,
    Enum_OrderBy? isStudent,
    Input_JobsOrderBy? job,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Input_HistoryLatestCallsOrderBy? lastCall,
    Input_HistoryLatestConfessionsOrderBy? lastConfession,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestKodasesOrderBy? lastKodas,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? otherPhones,
    Input_PersonTypesOrderBy? personType,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Input_QualificationsOrderBy? qualification,
    Enum_OrderBy? qualificationId,
    Input_SchoolsOrderBy? school,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Input_PersonsServicesAggregateOrderBy? servicesAggregate,
    Input_ChurchesOrderBy? servingChurch,
    Enum_OrderBy? servingChurchId,
    Input_ShammasLevelsOrderBy? shammasLevel,
    Enum_OrderBy? shammasLevelId,
    Input_PersonStatesOrderBy? state,
    Enum_OrderBy? stateId,
    Input_StoresOrderBy? store,
    Enum_OrderBy? storeId,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? studyYearId,
    Input_PersonsTagsAggregateOrderBy? tagsAggregate,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? userCanEdit,
    Input_HistoryVisitHistoryAggregateOrderBy? visitHistoryAggregate,
    Enum_OrderBy? workStatus,
  });
  CopyWith_Input_AddressesOrderBy<TRes> get address;
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryCallHistoryAggregateOrderBy<TRes>
  get callHistoryAggregate;
  CopyWith_Input_ChurchesOrderBy<TRes> get church;
  CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> get classesAggregate;
  CopyWith_Input_CollegesOrderBy<TRes> get college;
  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate;
  CopyWith_Input_FamiliesOrderBy<TRes> get family;
  CopyWith_Input_FathersOrderBy<TRes> get father;
  CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> get groupsAggregate;
  CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> get hobbiesAggregate;
  CopyWith_Input_JobsOrderBy<TRes> get job;
  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate;
  CopyWith_Input_HistoryLatestCallsOrderBy<TRes> get lastCall;
  CopyWith_Input_HistoryLatestConfessionsOrderBy<TRes> get lastConfession;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_HistoryLatestKodasesOrderBy<TRes> get lastKodas;
  CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> get lastVisit;
  CopyWith_Input_PersonTypesOrderBy<TRes> get personType;
  CopyWith_Input_QualificationsOrderBy<TRes> get qualification;
  CopyWith_Input_SchoolsOrderBy<TRes> get school;
  CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> get servicesAggregate;
  CopyWith_Input_ChurchesOrderBy<TRes> get servingChurch;
  CopyWith_Input_ShammasLevelsOrderBy<TRes> get shammasLevel;
  CopyWith_Input_PersonStatesOrderBy<TRes> get state;
  CopyWith_Input_StoresOrderBy<TRes> get store;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
  CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> get tagsAggregate;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
  CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
  get visitHistoryAggregate;
}

class _CopyWithImpl_Input_PersonsOrderBy<TRes>
    implements CopyWith_Input_PersonsOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsOrderBy(this._instance, this._then);

  final Input_PersonsOrderBy _instance;

  final TRes Function(Input_PersonsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? birthdate = _undefined,
    Object? birthday = _undefined,
    Object? blurhash = _undefined,
    Object? callHistoryAggregate = _undefined,
    Object? church = _undefined,
    Object? churchId = _undefined,
    Object? classesAggregate = _undefined,
    Object? college = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? father = _undefined,
    Object? fatherId = _undefined,
    Object? gender = _undefined,
    Object? groupsAggregate = _undefined,
    Object? hobbiesAggregate = _undefined,
    Object? id = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
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
    Object? servicesAggregate = _undefined,
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
    Object? tagsAggregate = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
    Object? userCanEdit = _undefined,
    Object? visitHistoryAggregate = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsOrderBy._({
      ..._instance._$data,
      if (address != _undefined)
        'address': (address as Input_AddressesOrderBy?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
      if (birthday != _undefined) 'birthday': (birthday as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (callHistoryAggregate != _undefined)
        'callHistoryAggregate':
            (callHistoryAggregate as Input_HistoryCallHistoryAggregateOrderBy?),
      if (church != _undefined) 'church': (church as Input_ChurchesOrderBy?),
      if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesPersonsAggregateOrderBy?),
      if (college != _undefined) 'college': (college as Input_CollegesOrderBy?),
      if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (confessionHistoryAggregate != _undefined)
        'confessionHistoryAggregate':
            (confessionHistoryAggregate
                as Input_HistoryConfessionHistoryAggregateOrderBy?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateOrderBy?),
      if (family != _undefined) 'family': (family as Input_FamiliesOrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (father != _undefined) 'father': (father as Input_FathersOrderBy?),
      if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
      if (gender != _undefined) 'gender': (gender as Enum_OrderBy?),
      if (groupsAggregate != _undefined)
        'groupsAggregate':
            (groupsAggregate as Input_PersonsGroupsAggregateOrderBy?),
      if (hobbiesAggregate != _undefined)
        'hobbiesAggregate':
            (hobbiesAggregate as Input_PersonsHobbiesAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (isServant != _undefined) 'isServant': (isServant as Enum_OrderBy?),
      if (isShammas != _undefined) 'isShammas': (isShammas as Enum_OrderBy?),
      if (isStudent != _undefined) 'isStudent': (isStudent as Enum_OrderBy?),
      if (job != _undefined) 'job': (job as Input_JobsOrderBy?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Enum_OrderBy?),
      if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
      if (kodasHistoryAggregate != _undefined)
        'kodasHistoryAggregate':
            (kodasHistoryAggregate
                as Input_HistoryKodasHistoryAggregateOrderBy?),
      if (lastCall != _undefined)
        'lastCall': (lastCall as Input_HistoryLatestCallsOrderBy?),
      if (lastConfession != _undefined)
        'lastConfession':
            (lastConfession as Input_HistoryLatestConfessionsOrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (lastKodas != _undefined)
        'lastKodas': (lastKodas as Input_HistoryLatestKodasesOrderBy?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_HistoryLatestVisitsOrderBy?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as Enum_OrderBy?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
      if (otherPhones != _undefined)
        'otherPhones': (otherPhones as Enum_OrderBy?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesOrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (qualification != _undefined)
        'qualification': (qualification as Input_QualificationsOrderBy?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as Enum_OrderBy?),
      if (school != _undefined) 'school': (school as Input_SchoolsOrderBy?),
      if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Enum_OrderBy?),
      if (servicesAggregate != _undefined)
        'servicesAggregate':
            (servicesAggregate as Input_PersonsServicesAggregateOrderBy?),
      if (servingChurch != _undefined)
        'servingChurch': (servingChurch as Input_ChurchesOrderBy?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as Enum_OrderBy?),
      if (shammasLevel != _undefined)
        'shammasLevel': (shammasLevel as Input_ShammasLevelsOrderBy?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
      if (state != _undefined) 'state': (state as Input_PersonStatesOrderBy?),
      if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
      if (store != _undefined) 'store': (store as Input_StoresOrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsOrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (tagsAggregate != _undefined)
        'tagsAggregate': (tagsAggregate as Input_PersonsTagsAggregateOrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Enum_OrderBy?),
      if (visitHistoryAggregate != _undefined)
        'visitHistoryAggregate':
            (visitHistoryAggregate
                as Input_HistoryVisitHistoryAggregateOrderBy?),
      if (workStatus != _undefined) 'workStatus': (workStatus as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AddressesOrderBy<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesOrderBy(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryCallHistoryAggregateOrderBy<TRes>
  get callHistoryAggregate {
    final local$callHistoryAggregate = _instance.callHistoryAggregate;
    return local$callHistoryAggregate == null
        ? CopyWith_Input_HistoryCallHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryCallHistoryAggregateOrderBy(
            local$callHistoryAggregate,
            (e) => call(callHistoryAggregate: e),
          );
  }

  CopyWith_Input_ChurchesOrderBy<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ChurchesOrderBy(local$church, (e) => call(church: e));
  }

  CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesPersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsAggregateOrderBy(
            local$classesAggregate,
            (e) => call(classesAggregate: e),
          );
  }

  CopyWith_Input_CollegesOrderBy<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Input_CollegesOrderBy.stub(_then(_instance))
        : CopyWith_Input_CollegesOrderBy(
            local$college,
            (e) => call(college: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistoryAggregate,
            (e) => call(editHistoryAggregate: e),
          );
  }

  CopyWith_Input_FamiliesOrderBy<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$family, (e) => call(family: e));
  }

  CopyWith_Input_FathersOrderBy<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Input_FathersOrderBy.stub(_then(_instance))
        : CopyWith_Input_FathersOrderBy(local$father, (e) => call(father: e));
  }

  CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> get groupsAggregate {
    final local$groupsAggregate = _instance.groupsAggregate;
    return local$groupsAggregate == null
        ? CopyWith_Input_PersonsGroupsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsAggregateOrderBy(
            local$groupsAggregate,
            (e) => call(groupsAggregate: e),
          );
  }

  CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> get hobbiesAggregate {
    final local$hobbiesAggregate = _instance.hobbiesAggregate;
    return local$hobbiesAggregate == null
        ? CopyWith_Input_PersonsHobbiesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesAggregateOrderBy(
            local$hobbiesAggregate,
            (e) => call(hobbiesAggregate: e),
          );
  }

  CopyWith_Input_JobsOrderBy<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Input_JobsOrderBy.stub(_then(_instance))
        : CopyWith_Input_JobsOrderBy(local$job, (e) => call(job: e));
  }

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryAggregateOrderBy(
            local$kodasHistoryAggregate,
            (e) => call(kodasHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryLatestCallsOrderBy<TRes> get lastCall {
    final local$lastCall = _instance.lastCall;
    return local$lastCall == null
        ? CopyWith_Input_HistoryLatestCallsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestCallsOrderBy(
            local$lastCall,
            (e) => call(lastCall: e),
          );
  }

  CopyWith_Input_HistoryLatestConfessionsOrderBy<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Input_HistoryLatestConfessionsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestConfessionsOrderBy(
            local$lastConfession,
            (e) => call(lastConfession: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_HistoryLatestKodasesOrderBy<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Input_HistoryLatestKodasesOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestKodasesOrderBy(
            local$lastKodas,
            (e) => call(lastKodas: e),
          );
  }

  CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_HistoryLatestVisitsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestVisitsOrderBy(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_PersonTypesOrderBy<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonTypesOrderBy(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Input_QualificationsOrderBy<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Input_QualificationsOrderBy.stub(_then(_instance))
        : CopyWith_Input_QualificationsOrderBy(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Input_SchoolsOrderBy<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Input_SchoolsOrderBy.stub(_then(_instance))
        : CopyWith_Input_SchoolsOrderBy(local$school, (e) => call(school: e));
  }

  CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> get servicesAggregate {
    final local$servicesAggregate = _instance.servicesAggregate;
    return local$servicesAggregate == null
        ? CopyWith_Input_PersonsServicesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesAggregateOrderBy(
            local$servicesAggregate,
            (e) => call(servicesAggregate: e),
          );
  }

  CopyWith_Input_ChurchesOrderBy<TRes> get servingChurch {
    final local$servingChurch = _instance.servingChurch;
    return local$servingChurch == null
        ? CopyWith_Input_ChurchesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ChurchesOrderBy(
            local$servingChurch,
            (e) => call(servingChurch: e),
          );
  }

  CopyWith_Input_ShammasLevelsOrderBy<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Input_ShammasLevelsOrderBy.stub(_then(_instance))
        : CopyWith_Input_ShammasLevelsOrderBy(
            local$shammasLevel,
            (e) => call(shammasLevel: e),
          );
  }

  CopyWith_Input_PersonStatesOrderBy<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Input_PersonStatesOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonStatesOrderBy(
            local$state,
            (e) => call(state: e),
          );
  }

  CopyWith_Input_StoresOrderBy<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoresOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresOrderBy(local$store, (e) => call(store: e));
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> get tagsAggregate {
    final local$tagsAggregate = _instance.tagsAggregate;
    return local$tagsAggregate == null
        ? CopyWith_Input_PersonsTagsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsAggregateOrderBy(
            local$tagsAggregate,
            (e) => call(tagsAggregate: e),
          );
  }

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }

  CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
  get visitHistoryAggregate {
    final local$visitHistoryAggregate = _instance.visitHistoryAggregate;
    return local$visitHistoryAggregate == null
        ? CopyWith_Input_HistoryVisitHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryVisitHistoryAggregateOrderBy(
            local$visitHistoryAggregate,
            (e) => call(visitHistoryAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsOrderBy<TRes>
    implements CopyWith_Input_PersonsOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsOrderBy(this._res);

  TRes _res;

  call({
    Input_AddressesOrderBy? address,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? birthday,
    Enum_OrderBy? blurhash,
    Input_HistoryCallHistoryAggregateOrderBy? callHistoryAggregate,
    Input_ChurchesOrderBy? church,
    Enum_OrderBy? churchId,
    Input_ClassesPersonsAggregateOrderBy? classesAggregate,
    Input_CollegesOrderBy? college,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Input_FathersOrderBy? father,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? gender,
    Input_PersonsGroupsAggregateOrderBy? groupsAggregate,
    Input_PersonsHobbiesAggregateOrderBy? hobbiesAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? isServant,
    Enum_OrderBy? isShammas,
    Enum_OrderBy? isStudent,
    Input_JobsOrderBy? job,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Input_HistoryLatestCallsOrderBy? lastCall,
    Input_HistoryLatestConfessionsOrderBy? lastConfession,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestKodasesOrderBy? lastKodas,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? otherPhones,
    Input_PersonTypesOrderBy? personType,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Input_QualificationsOrderBy? qualification,
    Enum_OrderBy? qualificationId,
    Input_SchoolsOrderBy? school,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Input_PersonsServicesAggregateOrderBy? servicesAggregate,
    Input_ChurchesOrderBy? servingChurch,
    Enum_OrderBy? servingChurchId,
    Input_ShammasLevelsOrderBy? shammasLevel,
    Enum_OrderBy? shammasLevelId,
    Input_PersonStatesOrderBy? state,
    Enum_OrderBy? stateId,
    Input_StoresOrderBy? store,
    Enum_OrderBy? storeId,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? studyYearId,
    Input_PersonsTagsAggregateOrderBy? tagsAggregate,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? userCanEdit,
    Input_HistoryVisitHistoryAggregateOrderBy? visitHistoryAggregate,
    Enum_OrderBy? workStatus,
  }) => _res;

  CopyWith_Input_AddressesOrderBy<TRes> get address =>
      CopyWith_Input_AddressesOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryCallHistoryAggregateOrderBy<TRes>
  get callHistoryAggregate =>
      CopyWith_Input_HistoryCallHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_ChurchesOrderBy<TRes> get church =>
      CopyWith_Input_ChurchesOrderBy.stub(_res);

  CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> get classesAggregate =>
      CopyWith_Input_ClassesPersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_CollegesOrderBy<TRes> get college =>
      CopyWith_Input_CollegesOrderBy.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate =>
      CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_FamiliesOrderBy<TRes> get family =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);

  CopyWith_Input_FathersOrderBy<TRes> get father =>
      CopyWith_Input_FathersOrderBy.stub(_res);

  CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> get groupsAggregate =>
      CopyWith_Input_PersonsGroupsAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> get hobbiesAggregate =>
      CopyWith_Input_PersonsHobbiesAggregateOrderBy.stub(_res);

  CopyWith_Input_JobsOrderBy<TRes> get job =>
      CopyWith_Input_JobsOrderBy.stub(_res);

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate =>
      CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestCallsOrderBy<TRes> get lastCall =>
      CopyWith_Input_HistoryLatestCallsOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestConfessionsOrderBy<TRes> get lastConfession =>
      CopyWith_Input_HistoryLatestConfessionsOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestKodasesOrderBy<TRes> get lastKodas =>
      CopyWith_Input_HistoryLatestKodasesOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> get lastVisit =>
      CopyWith_Input_HistoryLatestVisitsOrderBy.stub(_res);

  CopyWith_Input_PersonTypesOrderBy<TRes> get personType =>
      CopyWith_Input_PersonTypesOrderBy.stub(_res);

  CopyWith_Input_QualificationsOrderBy<TRes> get qualification =>
      CopyWith_Input_QualificationsOrderBy.stub(_res);

  CopyWith_Input_SchoolsOrderBy<TRes> get school =>
      CopyWith_Input_SchoolsOrderBy.stub(_res);

  CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> get servicesAggregate =>
      CopyWith_Input_PersonsServicesAggregateOrderBy.stub(_res);

  CopyWith_Input_ChurchesOrderBy<TRes> get servingChurch =>
      CopyWith_Input_ChurchesOrderBy.stub(_res);

  CopyWith_Input_ShammasLevelsOrderBy<TRes> get shammasLevel =>
      CopyWith_Input_ShammasLevelsOrderBy.stub(_res);

  CopyWith_Input_PersonStatesOrderBy<TRes> get state =>
      CopyWith_Input_PersonStatesOrderBy.stub(_res);

  CopyWith_Input_StoresOrderBy<TRes> get store =>
      CopyWith_Input_StoresOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);

  CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> get tagsAggregate =>
      CopyWith_Input_PersonsTagsAggregateOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);

  CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
  get visitHistoryAggregate =>
      CopyWith_Input_HistoryVisitHistoryAggregateOrderBy.stub(_res);
}

class Input_PersonsPkColumnsInput {
  factory Input_PersonsPkColumnsInput({required UuidValue id}) =>
      Input_PersonsPkColumnsInput._({r'id': id});

  Input_PersonsPkColumnsInput._(this._$data);

  factory Input_PersonsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_PersonsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_PersonsPkColumnsInput<Input_PersonsPkColumnsInput>
  get copyWith => CopyWith_Input_PersonsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Input_PersonsPkColumnsInput<TRes> {
  factory CopyWith_Input_PersonsPkColumnsInput(
    Input_PersonsPkColumnsInput instance,
    TRes Function(Input_PersonsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_PersonsPkColumnsInput;

  factory CopyWith_Input_PersonsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_PersonsPkColumnsInput<TRes>
    implements CopyWith_Input_PersonsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_PersonsPkColumnsInput(this._instance, this._then);

  final Input_PersonsPkColumnsInput _instance;

  final TRes Function(Input_PersonsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_PersonsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsPkColumnsInput<TRes>
    implements CopyWith_Input_PersonsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_PersonsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_PersonsPrependInput {
  factory Input_PersonsPrependInput({Json? otherPhones}) =>
      Input_PersonsPrependInput._({
        if (otherPhones != null) r'otherPhones': otherPhones,
      });

  Input_PersonsPrependInput._(this._$data);

  factory Input_PersonsPrependInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as Json?);
    }
    return Input_PersonsPrependInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get otherPhones => (_$data['otherPhones'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    return result$data;
  }

  CopyWith_Input_PersonsPrependInput<Input_PersonsPrependInput> get copyWith =>
      CopyWith_Input_PersonsPrependInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsPrependInput ||
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

abstract class CopyWith_Input_PersonsPrependInput<TRes> {
  factory CopyWith_Input_PersonsPrependInput(
    Input_PersonsPrependInput instance,
    TRes Function(Input_PersonsPrependInput) then,
  ) = _CopyWithImpl_Input_PersonsPrependInput;

  factory CopyWith_Input_PersonsPrependInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsPrependInput;

  TRes call({Json? otherPhones});
}

class _CopyWithImpl_Input_PersonsPrependInput<TRes>
    implements CopyWith_Input_PersonsPrependInput<TRes> {
  _CopyWithImpl_Input_PersonsPrependInput(this._instance, this._then);

  final Input_PersonsPrependInput _instance;

  final TRes Function(Input_PersonsPrependInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? otherPhones = _undefined}) => _then(
    Input_PersonsPrependInput._({
      ..._instance._$data,
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsPrependInput<TRes>
    implements CopyWith_Input_PersonsPrependInput<TRes> {
  _CopyWithStubImpl_Input_PersonsPrependInput(this._res);

  TRes _res;

  call({Json? otherPhones}) => _res;
}

class Input_PersonsServicesAggregateOrderBy {
  factory Input_PersonsServicesAggregateOrderBy({
    Enum_OrderBy? count,
    Input_PersonsServicesMaxOrderBy? max,
    Input_PersonsServicesMinOrderBy? min,
  }) => Input_PersonsServicesAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_PersonsServicesAggregateOrderBy._(this._$data);

  factory Input_PersonsServicesAggregateOrderBy.fromJson(
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
          : Input_PersonsServicesMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_PersonsServicesMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_PersonsServicesMaxOrderBy? get max =>
      (_$data['max'] as Input_PersonsServicesMaxOrderBy?);

  Input_PersonsServicesMinOrderBy? get min =>
      (_$data['min'] as Input_PersonsServicesMinOrderBy?);

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

  CopyWith_Input_PersonsServicesAggregateOrderBy<
    Input_PersonsServicesAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_PersonsServicesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesAggregateOrderBy ||
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

abstract class CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesAggregateOrderBy(
    Input_PersonsServicesAggregateOrderBy instance,
    TRes Function(Input_PersonsServicesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesAggregateOrderBy;

  factory CopyWith_Input_PersonsServicesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_PersonsServicesMaxOrderBy? max,
    Input_PersonsServicesMinOrderBy? min,
  });
  CopyWith_Input_PersonsServicesMaxOrderBy<TRes> get max;
  CopyWith_Input_PersonsServicesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_PersonsServicesAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsServicesAggregateOrderBy _instance;

  final TRes Function(Input_PersonsServicesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_PersonsServicesAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_PersonsServicesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_PersonsServicesMinOrderBy?),
    }),
  );

  CopyWith_Input_PersonsServicesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_PersonsServicesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_PersonsServicesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_PersonsServicesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_PersonsServicesMaxOrderBy? max,
    Input_PersonsServicesMinOrderBy? min,
  }) => _res;

  CopyWith_Input_PersonsServicesMaxOrderBy<TRes> get max =>
      CopyWith_Input_PersonsServicesMaxOrderBy.stub(_res);

  CopyWith_Input_PersonsServicesMinOrderBy<TRes> get min =>
      CopyWith_Input_PersonsServicesMinOrderBy.stub(_res);
}

class Input_PersonsServicesArrRelInsertInput {
  factory Input_PersonsServicesArrRelInsertInput({
    required List<Input_PersonsServicesInsertInput> data,
    Input_PersonsServicesOnConflict? onConflict,
  }) => Input_PersonsServicesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsServicesArrRelInsertInput._(this._$data);

  factory Input_PersonsServicesArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_PersonsServicesInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsServicesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsServicesInsertInput> get data =>
      (_$data['data'] as List<Input_PersonsServicesInsertInput>);

  Input_PersonsServicesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsServicesOnConflict?);

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

  CopyWith_Input_PersonsServicesArrRelInsertInput<
    Input_PersonsServicesArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_PersonsServicesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesArrRelInsertInput ||
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

abstract class CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsServicesArrRelInsertInput(
    Input_PersonsServicesArrRelInsertInput instance,
    TRes Function(Input_PersonsServicesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesArrRelInsertInput;

  factory CopyWith_Input_PersonsServicesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesArrRelInsertInput;

  TRes call({
    List<Input_PersonsServicesInsertInput>? data,
    Input_PersonsServicesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_PersonsServicesInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsServicesInsertInput<
          Input_PersonsServicesInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_PersonsServicesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsServicesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsServicesArrRelInsertInput _instance;

  final TRes Function(Input_PersonsServicesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonsServicesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_PersonsServicesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonsServicesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_PersonsServicesInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsServicesInsertInput<
          Input_PersonsServicesInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_PersonsServicesInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_PersonsServicesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsServicesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsServicesInsertInput>? data,
    Input_PersonsServicesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsServicesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsServicesOnConflict.stub(_res);
}

class Input_PersonsServicesBoolExp {
  factory Input_PersonsServicesBoolExp({
    List<Input_PersonsServicesBoolExp>? $_and,
    Input_PersonsServicesBoolExp? $_not,
    List<Input_PersonsServicesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
  }) => Input_PersonsServicesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesBoolExp._(this._$data);

  factory Input_PersonsServicesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsServicesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsServicesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsServicesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsServicesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsServicesBoolExp>?);

  Input_PersonsServicesBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsServicesBoolExp?);

  List<Input_PersonsServicesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsServicesBoolExp>?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
  get copyWith => CopyWith_Input_PersonsServicesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesBoolExp ||
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$person = person;
    final l$personId = personId;
    final l$service = service;
    final l$serviceId = serviceId;
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
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesBoolExp<TRes> {
  factory CopyWith_Input_PersonsServicesBoolExp(
    Input_PersonsServicesBoolExp instance,
    TRes Function(Input_PersonsServicesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsServicesBoolExp;

  factory CopyWith_Input_PersonsServicesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesBoolExp;

  TRes call({
    List<Input_PersonsServicesBoolExp>? $_and,
    Input_PersonsServicesBoolExp? $_not,
    List<Input_PersonsServicesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
  });
  TRes $_and(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsServicesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
}

class _CopyWithImpl_Input_PersonsServicesBoolExp<TRes>
    implements CopyWith_Input_PersonsServicesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsServicesBoolExp(this._instance, this._then);

  final Input_PersonsServicesBoolExp _instance;

  final TRes Function(Input_PersonsServicesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_PersonsServicesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsServicesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonsServicesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_PersonsServicesBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsServicesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsServicesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsServicesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesBoolExp<TRes>
    implements CopyWith_Input_PersonsServicesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsServicesBoolExp>? $_and,
    Input_PersonsServicesBoolExp? $_not,
    List<Input_PersonsServicesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsServicesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsServicesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsServicesInsertInput {
  factory Input_PersonsServicesInsertInput({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
  }) => Input_PersonsServicesInsertInput._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesInsertInput._(this._$data);

  factory Input_PersonsServicesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    return Input_PersonsServicesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesInsertInput<Input_PersonsServicesInsertInput>
  get copyWith => CopyWith_Input_PersonsServicesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$personId = personId;
    final l$service = service;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesInsertInput<TRes> {
  factory CopyWith_Input_PersonsServicesInsertInput(
    Input_PersonsServicesInsertInput instance,
    TRes Function(Input_PersonsServicesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesInsertInput;

  factory CopyWith_Input_PersonsServicesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesInsertInput;

  TRes call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
  });
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
}

class _CopyWithImpl_Input_PersonsServicesInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesInsertInput(this._instance, this._then);

  final Input_PersonsServicesInsertInput _instance;

  final TRes Function(Input_PersonsServicesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_PersonsServicesInsertInput._({
      ..._instance._$data,
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
    }),
  );

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
  }) => _res;

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);
}

class Input_PersonsServicesMaxOrderBy {
  factory Input_PersonsServicesMaxOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? serviceId,
  }) => Input_PersonsServicesMaxOrderBy._({
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesMaxOrderBy._(this._$data);

  factory Input_PersonsServicesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_PersonsServicesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesMaxOrderBy<Input_PersonsServicesMaxOrderBy>
  get copyWith => CopyWith_Input_PersonsServicesMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesMaxOrderBy(
    Input_PersonsServicesMaxOrderBy instance,
    TRes Function(Input_PersonsServicesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesMaxOrderBy;

  factory CopyWith_Input_PersonsServicesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesMaxOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? serviceId});
}

class _CopyWithImpl_Input_PersonsServicesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesMaxOrderBy(this._instance, this._then);

  final Input_PersonsServicesMaxOrderBy _instance;

  final TRes Function(Input_PersonsServicesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? serviceId = _undefined}) =>
      _then(
        Input_PersonsServicesMaxOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (serviceId != _undefined)
            'serviceId': (serviceId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsServicesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? serviceId}) => _res;
}

class Input_PersonsServicesMinOrderBy {
  factory Input_PersonsServicesMinOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? serviceId,
  }) => Input_PersonsServicesMinOrderBy._({
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesMinOrderBy._(this._$data);

  factory Input_PersonsServicesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_PersonsServicesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesMinOrderBy<Input_PersonsServicesMinOrderBy>
  get copyWith => CopyWith_Input_PersonsServicesMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesMinOrderBy(
    Input_PersonsServicesMinOrderBy instance,
    TRes Function(Input_PersonsServicesMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesMinOrderBy;

  factory CopyWith_Input_PersonsServicesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesMinOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? serviceId});
}

class _CopyWithImpl_Input_PersonsServicesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesMinOrderBy(this._instance, this._then);

  final Input_PersonsServicesMinOrderBy _instance;

  final TRes Function(Input_PersonsServicesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? serviceId = _undefined}) =>
      _then(
        Input_PersonsServicesMinOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (serviceId != _undefined)
            'serviceId': (serviceId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsServicesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? serviceId}) => _res;
}

class Input_PersonsServicesOnConflict {
  factory Input_PersonsServicesOnConflict({
    required Enum_PersonsServicesConstraint constraint,
    List<Enum_PersonsServicesUpdateColumn>? updateColumns,
    Input_PersonsServicesBoolExp? where,
  }) => Input_PersonsServicesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonsServicesOnConflict._(this._$data);

  factory Input_PersonsServicesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonsServicesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsServicesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsServicesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsServicesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsServicesConstraint);

  List<Enum_PersonsServicesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsServicesUpdateColumn>?);

  Input_PersonsServicesBoolExp? get where =>
      (_$data['where'] as Input_PersonsServicesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsServicesConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsServicesUpdateColumn>)
              .map((e) => toJson_Enum_PersonsServicesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesOnConflict<Input_PersonsServicesOnConflict>
  get copyWith => CopyWith_Input_PersonsServicesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesOnConflict ||
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

abstract class CopyWith_Input_PersonsServicesOnConflict<TRes> {
  factory CopyWith_Input_PersonsServicesOnConflict(
    Input_PersonsServicesOnConflict instance,
    TRes Function(Input_PersonsServicesOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsServicesOnConflict;

  factory CopyWith_Input_PersonsServicesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesOnConflict;

  TRes call({
    Enum_PersonsServicesConstraint? constraint,
    List<Enum_PersonsServicesUpdateColumn>? updateColumns,
    Input_PersonsServicesBoolExp? where,
  });
  CopyWith_Input_PersonsServicesBoolExp<TRes> get where;
}
