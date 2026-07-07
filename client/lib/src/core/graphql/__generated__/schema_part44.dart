// Part 44 of the schema
part of "schema.graphql.dart";

class _CopyWithImpl_Input_PersonsInsertInput<TRes>
    implements CopyWith_Input_PersonsInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsInsertInput(this._instance, this._then);

  final Input_PersonsInsertInput _instance;

  final TRes Function(Input_PersonsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? attendanceHistory = _undefined,
    Object? birthdate = _undefined,
    Object? callHistory = _undefined,
    Object? church = _undefined,
    Object? churchId = _undefined,
    Object? college = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? confessionHistory = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? father = _undefined,
    Object? fatherId = _undefined,
    Object? gender = _undefined,
    Object? groups = _undefined,
    Object? hobbies = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? kodasHistory = _undefined,
    Object? mainPhone = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personType = _undefined,
    Object? personTypeId = _undefined,
    Object? qualification = _undefined,
    Object? qualificationId = _undefined,
    Object? school = _undefined,
    Object? schoolId = _undefined,
    Object? serviceType = _undefined,
    Object? services = _undefined,
    Object? servingChurch = _undefined,
    Object? servingChurchId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? state = _undefined,
    Object? stateId = _undefined,
    Object? store = _undefined,
    Object? storeId = _undefined,
    Object? studyYear = _undefined,
    Object? studyYearId = _undefined,
    Object? tags = _undefined,
    Object? visitHistory = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsInsertInput._({
      ..._instance._$data,
      if (address != _undefined)
        'address': (address as Input_AddressesObjRelInsertInput?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory
                as Input_HistoryAttendanceHistoryArrRelInsertInput?),
      if (birthdate != _undefined) 'birthdate': (birthdate as DateTime?),
      if (callHistory != _undefined)
        'callHistory':
            (callHistory as Input_HistoryCallHistoryArrRelInsertInput?),
      if (church != _undefined)
        'church': (church as Input_ChurchesObjRelInsertInput?),
      if (churchId != _undefined) 'churchId': (churchId as UuidValue?),
      if (college != _undefined)
        'college': (college as Input_CollegesObjRelInsertInput?),
      if (collegeId != _undefined) 'collegeId': (collegeId as UuidValue?),
      if (color != _undefined) 'color': (color as int?),
      if (confessionHistory != _undefined)
        'confessionHistory':
            (confessionHistory
                as Input_HistoryConfessionHistoryArrRelInsertInput?),
      if (family != _undefined)
        'family': (family as Input_FamiliesObjRelInsertInput?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (father != _undefined)
        'father': (father as Input_FathersObjRelInsertInput?),
      if (fatherId != _undefined) 'fatherId': (fatherId as UuidValue?),
      if (gender != _undefined) 'gender': (gender as bool?),
      if (groups != _undefined)
        'groups': (groups as Input_PersonsGroupsArrRelInsertInput?),
      if (hobbies != _undefined)
        'hobbies': (hobbies as Input_PersonsHobbiesArrRelInsertInput?),
      if (isServant != _undefined) 'isServant': (isServant as bool?),
      if (isShammas != _undefined) 'isShammas': (isShammas as bool?),
      if (isStudent != _undefined) 'isStudent': (isStudent as bool?),
      if (job != _undefined) 'job': (job as Input_JobsObjRelInsertInput?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as String?),
      if (jobId != _undefined) 'jobId': (jobId as UuidValue?),
      if (kodasHistory != _undefined)
        'kodasHistory':
            (kodasHistory as Input_HistoryKodasHistoryArrRelInsertInput?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as String?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as String?),
      if (name != _undefined) 'name': (name as String?),
      if (nationalId != _undefined) 'nationalId': (nationalId as int?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as Json?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesObjRelInsertInput?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as UuidValue?),
      if (qualification != _undefined)
        'qualification':
            (qualification as Input_QualificationsObjRelInsertInput?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as UuidValue?),
      if (school != _undefined)
        'school': (school as Input_SchoolsObjRelInsertInput?),
      if (schoolId != _undefined) 'schoolId': (schoolId as UuidValue?),
      if (serviceType != _undefined) 'serviceType': (serviceType as String?),
      if (services != _undefined)
        'services': (services as Input_PersonsServicesArrRelInsertInput?),
      if (servingChurch != _undefined)
        'servingChurch': (servingChurch as Input_ChurchesObjRelInsertInput?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as UuidValue?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as UuidValue?),
      if (state != _undefined)
        'state': (state as Input_PersonStatesObjRelInsertInput?),
      if (stateId != _undefined) 'stateId': (stateId as UuidValue?),
      if (store != _undefined)
        'store': (store as Input_StoresObjRelInsertInput?),
      if (storeId != _undefined) 'storeId': (storeId as UuidValue?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsObjRelInsertInput?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      if (tags != _undefined)
        'tags': (tags as Input_PersonsTagsArrRelInsertInput?),
      if (visitHistory != _undefined)
        'visitHistory':
            (visitHistory as Input_HistoryVisitHistoryArrRelInsertInput?),
      if (workStatus != _undefined) 'workStatus': (workStatus as String?),
    }),
  );

  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AddressesObjRelInsertInput(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> get callHistory {
    final local$callHistory = _instance.callHistory;
    return local$callHistory == null
        ? CopyWith_Input_HistoryCallHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryCallHistoryArrRelInsertInput(
            local$callHistory,
            (e) => call(callHistory: e),
          );
  }

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ChurchesObjRelInsertInput(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Input_CollegesObjRelInsertInput<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Input_CollegesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_CollegesObjRelInsertInput(
            local$college,
            (e) => call(college: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput(
            local$confessionHistory,
            (e) => call(confessionHistory: e),
          );
  }

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$family,
            (e) => call(family: e),
          );
  }

  CopyWith_Input_FathersObjRelInsertInput<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Input_FathersObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FathersObjRelInsertInput(
            local$father,
            (e) => call(father: e),
          );
  }

  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsArrRelInsertInput(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> get hobbies {
    final local$hobbies = _instance.hobbies;
    return local$hobbies == null
        ? CopyWith_Input_PersonsHobbiesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesArrRelInsertInput(
            local$hobbies,
            (e) => call(hobbies: e),
          );
  }

  CopyWith_Input_JobsObjRelInsertInput<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Input_JobsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_JobsObjRelInsertInput(local$job, (e) => call(job: e));
  }

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryArrRelInsertInput(
            local$kodasHistory,
            (e) => call(kodasHistory: e),
          );
  }

  CopyWith_Input_PersonTypesObjRelInsertInput<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonTypesObjRelInsertInput(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Input_QualificationsObjRelInsertInput<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Input_QualificationsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_QualificationsObjRelInsertInput(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Input_SchoolsObjRelInsertInput<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Input_SchoolsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_SchoolsObjRelInsertInput(
            local$school,
            (e) => call(school: e),
          );
  }

  CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> get services {
    final local$services = _instance.services;
    return local$services == null
        ? CopyWith_Input_PersonsServicesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesArrRelInsertInput(
            local$services,
            (e) => call(services: e),
          );
  }

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get servingChurch {
    final local$servingChurch = _instance.servingChurch;
    return local$servingChurch == null
        ? CopyWith_Input_ChurchesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ChurchesObjRelInsertInput(
            local$servingChurch,
            (e) => call(servingChurch: e),
          );
  }

  CopyWith_Input_PersonStatesObjRelInsertInput<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Input_PersonStatesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonStatesObjRelInsertInput(
            local$state,
            (e) => call(state: e),
          );
  }

  CopyWith_Input_StoresObjRelInsertInput<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoresObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StoresObjRelInsertInput(
            local$store,
            (e) => call(store: e),
          );
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith_Input_PersonsTagsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsArrRelInsertInput(
            local$tags,
            (e) => call(tags: e),
          );
  }

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory {
    final local$visitHistory = _instance.visitHistory;
    return local$visitHistory == null
        ? CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryVisitHistoryArrRelInsertInput(
            local$visitHistory,
            (e) => call(visitHistory: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsInsertInput<TRes>
    implements CopyWith_Input_PersonsInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsInsertInput(this._res);

  TRes _res;

  call({
    Input_AddressesObjRelInsertInput? address,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    DateTime? birthdate,
    Input_HistoryCallHistoryArrRelInsertInput? callHistory,
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    Input_CollegesObjRelInsertInput? college,
    UuidValue? collegeId,
    int? color,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    Input_FathersObjRelInsertInput? father,
    UuidValue? fatherId,
    bool? gender,
    Input_PersonsGroupsArrRelInsertInput? groups,
    Input_PersonsHobbiesArrRelInsertInput? hobbies,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Input_JobsObjRelInsertInput? job,
    String? jobDescription,
    UuidValue? jobId,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    Input_PersonTypesObjRelInsertInput? personType,
    UuidValue? personTypeId,
    Input_QualificationsObjRelInsertInput? qualification,
    UuidValue? qualificationId,
    Input_SchoolsObjRelInsertInput? school,
    UuidValue? schoolId,
    String? serviceType,
    Input_PersonsServicesArrRelInsertInput? services,
    Input_ChurchesObjRelInsertInput? servingChurch,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    Input_PersonStatesObjRelInsertInput? state,
    UuidValue? stateId,
    Input_StoresObjRelInsertInput? store,
    UuidValue? storeId,
    Input_StudyYearsObjRelInsertInput? studyYear,
    int? studyYearId,
    Input_PersonsTagsArrRelInsertInput? tags,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
    String? workStatus,
  }) => _res;

  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address =>
      CopyWith_Input_AddressesObjRelInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> get callHistory =>
      CopyWith_Input_HistoryCallHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church =>
      CopyWith_Input_ChurchesObjRelInsertInput.stub(_res);

  CopyWith_Input_CollegesObjRelInsertInput<TRes> get college =>
      CopyWith_Input_CollegesObjRelInsertInput.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory =>
      CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);

  CopyWith_Input_FathersObjRelInsertInput<TRes> get father =>
      CopyWith_Input_FathersObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get groups =>
      CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> get hobbies =>
      CopyWith_Input_PersonsHobbiesArrRelInsertInput.stub(_res);

  CopyWith_Input_JobsObjRelInsertInput<TRes> get job =>
      CopyWith_Input_JobsObjRelInsertInput.stub(_res);

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonTypesObjRelInsertInput<TRes> get personType =>
      CopyWith_Input_PersonTypesObjRelInsertInput.stub(_res);

  CopyWith_Input_QualificationsObjRelInsertInput<TRes> get qualification =>
      CopyWith_Input_QualificationsObjRelInsertInput.stub(_res);

  CopyWith_Input_SchoolsObjRelInsertInput<TRes> get school =>
      CopyWith_Input_SchoolsObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> get services =>
      CopyWith_Input_PersonsServicesArrRelInsertInput.stub(_res);

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get servingChurch =>
      CopyWith_Input_ChurchesObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonStatesObjRelInsertInput<TRes> get state =>
      CopyWith_Input_PersonStatesObjRelInsertInput.stub(_res);

  CopyWith_Input_StoresObjRelInsertInput<TRes> get store =>
      CopyWith_Input_StoresObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> get tags =>
      CopyWith_Input_PersonsTagsArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory =>
      CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(_res);
}

class Input_PersonsMaxOrderBy {
  factory Input_PersonsMaxOrderBy({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => Input_PersonsMaxOrderBy._({
    if (birthdate != null) r'birthdate': birthdate,
    if (blurhash != null) r'blurhash': blurhash,
    if (churchId != null) r'churchId': churchId,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (familyId != null) r'familyId': familyId,
    if (fatherId != null) r'fatherId': fatherId,
    if (id != null) r'id': id,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (stateId != null) r'stateId': stateId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (uid != null) r'uid': uid,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsMaxOrderBy._(this._$data);

  factory Input_PersonsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : fromJson_Enum_OrderBy((l$birthdate as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : fromJson_Enum_OrderBy((l$collegeId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : fromJson_Enum_OrderBy((l$fatherId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : fromJson_Enum_OrderBy((l$jobDescription as String));
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null
          ? null
          : fromJson_Enum_OrderBy((l$jobId as String));
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : fromJson_Enum_OrderBy((l$mainPhone as String));
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$martialStatus as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : fromJson_Enum_OrderBy((l$qualificationId as String));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : fromJson_Enum_OrderBy((l$schoolId as String));
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = l$serviceType == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceType as String));
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : fromJson_Enum_OrderBy((l$servingChurchId as String));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : fromJson_Enum_OrderBy((l$shammasLevelId as String));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : fromJson_Enum_OrderBy((l$stateId as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = l$workStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$workStatus as String));
    }
    return Input_PersonsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get birthdate => (_$data['birthdate'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get collegeId => (_$data['collegeId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get fatherId => (_$data['fatherId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get jobDescription =>
      (_$data['jobDescription'] as Enum_OrderBy?);

  Enum_OrderBy? get jobId => (_$data['jobId'] as Enum_OrderBy?);

  Enum_OrderBy? get mainPhone => (_$data['mainPhone'] as Enum_OrderBy?);

  Enum_OrderBy? get martialStatus => (_$data['martialStatus'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get qualificationId =>
      (_$data['qualificationId'] as Enum_OrderBy?);

  Enum_OrderBy? get schoolId => (_$data['schoolId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceType => (_$data['serviceType'] as Enum_OrderBy?);

  Enum_OrderBy? get servingChurchId =>
      (_$data['servingChurchId'] as Enum_OrderBy?);

  Enum_OrderBy? get shammasLevelId =>
      (_$data['shammasLevelId'] as Enum_OrderBy?);

  Enum_OrderBy? get stateId => (_$data['stateId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Enum_OrderBy? get workStatus => (_$data['workStatus'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : toJson_Enum_OrderBy(l$birthdate);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : toJson_Enum_OrderBy(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : toJson_Enum_OrderBy(l$fatherId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : toJson_Enum_OrderBy(l$jobDescription);
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null
          ? null
          : toJson_Enum_OrderBy(l$jobId);
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : toJson_Enum_OrderBy(l$mainPhone);
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : toJson_Enum_OrderBy(l$martialStatus);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes == null
          ? null
          : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : toJson_Enum_OrderBy(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : toJson_Enum_OrderBy(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType == null
          ? null
          : toJson_Enum_OrderBy(l$serviceType);
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : toJson_Enum_OrderBy(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : toJson_Enum_OrderBy(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : toJson_Enum_OrderBy(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus == null
          ? null
          : toJson_Enum_OrderBy(l$workStatus);
    }
    return result$data;
  }

  CopyWith_Input_PersonsMaxOrderBy<Input_PersonsMaxOrderBy> get copyWith =>
      CopyWith_Input_PersonsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMaxOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$servingChurchId = servingChurchId;
    final lOther$servingChurchId = other.servingChurchId;
    if (_$data.containsKey('servingChurchId') !=
        other._$data.containsKey('servingChurchId')) {
      return false;
    }
    if (l$servingChurchId != lOther$servingChurchId) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (_$data.containsKey('workStatus') !=
        other._$data.containsKey('workStatus')) {
      return false;
    }
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$birthdate = birthdate;
    final l$blurhash = blurhash;
    final l$churchId = churchId;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$familyId = familyId;
    final l$fatherId = fatherId;
    final l$id = id;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$mainPhone = mainPhone;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualificationId = qualificationId;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevelId = shammasLevelId;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$uid = uid;
    final l$workStatus = workStatus;
    return Object.hashAll([
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsMaxOrderBy(
    Input_PersonsMaxOrderBy instance,
    TRes Function(Input_PersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMaxOrderBy;

  factory CopyWith_Input_PersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMaxOrderBy;

  TRes call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  });
}

class _CopyWithImpl_Input_PersonsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMaxOrderBy(this._instance, this._then);

  final Input_PersonsMaxOrderBy _instance;

  final TRes Function(Input_PersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? id = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? mainPhone = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualificationId = _undefined,
    Object? schoolId = _undefined,
    Object? serviceType = _undefined,
    Object? servingChurchId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? stateId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? uid = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsMaxOrderBy._({
      ..._instance._$data,
      if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
      if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Enum_OrderBy?),
      if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as Enum_OrderBy?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as Enum_OrderBy?),
      if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Enum_OrderBy?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as Enum_OrderBy?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
      if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (workStatus != _undefined) 'workStatus': (workStatus as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => _res;
}

class Input_PersonsMinOrderBy {
  factory Input_PersonsMinOrderBy({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => Input_PersonsMinOrderBy._({
    if (birthdate != null) r'birthdate': birthdate,
    if (blurhash != null) r'blurhash': blurhash,
    if (churchId != null) r'churchId': churchId,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (familyId != null) r'familyId': familyId,
    if (fatherId != null) r'fatherId': fatherId,
    if (id != null) r'id': id,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (stateId != null) r'stateId': stateId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (uid != null) r'uid': uid,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsMinOrderBy._(this._$data);

  factory Input_PersonsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : fromJson_Enum_OrderBy((l$birthdate as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : fromJson_Enum_OrderBy((l$collegeId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : fromJson_Enum_OrderBy((l$fatherId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : fromJson_Enum_OrderBy((l$jobDescription as String));
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null
          ? null
          : fromJson_Enum_OrderBy((l$jobId as String));
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : fromJson_Enum_OrderBy((l$mainPhone as String));
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$martialStatus as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : fromJson_Enum_OrderBy((l$qualificationId as String));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : fromJson_Enum_OrderBy((l$schoolId as String));
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = l$serviceType == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceType as String));
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : fromJson_Enum_OrderBy((l$servingChurchId as String));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : fromJson_Enum_OrderBy((l$shammasLevelId as String));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : fromJson_Enum_OrderBy((l$stateId as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = l$workStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$workStatus as String));
    }
    return Input_PersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get birthdate => (_$data['birthdate'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get collegeId => (_$data['collegeId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get fatherId => (_$data['fatherId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get jobDescription =>
      (_$data['jobDescription'] as Enum_OrderBy?);

  Enum_OrderBy? get jobId => (_$data['jobId'] as Enum_OrderBy?);

  Enum_OrderBy? get mainPhone => (_$data['mainPhone'] as Enum_OrderBy?);

  Enum_OrderBy? get martialStatus => (_$data['martialStatus'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get qualificationId =>
      (_$data['qualificationId'] as Enum_OrderBy?);

  Enum_OrderBy? get schoolId => (_$data['schoolId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceType => (_$data['serviceType'] as Enum_OrderBy?);

  Enum_OrderBy? get servingChurchId =>
      (_$data['servingChurchId'] as Enum_OrderBy?);

  Enum_OrderBy? get shammasLevelId =>
      (_$data['shammasLevelId'] as Enum_OrderBy?);

  Enum_OrderBy? get stateId => (_$data['stateId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Enum_OrderBy? get workStatus => (_$data['workStatus'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : toJson_Enum_OrderBy(l$birthdate);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : toJson_Enum_OrderBy(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : toJson_Enum_OrderBy(l$fatherId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : toJson_Enum_OrderBy(l$jobDescription);
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null
          ? null
          : toJson_Enum_OrderBy(l$jobId);
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : toJson_Enum_OrderBy(l$mainPhone);
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : toJson_Enum_OrderBy(l$martialStatus);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes == null
          ? null
          : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : toJson_Enum_OrderBy(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : toJson_Enum_OrderBy(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType == null
          ? null
          : toJson_Enum_OrderBy(l$serviceType);
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : toJson_Enum_OrderBy(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : toJson_Enum_OrderBy(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : toJson_Enum_OrderBy(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus == null
          ? null
          : toJson_Enum_OrderBy(l$workStatus);
    }
    return result$data;
  }

  CopyWith_Input_PersonsMinOrderBy<Input_PersonsMinOrderBy> get copyWith =>
      CopyWith_Input_PersonsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMinOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$servingChurchId = servingChurchId;
    final lOther$servingChurchId = other.servingChurchId;
    if (_$data.containsKey('servingChurchId') !=
        other._$data.containsKey('servingChurchId')) {
      return false;
    }
    if (l$servingChurchId != lOther$servingChurchId) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (_$data.containsKey('workStatus') !=
        other._$data.containsKey('workStatus')) {
      return false;
    }
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$birthdate = birthdate;
    final l$blurhash = blurhash;
    final l$churchId = churchId;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$familyId = familyId;
    final l$fatherId = fatherId;
    final l$id = id;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$mainPhone = mainPhone;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualificationId = qualificationId;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevelId = shammasLevelId;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$uid = uid;
    final l$workStatus = workStatus;
    return Object.hashAll([
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsMinOrderBy(
    Input_PersonsMinOrderBy instance,
    TRes Function(Input_PersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMinOrderBy;

  factory CopyWith_Input_PersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMinOrderBy;

  TRes call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  });
}

class _CopyWithImpl_Input_PersonsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMinOrderBy(this._instance, this._then);

  final Input_PersonsMinOrderBy _instance;

  final TRes Function(Input_PersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? id = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? mainPhone = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualificationId = _undefined,
    Object? schoolId = _undefined,
    Object? serviceType = _undefined,
    Object? servingChurchId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? stateId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? uid = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsMinOrderBy._({
      ..._instance._$data,
      if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
      if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Enum_OrderBy?),
      if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as Enum_OrderBy?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as Enum_OrderBy?),
      if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Enum_OrderBy?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as Enum_OrderBy?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
      if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (workStatus != _undefined) 'workStatus': (workStatus as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => _res;
}

class Input_PersonsObjRelInsertInput {
  factory Input_PersonsObjRelInsertInput({
    required Input_PersonsInsertInput data,
    Input_PersonsOnConflict? onConflict,
  }) => Input_PersonsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsObjRelInsertInput._(this._$data);

  factory Input_PersonsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_PersonsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsInsertInput get data =>
      (_$data['data'] as Input_PersonsInsertInput);

  Input_PersonsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsObjRelInsertInput<Input_PersonsObjRelInsertInput>
  get copyWith => CopyWith_Input_PersonsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsObjRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
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
      l$data,
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsObjRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsObjRelInsertInput(
    Input_PersonsObjRelInsertInput instance,
    TRes Function(Input_PersonsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsObjRelInsertInput;

  factory CopyWith_Input_PersonsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsObjRelInsertInput;

  TRes call({
    Input_PersonsInsertInput? data,
    Input_PersonsOnConflict? onConflict,
  });
  CopyWith_Input_PersonsInsertInput<TRes> get data;
  CopyWith_Input_PersonsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsObjRelInsertInput(this._instance, this._then);

  final Input_PersonsObjRelInsertInput _instance;

  final TRes Function(Input_PersonsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_PersonsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonsOnConflict?),
        }),
      );

  CopyWith_Input_PersonsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_PersonsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_PersonsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_PersonsInsertInput? data, Input_PersonsOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_PersonsInsertInput<TRes> get data =>
      CopyWith_Input_PersonsInsertInput.stub(_res);

  CopyWith_Input_PersonsOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsOnConflict.stub(_res);
}

class Input_PersonsOnConflict {
  factory Input_PersonsOnConflict({
    required Enum_PersonsConstraint constraint,
    List<Enum_PersonsUpdateColumn>? updateColumns,
    Input_PersonsBoolExp? where,
  }) => Input_PersonsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonsOnConflict._(this._$data);

  factory Input_PersonsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_PersonsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsConstraint);

  List<Enum_PersonsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsUpdateColumn>?);

  Input_PersonsBoolExp? get where => (_$data['where'] as Input_PersonsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsUpdateColumn>)
              .map((e) => toJson_Enum_PersonsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsOnConflict<Input_PersonsOnConflict> get copyWith =>
      CopyWith_Input_PersonsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsOnConflict || runtimeType != other.runtimeType) {
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
