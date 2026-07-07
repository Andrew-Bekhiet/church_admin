// Part 26 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryConfessionHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryMinOrderBy(
    Input_HistoryConfessionHistoryMinOrderBy instance,
    TRes Function(Input_HistoryConfessionHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryMinOrderBy;

  factory CopyWith_Input_HistoryConfessionHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryConfessionHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryConfessionHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryConfessionHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryMinOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryConfessionHistoryOnConflict {
  factory Input_HistoryConfessionHistoryOnConflict({
    required Enum_HistoryConfessionHistoryConstraint constraint,
    List<Enum_HistoryConfessionHistoryUpdateColumn>? updateColumns,
    Input_HistoryConfessionHistoryBoolExp? where,
  }) => Input_HistoryConfessionHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryConfessionHistoryOnConflict._(this._$data);

  factory Input_HistoryConfessionHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_HistoryConfessionHistoryConstraint(
          (l$constraint as String),
        );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryConfessionHistoryUpdateColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryConfessionHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryConfessionHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryConfessionHistoryConstraint);

  List<Enum_HistoryConfessionHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryConfessionHistoryUpdateColumn>?);

  Input_HistoryConfessionHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryConfessionHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryConfessionHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryConfessionHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryConfessionHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryOnConflict<
    Input_HistoryConfessionHistoryOnConflict
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryOnConflict ||
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

abstract class CopyWith_Input_HistoryConfessionHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryOnConflict(
    Input_HistoryConfessionHistoryOnConflict instance,
    TRes Function(Input_HistoryConfessionHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryOnConflict;

  factory CopyWith_Input_HistoryConfessionHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryConfessionHistoryOnConflict;

  TRes call({
    Enum_HistoryConfessionHistoryConstraint? constraint,
    List<Enum_HistoryConfessionHistoryUpdateColumn>? updateColumns,
    Input_HistoryConfessionHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryOnConflict _instance;

  final TRes Function(Input_HistoryConfessionHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryConfessionHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryConfessionHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryConfessionHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryConfessionHistoryConstraint? constraint,
    List<Enum_HistoryConfessionHistoryUpdateColumn>? updateColumns,
    Input_HistoryConfessionHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_res);
}

class Input_HistoryConfessionHistoryOrderBy {
  factory Input_HistoryConfessionHistoryOrderBy({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryConfessionHistoryOrderBy._({
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryConfessionHistoryOrderBy._(this._$data);

  factory Input_HistoryConfessionHistoryOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryConfessionHistoryOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysOrderBy? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysOrderBy?);

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryOrderBy<
    Input_HistoryConfessionHistoryOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryOrderBy ||
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$dayId = dayId;
    final l$id = id;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryConfessionHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryOrderBy(
    Input_HistoryConfessionHistoryOrderBy instance,
    TRes Function(Input_HistoryConfessionHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryOrderBy;

  factory CopyWith_Input_HistoryConfessionHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryConfessionHistoryOrderBy;

  TRes call({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryOrderBy _instance;

  final TRes Function(Input_HistoryConfessionHistoryOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryOrderBy._({
      ..._instance._$data,
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysOrderBy?),
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysOrderBy(
            local$day,
            (e) => call(day: e),
          );
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryConfessionHistoryStreamCursorInput {
  factory Input_HistoryConfessionHistoryStreamCursorInput({
    required Input_HistoryConfessionHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryConfessionHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryConfessionHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryConfessionHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryConfessionHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryConfessionHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryConfessionHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryConfessionHistoryStreamCursorValueInput);

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

  CopyWith_Input_HistoryConfessionHistoryStreamCursorInput<
    Input_HistoryConfessionHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryConfessionHistoryStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryStreamCursorInput(
    Input_HistoryConfessionHistoryStreamCursorInput instance,
    TRes Function(Input_HistoryConfessionHistoryStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryStreamCursorInput;

  factory CopyWith_Input_HistoryConfessionHistoryStreamCursorInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryConfessionHistoryStreamCursorInput;

  TRes call({
    Input_HistoryConfessionHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryStreamCursorInput _instance;

  final TRes Function(Input_HistoryConfessionHistoryStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue
                as Input_HistoryConfessionHistoryStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryConfessionHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput.stub(_res);
}

class Input_HistoryConfessionHistoryStreamCursorValueInput {
  factory Input_HistoryConfessionHistoryStreamCursorValueInput({
    DateTime? dayId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  }) => Input_HistoryConfessionHistoryStreamCursorValueInput._({
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryConfessionHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryConfessionHistoryStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : stringToUuid(l$recordedBy);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : dateFromString(l$time);
    }
    return Input_HistoryConfessionHistoryStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get recordedBy => (_$data['recordedBy'] as UuidValue?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : uuidToString(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : dateToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<
    Input_HistoryConfessionHistoryStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryStreamCursorValueInput ||
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
    final l$id = id;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<
  TRes
> {
  factory CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput(
    Input_HistoryConfessionHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryConfessionHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryConfessionHistoryStreamCursorValueInput;

  TRes call({
    DateTime? dayId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryConfessionHistoryStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryConfessionHistoryStreamCursorValueInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryStreamCursorValueInput._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryStreamCursorValueInput<
  TRes
>
    implements
        CopyWith_Input_HistoryConfessionHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryStreamCursorValueInput(
    this._res,
  );

  TRes _res;

  call({
    DateTime? dayId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  }) => _res;
}

class Input_HistoryEditHistoryAggregateBoolExp {
  factory Input_HistoryEditHistoryAggregateBoolExp({
    Input_historyEditHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryEditHistoryAggregateBoolExp._({
    if (count != null) r'count': count,
  });

  Input_HistoryEditHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryEditHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyEditHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryEditHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyEditHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyEditHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<
    Input_HistoryEditHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
    Input_HistoryEditHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryEditHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryAggregateBoolExp;

  TRes call({Input_historyEditHistoryAggregateBoolExpCount? count});
  CopyWith_Input_historyEditHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryEditHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryEditHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryEditHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_HistoryEditHistoryAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_historyEditHistoryAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyEditHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyEditHistoryAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyEditHistoryAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryEditHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyEditHistoryAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyEditHistoryAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyEditHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryEditHistoryAggregateOrderBy {
  factory Input_HistoryEditHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryEditHistoryMaxOrderBy? max,
    Input_HistoryEditHistoryMinOrderBy? min,
  }) => Input_HistoryEditHistoryAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryEditHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryEditHistoryAggregateOrderBy.fromJson(
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
          : Input_HistoryEditHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryEditHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryEditHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryEditHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryEditHistoryMaxOrderBy?);

  Input_HistoryEditHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryEditHistoryMinOrderBy?);

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

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<
    Input_HistoryEditHistoryAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
    Input_HistoryEditHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryEditHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryEditHistoryMaxOrderBy? max,
    Input_HistoryEditHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryEditHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryEditHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryEditHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryEditHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryEditHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryEditHistoryAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryEditHistoryMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryEditHistoryMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryEditHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryEditHistoryMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryEditHistoryMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryEditHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryEditHistoryMaxOrderBy? max,
    Input_HistoryEditHistoryMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryEditHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryEditHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryEditHistoryMinOrderBy.stub(_res);
}

class Input_HistoryEditHistoryBoolExp {
  factory Input_HistoryEditHistoryBoolExp({
    List<Input_HistoryEditHistoryBoolExp>? $_and,
    Input_HistoryEditHistoryBoolExp? $_not,
    List<Input_HistoryEditHistoryBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryEditHistoryBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryEditHistoryBoolExp._(this._$data);

  factory Input_HistoryEditHistoryBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryEditHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryEditHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = l$table == null
          ? null
          : Input_NameComparisonExp.fromJson((l$table as Map<String, dynamic>));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$time as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryEditHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryEditHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryEditHistoryBoolExp>?);

  Input_HistoryEditHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryEditHistoryBoolExp?);

  List<Input_HistoryEditHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryEditHistoryBoolExp>?);

  Input_UuidComparisonExp? get recordId =>
      (_$data['recordId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_NameComparisonExp? get table =>
      (_$data['table'] as Input_NameComparisonExp?);

  Input_TimestamptzComparisonExp? get time =>
      (_$data['time'] as Input_TimestamptzComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

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
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId?.toJson();
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table?.toJson();
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<Input_HistoryEditHistoryBoolExp>
  get copyWith => CopyWith_Input_HistoryEditHistoryBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryBoolExp ||
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
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
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
    final l$table = table;
    final lOther$table = other.table;
    if (_$data.containsKey('table') != other._$data.containsKey('table')) {
      return false;
    }
    if (l$table != lOther$table) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$table = table;
    final l$time = time;
    final l$user = user;
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
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryEditHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryEditHistoryBoolExp(
    Input_HistoryEditHistoryBoolExp instance,
    TRes Function(Input_HistoryEditHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryBoolExp;

  factory CopyWith_Input_HistoryEditHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryBoolExp;

  TRes call({
    List<Input_HistoryEditHistoryBoolExp>? $_and,
    Input_HistoryEditHistoryBoolExp? $_not,
    List<Input_HistoryEditHistoryBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryEditHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryEditHistoryBoolExp<
          Input_HistoryEditHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryEditHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryEditHistoryBoolExp<
          Input_HistoryEditHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get recordId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_NameComparisonExp<TRes> get table;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_HistoryEditHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryEditHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryBoolExp(this._instance, this._then);

  final Input_HistoryEditHistoryBoolExp _instance;

  final TRes Function(Input_HistoryEditHistoryBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryEditHistoryBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryEditHistoryBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryEditHistoryBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryEditHistoryBoolExp>?),
      if (recordId != _undefined)
        'recordId': (recordId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (table != _undefined) 'table': (table as Input_NameComparisonExp?),
      if (time != _undefined) 'time': (time as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryEditHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryEditHistoryBoolExp<
          Input_HistoryEditHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryEditHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryEditHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryEditHistoryBoolExp<
          Input_HistoryEditHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryEditHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UuidComparisonExp<TRes> get recordId {
    final local$recordId = _instance.recordId;
    return local$recordId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordId,
            (e) => call(recordId: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_NameComparisonExp<TRes> get table {
    final local$table = _instance.table;
    return local$table == null
        ? CopyWith_Input_NameComparisonExp.stub(_then(_instance))
        : CopyWith_Input_NameComparisonExp(local$table, (e) => call(table: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$time,
            (e) => call(time: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryEditHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryEditHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryEditHistoryBoolExp>? $_and,
    Input_HistoryEditHistoryBoolExp? $_not,
    List<Input_HistoryEditHistoryBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get recordId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_NameComparisonExp<TRes> get table =>
      CopyWith_Input_NameComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get time =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_HistoryEditHistoryMaxOrderBy {
  factory Input_HistoryEditHistoryMaxOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryEditHistoryMaxOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryEditHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryEditHistoryMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : fromJson_Enum_OrderBy((l$recordId as String));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryEditHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId == null
          ? null
          : toJson_Enum_OrderBy(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryEditHistoryMaxOrderBy<
    Input_HistoryEditHistoryMaxOrderBy
  >
  get copyWith => CopyWith_Input_HistoryEditHistoryMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
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
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryEditHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryEditHistoryMaxOrderBy(
    Input_HistoryEditHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryEditHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryEditHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryEditHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryMaxOrderBy(this._instance, this._then);

  final Input_HistoryEditHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryEditHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryEditHistoryMaxOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryEditHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryEditHistoryMinOrderBy {
  factory Input_HistoryEditHistoryMinOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryEditHistoryMinOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryEditHistoryMinOrderBy._(this._$data);

  factory Input_HistoryEditHistoryMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : fromJson_Enum_OrderBy((l$recordId as String));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryEditHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId == null
          ? null
          : toJson_Enum_OrderBy(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryEditHistoryMinOrderBy<
    Input_HistoryEditHistoryMinOrderBy
  >
  get copyWith => CopyWith_Input_HistoryEditHistoryMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
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
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryEditHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryEditHistoryMinOrderBy(
    Input_HistoryEditHistoryMinOrderBy instance,
    TRes Function(Input_HistoryEditHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryMinOrderBy;

  factory CopyWith_Input_HistoryEditHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryEditHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryMinOrderBy(this._instance, this._then);

  final Input_HistoryEditHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryEditHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryEditHistoryMinOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryEditHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryEditHistoryOrderBy {
  factory Input_HistoryEditHistoryOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryEditHistoryOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryEditHistoryOrderBy._(this._$data);

  factory Input_HistoryEditHistoryOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : fromJson_Enum_OrderBy((l$recordId as String));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = l$table == null
          ? null
          : fromJson_Enum_OrderBy((l$table as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryEditHistoryOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get table => (_$data['table'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId == null
          ? null
          : toJson_Enum_OrderBy(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table == null
          ? null
          : toJson_Enum_OrderBy(l$table);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryEditHistoryOrderBy<Input_HistoryEditHistoryOrderBy>
  get copyWith => CopyWith_Input_HistoryEditHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
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
    final l$table = table;
    final lOther$table = other.table;
    if (_$data.containsKey('table') != other._$data.containsKey('table')) {
      return false;
    }
    if (l$table != lOther$table) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$table = table;
    final l$time = time;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryEditHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryEditHistoryOrderBy(
    Input_HistoryEditHistoryOrderBy instance,
    TRes Function(Input_HistoryEditHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryOrderBy;

  factory CopyWith_Input_HistoryEditHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryEditHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryOrderBy(this._instance, this._then);

  final Input_HistoryEditHistoryOrderBy _instance;

  final TRes Function(Input_HistoryEditHistoryOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryEditHistoryOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (table != _undefined) 'table': (table as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryEditHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryEditHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => _res;

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryEditHistoryStreamCursorInput {
  factory Input_HistoryEditHistoryStreamCursorInput({
    required Input_HistoryEditHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryEditHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryEditHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryEditHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryEditHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryEditHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryEditHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryEditHistoryStreamCursorValueInput);

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

  CopyWith_Input_HistoryEditHistoryStreamCursorInput<
    Input_HistoryEditHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryEditHistoryStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryStreamCursorInput ||
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
