// Part 22 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy(
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsAvgOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsAvgOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsBoolExp {
  factory Input_HistoryAttendanceDaysConstraintsBoolExp({
    List<Input_HistoryAttendanceDaysConstraintsBoolExp>? $_and,
    Input_HistoryAttendanceDaysConstraintsBoolExp? $_not,
    List<Input_HistoryAttendanceDaysConstraintsBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (day != null) r'day': day,
        if (dayId != null) r'dayId': dayId,
        if (group != null) r'group': group,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (service != null) r'service': service,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (studyYear != null) r'studyYear': studyYear,
      });

  Input_HistoryAttendanceDaysConstraintsBoolExp._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$day as Map<String, dynamic>));
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : Input_DateComparisonExp.fromJson((l$dayId as Map<String, dynamic>));
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
              (l$groupId as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceGender as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYear as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysConstraintsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceDaysConstraintsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryAttendanceDaysConstraintsBoolExp>?);

  Input_HistoryAttendanceDaysConstraintsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  List<Input_HistoryAttendanceDaysConstraintsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryAttendanceDaysConstraintsBoolExp>?);

  Input_HistoryAttendanceDaysBoolExp? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysBoolExp?);

  Input_DateComparisonExp? get dayId =>
      (_$data['dayId'] as Input_DateComparisonExp?);

  Input_GroupsBoolExp? get group => (_$data['group'] as Input_GroupsBoolExp?);

  Input_UuidComparisonExp? get groupId =>
      (_$data['groupId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_BooleanComparisonExp? get serviceGender =>
      (_$data['serviceGender'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_IntComparisonExp? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_IntComparisonExp?);

  Input_StudyYearsBoolExp? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsBoolExp?);

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
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<
          Input_HistoryAttendanceDaysConstraintsBoolExp>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsBoolExp ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$day = day;
    final l$dayId = dayId;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
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
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
    Input_HistoryAttendanceDaysConstraintsBoolExp instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsBoolExp;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsBoolExp;

  TRes call({
    List<Input_HistoryAttendanceDaysConstraintsBoolExp>? $_and,
    Input_HistoryAttendanceDaysConstraintsBoolExp? $_not,
    List<Input_HistoryAttendanceDaysConstraintsBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  });
  TRes $_and(
      Iterable<Input_HistoryAttendanceDaysConstraintsBoolExp>? Function(
              Iterable<
                  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<
                      Input_HistoryAttendanceDaysConstraintsBoolExp>>?)
          _fn);
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_HistoryAttendanceDaysConstraintsBoolExp>? Function(
              Iterable<
                  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<
                      Input_HistoryAttendanceDaysConstraintsBoolExp>>?)
          _fn);
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day;
  CopyWith_Input_DateComparisonExp<TRes> get dayId;
  CopyWith_Input_GroupsBoolExp<TRes> get group;
  CopyWith_Input_UuidComparisonExp<TRes> get groupId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and':
              ($_and as List<Input_HistoryAttendanceDaysConstraintsBoolExp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input_HistoryAttendanceDaysConstraintsBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_HistoryAttendanceDaysConstraintsBoolExp>?),
        if (day != _undefined)
          'day': (day as Input_HistoryAttendanceDaysBoolExp?),
        if (dayId != _undefined) 'dayId': (dayId as Input_DateComparisonExp?),
        if (group != _undefined) 'group': (group as Input_GroupsBoolExp?),
        if (groupId != _undefined)
          'groupId': (groupId as Input_UuidComparisonExp?),
        if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
        if (service != _undefined)
          'service': (service as Input_ServicesBoolExp?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as Input_BooleanComparisonExp?),
        if (serviceId != _undefined)
          'serviceId': (serviceId as Input_UuidComparisonExp?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Input_IntComparisonExp?),
        if (studyYear != _undefined)
          'studyYear': (studyYear as Input_StudyYearsBoolExp?),
      }));

  TRes $_and(
          Iterable<Input_HistoryAttendanceDaysConstraintsBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<
                          Input_HistoryAttendanceDaysConstraintsBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and?.map(
              (e) => CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_HistoryAttendanceDaysConstraintsBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<
                          Input_HistoryAttendanceDaysConstraintsBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map(
              (e) => CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$day, (e) => call(day: e));
  }

  CopyWith_Input_DateComparisonExp<TRes> get dayId {
    final local$dayId = _instance.dayId;
    return local$dayId == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$dayId, (e) => call(dayId: e));
  }

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
            local$groupId, (e) => call(groupId: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service, (e) => call(service: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$serviceGender, (e) => call(serviceGender: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$serviceId, (e) => call(serviceId: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$serviceStudyYear, (e) => call(serviceStudyYear: e));
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceDaysConstraintsBoolExp>? $_and,
    Input_HistoryAttendanceDaysConstraintsBoolExp? $_not,
    List<Input_HistoryAttendanceDaysConstraintsBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get dayId =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get group =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get groupId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsInsertInput {
  factory Input_HistoryAttendanceDaysConstraintsInsertInput({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? studyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsInsertInput._({
        if (day != null) r'day': day,
        if (dayId != null) r'dayId': dayId,
        if (group != null) r'group': group,
        if (groupId != null) r'groupId': groupId,
        if (service != null) r'service': service,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (studyYear != null) r'studyYear': studyYear,
      });

  Input_HistoryAttendanceDaysConstraintsInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysObjRelInsertInput.fromJson(
              (l$day as Map<String, dynamic>));
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsObjRelInsertInput.fromJson(
              (l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] =
          l$groupId == null ? null : stringToUuid(l$groupId);
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] =
          l$serviceId == null ? null : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYear as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysConstraintsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysObjRelInsertInput? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysObjRelInsertInput?);

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  Input_GroupsObjRelInsertInput? get group =>
      (_$data['group'] as Input_GroupsObjRelInsertInput?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Input_StudyYearsObjRelInsertInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsObjRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : uuidToString(l$groupId);
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput<
          Input_HistoryAttendanceDaysConstraintsInsertInput>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsInsertInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$dayId = dayId;
    final l$group = group;
    final l$groupId = groupId;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput(
    Input_HistoryAttendanceDaysConstraintsInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsInsertInput;

  TRes call({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? studyYear,
  });
  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day;
  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsInsertInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsInsertInput._({
        ..._instance._$data,
        if (day != _undefined)
          'day': (day as Input_HistoryAttendanceDaysObjRelInsertInput?),
        if (dayId != _undefined) 'dayId': (dayId as DateTime?),
        if (group != _undefined)
          'group': (group as Input_GroupsObjRelInsertInput?),
        if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
        if (service != _undefined)
          'service': (service as Input_ServicesObjRelInsertInput?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as bool?),
        if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as int?),
        if (studyYear != _undefined)
          'studyYear': (studyYear as Input_StudyYearsObjRelInsertInput?),
      }));

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(
            local$day, (e) => call(day: e));
  }

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group, (e) => call(group: e));
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service, (e) => call(service: e));
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsInsertInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsInsertInput(
      this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? studyYear,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(_res);

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group =>
      CopyWith_Input_GroupsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsMaxOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsMaxOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsMaxOrderBy._({
        if (dayId != null) r'dayId': dayId,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsMaxOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsMaxOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] =
          l$dayId == null ? null : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
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
    return Input_HistoryAttendanceDaysConstraintsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] =
          l$dayId == null ? null : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<
          Input_HistoryAttendanceDaysConstraintsMaxOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsMaxOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(
    Input_HistoryAttendanceDaysConstraintsMaxOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsMaxOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsMaxOrderBy._({
        ..._instance._$data,
        if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysConstraintsMinOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsMinOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsMinOrderBy._({
        if (dayId != null) r'dayId': dayId,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsMinOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsMinOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] =
          l$dayId == null ? null : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
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
    return Input_HistoryAttendanceDaysConstraintsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] =
          l$dayId == null ? null : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<
          Input_HistoryAttendanceDaysConstraintsMinOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsMinOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
    Input_HistoryAttendanceDaysConstraintsMinOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsMinOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsMinOrderBy._({
        ..._instance._$data,
        if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysConstraintsOnConflict {
  factory Input_HistoryAttendanceDaysConstraintsOnConflict({
    required Enum_HistoryAttendanceDaysConstraintsConstraint constraint,
    List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysConstraintsBoolExp? where,
  }) =>
      Input_HistoryAttendanceDaysConstraintsOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_HistoryAttendanceDaysConstraintsOnConflict._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsOnConflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_HistoryAttendanceDaysConstraintsConstraint(
            (l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) =>
              fromJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(
                  (e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysConstraintsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceDaysConstraintsConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryAttendanceDaysConstraintsConstraint);

  List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>?);

  Input_HistoryAttendanceDaysConstraintsBoolExp? get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_HistoryAttendanceDaysConstraintsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] = (l$updateColumns
              as List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>)
          .map((e) =>
              toJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(e))
          .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<
          Input_HistoryAttendanceDaysConstraintsOnConflict>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsOnConflict ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict(
    Input_HistoryAttendanceDaysConstraintsOnConflict instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOnConflict;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOnConflict;

  TRes call({
    Enum_HistoryAttendanceDaysConstraintsConstraint? constraint,
    List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysConstraintsBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint':
              (constraint as Enum_HistoryAttendanceDaysConstraintsConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns': (updateColumns
              as List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>),
        if (where != _undefined)
          'where': (where as Input_HistoryAttendanceDaysConstraintsBoolExp?),
      }));

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceDaysConstraintsConstraint? constraint,
    List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysConstraintsBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsOrderBy({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsOrderBy._({
        if (day != null) r'day': day,
        if (dayId != null) r'dayId': dayId,
        if (group != null) r'group': group,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (service != null) r'service': service,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (studyYear != null) r'studyYear': studyYear,
      });

  Input_HistoryAttendanceDaysConstraintsOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysOrderBy.fromJson(
              (l$day as Map<String, dynamic>));
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] =
          l$dayId == null ? null : fromJson_Enum_OrderBy((l$dayId as String));
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
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
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
              (l$studyYear as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysConstraintsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysOrderBy? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysOrderBy?);

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceGender => (_$data['serviceGender'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] =
          l$dayId == null ? null : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] =
          l$serviceGender == null ? null : toJson_Enum_OrderBy(l$serviceGender);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : toJson_Enum_OrderBy(l$serviceId);
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
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<
          Input_HistoryAttendanceDaysConstraintsOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$dayId = dayId;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy(
    Input_HistoryAttendanceDaysConstraintsOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOrderBy;

  TRes call({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  });
  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsOrderBy._({
        ..._instance._$data,
        if (day != _undefined)
          'day': (day as Input_HistoryAttendanceDaysOrderBy?),
        if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
        if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (service != _undefined)
          'service': (service as Input_ServicesOrderBy?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as Enum_OrderBy?),
        if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
        if (studyYear != _undefined)
          'studyYear': (studyYear as Input_StudyYearsOrderBy?),
      }));

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysOrderBy(
            local$day, (e) => call(day: e));
  }

  CopyWith_Input_GroupsOrderBy<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsOrderBy(local$group, (e) => call(group: e));
  }

  CopyWith_Input_ServicesOrderBy<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ServicesOrderBy(
            local$service, (e) => call(service: e));
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_res);

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsStddevOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsStddevOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStddevOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStddevOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStddevOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<
          Input_HistoryAttendanceDaysConstraintsStddevOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStddevOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
    Input_HistoryAttendanceDaysConstraintsStddevOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStddevOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsStddevOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsStddevOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._(
        result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<
          Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
    Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._(
        result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<
          Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}
