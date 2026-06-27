// Part 31 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsMinOrderBy(
    Input_HistoryMeetingsMinOrderBy instance,
    TRes Function(Input_HistoryMeetingsMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsMinOrderBy;

  factory CopyWith_Input_HistoryMeetingsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsMinOrderBy;

  TRes call({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsMinOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsMinOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsMinOrderBy._({
      ..._instance._$data,
      if (audience != _undefined) 'audience': (audience as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsObjRelInsertInput {
  factory Input_HistoryMeetingsObjRelInsertInput({
    required Input_HistoryMeetingsInsertInput data,
    Input_HistoryMeetingsOnConflict? onConflict,
  }) => Input_HistoryMeetingsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryMeetingsObjRelInsertInput._(this._$data);

  factory Input_HistoryMeetingsObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_HistoryMeetingsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryMeetingsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsInsertInput get data =>
      (_$data['data'] as Input_HistoryMeetingsInsertInput);

  Input_HistoryMeetingsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryMeetingsOnConflict?);

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

  CopyWith_Input_HistoryMeetingsObjRelInsertInput<
    Input_HistoryMeetingsObjRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsObjRelInsertInput ||
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
    Enum_OrderBy? color,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_HistoryMeetingsPersonsAggregateOrderBy? personsAggregate,
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
    if (color != null) r'color': color,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
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
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_HistoryMeetingsPersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
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
    return Input_HistoryMeetingsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get archived => (_$data['archived'] as Enum_OrderBy?);

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get audience => (_$data['audience'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_HistoryMeetingsPersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate']
          as Input_HistoryMeetingsPersonsAggregateOrderBy?);

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
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
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
    final l$color = color;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
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
    Enum_OrderBy? color,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_HistoryMeetingsPersonsAggregateOrderBy? personsAggregate,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
  get personsAggregate;
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
    Object? color = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
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
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_HistoryMeetingsPersonsAggregateOrderBy?),
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

  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
  get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
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

class _CopyWithStubImpl_Input_HistoryMeetingsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? archived,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_HistoryMeetingsPersonsAggregateOrderBy? personsAggregate,
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

  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
  get personsAggregate =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryMeetingsPersonsAggregateBoolExp {
  factory Input_HistoryMeetingsPersonsAggregateBoolExp({
    Input_historyMeetingsPersonsAggregateBoolExpCount? count,
  }) => Input_HistoryMeetingsPersonsAggregateBoolExp._({
    if (count != null) r'count': count,
  });

  Input_HistoryMeetingsPersonsAggregateBoolExp._(this._$data);

  factory Input_HistoryMeetingsPersonsAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyMeetingsPersonsAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsPersonsAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyMeetingsPersonsAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyMeetingsPersonsAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<
    Input_HistoryMeetingsPersonsAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsAggregateBoolExp ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp(
    Input_HistoryMeetingsPersonsAggregateBoolExp instance,
    TRes Function(Input_HistoryMeetingsPersonsAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateBoolExp;

  factory CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateBoolExp;

  TRes call({Input_historyMeetingsPersonsAggregateBoolExpCount? count});
  CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsAggregateBoolExp _instance;

  final TRes Function(Input_HistoryMeetingsPersonsAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_HistoryMeetingsPersonsAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_historyMeetingsPersonsAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyMeetingsPersonsAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount.stub(_res);
}

class Input_HistoryMeetingsPersonsAggregateOrderBy {
  factory Input_HistoryMeetingsPersonsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryMeetingsPersonsMaxOrderBy? max,
    Input_HistoryMeetingsPersonsMinOrderBy? min,
  }) => Input_HistoryMeetingsPersonsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryMeetingsPersonsAggregateOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsAggregateOrderBy.fromJson(
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
          : Input_HistoryMeetingsPersonsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryMeetingsPersonsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsPersonsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryMeetingsPersonsMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryMeetingsPersonsMaxOrderBy?);

  Input_HistoryMeetingsPersonsMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryMeetingsPersonsMinOrderBy?);

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

  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<
    Input_HistoryMeetingsPersonsAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy(
    Input_HistoryMeetingsPersonsAggregateOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryMeetingsPersonsMaxOrderBy? max,
    Input_HistoryMeetingsPersonsMinOrderBy? min,
  });
  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsAggregateOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryMeetingsPersonsMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryMeetingsPersonsMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryMeetingsPersonsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryMeetingsPersonsMaxOrderBy? max,
    Input_HistoryMeetingsPersonsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryMeetingsPersonsMinOrderBy.stub(_res);
}

class Input_HistoryMeetingsPersonsBoolExp {
  factory Input_HistoryMeetingsPersonsBoolExp({
    List<Input_HistoryMeetingsPersonsBoolExp>? $_and,
    Input_HistoryMeetingsPersonsBoolExp? $_not,
    List<Input_HistoryMeetingsPersonsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => Input_HistoryMeetingsPersonsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsBoolExp._(this._$data);

  factory Input_HistoryMeetingsPersonsBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsPersonsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryMeetingsPersonsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsPersonsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('meeting')) {
      final l$meeting = data['meeting'];
      result$data['meeting'] = l$meeting == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$meeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$meetingId as Map<String, dynamic>),
            );
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
    return Input_HistoryMeetingsPersonsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingsPersonsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryMeetingsPersonsBoolExp>?);

  Input_HistoryMeetingsPersonsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryMeetingsPersonsBoolExp?);

  List<Input_HistoryMeetingsPersonsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryMeetingsPersonsBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_HistoryMeetingsBoolExp? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get meetingId =>
      (_$data['meetingId'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<
    Input_HistoryMeetingsPersonsBoolExp
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPersonsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsBoolExp ||
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
    final l$meeting = meeting;
    final lOther$meeting = other.meeting;
    if (_$data.containsKey('meeting') != other._$data.containsKey('meeting')) {
      return false;
    }
    if (l$meeting != lOther$meeting) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
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
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsBoolExp(
    Input_HistoryMeetingsPersonsBoolExp instance,
    TRes Function(Input_HistoryMeetingsPersonsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsBoolExp;

  factory CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsBoolExp;

  TRes call({
    List<Input_HistoryMeetingsPersonsBoolExp>? $_and,
    Input_HistoryMeetingsPersonsBoolExp? $_not,
    List<Input_HistoryMeetingsPersonsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting;
  CopyWith_Input_UuidComparisonExp<TRes> get meetingId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsBoolExp(this._instance, this._then);

  final Input_HistoryMeetingsPersonsBoolExp _instance;

  final TRes Function(Input_HistoryMeetingsPersonsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryMeetingsPersonsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryMeetingsPersonsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryMeetingsPersonsBoolExp>?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsBoolExp?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_UuidComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryMeetingsPersonsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryMeetingsPersonsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId {
    final local$meetingId = _instance.meetingId;
    return local$meetingId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$meetingId,
            (e) => call(meetingId: e),
          );
  }

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
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingsPersonsBoolExp>? $_and,
    Input_HistoryMeetingsPersonsBoolExp? $_not,
    List<Input_HistoryMeetingsPersonsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_HistoryMeetingsPersonsMaxOrderBy {
  factory Input_HistoryMeetingsPersonsMaxOrderBy({
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
  }) => Input_HistoryMeetingsPersonsMaxOrderBy._({
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsMaxOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_HistoryMeetingsPersonsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<
    Input_HistoryMeetingsPersonsMaxOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$meetingId = meetingId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy(
    Input_HistoryMeetingsPersonsMaxOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsMaxOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsMaxOrderBy;

  TRes call({Enum_OrderBy? meetingId, Enum_OrderBy? personId});
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsMaxOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meetingId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_HistoryMeetingsPersonsMaxOrderBy._({
          ..._instance._$data,
          if (meetingId != _undefined)
            'meetingId': (meetingId as Enum_OrderBy?),
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? meetingId, Enum_OrderBy? personId}) => _res;
}

class Input_HistoryMeetingsPersonsMinOrderBy {
  factory Input_HistoryMeetingsPersonsMinOrderBy({
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
  }) => Input_HistoryMeetingsPersonsMinOrderBy._({
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsMinOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_HistoryMeetingsPersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<
    Input_HistoryMeetingsPersonsMinOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$meetingId = meetingId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsMinOrderBy(
    Input_HistoryMeetingsPersonsMinOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsMinOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsMinOrderBy;

  TRes call({Enum_OrderBy? meetingId, Enum_OrderBy? personId});
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsMinOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meetingId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_HistoryMeetingsPersonsMinOrderBy._({
          ..._instance._$data,
          if (meetingId != _undefined)
            'meetingId': (meetingId as Enum_OrderBy?),
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? meetingId, Enum_OrderBy? personId}) => _res;
}

class Input_HistoryMeetingsPersonsOrderBy {
  factory Input_HistoryMeetingsPersonsOrderBy({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) => Input_HistoryMeetingsPersonsOrderBy._({
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meeting')) {
      final l$meeting = data['meeting'];
      result$data['meeting'] = l$meeting == null
          ? null
          : Input_HistoryMeetingsOrderBy.fromJson(
              (l$meeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
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
    return Input_HistoryMeetingsPersonsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Input_HistoryMeetingsOrderBy? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsOrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
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
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsOrderBy<
    Input_HistoryMeetingsPersonsOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPersonsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$meeting = meeting;
    final lOther$meeting = other.meeting;
    if (_$data.containsKey('meeting') != other._$data.containsKey('meeting')) {
      return false;
    }
    if (l$meeting != lOther$meeting) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsOrderBy(
    Input_HistoryMeetingsPersonsOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsOrderBy;

  TRes call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsPersonsOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistoryAggregate = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsOrderBy._({
      ..._instance._$data,
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsOrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
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

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOrderBy(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_HistoryMeetingsPersonsStreamCursorInput {
  factory Input_HistoryMeetingsPersonsStreamCursorInput({
    required Input_HistoryMeetingsPersonsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryMeetingsPersonsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryMeetingsPersonsStreamCursorInput._(this._$data);

  factory Input_HistoryMeetingsPersonsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryMeetingsPersonsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryMeetingsPersonsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsPersonsStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryMeetingsPersonsStreamCursorValueInput);

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

  CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput<
    Input_HistoryMeetingsPersonsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsStreamCursorInput ||
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
