// Part 31 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryMinOrderBy(
    Input_HistoryKodasHistoryMinOrderBy instance,
    TRes Function(Input_HistoryKodasHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryMinOrderBy;

  factory CopyWith_Input_HistoryKodasHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryKodasHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryMinOrderBy(this._instance, this._then);

  final Input_HistoryKodasHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryKodasHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryMinOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryKodasHistoryOnConflict {
  factory Input_HistoryKodasHistoryOnConflict({
    required Enum_HistoryKodasHistoryConstraint constraint,
    List<Enum_HistoryKodasHistoryUpdateColumn>? updateColumns,
    Input_HistoryKodasHistoryBoolExp? where,
  }) => Input_HistoryKodasHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryKodasHistoryOnConflict._(this._$data);

  factory Input_HistoryKodasHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryKodasHistoryConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryKodasHistoryUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryKodasHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryKodasHistoryConstraint);

  List<Enum_HistoryKodasHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryKodasHistoryUpdateColumn>?);

  Input_HistoryKodasHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryKodasHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryKodasHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryKodasHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryKodasHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryOnConflict<
    Input_HistoryKodasHistoryOnConflict
  >
  get copyWith => CopyWith_Input_HistoryKodasHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryOnConflict ||
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

abstract class CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryOnConflict(
    Input_HistoryKodasHistoryOnConflict instance,
    TRes Function(Input_HistoryKodasHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryOnConflict;

  factory CopyWith_Input_HistoryKodasHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryOnConflict;

  TRes call({
    Enum_HistoryKodasHistoryConstraint? constraint,
    List<Enum_HistoryKodasHistoryUpdateColumn>? updateColumns,
    Input_HistoryKodasHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryKodasHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryOnConflict(this._instance, this._then);

  final Input_HistoryKodasHistoryOnConflict _instance;

  final TRes Function(Input_HistoryKodasHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryKodasHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryKodasHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryKodasHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryKodasHistoryConstraint? constraint,
    List<Enum_HistoryKodasHistoryUpdateColumn>? updateColumns,
    Input_HistoryKodasHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);
}

class Input_HistoryKodasHistoryOrderBy {
  factory Input_HistoryKodasHistoryOrderBy({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryKodasHistoryOrderBy._({
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryKodasHistoryOrderBy._(this._$data);

  factory Input_HistoryKodasHistoryOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_HistoryKodasHistoryOrderBy._(result$data);
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

  CopyWith_Input_HistoryKodasHistoryOrderBy<Input_HistoryKodasHistoryOrderBy>
  get copyWith => CopyWith_Input_HistoryKodasHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryOrderBy ||
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

abstract class CopyWith_Input_HistoryKodasHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryOrderBy(
    Input_HistoryKodasHistoryOrderBy instance,
    TRes Function(Input_HistoryKodasHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryOrderBy;

  factory CopyWith_Input_HistoryKodasHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryOrderBy;

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

class _CopyWithImpl_Input_HistoryKodasHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryOrderBy(this._instance, this._then);

  final Input_HistoryKodasHistoryOrderBy _instance;

  final TRes Function(Input_HistoryKodasHistoryOrderBy) _then;

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
    Input_HistoryKodasHistoryOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryKodasHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryOrderBy(this._res);

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

class Input_HistoryKodasHistoryStreamCursorInput {
  factory Input_HistoryKodasHistoryStreamCursorInput({
    required Input_HistoryKodasHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryKodasHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryKodasHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryKodasHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryKodasHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryKodasHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryKodasHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryKodasHistoryStreamCursorValueInput);

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

  CopyWith_Input_HistoryKodasHistoryStreamCursorInput<
    Input_HistoryKodasHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryKodasHistoryStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryKodasHistoryStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryStreamCursorInput(
    Input_HistoryKodasHistoryStreamCursorInput instance,
    TRes Function(Input_HistoryKodasHistoryStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryStreamCursorInput;

  factory CopyWith_Input_HistoryKodasHistoryStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryStreamCursorInput;

  TRes call({
    Input_HistoryKodasHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryKodasHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryKodasHistoryStreamCursorInput _instance;

  final TRes Function(Input_HistoryKodasHistoryStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryKodasHistoryStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryKodasHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput.stub(_res);
}

class Input_HistoryKodasHistoryStreamCursorValueInput {
  factory Input_HistoryKodasHistoryStreamCursorValueInput({
    DateTime? dayId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  }) => Input_HistoryKodasHistoryStreamCursorValueInput._({
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryKodasHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryKodasHistoryStreamCursorValueInput.fromJson(
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
    return Input_HistoryKodasHistoryStreamCursorValueInput._(result$data);
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

  CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<
    Input_HistoryKodasHistoryStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryStreamCursorValueInput ||
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

abstract class CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput(
    Input_HistoryKodasHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryKodasHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryKodasHistoryStreamCursorValueInput;

  TRes call({
    DateTime? dayId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryKodasHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryKodasHistoryStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryKodasHistoryStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryStreamCursorValueInput._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryStreamCursorValueInput(this._res);

  TRes _res;

  call({
    DateTime? dayId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  }) => _res;
}

class Input_HistoryLatestCallsBoolExp {
  factory Input_HistoryLatestCallsBoolExp({
    List<Input_HistoryLatestCallsBoolExp>? $_and,
    Input_HistoryLatestCallsBoolExp? $_not,
    List<Input_HistoryLatestCallsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryLatestCallsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestCallsBoolExp._(this._$data);

  factory Input_HistoryLatestCallsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestCallsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestCallsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestCallsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
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
    return Input_HistoryLatestCallsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryLatestCallsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryLatestCallsBoolExp>?);

  Input_HistoryLatestCallsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryLatestCallsBoolExp?);

  List<Input_HistoryLatestCallsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryLatestCallsBoolExp>?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
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

  CopyWith_Input_HistoryLatestCallsBoolExp<Input_HistoryLatestCallsBoolExp>
  get copyWith => CopyWith_Input_HistoryLatestCallsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestCallsBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
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
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestCallsBoolExp<TRes> {
  factory CopyWith_Input_HistoryLatestCallsBoolExp(
    Input_HistoryLatestCallsBoolExp instance,
    TRes Function(Input_HistoryLatestCallsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryLatestCallsBoolExp;

  factory CopyWith_Input_HistoryLatestCallsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestCallsBoolExp;

  TRes call({
    List<Input_HistoryLatestCallsBoolExp>? $_and,
    Input_HistoryLatestCallsBoolExp? $_not,
    List<Input_HistoryLatestCallsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryLatestCallsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestCallsBoolExp<
          Input_HistoryLatestCallsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryLatestCallsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryLatestCallsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestCallsBoolExp<
          Input_HistoryLatestCallsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestCallsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestCallsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestCallsBoolExp(this._instance, this._then);

  final Input_HistoryLatestCallsBoolExp _instance;

  final TRes Function(Input_HistoryLatestCallsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryLatestCallsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryLatestCallsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryLatestCallsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryLatestCallsBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (time != _undefined) 'time': (time as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryLatestCallsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestCallsBoolExp<
          Input_HistoryLatestCallsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryLatestCallsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryLatestCallsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestCallsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestCallsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryLatestCallsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestCallsBoolExp<
          Input_HistoryLatestCallsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryLatestCallsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
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

class _CopyWithStubImpl_Input_HistoryLatestCallsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestCallsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestCallsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryLatestCallsBoolExp>? $_and,
    Input_HistoryLatestCallsBoolExp? $_not,
    List<Input_HistoryLatestCallsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryLatestCallsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryLatestCallsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get time =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_HistoryLatestCallsOrderBy {
  factory Input_HistoryLatestCallsOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryLatestCallsOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestCallsOrderBy._(this._$data);

  factory Input_HistoryLatestCallsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    return Input_HistoryLatestCallsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_HistoryLatestCallsOrderBy<Input_HistoryLatestCallsOrderBy>
  get copyWith => CopyWith_Input_HistoryLatestCallsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestCallsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestCallsOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestCallsOrderBy(
    Input_HistoryLatestCallsOrderBy instance,
    TRes Function(Input_HistoryLatestCallsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestCallsOrderBy;

  factory CopyWith_Input_HistoryLatestCallsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestCallsOrderBy;

  TRes call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestCallsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestCallsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestCallsOrderBy(this._instance, this._then);

  final Input_HistoryLatestCallsOrderBy _instance;

  final TRes Function(Input_HistoryLatestCallsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryLatestCallsOrderBy._({
      ..._instance._$data,
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
    }),
  );

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

class _CopyWithStubImpl_Input_HistoryLatestCallsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestCallsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestCallsOrderBy(this._res);

  TRes _res;

  call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => _res;

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryLatestConfessionsBoolExp {
  factory Input_HistoryLatestConfessionsBoolExp({
    List<Input_HistoryLatestConfessionsBoolExp>? $_and,
    Input_HistoryLatestConfessionsBoolExp? $_not,
    List<Input_HistoryLatestConfessionsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryLatestConfessionsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestConfessionsBoolExp._(this._$data);

  factory Input_HistoryLatestConfessionsBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestConfessionsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestConfessionsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestConfessionsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_DateComparisonExp.fromJson((l$time as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryLatestConfessionsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryLatestConfessionsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryLatestConfessionsBoolExp>?);

  Input_HistoryLatestConfessionsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryLatestConfessionsBoolExp?);

  List<Input_HistoryLatestConfessionsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryLatestConfessionsBoolExp>?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_DateComparisonExp? get time =>
      (_$data['time'] as Input_DateComparisonExp?);

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
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
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

  CopyWith_Input_HistoryLatestConfessionsBoolExp<
    Input_HistoryLatestConfessionsBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryLatestConfessionsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestConfessionsBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
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
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> {
  factory CopyWith_Input_HistoryLatestConfessionsBoolExp(
    Input_HistoryLatestConfessionsBoolExp instance,
    TRes Function(Input_HistoryLatestConfessionsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryLatestConfessionsBoolExp;

  factory CopyWith_Input_HistoryLatestConfessionsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestConfessionsBoolExp;

  TRes call({
    List<Input_HistoryLatestConfessionsBoolExp>? $_and,
    Input_HistoryLatestConfessionsBoolExp? $_not,
    List<Input_HistoryLatestConfessionsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryLatestConfessionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestConfessionsBoolExp<
          Input_HistoryLatestConfessionsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryLatestConfessionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestConfessionsBoolExp<
          Input_HistoryLatestConfessionsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_DateComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestConfessionsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestConfessionsBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryLatestConfessionsBoolExp _instance;

  final TRes Function(Input_HistoryLatestConfessionsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryLatestConfessionsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryLatestConfessionsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryLatestConfessionsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryLatestConfessionsBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (time != _undefined) 'time': (time as Input_DateComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryLatestConfessionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestConfessionsBoolExp<
          Input_HistoryLatestConfessionsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryLatestConfessionsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestConfessionsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestConfessionsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryLatestConfessionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestConfessionsBoolExp<
          Input_HistoryLatestConfessionsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryLatestConfessionsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_DateComparisonExp<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$time, (e) => call(time: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryLatestConfessionsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestConfessionsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryLatestConfessionsBoolExp>? $_and,
    Input_HistoryLatestConfessionsBoolExp? $_not,
    List<Input_HistoryLatestConfessionsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryLatestConfessionsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryLatestConfessionsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get time =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_HistoryLatestConfessionsOrderBy {
  factory Input_HistoryLatestConfessionsOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryLatestConfessionsOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestConfessionsOrderBy._(this._$data);

  factory Input_HistoryLatestConfessionsOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    return Input_HistoryLatestConfessionsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_HistoryLatestConfessionsOrderBy<
    Input_HistoryLatestConfessionsOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryLatestConfessionsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestConfessionsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestConfessionsOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestConfessionsOrderBy(
    Input_HistoryLatestConfessionsOrderBy instance,
    TRes Function(Input_HistoryLatestConfessionsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestConfessionsOrderBy;

  factory CopyWith_Input_HistoryLatestConfessionsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestConfessionsOrderBy;

  TRes call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestConfessionsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestConfessionsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestConfessionsOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryLatestConfessionsOrderBy _instance;

  final TRes Function(Input_HistoryLatestConfessionsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryLatestConfessionsOrderBy._({
      ..._instance._$data,
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
    }),
  );

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

class _CopyWithStubImpl_Input_HistoryLatestConfessionsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestConfessionsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestConfessionsOrderBy(this._res);

  TRes _res;

  call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => _res;

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryLatestEditsBoolExp {
  factory Input_HistoryLatestEditsBoolExp({
    List<Input_HistoryLatestEditsBoolExp>? $_and,
    Input_HistoryLatestEditsBoolExp? $_not,
    List<Input_HistoryLatestEditsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryLatestEditsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestEditsBoolExp._(this._$data);

  factory Input_HistoryLatestEditsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestEditsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestEditsBoolExp.fromJson(
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
    return Input_HistoryLatestEditsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryLatestEditsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryLatestEditsBoolExp>?);

  Input_HistoryLatestEditsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryLatestEditsBoolExp?);

  List<Input_HistoryLatestEditsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryLatestEditsBoolExp>?);

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

  CopyWith_Input_HistoryLatestEditsBoolExp<Input_HistoryLatestEditsBoolExp>
  get copyWith => CopyWith_Input_HistoryLatestEditsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestEditsBoolExp ||
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
