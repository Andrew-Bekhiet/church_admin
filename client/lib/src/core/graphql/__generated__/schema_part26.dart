// Part 26 of the schema
part of "schema.graphql.dart";

class _CopyWithImpl_Input_HistoryAttendanceHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asAdmin = _undefined,
    Object? $class = _undefined,
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? studyYear = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryInsertInput._({
      ..._instance._$data,
      if (asAdmin != _undefined) 'asAdmin': (asAdmin as bool?),
      if ($class != _undefined)
        'class': ($class as Input_ClassesObjRelInsertInput?),
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysObjRelInsertInput?),
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (group != _undefined)
        'group': (group as Input_GroupsObjRelInsertInput?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsObjRelInsertInput?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );

  CopyWith_Input_ClassesObjRelInsertInput<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Input_ClassesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ClassesObjRelInsertInput(
            local$$class,
            (e) => call($class: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(
            local$day,
            (e) => call(day: e),
          );
  }

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group,
            (e) => call(group: e),
          );
  }

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

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryInsertInput(this._res);

  TRes _res;

  call({
    bool? asAdmin,
    Input_ClassesObjRelInsertInput? $class,
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    Input_StudyYearsObjRelInsertInput? studyYear,
    DateTime? time,
  }) => _res;

  CopyWith_Input_ClassesObjRelInsertInput<TRes> get $class =>
      CopyWith_Input_ClassesObjRelInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(_res);

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group =>
      CopyWith_Input_GroupsObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);
}

class Input_HistoryAttendanceHistoryMaxOrderBy {
  factory Input_HistoryAttendanceHistoryMaxOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? time,
  }) => Input_HistoryAttendanceHistoryMaxOrderBy._({
    if (dayId != null) r'dayId': dayId,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (time != null) r'time': time,
  });

  Input_HistoryAttendanceHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryAttendanceHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null
          ? null
          : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<
    Input_HistoryAttendanceHistoryMaxOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy(
    Input_HistoryAttendanceHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryMaxOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryAttendanceHistoryMinOrderBy {
  factory Input_HistoryAttendanceHistoryMinOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? time,
  }) => Input_HistoryAttendanceHistoryMinOrderBy._({
    if (dayId != null) r'dayId': dayId,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (time != null) r'time': time,
  });

  Input_HistoryAttendanceHistoryMinOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryAttendanceHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null
          ? null
          : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<
    Input_HistoryAttendanceHistoryMinOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryMinOrderBy(
    Input_HistoryAttendanceHistoryMinOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryMinOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryMinOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryAttendanceHistoryOnConflict {
  factory Input_HistoryAttendanceHistoryOnConflict({
    required Enum_HistoryAttendanceHistoryConstraint constraint,
    List<Enum_HistoryAttendanceHistoryUpdateColumn>? updateColumns,
    Input_HistoryAttendanceHistoryBoolExp? where,
  }) => Input_HistoryAttendanceHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryAttendanceHistoryOnConflict._(this._$data);

  factory Input_HistoryAttendanceHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_HistoryAttendanceHistoryConstraint(
          (l$constraint as String),
        );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryAttendanceHistoryConstraint);

  List<Enum_HistoryAttendanceHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryAttendanceHistoryUpdateColumn>?);

  Input_HistoryAttendanceHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryAttendanceHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryAttendanceHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryAttendanceHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryAttendanceHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryOnConflict<
    Input_HistoryAttendanceHistoryOnConflict
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryOnConflict ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryOnConflict(
    Input_HistoryAttendanceHistoryOnConflict instance,
    TRes Function(Input_HistoryAttendanceHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryOnConflict;

  factory CopyWith_Input_HistoryAttendanceHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryOnConflict;

  TRes call({
    Enum_HistoryAttendanceHistoryConstraint? constraint,
    List<Enum_HistoryAttendanceHistoryUpdateColumn>? updateColumns,
    Input_HistoryAttendanceHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryAttendanceHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryAttendanceHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryAttendanceHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceHistoryConstraint? constraint,
    List<Enum_HistoryAttendanceHistoryUpdateColumn>? updateColumns,
    Input_HistoryAttendanceHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryOrderBy {
  factory Input_HistoryAttendanceHistoryOrderBy({
    Enum_OrderBy? asAdmin,
    Input_ClassesOrderBy? $class,
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Input_AuthUsersDataOrderBy? recordedByUser,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? time,
  }) => Input_HistoryAttendanceHistoryOrderBy._({
    if (asAdmin != null) r'asAdmin': asAdmin,
    if ($class != null) r'class': $class,
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (recordedByUser != null) r'recordedByUser': recordedByUser,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (studyYear != null) r'studyYear': studyYear,
    if (time != null) r'time': time,
  });

  Input_HistoryAttendanceHistoryOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asAdmin')) {
      final l$asAdmin = data['asAdmin'];
      result$data['asAdmin'] = l$asAdmin == null
          ? null
          : fromJson_Enum_OrderBy((l$asAdmin as String));
    }
    if (data.containsKey('class')) {
      final l$$class = data['class'];
      result$data['class'] = l$$class == null
          ? null
          : Input_ClassesOrderBy.fromJson((l$$class as Map<String, dynamic>));
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysOrderBy.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsOrderBy.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('recordedByUser')) {
      final l$recordedByUser = data['recordedByUser'];
      result$data['recordedByUser'] = l$recordedByUser == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$recordedByUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesOrderBy.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceGender as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryAttendanceHistoryOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get asAdmin => (_$data['asAdmin'] as Enum_OrderBy?);

  Input_ClassesOrderBy? get $class =>
      (_$data['class'] as Input_ClassesOrderBy?);

  Input_HistoryAttendanceDaysOrderBy? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysOrderBy?);

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get recordedByUser =>
      (_$data['recordedByUser'] as Input_AuthUsersDataOrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceGender => (_$data['serviceGender'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsOrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asAdmin')) {
      final l$asAdmin = asAdmin;
      result$data['asAdmin'] = l$asAdmin == null
          ? null
          : toJson_Enum_OrderBy(l$asAdmin);
    }
    if (_$data.containsKey('class')) {
      final l$$class = $class;
      result$data['class'] = l$$class?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null
          ? null
          : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('recordedByUser')) {
      final l$recordedByUser = recordedByUser;
      result$data['recordedByUser'] = l$recordedByUser?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : toJson_Enum_OrderBy(l$serviceGender);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryOrderBy<
    Input_HistoryAttendanceHistoryOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$asAdmin = asAdmin;
    final lOther$asAdmin = other.asAdmin;
    if (_$data.containsKey('asAdmin') != other._$data.containsKey('asAdmin')) {
      return false;
    }
    if (l$asAdmin != lOther$asAdmin) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (_$data.containsKey('class') != other._$data.containsKey('class')) {
      return false;
    }
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (_$data.containsKey('recordedByUser') !=
        other._$data.containsKey('recordedByUser')) {
      return false;
    }
    if (l$recordedByUser != lOther$recordedByUser) {
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asAdmin = asAdmin;
    final l$$class = $class;
    final l$day = day;
    final l$dayId = dayId;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$recordedByUser = recordedByUser;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('asAdmin') ? l$asAdmin : const {},
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('recordedByUser') ? l$recordedByUser : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryOrderBy(
    Input_HistoryAttendanceHistoryOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryOrderBy;

  TRes call({
    Enum_OrderBy? asAdmin,
    Input_ClassesOrderBy? $class,
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Input_AuthUsersDataOrderBy? recordedByUser,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? time,
  });
  CopyWith_Input_ClassesOrderBy<TRes> get $class;
  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get recordedByUser;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asAdmin = _undefined,
    Object? $class = _undefined,
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? recordedByUser = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryOrderBy._({
      ..._instance._$data,
      if (asAdmin != _undefined) 'asAdmin': (asAdmin as Enum_OrderBy?),
      if ($class != _undefined) 'class': ($class as Input_ClassesOrderBy?),
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysOrderBy?),
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (recordedByUser != _undefined)
        'recordedByUser': (recordedByUser as Input_AuthUsersDataOrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsOrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_ClassesOrderBy<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Input_ClassesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesOrderBy(local$$class, (e) => call($class: e));
  }

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysOrderBy(
            local$day,
            (e) => call(day: e),
          );
  }

  CopyWith_Input_GroupsOrderBy<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsOrderBy(local$group, (e) => call(group: e));
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get recordedByUser {
    final local$recordedByUser = _instance.recordedByUser;
    return local$recordedByUser == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(
            local$recordedByUser,
            (e) => call(recordedByUser: e),
          );
  }

  CopyWith_Input_ServicesOrderBy<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ServicesOrderBy(
            local$service,
            (e) => call(service: e),
          );
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
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? asAdmin,
    Input_ClassesOrderBy? $class,
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Input_AuthUsersDataOrderBy? recordedByUser,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? time,
  }) => _res;

  CopyWith_Input_ClassesOrderBy<TRes> get $class =>
      CopyWith_Input_ClassesOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_res);

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get recordedByUser =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryAttendanceHistoryPkColumnsInput {
  factory Input_HistoryAttendanceHistoryPkColumnsInput({
    required UuidValue id,
  }) => Input_HistoryAttendanceHistoryPkColumnsInput._({r'id': id});

  Input_HistoryAttendanceHistoryPkColumnsInput._(this._$data);

  factory Input_HistoryAttendanceHistoryPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_HistoryAttendanceHistoryPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<
    Input_HistoryAttendanceHistoryPkColumnsInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryPkColumnsInput ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput(
    Input_HistoryAttendanceHistoryPkColumnsInput instance,
    TRes Function(Input_HistoryAttendanceHistoryPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryPkColumnsInput;

  factory CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryPkColumnsInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_HistoryAttendanceHistoryPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_HistoryAttendanceHistorySetInput {
  factory Input_HistoryAttendanceHistorySetInput({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? personId,
    UuidValue? serviceId,
    DateTime? time,
  }) => Input_HistoryAttendanceHistorySetInput._({
    if (dayId != null) r'dayId': dayId,
    if (groupId != null) r'groupId': groupId,
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
    if (time != null) r'time': time,
  });

  Input_HistoryAttendanceHistorySetInput._(this._$data);

  factory Input_HistoryAttendanceHistorySetInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryAttendanceHistorySetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistorySetInput<
    Input_HistoryAttendanceHistorySetInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistorySetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistorySetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$personId = personId;
    final l$serviceId = serviceId;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistorySetInput(
    Input_HistoryAttendanceHistorySetInput instance,
    TRes Function(Input_HistoryAttendanceHistorySetInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistorySetInput;

  factory CopyWith_Input_HistoryAttendanceHistorySetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput;

  TRes call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? personId,
    UuidValue? serviceId,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistorySetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistorySetInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistorySetInput _instance;

  final TRes Function(Input_HistoryAttendanceHistorySetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? personId = _undefined,
    Object? serviceId = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistorySetInput._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput(this._res);

  TRes _res;

  call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? personId,
    UuidValue? serviceId,
    DateTime? time,
  }) => _res;
}

class Input_HistoryAttendanceHistoryStddevOrderBy {
  factory Input_HistoryAttendanceHistoryStddevOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceHistoryStddevOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceHistoryStddevOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryStddevOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryStddevOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<
    Input_HistoryAttendanceHistoryStddevOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStddevOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy(
    Input_HistoryAttendanceHistoryStddevOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStddevOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStddevOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStddevOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceHistoryStddevOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryStddevPopOrderBy {
  factory Input_HistoryAttendanceHistoryStddevPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceHistoryStddevPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceHistoryStddevPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryStddevPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryStddevPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<
    Input_HistoryAttendanceHistoryStddevPopOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStddevPopOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy(
    Input_HistoryAttendanceHistoryStddevPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceHistoryStddevPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryStddevSampOrderBy {
  factory Input_HistoryAttendanceHistoryStddevSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceHistoryStddevSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceHistoryStddevSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryStddevSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryStddevSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<
    Input_HistoryAttendanceHistoryStddevSampOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStddevSampOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy(
    Input_HistoryAttendanceHistoryStddevSampOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStddevSampOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceHistoryStddevSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryStreamCursorInput {
  factory Input_HistoryAttendanceHistoryStreamCursorInput({
    required Input_HistoryAttendanceHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryAttendanceHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryAttendanceHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryAttendanceHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryAttendanceHistoryStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<
    Input_HistoryAttendanceHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStreamCursorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initialValue = initialValue;
    final lOther$initialValue = other.initialValue;
    if (l$initialValue != lOther$initialValue) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initialValue = initialValue;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initialValue,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}
