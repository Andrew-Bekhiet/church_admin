// Part 17 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonFilterName<TRes> {
  factory CopyWith_Input_PersonFilterName(
    Input_PersonFilterName instance,
    TRes Function(Input_PersonFilterName) then,
  ) = _CopyWithImpl_Input_PersonFilterName;

  factory CopyWith_Input_PersonFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonFilterName;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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

class _CopyWithImpl_Input_PersonFilterName<TRes>
    implements CopyWith_Input_PersonFilterName<TRes> {
  _CopyWithImpl_Input_PersonFilterName(this._instance, this._then);

  final Input_PersonFilterName _instance;

  final TRes Function(Input_PersonFilterName) _then;

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
    Input_PersonFilterName._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
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

class _CopyWithStubImpl_Input_PersonFilterName<TRes>
    implements CopyWith_Input_PersonFilterName<TRes> {
  _CopyWithStubImpl_Input_PersonFilterName(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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

class Input_PersonFilterId {
  factory Input_PersonFilterId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_PersonFilterId._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_PersonFilterId._(this._$data);

  factory Input_PersonFilterId.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String))
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_PersonFilterId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

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
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_PersonFilterId<Input_PersonFilterId> get copyWith =>
      CopyWith_Input_PersonFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonFilterId || runtimeType != other.runtimeType) {
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
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
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
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonFilterId<TRes> {
  factory CopyWith_Input_PersonFilterId(
    Input_PersonFilterId instance,
    TRes Function(Input_PersonFilterId) then,
  ) = _CopyWithImpl_Input_PersonFilterId;

  factory CopyWith_Input_PersonFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonFilterId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_PersonFilterId<TRes>
    implements CopyWith_Input_PersonFilterId<TRes> {
  _CopyWithImpl_Input_PersonFilterId(this._instance, this._then);

  final Input_PersonFilterId _instance;

  final TRes Function(Input_PersonFilterId) _then;

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
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_PersonFilterId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonFilterId<TRes>
    implements CopyWith_Input_PersonFilterId<TRes> {
  _CopyWithStubImpl_Input_PersonFilterId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_PersonFilterInput {
  factory Input_PersonFilterInput({
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
    Input_PersonFilterLastConfessionDayUserName? lastConfessionDayUserName,
    Input_PersonFilterLastKodasDay? lastKodasDay,
    Input_PersonFilterLastKodasDayUserName? lastKodasDayUserName,
    Input_PersonFilterLastAttendedAt? lastAttendedAt,
    Input_PersonFilterLastVisitAt? lastVisitAt,
    Input_PersonFilterLastVisitAtUserName? lastVisitAtUserName,
    Input_PersonFilterMainPhone? mainPhone,
    Input_PersonFilterLastEdit? lastEdit,
    Input_PersonFilterLastEditUserName? lastEditUserName,
    Input_PersonFilterLastCall? lastCall,
    Input_PersonFilterLastCallUserName? lastCallUserName,
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
  }) => Input_PersonFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (birthdate != null) r'birthdate': birthdate,
    if (gender != null) r'gender': gender,
    if (isShammas != null) r'isShammas': isShammas,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (schoolId != null) r'schoolId': schoolId,
    if (collegeId != null) r'collegeId': collegeId,
    if (churchId != null) r'churchId': churchId,
    if (fatherId != null) r'fatherId': fatherId,
    if (isStudent != null) r'isStudent': isStudent,
    if (jobId != null) r'jobId': jobId,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (stateId != null) r'stateId': stateId,
    if (isServant != null) r'isServant': isServant,
    if (notes != null) r'notes': notes,
    if (uid != null) r'uid': uid,
    if (familyId != null) r'familyId': familyId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (color != null) r'color': color,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (workStatus != null) r'workStatus': workStatus,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (serviceType != null) r'serviceType': serviceType,
    if (church != null) r'church': church,
    if (college != null) r'college': college,
    if (family != null) r'family': family,
    if (father != null) r'father': father,
    if (job != null) r'job': job,
    if (personType != null) r'personType': personType,
    if (qualification != null) r'qualification': qualification,
    if (school != null) r'school': school,
    if (servingChurch != null) r'servingChurch': servingChurch,
    if (shammasLevel != null) r'shammasLevel': shammasLevel,
    if (state != null) r'state': state,
    if (store != null) r'store': store,
    if (studyYear != null) r'studyYear': studyYear,
    if (user != null) r'user': user,
    if (address != null) r'address': address,
    if (dataCheck != null) r'dataCheck': dataCheck,
    if (mainContact != null) r'mainContact': mainContact,
    if (latestCall != null) r'latestCall': latestCall,
    if (latestConfession != null) r'latestConfession': latestConfession,
    if (latestKodas != null) r'latestKodas': latestKodas,
    if (latestEdit != null) r'latestEdit': latestEdit,
    if (edits != null) r'edits': edits,
    if (latestVisit != null) r'latestVisit': latestVisit,
    if (visits != null) r'visits': visits,
    if (contacts != null) r'contacts': contacts,
    if (familyContacts != null) r'familyContacts': familyContacts,
    if (searchablePhones != null) r'searchablePhones': searchablePhones,
    if (attendanceRecords != null) r'attendanceRecords': attendanceRecords,
    if (calls != null) r'calls': calls,
    if (confessions != null) r'confessions': confessions,
    if (kodases != null) r'kodases': kodases,
    if (classMemberships != null) r'classMemberships': classMemberships,
    if (groupMemberships != null) r'groupMemberships': groupMemberships,
    if (serviceMemberships != null) r'serviceMemberships': serviceMemberships,
    if (hobbies != null) r'hobbies': hobbies,
    if (tags != null) r'tags': tags,
    if (lastConfessionDay != null) r'lastConfessionDay': lastConfessionDay,
    if (lastConfessionDayUserName != null)
      r'lastConfessionDayUserName': lastConfessionDayUserName,
    if (lastKodasDay != null) r'lastKodasDay': lastKodasDay,
    if (lastKodasDayUserName != null)
      r'lastKodasDayUserName': lastKodasDayUserName,
    if (lastAttendedAt != null) r'lastAttendedAt': lastAttendedAt,
    if (lastVisitAt != null) r'lastVisitAt': lastVisitAt,
    if (lastVisitAtUserName != null)
      r'lastVisitAtUserName': lastVisitAtUserName,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastEditUserName != null) r'lastEditUserName': lastEditUserName,
    if (lastCall != null) r'lastCall': lastCall,
    if (lastCallUserName != null) r'lastCallUserName': lastCallUserName,
    if (familyName != null) r'familyName': familyName,
    if (userName != null) r'userName': userName,
    if (storeName != null) r'storeName': storeName,
    if (churchName != null) r'churchName': churchName,
    if (servingChurchName != null) r'servingChurchName': servingChurchName,
    if (collegeName != null) r'collegeName': collegeName,
    if (schoolName != null) r'schoolName': schoolName,
    if (fatherName != null) r'fatherName': fatherName,
    if (jobName != null) r'jobName': jobName,
    if (qualificationName != null) r'qualificationName': qualificationName,
    if (stateName != null) r'stateName': stateName,
    if (personTypeOrder != null) r'personTypeOrder': personTypeOrder,
    if (shammasLevelOrder != null) r'shammasLevelOrder': shammasLevelOrder,
    if (studyYearOrder != null) r'studyYearOrder': studyYearOrder,
    if (addressAreaName != null) r'addressAreaName': addressAreaName,
    if (addressStreetName != null) r'addressStreetName': addressStreetName,
    if (addressDistrictName != null)
      r'addressDistrictName': addressDistrictName,
    if (addressFullAddressText != null)
      r'addressFullAddressText': addressFullAddressText,
    if (birthday != null) r'birthday': birthday,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_PersonFilterInput._(this._$data);

  factory Input_PersonFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_PersonFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_PersonFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : Input_PersonFilterBirthdate.fromJson(
              (l$birthdate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : Input_PersonFilterGender.fromJson(
              (l$gender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = l$isShammas == null
          ? null
          : Input_PersonFilterIsShammas.fromJson(
              (l$isShammas as Map<String, dynamic>),
            );
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : Input_PersonFilterShammasLevelId.fromJson(
              (l$shammasLevelId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : Input_PersonFilterSchoolId.fromJson(
              (l$schoolId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : Input_PersonFilterCollegeId.fromJson(
              (l$collegeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : Input_PersonFilterChurchId.fromJson(
              (l$churchId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : Input_PersonFilterFatherId.fromJson(
              (l$fatherId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = l$isStudent == null
          ? null
          : Input_PersonFilterIsStudent.fromJson(
              (l$isStudent as Map<String, dynamic>),
            );
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null
          ? null
          : Input_PersonFilterJobId.fromJson((l$jobId as Map<String, dynamic>));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : Input_PersonFilterJobDescription.fromJson(
              (l$jobDescription as Map<String, dynamic>),
            );
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : Input_PersonFilterQualificationId.fromJson(
              (l$qualificationId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : Input_PersonFilterPersonTypeId.fromJson(
              (l$personTypeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : Input_PersonFilterStateId.fromJson(
              (l$stateId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = l$isServant == null
          ? null
          : Input_PersonFilterIsServant.fromJson(
              (l$isServant as Map<String, dynamic>),
            );
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_PersonFilterNotes.fromJson((l$notes as Map<String, dynamic>));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_PersonFilterUid.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_PersonFilterFamilyId.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : Input_PersonFilterStoreId.fromJson(
              (l$storeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : Input_PersonFilterStudyYearId.fromJson(
              (l$studyYearId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_PersonFilterColor.fromJson((l$color as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_PersonFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_PersonFilterBlurhash.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = l$workStatus == null
          ? null
          : Input_PersonFilterWorkStatus.fromJson(
              (l$workStatus as Map<String, dynamic>),
            );
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : Input_PersonFilterMartialStatus.fromJson(
              (l$martialStatus as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : Input_PersonFilterServingChurchId.fromJson(
              (l$servingChurchId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = l$serviceType == null
          ? null
          : Input_PersonFilterServiceType.fromJson(
              (l$serviceType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchFilterInput.fromJson(
              (l$church as Map<String, dynamic>),
            );
    }
    if (data.containsKey('college')) {
      final l$college = data['college'];
      result$data['college'] = l$college == null
          ? null
          : Input_CollegeFilterInput.fromJson(
              (l$college as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('father')) {
      final l$father = data['father'];
      result$data['father'] = l$father == null
          ? null
          : Input_FatherFilterInput.fromJson(
              (l$father as Map<String, dynamic>),
            );
    }
    if (data.containsKey('job')) {
      final l$job = data['job'];
      result$data['job'] = l$job == null
          ? null
          : Input_JobFilterInput.fromJson((l$job as Map<String, dynamic>));
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypeFilterInput.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('qualification')) {
      final l$qualification = data['qualification'];
      result$data['qualification'] = l$qualification == null
          ? null
          : Input_QualificationFilterInput.fromJson(
              (l$qualification as Map<String, dynamic>),
            );
    }
    if (data.containsKey('school')) {
      final l$school = data['school'];
      result$data['school'] = l$school == null
          ? null
          : Input_SchoolFilterInput.fromJson(
              (l$school as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurch')) {
      final l$servingChurch = data['servingChurch'];
      result$data['servingChurch'] = l$servingChurch == null
          ? null
          : Input_ChurchFilterInput.fromJson(
              (l$servingChurch as Map<String, dynamic>),
            );
    }
    if (data.containsKey('shammasLevel')) {
      final l$shammasLevel = data['shammasLevel'];
      result$data['shammasLevel'] = l$shammasLevel == null
          ? null
          : Input_ShammasLevelFilterInput.fromJson(
              (l$shammasLevel as Map<String, dynamic>),
            );
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = l$state == null
          ? null
          : Input_PersonStateFilterInput.fromJson(
              (l$state as Map<String, dynamic>),
            );
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoreFilterInput.fromJson((l$store as Map<String, dynamic>));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_UserFilterInput.fromJson((l$user as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressFilterInput.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dataCheck')) {
      final l$dataCheck = data['dataCheck'];
      result$data['dataCheck'] = l$dataCheck == null
          ? null
          : Input_DataCheckFilterInput.fromJson(
              (l$dataCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('mainContact')) {
      final l$mainContact = data['mainContact'];
      result$data['mainContact'] = l$mainContact == null
          ? null
          : Input_MainContactFilterInput.fromJson(
              (l$mainContact as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestCall')) {
      final l$latestCall = data['latestCall'];
      result$data['latestCall'] = l$latestCall == null
          ? null
          : Input_LatestCallFilterInput.fromJson(
              (l$latestCall as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestConfession')) {
      final l$latestConfession = data['latestConfession'];
      result$data['latestConfession'] = l$latestConfession == null
          ? null
          : Input_LatestConfessionFilterInput.fromJson(
              (l$latestConfession as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestKodas')) {
      final l$latestKodas = data['latestKodas'];
      result$data['latestKodas'] = l$latestKodas == null
          ? null
          : Input_LatestKodasFilterInput.fromJson(
              (l$latestKodas as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestEdit')) {
      final l$latestEdit = data['latestEdit'];
      result$data['latestEdit'] = l$latestEdit == null
          ? null
          : Input_LatestEditFilterInput.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('edits')) {
      final l$edits = data['edits'];
      result$data['edits'] = l$edits == null
          ? null
          : Input_EditFilterInput.fromJson((l$edits as Map<String, dynamic>));
    }
    if (data.containsKey('latestVisit')) {
      final l$latestVisit = data['latestVisit'];
      result$data['latestVisit'] = l$latestVisit == null
          ? null
          : Input_LatestVisitFilterInput.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visits')) {
      final l$visits = data['visits'];
      result$data['visits'] = l$visits == null
          ? null
          : Input_VisitFilterInput.fromJson((l$visits as Map<String, dynamic>));
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = l$contacts == null
          ? null
          : Input_ContactFilterInput.fromJson(
              (l$contacts as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyContacts')) {
      final l$familyContacts = data['familyContacts'];
      result$data['familyContacts'] = l$familyContacts == null
          ? null
          : Input_FamilyContactFilterInput.fromJson(
              (l$familyContacts as Map<String, dynamic>),
            );
    }
    if (data.containsKey('searchablePhones')) {
      final l$searchablePhones = data['searchablePhones'];
      result$data['searchablePhones'] = l$searchablePhones == null
          ? null
          : Input_FamilyContactFilterInput.fromJson(
              (l$searchablePhones as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceRecords')) {
      final l$attendanceRecords = data['attendanceRecords'];
      result$data['attendanceRecords'] = l$attendanceRecords == null
          ? null
          : Input_AttendanceRecordFilterInput.fromJson(
              (l$attendanceRecords as Map<String, dynamic>),
            );
    }
    if (data.containsKey('calls')) {
      final l$calls = data['calls'];
      result$data['calls'] = l$calls == null
          ? null
          : Input_CallFilterInput.fromJson((l$calls as Map<String, dynamic>));
    }
    if (data.containsKey('confessions')) {
      final l$confessions = data['confessions'];
      result$data['confessions'] = l$confessions == null
          ? null
          : Input_ConfessionFilterInput.fromJson(
              (l$confessions as Map<String, dynamic>),
            );
    }
    if (data.containsKey('kodases')) {
      final l$kodases = data['kodases'];
      result$data['kodases'] = l$kodases == null
          ? null
          : Input_KodasFilterInput.fromJson(
              (l$kodases as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classMemberships')) {
      final l$classMemberships = data['classMemberships'];
      result$data['classMemberships'] = l$classMemberships == null
          ? null
          : Input_ClassMembershipFilterInput.fromJson(
              (l$classMemberships as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupMemberships')) {
      final l$groupMemberships = data['groupMemberships'];
      result$data['groupMemberships'] = l$groupMemberships == null
          ? null
          : Input_GroupMembershipFilterInput.fromJson(
              (l$groupMemberships as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceMemberships')) {
      final l$serviceMemberships = data['serviceMemberships'];
      result$data['serviceMemberships'] = l$serviceMemberships == null
          ? null
          : Input_ServiceMembershipFilterInput.fromJson(
              (l$serviceMemberships as Map<String, dynamic>),
            );
    }
    if (data.containsKey('hobbies')) {
      final l$hobbies = data['hobbies'];
      result$data['hobbies'] = l$hobbies == null
          ? null
          : Input_HobbyFilterInput.fromJson(
              (l$hobbies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input_TagFilterInput.fromJson((l$tags as Map<String, dynamic>));
    }
    if (data.containsKey('lastConfessionDay')) {
      final l$lastConfessionDay = data['lastConfessionDay'];
      result$data['lastConfessionDay'] = l$lastConfessionDay == null
          ? null
          : Input_PersonFilterLastConfessionDay.fromJson(
              (l$lastConfessionDay as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastConfessionDayUserName')) {
      final l$lastConfessionDayUserName = data['lastConfessionDayUserName'];
      result$data['lastConfessionDayUserName'] =
          l$lastConfessionDayUserName == null
          ? null
          : Input_PersonFilterLastConfessionDayUserName.fromJson(
              (l$lastConfessionDayUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastKodasDay')) {
      final l$lastKodasDay = data['lastKodasDay'];
      result$data['lastKodasDay'] = l$lastKodasDay == null
          ? null
          : Input_PersonFilterLastKodasDay.fromJson(
              (l$lastKodasDay as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastKodasDayUserName')) {
      final l$lastKodasDayUserName = data['lastKodasDayUserName'];
      result$data['lastKodasDayUserName'] = l$lastKodasDayUserName == null
          ? null
          : Input_PersonFilterLastKodasDayUserName.fromJson(
              (l$lastKodasDayUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastAttendedAt')) {
      final l$lastAttendedAt = data['lastAttendedAt'];
      result$data['lastAttendedAt'] = l$lastAttendedAt == null
          ? null
          : Input_PersonFilterLastAttendedAt.fromJson(
              (l$lastAttendedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisitAt')) {
      final l$lastVisitAt = data['lastVisitAt'];
      result$data['lastVisitAt'] = l$lastVisitAt == null
          ? null
          : Input_PersonFilterLastVisitAt.fromJson(
              (l$lastVisitAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisitAtUserName')) {
      final l$lastVisitAtUserName = data['lastVisitAtUserName'];
      result$data['lastVisitAtUserName'] = l$lastVisitAtUserName == null
          ? null
          : Input_PersonFilterLastVisitAtUserName.fromJson(
              (l$lastVisitAtUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : Input_PersonFilterMainPhone.fromJson(
              (l$mainPhone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_PersonFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = data['lastEditUserName'];
      result$data['lastEditUserName'] = l$lastEditUserName == null
          ? null
          : Input_PersonFilterLastEditUserName.fromJson(
              (l$lastEditUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] = l$lastCall == null
          ? null
          : Input_PersonFilterLastCall.fromJson(
              (l$lastCall as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastCallUserName')) {
      final l$lastCallUserName = data['lastCallUserName'];
      result$data['lastCallUserName'] = l$lastCallUserName == null
          ? null
          : Input_PersonFilterLastCallUserName.fromJson(
              (l$lastCallUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyName')) {
      final l$familyName = data['familyName'];
      result$data['familyName'] = l$familyName == null
          ? null
          : Input_PersonFilterFamilyName.fromJson(
              (l$familyName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = l$userName == null
          ? null
          : Input_PersonFilterUserName.fromJson(
              (l$userName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeName')) {
      final l$storeName = data['storeName'];
      result$data['storeName'] = l$storeName == null
          ? null
          : Input_PersonFilterStoreName.fromJson(
              (l$storeName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('churchName')) {
      final l$churchName = data['churchName'];
      result$data['churchName'] = l$churchName == null
          ? null
          : Input_PersonFilterChurchName.fromJson(
              (l$churchName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurchName')) {
      final l$servingChurchName = data['servingChurchName'];
      result$data['servingChurchName'] = l$servingChurchName == null
          ? null
          : Input_PersonFilterServingChurchName.fromJson(
              (l$servingChurchName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('collegeName')) {
      final l$collegeName = data['collegeName'];
      result$data['collegeName'] = l$collegeName == null
          ? null
          : Input_PersonFilterCollegeName.fromJson(
              (l$collegeName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('schoolName')) {
      final l$schoolName = data['schoolName'];
      result$data['schoolName'] = l$schoolName == null
          ? null
          : Input_PersonFilterSchoolName.fromJson(
              (l$schoolName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('fatherName')) {
      final l$fatherName = data['fatherName'];
      result$data['fatherName'] = l$fatherName == null
          ? null
          : Input_PersonFilterFatherName.fromJson(
              (l$fatherName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('jobName')) {
      final l$jobName = data['jobName'];
      result$data['jobName'] = l$jobName == null
          ? null
          : Input_PersonFilterJobName.fromJson(
              (l$jobName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('qualificationName')) {
      final l$qualificationName = data['qualificationName'];
      result$data['qualificationName'] = l$qualificationName == null
          ? null
          : Input_PersonFilterQualificationName.fromJson(
              (l$qualificationName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stateName')) {
      final l$stateName = data['stateName'];
      result$data['stateName'] = l$stateName == null
          ? null
          : Input_PersonFilterStateName.fromJson(
              (l$stateName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeOrder')) {
      final l$personTypeOrder = data['personTypeOrder'];
      result$data['personTypeOrder'] = l$personTypeOrder == null
          ? null
          : Input_PersonFilterPersonTypeOrder.fromJson(
              (l$personTypeOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('shammasLevelOrder')) {
      final l$shammasLevelOrder = data['shammasLevelOrder'];
      result$data['shammasLevelOrder'] = l$shammasLevelOrder == null
          ? null
          : Input_PersonFilterShammasLevelOrder.fromJson(
              (l$shammasLevelOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearOrder')) {
      final l$studyYearOrder = data['studyYearOrder'];
      result$data['studyYearOrder'] = l$studyYearOrder == null
          ? null
          : Input_PersonFilterStudyYearOrder.fromJson(
              (l$studyYearOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressAreaName')) {
      final l$addressAreaName = data['addressAreaName'];
      result$data['addressAreaName'] = l$addressAreaName == null
          ? null
          : Input_PersonFilterAddressAreaName.fromJson(
              (l$addressAreaName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressStreetName')) {
      final l$addressStreetName = data['addressStreetName'];
      result$data['addressStreetName'] = l$addressStreetName == null
          ? null
          : Input_PersonFilterAddressStreetName.fromJson(
              (l$addressStreetName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressDistrictName')) {
      final l$addressDistrictName = data['addressDistrictName'];
      result$data['addressDistrictName'] = l$addressDistrictName == null
          ? null
          : Input_PersonFilterAddressDistrictName.fromJson(
              (l$addressDistrictName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressFullAddressText')) {
      final l$addressFullAddressText = data['addressFullAddressText'];
      result$data['addressFullAddressText'] = l$addressFullAddressText == null
          ? null
          : Input_PersonFilterAddressFullAddressText.fromJson(
              (l$addressFullAddressText as Map<String, dynamic>),
            );
    }
    if (data.containsKey('birthday')) {
      final l$birthday = data['birthday'];
      result$data['birthday'] = l$birthday == null
          ? null
          : Input_PersonFilterBirthday.fromJson(
              (l$birthday as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_PersonFilterUserCanEdit.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_PersonFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonFilterInput>? get and =>
      (_$data['and'] as List<Input_PersonFilterInput>?);

  List<Input_PersonFilterInput>? get or =>
      (_$data['or'] as List<Input_PersonFilterInput>?);

  List<Input_PersonFilterInput>? get not =>
      (_$data['not'] as List<Input_PersonFilterInput>?);

  Input_PersonFilterId? get id => (_$data['id'] as Input_PersonFilterId?);

  Input_PersonFilterName? get name =>
      (_$data['name'] as Input_PersonFilterName?);

  Input_PersonFilterBirthdate? get birthdate =>
      (_$data['birthdate'] as Input_PersonFilterBirthdate?);

  Input_PersonFilterGender? get gender =>
      (_$data['gender'] as Input_PersonFilterGender?);

  Input_PersonFilterIsShammas? get isShammas =>
      (_$data['isShammas'] as Input_PersonFilterIsShammas?);

  Input_PersonFilterShammasLevelId? get shammasLevelId =>
      (_$data['shammasLevelId'] as Input_PersonFilterShammasLevelId?);

  Input_PersonFilterSchoolId? get schoolId =>
      (_$data['schoolId'] as Input_PersonFilterSchoolId?);

  Input_PersonFilterCollegeId? get collegeId =>
      (_$data['collegeId'] as Input_PersonFilterCollegeId?);

  Input_PersonFilterChurchId? get churchId =>
      (_$data['churchId'] as Input_PersonFilterChurchId?);

  Input_PersonFilterFatherId? get fatherId =>
      (_$data['fatherId'] as Input_PersonFilterFatherId?);

  Input_PersonFilterIsStudent? get isStudent =>
      (_$data['isStudent'] as Input_PersonFilterIsStudent?);

  Input_PersonFilterJobId? get jobId =>
      (_$data['jobId'] as Input_PersonFilterJobId?);

  Input_PersonFilterJobDescription? get jobDescription =>
      (_$data['jobDescription'] as Input_PersonFilterJobDescription?);

  Input_PersonFilterQualificationId? get qualificationId =>
      (_$data['qualificationId'] as Input_PersonFilterQualificationId?);

  Input_PersonFilterPersonTypeId? get personTypeId =>
      (_$data['personTypeId'] as Input_PersonFilterPersonTypeId?);

  Input_PersonFilterStateId? get stateId =>
      (_$data['stateId'] as Input_PersonFilterStateId?);

  Input_PersonFilterIsServant? get isServant =>
      (_$data['isServant'] as Input_PersonFilterIsServant?);

  Input_PersonFilterNotes? get notes =>
      (_$data['notes'] as Input_PersonFilterNotes?);

  Input_PersonFilterUid? get uid => (_$data['uid'] as Input_PersonFilterUid?);

  Input_PersonFilterFamilyId? get familyId =>
      (_$data['familyId'] as Input_PersonFilterFamilyId?);

  Input_PersonFilterStoreId? get storeId =>
      (_$data['storeId'] as Input_PersonFilterStoreId?);

  Input_PersonFilterStudyYearId? get studyYearId =>
      (_$data['studyYearId'] as Input_PersonFilterStudyYearId?);

  Input_PersonFilterColor? get color =>
      (_$data['color'] as Input_PersonFilterColor?);

  Input_PersonFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_PersonFilterPhotoUpdatedAt?);

  Input_PersonFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_PersonFilterBlurhash?);

  Input_PersonFilterWorkStatus? get workStatus =>
      (_$data['workStatus'] as Input_PersonFilterWorkStatus?);

  Input_PersonFilterMartialStatus? get martialStatus =>
      (_$data['martialStatus'] as Input_PersonFilterMartialStatus?);

  Input_PersonFilterServingChurchId? get servingChurchId =>
      (_$data['servingChurchId'] as Input_PersonFilterServingChurchId?);

  Input_PersonFilterServiceType? get serviceType =>
      (_$data['serviceType'] as Input_PersonFilterServiceType?);

  Input_ChurchFilterInput? get church =>
      (_$data['church'] as Input_ChurchFilterInput?);

  Input_CollegeFilterInput? get college =>
      (_$data['college'] as Input_CollegeFilterInput?);

  Input_FamilyFilterInput? get family =>
      (_$data['family'] as Input_FamilyFilterInput?);

  Input_FatherFilterInput? get father =>
      (_$data['father'] as Input_FatherFilterInput?);

  Input_JobFilterInput? get job => (_$data['job'] as Input_JobFilterInput?);

  Input_PersonTypeFilterInput? get personType =>
      (_$data['personType'] as Input_PersonTypeFilterInput?);

  Input_QualificationFilterInput? get qualification =>
      (_$data['qualification'] as Input_QualificationFilterInput?);

  Input_SchoolFilterInput? get school =>
      (_$data['school'] as Input_SchoolFilterInput?);

  Input_ChurchFilterInput? get servingChurch =>
      (_$data['servingChurch'] as Input_ChurchFilterInput?);

  Input_ShammasLevelFilterInput? get shammasLevel =>
      (_$data['shammasLevel'] as Input_ShammasLevelFilterInput?);

  Input_PersonStateFilterInput? get state =>
      (_$data['state'] as Input_PersonStateFilterInput?);

  Input_StoreFilterInput? get store =>
      (_$data['store'] as Input_StoreFilterInput?);

  Input_StudyYearFilterInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearFilterInput?);

  Input_UserFilterInput? get user => (_$data['user'] as Input_UserFilterInput?);

  Input_AddressFilterInput? get address =>
      (_$data['address'] as Input_AddressFilterInput?);

  Input_DataCheckFilterInput? get dataCheck =>
      (_$data['dataCheck'] as Input_DataCheckFilterInput?);

  Input_MainContactFilterInput? get mainContact =>
      (_$data['mainContact'] as Input_MainContactFilterInput?);

  Input_LatestCallFilterInput? get latestCall =>
      (_$data['latestCall'] as Input_LatestCallFilterInput?);

  Input_LatestConfessionFilterInput? get latestConfession =>
      (_$data['latestConfession'] as Input_LatestConfessionFilterInput?);

  Input_LatestKodasFilterInput? get latestKodas =>
      (_$data['latestKodas'] as Input_LatestKodasFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_EditFilterInput? get edits =>
      (_$data['edits'] as Input_EditFilterInput?);

  Input_LatestVisitFilterInput? get latestVisit =>
      (_$data['latestVisit'] as Input_LatestVisitFilterInput?);

  Input_VisitFilterInput? get visits =>
      (_$data['visits'] as Input_VisitFilterInput?);

  Input_ContactFilterInput? get contacts =>
      (_$data['contacts'] as Input_ContactFilterInput?);

  Input_FamilyContactFilterInput? get familyContacts =>
      (_$data['familyContacts'] as Input_FamilyContactFilterInput?);

  Input_FamilyContactFilterInput? get searchablePhones =>
      (_$data['searchablePhones'] as Input_FamilyContactFilterInput?);

  Input_AttendanceRecordFilterInput? get attendanceRecords =>
      (_$data['attendanceRecords'] as Input_AttendanceRecordFilterInput?);

  Input_CallFilterInput? get calls =>
      (_$data['calls'] as Input_CallFilterInput?);

  Input_ConfessionFilterInput? get confessions =>
      (_$data['confessions'] as Input_ConfessionFilterInput?);

  Input_KodasFilterInput? get kodases =>
      (_$data['kodases'] as Input_KodasFilterInput?);

  Input_ClassMembershipFilterInput? get classMemberships =>
      (_$data['classMemberships'] as Input_ClassMembershipFilterInput?);

  Input_GroupMembershipFilterInput? get groupMemberships =>
      (_$data['groupMemberships'] as Input_GroupMembershipFilterInput?);

  Input_ServiceMembershipFilterInput? get serviceMemberships =>
      (_$data['serviceMemberships'] as Input_ServiceMembershipFilterInput?);

  Input_HobbyFilterInput? get hobbies =>
      (_$data['hobbies'] as Input_HobbyFilterInput?);

  Input_TagFilterInput? get tags => (_$data['tags'] as Input_TagFilterInput?);

  Input_PersonFilterLastConfessionDay? get lastConfessionDay =>
      (_$data['lastConfessionDay'] as Input_PersonFilterLastConfessionDay?);

  Input_PersonFilterLastConfessionDayUserName? get lastConfessionDayUserName =>
      (_$data['lastConfessionDayUserName']
          as Input_PersonFilterLastConfessionDayUserName?);

  Input_PersonFilterLastKodasDay? get lastKodasDay =>
      (_$data['lastKodasDay'] as Input_PersonFilterLastKodasDay?);

  Input_PersonFilterLastKodasDayUserName? get lastKodasDayUserName =>
      (_$data['lastKodasDayUserName']
          as Input_PersonFilterLastKodasDayUserName?);

  Input_PersonFilterLastAttendedAt? get lastAttendedAt =>
      (_$data['lastAttendedAt'] as Input_PersonFilterLastAttendedAt?);

  Input_PersonFilterLastVisitAt? get lastVisitAt =>
      (_$data['lastVisitAt'] as Input_PersonFilterLastVisitAt?);

  Input_PersonFilterLastVisitAtUserName? get lastVisitAtUserName =>
      (_$data['lastVisitAtUserName'] as Input_PersonFilterLastVisitAtUserName?);

  Input_PersonFilterMainPhone? get mainPhone =>
      (_$data['mainPhone'] as Input_PersonFilterMainPhone?);

  Input_PersonFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_PersonFilterLastEdit?);

  Input_PersonFilterLastEditUserName? get lastEditUserName =>
      (_$data['lastEditUserName'] as Input_PersonFilterLastEditUserName?);

  Input_PersonFilterLastCall? get lastCall =>
      (_$data['lastCall'] as Input_PersonFilterLastCall?);

  Input_PersonFilterLastCallUserName? get lastCallUserName =>
      (_$data['lastCallUserName'] as Input_PersonFilterLastCallUserName?);

  Input_PersonFilterFamilyName? get familyName =>
      (_$data['familyName'] as Input_PersonFilterFamilyName?);

  Input_PersonFilterUserName? get userName =>
      (_$data['userName'] as Input_PersonFilterUserName?);

  Input_PersonFilterStoreName? get storeName =>
      (_$data['storeName'] as Input_PersonFilterStoreName?);

  Input_PersonFilterChurchName? get churchName =>
      (_$data['churchName'] as Input_PersonFilterChurchName?);

  Input_PersonFilterServingChurchName? get servingChurchName =>
      (_$data['servingChurchName'] as Input_PersonFilterServingChurchName?);

  Input_PersonFilterCollegeName? get collegeName =>
      (_$data['collegeName'] as Input_PersonFilterCollegeName?);

  Input_PersonFilterSchoolName? get schoolName =>
      (_$data['schoolName'] as Input_PersonFilterSchoolName?);

  Input_PersonFilterFatherName? get fatherName =>
      (_$data['fatherName'] as Input_PersonFilterFatherName?);

  Input_PersonFilterJobName? get jobName =>
      (_$data['jobName'] as Input_PersonFilterJobName?);

  Input_PersonFilterQualificationName? get qualificationName =>
      (_$data['qualificationName'] as Input_PersonFilterQualificationName?);

  Input_PersonFilterStateName? get stateName =>
      (_$data['stateName'] as Input_PersonFilterStateName?);

  Input_PersonFilterPersonTypeOrder? get personTypeOrder =>
      (_$data['personTypeOrder'] as Input_PersonFilterPersonTypeOrder?);

  Input_PersonFilterShammasLevelOrder? get shammasLevelOrder =>
      (_$data['shammasLevelOrder'] as Input_PersonFilterShammasLevelOrder?);

  Input_PersonFilterStudyYearOrder? get studyYearOrder =>
      (_$data['studyYearOrder'] as Input_PersonFilterStudyYearOrder?);

  Input_PersonFilterAddressAreaName? get addressAreaName =>
      (_$data['addressAreaName'] as Input_PersonFilterAddressAreaName?);

  Input_PersonFilterAddressStreetName? get addressStreetName =>
      (_$data['addressStreetName'] as Input_PersonFilterAddressStreetName?);

  Input_PersonFilterAddressDistrictName? get addressDistrictName =>
      (_$data['addressDistrictName'] as Input_PersonFilterAddressDistrictName?);

  Input_PersonFilterAddressFullAddressText? get addressFullAddressText =>
      (_$data['addressFullAddressText']
          as Input_PersonFilterAddressFullAddressText?);

  Input_PersonFilterBirthday? get birthday =>
      (_$data['birthday'] as Input_PersonFilterBirthday?);

  Input_PersonFilterUserCanEdit? get userCanEdit =>
      (_$data['userCanEdit'] as Input_PersonFilterUserCanEdit?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate?.toJson();
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender?.toJson();
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas?.toJson();
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId?.toJson();
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId?.toJson();
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId?.toJson();
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId?.toJson();
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent?.toJson();
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId?.toJson();
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription?.toJson();
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId?.toJson();
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId?.toJson();
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus?.toJson();
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus?.toJson();
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId?.toJson();
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('college')) {
      final l$college = college;
      result$data['college'] = l$college?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('father')) {
      final l$father = father;
      result$data['father'] = l$father?.toJson();
    }
    if (_$data.containsKey('job')) {
      final l$job = job;
      result$data['job'] = l$job?.toJson();
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('qualification')) {
      final l$qualification = qualification;
      result$data['qualification'] = l$qualification?.toJson();
    }
    if (_$data.containsKey('school')) {
      final l$school = school;
      result$data['school'] = l$school?.toJson();
    }
    if (_$data.containsKey('servingChurch')) {
      final l$servingChurch = servingChurch;
      result$data['servingChurch'] = l$servingChurch?.toJson();
    }
    if (_$data.containsKey('shammasLevel')) {
      final l$shammasLevel = shammasLevel;
      result$data['shammasLevel'] = l$shammasLevel?.toJson();
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state?.toJson();
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('dataCheck')) {
      final l$dataCheck = dataCheck;
      result$data['dataCheck'] = l$dataCheck?.toJson();
    }
    if (_$data.containsKey('mainContact')) {
      final l$mainContact = mainContact;
      result$data['mainContact'] = l$mainContact?.toJson();
    }
    if (_$data.containsKey('latestCall')) {
      final l$latestCall = latestCall;
      result$data['latestCall'] = l$latestCall?.toJson();
    }
    if (_$data.containsKey('latestConfession')) {
      final l$latestConfession = latestConfession;
      result$data['latestConfession'] = l$latestConfession?.toJson();
    }
    if (_$data.containsKey('latestKodas')) {
      final l$latestKodas = latestKodas;
      result$data['latestKodas'] = l$latestKodas?.toJson();
    }
    if (_$data.containsKey('latestEdit')) {
      final l$latestEdit = latestEdit;
      result$data['latestEdit'] = l$latestEdit?.toJson();
    }
    if (_$data.containsKey('edits')) {
      final l$edits = edits;
      result$data['edits'] = l$edits?.toJson();
    }
    if (_$data.containsKey('latestVisit')) {
      final l$latestVisit = latestVisit;
      result$data['latestVisit'] = l$latestVisit?.toJson();
    }
    if (_$data.containsKey('visits')) {
      final l$visits = visits;
      result$data['visits'] = l$visits?.toJson();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.toJson();
    }
    if (_$data.containsKey('familyContacts')) {
      final l$familyContacts = familyContacts;
      result$data['familyContacts'] = l$familyContacts?.toJson();
    }
    if (_$data.containsKey('searchablePhones')) {
      final l$searchablePhones = searchablePhones;
      result$data['searchablePhones'] = l$searchablePhones?.toJson();
    }
    if (_$data.containsKey('attendanceRecords')) {
      final l$attendanceRecords = attendanceRecords;
      result$data['attendanceRecords'] = l$attendanceRecords?.toJson();
    }
    if (_$data.containsKey('calls')) {
      final l$calls = calls;
      result$data['calls'] = l$calls?.toJson();
    }
    if (_$data.containsKey('confessions')) {
      final l$confessions = confessions;
      result$data['confessions'] = l$confessions?.toJson();
    }
    if (_$data.containsKey('kodases')) {
      final l$kodases = kodases;
      result$data['kodases'] = l$kodases?.toJson();
    }
    if (_$data.containsKey('classMemberships')) {
      final l$classMemberships = classMemberships;
      result$data['classMemberships'] = l$classMemberships?.toJson();
    }
    if (_$data.containsKey('groupMemberships')) {
      final l$groupMemberships = groupMemberships;
      result$data['groupMemberships'] = l$groupMemberships?.toJson();
    }
    if (_$data.containsKey('serviceMemberships')) {
      final l$serviceMemberships = serviceMemberships;
      result$data['serviceMemberships'] = l$serviceMemberships?.toJson();
    }
    if (_$data.containsKey('hobbies')) {
      final l$hobbies = hobbies;
      result$data['hobbies'] = l$hobbies?.toJson();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    if (_$data.containsKey('lastConfessionDay')) {
      final l$lastConfessionDay = lastConfessionDay;
      result$data['lastConfessionDay'] = l$lastConfessionDay?.toJson();
    }
    if (_$data.containsKey('lastConfessionDayUserName')) {
      final l$lastConfessionDayUserName = lastConfessionDayUserName;
      result$data['lastConfessionDayUserName'] = l$lastConfessionDayUserName
          ?.toJson();
    }
    if (_$data.containsKey('lastKodasDay')) {
      final l$lastKodasDay = lastKodasDay;
      result$data['lastKodasDay'] = l$lastKodasDay?.toJson();
    }
    if (_$data.containsKey('lastKodasDayUserName')) {
      final l$lastKodasDayUserName = lastKodasDayUserName;
      result$data['lastKodasDayUserName'] = l$lastKodasDayUserName?.toJson();
    }
    if (_$data.containsKey('lastAttendedAt')) {
      final l$lastAttendedAt = lastAttendedAt;
      result$data['lastAttendedAt'] = l$lastAttendedAt?.toJson();
    }
    if (_$data.containsKey('lastVisitAt')) {
      final l$lastVisitAt = lastVisitAt;
      result$data['lastVisitAt'] = l$lastVisitAt?.toJson();
    }
    if (_$data.containsKey('lastVisitAtUserName')) {
      final l$lastVisitAtUserName = lastVisitAtUserName;
      result$data['lastVisitAtUserName'] = l$lastVisitAtUserName?.toJson();
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = lastEditUserName;
      result$data['lastEditUserName'] = l$lastEditUserName?.toJson();
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] = l$lastCall?.toJson();
    }
    if (_$data.containsKey('lastCallUserName')) {
      final l$lastCallUserName = lastCallUserName;
      result$data['lastCallUserName'] = l$lastCallUserName?.toJson();
    }
    if (_$data.containsKey('familyName')) {
      final l$familyName = familyName;
      result$data['familyName'] = l$familyName?.toJson();
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName?.toJson();
    }
    if (_$data.containsKey('storeName')) {
      final l$storeName = storeName;
      result$data['storeName'] = l$storeName?.toJson();
    }
    if (_$data.containsKey('churchName')) {
      final l$churchName = churchName;
      result$data['churchName'] = l$churchName?.toJson();
    }
    if (_$data.containsKey('servingChurchName')) {
      final l$servingChurchName = servingChurchName;
      result$data['servingChurchName'] = l$servingChurchName?.toJson();
    }
    if (_$data.containsKey('collegeName')) {
      final l$collegeName = collegeName;
      result$data['collegeName'] = l$collegeName?.toJson();
    }
    if (_$data.containsKey('schoolName')) {
      final l$schoolName = schoolName;
      result$data['schoolName'] = l$schoolName?.toJson();
    }
    if (_$data.containsKey('fatherName')) {
      final l$fatherName = fatherName;
      result$data['fatherName'] = l$fatherName?.toJson();
    }
    if (_$data.containsKey('jobName')) {
      final l$jobName = jobName;
      result$data['jobName'] = l$jobName?.toJson();
    }
    if (_$data.containsKey('qualificationName')) {
      final l$qualificationName = qualificationName;
      result$data['qualificationName'] = l$qualificationName?.toJson();
    }
    if (_$data.containsKey('stateName')) {
      final l$stateName = stateName;
      result$data['stateName'] = l$stateName?.toJson();
    }
    if (_$data.containsKey('personTypeOrder')) {
      final l$personTypeOrder = personTypeOrder;
      result$data['personTypeOrder'] = l$personTypeOrder?.toJson();
    }
    if (_$data.containsKey('shammasLevelOrder')) {
      final l$shammasLevelOrder = shammasLevelOrder;
      result$data['shammasLevelOrder'] = l$shammasLevelOrder?.toJson();
    }
    if (_$data.containsKey('studyYearOrder')) {
      final l$studyYearOrder = studyYearOrder;
      result$data['studyYearOrder'] = l$studyYearOrder?.toJson();
    }
    if (_$data.containsKey('addressAreaName')) {
      final l$addressAreaName = addressAreaName;
      result$data['addressAreaName'] = l$addressAreaName?.toJson();
    }
    if (_$data.containsKey('addressStreetName')) {
      final l$addressStreetName = addressStreetName;
      result$data['addressStreetName'] = l$addressStreetName?.toJson();
    }
    if (_$data.containsKey('addressDistrictName')) {
      final l$addressDistrictName = addressDistrictName;
      result$data['addressDistrictName'] = l$addressDistrictName?.toJson();
    }
    if (_$data.containsKey('addressFullAddressText')) {
      final l$addressFullAddressText = addressFullAddressText;
      result$data['addressFullAddressText'] = l$addressFullAddressText
          ?.toJson();
    }
    if (_$data.containsKey('birthday')) {
      final l$birthday = birthday;
      result$data['birthday'] = l$birthday?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonFilterInput<Input_PersonFilterInput> get copyWith =>
      CopyWith_Input_PersonFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (_$data.containsKey('isShammas') !=
        other._$data.containsKey('isShammas')) {
      return false;
    }
    if (l$isShammas != lOther$isShammas) {
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
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
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
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
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
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
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
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
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
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
      return false;
    }
    final l$college = college;
    final lOther$college = other.college;
    if (_$data.containsKey('college') != other._$data.containsKey('college')) {
      return false;
    }
    if (l$college != lOther$college) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$father = father;
    final lOther$father = other.father;
    if (_$data.containsKey('father') != other._$data.containsKey('father')) {
      return false;
    }
    if (l$father != lOther$father) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (_$data.containsKey('job') != other._$data.containsKey('job')) {
      return false;
    }
    if (l$job != lOther$job) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (_$data.containsKey('qualification') !=
        other._$data.containsKey('qualification')) {
      return false;
    }
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (_$data.containsKey('school') != other._$data.containsKey('school')) {
      return false;
    }
    if (l$school != lOther$school) {
      return false;
    }
    final l$servingChurch = servingChurch;
    final lOther$servingChurch = other.servingChurch;
    if (_$data.containsKey('servingChurch') !=
        other._$data.containsKey('servingChurch')) {
      return false;
    }
    if (l$servingChurch != lOther$servingChurch) {
      return false;
    }
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (_$data.containsKey('shammasLevel') !=
        other._$data.containsKey('shammasLevel')) {
      return false;
    }
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
      return false;
    }
    final l$store = store;
    final lOther$store = other.store;
    if (_$data.containsKey('store') != other._$data.containsKey('store')) {
      return false;
    }
    if (l$store != lOther$store) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (_$data.containsKey('dataCheck') !=
        other._$data.containsKey('dataCheck')) {
      return false;
    }
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$mainContact = mainContact;
    final lOther$mainContact = other.mainContact;
    if (_$data.containsKey('mainContact') !=
        other._$data.containsKey('mainContact')) {
      return false;
    }
    if (l$mainContact != lOther$mainContact) {
      return false;
    }
    final l$latestCall = latestCall;
    final lOther$latestCall = other.latestCall;
    if (_$data.containsKey('latestCall') !=
        other._$data.containsKey('latestCall')) {
      return false;
    }
    if (l$latestCall != lOther$latestCall) {
      return false;
    }
    final l$latestConfession = latestConfession;
    final lOther$latestConfession = other.latestConfession;
    if (_$data.containsKey('latestConfession') !=
        other._$data.containsKey('latestConfession')) {
      return false;
    }
    if (l$latestConfession != lOther$latestConfession) {
      return false;
    }
    final l$latestKodas = latestKodas;
    final lOther$latestKodas = other.latestKodas;
    if (_$data.containsKey('latestKodas') !=
        other._$data.containsKey('latestKodas')) {
      return false;
    }
    if (l$latestKodas != lOther$latestKodas) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (_$data.containsKey('latestEdit') !=
        other._$data.containsKey('latestEdit')) {
      return false;
    }
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$edits = edits;
    final lOther$edits = other.edits;
    if (_$data.containsKey('edits') != other._$data.containsKey('edits')) {
      return false;
    }
    if (l$edits != lOther$edits) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (_$data.containsKey('latestVisit') !=
        other._$data.containsKey('latestVisit')) {
      return false;
    }
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$visits = visits;
    final lOther$visits = other.visits;
    if (_$data.containsKey('visits') != other._$data.containsKey('visits')) {
      return false;
    }
    if (l$visits != lOther$visits) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != lOther$contacts) {
      return false;
    }
    final l$familyContacts = familyContacts;
    final lOther$familyContacts = other.familyContacts;
    if (_$data.containsKey('familyContacts') !=
        other._$data.containsKey('familyContacts')) {
      return false;
    }
    if (l$familyContacts != lOther$familyContacts) {
      return false;
    }
    final l$searchablePhones = searchablePhones;
    final lOther$searchablePhones = other.searchablePhones;
    if (_$data.containsKey('searchablePhones') !=
        other._$data.containsKey('searchablePhones')) {
      return false;
    }
    if (l$searchablePhones != lOther$searchablePhones) {
      return false;
    }
    final l$attendanceRecords = attendanceRecords;
    final lOther$attendanceRecords = other.attendanceRecords;
    if (_$data.containsKey('attendanceRecords') !=
        other._$data.containsKey('attendanceRecords')) {
      return false;
    }
    if (l$attendanceRecords != lOther$attendanceRecords) {
      return false;
    }
    final l$calls = calls;
    final lOther$calls = other.calls;
    if (_$data.containsKey('calls') != other._$data.containsKey('calls')) {
      return false;
    }
    if (l$calls != lOther$calls) {
      return false;
    }
    final l$confessions = confessions;
    final lOther$confessions = other.confessions;
    if (_$data.containsKey('confessions') !=
        other._$data.containsKey('confessions')) {
      return false;
    }
    if (l$confessions != lOther$confessions) {
      return false;
    }
    final l$kodases = kodases;
    final lOther$kodases = other.kodases;
    if (_$data.containsKey('kodases') != other._$data.containsKey('kodases')) {
      return false;
    }
    if (l$kodases != lOther$kodases) {
      return false;
    }
    final l$classMemberships = classMemberships;
    final lOther$classMemberships = other.classMemberships;
    if (_$data.containsKey('classMemberships') !=
        other._$data.containsKey('classMemberships')) {
      return false;
    }
    if (l$classMemberships != lOther$classMemberships) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (_$data.containsKey('groupMemberships') !=
        other._$data.containsKey('groupMemberships')) {
      return false;
    }
    if (l$groupMemberships != lOther$groupMemberships) {
      return false;
    }
    final l$serviceMemberships = serviceMemberships;
    final lOther$serviceMemberships = other.serviceMemberships;
    if (_$data.containsKey('serviceMemberships') !=
        other._$data.containsKey('serviceMemberships')) {
      return false;
    }
    if (l$serviceMemberships != lOther$serviceMemberships) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (_$data.containsKey('hobbies') != other._$data.containsKey('hobbies')) {
      return false;
    }
    if (l$hobbies != lOther$hobbies) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != lOther$tags) {
      return false;
    }
    final l$lastConfessionDay = lastConfessionDay;
    final lOther$lastConfessionDay = other.lastConfessionDay;
    if (_$data.containsKey('lastConfessionDay') !=
        other._$data.containsKey('lastConfessionDay')) {
      return false;
    }
    if (l$lastConfessionDay != lOther$lastConfessionDay) {
      return false;
    }
    final l$lastConfessionDayUserName = lastConfessionDayUserName;
    final lOther$lastConfessionDayUserName = other.lastConfessionDayUserName;
    if (_$data.containsKey('lastConfessionDayUserName') !=
        other._$data.containsKey('lastConfessionDayUserName')) {
      return false;
    }
    if (l$lastConfessionDayUserName != lOther$lastConfessionDayUserName) {
      return false;
    }
    final l$lastKodasDay = lastKodasDay;
    final lOther$lastKodasDay = other.lastKodasDay;
    if (_$data.containsKey('lastKodasDay') !=
        other._$data.containsKey('lastKodasDay')) {
      return false;
    }
    if (l$lastKodasDay != lOther$lastKodasDay) {
      return false;
    }
    final l$lastKodasDayUserName = lastKodasDayUserName;
    final lOther$lastKodasDayUserName = other.lastKodasDayUserName;
    if (_$data.containsKey('lastKodasDayUserName') !=
        other._$data.containsKey('lastKodasDayUserName')) {
      return false;
    }
    if (l$lastKodasDayUserName != lOther$lastKodasDayUserName) {
      return false;
    }
    final l$lastAttendedAt = lastAttendedAt;
    final lOther$lastAttendedAt = other.lastAttendedAt;
    if (_$data.containsKey('lastAttendedAt') !=
        other._$data.containsKey('lastAttendedAt')) {
      return false;
    }
    if (l$lastAttendedAt != lOther$lastAttendedAt) {
      return false;
    }
    final l$lastVisitAt = lastVisitAt;
    final lOther$lastVisitAt = other.lastVisitAt;
    if (_$data.containsKey('lastVisitAt') !=
        other._$data.containsKey('lastVisitAt')) {
      return false;
    }
    if (l$lastVisitAt != lOther$lastVisitAt) {
      return false;
    }
    final l$lastVisitAtUserName = lastVisitAtUserName;
    final lOther$lastVisitAtUserName = other.lastVisitAtUserName;
    if (_$data.containsKey('lastVisitAtUserName') !=
        other._$data.containsKey('lastVisitAtUserName')) {
      return false;
    }
    if (l$lastVisitAtUserName != lOther$lastVisitAtUserName) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastEditUserName = lastEditUserName;
    final lOther$lastEditUserName = other.lastEditUserName;
    if (_$data.containsKey('lastEditUserName') !=
        other._$data.containsKey('lastEditUserName')) {
      return false;
    }
    if (l$lastEditUserName != lOther$lastEditUserName) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (_$data.containsKey('lastCall') !=
        other._$data.containsKey('lastCall')) {
      return false;
    }
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastCallUserName = lastCallUserName;
    final lOther$lastCallUserName = other.lastCallUserName;
    if (_$data.containsKey('lastCallUserName') !=
        other._$data.containsKey('lastCallUserName')) {
      return false;
    }
    if (l$lastCallUserName != lOther$lastCallUserName) {
      return false;
    }
    final l$familyName = familyName;
    final lOther$familyName = other.familyName;
    if (_$data.containsKey('familyName') !=
        other._$data.containsKey('familyName')) {
      return false;
    }
    if (l$familyName != lOther$familyName) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$storeName = storeName;
    final lOther$storeName = other.storeName;
    if (_$data.containsKey('storeName') !=
        other._$data.containsKey('storeName')) {
      return false;
    }
    if (l$storeName != lOther$storeName) {
      return false;
    }
    final l$churchName = churchName;
    final lOther$churchName = other.churchName;
    if (_$data.containsKey('churchName') !=
        other._$data.containsKey('churchName')) {
      return false;
    }
    if (l$churchName != lOther$churchName) {
      return false;
    }
    final l$servingChurchName = servingChurchName;
    final lOther$servingChurchName = other.servingChurchName;
    if (_$data.containsKey('servingChurchName') !=
        other._$data.containsKey('servingChurchName')) {
      return false;
    }
    if (l$servingChurchName != lOther$servingChurchName) {
      return false;
    }
    final l$collegeName = collegeName;
    final lOther$collegeName = other.collegeName;
    if (_$data.containsKey('collegeName') !=
        other._$data.containsKey('collegeName')) {
      return false;
    }
    if (l$collegeName != lOther$collegeName) {
      return false;
    }
    final l$schoolName = schoolName;
    final lOther$schoolName = other.schoolName;
    if (_$data.containsKey('schoolName') !=
        other._$data.containsKey('schoolName')) {
      return false;
    }
    if (l$schoolName != lOther$schoolName) {
      return false;
    }
    final l$fatherName = fatherName;
    final lOther$fatherName = other.fatherName;
    if (_$data.containsKey('fatherName') !=
        other._$data.containsKey('fatherName')) {
      return false;
    }
    if (l$fatherName != lOther$fatherName) {
      return false;
    }
    final l$jobName = jobName;
    final lOther$jobName = other.jobName;
    if (_$data.containsKey('jobName') != other._$data.containsKey('jobName')) {
      return false;
    }
    if (l$jobName != lOther$jobName) {
      return false;
    }
    final l$qualificationName = qualificationName;
    final lOther$qualificationName = other.qualificationName;
    if (_$data.containsKey('qualificationName') !=
        other._$data.containsKey('qualificationName')) {
      return false;
    }
    if (l$qualificationName != lOther$qualificationName) {
      return false;
    }
    final l$stateName = stateName;
    final lOther$stateName = other.stateName;
    if (_$data.containsKey('stateName') !=
        other._$data.containsKey('stateName')) {
      return false;
    }
    if (l$stateName != lOther$stateName) {
      return false;
    }
    final l$personTypeOrder = personTypeOrder;
    final lOther$personTypeOrder = other.personTypeOrder;
    if (_$data.containsKey('personTypeOrder') !=
        other._$data.containsKey('personTypeOrder')) {
      return false;
    }
    if (l$personTypeOrder != lOther$personTypeOrder) {
      return false;
    }
    final l$shammasLevelOrder = shammasLevelOrder;
    final lOther$shammasLevelOrder = other.shammasLevelOrder;
    if (_$data.containsKey('shammasLevelOrder') !=
        other._$data.containsKey('shammasLevelOrder')) {
      return false;
    }
    if (l$shammasLevelOrder != lOther$shammasLevelOrder) {
      return false;
    }
    final l$studyYearOrder = studyYearOrder;
    final lOther$studyYearOrder = other.studyYearOrder;
    if (_$data.containsKey('studyYearOrder') !=
        other._$data.containsKey('studyYearOrder')) {
      return false;
    }
    if (l$studyYearOrder != lOther$studyYearOrder) {
      return false;
    }
    final l$addressAreaName = addressAreaName;
    final lOther$addressAreaName = other.addressAreaName;
    if (_$data.containsKey('addressAreaName') !=
        other._$data.containsKey('addressAreaName')) {
      return false;
    }
    if (l$addressAreaName != lOther$addressAreaName) {
      return false;
    }
    final l$addressStreetName = addressStreetName;
    final lOther$addressStreetName = other.addressStreetName;
    if (_$data.containsKey('addressStreetName') !=
        other._$data.containsKey('addressStreetName')) {
      return false;
    }
    if (l$addressStreetName != lOther$addressStreetName) {
      return false;
    }
    final l$addressDistrictName = addressDistrictName;
    final lOther$addressDistrictName = other.addressDistrictName;
    if (_$data.containsKey('addressDistrictName') !=
        other._$data.containsKey('addressDistrictName')) {
      return false;
    }
    if (l$addressDistrictName != lOther$addressDistrictName) {
      return false;
    }
    final l$addressFullAddressText = addressFullAddressText;
    final lOther$addressFullAddressText = other.addressFullAddressText;
    if (_$data.containsKey('addressFullAddressText') !=
        other._$data.containsKey('addressFullAddressText')) {
      return false;
    }
    if (l$addressFullAddressText != lOther$addressFullAddressText) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (_$data.containsKey('birthday') !=
        other._$data.containsKey('birthday')) {
      return false;
    }
    if (l$birthday != lOther$birthday) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$name = name;
    final l$birthdate = birthdate;
    final l$gender = gender;
    final l$isShammas = isShammas;
    final l$shammasLevelId = shammasLevelId;
    final l$schoolId = schoolId;
    final l$collegeId = collegeId;
    final l$churchId = churchId;
    final l$fatherId = fatherId;
    final l$isStudent = isStudent;
    final l$jobId = jobId;
    final l$jobDescription = jobDescription;
    final l$qualificationId = qualificationId;
    final l$personTypeId = personTypeId;
    final l$stateId = stateId;
    final l$isServant = isServant;
    final l$notes = notes;
    final l$uid = uid;
    final l$familyId = familyId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$workStatus = workStatus;
    final l$martialStatus = martialStatus;
    final l$servingChurchId = servingChurchId;
    final l$serviceType = serviceType;
    final l$church = church;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$job = job;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$servingChurch = servingChurch;
    final l$shammasLevel = shammasLevel;
    final l$state = state;
    final l$store = store;
    final l$studyYear = studyYear;
    final l$user = user;
    final l$address = address;
    final l$dataCheck = dataCheck;
    final l$mainContact = mainContact;
    final l$latestCall = latestCall;
    final l$latestConfession = latestConfession;
    final l$latestKodas = latestKodas;
    final l$latestEdit = latestEdit;
    final l$edits = edits;
    final l$latestVisit = latestVisit;
    final l$visits = visits;
    final l$contacts = contacts;
    final l$familyContacts = familyContacts;
    final l$searchablePhones = searchablePhones;
    final l$attendanceRecords = attendanceRecords;
    final l$calls = calls;
    final l$confessions = confessions;
    final l$kodases = kodases;
    final l$classMemberships = classMemberships;
    final l$groupMemberships = groupMemberships;
    final l$serviceMemberships = serviceMemberships;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$lastConfessionDay = lastConfessionDay;
    final l$lastConfessionDayUserName = lastConfessionDayUserName;
    final l$lastKodasDay = lastKodasDay;
    final l$lastKodasDayUserName = lastKodasDayUserName;
    final l$lastAttendedAt = lastAttendedAt;
    final l$lastVisitAt = lastVisitAt;
    final l$lastVisitAtUserName = lastVisitAtUserName;
    final l$mainPhone = mainPhone;
    final l$lastEdit = lastEdit;
    final l$lastEditUserName = lastEditUserName;
    final l$lastCall = lastCall;
    final l$lastCallUserName = lastCallUserName;
    final l$familyName = familyName;
    final l$userName = userName;
    final l$storeName = storeName;
    final l$churchName = churchName;
    final l$servingChurchName = servingChurchName;
    final l$collegeName = collegeName;
    final l$schoolName = schoolName;
    final l$fatherName = fatherName;
    final l$jobName = jobName;
    final l$qualificationName = qualificationName;
    final l$stateName = stateName;
    final l$personTypeOrder = personTypeOrder;
    final l$shammasLevelOrder = shammasLevelOrder;
    final l$studyYearOrder = studyYearOrder;
    final l$addressAreaName = addressAreaName;
    final l$addressStreetName = addressStreetName;
    final l$addressDistrictName = addressDistrictName;
    final l$addressFullAddressText = addressFullAddressText;
    final l$birthday = birthday;
    final l$userCanEdit = userCanEdit;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('college') ? l$college : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('father') ? l$father : const {},
      _$data.containsKey('job') ? l$job : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('qualification') ? l$qualification : const {},
      _$data.containsKey('school') ? l$school : const {},
      _$data.containsKey('servingChurch') ? l$servingChurch : const {},
      _$data.containsKey('shammasLevel') ? l$shammasLevel : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('store') ? l$store : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('dataCheck') ? l$dataCheck : const {},
      _$data.containsKey('mainContact') ? l$mainContact : const {},
      _$data.containsKey('latestCall') ? l$latestCall : const {},
      _$data.containsKey('latestConfession') ? l$latestConfession : const {},
      _$data.containsKey('latestKodas') ? l$latestKodas : const {},
      _$data.containsKey('latestEdit') ? l$latestEdit : const {},
      _$data.containsKey('edits') ? l$edits : const {},
      _$data.containsKey('latestVisit') ? l$latestVisit : const {},
      _$data.containsKey('visits') ? l$visits : const {},
      _$data.containsKey('contacts') ? l$contacts : const {},
      _$data.containsKey('familyContacts') ? l$familyContacts : const {},
      _$data.containsKey('searchablePhones') ? l$searchablePhones : const {},
      _$data.containsKey('attendanceRecords') ? l$attendanceRecords : const {},
      _$data.containsKey('calls') ? l$calls : const {},
      _$data.containsKey('confessions') ? l$confessions : const {},
      _$data.containsKey('kodases') ? l$kodases : const {},
      _$data.containsKey('classMemberships') ? l$classMemberships : const {},
      _$data.containsKey('groupMemberships') ? l$groupMemberships : const {},
      _$data.containsKey('serviceMemberships')
          ? l$serviceMemberships
          : const {},
      _$data.containsKey('hobbies') ? l$hobbies : const {},
      _$data.containsKey('tags') ? l$tags : const {},
      _$data.containsKey('lastConfessionDay') ? l$lastConfessionDay : const {},
      _$data.containsKey('lastConfessionDayUserName')
          ? l$lastConfessionDayUserName
          : const {},
      _$data.containsKey('lastKodasDay') ? l$lastKodasDay : const {},
      _$data.containsKey('lastKodasDayUserName')
          ? l$lastKodasDayUserName
          : const {},
      _$data.containsKey('lastAttendedAt') ? l$lastAttendedAt : const {},
      _$data.containsKey('lastVisitAt') ? l$lastVisitAt : const {},
      _$data.containsKey('lastVisitAtUserName')
          ? l$lastVisitAtUserName
          : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastEditUserName') ? l$lastEditUserName : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastCallUserName') ? l$lastCallUserName : const {},
      _$data.containsKey('familyName') ? l$familyName : const {},
      _$data.containsKey('userName') ? l$userName : const {},
      _$data.containsKey('storeName') ? l$storeName : const {},
      _$data.containsKey('churchName') ? l$churchName : const {},
      _$data.containsKey('servingChurchName') ? l$servingChurchName : const {},
      _$data.containsKey('collegeName') ? l$collegeName : const {},
      _$data.containsKey('schoolName') ? l$schoolName : const {},
      _$data.containsKey('fatherName') ? l$fatherName : const {},
      _$data.containsKey('jobName') ? l$jobName : const {},
      _$data.containsKey('qualificationName') ? l$qualificationName : const {},
      _$data.containsKey('stateName') ? l$stateName : const {},
      _$data.containsKey('personTypeOrder') ? l$personTypeOrder : const {},
      _$data.containsKey('shammasLevelOrder') ? l$shammasLevelOrder : const {},
      _$data.containsKey('studyYearOrder') ? l$studyYearOrder : const {},
      _$data.containsKey('addressAreaName') ? l$addressAreaName : const {},
      _$data.containsKey('addressStreetName') ? l$addressStreetName : const {},
      _$data.containsKey('addressDistrictName')
          ? l$addressDistrictName
          : const {},
      _$data.containsKey('addressFullAddressText')
          ? l$addressFullAddressText
          : const {},
      _$data.containsKey('birthday') ? l$birthday : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}
