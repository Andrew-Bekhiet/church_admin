// Part 32 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryLatestEditsBoolExp<TRes> {
  factory CopyWith_Input_HistoryLatestEditsBoolExp(
    Input_HistoryLatestEditsBoolExp instance,
    TRes Function(Input_HistoryLatestEditsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryLatestEditsBoolExp;

  factory CopyWith_Input_HistoryLatestEditsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestEditsBoolExp;

  TRes call({
    List<Input_HistoryLatestEditsBoolExp>? $_and,
    Input_HistoryLatestEditsBoolExp? $_not,
    List<Input_HistoryLatestEditsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryLatestEditsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestEditsBoolExp<
          Input_HistoryLatestEditsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryLatestEditsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestEditsBoolExp<
          Input_HistoryLatestEditsBoolExp
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

class _CopyWithImpl_Input_HistoryLatestEditsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestEditsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestEditsBoolExp(this._instance, this._then);

  final Input_HistoryLatestEditsBoolExp _instance;

  final TRes Function(Input_HistoryLatestEditsBoolExp) _then;

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
    Input_HistoryLatestEditsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryLatestEditsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryLatestEditsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryLatestEditsBoolExp>?),
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
    Iterable<Input_HistoryLatestEditsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestEditsBoolExp<
          Input_HistoryLatestEditsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryLatestEditsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryLatestEditsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestEditsBoolExp<
          Input_HistoryLatestEditsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryLatestEditsBoolExp(e, (i) => i),
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

class _CopyWithStubImpl_Input_HistoryLatestEditsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestEditsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestEditsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryLatestEditsBoolExp>? $_and,
    Input_HistoryLatestEditsBoolExp? $_not,
    List<Input_HistoryLatestEditsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

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

class Input_HistoryLatestEditsOrderBy {
  factory Input_HistoryLatestEditsOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryLatestEditsOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestEditsOrderBy._(this._$data);

  factory Input_HistoryLatestEditsOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_HistoryLatestEditsOrderBy._(result$data);
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

  CopyWith_Input_HistoryLatestEditsOrderBy<Input_HistoryLatestEditsOrderBy>
  get copyWith => CopyWith_Input_HistoryLatestEditsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestEditsOrderBy ||
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

abstract class CopyWith_Input_HistoryLatestEditsOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestEditsOrderBy(
    Input_HistoryLatestEditsOrderBy instance,
    TRes Function(Input_HistoryLatestEditsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestEditsOrderBy;

  factory CopyWith_Input_HistoryLatestEditsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestEditsOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestEditsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestEditsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestEditsOrderBy(this._instance, this._then);

  final Input_HistoryLatestEditsOrderBy _instance;

  final TRes Function(Input_HistoryLatestEditsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryLatestEditsOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryLatestEditsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestEditsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestEditsOrderBy(this._res);

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

class Input_HistoryLatestFatherVisitsBoolExp {
  factory Input_HistoryLatestFatherVisitsBoolExp({
    List<Input_HistoryLatestFatherVisitsBoolExp>? $_and,
    Input_HistoryLatestFatherVisitsBoolExp? $_not,
    List<Input_HistoryLatestFatherVisitsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) => Input_HistoryLatestFatherVisitsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryLatestFatherVisitsBoolExp._(this._$data);

  factory Input_HistoryLatestFatherVisitsBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestFatherVisitsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestFatherVisitsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestFatherVisitsBoolExp.fromJson(
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
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$visitId as Map<String, dynamic>),
            );
    }
    return Input_HistoryLatestFatherVisitsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryLatestFatherVisitsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryLatestFatherVisitsBoolExp>?);

  Input_HistoryLatestFatherVisitsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryLatestFatherVisitsBoolExp?);

  List<Input_HistoryLatestFatherVisitsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryLatestFatherVisitsBoolExp>?);

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

  Input_UuidComparisonExp? get visitId =>
      (_$data['visitId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryLatestFatherVisitsBoolExp<
    Input_HistoryLatestFatherVisitsBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryLatestFatherVisitsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestFatherVisitsBoolExp ||
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
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (_$data.containsKey('visitId') != other._$data.containsKey('visitId')) {
      return false;
    }
    if (l$visitId != lOther$visitId) {
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
    final l$visitId = visitId;
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
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestFatherVisitsBoolExp<TRes> {
  factory CopyWith_Input_HistoryLatestFatherVisitsBoolExp(
    Input_HistoryLatestFatherVisitsBoolExp instance,
    TRes Function(Input_HistoryLatestFatherVisitsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryLatestFatherVisitsBoolExp;

  factory CopyWith_Input_HistoryLatestFatherVisitsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestFatherVisitsBoolExp;

  TRes call({
    List<Input_HistoryLatestFatherVisitsBoolExp>? $_and,
    Input_HistoryLatestFatherVisitsBoolExp? $_not,
    List<Input_HistoryLatestFatherVisitsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  });
  TRes $_and(
    Iterable<Input_HistoryLatestFatherVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestFatherVisitsBoolExp<
          Input_HistoryLatestFatherVisitsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryLatestFatherVisitsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryLatestFatherVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestFatherVisitsBoolExp<
          Input_HistoryLatestFatherVisitsBoolExp
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
  CopyWith_Input_UuidComparisonExp<TRes> get visitId;
}

class _CopyWithImpl_Input_HistoryLatestFatherVisitsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestFatherVisitsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestFatherVisitsBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryLatestFatherVisitsBoolExp _instance;

  final TRes Function(Input_HistoryLatestFatherVisitsBoolExp) _then;

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
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryLatestFatherVisitsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryLatestFatherVisitsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryLatestFatherVisitsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryLatestFatherVisitsBoolExp>?),
      if (recordId != _undefined)
        'recordId': (recordId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (table != _undefined) 'table': (table as Input_NameComparisonExp?),
      if (time != _undefined) 'time': (time as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
      if (visitId != _undefined)
        'visitId': (visitId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryLatestFatherVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestFatherVisitsBoolExp<
          Input_HistoryLatestFatherVisitsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryLatestFatherVisitsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryLatestFatherVisitsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestFatherVisitsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestFatherVisitsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryLatestFatherVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestFatherVisitsBoolExp<
          Input_HistoryLatestFatherVisitsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryLatestFatherVisitsBoolExp(e, (i) => i),
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

  CopyWith_Input_UuidComparisonExp<TRes> get visitId {
    final local$visitId = _instance.visitId;
    return local$visitId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$visitId,
            (e) => call(visitId: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryLatestFatherVisitsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestFatherVisitsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestFatherVisitsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryLatestFatherVisitsBoolExp>? $_and,
    Input_HistoryLatestFatherVisitsBoolExp? $_not,
    List<Input_HistoryLatestFatherVisitsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryLatestFatherVisitsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryLatestFatherVisitsBoolExp.stub(_res);

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

  CopyWith_Input_UuidComparisonExp<TRes> get visitId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_HistoryLatestFatherVisitsOrderBy {
  factory Input_HistoryLatestFatherVisitsOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  }) => Input_HistoryLatestFatherVisitsOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryLatestFatherVisitsOrderBy._(this._$data);

  factory Input_HistoryLatestFatherVisitsOrderBy.fromJson(
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
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : fromJson_Enum_OrderBy((l$visitId as String));
    }
    return Input_HistoryLatestFatherVisitsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get table => (_$data['table'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Enum_OrderBy? get visitId => (_$data['visitId'] as Enum_OrderBy?);

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
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId == null
          ? null
          : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryLatestFatherVisitsOrderBy<
    Input_HistoryLatestFatherVisitsOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryLatestFatherVisitsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestFatherVisitsOrderBy ||
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
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (_$data.containsKey('visitId') != other._$data.containsKey('visitId')) {
      return false;
    }
    if (l$visitId != lOther$visitId) {
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
    final l$visitId = visitId;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestFatherVisitsOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestFatherVisitsOrderBy(
    Input_HistoryLatestFatherVisitsOrderBy instance,
    TRes Function(Input_HistoryLatestFatherVisitsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestFatherVisitsOrderBy;

  factory CopyWith_Input_HistoryLatestFatherVisitsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestFatherVisitsOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestFatherVisitsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestFatherVisitsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestFatherVisitsOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryLatestFatherVisitsOrderBy _instance;

  final TRes Function(Input_HistoryLatestFatherVisitsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryLatestFatherVisitsOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (table != _undefined) 'table': (table as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
      if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryLatestFatherVisitsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestFatherVisitsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestFatherVisitsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  }) => _res;

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryLatestKodasesBoolExp {
  factory Input_HistoryLatestKodasesBoolExp({
    List<Input_HistoryLatestKodasesBoolExp>? $_and,
    Input_HistoryLatestKodasesBoolExp? $_not,
    List<Input_HistoryLatestKodasesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryLatestKodasesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestKodasesBoolExp._(this._$data);

  factory Input_HistoryLatestKodasesBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestKodasesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestKodasesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestKodasesBoolExp.fromJson(
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
    return Input_HistoryLatestKodasesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryLatestKodasesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryLatestKodasesBoolExp>?);

  Input_HistoryLatestKodasesBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryLatestKodasesBoolExp?);

  List<Input_HistoryLatestKodasesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryLatestKodasesBoolExp>?);

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

  CopyWith_Input_HistoryLatestKodasesBoolExp<Input_HistoryLatestKodasesBoolExp>
  get copyWith => CopyWith_Input_HistoryLatestKodasesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestKodasesBoolExp ||
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

abstract class CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> {
  factory CopyWith_Input_HistoryLatestKodasesBoolExp(
    Input_HistoryLatestKodasesBoolExp instance,
    TRes Function(Input_HistoryLatestKodasesBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryLatestKodasesBoolExp;

  factory CopyWith_Input_HistoryLatestKodasesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestKodasesBoolExp;

  TRes call({
    List<Input_HistoryLatestKodasesBoolExp>? $_and,
    Input_HistoryLatestKodasesBoolExp? $_not,
    List<Input_HistoryLatestKodasesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryLatestKodasesBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestKodasesBoolExp<
          Input_HistoryLatestKodasesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryLatestKodasesBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestKodasesBoolExp<
          Input_HistoryLatestKodasesBoolExp
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

class _CopyWithImpl_Input_HistoryLatestKodasesBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestKodasesBoolExp(this._instance, this._then);

  final Input_HistoryLatestKodasesBoolExp _instance;

  final TRes Function(Input_HistoryLatestKodasesBoolExp) _then;

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
    Input_HistoryLatestKodasesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryLatestKodasesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryLatestKodasesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryLatestKodasesBoolExp>?),
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
    Iterable<Input_HistoryLatestKodasesBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestKodasesBoolExp<
          Input_HistoryLatestKodasesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryLatestKodasesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestKodasesBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestKodasesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryLatestKodasesBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestKodasesBoolExp<
          Input_HistoryLatestKodasesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryLatestKodasesBoolExp(e, (i) => i),
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

class _CopyWithStubImpl_Input_HistoryLatestKodasesBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestKodasesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryLatestKodasesBoolExp>? $_and,
    Input_HistoryLatestKodasesBoolExp? $_not,
    List<Input_HistoryLatestKodasesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryLatestKodasesBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryLatestKodasesBoolExp.stub(_res);

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

class Input_HistoryLatestKodasesOrderBy {
  factory Input_HistoryLatestKodasesOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryLatestKodasesOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryLatestKodasesOrderBy._(this._$data);

  factory Input_HistoryLatestKodasesOrderBy.fromJson(
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
    return Input_HistoryLatestKodasesOrderBy._(result$data);
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

  CopyWith_Input_HistoryLatestKodasesOrderBy<Input_HistoryLatestKodasesOrderBy>
  get copyWith => CopyWith_Input_HistoryLatestKodasesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestKodasesOrderBy ||
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

abstract class CopyWith_Input_HistoryLatestKodasesOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestKodasesOrderBy(
    Input_HistoryLatestKodasesOrderBy instance,
    TRes Function(Input_HistoryLatestKodasesOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestKodasesOrderBy;

  factory CopyWith_Input_HistoryLatestKodasesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestKodasesOrderBy;

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

class _CopyWithImpl_Input_HistoryLatestKodasesOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestKodasesOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestKodasesOrderBy(this._instance, this._then);

  final Input_HistoryLatestKodasesOrderBy _instance;

  final TRes Function(Input_HistoryLatestKodasesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryLatestKodasesOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryLatestKodasesOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestKodasesOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestKodasesOrderBy(this._res);

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

class Input_HistoryLatestVisitsBoolExp {
  factory Input_HistoryLatestVisitsBoolExp({
    List<Input_HistoryLatestVisitsBoolExp>? $_and,
    Input_HistoryLatestVisitsBoolExp? $_not,
    List<Input_HistoryLatestVisitsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) => Input_HistoryLatestVisitsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryLatestVisitsBoolExp._(this._$data);

  factory Input_HistoryLatestVisitsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestVisitsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestVisitsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryLatestVisitsBoolExp.fromJson(
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
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$visitId as Map<String, dynamic>),
            );
    }
    return Input_HistoryLatestVisitsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryLatestVisitsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryLatestVisitsBoolExp>?);

  Input_HistoryLatestVisitsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryLatestVisitsBoolExp?);

  List<Input_HistoryLatestVisitsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryLatestVisitsBoolExp>?);

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

  Input_UuidComparisonExp? get visitId =>
      (_$data['visitId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryLatestVisitsBoolExp<Input_HistoryLatestVisitsBoolExp>
  get copyWith => CopyWith_Input_HistoryLatestVisitsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestVisitsBoolExp ||
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
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (_$data.containsKey('visitId') != other._$data.containsKey('visitId')) {
      return false;
    }
    if (l$visitId != lOther$visitId) {
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
    final l$visitId = visitId;
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
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> {
  factory CopyWith_Input_HistoryLatestVisitsBoolExp(
    Input_HistoryLatestVisitsBoolExp instance,
    TRes Function(Input_HistoryLatestVisitsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryLatestVisitsBoolExp;

  factory CopyWith_Input_HistoryLatestVisitsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestVisitsBoolExp;

  TRes call({
    List<Input_HistoryLatestVisitsBoolExp>? $_and,
    Input_HistoryLatestVisitsBoolExp? $_not,
    List<Input_HistoryLatestVisitsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  });
  TRes $_and(
    Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestVisitsBoolExp<
          Input_HistoryLatestVisitsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestVisitsBoolExp<
          Input_HistoryLatestVisitsBoolExp
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
  CopyWith_Input_UuidComparisonExp<TRes> get visitId;
}

class _CopyWithImpl_Input_HistoryLatestVisitsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestVisitsBoolExp(this._instance, this._then);

  final Input_HistoryLatestVisitsBoolExp _instance;

  final TRes Function(Input_HistoryLatestVisitsBoolExp) _then;

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
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryLatestVisitsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryLatestVisitsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryLatestVisitsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryLatestVisitsBoolExp>?),
      if (recordId != _undefined)
        'recordId': (recordId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (table != _undefined) 'table': (table as Input_NameComparisonExp?),
      if (time != _undefined) 'time': (time as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
      if (visitId != _undefined)
        'visitId': (visitId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestVisitsBoolExp<
          Input_HistoryLatestVisitsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryLatestVisitsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestVisitsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryLatestVisitsBoolExp<
          Input_HistoryLatestVisitsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryLatestVisitsBoolExp(e, (i) => i),
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

  CopyWith_Input_UuidComparisonExp<TRes> get visitId {
    final local$visitId = _instance.visitId;
    return local$visitId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$visitId,
            (e) => call(visitId: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryLatestVisitsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestVisitsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryLatestVisitsBoolExp>? $_and,
    Input_HistoryLatestVisitsBoolExp? $_not,
    List<Input_HistoryLatestVisitsBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_res);

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

  CopyWith_Input_UuidComparisonExp<TRes> get visitId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_HistoryLatestVisitsOrderBy {
  factory Input_HistoryLatestVisitsOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  }) => Input_HistoryLatestVisitsOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryLatestVisitsOrderBy._(this._$data);

  factory Input_HistoryLatestVisitsOrderBy.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : fromJson_Enum_OrderBy((l$visitId as String));
    }
    return Input_HistoryLatestVisitsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get table => (_$data['table'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Enum_OrderBy? get visitId => (_$data['visitId'] as Enum_OrderBy?);

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
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId == null
          ? null
          : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryLatestVisitsOrderBy<Input_HistoryLatestVisitsOrderBy>
  get copyWith => CopyWith_Input_HistoryLatestVisitsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryLatestVisitsOrderBy ||
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
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (_$data.containsKey('visitId') != other._$data.containsKey('visitId')) {
      return false;
    }
    if (l$visitId != lOther$visitId) {
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
    final l$visitId = visitId;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}
