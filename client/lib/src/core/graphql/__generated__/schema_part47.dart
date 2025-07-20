// Part 47 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_ServicesBoolExp<TRes> {
  factory CopyWith_Input_ServicesBoolExp(
    Input_ServicesBoolExp instance,
    TRes Function(Input_ServicesBoolExp) then,
  ) = _CopyWithImpl_Input_ServicesBoolExp;

  factory CopyWith_Input_ServicesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesBoolExp;

  TRes call({
    List<Input_ServicesBoolExp>? $_and,
    Input_ServicesBoolExp? $_not,
    List<Input_ServicesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
        attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_GroupsBoolExp? groups,
    Input_GroupsAggregateBoolExp? groupsAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_ServicesBoolExp? nextService,
    Input_UuidComparisonExp? nextServiceId,
    Input_PersonsServicesBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StudyYearsBoolExp? studyYearFrom,
    Input_SmallintComparisonExp? studyYearFromId,
    Input_StudyYearsBoolExp? studyYearTo,
    Input_SmallintComparisonExp? studyYearToId,
  });
  TRes $_and(
      Iterable<Input_ServicesBoolExp>? Function(
              Iterable<CopyWith_Input_ServicesBoolExp<Input_ServicesBoolExp>>?)
          _fn);
  CopyWith_Input_ServicesBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_ServicesBoolExp>? Function(
              Iterable<CopyWith_Input_ServicesBoolExp<Input_ServicesBoolExp>>?)
          _fn);
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers;
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
      get attendanceDaysConstraints;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
      get attendanceDaysConstraintsAggregate;
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
      get attendanceHistoryAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_ClassesBoolExp<TRes> get classes;
  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate;
  CopyWith_Input_GroupsBoolExp<TRes> get groups;
  CopyWith_Input_GroupsAggregateBoolExp<TRes> get groupsAggregate;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_ServicesBoolExp<TRes> get nextService;
  CopyWith_Input_UuidComparisonExp<TRes> get nextServiceId;
  CopyWith_Input_PersonsServicesBoolExp<TRes> get persons;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYearFrom;
  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearFromId;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYearTo;
  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearToId;
}

class _CopyWithImpl_Input_ServicesBoolExp<TRes>
    implements CopyWith_Input_ServicesBoolExp<TRes> {
  _CopyWithImpl_Input_ServicesBoolExp(
    this._instance,
    this._then,
  );

  final Input_ServicesBoolExp _instance;

  final TRes Function(Input_ServicesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminUsers = _undefined,
    Object? attendanceDaysConstraints = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? classes = _undefined,
    Object? classesAggregate = _undefined,
    Object? color = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? groups = _undefined,
    Object? groupsAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? nextService = _undefined,
    Object? nextServiceId = _undefined,
    Object? persons = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearTo = _undefined,
    Object? studyYearToId = _undefined,
  }) =>
      _then(Input_ServicesBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_ServicesBoolExp>?),
        if ($_not != _undefined) '_not': ($_not as Input_ServicesBoolExp?),
        if ($_or != _undefined) '_or': ($_or as List<Input_ServicesBoolExp>?),
        if (adminUsers != _undefined)
          'adminUsers': (adminUsers as Input_AuthUsersAdminOnBoolExp?),
        if (attendanceDaysConstraints != _undefined)
          'attendanceDaysConstraints': (attendanceDaysConstraints
              as Input_HistoryAttendanceDaysConstraintsBoolExp?),
        if (attendanceDaysConstraintsAggregate != _undefined)
          'attendanceDaysConstraintsAggregate':
              (attendanceDaysConstraintsAggregate
                  as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?),
        if (attendanceHistory != _undefined)
          'attendanceHistory':
              (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
        if (attendanceHistoryAggregate != _undefined)
          'attendanceHistoryAggregate': (attendanceHistoryAggregate
              as Input_HistoryAttendanceHistoryAggregateBoolExp?),
        if (blurhash != _undefined)
          'blurhash': (blurhash as Input_StringComparisonExp?),
        if (classes != _undefined)
          'classes': (classes as Input_ClassesBoolExp?),
        if (classesAggregate != _undefined)
          'classesAggregate':
              (classesAggregate as Input_ClassesAggregateBoolExp?),
        if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
        if (editHistory != _undefined)
          'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
        if (editHistoryAggregate != _undefined)
          'editHistoryAggregate': (editHistoryAggregate
              as Input_HistoryEditHistoryAggregateBoolExp?),
        if (groups != _undefined) 'groups': (groups as Input_GroupsBoolExp?),
        if (groupsAggregate != _undefined)
          'groupsAggregate': (groupsAggregate as Input_GroupsAggregateBoolExp?),
        if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
        if (lastEdit != _undefined)
          'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
        if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
        if (nextService != _undefined)
          'nextService': (nextService as Input_ServicesBoolExp?),
        if (nextServiceId != _undefined)
          'nextServiceId': (nextServiceId as Input_UuidComparisonExp?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsServicesBoolExp?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
        if (studyYearFrom != _undefined)
          'studyYearFrom': (studyYearFrom as Input_StudyYearsBoolExp?),
        if (studyYearFromId != _undefined)
          'studyYearFromId': (studyYearFromId as Input_SmallintComparisonExp?),
        if (studyYearTo != _undefined)
          'studyYearTo': (studyYearTo as Input_StudyYearsBoolExp?),
        if (studyYearToId != _undefined)
          'studyYearToId': (studyYearToId as Input_SmallintComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_ServicesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_ServicesBoolExp<Input_ServicesBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and?.map((e) => CopyWith_Input_ServicesBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_ServicesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_ServicesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_ServicesBoolExp<Input_ServicesBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith_Input_ServicesBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$adminUsers, (e) => call(adminUsers: e));
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
      get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e));
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
      get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$attendanceHistory, (e) => call(attendanceHistory: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
      get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash, (e) => call(blurhash: e));
  }

  CopyWith_Input_ClassesBoolExp<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$classes, (e) => call(classes: e));
  }

  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateBoolExp(
            local$classesAggregate, (e) => call(classesAggregate: e));
  }

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color, (e) => call(color: e));
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory {
    final local$editHistory = _instance.editHistory;
    return local$editHistory == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistory, (e) => call(editHistory: e));
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith_Input_GroupsBoolExp<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$groups, (e) => call(groups: e));
  }

  CopyWith_Input_GroupsAggregateBoolExp<TRes> get groupsAggregate {
    final local$groupsAggregate = _instance.groupsAggregate;
    return local$groupsAggregate == null
        ? CopyWith_Input_GroupsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsAggregateBoolExp(
            local$groupsAggregate, (e) => call(groupsAggregate: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_ServicesBoolExp<TRes> get nextService {
    final local$nextService = _instance.nextService;
    return local$nextService == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$nextService, (e) => call(nextService: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get nextServiceId {
    final local$nextServiceId = _instance.nextServiceId;
    return local$nextServiceId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$nextServiceId, (e) => call(nextServiceId: e));
  }

  CopyWith_Input_PersonsServicesBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesBoolExp(
            local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$photoUpdatedAt, (e) => call(photoUpdatedAt: e));
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearFromId {
    final local$studyYearFromId = _instance.studyYearFromId;
    return local$studyYearFromId == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$studyYearFromId, (e) => call(studyYearFromId: e));
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearToId {
    final local$studyYearToId = _instance.studyYearToId;
    return local$studyYearToId == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$studyYearToId, (e) => call(studyYearToId: e));
  }
}

class _CopyWithStubImpl_Input_ServicesBoolExp<TRes>
    implements CopyWith_Input_ServicesBoolExp<TRes> {
  _CopyWithStubImpl_Input_ServicesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ServicesBoolExp>? $_and,
    Input_ServicesBoolExp? $_not,
    List<Input_ServicesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
        attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_GroupsBoolExp? groups,
    Input_GroupsAggregateBoolExp? groupsAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_ServicesBoolExp? nextService,
    Input_UuidComparisonExp? nextServiceId,
    Input_PersonsServicesBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StudyYearsBoolExp? studyYearFrom,
    Input_SmallintComparisonExp? studyYearFromId,
    Input_StudyYearsBoolExp? studyYearTo,
    Input_SmallintComparisonExp? studyYearToId,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_ServicesBoolExp<TRes> get $_not =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
      get attendanceDaysConstraints =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
              _res);

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_ClassesBoolExp<TRes> get classes =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateBoolExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate =>
          CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get groups =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_GroupsAggregateBoolExp<TRes> get groupsAggregate =>
      CopyWith_Input_GroupsAggregateBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get nextService =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get nextServiceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsServicesBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsServicesBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYearFrom =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearFromId =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYearTo =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearToId =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);
}

class Input_ServicesIncInput {
  factory Input_ServicesIncInput({
    int? color,
    int? studyYearFromId,
    int? studyYearToId,
  }) =>
      Input_ServicesIncInput._({
        if (color != null) r'color': color,
        if (studyYearFromId != null) r'studyYearFromId': studyYearFromId,
        if (studyYearToId != null) r'studyYearToId': studyYearToId,
      });

  Input_ServicesIncInput._(this._$data);

  factory Input_ServicesIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = data['studyYearFromId'];
      result$data['studyYearFromId'] = (l$studyYearFromId as int?);
    }
    if (data.containsKey('studyYearToId')) {
      final l$studyYearToId = data['studyYearToId'];
      result$data['studyYearToId'] = (l$studyYearToId as int?);
    }
    return Input_ServicesIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  int? get studyYearFromId => (_$data['studyYearFromId'] as int?);

  int? get studyYearToId => (_$data['studyYearToId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = studyYearFromId;
      result$data['studyYearFromId'] = l$studyYearFromId;
    }
    if (_$data.containsKey('studyYearToId')) {
      final l$studyYearToId = studyYearToId;
      result$data['studyYearToId'] = l$studyYearToId;
    }
    return result$data;
  }

  CopyWith_Input_ServicesIncInput<Input_ServicesIncInput> get copyWith =>
      CopyWith_Input_ServicesIncInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesIncInput || runtimeType != other.runtimeType) {
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
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (_$data.containsKey('studyYearFromId') !=
        other._$data.containsKey('studyYearFromId')) {
      return false;
    }
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (_$data.containsKey('studyYearToId') !=
        other._$data.containsKey('studyYearToId')) {
      return false;
    }
    if (l$studyYearToId != lOther$studyYearToId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearToId = studyYearToId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('studyYearFromId') ? l$studyYearFromId : const {},
      _$data.containsKey('studyYearToId') ? l$studyYearToId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ServicesIncInput<TRes> {
  factory CopyWith_Input_ServicesIncInput(
    Input_ServicesIncInput instance,
    TRes Function(Input_ServicesIncInput) then,
  ) = _CopyWithImpl_Input_ServicesIncInput;

  factory CopyWith_Input_ServicesIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesIncInput;

  TRes call({
    int? color,
    int? studyYearFromId,
    int? studyYearToId,
  });
}

class _CopyWithImpl_Input_ServicesIncInput<TRes>
    implements CopyWith_Input_ServicesIncInput<TRes> {
  _CopyWithImpl_Input_ServicesIncInput(
    this._instance,
    this._then,
  );

  final Input_ServicesIncInput _instance;

  final TRes Function(Input_ServicesIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearToId = _undefined,
  }) =>
      _then(Input_ServicesIncInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
        if (studyYearFromId != _undefined)
          'studyYearFromId': (studyYearFromId as int?),
        if (studyYearToId != _undefined)
          'studyYearToId': (studyYearToId as int?),
      }));
}

class _CopyWithStubImpl_Input_ServicesIncInput<TRes>
    implements CopyWith_Input_ServicesIncInput<TRes> {
  _CopyWithStubImpl_Input_ServicesIncInput(this._res);

  TRes _res;

  call({
    int? color,
    int? studyYearFromId,
    int? studyYearToId,
  }) =>
      _res;
}

class Input_ServicesInsertInput {
  factory Input_ServicesInsertInput({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
        attendanceDaysConstraints,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_ClassesArrRelInsertInput? classes,
    int? color,
    Input_GroupsArrRelInsertInput? groups,
    String? name,
    Input_ServicesObjRelInsertInput? nextService,
    UuidValue? nextServiceId,
    Input_PersonsServicesArrRelInsertInput? persons,
    Input_StudyYearsObjRelInsertInput? studyYearFrom,
    int? studyYearFromId,
    Input_StudyYearsObjRelInsertInput? studyYearTo,
    int? studyYearToId,
  }) =>
      Input_ServicesInsertInput._({
        if (adminUsers != null) r'adminUsers': adminUsers,
        if (attendanceDaysConstraints != null)
          r'attendanceDaysConstraints': attendanceDaysConstraints,
        if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
        if (classes != null) r'classes': classes,
        if (color != null) r'color': color,
        if (groups != null) r'groups': groups,
        if (name != null) r'name': name,
        if (nextService != null) r'nextService': nextService,
        if (nextServiceId != null) r'nextServiceId': nextServiceId,
        if (persons != null) r'persons': persons,
        if (studyYearFrom != null) r'studyYearFrom': studyYearFrom,
        if (studyYearFromId != null) r'studyYearFromId': studyYearFromId,
        if (studyYearTo != null) r'studyYearTo': studyYearTo,
        if (studyYearToId != null) r'studyYearToId': studyYearToId,
      });

  Input_ServicesInsertInput._(this._$data);

  factory Input_ServicesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnArrRelInsertInput.fromJson(
              (l$adminUsers as Map<String, dynamic>));
    }
    if (data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = data['attendanceDaysConstraints'];
      result$data['attendanceDaysConstraints'] = l$attendanceDaysConstraints ==
              null
          ? null
          : Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              (l$attendanceDaysConstraints as Map<String, dynamic>));
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>));
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesArrRelInsertInput.fromJson(
              (l$classes as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input_GroupsArrRelInsertInput.fromJson(
              (l$groups as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nextService')) {
      final l$nextService = data['nextService'];
      result$data['nextService'] = l$nextService == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$nextService as Map<String, dynamic>));
    }
    if (data.containsKey('nextServiceId')) {
      final l$nextServiceId = data['nextServiceId'];
      result$data['nextServiceId'] =
          l$nextServiceId == null ? null : stringToUuid(l$nextServiceId);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsServicesArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = data['studyYearFrom'];
      result$data['studyYearFrom'] = l$studyYearFrom == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYearFrom as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = data['studyYearFromId'];
      result$data['studyYearFromId'] = (l$studyYearFromId as int?);
    }
    if (data.containsKey('studyYearTo')) {
      final l$studyYearTo = data['studyYearTo'];
      result$data['studyYearTo'] = l$studyYearTo == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYearTo as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearToId')) {
      final l$studyYearToId = data['studyYearToId'];
      result$data['studyYearToId'] = (l$studyYearToId as int?);
    }
    return Input_ServicesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnArrRelInsertInput? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnArrRelInsertInput?);

  Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
      get attendanceDaysConstraints => (_$data['attendanceDaysConstraints']
          as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?);

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  Input_ClassesArrRelInsertInput? get classes =>
      (_$data['classes'] as Input_ClassesArrRelInsertInput?);

  int? get color => (_$data['color'] as int?);

  Input_GroupsArrRelInsertInput? get groups =>
      (_$data['groups'] as Input_GroupsArrRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  Input_ServicesObjRelInsertInput? get nextService =>
      (_$data['nextService'] as Input_ServicesObjRelInsertInput?);

  UuidValue? get nextServiceId => (_$data['nextServiceId'] as UuidValue?);

  Input_PersonsServicesArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsServicesArrRelInsertInput?);

  Input_StudyYearsObjRelInsertInput? get studyYearFrom =>
      (_$data['studyYearFrom'] as Input_StudyYearsObjRelInsertInput?);

  int? get studyYearFromId => (_$data['studyYearFromId'] as int?);

  Input_StudyYearsObjRelInsertInput? get studyYearTo =>
      (_$data['studyYearTo'] as Input_StudyYearsObjRelInsertInput?);

  int? get studyYearToId => (_$data['studyYearToId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = attendanceDaysConstraints;
      result$data['attendanceDaysConstraints'] =
          l$attendanceDaysConstraints?.toJson();
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nextService')) {
      final l$nextService = nextService;
      result$data['nextService'] = l$nextService?.toJson();
    }
    if (_$data.containsKey('nextServiceId')) {
      final l$nextServiceId = nextServiceId;
      result$data['nextServiceId'] =
          l$nextServiceId == null ? null : uuidToString(l$nextServiceId);
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = studyYearFrom;
      result$data['studyYearFrom'] = l$studyYearFrom?.toJson();
    }
    if (_$data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = studyYearFromId;
      result$data['studyYearFromId'] = l$studyYearFromId;
    }
    if (_$data.containsKey('studyYearTo')) {
      final l$studyYearTo = studyYearTo;
      result$data['studyYearTo'] = l$studyYearTo?.toJson();
    }
    if (_$data.containsKey('studyYearToId')) {
      final l$studyYearToId = studyYearToId;
      result$data['studyYearToId'] = l$studyYearToId;
    }
    return result$data;
  }

  CopyWith_Input_ServicesInsertInput<Input_ServicesInsertInput> get copyWith =>
      CopyWith_Input_ServicesInsertInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
      return false;
    }
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final lOther$attendanceDaysConstraints = other.attendanceDaysConstraints;
    if (_$data.containsKey('attendanceDaysConstraints') !=
        other._$data.containsKey('attendanceDaysConstraints')) {
      return false;
    }
    if (l$attendanceDaysConstraints != lOther$attendanceDaysConstraints) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
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
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != lOther$groups) {
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
    final l$nextService = nextService;
    final lOther$nextService = other.nextService;
    if (_$data.containsKey('nextService') !=
        other._$data.containsKey('nextService')) {
      return false;
    }
    if (l$nextService != lOther$nextService) {
      return false;
    }
    final l$nextServiceId = nextServiceId;
    final lOther$nextServiceId = other.nextServiceId;
    if (_$data.containsKey('nextServiceId') !=
        other._$data.containsKey('nextServiceId')) {
      return false;
    }
    if (l$nextServiceId != lOther$nextServiceId) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (_$data.containsKey('studyYearFrom') !=
        other._$data.containsKey('studyYearFrom')) {
      return false;
    }
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (_$data.containsKey('studyYearFromId') !=
        other._$data.containsKey('studyYearFromId')) {
      return false;
    }
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (_$data.containsKey('studyYearTo') !=
        other._$data.containsKey('studyYearTo')) {
      return false;
    }
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (_$data.containsKey('studyYearToId') !=
        other._$data.containsKey('studyYearToId')) {
      return false;
    }
    if (l$studyYearToId != lOther$studyYearToId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminUsers = adminUsers;
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final l$attendanceHistory = attendanceHistory;
    final l$classes = classes;
    final l$color = color;
    final l$groups = groups;
    final l$name = name;
    final l$nextService = nextService;
    final l$nextServiceId = nextServiceId;
    final l$persons = persons;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearTo = studyYearTo;
    final l$studyYearToId = studyYearToId;
    return Object.hashAll([
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('attendanceDaysConstraints')
          ? l$attendanceDaysConstraints
          : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nextService') ? l$nextService : const {},
      _$data.containsKey('nextServiceId') ? l$nextServiceId : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('studyYearFrom') ? l$studyYearFrom : const {},
      _$data.containsKey('studyYearFromId') ? l$studyYearFromId : const {},
      _$data.containsKey('studyYearTo') ? l$studyYearTo : const {},
      _$data.containsKey('studyYearToId') ? l$studyYearToId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ServicesInsertInput<TRes> {
  factory CopyWith_Input_ServicesInsertInput(
    Input_ServicesInsertInput instance,
    TRes Function(Input_ServicesInsertInput) then,
  ) = _CopyWithImpl_Input_ServicesInsertInput;

  factory CopyWith_Input_ServicesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesInsertInput;

  TRes call({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
        attendanceDaysConstraints,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_ClassesArrRelInsertInput? classes,
    int? color,
    Input_GroupsArrRelInsertInput? groups,
    String? name,
    Input_ServicesObjRelInsertInput? nextService,
    UuidValue? nextServiceId,
    Input_PersonsServicesArrRelInsertInput? persons,
    Input_StudyYearsObjRelInsertInput? studyYearFrom,
    int? studyYearFromId,
    Input_StudyYearsObjRelInsertInput? studyYearTo,
    int? studyYearToId,
  });
  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers;
  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
      get attendanceDaysConstraints;
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
      get attendanceHistory;
  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes;
  CopyWith_Input_GroupsArrRelInsertInput<TRes> get groups;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get nextService;
  CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> get persons;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYearFrom;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYearTo;
}

class _CopyWithImpl_Input_ServicesInsertInput<TRes>
    implements CopyWith_Input_ServicesInsertInput<TRes> {
  _CopyWithImpl_Input_ServicesInsertInput(
    this._instance,
    this._then,
  );

  final Input_ServicesInsertInput _instance;

  final TRes Function(Input_ServicesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminUsers = _undefined,
    Object? attendanceDaysConstraints = _undefined,
    Object? attendanceHistory = _undefined,
    Object? classes = _undefined,
    Object? color = _undefined,
    Object? groups = _undefined,
    Object? name = _undefined,
    Object? nextService = _undefined,
    Object? nextServiceId = _undefined,
    Object? persons = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearTo = _undefined,
    Object? studyYearToId = _undefined,
  }) =>
      _then(Input_ServicesInsertInput._({
        ..._instance._$data,
        if (adminUsers != _undefined)
          'adminUsers':
              (adminUsers as Input_AuthUsersAdminOnArrRelInsertInput?),
        if (attendanceDaysConstraints != _undefined)
          'attendanceDaysConstraints': (attendanceDaysConstraints
              as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?),
        if (attendanceHistory != _undefined)
          'attendanceHistory': (attendanceHistory
              as Input_HistoryAttendanceHistoryArrRelInsertInput?),
        if (classes != _undefined)
          'classes': (classes as Input_ClassesArrRelInsertInput?),
        if (color != _undefined) 'color': (color as int?),
        if (groups != _undefined)
          'groups': (groups as Input_GroupsArrRelInsertInput?),
        if (name != _undefined) 'name': (name as String?),
        if (nextService != _undefined)
          'nextService': (nextService as Input_ServicesObjRelInsertInput?),
        if (nextServiceId != _undefined)
          'nextServiceId': (nextServiceId as UuidValue?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsServicesArrRelInsertInput?),
        if (studyYearFrom != _undefined)
          'studyYearFrom':
              (studyYearFrom as Input_StudyYearsObjRelInsertInput?),
        if (studyYearFromId != _undefined)
          'studyYearFromId': (studyYearFromId as int?),
        if (studyYearTo != _undefined)
          'studyYearTo': (studyYearTo as Input_StudyYearsObjRelInsertInput?),
        if (studyYearToId != _undefined)
          'studyYearToId': (studyYearToId as int?),
      }));

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
            local$adminUsers, (e) => call(adminUsers: e));
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
      get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
      get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            local$attendanceHistory, (e) => call(attendanceHistory: e));
  }

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ClassesArrRelInsertInput(
            local$classes, (e) => call(classes: e));
  }

  CopyWith_Input_GroupsArrRelInsertInput<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Input_GroupsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsArrRelInsertInput(
            local$groups, (e) => call(groups: e));
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get nextService {
    final local$nextService = _instance.nextService;
    return local$nextService == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$nextService, (e) => call(nextService: e));
  }

  CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsServicesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesArrRelInsertInput(
            local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }
}

class _CopyWithStubImpl_Input_ServicesInsertInput<TRes>
    implements CopyWith_Input_ServicesInsertInput<TRes> {
  _CopyWithStubImpl_Input_ServicesInsertInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
        attendanceDaysConstraints,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_ClassesArrRelInsertInput? classes,
    int? color,
    Input_GroupsArrRelInsertInput? groups,
    String? name,
    Input_ServicesObjRelInsertInput? nextService,
    UuidValue? nextServiceId,
    Input_PersonsServicesArrRelInsertInput? persons,
    Input_StudyYearsObjRelInsertInput? studyYearFrom,
    int? studyYearFromId,
    Input_StudyYearsObjRelInsertInput? studyYearTo,
    int? studyYearToId,
  }) =>
      _res;

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
      get attendanceDaysConstraints =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
              _res);

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
      get attendanceHistory =>
          CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes =>
      CopyWith_Input_ClassesArrRelInsertInput.stub(_res);

  CopyWith_Input_GroupsArrRelInsertInput<TRes> get groups =>
      CopyWith_Input_GroupsArrRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get nextService =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsServicesArrRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYearFrom =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYearTo =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);
}

class Input_ServicesObjRelInsertInput {
  factory Input_ServicesObjRelInsertInput({
    required Input_ServicesInsertInput data,
    Input_ServicesOnConflict? onConflict,
  }) =>
      Input_ServicesObjRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_ServicesObjRelInsertInput._(this._$data);

  factory Input_ServicesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input_ServicesInsertInput.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_ServicesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_ServicesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ServicesInsertInput get data =>
      (_$data['data'] as Input_ServicesInsertInput);

  Input_ServicesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_ServicesOnConflict?);

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

  CopyWith_Input_ServicesObjRelInsertInput<Input_ServicesObjRelInsertInput>
      get copyWith => CopyWith_Input_ServicesObjRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesObjRelInsertInput ||
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

abstract class CopyWith_Input_ServicesObjRelInsertInput<TRes> {
  factory CopyWith_Input_ServicesObjRelInsertInput(
    Input_ServicesObjRelInsertInput instance,
    TRes Function(Input_ServicesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_ServicesObjRelInsertInput;

  factory CopyWith_Input_ServicesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesObjRelInsertInput;

  TRes call({
    Input_ServicesInsertInput? data,
    Input_ServicesOnConflict? onConflict,
  });
  CopyWith_Input_ServicesInsertInput<TRes> get data;
  CopyWith_Input_ServicesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_ServicesObjRelInsertInput<TRes>
    implements CopyWith_Input_ServicesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_ServicesObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_ServicesObjRelInsertInput _instance;

  final TRes Function(Input_ServicesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_ServicesObjRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input_ServicesInsertInput),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_ServicesOnConflict?),
      }));

  CopyWith_Input_ServicesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_ServicesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_ServicesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_ServicesOnConflict.stub(_then(_instance))
        : CopyWith_Input_ServicesOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_ServicesObjRelInsertInput<TRes>
    implements CopyWith_Input_ServicesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_ServicesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_ServicesInsertInput? data,
    Input_ServicesOnConflict? onConflict,
  }) =>
      _res;

  CopyWith_Input_ServicesInsertInput<TRes> get data =>
      CopyWith_Input_ServicesInsertInput.stub(_res);

  CopyWith_Input_ServicesOnConflict<TRes> get onConflict =>
      CopyWith_Input_ServicesOnConflict.stub(_res);
}

class Input_ServicesOnConflict {
  factory Input_ServicesOnConflict({
    required Enum_ServicesConstraint constraint,
    List<Enum_ServicesUpdateColumn>? updateColumns,
    Input_ServicesBoolExp? where,
  }) =>
      Input_ServicesOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_ServicesOnConflict._(this._$data);

  factory Input_ServicesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_ServicesConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_ServicesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_ServicesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ServicesConstraint get constraint =>
      (_$data['constraint'] as Enum_ServicesConstraint);

  List<Enum_ServicesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_ServicesUpdateColumn>?);

  Input_ServicesBoolExp? get where =>
      (_$data['where'] as Input_ServicesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_ServicesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_ServicesUpdateColumn>)
              .map((e) => toJson_Enum_ServicesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ServicesOnConflict<Input_ServicesOnConflict> get copyWith =>
      CopyWith_Input_ServicesOnConflict(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesOnConflict ||
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

abstract class CopyWith_Input_ServicesOnConflict<TRes> {
  factory CopyWith_Input_ServicesOnConflict(
    Input_ServicesOnConflict instance,
    TRes Function(Input_ServicesOnConflict) then,
  ) = _CopyWithImpl_Input_ServicesOnConflict;

  factory CopyWith_Input_ServicesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesOnConflict;

  TRes call({
    Enum_ServicesConstraint? constraint,
    List<Enum_ServicesUpdateColumn>? updateColumns,
    Input_ServicesBoolExp? where,
  });
  CopyWith_Input_ServicesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ServicesOnConflict<TRes>
    implements CopyWith_Input_ServicesOnConflict<TRes> {
  _CopyWithImpl_Input_ServicesOnConflict(
    this._instance,
    this._then,
  );

  final Input_ServicesOnConflict _instance;

  final TRes Function(Input_ServicesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_ServicesOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_ServicesConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns': (updateColumns as List<Enum_ServicesUpdateColumn>),
        if (where != _undefined) 'where': (where as Input_ServicesBoolExp?),
      }));

  CopyWith_Input_ServicesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ServicesOnConflict<TRes>
    implements CopyWith_Input_ServicesOnConflict<TRes> {
  _CopyWithStubImpl_Input_ServicesOnConflict(this._res);

  TRes _res;

  call({
    Enum_ServicesConstraint? constraint,
    List<Enum_ServicesUpdateColumn>? updateColumns,
    Input_ServicesBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_ServicesBoolExp<TRes> get where =>
      CopyWith_Input_ServicesBoolExp.stub(_res);
}

class Input_ServicesOrderBy {
  factory Input_ServicesOrderBy({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
        attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_GroupsAggregateOrderBy? groupsAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_ServicesOrderBy? nextService,
    Enum_OrderBy? nextServiceId,
    Input_PersonsServicesAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_StudyYearsOrderBy? studyYearFrom,
    Enum_OrderBy? studyYearFromId,
    Input_StudyYearsOrderBy? studyYearTo,
    Enum_OrderBy? studyYearToId,
  }) =>
      Input_ServicesOrderBy._({
        if (adminUsersAggregate != null)
          r'adminUsersAggregate': adminUsersAggregate,
        if (attendanceDaysConstraintsAggregate != null)
          r'attendanceDaysConstraintsAggregate':
              attendanceDaysConstraintsAggregate,
        if (attendanceHistoryAggregate != null)
          r'attendanceHistoryAggregate': attendanceHistoryAggregate,
        if (blurhash != null) r'blurhash': blurhash,
        if (classesAggregate != null) r'classesAggregate': classesAggregate,
        if (color != null) r'color': color,
        if (editHistoryAggregate != null)
          r'editHistoryAggregate': editHistoryAggregate,
        if (groupsAggregate != null) r'groupsAggregate': groupsAggregate,
        if (id != null) r'id': id,
        if (lastEdit != null) r'lastEdit': lastEdit,
        if (name != null) r'name': name,
        if (nextService != null) r'nextService': nextService,
        if (nextServiceId != null) r'nextServiceId': nextServiceId,
        if (personsAggregate != null) r'personsAggregate': personsAggregate,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (studyYearFrom != null) r'studyYearFrom': studyYearFrom,
        if (studyYearFromId != null) r'studyYearFromId': studyYearFromId,
        if (studyYearTo != null) r'studyYearTo': studyYearTo,
        if (studyYearToId != null) r'studyYearToId': studyYearToId,
      });

  Input_ServicesOrderBy._(this._$data);

  factory Input_ServicesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = data['adminUsersAggregate'];
      result$data['adminUsersAggregate'] = l$adminUsersAggregate == null
          ? null
          : Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
              (l$adminUsersAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          data['attendanceDaysConstraintsAggregate'];
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate == null
              ? null
              : Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.fromJson(
                  (l$attendanceDaysConstraintsAggregate
                      as Map<String, dynamic>));
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
              ? null
              : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
                  (l$attendanceHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateOrderBy.fromJson(
              (l$classesAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateOrderBy.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('groupsAggregate')) {
      final l$groupsAggregate = data['groupsAggregate'];
      result$data['groupsAggregate'] = l$groupsAggregate == null
          ? null
          : Input_GroupsAggregateOrderBy.fromJson(
              (l$groupsAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('nextService')) {
      final l$nextService = data['nextService'];
      result$data['nextService'] = l$nextService == null
          ? null
          : Input_ServicesOrderBy.fromJson(
              (l$nextService as Map<String, dynamic>));
    }
    if (data.containsKey('nextServiceId')) {
      final l$nextServiceId = data['nextServiceId'];
      result$data['nextServiceId'] = l$nextServiceId == null
          ? null
          : fromJson_Enum_OrderBy((l$nextServiceId as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsServicesAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = data['studyYearFrom'];
      result$data['studyYearFrom'] = l$studyYearFrom == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYearFrom as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = data['studyYearFromId'];
      result$data['studyYearFromId'] = l$studyYearFromId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearFromId as String));
    }
    if (data.containsKey('studyYearTo')) {
      final l$studyYearTo = data['studyYearTo'];
      result$data['studyYearTo'] = l$studyYearTo == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYearTo as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearToId')) {
      final l$studyYearToId = data['studyYearToId'];
      result$data['studyYearToId'] = l$studyYearToId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearToId as String));
    }
    return Input_ServicesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnAggregateOrderBy? get adminUsersAggregate =>
      (_$data['adminUsersAggregate']
          as Input_AuthUsersAdminOnAggregateOrderBy?);

  Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
      get attendanceDaysConstraintsAggregate =>
          (_$data['attendanceDaysConstraintsAggregate']
              as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?);

  Input_HistoryAttendanceHistoryAggregateOrderBy?
      get attendanceHistoryAggregate => (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Input_ClassesAggregateOrderBy? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateOrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Input_GroupsAggregateOrderBy? get groupsAggregate =>
      (_$data['groupsAggregate'] as Input_GroupsAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get nextService =>
      (_$data['nextService'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get nextServiceId => (_$data['nextServiceId'] as Enum_OrderBy?);

  Input_PersonsServicesAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsServicesAggregateOrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYearFrom =>
      (_$data['studyYearFrom'] as Input_StudyYearsOrderBy?);

  Enum_OrderBy? get studyYearFromId =>
      (_$data['studyYearFromId'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYearTo =>
      (_$data['studyYearTo'] as Input_StudyYearsOrderBy?);

  Enum_OrderBy? get studyYearToId => (_$data['studyYearToId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = adminUsersAggregate;
      result$data['adminUsersAggregate'] = l$adminUsersAggregate?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          attendanceDaysConstraintsAggregate;
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] =
          l$blurhash == null ? null : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('groupsAggregate')) {
      final l$groupsAggregate = groupsAggregate;
      result$data['groupsAggregate'] = l$groupsAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('nextService')) {
      final l$nextService = nextService;
      result$data['nextService'] = l$nextService?.toJson();
    }
    if (_$data.containsKey('nextServiceId')) {
      final l$nextServiceId = nextServiceId;
      result$data['nextServiceId'] =
          l$nextServiceId == null ? null : toJson_Enum_OrderBy(l$nextServiceId);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = studyYearFrom;
      result$data['studyYearFrom'] = l$studyYearFrom?.toJson();
    }
    if (_$data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = studyYearFromId;
      result$data['studyYearFromId'] = l$studyYearFromId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearFromId);
    }
    if (_$data.containsKey('studyYearTo')) {
      final l$studyYearTo = studyYearTo;
      result$data['studyYearTo'] = l$studyYearTo?.toJson();
    }
    if (_$data.containsKey('studyYearToId')) {
      final l$studyYearToId = studyYearToId;
      result$data['studyYearToId'] =
          l$studyYearToId == null ? null : toJson_Enum_OrderBy(l$studyYearToId);
    }
    return result$data;
  }

  CopyWith_Input_ServicesOrderBy<Input_ServicesOrderBy> get copyWith =>
      CopyWith_Input_ServicesOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminUsersAggregate = adminUsersAggregate;
    final lOther$adminUsersAggregate = other.adminUsersAggregate;
    if (_$data.containsKey('adminUsersAggregate') !=
        other._$data.containsKey('adminUsersAggregate')) {
      return false;
    }
    if (l$adminUsersAggregate != lOther$adminUsersAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (_$data.containsKey('attendanceDaysConstraintsAggregate') !=
        other._$data.containsKey('attendanceDaysConstraintsAggregate')) {
      return false;
    }
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
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
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
      return false;
    }
    final l$groupsAggregate = groupsAggregate;
    final lOther$groupsAggregate = other.groupsAggregate;
    if (_$data.containsKey('groupsAggregate') !=
        other._$data.containsKey('groupsAggregate')) {
      return false;
    }
    if (l$groupsAggregate != lOther$groupsAggregate) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
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
    final l$nextService = nextService;
    final lOther$nextService = other.nextService;
    if (_$data.containsKey('nextService') !=
        other._$data.containsKey('nextService')) {
      return false;
    }
    if (l$nextService != lOther$nextService) {
      return false;
    }
    final l$nextServiceId = nextServiceId;
    final lOther$nextServiceId = other.nextServiceId;
    if (_$data.containsKey('nextServiceId') !=
        other._$data.containsKey('nextServiceId')) {
      return false;
    }
    if (l$nextServiceId != lOther$nextServiceId) {
      return false;
    }
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
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
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (_$data.containsKey('studyYearFrom') !=
        other._$data.containsKey('studyYearFrom')) {
      return false;
    }
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (_$data.containsKey('studyYearFromId') !=
        other._$data.containsKey('studyYearFromId')) {
      return false;
    }
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (_$data.containsKey('studyYearTo') !=
        other._$data.containsKey('studyYearTo')) {
      return false;
    }
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (_$data.containsKey('studyYearToId') !=
        other._$data.containsKey('studyYearToId')) {
      return false;
    }
    if (l$studyYearToId != lOther$studyYearToId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminUsersAggregate = adminUsersAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$blurhash = blurhash;
    final l$classesAggregate = classesAggregate;
    final l$color = color;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$groupsAggregate = groupsAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$nextService = nextService;
    final l$nextServiceId = nextServiceId;
    final l$personsAggregate = personsAggregate;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearTo = studyYearTo;
    final l$studyYearToId = studyYearToId;
    return Object.hashAll([
      _$data.containsKey('adminUsersAggregate')
          ? l$adminUsersAggregate
          : const {},
      _$data.containsKey('attendanceDaysConstraintsAggregate')
          ? l$attendanceDaysConstraintsAggregate
          : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('groupsAggregate') ? l$groupsAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nextService') ? l$nextService : const {},
      _$data.containsKey('nextServiceId') ? l$nextServiceId : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('studyYearFrom') ? l$studyYearFrom : const {},
      _$data.containsKey('studyYearFromId') ? l$studyYearFromId : const {},
      _$data.containsKey('studyYearTo') ? l$studyYearTo : const {},
      _$data.containsKey('studyYearToId') ? l$studyYearToId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ServicesOrderBy<TRes> {
  factory CopyWith_Input_ServicesOrderBy(
    Input_ServicesOrderBy instance,
    TRes Function(Input_ServicesOrderBy) then,
  ) = _CopyWithImpl_Input_ServicesOrderBy;

  factory CopyWith_Input_ServicesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesOrderBy;

  TRes call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
        attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_GroupsAggregateOrderBy? groupsAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_ServicesOrderBy? nextService,
    Enum_OrderBy? nextServiceId,
    Input_PersonsServicesAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_StudyYearsOrderBy? studyYearFrom,
    Enum_OrderBy? studyYearFromId,
    Input_StudyYearsOrderBy? studyYearTo,
    Enum_OrderBy? studyYearToId,
  });
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminUsersAggregate;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
      get attendanceDaysConstraintsAggregate;
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
      get attendanceHistoryAggregate;
  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate;
  CopyWith_Input_GroupsAggregateOrderBy<TRes> get groupsAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_ServicesOrderBy<TRes> get nextService;
  CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> get personsAggregate;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYearFrom;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYearTo;
}

class _CopyWithImpl_Input_ServicesOrderBy<TRes>
    implements CopyWith_Input_ServicesOrderBy<TRes> {
  _CopyWithImpl_Input_ServicesOrderBy(
    this._instance,
    this._then,
  );

  final Input_ServicesOrderBy _instance;

  final TRes Function(Input_ServicesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminUsersAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? classesAggregate = _undefined,
    Object? color = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? groupsAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? nextService = _undefined,
    Object? nextServiceId = _undefined,
    Object? personsAggregate = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearTo = _undefined,
    Object? studyYearToId = _undefined,
  }) =>
      _then(Input_ServicesOrderBy._({
        ..._instance._$data,
        if (adminUsersAggregate != _undefined)
          'adminUsersAggregate':
              (adminUsersAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
        if (attendanceDaysConstraintsAggregate != _undefined)
          'attendanceDaysConstraintsAggregate':
              (attendanceDaysConstraintsAggregate
                  as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?),
        if (attendanceHistoryAggregate != _undefined)
          'attendanceHistoryAggregate': (attendanceHistoryAggregate
              as Input_HistoryAttendanceHistoryAggregateOrderBy?),
        if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
        if (classesAggregate != _undefined)
          'classesAggregate':
              (classesAggregate as Input_ClassesAggregateOrderBy?),
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (editHistoryAggregate != _undefined)
          'editHistoryAggregate': (editHistoryAggregate
              as Input_HistoryEditHistoryAggregateOrderBy?),
        if (groupsAggregate != _undefined)
          'groupsAggregate': (groupsAggregate as Input_GroupsAggregateOrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (lastEdit != _undefined)
          'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
        if (nextService != _undefined)
          'nextService': (nextService as Input_ServicesOrderBy?),
        if (nextServiceId != _undefined)
          'nextServiceId': (nextServiceId as Enum_OrderBy?),
        if (personsAggregate != _undefined)
          'personsAggregate':
              (personsAggregate as Input_PersonsServicesAggregateOrderBy?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
        if (studyYearFrom != _undefined)
          'studyYearFrom': (studyYearFrom as Input_StudyYearsOrderBy?),
        if (studyYearFromId != _undefined)
          'studyYearFromId': (studyYearFromId as Enum_OrderBy?),
        if (studyYearTo != _undefined)
          'studyYearTo': (studyYearTo as Input_StudyYearsOrderBy?),
        if (studyYearToId != _undefined)
          'studyYearToId': (studyYearToId as Enum_OrderBy?),
      }));

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
      get adminUsersAggregate {
    final local$adminUsersAggregate = _instance.adminUsersAggregate;
    return local$adminUsersAggregate == null
        ? CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
            local$adminUsersAggregate, (e) => call(adminUsersAggregate: e));
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
      get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
      get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateOrderBy(
            local$classesAggregate, (e) => call(classesAggregate: e));
  }

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith_Input_GroupsAggregateOrderBy<TRes> get groupsAggregate {
    final local$groupsAggregate = _instance.groupsAggregate;
    return local$groupsAggregate == null
        ? CopyWith_Input_GroupsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsAggregateOrderBy(
            local$groupsAggregate, (e) => call(groupsAggregate: e));
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Input_ServicesOrderBy<TRes> get nextService {
    final local$nextService = _instance.nextService;
    return local$nextService == null
        ? CopyWith_Input_ServicesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ServicesOrderBy(
            local$nextService, (e) => call(nextService: e));
  }

  CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsServicesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesAggregateOrderBy(
            local$personsAggregate, (e) => call(personsAggregate: e));
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }
}

class _CopyWithStubImpl_Input_ServicesOrderBy<TRes>
    implements CopyWith_Input_ServicesOrderBy<TRes> {
  _CopyWithStubImpl_Input_ServicesOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
        attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_GroupsAggregateOrderBy? groupsAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_ServicesOrderBy? nextService,
    Enum_OrderBy? nextServiceId,
    Input_PersonsServicesAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_StudyYearsOrderBy? studyYearFrom,
    Enum_OrderBy? studyYearFromId,
    Input_StudyYearsOrderBy? studyYearTo,
    Enum_OrderBy? studyYearToId,
  }) =>
      _res;

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
      get adminUsersAggregate =>
          CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
              _res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate =>
          CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_GroupsAggregateOrderBy<TRes> get groupsAggregate =>
      CopyWith_Input_GroupsAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get nextService =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsServicesAggregateOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYearFrom =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYearTo =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_ServicesPkColumnsInput {
  factory Input_ServicesPkColumnsInput({required UuidValue id}) =>
      Input_ServicesPkColumnsInput._({
        r'id': id,
      });

  Input_ServicesPkColumnsInput._(this._$data);

  factory Input_ServicesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ServicesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ServicesPkColumnsInput<Input_ServicesPkColumnsInput>
      get copyWith => CopyWith_Input_ServicesPkColumnsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesPkColumnsInput ||
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
