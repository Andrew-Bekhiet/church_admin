// Part 46 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsHobbiesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesStreamCursorInput(
    Input_PersonsHobbiesStreamCursorInput instance,
    TRes Function(Input_PersonsHobbiesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesStreamCursorInput;

  factory CopyWith_Input_PersonsHobbiesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorInput;

  TRes call({
    Input_PersonsHobbiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsHobbiesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesStreamCursorInput _instance;

  final TRes Function(Input_PersonsHobbiesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonsHobbiesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonsHobbiesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsHobbiesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsHobbiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsHobbiesStreamCursorValueInput.stub(_res);
}

class Input_PersonsHobbiesStreamCursorValueInput {
  factory Input_PersonsHobbiesStreamCursorValueInput({
    UuidValue? hobbyId,
    UuidValue? personId,
  }) => Input_PersonsHobbiesStreamCursorValueInput._({
    if (hobbyId != null) r'hobbyId': hobbyId,
    if (personId != null) r'personId': personId,
  });

  Input_PersonsHobbiesStreamCursorValueInput._(this._$data);

  factory Input_PersonsHobbiesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : stringToUuid(l$hobbyId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_PersonsHobbiesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get hobbyId => (_$data['hobbyId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : uuidToString(l$hobbyId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<
    Input_PersonsHobbiesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonsHobbiesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
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
    final l$hobbyId = hobbyId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesStreamCursorValueInput(
    Input_PersonsHobbiesStreamCursorValueInput instance,
    TRes Function(Input_PersonsHobbiesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesStreamCursorValueInput;

  factory CopyWith_Input_PersonsHobbiesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorValueInput;

  TRes call({UuidValue? hobbyId, UuidValue? personId});
}

class _CopyWithImpl_Input_PersonsHobbiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsHobbiesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? hobbyId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_PersonsHobbiesStreamCursorValueInput._({
          ..._instance._$data,
          if (hobbyId != _undefined) 'hobbyId': (hobbyId as UuidValue?),
          if (personId != _undefined) 'personId': (personId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? hobbyId, UuidValue? personId}) => _res;
}

class Input_PersonsHobbiesUpdates {
  factory Input_PersonsHobbiesUpdates({
    required Input_PersonsHobbiesBoolExp where,
  }) => Input_PersonsHobbiesUpdates._({r'where': where});

  Input_PersonsHobbiesUpdates._(this._$data);

  factory Input_PersonsHobbiesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input_PersonsHobbiesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonsHobbiesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsHobbiesBoolExp get where =>
      (_$data['where'] as Input_PersonsHobbiesBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesUpdates<Input_PersonsHobbiesUpdates>
  get copyWith => CopyWith_Input_PersonsHobbiesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesUpdates<TRes> {
  factory CopyWith_Input_PersonsHobbiesUpdates(
    Input_PersonsHobbiesUpdates instance,
    TRes Function(Input_PersonsHobbiesUpdates) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesUpdates;

  factory CopyWith_Input_PersonsHobbiesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesUpdates;

  TRes call({Input_PersonsHobbiesBoolExp? where});
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsHobbiesUpdates<TRes>
    implements CopyWith_Input_PersonsHobbiesUpdates<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesUpdates(this._instance, this._then);

  final Input_PersonsHobbiesUpdates _instance;

  final TRes Function(Input_PersonsHobbiesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(
    Input_PersonsHobbiesUpdates._({
      ..._instance._$data,
      if (where != _undefined && where != null)
        'where': (where as Input_PersonsHobbiesBoolExp),
    }),
  );

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonsHobbiesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesUpdates<TRes>
    implements CopyWith_Input_PersonsHobbiesUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesUpdates(this._res);

  TRes _res;

  call({Input_PersonsHobbiesBoolExp? where}) => _res;

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);
}

class Input_PersonsIncInput {
  factory Input_PersonsIncInput({
    int? color,
    int? nationalId,
    int? studyYearId,
  }) => Input_PersonsIncInput._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsIncInput._(this._$data);

  factory Input_PersonsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = (l$nationalId as int?);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    return Input_PersonsIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  int? get nationalId => (_$data['nationalId'] as int?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId;
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    return result$data;
  }

  CopyWith_Input_PersonsIncInput<Input_PersonsIncInput> get copyWith =>
      CopyWith_Input_PersonsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsIncInput || runtimeType != other.runtimeType) {
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsIncInput<TRes> {
  factory CopyWith_Input_PersonsIncInput(
    Input_PersonsIncInput instance,
    TRes Function(Input_PersonsIncInput) then,
  ) = _CopyWithImpl_Input_PersonsIncInput;

  factory CopyWith_Input_PersonsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsIncInput;

  TRes call({int? color, int? nationalId, int? studyYearId});
}

class _CopyWithImpl_Input_PersonsIncInput<TRes>
    implements CopyWith_Input_PersonsIncInput<TRes> {
  _CopyWithImpl_Input_PersonsIncInput(this._instance, this._then);

  final Input_PersonsIncInput _instance;

  final TRes Function(Input_PersonsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (nationalId != _undefined) 'nationalId': (nationalId as int?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsIncInput<TRes>
    implements CopyWith_Input_PersonsIncInput<TRes> {
  _CopyWithStubImpl_Input_PersonsIncInput(this._res);

  TRes _res;

  call({int? color, int? nationalId, int? studyYearId}) => _res;
}

class Input_PersonsInsertInput {
  factory Input_PersonsInsertInput({
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
    Input_ContactsArrRelInsertInput? contacts,
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
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
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
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
    String? workStatus,
  }) => Input_PersonsInsertInput._({
    if (address != null) r'address': address,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (birthdate != null) r'birthdate': birthdate,
    if (callHistory != null) r'callHistory': callHistory,
    if (church != null) r'church': church,
    if (churchId != null) r'churchId': churchId,
    if (college != null) r'college': college,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (contacts != null) r'contacts': contacts,
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (father != null) r'father': father,
    if (fatherId != null) r'fatherId': fatherId,
    if (gender != null) r'gender': gender,
    if (groups != null) r'groups': groups,
    if (hobbies != null) r'hobbies': hobbies,
    if (isServant != null) r'isServant': isServant,
    if (isShammas != null) r'isShammas': isShammas,
    if (isStudent != null) r'isStudent': isStudent,
    if (job != null) r'job': job,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (personType != null) r'personType': personType,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (qualification != null) r'qualification': qualification,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (school != null) r'school': school,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (services != null) r'services': services,
    if (servingChurch != null) r'servingChurch': servingChurch,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (state != null) r'state': state,
    if (stateId != null) r'stateId': stateId,
    if (store != null) r'store': store,
    if (storeId != null) r'storeId': storeId,
    if (studyYear != null) r'studyYear': studyYear,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (tags != null) r'tags': tags,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
    if (visitHistory != null) r'visitHistory': visitHistory,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsInsertInput._(this._$data);

  factory Input_PersonsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesObjRelInsertInput.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateFromString(l$birthdate);
    }
    if (data.containsKey('callHistory')) {
      final l$callHistory = data['callHistory'];
      result$data['callHistory'] = l$callHistory == null
          ? null
          : Input_HistoryCallHistoryArrRelInsertInput.fromJson(
              (l$callHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesObjRelInsertInput.fromJson(
              (l$church as Map<String, dynamic>),
            );
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : stringToUuid(l$churchId);
    }
    if (data.containsKey('college')) {
      final l$college = data['college'];
      result$data['college'] = l$college == null
          ? null
          : Input_CollegesObjRelInsertInput.fromJson(
              (l$college as Map<String, dynamic>),
            );
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : stringToUuid(l$collegeId);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryArrRelInsertInput.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = l$contacts == null
          ? null
          : Input_ContactsArrRelInsertInput.fromJson(
              (l$contacts as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('father')) {
      final l$father = data['father'];
      result$data['father'] = l$father == null
          ? null
          : Input_FathersObjRelInsertInput.fromJson(
              (l$father as Map<String, dynamic>),
            );
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : stringToUuid(l$fatherId);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input_PersonsGroupsArrRelInsertInput.fromJson(
              (l$groups as Map<String, dynamic>),
            );
    }
    if (data.containsKey('hobbies')) {
      final l$hobbies = data['hobbies'];
      result$data['hobbies'] = l$hobbies == null
          ? null
          : Input_PersonsHobbiesArrRelInsertInput.fromJson(
              (l$hobbies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = (l$isServant as bool?);
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = (l$isShammas as bool?);
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = (l$isStudent as bool?);
    }
    if (data.containsKey('job')) {
      final l$job = data['job'];
      result$data['job'] = l$job == null
          ? null
          : Input_JobsObjRelInsertInput.fromJson(
              (l$job as Map<String, dynamic>),
            );
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null ? null : stringToUuid(l$jobId);
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryArrRelInsertInput.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = (l$martialStatus as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = (l$nationalId as int?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesObjRelInsertInput.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId);
    }
    if (data.containsKey('qualification')) {
      final l$qualification = data['qualification'];
      result$data['qualification'] = l$qualification == null
          ? null
          : Input_QualificationsObjRelInsertInput.fromJson(
              (l$qualification as Map<String, dynamic>),
            );
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : stringToUuid(l$qualificationId);
    }
    if (data.containsKey('school')) {
      final l$school = data['school'];
      result$data['school'] = l$school == null
          ? null
          : Input_SchoolsObjRelInsertInput.fromJson(
              (l$school as Map<String, dynamic>),
            );
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : stringToUuid(l$schoolId);
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = (l$serviceType as String?);
    }
    if (data.containsKey('services')) {
      final l$services = data['services'];
      result$data['services'] = l$services == null
          ? null
          : Input_PersonsServicesArrRelInsertInput.fromJson(
              (l$services as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurch')) {
      final l$servingChurch = data['servingChurch'];
      result$data['servingChurch'] = l$servingChurch == null
          ? null
          : Input_ChurchesObjRelInsertInput.fromJson(
              (l$servingChurch as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : stringToUuid(l$servingChurchId);
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : stringToUuid(l$shammasLevelId);
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = l$state == null
          ? null
          : Input_PersonStatesObjRelInsertInput.fromJson(
              (l$state as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : stringToUuid(l$stateId);
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoresObjRelInsertInput.fromJson(
              (l$store as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : stringToUuid(l$storeId);
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input_PersonsTagsArrRelInsertInput.fromJson(
              (l$tags as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visitHistory')) {
      final l$visitHistory = data['visitHistory'];
      result$data['visitHistory'] = l$visitHistory == null
          ? null
          : Input_HistoryVisitHistoryArrRelInsertInput.fromJson(
              (l$visitHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = (l$workStatus as String?);
    }
    return Input_PersonsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesObjRelInsertInput? get address =>
      (_$data['address'] as Input_AddressesObjRelInsertInput?);

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  DateTime? get birthdate => (_$data['birthdate'] as DateTime?);

  Input_HistoryCallHistoryArrRelInsertInput? get callHistory =>
      (_$data['callHistory'] as Input_HistoryCallHistoryArrRelInsertInput?);

  Input_ChurchesObjRelInsertInput? get church =>
      (_$data['church'] as Input_ChurchesObjRelInsertInput?);

  UuidValue? get churchId => (_$data['churchId'] as UuidValue?);

  Input_CollegesObjRelInsertInput? get college =>
      (_$data['college'] as Input_CollegesObjRelInsertInput?);

  UuidValue? get collegeId => (_$data['collegeId'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  Input_HistoryConfessionHistoryArrRelInsertInput? get confessionHistory =>
      (_$data['confessionHistory']
          as Input_HistoryConfessionHistoryArrRelInsertInput?);

  Input_ContactsArrRelInsertInput? get contacts =>
      (_$data['contacts'] as Input_ContactsArrRelInsertInput?);

  Input_FamiliesObjRelInsertInput? get family =>
      (_$data['family'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  Input_FathersObjRelInsertInput? get father =>
      (_$data['father'] as Input_FathersObjRelInsertInput?);

  UuidValue? get fatherId => (_$data['fatherId'] as UuidValue?);

  bool? get gender => (_$data['gender'] as bool?);

  Input_PersonsGroupsArrRelInsertInput? get groups =>
      (_$data['groups'] as Input_PersonsGroupsArrRelInsertInput?);

  Input_PersonsHobbiesArrRelInsertInput? get hobbies =>
      (_$data['hobbies'] as Input_PersonsHobbiesArrRelInsertInput?);

  bool? get isServant => (_$data['isServant'] as bool?);

  bool? get isShammas => (_$data['isShammas'] as bool?);

  bool? get isStudent => (_$data['isStudent'] as bool?);

  Input_JobsObjRelInsertInput? get job =>
      (_$data['job'] as Input_JobsObjRelInsertInput?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  UuidValue? get jobId => (_$data['jobId'] as UuidValue?);

  Input_HistoryKodasHistoryArrRelInsertInput? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryArrRelInsertInput?);

  String? get martialStatus => (_$data['martialStatus'] as String?);

  String? get name => (_$data['name'] as String?);

  int? get nationalId => (_$data['nationalId'] as int?);

  String? get notes => (_$data['notes'] as String?);

  Input_PersonTypesObjRelInsertInput? get personType =>
      (_$data['personType'] as Input_PersonTypesObjRelInsertInput?);

  UuidValue? get personTypeId => (_$data['personTypeId'] as UuidValue?);

  Input_QualificationsObjRelInsertInput? get qualification =>
      (_$data['qualification'] as Input_QualificationsObjRelInsertInput?);

  UuidValue? get qualificationId => (_$data['qualificationId'] as UuidValue?);

  Input_SchoolsObjRelInsertInput? get school =>
      (_$data['school'] as Input_SchoolsObjRelInsertInput?);

  UuidValue? get schoolId => (_$data['schoolId'] as UuidValue?);

  String? get serviceType => (_$data['serviceType'] as String?);

  Input_PersonsServicesArrRelInsertInput? get services =>
      (_$data['services'] as Input_PersonsServicesArrRelInsertInput?);

  Input_ChurchesObjRelInsertInput? get servingChurch =>
      (_$data['servingChurch'] as Input_ChurchesObjRelInsertInput?);

  UuidValue? get servingChurchId => (_$data['servingChurchId'] as UuidValue?);

  UuidValue? get shammasLevelId => (_$data['shammasLevelId'] as UuidValue?);

  Input_PersonStatesObjRelInsertInput? get state =>
      (_$data['state'] as Input_PersonStatesObjRelInsertInput?);

  UuidValue? get stateId => (_$data['stateId'] as UuidValue?);

  Input_StoresObjRelInsertInput? get store =>
      (_$data['store'] as Input_StoresObjRelInsertInput?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  Input_StudyYearsObjRelInsertInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsObjRelInsertInput?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  Input_PersonsTagsArrRelInsertInput? get tags =>
      (_$data['tags'] as Input_PersonsTagsArrRelInsertInput?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Input_AuthUsersDataObjRelInsertInput? get user =>
      (_$data['user'] as Input_AuthUsersDataObjRelInsertInput?);

  Input_HistoryVisitHistoryArrRelInsertInput? get visitHistory =>
      (_$data['visitHistory'] as Input_HistoryVisitHistoryArrRelInsertInput?);

  String? get workStatus => (_$data['workStatus'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateToString(l$birthdate);
    }
    if (_$data.containsKey('callHistory')) {
      final l$callHistory = callHistory;
      result$data['callHistory'] = l$callHistory?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : uuidToString(l$churchId);
    }
    if (_$data.containsKey('college')) {
      final l$college = college;
      result$data['college'] = l$college?.toJson();
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : uuidToString(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('father')) {
      final l$father = father;
      result$data['father'] = l$father?.toJson();
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : uuidToString(l$fatherId);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('hobbies')) {
      final l$hobbies = hobbies;
      result$data['hobbies'] = l$hobbies?.toJson();
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant;
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas;
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent;
    }
    if (_$data.containsKey('job')) {
      final l$job = job;
      result$data['job'] = l$job?.toJson();
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null ? null : uuidToString(l$jobId);
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : uuidToString(l$personTypeId);
    }
    if (_$data.containsKey('qualification')) {
      final l$qualification = qualification;
      result$data['qualification'] = l$qualification?.toJson();
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : uuidToString(l$qualificationId);
    }
    if (_$data.containsKey('school')) {
      final l$school = school;
      result$data['school'] = l$school?.toJson();
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : uuidToString(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType;
    }
    if (_$data.containsKey('services')) {
      final l$services = services;
      result$data['services'] = l$services?.toJson();
    }
    if (_$data.containsKey('servingChurch')) {
      final l$servingChurch = servingChurch;
      result$data['servingChurch'] = l$servingChurch?.toJson();
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : uuidToString(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : uuidToString(l$shammasLevelId);
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state?.toJson();
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : uuidToString(l$stateId);
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : uuidToString(l$storeId);
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('visitHistory')) {
      final l$visitHistory = visitHistory;
      result$data['visitHistory'] = l$visitHistory?.toJson();
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus;
    }
    return result$data;
  }

  CopyWith_Input_PersonsInsertInput<Input_PersonsInsertInput> get copyWith =>
      CopyWith_Input_PersonsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (_$data.containsKey('attendanceHistory') !=
        other._$data.containsKey('attendanceHistory')) {
      return false;
    }
    if (l$attendanceHistory != lOther$attendanceHistory) {
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
    final l$callHistory = callHistory;
    final lOther$callHistory = other.callHistory;
    if (_$data.containsKey('callHistory') !=
        other._$data.containsKey('callHistory')) {
      return false;
    }
    if (l$callHistory != lOther$callHistory) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
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
    final l$father = father;
    final lOther$father = other.father;
    if (_$data.containsKey('father') != other._$data.containsKey('father')) {
      return false;
    }
    if (l$father != lOther$father) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != lOther$groups) {
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
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
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
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
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
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
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
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
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (_$data.containsKey('qualification') !=
        other._$data.containsKey('qualification')) {
      return false;
    }
    if (l$qualification != lOther$qualification) {
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
    final l$school = school;
    final lOther$school = other.school;
    if (_$data.containsKey('school') != other._$data.containsKey('school')) {
      return false;
    }
    if (l$school != lOther$school) {
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
    final l$services = services;
    final lOther$services = other.services;
    if (_$data.containsKey('services') !=
        other._$data.containsKey('services')) {
      return false;
    }
    if (l$services != lOther$services) {
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
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
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
    final l$store = store;
    final lOther$store = other.store;
    if (_$data.containsKey('store') != other._$data.containsKey('store')) {
      return false;
    }
    if (l$store != lOther$store) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
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
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != lOther$tags) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$visitHistory = visitHistory;
    final lOther$visitHistory = other.visitHistory;
    if (_$data.containsKey('visitHistory') !=
        other._$data.containsKey('visitHistory')) {
      return false;
    }
    if (l$visitHistory != lOther$visitHistory) {
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
    final l$address = address;
    final l$attendanceHistory = attendanceHistory;
    final l$birthdate = birthdate;
    final l$callHistory = callHistory;
    final l$church = church;
    final l$churchId = churchId;
    final l$college = college;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$confessionHistory = confessionHistory;
    final l$contacts = contacts;
    final l$family = family;
    final l$familyId = familyId;
    final l$father = father;
    final l$fatherId = fatherId;
    final l$gender = gender;
    final l$groups = groups;
    final l$hobbies = hobbies;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$kodasHistory = kodasHistory;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$qualification = qualification;
    final l$qualificationId = qualificationId;
    final l$school = school;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$services = services;
    final l$servingChurch = servingChurch;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevelId = shammasLevelId;
    final l$state = state;
    final l$stateId = stateId;
    final l$store = store;
    final l$storeId = storeId;
    final l$studyYear = studyYear;
    final l$studyYearId = studyYearId;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    final l$visitHistory = visitHistory;
    final l$workStatus = workStatus;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('callHistory') ? l$callHistory : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('college') ? l$college : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('contacts') ? l$contacts : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('father') ? l$father : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('hobbies') ? l$hobbies : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('job') ? l$job : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('qualification') ? l$qualification : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('school') ? l$school : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('services') ? l$services : const {},
      _$data.containsKey('servingChurch') ? l$servingChurch : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('store') ? l$store : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('tags') ? l$tags : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('visitHistory') ? l$visitHistory : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsInsertInput<TRes> {
  factory CopyWith_Input_PersonsInsertInput(
    Input_PersonsInsertInput instance,
    TRes Function(Input_PersonsInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsInsertInput;

  factory CopyWith_Input_PersonsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsInsertInput;

  TRes call({
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
    Input_ContactsArrRelInsertInput? contacts,
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
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
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
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
    String? workStatus,
  });
  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address;
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory;
  CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> get callHistory;
  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church;
  CopyWith_Input_CollegesObjRelInsertInput<TRes> get college;
  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory;
  CopyWith_Input_ContactsArrRelInsertInput<TRes> get contacts;
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family;
  CopyWith_Input_FathersObjRelInsertInput<TRes> get father;
  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get groups;
  CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> get hobbies;
  CopyWith_Input_JobsObjRelInsertInput<TRes> get job;
  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory;
  CopyWith_Input_PersonTypesObjRelInsertInput<TRes> get personType;
  CopyWith_Input_QualificationsObjRelInsertInput<TRes> get qualification;
  CopyWith_Input_SchoolsObjRelInsertInput<TRes> get school;
  CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> get services;
  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get servingChurch;
  CopyWith_Input_PersonStatesObjRelInsertInput<TRes> get state;
  CopyWith_Input_StoresObjRelInsertInput<TRes> get store;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear;
  CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> get tags;
  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user;
  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory;
}

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
    Object? contacts = _undefined,
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
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
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
    Object? uid = _undefined,
    Object? user = _undefined,
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
      if (contacts != _undefined)
        'contacts': (contacts as Input_ContactsArrRelInsertInput?),
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
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as String?),
      if (name != _undefined) 'name': (name as String?),
      if (nationalId != _undefined) 'nationalId': (nationalId as int?),
      if (notes != _undefined) 'notes': (notes as String?),
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
      if (uid != _undefined) 'uid': (uid as UuidValue?),
      if (user != _undefined)
        'user': (user as Input_AuthUsersDataObjRelInsertInput?),
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

  CopyWith_Input_ContactsArrRelInsertInput<TRes> get contacts {
    final local$contacts = _instance.contacts;
    return local$contacts == null
        ? CopyWith_Input_ContactsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ContactsArrRelInsertInput(
            local$contacts,
            (e) => call(contacts: e),
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

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataObjRelInsertInput(
            local$user,
            (e) => call(user: e),
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
    Input_ContactsArrRelInsertInput? contacts,
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
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
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
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
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

  CopyWith_Input_ContactsArrRelInsertInput<TRes> get contacts =>
      CopyWith_Input_ContactsArrRelInsertInput.stub(_res);

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

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user =>
      CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_res);

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory =>
      CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(_res);
}

class Input_PersonsMainContactsBoolExp {
  factory Input_PersonsMainContactsBoolExp({
    List<Input_PersonsMainContactsBoolExp>? $_and,
    Input_PersonsMainContactsBoolExp? $_not,
    List<Input_PersonsMainContactsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? label,
    Input_UuidComparisonExp? personId,
    Input_StringComparisonExp? phone,
  }) => Input_PersonsMainContactsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (phone != null) r'phone': phone,
  });

  Input_PersonsMainContactsBoolExp._(this._$data);

  factory Input_PersonsMainContactsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsMainContactsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsMainContactsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsMainContactsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$label as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$phone as Map<String, dynamic>),
            );
    }
    return Input_PersonsMainContactsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsMainContactsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsMainContactsBoolExp>?);

  Input_PersonsMainContactsBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsMainContactsBoolExp?);

  List<Input_PersonsMainContactsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsMainContactsBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get label =>
      (_$data['label'] as Input_StringComparisonExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get phone =>
      (_$data['phone'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsMainContactsBoolExp<Input_PersonsMainContactsBoolExp>
  get copyWith => CopyWith_Input_PersonsMainContactsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMainContactsBoolExp ||
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
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
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$label = label;
    final l$personId = personId;
    final l$phone = phone;
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}
