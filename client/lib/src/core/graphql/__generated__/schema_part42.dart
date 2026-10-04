// Part 42 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsAppendInput<TRes> {
  factory CopyWith_Input_PersonsAppendInput(
    Input_PersonsAppendInput instance,
    TRes Function(Input_PersonsAppendInput) then,
  ) = _CopyWithImpl_Input_PersonsAppendInput;

  factory CopyWith_Input_PersonsAppendInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsAppendInput;

  TRes call({Json? otherPhones});
}

class _CopyWithImpl_Input_PersonsAppendInput<TRes>
    implements CopyWith_Input_PersonsAppendInput<TRes> {
  _CopyWithImpl_Input_PersonsAppendInput(this._instance, this._then);

  final Input_PersonsAppendInput _instance;

  final TRes Function(Input_PersonsAppendInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? otherPhones = _undefined}) => _then(
    Input_PersonsAppendInput._({
      ..._instance._$data,
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsAppendInput<TRes>
    implements CopyWith_Input_PersonsAppendInput<TRes> {
  _CopyWithStubImpl_Input_PersonsAppendInput(this._res);

  TRes _res;

  call({Json? otherPhones}) => _res;
}

class Input_PersonsArrRelInsertInput {
  factory Input_PersonsArrRelInsertInput({
    required List<Input_PersonsInsertInput> data,
    Input_PersonsOnConflict? onConflict,
  }) => Input_PersonsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsArrRelInsertInput._(this._$data);

  factory Input_PersonsArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_PersonsInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsInsertInput> get data =>
      (_$data['data'] as List<Input_PersonsInsertInput>);

  Input_PersonsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsOnConflict?);

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

  CopyWith_Input_PersonsArrRelInsertInput<Input_PersonsArrRelInsertInput>
  get copyWith => CopyWith_Input_PersonsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsArrRelInsertInput ||
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

abstract class CopyWith_Input_PersonsArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsArrRelInsertInput(
    Input_PersonsArrRelInsertInput instance,
    TRes Function(Input_PersonsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsArrRelInsertInput;

  factory CopyWith_Input_PersonsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsArrRelInsertInput;

  TRes call({
    List<Input_PersonsInsertInput>? data,
    Input_PersonsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_PersonsInsertInput> Function(
      Iterable<CopyWith_Input_PersonsInsertInput<Input_PersonsInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_PersonsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsArrRelInsertInput(this._instance, this._then);

  final Input_PersonsArrRelInsertInput _instance;

  final TRes Function(Input_PersonsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_PersonsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_PersonsInsertInput> Function(
      Iterable<CopyWith_Input_PersonsInsertInput<Input_PersonsInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_PersonsInsertInput(e, (i) => i)),
    ).toList(),
  );

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

class _CopyWithStubImpl_Input_PersonsArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsInsertInput>? data,
    Input_PersonsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsOnConflict.stub(_res);
}

class Input_PersonsAvgOrderBy {
  factory Input_PersonsAvgOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsAvgOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsAvgOrderBy._(this._$data);

  factory Input_PersonsAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsAvgOrderBy<Input_PersonsAvgOrderBy> get copyWith =>
      CopyWith_Input_PersonsAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsAvgOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_PersonsAvgOrderBy<TRes> {
  factory CopyWith_Input_PersonsAvgOrderBy(
    Input_PersonsAvgOrderBy instance,
    TRes Function(Input_PersonsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsAvgOrderBy;

  factory CopyWith_Input_PersonsAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsAvgOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsAvgOrderBy<TRes>
    implements CopyWith_Input_PersonsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsAvgOrderBy(this._instance, this._then);

  final Input_PersonsAvgOrderBy _instance;

  final TRes Function(Input_PersonsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsAvgOrderBy<TRes>
    implements CopyWith_Input_PersonsAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsAvgOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsBoolExp {
  factory Input_PersonsBoolExp({
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
  }) => Input_PersonsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (address != null) r'address': address,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (birthdate != null) r'birthdate': birthdate,
    if (birthday != null) r'birthday': birthday,
    if (blurhash != null) r'blurhash': blurhash,
    if (callHistory != null) r'callHistory': callHistory,
    if (callHistoryAggregate != null)
      r'callHistoryAggregate': callHistoryAggregate,
    if (church != null) r'church': church,
    if (churchId != null) r'churchId': churchId,
    if (classes != null) r'classes': classes,
    if (college != null) r'college': college,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (confessionHistoryAggregate != null)
      r'confessionHistoryAggregate': confessionHistoryAggregate,
    if (editHistory != null) r'editHistory': editHistory,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (father != null) r'father': father,
    if (fatherId != null) r'fatherId': fatherId,
    if (gender != null) r'gender': gender,
    if (groups != null) r'groups': groups,
    if (hobbies != null) r'hobbies': hobbies,
    if (id != null) r'id': id,
    if (isServant != null) r'isServant': isServant,
    if (isShammas != null) r'isShammas': isShammas,
    if (isStudent != null) r'isStudent': isStudent,
    if (job != null) r'job': job,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
    if (kodasHistoryAggregate != null)
      r'kodasHistoryAggregate': kodasHistoryAggregate,
    if (lastCall != null) r'lastCall': lastCall,
    if (lastConfession != null) r'lastConfession': lastConfession,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastKodas != null) r'lastKodas': lastKodas,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (otherPhones != null) r'otherPhones': otherPhones,
    if (personType != null) r'personType': personType,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (qualification != null) r'qualification': qualification,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (school != null) r'school': school,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (services != null) r'services': services,
    if (servingChurch != null) r'servingChurch': servingChurch,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevel != null) r'shammasLevel': shammasLevel,
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
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
    if (visitHistory != null) r'visitHistory': visitHistory,
    if (visitHistoryAggregate != null)
      r'visitHistoryAggregate': visitHistoryAggregate,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsBoolExp._(this._$data);

  factory Input_PersonsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesBoolExp.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateBoolExp.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : Input_DateComparisonExp.fromJson(
              (l$birthdate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('birthday')) {
      final l$birthday = data['birthday'];
      result$data['birthday'] = l$birthday == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$birthday as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('callHistory')) {
      final l$callHistory = data['callHistory'];
      result$data['callHistory'] = l$callHistory == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$callHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('callHistoryAggregate')) {
      final l$callHistoryAggregate = data['callHistoryAggregate'];
      result$data['callHistoryAggregate'] = l$callHistoryAggregate == null
          ? null
          : Input_HistoryCallHistoryAggregateBoolExp.fromJson(
              (l$callHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesBoolExp.fromJson((l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$churchId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesPersonsBoolExp.fromJson(
              (l$classes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('college')) {
      final l$college = data['college'];
      result$data['college'] = l$college == null
          ? null
          : Input_CollegesBoolExp.fromJson((l$college as Map<String, dynamic>));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$collegeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
          ? null
          : Input_HistoryConfessionHistoryAggregateBoolExp.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = l$editHistory == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('father')) {
      final l$father = data['father'];
      result$data['father'] = l$father == null
          ? null
          : Input_FathersBoolExp.fromJson((l$father as Map<String, dynamic>));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$fatherId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$gender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input_PersonsGroupsBoolExp.fromJson(
              (l$groups as Map<String, dynamic>),
            );
    }
    if (data.containsKey('hobbies')) {
      final l$hobbies = data['hobbies'];
      result$data['hobbies'] = l$hobbies == null
          ? null
          : Input_PersonsHobbiesBoolExp.fromJson(
              (l$hobbies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = l$isServant == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isServant as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = l$isShammas == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isShammas as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = l$isStudent == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isStudent as Map<String, dynamic>),
            );
    }
    if (data.containsKey('job')) {
      final l$job = data['job'];
      result$data['job'] = l$job == null
          ? null
          : Input_JobsBoolExp.fromJson((l$job as Map<String, dynamic>));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$jobDescription as Map<String, dynamic>),
            );
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$jobId as Map<String, dynamic>));
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateBoolExp.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] = l$lastCall == null
          ? null
          : Input_HistoryLatestCallsBoolExp.fromJson(
              (l$lastCall as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastConfession')) {
      final l$lastConfession = data['lastConfession'];
      result$data['lastConfession'] = l$lastConfession == null
          ? null
          : Input_HistoryLatestConfessionsBoolExp.fromJson(
              (l$lastConfession as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastKodas')) {
      final l$lastKodas = data['lastKodas'];
      result$data['lastKodas'] = l$lastKodas == null
          ? null
          : Input_HistoryLatestKodasesBoolExp.fromJson(
              (l$lastKodas as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_HistoryLatestVisitsBoolExp.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$mainPhone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$martialStatus as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$nationalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$notes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = l$otherPhones == null
          ? null
          : Input_JsonbComparisonExp.fromJson(
              (l$otherPhones as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesBoolExp.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personTypeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('qualification')) {
      final l$qualification = data['qualification'];
      result$data['qualification'] = l$qualification == null
          ? null
          : Input_QualificationsBoolExp.fromJson(
              (l$qualification as Map<String, dynamic>),
            );
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$qualificationId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('school')) {
      final l$school = data['school'];
      result$data['school'] = l$school == null
          ? null
          : Input_SchoolsBoolExp.fromJson((l$school as Map<String, dynamic>));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$schoolId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = l$serviceType == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$serviceType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('services')) {
      final l$services = data['services'];
      result$data['services'] = l$services == null
          ? null
          : Input_PersonsServicesBoolExp.fromJson(
              (l$services as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurch')) {
      final l$servingChurch = data['servingChurch'];
      result$data['servingChurch'] = l$servingChurch == null
          ? null
          : Input_ChurchesBoolExp.fromJson(
              (l$servingChurch as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$servingChurchId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('shammasLevel')) {
      final l$shammasLevel = data['shammasLevel'];
      result$data['shammasLevel'] = l$shammasLevel == null
          ? null
          : Input_ShammasLevelsBoolExp.fromJson(
              (l$shammasLevel as Map<String, dynamic>),
            );
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$shammasLevelId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = l$state == null
          ? null
          : Input_PersonStatesBoolExp.fromJson(
              (l$state as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$stateId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoresBoolExp.fromJson((l$store as Map<String, dynamic>));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$storeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$studyYearId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input_PersonsTagsBoolExp.fromJson((l$tags as Map<String, dynamic>));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visitHistory')) {
      final l$visitHistory = data['visitHistory'];
      result$data['visitHistory'] = l$visitHistory == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$visitHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = data['visitHistoryAggregate'];
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate == null
          ? null
          : Input_HistoryVisitHistoryAggregateBoolExp.fromJson(
              (l$visitHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = l$workStatus == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$workStatus as Map<String, dynamic>),
            );
    }
    return Input_PersonsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsBoolExp>?);

  Input_PersonsBoolExp? get $_not => (_$data['_not'] as Input_PersonsBoolExp?);

  List<Input_PersonsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsBoolExp>?);

  Input_AddressesBoolExp? get address =>
      (_$data['address'] as Input_AddressesBoolExp?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_DateComparisonExp? get birthdate =>
      (_$data['birthdate'] as Input_DateComparisonExp?);

  Input_StringComparisonExp? get birthday =>
      (_$data['birthday'] as Input_StringComparisonExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_HistoryCallHistoryBoolExp? get callHistory =>
      (_$data['callHistory'] as Input_HistoryCallHistoryBoolExp?);

  Input_HistoryCallHistoryAggregateBoolExp? get callHistoryAggregate =>
      (_$data['callHistoryAggregate']
          as Input_HistoryCallHistoryAggregateBoolExp?);

  Input_ChurchesBoolExp? get church =>
      (_$data['church'] as Input_ChurchesBoolExp?);

  Input_UuidComparisonExp? get churchId =>
      (_$data['churchId'] as Input_UuidComparisonExp?);

  Input_ClassesPersonsBoolExp? get classes =>
      (_$data['classes'] as Input_ClassesPersonsBoolExp?);

  Input_CollegesBoolExp? get college =>
      (_$data['college'] as Input_CollegesBoolExp?);

  Input_UuidComparisonExp? get collegeId =>
      (_$data['collegeId'] as Input_UuidComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryConfessionHistoryBoolExp? get confessionHistory =>
      (_$data['confessionHistory'] as Input_HistoryConfessionHistoryBoolExp?);

  Input_HistoryConfessionHistoryAggregateBoolExp?
  get confessionHistoryAggregate =>
      (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateBoolExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_FamiliesBoolExp? get family =>
      (_$data['family'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_FathersBoolExp? get father =>
      (_$data['father'] as Input_FathersBoolExp?);

  Input_UuidComparisonExp? get fatherId =>
      (_$data['fatherId'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get gender =>
      (_$data['gender'] as Input_BooleanComparisonExp?);

  Input_PersonsGroupsBoolExp? get groups =>
      (_$data['groups'] as Input_PersonsGroupsBoolExp?);

  Input_PersonsHobbiesBoolExp? get hobbies =>
      (_$data['hobbies'] as Input_PersonsHobbiesBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isServant =>
      (_$data['isServant'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get isShammas =>
      (_$data['isShammas'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get isStudent =>
      (_$data['isStudent'] as Input_BooleanComparisonExp?);

  Input_JobsBoolExp? get job => (_$data['job'] as Input_JobsBoolExp?);

  Input_StringComparisonExp? get jobDescription =>
      (_$data['jobDescription'] as Input_StringComparisonExp?);

  Input_UuidComparisonExp? get jobId =>
      (_$data['jobId'] as Input_UuidComparisonExp?);

  Input_HistoryKodasHistoryBoolExp? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryBoolExp?);

  Input_HistoryKodasHistoryAggregateBoolExp? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateBoolExp?);

  Input_HistoryLatestCallsBoolExp? get lastCall =>
      (_$data['lastCall'] as Input_HistoryLatestCallsBoolExp?);

  Input_HistoryLatestConfessionsBoolExp? get lastConfession =>
      (_$data['lastConfession'] as Input_HistoryLatestConfessionsBoolExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryLatestKodasesBoolExp? get lastKodas =>
      (_$data['lastKodas'] as Input_HistoryLatestKodasesBoolExp?);

  Input_HistoryLatestVisitsBoolExp? get lastVisit =>
      (_$data['lastVisit'] as Input_HistoryLatestVisitsBoolExp?);

  Input_StringComparisonExp? get mainPhone =>
      (_$data['mainPhone'] as Input_StringComparisonExp?);

  Input_StringComparisonExp? get martialStatus =>
      (_$data['martialStatus'] as Input_StringComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_IntComparisonExp? get nationalId =>
      (_$data['nationalId'] as Input_IntComparisonExp?);

  Input_StringComparisonExp? get notes =>
      (_$data['notes'] as Input_StringComparisonExp?);

  Input_JsonbComparisonExp? get otherPhones =>
      (_$data['otherPhones'] as Input_JsonbComparisonExp?);

  Input_PersonTypesBoolExp? get personType =>
      (_$data['personType'] as Input_PersonTypesBoolExp?);

  Input_UuidComparisonExp? get personTypeId =>
      (_$data['personTypeId'] as Input_UuidComparisonExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_QualificationsBoolExp? get qualification =>
      (_$data['qualification'] as Input_QualificationsBoolExp?);

  Input_UuidComparisonExp? get qualificationId =>
      (_$data['qualificationId'] as Input_UuidComparisonExp?);

  Input_SchoolsBoolExp? get school =>
      (_$data['school'] as Input_SchoolsBoolExp?);

  Input_UuidComparisonExp? get schoolId =>
      (_$data['schoolId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get serviceType =>
      (_$data['serviceType'] as Input_StringComparisonExp?);

  Input_PersonsServicesBoolExp? get services =>
      (_$data['services'] as Input_PersonsServicesBoolExp?);

  Input_ChurchesBoolExp? get servingChurch =>
      (_$data['servingChurch'] as Input_ChurchesBoolExp?);

  Input_UuidComparisonExp? get servingChurchId =>
      (_$data['servingChurchId'] as Input_UuidComparisonExp?);

  Input_ShammasLevelsBoolExp? get shammasLevel =>
      (_$data['shammasLevel'] as Input_ShammasLevelsBoolExp?);

  Input_UuidComparisonExp? get shammasLevelId =>
      (_$data['shammasLevelId'] as Input_UuidComparisonExp?);

  Input_PersonStatesBoolExp? get state =>
      (_$data['state'] as Input_PersonStatesBoolExp?);

  Input_UuidComparisonExp? get stateId =>
      (_$data['stateId'] as Input_UuidComparisonExp?);

  Input_StoresBoolExp? get store => (_$data['store'] as Input_StoresBoolExp?);

  Input_UuidComparisonExp? get storeId =>
      (_$data['storeId'] as Input_UuidComparisonExp?);

  Input_StudyYearsBoolExp? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsBoolExp?);

  Input_SmallintComparisonExp? get studyYearId =>
      (_$data['studyYearId'] as Input_SmallintComparisonExp?);

  Input_PersonsTagsBoolExp? get tags =>
      (_$data['tags'] as Input_PersonsTagsBoolExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

  Input_HistoryVisitHistoryBoolExp? get visitHistory =>
      (_$data['visitHistory'] as Input_HistoryVisitHistoryBoolExp?);

  Input_HistoryVisitHistoryAggregateBoolExp? get visitHistoryAggregate =>
      (_$data['visitHistoryAggregate']
          as Input_HistoryVisitHistoryAggregateBoolExp?);

  Input_StringComparisonExp? get workStatus =>
      (_$data['workStatus'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate?.toJson();
    }
    if (_$data.containsKey('birthday')) {
      final l$birthday = birthday;
      result$data['birthday'] = l$birthday?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('callHistory')) {
      final l$callHistory = callHistory;
      result$data['callHistory'] = l$callHistory?.toJson();
    }
    if (_$data.containsKey('callHistoryAggregate')) {
      final l$callHistoryAggregate = callHistoryAggregate;
      result$data['callHistoryAggregate'] = l$callHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('college')) {
      final l$college = college;
      result$data['college'] = l$college?.toJson();
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] = l$confessionHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('father')) {
      final l$father = father;
      result$data['father'] = l$father?.toJson();
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId?.toJson();
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender?.toJson();
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('hobbies')) {
      final l$hobbies = hobbies;
      result$data['hobbies'] = l$hobbies?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant?.toJson();
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas?.toJson();
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent?.toJson();
    }
    if (_$data.containsKey('job')) {
      final l$job = job;
      result$data['job'] = l$job?.toJson();
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription?.toJson();
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId?.toJson();
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] = l$lastCall?.toJson();
    }
    if (_$data.containsKey('lastConfession')) {
      final l$lastConfession = lastConfession;
      result$data['lastConfession'] = l$lastConfession?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastKodas')) {
      final l$lastKodas = lastKodas;
      result$data['lastKodas'] = l$lastKodas?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone?.toJson();
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones?.toJson();
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('qualification')) {
      final l$qualification = qualification;
      result$data['qualification'] = l$qualification?.toJson();
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId?.toJson();
    }
    if (_$data.containsKey('school')) {
      final l$school = school;
      result$data['school'] = l$school?.toJson();
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId?.toJson();
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType?.toJson();
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
      result$data['servingChurchId'] = l$servingChurchId?.toJson();
    }
    if (_$data.containsKey('shammasLevel')) {
      final l$shammasLevel = shammasLevel;
      result$data['shammasLevel'] = l$shammasLevel?.toJson();
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId?.toJson();
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state?.toJson();
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId?.toJson();
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId?.toJson();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    if (_$data.containsKey('visitHistory')) {
      final l$visitHistory = visitHistory;
      result$data['visitHistory'] = l$visitHistory?.toJson();
    }
    if (_$data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = visitHistoryAggregate;
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsBoolExp<Input_PersonsBoolExp> get copyWith =>
      CopyWith_Input_PersonsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsBoolExp || runtimeType != other.runtimeType) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (_$data.containsKey('attendanceHistoryAggregate') !=
        other._$data.containsKey('attendanceHistoryAggregate')) {
      return false;
    }
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (_$data.containsKey('birthday') !=
        other._$data.containsKey('birthday')) {
      return false;
    }
    if (l$birthday != lOther$birthday) {
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
    final l$callHistory = callHistory;
    final lOther$callHistory = other.callHistory;
    if (_$data.containsKey('callHistory') !=
        other._$data.containsKey('callHistory')) {
      return false;
    }
    if (l$callHistory != lOther$callHistory) {
      return false;
    }
    final l$callHistoryAggregate = callHistoryAggregate;
    final lOther$callHistoryAggregate = other.callHistoryAggregate;
    if (_$data.containsKey('callHistoryAggregate') !=
        other._$data.containsKey('callHistoryAggregate')) {
      return false;
    }
    if (l$callHistoryAggregate != lOther$callHistoryAggregate) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
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
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
      return false;
    }
    final l$editHistory = editHistory;
    final lOther$editHistory = other.editHistory;
    if (_$data.containsKey('editHistory') !=
        other._$data.containsKey('editHistory')) {
      return false;
    }
    if (l$editHistory != lOther$editHistory) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
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
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (_$data.containsKey('lastConfession') !=
        other._$data.containsKey('lastConfession')) {
      return false;
    }
    if (l$lastConfession != lOther$lastConfession) {
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
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (_$data.containsKey('lastKodas') !=
        other._$data.containsKey('lastKodas')) {
      return false;
    }
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
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
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (_$data.containsKey('shammasLevel') !=
        other._$data.containsKey('shammasLevel')) {
      return false;
    }
    if (l$shammasLevel != lOther$shammasLevel) {
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
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
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final lOther$visitHistoryAggregate = other.visitHistoryAggregate;
    if (_$data.containsKey('visitHistoryAggregate') !=
        other._$data.containsKey('visitHistoryAggregate')) {
      return false;
    }
    if (l$visitHistoryAggregate != lOther$visitHistoryAggregate) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$address = address;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$birthdate = birthdate;
    final l$birthday = birthday;
    final l$blurhash = blurhash;
    final l$callHistory = callHistory;
    final l$callHistoryAggregate = callHistoryAggregate;
    final l$church = church;
    final l$churchId = churchId;
    final l$classes = classes;
    final l$college = college;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$confessionHistory = confessionHistory;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$family = family;
    final l$familyId = familyId;
    final l$father = father;
    final l$fatherId = fatherId;
    final l$gender = gender;
    final l$groups = groups;
    final l$hobbies = hobbies;
    final l$id = id;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$kodasHistory = kodasHistory;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$lastCall = lastCall;
    final l$lastConfession = lastConfession;
    final l$lastEdit = lastEdit;
    final l$lastKodas = lastKodas;
    final l$lastVisit = lastVisit;
    final l$mainPhone = mainPhone;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualification = qualification;
    final l$qualificationId = qualificationId;
    final l$school = school;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$services = services;
    final l$servingChurch = servingChurch;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevel = shammasLevel;
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
    final l$userCanEdit = userCanEdit;
    final l$visitHistory = visitHistory;
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final l$workStatus = workStatus;
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
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('birthday') ? l$birthday : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('callHistory') ? l$callHistory : const {},
      _$data.containsKey('callHistoryAggregate')
          ? l$callHistoryAggregate
          : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('college') ? l$college : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('father') ? l$father : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('hobbies') ? l$hobbies : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('job') ? l$job : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualification') ? l$qualification : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('school') ? l$school : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('services') ? l$services : const {},
      _$data.containsKey('servingChurch') ? l$servingChurch : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevel') ? l$shammasLevel : const {},
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
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
      _$data.containsKey('visitHistory') ? l$visitHistory : const {},
      _$data.containsKey('visitHistoryAggregate')
          ? l$visitHistoryAggregate
          : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}
