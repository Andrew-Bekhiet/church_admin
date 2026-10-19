// Part 17 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonFilterInput<TRes> {
  factory CopyWith_Input_PersonFilterInput(
    Input_PersonFilterInput instance,
    TRes Function(Input_PersonFilterInput) then,
  ) = _CopyWithImpl_Input_PersonFilterInput;

  factory CopyWith_Input_PersonFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonFilterInput;

  TRes call({
    List<Input_PersonFilterInput>? and,
    List<Input_PersonFilterInput>? or,
    List<Input_PersonFilterInput>? not,
    Input_PersonFilterId? id,
    Input_PersonFilterName? name,
    Input_PersonFilterBirthdate? birthdate,
    Input_PersonFilterGender? gender,
    Input_PersonFilterIsShammas? isShammas,
    Input_PersonFilterShammasLevelId? shammasLevelId,
    Input_PersonFilterSchoolId? schoolId,
    Input_PersonFilterCollegeId? collegeId,
    Input_PersonFilterChurchId? churchId,
    Input_PersonFilterFatherId? fatherId,
    Input_PersonFilterIsStudent? isStudent,
    Input_PersonFilterJobId? jobId,
    Input_PersonFilterJobDescription? jobDescription,
    Input_PersonFilterQualificationId? qualificationId,
    Input_PersonFilterPersonTypeId? personTypeId,
    Input_PersonFilterStateId? stateId,
    Input_PersonFilterIsServant? isServant,
    Input_PersonFilterNotes? notes,
    Input_PersonFilterUid? uid,
    Input_PersonFilterFamilyId? familyId,
    Input_PersonFilterStoreId? storeId,
    Input_PersonFilterStudyYearId? studyYearId,
    Input_PersonFilterColor? color,
    Input_PersonFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_PersonFilterBlurhash? blurhash,
    Input_PersonFilterWorkStatus? workStatus,
    Input_PersonFilterMartialStatus? martialStatus,
    Input_PersonFilterServingChurchId? servingChurchId,
    Input_PersonFilterServiceType? serviceType,
    Input_ChurchFilterInput? church,
    Input_CollegeFilterInput? college,
    Input_FamilyFilterInput? family,
    Input_FatherFilterInput? father,
    Input_JobFilterInput? job,
    Input_PersonTypeFilterInput? personType,
    Input_QualificationFilterInput? qualification,
    Input_SchoolFilterInput? school,
    Input_ChurchFilterInput? servingChurch,
    Input_ShammasLevelFilterInput? shammasLevel,
    Input_PersonStateFilterInput? state,
    Input_StoreFilterInput? store,
    Input_StudyYearFilterInput? studyYear,
    Input_UserFilterInput? user,
    Input_AddressFilterInput? address,
    Input_DataCheckFilterInput? dataCheck,
    Input_MainContactFilterInput? mainContact,
    Input_LatestCallFilterInput? latestCall,
    Input_LatestConfessionFilterInput? latestConfession,
    Input_LatestKodasFilterInput? latestKodas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_ContactFilterInput? contacts,
    Input_FamilyContactFilterInput? familyContacts,
    Input_FamilyContactFilterInput? searchablePhones,
    Input_AttendanceRecordFilterInput? attendanceRecords,
    Input_CallFilterInput? calls,
    Input_ConfessionFilterInput? confessions,
    Input_KodasFilterInput? kodases,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_GroupMembershipFilterInput? groupMemberships,
    Input_ServiceMembershipFilterInput? serviceMemberships,
    Input_HobbyFilterInput? hobbies,
    Input_TagFilterInput? tags,
    Input_PersonFilterLastConfessionDay? lastConfessionDay,
    Input_PersonFilterLastKodasDay? lastKodasDay,
    Input_PersonFilterLastAttendedAt? lastAttendedAt,
    Input_PersonFilterLastVisitAt? lastVisitAt,
    Input_PersonFilterMainPhone? mainPhone,
    Input_PersonFilterLastEdit? lastEdit,
    Input_PersonFilterLastCall? lastCall,
    Input_PersonFilterFamilyName? familyName,
    Input_PersonFilterUserName? userName,
    Input_PersonFilterStoreName? storeName,
    Input_PersonFilterChurchName? churchName,
    Input_PersonFilterServingChurchName? servingChurchName,
    Input_PersonFilterCollegeName? collegeName,
    Input_PersonFilterSchoolName? schoolName,
    Input_PersonFilterFatherName? fatherName,
    Input_PersonFilterJobName? jobName,
    Input_PersonFilterQualificationName? qualificationName,
    Input_PersonFilterStateName? stateName,
    Input_PersonFilterPersonTypeOrder? personTypeOrder,
    Input_PersonFilterShammasLevelOrder? shammasLevelOrder,
    Input_PersonFilterStudyYearOrder? studyYearOrder,
    Input_PersonFilterAddressAreaName? addressAreaName,
    Input_PersonFilterAddressStreetName? addressStreetName,
    Input_PersonFilterAddressDistrictName? addressDistrictName,
    Input_PersonFilterAddressFullAddressText? addressFullAddressText,
    Input_PersonFilterBirthday? birthday,
    Input_PersonFilterUserCanEdit? userCanEdit,
  });
  TRes and(
    Iterable<Input_PersonFilterInput>? Function(
      Iterable<CopyWith_Input_PersonFilterInput<Input_PersonFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_PersonFilterInput>? Function(
      Iterable<CopyWith_Input_PersonFilterInput<Input_PersonFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_PersonFilterInput>? Function(
      Iterable<CopyWith_Input_PersonFilterInput<Input_PersonFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonFilterId<TRes> get id;
  CopyWith_Input_PersonFilterName<TRes> get name;
  CopyWith_Input_PersonFilterBirthdate<TRes> get birthdate;
  CopyWith_Input_PersonFilterGender<TRes> get gender;
  CopyWith_Input_PersonFilterIsShammas<TRes> get isShammas;
  CopyWith_Input_PersonFilterShammasLevelId<TRes> get shammasLevelId;
  CopyWith_Input_PersonFilterSchoolId<TRes> get schoolId;
  CopyWith_Input_PersonFilterCollegeId<TRes> get collegeId;
  CopyWith_Input_PersonFilterChurchId<TRes> get churchId;
  CopyWith_Input_PersonFilterFatherId<TRes> get fatherId;
  CopyWith_Input_PersonFilterIsStudent<TRes> get isStudent;
  CopyWith_Input_PersonFilterJobId<TRes> get jobId;
  CopyWith_Input_PersonFilterJobDescription<TRes> get jobDescription;
  CopyWith_Input_PersonFilterQualificationId<TRes> get qualificationId;
  CopyWith_Input_PersonFilterPersonTypeId<TRes> get personTypeId;
  CopyWith_Input_PersonFilterStateId<TRes> get stateId;
  CopyWith_Input_PersonFilterIsServant<TRes> get isServant;
  CopyWith_Input_PersonFilterNotes<TRes> get notes;
  CopyWith_Input_PersonFilterUid<TRes> get uid;
  CopyWith_Input_PersonFilterFamilyId<TRes> get familyId;
  CopyWith_Input_PersonFilterStoreId<TRes> get storeId;
  CopyWith_Input_PersonFilterStudyYearId<TRes> get studyYearId;
  CopyWith_Input_PersonFilterColor<TRes> get color;
  CopyWith_Input_PersonFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_PersonFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_PersonFilterWorkStatus<TRes> get workStatus;
  CopyWith_Input_PersonFilterMartialStatus<TRes> get martialStatus;
  CopyWith_Input_PersonFilterServingChurchId<TRes> get servingChurchId;
  CopyWith_Input_PersonFilterServiceType<TRes> get serviceType;
  CopyWith_Input_ChurchFilterInput<TRes> get church;
  CopyWith_Input_CollegeFilterInput<TRes> get college;
  CopyWith_Input_FamilyFilterInput<TRes> get family;
  CopyWith_Input_FatherFilterInput<TRes> get father;
  CopyWith_Input_JobFilterInput<TRes> get job;
  CopyWith_Input_PersonTypeFilterInput<TRes> get personType;
  CopyWith_Input_QualificationFilterInput<TRes> get qualification;
  CopyWith_Input_SchoolFilterInput<TRes> get school;
  CopyWith_Input_ChurchFilterInput<TRes> get servingChurch;
  CopyWith_Input_ShammasLevelFilterInput<TRes> get shammasLevel;
  CopyWith_Input_PersonStateFilterInput<TRes> get state;
  CopyWith_Input_StoreFilterInput<TRes> get store;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear;
  CopyWith_Input_UserFilterInput<TRes> get user;
  CopyWith_Input_AddressFilterInput<TRes> get address;
  CopyWith_Input_DataCheckFilterInput<TRes> get dataCheck;
  CopyWith_Input_MainContactFilterInput<TRes> get mainContact;
  CopyWith_Input_LatestCallFilterInput<TRes> get latestCall;
  CopyWith_Input_LatestConfessionFilterInput<TRes> get latestConfession;
  CopyWith_Input_LatestKodasFilterInput<TRes> get latestKodas;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_EditFilterInput<TRes> get edits;
  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit;
  CopyWith_Input_VisitFilterInput<TRes> get visits;
  CopyWith_Input_ContactFilterInput<TRes> get contacts;
  CopyWith_Input_FamilyContactFilterInput<TRes> get familyContacts;
  CopyWith_Input_FamilyContactFilterInput<TRes> get searchablePhones;
  CopyWith_Input_AttendanceRecordFilterInput<TRes> get attendanceRecords;
  CopyWith_Input_CallFilterInput<TRes> get calls;
  CopyWith_Input_ConfessionFilterInput<TRes> get confessions;
  CopyWith_Input_KodasFilterInput<TRes> get kodases;
  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships;
  CopyWith_Input_GroupMembershipFilterInput<TRes> get groupMemberships;
  CopyWith_Input_ServiceMembershipFilterInput<TRes> get serviceMemberships;
  CopyWith_Input_HobbyFilterInput<TRes> get hobbies;
  CopyWith_Input_TagFilterInput<TRes> get tags;
  CopyWith_Input_PersonFilterLastConfessionDay<TRes> get lastConfessionDay;
  CopyWith_Input_PersonFilterLastKodasDay<TRes> get lastKodasDay;
  CopyWith_Input_PersonFilterLastAttendedAt<TRes> get lastAttendedAt;
  CopyWith_Input_PersonFilterLastVisitAt<TRes> get lastVisitAt;
  CopyWith_Input_PersonFilterMainPhone<TRes> get mainPhone;
  CopyWith_Input_PersonFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_PersonFilterLastCall<TRes> get lastCall;
  CopyWith_Input_PersonFilterFamilyName<TRes> get familyName;
  CopyWith_Input_PersonFilterUserName<TRes> get userName;
  CopyWith_Input_PersonFilterStoreName<TRes> get storeName;
  CopyWith_Input_PersonFilterChurchName<TRes> get churchName;
  CopyWith_Input_PersonFilterServingChurchName<TRes> get servingChurchName;
  CopyWith_Input_PersonFilterCollegeName<TRes> get collegeName;
  CopyWith_Input_PersonFilterSchoolName<TRes> get schoolName;
  CopyWith_Input_PersonFilterFatherName<TRes> get fatherName;
  CopyWith_Input_PersonFilterJobName<TRes> get jobName;
  CopyWith_Input_PersonFilterQualificationName<TRes> get qualificationName;
  CopyWith_Input_PersonFilterStateName<TRes> get stateName;
  CopyWith_Input_PersonFilterPersonTypeOrder<TRes> get personTypeOrder;
  CopyWith_Input_PersonFilterShammasLevelOrder<TRes> get shammasLevelOrder;
  CopyWith_Input_PersonFilterStudyYearOrder<TRes> get studyYearOrder;
  CopyWith_Input_PersonFilterAddressAreaName<TRes> get addressAreaName;
  CopyWith_Input_PersonFilterAddressStreetName<TRes> get addressStreetName;
  CopyWith_Input_PersonFilterAddressDistrictName<TRes> get addressDistrictName;
  CopyWith_Input_PersonFilterAddressFullAddressText<TRes>
  get addressFullAddressText;
  CopyWith_Input_PersonFilterBirthday<TRes> get birthday;
  CopyWith_Input_PersonFilterUserCanEdit<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_PersonFilterInput<TRes>
    implements CopyWith_Input_PersonFilterInput<TRes> {
  _CopyWithImpl_Input_PersonFilterInput(this._instance, this._then);

  final Input_PersonFilterInput _instance;

  final TRes Function(Input_PersonFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? birthdate = _undefined,
    Object? gender = _undefined,
    Object? isShammas = _undefined,
    Object? shammasLevelId = _undefined,
    Object? schoolId = _undefined,
    Object? collegeId = _undefined,
    Object? churchId = _undefined,
    Object? fatherId = _undefined,
    Object? isStudent = _undefined,
    Object? jobId = _undefined,
    Object? jobDescription = _undefined,
    Object? qualificationId = _undefined,
    Object? personTypeId = _undefined,
    Object? stateId = _undefined,
    Object? isServant = _undefined,
    Object? notes = _undefined,
    Object? uid = _undefined,
    Object? familyId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? workStatus = _undefined,
    Object? martialStatus = _undefined,
    Object? servingChurchId = _undefined,
    Object? serviceType = _undefined,
    Object? church = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? job = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? servingChurch = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? store = _undefined,
    Object? studyYear = _undefined,
    Object? user = _undefined,
    Object? address = _undefined,
    Object? dataCheck = _undefined,
    Object? mainContact = _undefined,
    Object? latestCall = _undefined,
    Object? latestConfession = _undefined,
    Object? latestKodas = _undefined,
    Object? latestEdit = _undefined,
    Object? edits = _undefined,
    Object? latestVisit = _undefined,
    Object? visits = _undefined,
    Object? contacts = _undefined,
    Object? familyContacts = _undefined,
    Object? searchablePhones = _undefined,
    Object? attendanceRecords = _undefined,
    Object? calls = _undefined,
    Object? confessions = _undefined,
    Object? kodases = _undefined,
    Object? classMemberships = _undefined,
    Object? groupMemberships = _undefined,
    Object? serviceMemberships = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? lastConfessionDay = _undefined,
    Object? lastKodasDay = _undefined,
    Object? lastAttendedAt = _undefined,
    Object? lastVisitAt = _undefined,
    Object? mainPhone = _undefined,
    Object? lastEdit = _undefined,
    Object? lastCall = _undefined,
    Object? familyName = _undefined,
    Object? userName = _undefined,
    Object? storeName = _undefined,
    Object? churchName = _undefined,
    Object? servingChurchName = _undefined,
    Object? collegeName = _undefined,
    Object? schoolName = _undefined,
    Object? fatherName = _undefined,
    Object? jobName = _undefined,
    Object? qualificationName = _undefined,
    Object? stateName = _undefined,
    Object? personTypeOrder = _undefined,
    Object? shammasLevelOrder = _undefined,
    Object? studyYearOrder = _undefined,
    Object? addressAreaName = _undefined,
    Object? addressStreetName = _undefined,
    Object? addressDistrictName = _undefined,
    Object? addressFullAddressText = _undefined,
    Object? birthday = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_PersonFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_PersonFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_PersonFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_PersonFilterInput>?),
      if (id != _undefined) 'id': (id as Input_PersonFilterId?),
      if (name != _undefined) 'name': (name as Input_PersonFilterName?),
      if (birthdate != _undefined)
        'birthdate': (birthdate as Input_PersonFilterBirthdate?),
      if (gender != _undefined) 'gender': (gender as Input_PersonFilterGender?),
      if (isShammas != _undefined)
        'isShammas': (isShammas as Input_PersonFilterIsShammas?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Input_PersonFilterShammasLevelId?),
      if (schoolId != _undefined)
        'schoolId': (schoolId as Input_PersonFilterSchoolId?),
      if (collegeId != _undefined)
        'collegeId': (collegeId as Input_PersonFilterCollegeId?),
      if (churchId != _undefined)
        'churchId': (churchId as Input_PersonFilterChurchId?),
      if (fatherId != _undefined)
        'fatherId': (fatherId as Input_PersonFilterFatherId?),
      if (isStudent != _undefined)
        'isStudent': (isStudent as Input_PersonFilterIsStudent?),
      if (jobId != _undefined) 'jobId': (jobId as Input_PersonFilterJobId?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Input_PersonFilterJobDescription?),
      if (qualificationId != _undefined)
        'qualificationId':
            (qualificationId as Input_PersonFilterQualificationId?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Input_PersonFilterPersonTypeId?),
      if (stateId != _undefined)
        'stateId': (stateId as Input_PersonFilterStateId?),
      if (isServant != _undefined)
        'isServant': (isServant as Input_PersonFilterIsServant?),
      if (notes != _undefined) 'notes': (notes as Input_PersonFilterNotes?),
      if (uid != _undefined) 'uid': (uid as Input_PersonFilterUid?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_PersonFilterFamilyId?),
      if (storeId != _undefined)
        'storeId': (storeId as Input_PersonFilterStoreId?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Input_PersonFilterStudyYearId?),
      if (color != _undefined) 'color': (color as Input_PersonFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_PersonFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_PersonFilterBlurhash?),
      if (workStatus != _undefined)
        'workStatus': (workStatus as Input_PersonFilterWorkStatus?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Input_PersonFilterMartialStatus?),
      if (servingChurchId != _undefined)
        'servingChurchId':
            (servingChurchId as Input_PersonFilterServingChurchId?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Input_PersonFilterServiceType?),
      if (church != _undefined) 'church': (church as Input_ChurchFilterInput?),
      if (college != _undefined)
        'college': (college as Input_CollegeFilterInput?),
      if (family != _undefined) 'family': (family as Input_FamilyFilterInput?),
      if (father != _undefined) 'father': (father as Input_FatherFilterInput?),
      if (job != _undefined) 'job': (job as Input_JobFilterInput?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypeFilterInput?),
      if (qualification != _undefined)
        'qualification': (qualification as Input_QualificationFilterInput?),
      if (school != _undefined) 'school': (school as Input_SchoolFilterInput?),
      if (servingChurch != _undefined)
        'servingChurch': (servingChurch as Input_ChurchFilterInput?),
      if (shammasLevel != _undefined)
        'shammasLevel': (shammasLevel as Input_ShammasLevelFilterInput?),
      if (state != _undefined)
        'state': (state as Input_PersonStateFilterInput?),
      if (store != _undefined) 'store': (store as Input_StoreFilterInput?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearFilterInput?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
      if (address != _undefined)
        'address': (address as Input_AddressFilterInput?),
      if (dataCheck != _undefined)
        'dataCheck': (dataCheck as Input_DataCheckFilterInput?),
      if (mainContact != _undefined)
        'mainContact': (mainContact as Input_MainContactFilterInput?),
      if (latestCall != _undefined)
        'latestCall': (latestCall as Input_LatestCallFilterInput?),
      if (latestConfession != _undefined)
        'latestConfession':
            (latestConfession as Input_LatestConfessionFilterInput?),
      if (latestKodas != _undefined)
        'latestKodas': (latestKodas as Input_LatestKodasFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (edits != _undefined) 'edits': (edits as Input_EditFilterInput?),
      if (latestVisit != _undefined)
        'latestVisit': (latestVisit as Input_LatestVisitFilterInput?),
      if (visits != _undefined) 'visits': (visits as Input_VisitFilterInput?),
      if (contacts != _undefined)
        'contacts': (contacts as Input_ContactFilterInput?),
      if (familyContacts != _undefined)
        'familyContacts': (familyContacts as Input_FamilyContactFilterInput?),
      if (searchablePhones != _undefined)
        'searchablePhones':
            (searchablePhones as Input_FamilyContactFilterInput?),
      if (attendanceRecords != _undefined)
        'attendanceRecords':
            (attendanceRecords as Input_AttendanceRecordFilterInput?),
      if (calls != _undefined) 'calls': (calls as Input_CallFilterInput?),
      if (confessions != _undefined)
        'confessions': (confessions as Input_ConfessionFilterInput?),
      if (kodases != _undefined)
        'kodases': (kodases as Input_KodasFilterInput?),
      if (classMemberships != _undefined)
        'classMemberships':
            (classMemberships as Input_ClassMembershipFilterInput?),
      if (groupMemberships != _undefined)
        'groupMemberships':
            (groupMemberships as Input_GroupMembershipFilterInput?),
      if (serviceMemberships != _undefined)
        'serviceMemberships':
            (serviceMemberships as Input_ServiceMembershipFilterInput?),
      if (hobbies != _undefined)
        'hobbies': (hobbies as Input_HobbyFilterInput?),
      if (tags != _undefined) 'tags': (tags as Input_TagFilterInput?),
      if (lastConfessionDay != _undefined)
        'lastConfessionDay':
            (lastConfessionDay as Input_PersonFilterLastConfessionDay?),
      if (lastKodasDay != _undefined)
        'lastKodasDay': (lastKodasDay as Input_PersonFilterLastKodasDay?),
      if (lastAttendedAt != _undefined)
        'lastAttendedAt': (lastAttendedAt as Input_PersonFilterLastAttendedAt?),
      if (lastVisitAt != _undefined)
        'lastVisitAt': (lastVisitAt as Input_PersonFilterLastVisitAt?),
      if (mainPhone != _undefined)
        'mainPhone': (mainPhone as Input_PersonFilterMainPhone?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_PersonFilterLastEdit?),
      if (lastCall != _undefined)
        'lastCall': (lastCall as Input_PersonFilterLastCall?),
      if (familyName != _undefined)
        'familyName': (familyName as Input_PersonFilterFamilyName?),
      if (userName != _undefined)
        'userName': (userName as Input_PersonFilterUserName?),
      if (storeName != _undefined)
        'storeName': (storeName as Input_PersonFilterStoreName?),
      if (churchName != _undefined)
        'churchName': (churchName as Input_PersonFilterChurchName?),
      if (servingChurchName != _undefined)
        'servingChurchName':
            (servingChurchName as Input_PersonFilterServingChurchName?),
      if (collegeName != _undefined)
        'collegeName': (collegeName as Input_PersonFilterCollegeName?),
      if (schoolName != _undefined)
        'schoolName': (schoolName as Input_PersonFilterSchoolName?),
      if (fatherName != _undefined)
        'fatherName': (fatherName as Input_PersonFilterFatherName?),
      if (jobName != _undefined)
        'jobName': (jobName as Input_PersonFilterJobName?),
      if (qualificationName != _undefined)
        'qualificationName':
            (qualificationName as Input_PersonFilterQualificationName?),
      if (stateName != _undefined)
        'stateName': (stateName as Input_PersonFilterStateName?),
      if (personTypeOrder != _undefined)
        'personTypeOrder':
            (personTypeOrder as Input_PersonFilterPersonTypeOrder?),
      if (shammasLevelOrder != _undefined)
        'shammasLevelOrder':
            (shammasLevelOrder as Input_PersonFilterShammasLevelOrder?),
      if (studyYearOrder != _undefined)
        'studyYearOrder': (studyYearOrder as Input_PersonFilterStudyYearOrder?),
      if (addressAreaName != _undefined)
        'addressAreaName':
            (addressAreaName as Input_PersonFilterAddressAreaName?),
      if (addressStreetName != _undefined)
        'addressStreetName':
            (addressStreetName as Input_PersonFilterAddressStreetName?),
      if (addressDistrictName != _undefined)
        'addressDistrictName':
            (addressDistrictName as Input_PersonFilterAddressDistrictName?),
      if (addressFullAddressText != _undefined)
        'addressFullAddressText':
            (addressFullAddressText
                as Input_PersonFilterAddressFullAddressText?),
      if (birthday != _undefined)
        'birthday': (birthday as Input_PersonFilterBirthday?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_PersonFilterUserCanEdit?),
    }),
  );

  TRes and(
    Iterable<Input_PersonFilterInput>? Function(
      Iterable<CopyWith_Input_PersonFilterInput<Input_PersonFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_PersonFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_PersonFilterInput>? Function(
      Iterable<CopyWith_Input_PersonFilterInput<Input_PersonFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_PersonFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_PersonFilterInput>? Function(
      Iterable<CopyWith_Input_PersonFilterInput<Input_PersonFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_PersonFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_PersonFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_PersonFilterId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_PersonFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_PersonFilterName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonFilterBirthdate<TRes> get birthdate {
    final local$birthdate = _instance.birthdate;
    return local$birthdate == null
        ? CopyWith_Input_PersonFilterBirthdate.stub(_then(_instance))
        : CopyWith_Input_PersonFilterBirthdate(
            local$birthdate,
            (e) => call(birthdate: e),
          );
  }

  CopyWith_Input_PersonFilterGender<TRes> get gender {
    final local$gender = _instance.gender;
    return local$gender == null
        ? CopyWith_Input_PersonFilterGender.stub(_then(_instance))
        : CopyWith_Input_PersonFilterGender(
            local$gender,
            (e) => call(gender: e),
          );
  }

  CopyWith_Input_PersonFilterIsShammas<TRes> get isShammas {
    final local$isShammas = _instance.isShammas;
    return local$isShammas == null
        ? CopyWith_Input_PersonFilterIsShammas.stub(_then(_instance))
        : CopyWith_Input_PersonFilterIsShammas(
            local$isShammas,
            (e) => call(isShammas: e),
          );
  }

  CopyWith_Input_PersonFilterShammasLevelId<TRes> get shammasLevelId {
    final local$shammasLevelId = _instance.shammasLevelId;
    return local$shammasLevelId == null
        ? CopyWith_Input_PersonFilterShammasLevelId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterShammasLevelId(
            local$shammasLevelId,
            (e) => call(shammasLevelId: e),
          );
  }

  CopyWith_Input_PersonFilterSchoolId<TRes> get schoolId {
    final local$schoolId = _instance.schoolId;
    return local$schoolId == null
        ? CopyWith_Input_PersonFilterSchoolId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterSchoolId(
            local$schoolId,
            (e) => call(schoolId: e),
          );
  }

  CopyWith_Input_PersonFilterCollegeId<TRes> get collegeId {
    final local$collegeId = _instance.collegeId;
    return local$collegeId == null
        ? CopyWith_Input_PersonFilterCollegeId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterCollegeId(
            local$collegeId,
            (e) => call(collegeId: e),
          );
  }

  CopyWith_Input_PersonFilterChurchId<TRes> get churchId {
    final local$churchId = _instance.churchId;
    return local$churchId == null
        ? CopyWith_Input_PersonFilterChurchId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterChurchId(
            local$churchId,
            (e) => call(churchId: e),
          );
  }

  CopyWith_Input_PersonFilterFatherId<TRes> get fatherId {
    final local$fatherId = _instance.fatherId;
    return local$fatherId == null
        ? CopyWith_Input_PersonFilterFatherId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterFatherId(
            local$fatherId,
            (e) => call(fatherId: e),
          );
  }

  CopyWith_Input_PersonFilterIsStudent<TRes> get isStudent {
    final local$isStudent = _instance.isStudent;
    return local$isStudent == null
        ? CopyWith_Input_PersonFilterIsStudent.stub(_then(_instance))
        : CopyWith_Input_PersonFilterIsStudent(
            local$isStudent,
            (e) => call(isStudent: e),
          );
  }

  CopyWith_Input_PersonFilterJobId<TRes> get jobId {
    final local$jobId = _instance.jobId;
    return local$jobId == null
        ? CopyWith_Input_PersonFilterJobId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterJobId(local$jobId, (e) => call(jobId: e));
  }

  CopyWith_Input_PersonFilterJobDescription<TRes> get jobDescription {
    final local$jobDescription = _instance.jobDescription;
    return local$jobDescription == null
        ? CopyWith_Input_PersonFilterJobDescription.stub(_then(_instance))
        : CopyWith_Input_PersonFilterJobDescription(
            local$jobDescription,
            (e) => call(jobDescription: e),
          );
  }

  CopyWith_Input_PersonFilterQualificationId<TRes> get qualificationId {
    final local$qualificationId = _instance.qualificationId;
    return local$qualificationId == null
        ? CopyWith_Input_PersonFilterQualificationId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterQualificationId(
            local$qualificationId,
            (e) => call(qualificationId: e),
          );
  }

  CopyWith_Input_PersonFilterPersonTypeId<TRes> get personTypeId {
    final local$personTypeId = _instance.personTypeId;
    return local$personTypeId == null
        ? CopyWith_Input_PersonFilterPersonTypeId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterPersonTypeId(
            local$personTypeId,
            (e) => call(personTypeId: e),
          );
  }

  CopyWith_Input_PersonFilterStateId<TRes> get stateId {
    final local$stateId = _instance.stateId;
    return local$stateId == null
        ? CopyWith_Input_PersonFilterStateId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterStateId(
            local$stateId,
            (e) => call(stateId: e),
          );
  }

  CopyWith_Input_PersonFilterIsServant<TRes> get isServant {
    final local$isServant = _instance.isServant;
    return local$isServant == null
        ? CopyWith_Input_PersonFilterIsServant.stub(_then(_instance))
        : CopyWith_Input_PersonFilterIsServant(
            local$isServant,
            (e) => call(isServant: e),
          );
  }

  CopyWith_Input_PersonFilterNotes<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith_Input_PersonFilterNotes.stub(_then(_instance))
        : CopyWith_Input_PersonFilterNotes(local$notes, (e) => call(notes: e));
  }

  CopyWith_Input_PersonFilterUid<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_PersonFilterUid.stub(_then(_instance))
        : CopyWith_Input_PersonFilterUid(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_PersonFilterFamilyId<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_PersonFilterFamilyId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterFamilyId(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_PersonFilterStoreId<TRes> get storeId {
    final local$storeId = _instance.storeId;
    return local$storeId == null
        ? CopyWith_Input_PersonFilterStoreId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterStoreId(
            local$storeId,
            (e) => call(storeId: e),
          );
  }

  CopyWith_Input_PersonFilterStudyYearId<TRes> get studyYearId {
    final local$studyYearId = _instance.studyYearId;
    return local$studyYearId == null
        ? CopyWith_Input_PersonFilterStudyYearId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterStudyYearId(
            local$studyYearId,
            (e) => call(studyYearId: e),
          );
  }

  CopyWith_Input_PersonFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_PersonFilterColor.stub(_then(_instance))
        : CopyWith_Input_PersonFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_PersonFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_PersonFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_PersonFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_PersonFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_PersonFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_PersonFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_PersonFilterWorkStatus<TRes> get workStatus {
    final local$workStatus = _instance.workStatus;
    return local$workStatus == null
        ? CopyWith_Input_PersonFilterWorkStatus.stub(_then(_instance))
        : CopyWith_Input_PersonFilterWorkStatus(
            local$workStatus,
            (e) => call(workStatus: e),
          );
  }

  CopyWith_Input_PersonFilterMartialStatus<TRes> get martialStatus {
    final local$martialStatus = _instance.martialStatus;
    return local$martialStatus == null
        ? CopyWith_Input_PersonFilterMartialStatus.stub(_then(_instance))
        : CopyWith_Input_PersonFilterMartialStatus(
            local$martialStatus,
            (e) => call(martialStatus: e),
          );
  }

  CopyWith_Input_PersonFilterServingChurchId<TRes> get servingChurchId {
    final local$servingChurchId = _instance.servingChurchId;
    return local$servingChurchId == null
        ? CopyWith_Input_PersonFilterServingChurchId.stub(_then(_instance))
        : CopyWith_Input_PersonFilterServingChurchId(
            local$servingChurchId,
            (e) => call(servingChurchId: e),
          );
  }

  CopyWith_Input_PersonFilterServiceType<TRes> get serviceType {
    final local$serviceType = _instance.serviceType;
    return local$serviceType == null
        ? CopyWith_Input_PersonFilterServiceType.stub(_then(_instance))
        : CopyWith_Input_PersonFilterServiceType(
            local$serviceType,
            (e) => call(serviceType: e),
          );
  }

  CopyWith_Input_ChurchFilterInput<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchFilterInput.stub(_then(_instance))
        : CopyWith_Input_ChurchFilterInput(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Input_CollegeFilterInput<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Input_CollegeFilterInput.stub(_then(_instance))
        : CopyWith_Input_CollegeFilterInput(
            local$college,
            (e) => call(college: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$family,
            (e) => call(family: e),
          );
  }

  CopyWith_Input_FatherFilterInput<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Input_FatherFilterInput.stub(_then(_instance))
        : CopyWith_Input_FatherFilterInput(
            local$father,
            (e) => call(father: e),
          );
  }

  CopyWith_Input_JobFilterInput<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Input_JobFilterInput.stub(_then(_instance))
        : CopyWith_Input_JobFilterInput(local$job, (e) => call(job: e));
  }

  CopyWith_Input_PersonTypeFilterInput<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypeFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonTypeFilterInput(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Input_QualificationFilterInput<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Input_QualificationFilterInput.stub(_then(_instance))
        : CopyWith_Input_QualificationFilterInput(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Input_SchoolFilterInput<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Input_SchoolFilterInput.stub(_then(_instance))
        : CopyWith_Input_SchoolFilterInput(
            local$school,
            (e) => call(school: e),
          );
  }

  CopyWith_Input_ChurchFilterInput<TRes> get servingChurch {
    final local$servingChurch = _instance.servingChurch;
    return local$servingChurch == null
        ? CopyWith_Input_ChurchFilterInput.stub(_then(_instance))
        : CopyWith_Input_ChurchFilterInput(
            local$servingChurch,
            (e) => call(servingChurch: e),
          );
  }

  CopyWith_Input_ShammasLevelFilterInput<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Input_ShammasLevelFilterInput.stub(_then(_instance))
        : CopyWith_Input_ShammasLevelFilterInput(
            local$shammasLevel,
            (e) => call(shammasLevel: e),
          );
  }

  CopyWith_Input_PersonStateFilterInput<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Input_PersonStateFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonStateFilterInput(
            local$state,
            (e) => call(state: e),
          );
  }

  CopyWith_Input_StoreFilterInput<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoreFilterInput.stub(_then(_instance))
        : CopyWith_Input_StoreFilterInput(local$store, (e) => call(store: e));
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }

  CopyWith_Input_AddressFilterInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressFilterInput.stub(_then(_instance))
        : CopyWith_Input_AddressFilterInput(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_DataCheckFilterInput<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Input_DataCheckFilterInput.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterInput(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Input_MainContactFilterInput<TRes> get mainContact {
    final local$mainContact = _instance.mainContact;
    return local$mainContact == null
        ? CopyWith_Input_MainContactFilterInput.stub(_then(_instance))
        : CopyWith_Input_MainContactFilterInput(
            local$mainContact,
            (e) => call(mainContact: e),
          );
  }

  CopyWith_Input_LatestCallFilterInput<TRes> get latestCall {
    final local$latestCall = _instance.latestCall;
    return local$latestCall == null
        ? CopyWith_Input_LatestCallFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestCallFilterInput(
            local$latestCall,
            (e) => call(latestCall: e),
          );
  }

  CopyWith_Input_LatestConfessionFilterInput<TRes> get latestConfession {
    final local$latestConfession = _instance.latestConfession;
    return local$latestConfession == null
        ? CopyWith_Input_LatestConfessionFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestConfessionFilterInput(
            local$latestConfession,
            (e) => call(latestConfession: e),
          );
  }

  CopyWith_Input_LatestKodasFilterInput<TRes> get latestKodas {
    final local$latestKodas = _instance.latestKodas;
    return local$latestKodas == null
        ? CopyWith_Input_LatestKodasFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestKodasFilterInput(
            local$latestKodas,
            (e) => call(latestKodas: e),
          );
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_EditFilterInput<TRes> get edits {
    final local$edits = _instance.edits;
    return local$edits == null
        ? CopyWith_Input_EditFilterInput.stub(_then(_instance))
        : CopyWith_Input_EditFilterInput(local$edits, (e) => call(edits: e));
  }

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Input_LatestVisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestVisitFilterInput(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Input_VisitFilterInput<TRes> get visits {
    final local$visits = _instance.visits;
    return local$visits == null
        ? CopyWith_Input_VisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_VisitFilterInput(local$visits, (e) => call(visits: e));
  }

  CopyWith_Input_ContactFilterInput<TRes> get contacts {
    final local$contacts = _instance.contacts;
    return local$contacts == null
        ? CopyWith_Input_ContactFilterInput.stub(_then(_instance))
        : CopyWith_Input_ContactFilterInput(
            local$contacts,
            (e) => call(contacts: e),
          );
  }

  CopyWith_Input_FamilyContactFilterInput<TRes> get familyContacts {
    final local$familyContacts = _instance.familyContacts;
    return local$familyContacts == null
        ? CopyWith_Input_FamilyContactFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterInput(
            local$familyContacts,
            (e) => call(familyContacts: e),
          );
  }

  CopyWith_Input_FamilyContactFilterInput<TRes> get searchablePhones {
    final local$searchablePhones = _instance.searchablePhones;
    return local$searchablePhones == null
        ? CopyWith_Input_FamilyContactFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterInput(
            local$searchablePhones,
            (e) => call(searchablePhones: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterInput<TRes> get attendanceRecords {
    final local$attendanceRecords = _instance.attendanceRecords;
    return local$attendanceRecords == null
        ? CopyWith_Input_AttendanceRecordFilterInput.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterInput(
            local$attendanceRecords,
            (e) => call(attendanceRecords: e),
          );
  }

  CopyWith_Input_CallFilterInput<TRes> get calls {
    final local$calls = _instance.calls;
    return local$calls == null
        ? CopyWith_Input_CallFilterInput.stub(_then(_instance))
        : CopyWith_Input_CallFilterInput(local$calls, (e) => call(calls: e));
  }

  CopyWith_Input_ConfessionFilterInput<TRes> get confessions {
    final local$confessions = _instance.confessions;
    return local$confessions == null
        ? CopyWith_Input_ConfessionFilterInput.stub(_then(_instance))
        : CopyWith_Input_ConfessionFilterInput(
            local$confessions,
            (e) => call(confessions: e),
          );
  }

  CopyWith_Input_KodasFilterInput<TRes> get kodases {
    final local$kodases = _instance.kodases;
    return local$kodases == null
        ? CopyWith_Input_KodasFilterInput.stub(_then(_instance))
        : CopyWith_Input_KodasFilterInput(
            local$kodases,
            (e) => call(kodases: e),
          );
  }

  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships {
    final local$classMemberships = _instance.classMemberships;
    return local$classMemberships == null
        ? CopyWith_Input_ClassMembershipFilterInput.stub(_then(_instance))
        : CopyWith_Input_ClassMembershipFilterInput(
            local$classMemberships,
            (e) => call(classMemberships: e),
          );
  }

  CopyWith_Input_GroupMembershipFilterInput<TRes> get groupMemberships {
    final local$groupMemberships = _instance.groupMemberships;
    return local$groupMemberships == null
        ? CopyWith_Input_GroupMembershipFilterInput.stub(_then(_instance))
        : CopyWith_Input_GroupMembershipFilterInput(
            local$groupMemberships,
            (e) => call(groupMemberships: e),
          );
  }

  CopyWith_Input_ServiceMembershipFilterInput<TRes> get serviceMemberships {
    final local$serviceMemberships = _instance.serviceMemberships;
    return local$serviceMemberships == null
        ? CopyWith_Input_ServiceMembershipFilterInput.stub(_then(_instance))
        : CopyWith_Input_ServiceMembershipFilterInput(
            local$serviceMemberships,
            (e) => call(serviceMemberships: e),
          );
  }

  CopyWith_Input_HobbyFilterInput<TRes> get hobbies {
    final local$hobbies = _instance.hobbies;
    return local$hobbies == null
        ? CopyWith_Input_HobbyFilterInput.stub(_then(_instance))
        : CopyWith_Input_HobbyFilterInput(
            local$hobbies,
            (e) => call(hobbies: e),
          );
  }

  CopyWith_Input_TagFilterInput<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith_Input_TagFilterInput.stub(_then(_instance))
        : CopyWith_Input_TagFilterInput(local$tags, (e) => call(tags: e));
  }

  CopyWith_Input_PersonFilterLastConfessionDay<TRes> get lastConfessionDay {
    final local$lastConfessionDay = _instance.lastConfessionDay;
    return local$lastConfessionDay == null
        ? CopyWith_Input_PersonFilterLastConfessionDay.stub(_then(_instance))
        : CopyWith_Input_PersonFilterLastConfessionDay(
            local$lastConfessionDay,
            (e) => call(lastConfessionDay: e),
          );
  }

  CopyWith_Input_PersonFilterLastKodasDay<TRes> get lastKodasDay {
    final local$lastKodasDay = _instance.lastKodasDay;
    return local$lastKodasDay == null
        ? CopyWith_Input_PersonFilterLastKodasDay.stub(_then(_instance))
        : CopyWith_Input_PersonFilterLastKodasDay(
            local$lastKodasDay,
            (e) => call(lastKodasDay: e),
          );
  }

  CopyWith_Input_PersonFilterLastAttendedAt<TRes> get lastAttendedAt {
    final local$lastAttendedAt = _instance.lastAttendedAt;
    return local$lastAttendedAt == null
        ? CopyWith_Input_PersonFilterLastAttendedAt.stub(_then(_instance))
        : CopyWith_Input_PersonFilterLastAttendedAt(
            local$lastAttendedAt,
            (e) => call(lastAttendedAt: e),
          );
  }

  CopyWith_Input_PersonFilterLastVisitAt<TRes> get lastVisitAt {
    final local$lastVisitAt = _instance.lastVisitAt;
    return local$lastVisitAt == null
        ? CopyWith_Input_PersonFilterLastVisitAt.stub(_then(_instance))
        : CopyWith_Input_PersonFilterLastVisitAt(
            local$lastVisitAt,
            (e) => call(lastVisitAt: e),
          );
  }

  CopyWith_Input_PersonFilterMainPhone<TRes> get mainPhone {
    final local$mainPhone = _instance.mainPhone;
    return local$mainPhone == null
        ? CopyWith_Input_PersonFilterMainPhone.stub(_then(_instance))
        : CopyWith_Input_PersonFilterMainPhone(
            local$mainPhone,
            (e) => call(mainPhone: e),
          );
  }

  CopyWith_Input_PersonFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_PersonFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_PersonFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_PersonFilterLastCall<TRes> get lastCall {
    final local$lastCall = _instance.lastCall;
    return local$lastCall == null
        ? CopyWith_Input_PersonFilterLastCall.stub(_then(_instance))
        : CopyWith_Input_PersonFilterLastCall(
            local$lastCall,
            (e) => call(lastCall: e),
          );
  }

  CopyWith_Input_PersonFilterFamilyName<TRes> get familyName {
    final local$familyName = _instance.familyName;
    return local$familyName == null
        ? CopyWith_Input_PersonFilterFamilyName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterFamilyName(
            local$familyName,
            (e) => call(familyName: e),
          );
  }

  CopyWith_Input_PersonFilterUserName<TRes> get userName {
    final local$userName = _instance.userName;
    return local$userName == null
        ? CopyWith_Input_PersonFilterUserName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterUserName(
            local$userName,
            (e) => call(userName: e),
          );
  }

  CopyWith_Input_PersonFilterStoreName<TRes> get storeName {
    final local$storeName = _instance.storeName;
    return local$storeName == null
        ? CopyWith_Input_PersonFilterStoreName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterStoreName(
            local$storeName,
            (e) => call(storeName: e),
          );
  }

  CopyWith_Input_PersonFilterChurchName<TRes> get churchName {
    final local$churchName = _instance.churchName;
    return local$churchName == null
        ? CopyWith_Input_PersonFilterChurchName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterChurchName(
            local$churchName,
            (e) => call(churchName: e),
          );
  }

  CopyWith_Input_PersonFilterServingChurchName<TRes> get servingChurchName {
    final local$servingChurchName = _instance.servingChurchName;
    return local$servingChurchName == null
        ? CopyWith_Input_PersonFilterServingChurchName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterServingChurchName(
            local$servingChurchName,
            (e) => call(servingChurchName: e),
          );
  }

  CopyWith_Input_PersonFilterCollegeName<TRes> get collegeName {
    final local$collegeName = _instance.collegeName;
    return local$collegeName == null
        ? CopyWith_Input_PersonFilterCollegeName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterCollegeName(
            local$collegeName,
            (e) => call(collegeName: e),
          );
  }

  CopyWith_Input_PersonFilterSchoolName<TRes> get schoolName {
    final local$schoolName = _instance.schoolName;
    return local$schoolName == null
        ? CopyWith_Input_PersonFilterSchoolName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterSchoolName(
            local$schoolName,
            (e) => call(schoolName: e),
          );
  }

  CopyWith_Input_PersonFilterFatherName<TRes> get fatherName {
    final local$fatherName = _instance.fatherName;
    return local$fatherName == null
        ? CopyWith_Input_PersonFilterFatherName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterFatherName(
            local$fatherName,
            (e) => call(fatherName: e),
          );
  }

  CopyWith_Input_PersonFilterJobName<TRes> get jobName {
    final local$jobName = _instance.jobName;
    return local$jobName == null
        ? CopyWith_Input_PersonFilterJobName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterJobName(
            local$jobName,
            (e) => call(jobName: e),
          );
  }

  CopyWith_Input_PersonFilterQualificationName<TRes> get qualificationName {
    final local$qualificationName = _instance.qualificationName;
    return local$qualificationName == null
        ? CopyWith_Input_PersonFilterQualificationName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterQualificationName(
            local$qualificationName,
            (e) => call(qualificationName: e),
          );
  }

  CopyWith_Input_PersonFilterStateName<TRes> get stateName {
    final local$stateName = _instance.stateName;
    return local$stateName == null
        ? CopyWith_Input_PersonFilterStateName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterStateName(
            local$stateName,
            (e) => call(stateName: e),
          );
  }

  CopyWith_Input_PersonFilterPersonTypeOrder<TRes> get personTypeOrder {
    final local$personTypeOrder = _instance.personTypeOrder;
    return local$personTypeOrder == null
        ? CopyWith_Input_PersonFilterPersonTypeOrder.stub(_then(_instance))
        : CopyWith_Input_PersonFilterPersonTypeOrder(
            local$personTypeOrder,
            (e) => call(personTypeOrder: e),
          );
  }

  CopyWith_Input_PersonFilterShammasLevelOrder<TRes> get shammasLevelOrder {
    final local$shammasLevelOrder = _instance.shammasLevelOrder;
    return local$shammasLevelOrder == null
        ? CopyWith_Input_PersonFilterShammasLevelOrder.stub(_then(_instance))
        : CopyWith_Input_PersonFilterShammasLevelOrder(
            local$shammasLevelOrder,
            (e) => call(shammasLevelOrder: e),
          );
  }

  CopyWith_Input_PersonFilterStudyYearOrder<TRes> get studyYearOrder {
    final local$studyYearOrder = _instance.studyYearOrder;
    return local$studyYearOrder == null
        ? CopyWith_Input_PersonFilterStudyYearOrder.stub(_then(_instance))
        : CopyWith_Input_PersonFilterStudyYearOrder(
            local$studyYearOrder,
            (e) => call(studyYearOrder: e),
          );
  }

  CopyWith_Input_PersonFilterAddressAreaName<TRes> get addressAreaName {
    final local$addressAreaName = _instance.addressAreaName;
    return local$addressAreaName == null
        ? CopyWith_Input_PersonFilterAddressAreaName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterAddressAreaName(
            local$addressAreaName,
            (e) => call(addressAreaName: e),
          );
  }

  CopyWith_Input_PersonFilterAddressStreetName<TRes> get addressStreetName {
    final local$addressStreetName = _instance.addressStreetName;
    return local$addressStreetName == null
        ? CopyWith_Input_PersonFilterAddressStreetName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterAddressStreetName(
            local$addressStreetName,
            (e) => call(addressStreetName: e),
          );
  }

  CopyWith_Input_PersonFilterAddressDistrictName<TRes> get addressDistrictName {
    final local$addressDistrictName = _instance.addressDistrictName;
    return local$addressDistrictName == null
        ? CopyWith_Input_PersonFilterAddressDistrictName.stub(_then(_instance))
        : CopyWith_Input_PersonFilterAddressDistrictName(
            local$addressDistrictName,
            (e) => call(addressDistrictName: e),
          );
  }

  CopyWith_Input_PersonFilterAddressFullAddressText<TRes>
  get addressFullAddressText {
    final local$addressFullAddressText = _instance.addressFullAddressText;
    return local$addressFullAddressText == null
        ? CopyWith_Input_PersonFilterAddressFullAddressText.stub(
            _then(_instance),
          )
        : CopyWith_Input_PersonFilterAddressFullAddressText(
            local$addressFullAddressText,
            (e) => call(addressFullAddressText: e),
          );
  }

  CopyWith_Input_PersonFilterBirthday<TRes> get birthday {
    final local$birthday = _instance.birthday;
    return local$birthday == null
        ? CopyWith_Input_PersonFilterBirthday.stub(_then(_instance))
        : CopyWith_Input_PersonFilterBirthday(
            local$birthday,
            (e) => call(birthday: e),
          );
  }

  CopyWith_Input_PersonFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_PersonFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_PersonFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonFilterInput<TRes>
    implements CopyWith_Input_PersonFilterInput<TRes> {
  _CopyWithStubImpl_Input_PersonFilterInput(this._res);

  TRes _res;

  call({
    List<Input_PersonFilterInput>? and,
    List<Input_PersonFilterInput>? or,
    List<Input_PersonFilterInput>? not,
    Input_PersonFilterId? id,
    Input_PersonFilterName? name,
    Input_PersonFilterBirthdate? birthdate,
    Input_PersonFilterGender? gender,
    Input_PersonFilterIsShammas? isShammas,
    Input_PersonFilterShammasLevelId? shammasLevelId,
    Input_PersonFilterSchoolId? schoolId,
    Input_PersonFilterCollegeId? collegeId,
    Input_PersonFilterChurchId? churchId,
    Input_PersonFilterFatherId? fatherId,
    Input_PersonFilterIsStudent? isStudent,
    Input_PersonFilterJobId? jobId,
    Input_PersonFilterJobDescription? jobDescription,
    Input_PersonFilterQualificationId? qualificationId,
    Input_PersonFilterPersonTypeId? personTypeId,
    Input_PersonFilterStateId? stateId,
    Input_PersonFilterIsServant? isServant,
    Input_PersonFilterNotes? notes,
    Input_PersonFilterUid? uid,
    Input_PersonFilterFamilyId? familyId,
    Input_PersonFilterStoreId? storeId,
    Input_PersonFilterStudyYearId? studyYearId,
    Input_PersonFilterColor? color,
    Input_PersonFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_PersonFilterBlurhash? blurhash,
    Input_PersonFilterWorkStatus? workStatus,
    Input_PersonFilterMartialStatus? martialStatus,
    Input_PersonFilterServingChurchId? servingChurchId,
    Input_PersonFilterServiceType? serviceType,
    Input_ChurchFilterInput? church,
    Input_CollegeFilterInput? college,
    Input_FamilyFilterInput? family,
    Input_FatherFilterInput? father,
    Input_JobFilterInput? job,
    Input_PersonTypeFilterInput? personType,
    Input_QualificationFilterInput? qualification,
    Input_SchoolFilterInput? school,
    Input_ChurchFilterInput? servingChurch,
    Input_ShammasLevelFilterInput? shammasLevel,
    Input_PersonStateFilterInput? state,
    Input_StoreFilterInput? store,
    Input_StudyYearFilterInput? studyYear,
    Input_UserFilterInput? user,
    Input_AddressFilterInput? address,
    Input_DataCheckFilterInput? dataCheck,
    Input_MainContactFilterInput? mainContact,
    Input_LatestCallFilterInput? latestCall,
    Input_LatestConfessionFilterInput? latestConfession,
    Input_LatestKodasFilterInput? latestKodas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_ContactFilterInput? contacts,
    Input_FamilyContactFilterInput? familyContacts,
    Input_FamilyContactFilterInput? searchablePhones,
    Input_AttendanceRecordFilterInput? attendanceRecords,
    Input_CallFilterInput? calls,
    Input_ConfessionFilterInput? confessions,
    Input_KodasFilterInput? kodases,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_GroupMembershipFilterInput? groupMemberships,
    Input_ServiceMembershipFilterInput? serviceMemberships,
    Input_HobbyFilterInput? hobbies,
    Input_TagFilterInput? tags,
    Input_PersonFilterLastConfessionDay? lastConfessionDay,
    Input_PersonFilterLastKodasDay? lastKodasDay,
    Input_PersonFilterLastAttendedAt? lastAttendedAt,
    Input_PersonFilterLastVisitAt? lastVisitAt,
    Input_PersonFilterMainPhone? mainPhone,
    Input_PersonFilterLastEdit? lastEdit,
    Input_PersonFilterLastCall? lastCall,
    Input_PersonFilterFamilyName? familyName,
    Input_PersonFilterUserName? userName,
    Input_PersonFilterStoreName? storeName,
    Input_PersonFilterChurchName? churchName,
    Input_PersonFilterServingChurchName? servingChurchName,
    Input_PersonFilterCollegeName? collegeName,
    Input_PersonFilterSchoolName? schoolName,
    Input_PersonFilterFatherName? fatherName,
    Input_PersonFilterJobName? jobName,
    Input_PersonFilterQualificationName? qualificationName,
    Input_PersonFilterStateName? stateName,
    Input_PersonFilterPersonTypeOrder? personTypeOrder,
    Input_PersonFilterShammasLevelOrder? shammasLevelOrder,
    Input_PersonFilterStudyYearOrder? studyYearOrder,
    Input_PersonFilterAddressAreaName? addressAreaName,
    Input_PersonFilterAddressStreetName? addressStreetName,
    Input_PersonFilterAddressDistrictName? addressDistrictName,
    Input_PersonFilterAddressFullAddressText? addressFullAddressText,
    Input_PersonFilterBirthday? birthday,
    Input_PersonFilterUserCanEdit? userCanEdit,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_PersonFilterId<TRes> get id =>
      CopyWith_Input_PersonFilterId.stub(_res);

  CopyWith_Input_PersonFilterName<TRes> get name =>
      CopyWith_Input_PersonFilterName.stub(_res);

  CopyWith_Input_PersonFilterBirthdate<TRes> get birthdate =>
      CopyWith_Input_PersonFilterBirthdate.stub(_res);

  CopyWith_Input_PersonFilterGender<TRes> get gender =>
      CopyWith_Input_PersonFilterGender.stub(_res);

  CopyWith_Input_PersonFilterIsShammas<TRes> get isShammas =>
      CopyWith_Input_PersonFilterIsShammas.stub(_res);

  CopyWith_Input_PersonFilterShammasLevelId<TRes> get shammasLevelId =>
      CopyWith_Input_PersonFilterShammasLevelId.stub(_res);

  CopyWith_Input_PersonFilterSchoolId<TRes> get schoolId =>
      CopyWith_Input_PersonFilterSchoolId.stub(_res);

  CopyWith_Input_PersonFilterCollegeId<TRes> get collegeId =>
      CopyWith_Input_PersonFilterCollegeId.stub(_res);

  CopyWith_Input_PersonFilterChurchId<TRes> get churchId =>
      CopyWith_Input_PersonFilterChurchId.stub(_res);

  CopyWith_Input_PersonFilterFatherId<TRes> get fatherId =>
      CopyWith_Input_PersonFilterFatherId.stub(_res);

  CopyWith_Input_PersonFilterIsStudent<TRes> get isStudent =>
      CopyWith_Input_PersonFilterIsStudent.stub(_res);

  CopyWith_Input_PersonFilterJobId<TRes> get jobId =>
      CopyWith_Input_PersonFilterJobId.stub(_res);

  CopyWith_Input_PersonFilterJobDescription<TRes> get jobDescription =>
      CopyWith_Input_PersonFilterJobDescription.stub(_res);

  CopyWith_Input_PersonFilterQualificationId<TRes> get qualificationId =>
      CopyWith_Input_PersonFilterQualificationId.stub(_res);

  CopyWith_Input_PersonFilterPersonTypeId<TRes> get personTypeId =>
      CopyWith_Input_PersonFilterPersonTypeId.stub(_res);

  CopyWith_Input_PersonFilterStateId<TRes> get stateId =>
      CopyWith_Input_PersonFilterStateId.stub(_res);

  CopyWith_Input_PersonFilterIsServant<TRes> get isServant =>
      CopyWith_Input_PersonFilterIsServant.stub(_res);

  CopyWith_Input_PersonFilterNotes<TRes> get notes =>
      CopyWith_Input_PersonFilterNotes.stub(_res);

  CopyWith_Input_PersonFilterUid<TRes> get uid =>
      CopyWith_Input_PersonFilterUid.stub(_res);

  CopyWith_Input_PersonFilterFamilyId<TRes> get familyId =>
      CopyWith_Input_PersonFilterFamilyId.stub(_res);

  CopyWith_Input_PersonFilterStoreId<TRes> get storeId =>
      CopyWith_Input_PersonFilterStoreId.stub(_res);

  CopyWith_Input_PersonFilterStudyYearId<TRes> get studyYearId =>
      CopyWith_Input_PersonFilterStudyYearId.stub(_res);

  CopyWith_Input_PersonFilterColor<TRes> get color =>
      CopyWith_Input_PersonFilterColor.stub(_res);

  CopyWith_Input_PersonFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_PersonFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_PersonFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_PersonFilterBlurhash.stub(_res);

  CopyWith_Input_PersonFilterWorkStatus<TRes> get workStatus =>
      CopyWith_Input_PersonFilterWorkStatus.stub(_res);

  CopyWith_Input_PersonFilterMartialStatus<TRes> get martialStatus =>
      CopyWith_Input_PersonFilterMartialStatus.stub(_res);

  CopyWith_Input_PersonFilterServingChurchId<TRes> get servingChurchId =>
      CopyWith_Input_PersonFilterServingChurchId.stub(_res);

  CopyWith_Input_PersonFilterServiceType<TRes> get serviceType =>
      CopyWith_Input_PersonFilterServiceType.stub(_res);

  CopyWith_Input_ChurchFilterInput<TRes> get church =>
      CopyWith_Input_ChurchFilterInput.stub(_res);

  CopyWith_Input_CollegeFilterInput<TRes> get college =>
      CopyWith_Input_CollegeFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get family =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_FatherFilterInput<TRes> get father =>
      CopyWith_Input_FatherFilterInput.stub(_res);

  CopyWith_Input_JobFilterInput<TRes> get job =>
      CopyWith_Input_JobFilterInput.stub(_res);

  CopyWith_Input_PersonTypeFilterInput<TRes> get personType =>
      CopyWith_Input_PersonTypeFilterInput.stub(_res);

  CopyWith_Input_QualificationFilterInput<TRes> get qualification =>
      CopyWith_Input_QualificationFilterInput.stub(_res);

  CopyWith_Input_SchoolFilterInput<TRes> get school =>
      CopyWith_Input_SchoolFilterInput.stub(_res);

  CopyWith_Input_ChurchFilterInput<TRes> get servingChurch =>
      CopyWith_Input_ChurchFilterInput.stub(_res);

  CopyWith_Input_ShammasLevelFilterInput<TRes> get shammasLevel =>
      CopyWith_Input_ShammasLevelFilterInput.stub(_res);

  CopyWith_Input_PersonStateFilterInput<TRes> get state =>
      CopyWith_Input_PersonStateFilterInput.stub(_res);

  CopyWith_Input_StoreFilterInput<TRes> get store =>
      CopyWith_Input_StoreFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get address =>
      CopyWith_Input_AddressFilterInput.stub(_res);

  CopyWith_Input_DataCheckFilterInput<TRes> get dataCheck =>
      CopyWith_Input_DataCheckFilterInput.stub(_res);

  CopyWith_Input_MainContactFilterInput<TRes> get mainContact =>
      CopyWith_Input_MainContactFilterInput.stub(_res);

  CopyWith_Input_LatestCallFilterInput<TRes> get latestCall =>
      CopyWith_Input_LatestCallFilterInput.stub(_res);

  CopyWith_Input_LatestConfessionFilterInput<TRes> get latestConfession =>
      CopyWith_Input_LatestConfessionFilterInput.stub(_res);

  CopyWith_Input_LatestKodasFilterInput<TRes> get latestKodas =>
      CopyWith_Input_LatestKodasFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_EditFilterInput<TRes> get edits =>
      CopyWith_Input_EditFilterInput.stub(_res);

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit =>
      CopyWith_Input_LatestVisitFilterInput.stub(_res);

  CopyWith_Input_VisitFilterInput<TRes> get visits =>
      CopyWith_Input_VisitFilterInput.stub(_res);

  CopyWith_Input_ContactFilterInput<TRes> get contacts =>
      CopyWith_Input_ContactFilterInput.stub(_res);

  CopyWith_Input_FamilyContactFilterInput<TRes> get familyContacts =>
      CopyWith_Input_FamilyContactFilterInput.stub(_res);

  CopyWith_Input_FamilyContactFilterInput<TRes> get searchablePhones =>
      CopyWith_Input_FamilyContactFilterInput.stub(_res);

  CopyWith_Input_AttendanceRecordFilterInput<TRes> get attendanceRecords =>
      CopyWith_Input_AttendanceRecordFilterInput.stub(_res);

  CopyWith_Input_CallFilterInput<TRes> get calls =>
      CopyWith_Input_CallFilterInput.stub(_res);

  CopyWith_Input_ConfessionFilterInput<TRes> get confessions =>
      CopyWith_Input_ConfessionFilterInput.stub(_res);

  CopyWith_Input_KodasFilterInput<TRes> get kodases =>
      CopyWith_Input_KodasFilterInput.stub(_res);

  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships =>
      CopyWith_Input_ClassMembershipFilterInput.stub(_res);

  CopyWith_Input_GroupMembershipFilterInput<TRes> get groupMemberships =>
      CopyWith_Input_GroupMembershipFilterInput.stub(_res);

  CopyWith_Input_ServiceMembershipFilterInput<TRes> get serviceMemberships =>
      CopyWith_Input_ServiceMembershipFilterInput.stub(_res);

  CopyWith_Input_HobbyFilterInput<TRes> get hobbies =>
      CopyWith_Input_HobbyFilterInput.stub(_res);

  CopyWith_Input_TagFilterInput<TRes> get tags =>
      CopyWith_Input_TagFilterInput.stub(_res);

  CopyWith_Input_PersonFilterLastConfessionDay<TRes> get lastConfessionDay =>
      CopyWith_Input_PersonFilterLastConfessionDay.stub(_res);

  CopyWith_Input_PersonFilterLastKodasDay<TRes> get lastKodasDay =>
      CopyWith_Input_PersonFilterLastKodasDay.stub(_res);

  CopyWith_Input_PersonFilterLastAttendedAt<TRes> get lastAttendedAt =>
      CopyWith_Input_PersonFilterLastAttendedAt.stub(_res);

  CopyWith_Input_PersonFilterLastVisitAt<TRes> get lastVisitAt =>
      CopyWith_Input_PersonFilterLastVisitAt.stub(_res);

  CopyWith_Input_PersonFilterMainPhone<TRes> get mainPhone =>
      CopyWith_Input_PersonFilterMainPhone.stub(_res);

  CopyWith_Input_PersonFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_PersonFilterLastEdit.stub(_res);

  CopyWith_Input_PersonFilterLastCall<TRes> get lastCall =>
      CopyWith_Input_PersonFilterLastCall.stub(_res);

  CopyWith_Input_PersonFilterFamilyName<TRes> get familyName =>
      CopyWith_Input_PersonFilterFamilyName.stub(_res);

  CopyWith_Input_PersonFilterUserName<TRes> get userName =>
      CopyWith_Input_PersonFilterUserName.stub(_res);

  CopyWith_Input_PersonFilterStoreName<TRes> get storeName =>
      CopyWith_Input_PersonFilterStoreName.stub(_res);

  CopyWith_Input_PersonFilterChurchName<TRes> get churchName =>
      CopyWith_Input_PersonFilterChurchName.stub(_res);

  CopyWith_Input_PersonFilterServingChurchName<TRes> get servingChurchName =>
      CopyWith_Input_PersonFilterServingChurchName.stub(_res);

  CopyWith_Input_PersonFilterCollegeName<TRes> get collegeName =>
      CopyWith_Input_PersonFilterCollegeName.stub(_res);

  CopyWith_Input_PersonFilterSchoolName<TRes> get schoolName =>
      CopyWith_Input_PersonFilterSchoolName.stub(_res);

  CopyWith_Input_PersonFilterFatherName<TRes> get fatherName =>
      CopyWith_Input_PersonFilterFatherName.stub(_res);

  CopyWith_Input_PersonFilterJobName<TRes> get jobName =>
      CopyWith_Input_PersonFilterJobName.stub(_res);

  CopyWith_Input_PersonFilterQualificationName<TRes> get qualificationName =>
      CopyWith_Input_PersonFilterQualificationName.stub(_res);

  CopyWith_Input_PersonFilterStateName<TRes> get stateName =>
      CopyWith_Input_PersonFilterStateName.stub(_res);

  CopyWith_Input_PersonFilterPersonTypeOrder<TRes> get personTypeOrder =>
      CopyWith_Input_PersonFilterPersonTypeOrder.stub(_res);

  CopyWith_Input_PersonFilterShammasLevelOrder<TRes> get shammasLevelOrder =>
      CopyWith_Input_PersonFilterShammasLevelOrder.stub(_res);

  CopyWith_Input_PersonFilterStudyYearOrder<TRes> get studyYearOrder =>
      CopyWith_Input_PersonFilterStudyYearOrder.stub(_res);

  CopyWith_Input_PersonFilterAddressAreaName<TRes> get addressAreaName =>
      CopyWith_Input_PersonFilterAddressAreaName.stub(_res);

  CopyWith_Input_PersonFilterAddressStreetName<TRes> get addressStreetName =>
      CopyWith_Input_PersonFilterAddressStreetName.stub(_res);

  CopyWith_Input_PersonFilterAddressDistrictName<TRes>
  get addressDistrictName =>
      CopyWith_Input_PersonFilterAddressDistrictName.stub(_res);

  CopyWith_Input_PersonFilterAddressFullAddressText<TRes>
  get addressFullAddressText =>
      CopyWith_Input_PersonFilterAddressFullAddressText.stub(_res);

  CopyWith_Input_PersonFilterBirthday<TRes> get birthday =>
      CopyWith_Input_PersonFilterBirthday.stub(_res);

  CopyWith_Input_PersonFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_PersonFilterUserCanEdit.stub(_res);
}

class Input_PersonSortInput {
  factory Input_PersonSortInput({
    Enum_SortOrder? order,
    required Enum_PersonSortField field,
  }) => Input_PersonSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_PersonSortInput._(this._$data);

  factory Input_PersonSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_PersonSortField((l$field as String));
    return Input_PersonSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_PersonSortField get field => (_$data['field'] as Enum_PersonSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_PersonSortField(l$field);
    return result$data;
  }

  CopyWith_Input_PersonSortInput<Input_PersonSortInput> get copyWith =>
      CopyWith_Input_PersonSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_PersonSortInput<TRes> {
  factory CopyWith_Input_PersonSortInput(
    Input_PersonSortInput instance,
    TRes Function(Input_PersonSortInput) then,
  ) = _CopyWithImpl_Input_PersonSortInput;

  factory CopyWith_Input_PersonSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonSortInput;

  TRes call({Enum_SortOrder? order, Enum_PersonSortField? field});
}

class _CopyWithImpl_Input_PersonSortInput<TRes>
    implements CopyWith_Input_PersonSortInput<TRes> {
  _CopyWithImpl_Input_PersonSortInput(this._instance, this._then);

  final Input_PersonSortInput _instance;

  final TRes Function(Input_PersonSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_PersonSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_PersonSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonSortInput<TRes>
    implements CopyWith_Input_PersonSortInput<TRes> {
  _CopyWithStubImpl_Input_PersonSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_PersonSortField? field}) => _res;
}

class Input_MainContactFilterPhone {
  factory Input_MainContactFilterPhone({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_MainContactFilterPhone._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_MainContactFilterPhone._(this._$data);

  factory Input_MainContactFilterPhone.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_MainContactFilterPhone._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_MainContactFilterPhone<Input_MainContactFilterPhone>
  get copyWith => CopyWith_Input_MainContactFilterPhone(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MainContactFilterPhone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}

abstract class CopyWith_Input_MainContactFilterPhone<TRes> {
  factory CopyWith_Input_MainContactFilterPhone(
    Input_MainContactFilterPhone instance,
    TRes Function(Input_MainContactFilterPhone) then,
  ) = _CopyWithImpl_Input_MainContactFilterPhone;

  factory CopyWith_Input_MainContactFilterPhone.stub(TRes res) =
      _CopyWithStubImpl_Input_MainContactFilterPhone;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  });
}

class _CopyWithImpl_Input_MainContactFilterPhone<TRes>
    implements CopyWith_Input_MainContactFilterPhone<TRes> {
  _CopyWithImpl_Input_MainContactFilterPhone(this._instance, this._then);

  final Input_MainContactFilterPhone _instance;

  final TRes Function(Input_MainContactFilterPhone) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_MainContactFilterPhone._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_MainContactFilterPhone<TRes>
    implements CopyWith_Input_MainContactFilterPhone<TRes> {
  _CopyWithStubImpl_Input_MainContactFilterPhone(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => _res;
}

class Input_MainContactFilterLabel {
  factory Input_MainContactFilterLabel({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_MainContactFilterLabel._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_MainContactFilterLabel._(this._$data);

  factory Input_MainContactFilterLabel.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_MainContactFilterLabel._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_MainContactFilterLabel<Input_MainContactFilterLabel>
  get copyWith => CopyWith_Input_MainContactFilterLabel(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MainContactFilterLabel ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}
