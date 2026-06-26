// Part 31 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsObjRelInsertInput(
    Input_HistoryMeetingsObjRelInsertInput instance,
    TRes Function(Input_HistoryMeetingsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsObjRelInsertInput;

  factory CopyWith_Input_HistoryMeetingsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsObjRelInsertInput;

  TRes call({
    Input_HistoryMeetingsInsertInput? data,
    Input_HistoryMeetingsOnConflict? onConflict,
  });
  CopyWith_Input_HistoryMeetingsInsertInput<TRes> get data;
  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryMeetingsObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsObjRelInsertInput _instance;

  final TRes Function(Input_HistoryMeetingsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryMeetingsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_HistoryMeetingsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HistoryMeetingsOnConflict?),
        }),
      );

  CopyWith_Input_HistoryMeetingsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_HistoryMeetingsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryMeetingsOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsInsertInput? data,
    Input_HistoryMeetingsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_HistoryMeetingsInsertInput<TRes> get data =>
      CopyWith_Input_HistoryMeetingsInsertInput.stub(_res);

  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryMeetingsOnConflict.stub(_res);
}

class Input_HistoryMeetingsOnConflict {
  factory Input_HistoryMeetingsOnConflict({
    required Enum_HistoryMeetingsConstraint constraint,
    List<Enum_HistoryMeetingsUpdateColumn>? updateColumns,
    Input_HistoryMeetingsBoolExp? where,
  }) => Input_HistoryMeetingsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryMeetingsOnConflict._(this._$data);

  factory Input_HistoryMeetingsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryMeetingsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_HistoryMeetingsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryMeetingsConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryMeetingsConstraint);

  List<Enum_HistoryMeetingsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryMeetingsUpdateColumn>?);

  Input_HistoryMeetingsBoolExp? get where =>
      (_$data['where'] as Input_HistoryMeetingsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryMeetingsConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryMeetingsUpdateColumn>)
              .map((e) => toJson_Enum_HistoryMeetingsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsOnConflict<Input_HistoryMeetingsOnConflict>
  get copyWith => CopyWith_Input_HistoryMeetingsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsOnConflict ||
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

abstract class CopyWith_Input_HistoryMeetingsOnConflict<TRes> {
  factory CopyWith_Input_HistoryMeetingsOnConflict(
    Input_HistoryMeetingsOnConflict instance,
    TRes Function(Input_HistoryMeetingsOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsOnConflict;

  factory CopyWith_Input_HistoryMeetingsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsOnConflict;

  TRes call({
    Enum_HistoryMeetingsConstraint? constraint,
    List<Enum_HistoryMeetingsUpdateColumn>? updateColumns,
    Input_HistoryMeetingsBoolExp? where,
  });
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryMeetingsOnConflict<TRes>
    implements CopyWith_Input_HistoryMeetingsOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsOnConflict(this._instance, this._then);

  final Input_HistoryMeetingsOnConflict _instance;

  final TRes Function(Input_HistoryMeetingsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryMeetingsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryMeetingsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryMeetingsUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryMeetingsBoolExp?),
    }),
  );

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsOnConflict<TRes>
    implements CopyWith_Input_HistoryMeetingsOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryMeetingsConstraint? constraint,
    List<Enum_HistoryMeetingsUpdateColumn>? updateColumns,
    Input_HistoryMeetingsBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);
}

class Input_HistoryMeetingsOrderBy {
  factory Input_HistoryMeetingsOrderBy({
    Enum_OrderBy? archived,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) => Input_HistoryMeetingsOrderBy._({
    if (archived != null) r'archived': archived,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (audience != null) r'audience': audience,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_HistoryMeetingsOrderBy._(this._$data);

  factory Input_HistoryMeetingsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('archived')) {
      final l$archived = data['archived'];
      result$data['archived'] = l$archived == null
          ? null
          : fromJson_Enum_OrderBy((l$archived as String));
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_OrderBy((l$audience as String));
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
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
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
    return Input_HistoryMeetingsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get archived => (_$data['archived'] as Enum_OrderBy?);

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get audience => (_$data['audience'] as Enum_OrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

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
    if (_$data.containsKey('archived')) {
      final l$archived = archived;
      result$data['archived'] = l$archived == null
          ? null
          : toJson_Enum_OrderBy(l$archived);
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_OrderBy(l$audience);
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
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
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
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsOrderBy<Input_HistoryMeetingsOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archived = archived;
    final lOther$archived = other.archived;
    if (_$data.containsKey('archived') !=
        other._$data.containsKey('archived')) {
      return false;
    }
    if (l$archived != lOther$archived) {
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
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$archived = archived;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$audience = audience;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$name = name;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('archived') ? l$archived : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsOrderBy(
    Input_HistoryMeetingsOrderBy instance,
    TRes Function(Input_HistoryMeetingsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsOrderBy;

  factory CopyWith_Input_HistoryMeetingsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsOrderBy;

  TRes call({
    Enum_OrderBy? archived,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archived = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? audience = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsOrderBy._({
      ..._instance._$data,
      if (archived != _undefined) 'archived': (archived as Enum_OrderBy?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (audience != _undefined) 'audience': (audience as Enum_OrderBy?),
      if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsOrderBy?),
    }),
  );

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

class _CopyWithStubImpl_Input_HistoryMeetingsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? archived,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryMeetingsPkColumnsInput {
  factory Input_HistoryMeetingsPkColumnsInput({required UuidValue id}) =>
      Input_HistoryMeetingsPkColumnsInput._({r'id': id});

  Input_HistoryMeetingsPkColumnsInput._(this._$data);

  factory Input_HistoryMeetingsPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_HistoryMeetingsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPkColumnsInput<
    Input_HistoryMeetingsPkColumnsInput
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPkColumnsInput ||
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

abstract class CopyWith_Input_HistoryMeetingsPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsPkColumnsInput(
    Input_HistoryMeetingsPkColumnsInput instance,
    TRes Function(Input_HistoryMeetingsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPkColumnsInput;

  factory CopyWith_Input_HistoryMeetingsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_HistoryMeetingsPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryMeetingsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPkColumnsInput(this._instance, this._then);

  final Input_HistoryMeetingsPkColumnsInput _instance;

  final TRes Function(Input_HistoryMeetingsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_HistoryMeetingsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryMeetingsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_HistoryMeetingsSetInput {
  factory Input_HistoryMeetingsSetInput({
    bool? archived,
    String? audience,
    String? name,
  }) => Input_HistoryMeetingsSetInput._({
    if (archived != null) r'archived': archived,
    if (audience != null) r'audience': audience,
    if (name != null) r'name': name,
  });

  Input_HistoryMeetingsSetInput._(this._$data);

  factory Input_HistoryMeetingsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('archived')) {
      final l$archived = data['archived'];
      result$data['archived'] = (l$archived as bool?);
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_HistoryMeetingsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get archived => (_$data['archived'] as bool?);

  String? get audience => (_$data['audience'] as String?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('archived')) {
      final l$archived = archived;
      result$data['archived'] = l$archived;
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsSetInput<Input_HistoryMeetingsSetInput>
  get copyWith => CopyWith_Input_HistoryMeetingsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archived = archived;
    final lOther$archived = other.archived;
    if (_$data.containsKey('archived') !=
        other._$data.containsKey('archived')) {
      return false;
    }
    if (l$archived != lOther$archived) {
      return false;
    }
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$archived = archived;
    final l$audience = audience;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('archived') ? l$archived : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsSetInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsSetInput(
    Input_HistoryMeetingsSetInput instance,
    TRes Function(Input_HistoryMeetingsSetInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsSetInput;

  factory CopyWith_Input_HistoryMeetingsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsSetInput;

  TRes call({bool? archived, String? audience, String? name});
}

class _CopyWithImpl_Input_HistoryMeetingsSetInput<TRes>
    implements CopyWith_Input_HistoryMeetingsSetInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsSetInput(this._instance, this._then);

  final Input_HistoryMeetingsSetInput _instance;

  final TRes Function(Input_HistoryMeetingsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archived = _undefined,
    Object? audience = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_HistoryMeetingsSetInput._({
      ..._instance._$data,
      if (archived != _undefined) 'archived': (archived as bool?),
      if (audience != _undefined) 'audience': (audience as String?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsSetInput<TRes>
    implements CopyWith_Input_HistoryMeetingsSetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsSetInput(this._res);

  TRes _res;

  call({bool? archived, String? audience, String? name}) => _res;
}

class Input_HistoryMeetingsStddevOrderBy {
  factory Input_HistoryMeetingsStddevOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsStddevOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStddevOrderBy._(this._$data);

  factory Input_HistoryMeetingsStddevOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsStddevOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsStddevOrderBy<
    Input_HistoryMeetingsStddevOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStddevOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsStddevOrderBy(
    Input_HistoryMeetingsStddevOrderBy instance,
    TRes Function(Input_HistoryMeetingsStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStddevOrderBy;

  factory CopyWith_Input_HistoryMeetingsStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStddevOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStddevOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsStddevOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsStddevOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsStddevPopOrderBy {
  factory Input_HistoryMeetingsStddevPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsStddevPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStddevPopOrderBy._(this._$data);

  factory Input_HistoryMeetingsStddevPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsStddevPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsStddevPopOrderBy<
    Input_HistoryMeetingsStddevPopOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStddevPopOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsStddevPopOrderBy(
    Input_HistoryMeetingsStddevPopOrderBy instance,
    TRes Function(Input_HistoryMeetingsStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStddevPopOrderBy;

  factory CopyWith_Input_HistoryMeetingsStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStddevPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsStddevPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsStddevSampOrderBy {
  factory Input_HistoryMeetingsStddevSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsStddevSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStddevSampOrderBy._(this._$data);

  factory Input_HistoryMeetingsStddevSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsStddevSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsStddevSampOrderBy<
    Input_HistoryMeetingsStddevSampOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStddevSampOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsStddevSampOrderBy(
    Input_HistoryMeetingsStddevSampOrderBy instance,
    TRes Function(Input_HistoryMeetingsStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStddevSampOrderBy;

  factory CopyWith_Input_HistoryMeetingsStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStddevSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStddevSampOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsStddevSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsStreamCursorInput {
  factory Input_HistoryMeetingsStreamCursorInput({
    required Input_HistoryMeetingsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryMeetingsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryMeetingsStreamCursorInput._(this._$data);

  factory Input_HistoryMeetingsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryMeetingsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryMeetingsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_HistoryMeetingsStreamCursorValueInput);

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

  CopyWith_Input_HistoryMeetingsStreamCursorInput<
    Input_HistoryMeetingsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsStreamCursorInput(
    Input_HistoryMeetingsStreamCursorInput instance,
    TRes Function(Input_HistoryMeetingsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput;

  factory CopyWith_Input_HistoryMeetingsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput;

  TRes call({
    Input_HistoryMeetingsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStreamCursorInput _instance;

  final TRes Function(Input_HistoryMeetingsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryMeetingsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryMeetingsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryMeetingsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_HistoryMeetingsStreamCursorValueInput.stub(_res);
}

class Input_HistoryMeetingsStreamCursorValueInput {
  factory Input_HistoryMeetingsStreamCursorValueInput({
    bool? archived,
    String? audience,
    UuidValue? groupId,
    UuidValue? id,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => Input_HistoryMeetingsStreamCursorValueInput._({
    if (archived != null) r'archived': archived,
    if (audience != null) r'audience': audience,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStreamCursorValueInput._(this._$data);

  factory Input_HistoryMeetingsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('archived')) {
      final l$archived = data['archived'];
      result$data['archived'] = (l$archived as bool?);
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_HistoryMeetingsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get archived => (_$data['archived'] as bool?);

  String? get audience => (_$data['audience'] as String?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('archived')) {
      final l$archived = archived;
      result$data['archived'] = l$archived;
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<
    Input_HistoryMeetingsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archived = archived;
    final lOther$archived = other.archived;
    if (_$data.containsKey('archived') !=
        other._$data.containsKey('archived')) {
      return false;
    }
    if (l$archived != lOther$archived) {
      return false;
    }
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$archived = archived;
    final l$audience = audience;
    final l$groupId = groupId;
    final l$id = id;
    final l$name = name;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('archived') ? l$archived : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsStreamCursorValueInput(
    Input_HistoryMeetingsStreamCursorValueInput instance,
    TRes Function(Input_HistoryMeetingsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput;

  factory CopyWith_Input_HistoryMeetingsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput;

  TRes call({
    bool? archived,
    String? audience,
    UuidValue? groupId,
    UuidValue? id,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryMeetingsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archived = _undefined,
    Object? audience = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsStreamCursorValueInput._({
      ..._instance._$data,
      if (archived != _undefined) 'archived': (archived as bool?),
      if (audience != _undefined) 'audience': (audience as String?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    bool? archived,
    String? audience,
    UuidValue? groupId,
    UuidValue? id,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsSumOrderBy {
  factory Input_HistoryMeetingsSumOrderBy({Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryMeetingsSumOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryMeetingsSumOrderBy._(this._$data);

  factory Input_HistoryMeetingsSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsSumOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsSumOrderBy<Input_HistoryMeetingsSumOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsSumOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsSumOrderBy(
    Input_HistoryMeetingsSumOrderBy instance,
    TRes Function(Input_HistoryMeetingsSumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsSumOrderBy;

  factory CopyWith_Input_HistoryMeetingsSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsSumOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsSumOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsSumOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsUpdates {
  factory Input_HistoryMeetingsUpdates({
    Input_HistoryMeetingsSetInput? $_set,
    required Input_HistoryMeetingsBoolExp where,
  }) => Input_HistoryMeetingsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HistoryMeetingsUpdates._(this._$data);

  factory Input_HistoryMeetingsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryMeetingsSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryMeetingsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_HistoryMeetingsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsSetInput? get $_set =>
      (_$data['_set'] as Input_HistoryMeetingsSetInput?);

  Input_HistoryMeetingsBoolExp get where =>
      (_$data['where'] as Input_HistoryMeetingsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsUpdates<Input_HistoryMeetingsUpdates>
  get copyWith => CopyWith_Input_HistoryMeetingsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
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
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsUpdates<TRes> {
  factory CopyWith_Input_HistoryMeetingsUpdates(
    Input_HistoryMeetingsUpdates instance,
    TRes Function(Input_HistoryMeetingsUpdates) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsUpdates;

  factory CopyWith_Input_HistoryMeetingsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsUpdates;

  TRes call({
    Input_HistoryMeetingsSetInput? $_set,
    Input_HistoryMeetingsBoolExp? where,
  });
  CopyWith_Input_HistoryMeetingsSetInput<TRes> get $_set;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryMeetingsUpdates<TRes>
    implements CopyWith_Input_HistoryMeetingsUpdates<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsUpdates(this._instance, this._then);

  final Input_HistoryMeetingsUpdates _instance;

  final TRes Function(Input_HistoryMeetingsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_HistoryMeetingsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_HistoryMeetingsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_HistoryMeetingsBoolExp),
    }),
  );

  CopyWith_Input_HistoryMeetingsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryMeetingsSetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryMeetingsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsUpdates<TRes>
    implements CopyWith_Input_HistoryMeetingsUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsSetInput? $_set,
    Input_HistoryMeetingsBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryMeetingsSetInput<TRes> get $_set =>
      CopyWith_Input_HistoryMeetingsSetInput.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);
}

class Input_HistoryMeetingsVarPopOrderBy {
  factory Input_HistoryMeetingsVarPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsVarPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsVarPopOrderBy._(this._$data);

  factory Input_HistoryMeetingsVarPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsVarPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsVarPopOrderBy<
    Input_HistoryMeetingsVarPopOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsVarPopOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsVarPopOrderBy(
    Input_HistoryMeetingsVarPopOrderBy instance,
    TRes Function(Input_HistoryMeetingsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsVarPopOrderBy;

  factory CopyWith_Input_HistoryMeetingsVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsVarPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsVarPopOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsVarPopOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsVarPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsVarSampOrderBy {
  factory Input_HistoryMeetingsVarSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsVarSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsVarSampOrderBy._(this._$data);

  factory Input_HistoryMeetingsVarSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsVarSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsVarSampOrderBy<
    Input_HistoryMeetingsVarSampOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsVarSampOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsVarSampOrderBy(
    Input_HistoryMeetingsVarSampOrderBy instance,
    TRes Function(Input_HistoryMeetingsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsVarSampOrderBy;

  factory CopyWith_Input_HistoryMeetingsVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsVarSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsVarSampOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsVarSampOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsVarSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsVarianceOrderBy {
  factory Input_HistoryMeetingsVarianceOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsVarianceOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsVarianceOrderBy._(this._$data);

  factory Input_HistoryMeetingsVarianceOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsVarianceOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsVarianceOrderBy<
    Input_HistoryMeetingsVarianceOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsVarianceOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsVarianceOrderBy(
    Input_HistoryMeetingsVarianceOrderBy instance,
    TRes Function(Input_HistoryMeetingsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsVarianceOrderBy;

  factory CopyWith_Input_HistoryMeetingsVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsVarianceOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsVarianceOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryMeetingsVarianceOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryVisitHistoryAggregateBoolExp {
  factory Input_HistoryVisitHistoryAggregateBoolExp({
    Input_historyVisitHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyVisitHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyVisitHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryVisitHistoryAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_HistoryVisitHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryVisitHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryVisitHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyVisitHistoryAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and']
          as Input_historyVisitHistoryAggregateBoolExpBool_and?);

  Input_historyVisitHistoryAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or'] as Input_historyVisitHistoryAggregateBoolExpBool_or?);

  Input_historyVisitHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyVisitHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bool_and')) {
      final l$bool_and = bool_and;
      result$data['bool_and'] = l$bool_and?.toJson();
    }
    if (_$data.containsKey('bool_or')) {
      final l$bool_or = bool_or;
      result$data['bool_or'] = l$bool_or?.toJson();
    }
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<
    Input_HistoryVisitHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryVisitHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryAggregateBoolExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bool_and = bool_and;
    final lOther$bool_and = other.bool_and;
    if (_$data.containsKey('bool_and') !=
        other._$data.containsKey('bool_and')) {
      return false;
    }
    if (l$bool_and != lOther$bool_and) {
      return false;
    }
    final l$bool_or = bool_or;
    final lOther$bool_or = other.bool_or;
    if (_$data.containsKey('bool_or') != other._$data.containsKey('bool_or')) {
      return false;
    }
    if (l$bool_or != lOther$bool_or) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$bool_and = bool_and;
    final l$bool_or = bool_or;
    final l$count = count;
    return Object.hashAll([
      _$data.containsKey('bool_and') ? l$bool_and : const {},
      _$data.containsKey('bool_or') ? l$bool_or : const {},
      _$data.containsKey('count') ? l$count : const {},
    ]);
  }
}
