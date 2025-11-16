// Part 28 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryCallHistoryMinOrderBy(
    Input_HistoryCallHistoryMinOrderBy instance,
    TRes Function(Input_HistoryCallHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryMinOrderBy;

  factory CopyWith_Input_HistoryCallHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryCallHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryMinOrderBy(this._instance, this._then);

  final Input_HistoryCallHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryCallHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryCallHistoryMinOrderBy._({
      ..._instance._$data,
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryCallHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryCallHistoryOnConflict {
  factory Input_HistoryCallHistoryOnConflict({
    required Enum_HistoryCallHistoryConstraint constraint,
    List<Enum_HistoryCallHistoryUpdateColumn>? updateColumns,
    Input_HistoryCallHistoryBoolExp? where,
  }) => Input_HistoryCallHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryCallHistoryOnConflict._(this._$data);

  factory Input_HistoryCallHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryCallHistoryConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryCallHistoryUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryCallHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryCallHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryCallHistoryConstraint);

  List<Enum_HistoryCallHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryCallHistoryUpdateColumn>?);

  Input_HistoryCallHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryCallHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryCallHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryCallHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryCallHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryOnConflict<
    Input_HistoryCallHistoryOnConflict
  >
  get copyWith => CopyWith_Input_HistoryCallHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryOnConflict ||
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

abstract class CopyWith_Input_HistoryCallHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryCallHistoryOnConflict(
    Input_HistoryCallHistoryOnConflict instance,
    TRes Function(Input_HistoryCallHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryOnConflict;

  factory CopyWith_Input_HistoryCallHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryOnConflict;

  TRes call({
    Enum_HistoryCallHistoryConstraint? constraint,
    List<Enum_HistoryCallHistoryUpdateColumn>? updateColumns,
    Input_HistoryCallHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryCallHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryCallHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryOnConflict(this._instance, this._then);

  final Input_HistoryCallHistoryOnConflict _instance;

  final TRes Function(Input_HistoryCallHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryCallHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryCallHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryCallHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryCallHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryCallHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryCallHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryCallHistoryConstraint? constraint,
    List<Enum_HistoryCallHistoryUpdateColumn>? updateColumns,
    Input_HistoryCallHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryCallHistoryBoolExp.stub(_res);
}

class Input_HistoryCallHistoryOrderBy {
  factory Input_HistoryCallHistoryOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryCallHistoryOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryCallHistoryOrderBy._(this._$data);

  factory Input_HistoryCallHistoryOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_HistoryCallHistoryOrderBy._(result$data);
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

  CopyWith_Input_HistoryCallHistoryOrderBy<Input_HistoryCallHistoryOrderBy>
  get copyWith => CopyWith_Input_HistoryCallHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryOrderBy ||
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

abstract class CopyWith_Input_HistoryCallHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryCallHistoryOrderBy(
    Input_HistoryCallHistoryOrderBy instance,
    TRes Function(Input_HistoryCallHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryOrderBy;

  factory CopyWith_Input_HistoryCallHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryOrderBy;

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

class _CopyWithImpl_Input_HistoryCallHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryOrderBy(this._instance, this._then);

  final Input_HistoryCallHistoryOrderBy _instance;

  final TRes Function(Input_HistoryCallHistoryOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryCallHistoryOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryCallHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryOrderBy(this._res);

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

class Input_HistoryCallHistoryStreamCursorInput {
  factory Input_HistoryCallHistoryStreamCursorInput({
    required Input_HistoryCallHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryCallHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryCallHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryCallHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryCallHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryCallHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryCallHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryCallHistoryStreamCursorValueInput);

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

  CopyWith_Input_HistoryCallHistoryStreamCursorInput<
    Input_HistoryCallHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryCallHistoryStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryCallHistoryStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryCallHistoryStreamCursorInput(
    Input_HistoryCallHistoryStreamCursorInput instance,
    TRes Function(Input_HistoryCallHistoryStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryStreamCursorInput;

  factory CopyWith_Input_HistoryCallHistoryStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryStreamCursorInput;

  TRes call({
    Input_HistoryCallHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryCallHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryCallHistoryStreamCursorInput _instance;

  final TRes Function(Input_HistoryCallHistoryStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryCallHistoryStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryCallHistoryStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryCallHistoryStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryCallHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryCallHistoryStreamCursorValueInput.stub(_res);
}

class Input_HistoryCallHistoryStreamCursorValueInput {
  factory Input_HistoryCallHistoryStreamCursorValueInput({
    UuidValue? personId,
    UuidValue? recordedBy,
    DateTime? time,
  }) => Input_HistoryCallHistoryStreamCursorValueInput._({
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryCallHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryCallHistoryStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryCallHistoryStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get recordedBy => (_$data['recordedBy'] as UuidValue?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<
    Input_HistoryCallHistoryStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryCallHistoryStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryCallHistoryStreamCursorValueInput(
    Input_HistoryCallHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryCallHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryCallHistoryStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryCallHistoryStreamCursorValueInput;

  TRes call({UuidValue? personId, UuidValue? recordedBy, DateTime? time});
}

class _CopyWithImpl_Input_HistoryCallHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryCallHistoryStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryCallHistoryStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryCallHistoryStreamCursorValueInput._({
      ..._instance._$data,
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryCallHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? personId, UuidValue? recordedBy, DateTime? time}) => _res;
}

class Input_HistoryConfessionHistoryAggregateBoolExp {
  factory Input_HistoryConfessionHistoryAggregateBoolExp({
    Input_historyConfessionHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryConfessionHistoryAggregateBoolExp._({
    if (count != null) r'count': count,
  });

  Input_HistoryConfessionHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryConfessionHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyConfessionHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryConfessionHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyConfessionHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyConfessionHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<
    Input_HistoryConfessionHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp(
    Input_HistoryConfessionHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryConfessionHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryConfessionHistoryAggregateBoolExp;

  TRes call({Input_historyConfessionHistoryAggregateBoolExpCount? count});
  CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryConfessionHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_HistoryConfessionHistoryAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count':
            (count as Input_historyConfessionHistoryAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyConfessionHistoryAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<TRes>
  get count =>
      CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryConfessionHistoryAggregateOrderBy {
  factory Input_HistoryConfessionHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryConfessionHistoryMaxOrderBy? max,
    Input_HistoryConfessionHistoryMinOrderBy? min,
  }) => Input_HistoryConfessionHistoryAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryConfessionHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryConfessionHistoryAggregateOrderBy.fromJson(
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
          : Input_HistoryConfessionHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryConfessionHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryConfessionHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryConfessionHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryConfessionHistoryMaxOrderBy?);

  Input_HistoryConfessionHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryConfessionHistoryMinOrderBy?);

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

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<
    Input_HistoryConfessionHistoryAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy(
    Input_HistoryConfessionHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryConfessionHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryConfessionHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryConfessionHistoryMaxOrderBy? max,
    Input_HistoryConfessionHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryConfessionHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryConfessionHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryConfessionHistoryMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryConfessionHistoryMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryConfessionHistoryMaxOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryConfessionHistoryMinOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryConfessionHistoryMaxOrderBy? max,
    Input_HistoryConfessionHistoryMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryConfessionHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryConfessionHistoryMinOrderBy.stub(_res);
}

class Input_HistoryConfessionHistoryArrRelInsertInput {
  factory Input_HistoryConfessionHistoryArrRelInsertInput({
    required List<Input_HistoryConfessionHistoryInsertInput> data,
    Input_HistoryConfessionHistoryOnConflict? onConflict,
  }) => Input_HistoryConfessionHistoryArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryConfessionHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryConfessionHistoryArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryConfessionHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryConfessionHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryConfessionHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryConfessionHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryConfessionHistoryInsertInput>);

  Input_HistoryConfessionHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryConfessionHistoryOnConflict?);

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

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<
    Input_HistoryConfessionHistoryArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput(
    Input_HistoryConfessionHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryConfessionHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryConfessionHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryConfessionHistoryInsertInput>? data,
    Input_HistoryConfessionHistoryOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_HistoryConfessionHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryConfessionHistoryInsertInput<
          Input_HistoryConfessionHistoryInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_HistoryConfessionHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryConfessionHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryConfessionHistoryArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_HistoryConfessionHistoryInsertInput>),
          if (onConflict != _undefined)
            'onConflict':
                (onConflict as Input_HistoryConfessionHistoryOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_HistoryConfessionHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryConfessionHistoryInsertInput<
          Input_HistoryConfessionHistoryInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryConfessionHistoryInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryConfessionHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryConfessionHistoryOnConflict.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryConfessionHistoryInsertInput>? data,
    Input_HistoryConfessionHistoryOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryConfessionHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryConfessionHistoryOnConflict.stub(_res);
}

class Input_HistoryConfessionHistoryBoolExp {
  factory Input_HistoryConfessionHistoryBoolExp({
    List<Input_HistoryConfessionHistoryBoolExp>? $_and,
    Input_HistoryConfessionHistoryBoolExp? $_not,
    List<Input_HistoryConfessionHistoryBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryConfessionHistoryBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryConfessionHistoryBoolExp._(this._$data);

  factory Input_HistoryConfessionHistoryBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryConfessionHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryConfessionHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : Input_DateComparisonExp.fromJson((l$dayId as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
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
    return Input_HistoryConfessionHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryConfessionHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryConfessionHistoryBoolExp>?);

  Input_HistoryConfessionHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryConfessionHistoryBoolExp?);

  List<Input_HistoryConfessionHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryConfessionHistoryBoolExp>?);

  Input_HistoryAttendanceDaysBoolExp? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysBoolExp?);

  Input_DateComparisonExp? get dayId =>
      (_$data['dayId'] as Input_DateComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
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

  CopyWith_Input_HistoryConfessionHistoryBoolExp<
    Input_HistoryConfessionHistoryBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$day = day;
    final l$dayId = dayId;
    final l$id = id;
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

abstract class CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryBoolExp(
    Input_HistoryConfessionHistoryBoolExp instance,
    TRes Function(Input_HistoryConfessionHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryBoolExp;

  factory CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryConfessionHistoryBoolExp;

  TRes call({
    List<Input_HistoryConfessionHistoryBoolExp>? $_and,
    Input_HistoryConfessionHistoryBoolExp? $_not,
    List<Input_HistoryConfessionHistoryBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryConfessionHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryConfessionHistoryBoolExp<
          Input_HistoryConfessionHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryConfessionHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryConfessionHistoryBoolExp<
          Input_HistoryConfessionHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day;
  CopyWith_Input_DateComparisonExp<TRes> get dayId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_DateComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryBoolExp _instance;

  final TRes Function(Input_HistoryConfessionHistoryBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryConfessionHistoryBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryConfessionHistoryBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryConfessionHistoryBoolExp>?),
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysBoolExp?),
      if (dayId != _undefined) 'dayId': (dayId as Input_DateComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
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
    Iterable<Input_HistoryConfessionHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryConfessionHistoryBoolExp<
          Input_HistoryConfessionHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryConfessionHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryConfessionHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryConfessionHistoryBoolExp<
          Input_HistoryConfessionHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryConfessionHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$day,
            (e) => call(day: e),
          );
  }

  CopyWith_Input_DateComparisonExp<TRes> get dayId {
    final local$dayId = _instance.dayId;
    return local$dayId == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$dayId, (e) => call(dayId: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
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

class _CopyWithStubImpl_Input_HistoryConfessionHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryConfessionHistoryBoolExp>? $_and,
    Input_HistoryConfessionHistoryBoolExp? $_not,
    List<Input_HistoryConfessionHistoryBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get dayId =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

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

class Input_HistoryConfessionHistoryInsertInput {
  factory Input_HistoryConfessionHistoryInsertInput({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => Input_HistoryConfessionHistoryInsertInput._({
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryConfessionHistoryInsertInput._(this._$data);

  factory Input_HistoryConfessionHistoryInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysObjRelInsertInput.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsObjRelInsertInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_HistoryConfessionHistoryInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysObjRelInsertInput? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysObjRelInsertInput?);

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

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
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryInsertInput<
    Input_HistoryConfessionHistoryInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryInsertInput ||
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
    final l$day = day;
    final l$dayId = dayId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryConfessionHistoryInsertInput<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryInsertInput(
    Input_HistoryConfessionHistoryInsertInput instance,
    TRes Function(Input_HistoryConfessionHistoryInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryInsertInput;

  factory CopyWith_Input_HistoryConfessionHistoryInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryConfessionHistoryInsertInput;

  TRes call({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  });
  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_HistoryConfessionHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryInsertInput _instance;

  final TRes Function(Input_HistoryConfessionHistoryInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryInsertInput._({
      ..._instance._$data,
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysObjRelInsertInput?),
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
    }),
  );

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

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person,
            (e) => call(person: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_HistoryConfessionHistoryMaxOrderBy {
  factory Input_HistoryConfessionHistoryMaxOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryConfessionHistoryMaxOrderBy._({
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryConfessionHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryConfessionHistoryMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    return Input_HistoryConfessionHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<
    Input_HistoryConfessionHistoryMaxOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryMaxOrderBy ||
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

abstract class CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryConfessionHistoryMaxOrderBy(
    Input_HistoryConfessionHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryConfessionHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryConfessionHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryConfessionHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryConfessionHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryConfessionHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryConfessionHistoryMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryConfessionHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryConfessionHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryConfessionHistoryMaxOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryConfessionHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryConfessionHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryConfessionHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryConfessionHistoryMinOrderBy {
  factory Input_HistoryConfessionHistoryMinOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryConfessionHistoryMinOrderBy._({
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryConfessionHistoryMinOrderBy._(this._$data);

  factory Input_HistoryConfessionHistoryMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    return Input_HistoryConfessionHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_HistoryConfessionHistoryMinOrderBy<
    Input_HistoryConfessionHistoryMinOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryConfessionHistoryMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryConfessionHistoryMinOrderBy ||
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
