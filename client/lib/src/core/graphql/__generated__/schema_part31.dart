// Part 31 of the schema
part of "schema.graphql.dart";


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
  _CopyWithImpl_Input_HistoryLatestKodasesOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryLatestKodasesOrderBy _instance;

  final TRes Function(Input_HistoryLatestKodasesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Input_HistoryLatestKodasesOrderBy._({
        ..._instance._$data,
        if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        if (recordedBy != _undefined)
          'recordedBy': (recordedBy as Enum_OrderBy?),
        if (time != _undefined) 'time': (time as Enum_OrderBy?),
        if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
      }));

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
  }) =>
      _res;

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
  }) =>
      Input_HistoryLatestVisitsBoolExp._({
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
          ?.map((e) => Input_HistoryLatestVisitsBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryLatestVisitsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_HistoryLatestVisitsBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordId as Map<String, dynamic>));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>));
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
              (l$time as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>));
    }
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$visitId as Map<String, dynamic>));
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
      get copyWith => CopyWith_Input_HistoryLatestVisitsBoolExp(
            this,
            (i) => i,
          );

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
                      Input_HistoryLatestVisitsBoolExp>>?)
          _fn);
  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
              Iterable<
                  CopyWith_Input_HistoryLatestVisitsBoolExp<
                      Input_HistoryLatestVisitsBoolExp>>?)
          _fn);
  CopyWith_Input_UuidComparisonExp<TRes> get recordId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_NameComparisonExp<TRes> get table;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
  CopyWith_Input_UuidComparisonExp<TRes> get visitId;
}

class _CopyWithImpl_Input_HistoryLatestVisitsBoolExp<TRes>
    implements CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryLatestVisitsBoolExp(
    this._instance,
    this._then,
  );

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
  }) =>
      _then(Input_HistoryLatestVisitsBoolExp._({
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
        if (time != _undefined)
          'time': (time as Input_TimestamptzComparisonExp?),
        if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
        if (visitId != _undefined)
          'visitId': (visitId as Input_UuidComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_HistoryLatestVisitsBoolExp<
                          Input_HistoryLatestVisitsBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith_Input_HistoryLatestVisitsBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestVisitsBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_HistoryLatestVisitsBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_HistoryLatestVisitsBoolExp<
                          Input_HistoryLatestVisitsBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or
              ?.map((e) => CopyWith_Input_HistoryLatestVisitsBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_UuidComparisonExp<TRes> get recordId {
    final local$recordId = _instance.recordId;
    return local$recordId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordId, (e) => call(recordId: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy, (e) => call(recordedBy: e));
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
            local$time, (e) => call(time: e));
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
            local$visitId, (e) => call(visitId: e));
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
  }) =>
      _res;

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
  }) =>
      Input_HistoryLatestVisitsOrderBy._({
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
      result$data['table'] =
          l$table == null ? null : fromJson_Enum_OrderBy((l$table as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] =
          l$time == null ? null : fromJson_Enum_OrderBy((l$time as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>));
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
      result$data['recordId'] =
          l$recordId == null ? null : toJson_Enum_OrderBy(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] =
          l$recordedBy == null ? null : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] =
          l$table == null ? null : toJson_Enum_OrderBy(l$table);
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
      result$data['visitId'] =
          l$visitId == null ? null : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryLatestVisitsOrderBy<Input_HistoryLatestVisitsOrderBy>
      get copyWith => CopyWith_Input_HistoryLatestVisitsOrderBy(
            this,
            (i) => i,
          );

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

abstract class CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestVisitsOrderBy(
    Input_HistoryLatestVisitsOrderBy instance,
    TRes Function(Input_HistoryLatestVisitsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestVisitsOrderBy;

  factory CopyWith_Input_HistoryLatestVisitsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestVisitsOrderBy;

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

class _CopyWithImpl_Input_HistoryLatestVisitsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestVisitsOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryLatestVisitsOrderBy _instance;

  final TRes Function(Input_HistoryLatestVisitsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? visitId = _undefined,
  }) =>
      _then(Input_HistoryLatestVisitsOrderBy._({
        ..._instance._$data,
        if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
        if (recordedBy != _undefined)
          'recordedBy': (recordedBy as Enum_OrderBy?),
        if (table != _undefined) 'table': (table as Enum_OrderBy?),
        if (time != _undefined) 'time': (time as Enum_OrderBy?),
        if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
        if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
      }));

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryLatestVisitsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestVisitsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  }) =>
      _res;

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryVisitHistoryAggregateBoolExp {
  factory Input_HistoryVisitHistoryAggregateBoolExp(
          {Input_historyVisitHistoryAggregateBoolExpCount? count}) =>
      Input_HistoryVisitHistoryAggregateBoolExp._({
        if (count != null) r'count': count,
      });

  Input_HistoryVisitHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryVisitHistoryAggregateBoolExp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>));
    }
    return Input_HistoryVisitHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyVisitHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyVisitHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<
          Input_HistoryVisitHistoryAggregateBoolExp>
      get copyWith => CopyWith_Input_HistoryVisitHistoryAggregateBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryAggregateBoolExp(
    Input_HistoryVisitHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryVisitHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryVisitHistoryAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateBoolExp;

  TRes call({Input_historyVisitHistoryAggregateBoolExpCount? count});
  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryVisitHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) =>
      _then(Input_HistoryVisitHistoryAggregateBoolExp._({
        ..._instance._$data,
        if (count != _undefined)
          'count': (count as Input_historyVisitHistoryAggregateBoolExpCount?),
      }));

  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyVisitHistoryAggregateBoolExpCount.stub(
            _then(_instance))
        : CopyWith_Input_historyVisitHistoryAggregateBoolExpCount(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyVisitHistoryAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyVisitHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryVisitHistoryAggregateOrderBy {
  factory Input_HistoryVisitHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryVisitHistoryMaxOrderBy? max,
    Input_HistoryVisitHistoryMinOrderBy? min,
  }) =>
      Input_HistoryVisitHistoryAggregateOrderBy._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input_HistoryVisitHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryAggregateOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_HistoryVisitHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryVisitHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input_HistoryVisitHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryVisitHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryVisitHistoryMaxOrderBy?);

  Input_HistoryVisitHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryVisitHistoryMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson_Enum_OrderBy(l$count);
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

  CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<
          Input_HistoryVisitHistoryAggregateOrderBy>
      get copyWith => CopyWith_Input_HistoryVisitHistoryAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryAggregateOrderBy(
    Input_HistoryVisitHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryVisitHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryVisitHistoryAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryVisitHistoryMaxOrderBy? max,
    Input_HistoryVisitHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input_HistoryVisitHistoryAggregateOrderBy._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined)
          'max': (max as Input_HistoryVisitHistoryMaxOrderBy?),
        if (min != _undefined)
          'min': (min as Input_HistoryVisitHistoryMinOrderBy?),
      }));

  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryVisitHistoryMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryMaxOrderBy(
            local$max, (e) => call(max: e));
  }

  CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryVisitHistoryMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryMinOrderBy(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryVisitHistoryMaxOrderBy? max,
    Input_HistoryVisitHistoryMinOrderBy? min,
  }) =>
      _res;

  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryVisitHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryVisitHistoryMinOrderBy.stub(_res);
}

class Input_HistoryVisitHistoryArrRelInsertInput {
  factory Input_HistoryVisitHistoryArrRelInsertInput({
    required List<Input_HistoryVisitHistoryInsertInput> data,
    Input_HistoryVisitHistoryOnConflict? onConflict,
  }) =>
      Input_HistoryVisitHistoryArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_HistoryVisitHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryVisitHistoryArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input_HistoryVisitHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryVisitHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_HistoryVisitHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryVisitHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryVisitHistoryInsertInput>);

  Input_HistoryVisitHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryVisitHistoryOnConflict?);

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

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<
          Input_HistoryVisitHistoryArrRelInsertInput>
      get copyWith => CopyWith_Input_HistoryVisitHistoryArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryArrRelInsertInput(
    Input_HistoryVisitHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryVisitHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryVisitHistoryInsertInput>? data,
    Input_HistoryVisitHistoryOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_HistoryVisitHistoryInsertInput> Function(
              Iterable<
                  CopyWith_Input_HistoryVisitHistoryInsertInput<
                      Input_HistoryVisitHistoryInsertInput>>)
          _fn);
  CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryVisitHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryVisitHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_HistoryVisitHistoryArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_HistoryVisitHistoryInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_HistoryVisitHistoryOnConflict?),
      }));

  TRes data(
          Iterable<Input_HistoryVisitHistoryInsertInput> Function(
                  Iterable<
                      CopyWith_Input_HistoryVisitHistoryInsertInput<
                          Input_HistoryVisitHistoryInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_HistoryVisitHistoryInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryVisitHistoryOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryVisitHistoryInsertInput>? data,
    Input_HistoryVisitHistoryOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryVisitHistoryOnConflict.stub(_res);
}

class Input_HistoryVisitHistoryBoolExp {
  factory Input_HistoryVisitHistoryBoolExp({
    List<Input_HistoryVisitHistoryBoolExp>? $_and,
    Input_HistoryVisitHistoryBoolExp? $_not,
    List<Input_HistoryVisitHistoryBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) =>
      Input_HistoryVisitHistoryBoolExp._({
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

  Input_HistoryVisitHistoryBoolExp._(this._$data);

  factory Input_HistoryVisitHistoryBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordId as Map<String, dynamic>));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>));
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
              (l$time as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>));
    }
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$visitId as Map<String, dynamic>));
    }
    return Input_HistoryVisitHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryVisitHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryVisitHistoryBoolExp>?);

  Input_HistoryVisitHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryVisitHistoryBoolExp?);

  List<Input_HistoryVisitHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryVisitHistoryBoolExp>?);

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

  CopyWith_Input_HistoryVisitHistoryBoolExp<Input_HistoryVisitHistoryBoolExp>
      get copyWith => CopyWith_Input_HistoryVisitHistoryBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryBoolExp ||
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

abstract class CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryBoolExp(
    Input_HistoryVisitHistoryBoolExp instance,
    TRes Function(Input_HistoryVisitHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryBoolExp;

  factory CopyWith_Input_HistoryVisitHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryBoolExp;

  TRes call({
    List<Input_HistoryVisitHistoryBoolExp>? $_and,
    Input_HistoryVisitHistoryBoolExp? $_not,
    List<Input_HistoryVisitHistoryBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  });
  TRes $_and(
      Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
              Iterable<
                  CopyWith_Input_HistoryVisitHistoryBoolExp<
                      Input_HistoryVisitHistoryBoolExp>>?)
          _fn);
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
              Iterable<
                  CopyWith_Input_HistoryVisitHistoryBoolExp<
                      Input_HistoryVisitHistoryBoolExp>>?)
          _fn);
  CopyWith_Input_UuidComparisonExp<TRes> get recordId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_NameComparisonExp<TRes> get table;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
  CopyWith_Input_UuidComparisonExp<TRes> get visitId;
}

class _CopyWithImpl_Input_HistoryVisitHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryBoolExp _instance;

  final TRes Function(Input_HistoryVisitHistoryBoolExp) _then;

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
  }) =>
      _then(Input_HistoryVisitHistoryBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_HistoryVisitHistoryBoolExp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input_HistoryVisitHistoryBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_HistoryVisitHistoryBoolExp>?),
        if (recordId != _undefined)
          'recordId': (recordId as Input_UuidComparisonExp?),
        if (recordedBy != _undefined)
          'recordedBy': (recordedBy as Input_UuidComparisonExp?),
        if (table != _undefined) 'table': (table as Input_NameComparisonExp?),
        if (time != _undefined)
          'time': (time as Input_TimestamptzComparisonExp?),
        if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
        if (visitId != _undefined)
          'visitId': (visitId as Input_UuidComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_HistoryVisitHistoryBoolExp<
                          Input_HistoryVisitHistoryBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith_Input_HistoryVisitHistoryBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_HistoryVisitHistoryBoolExp<
                          Input_HistoryVisitHistoryBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or
              ?.map((e) => CopyWith_Input_HistoryVisitHistoryBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_UuidComparisonExp<TRes> get recordId {
    final local$recordId = _instance.recordId;
    return local$recordId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordId, (e) => call(recordId: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy, (e) => call(recordedBy: e));
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
            local$time, (e) => call(time: e));
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
            local$visitId, (e) => call(visitId: e));
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryVisitHistoryBoolExp>? $_and,
    Input_HistoryVisitHistoryBoolExp? $_not,
    List<Input_HistoryVisitHistoryBoolExp>? $_or,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

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

class Input_HistoryVisitHistoryInsertInput {
  factory Input_HistoryVisitHistoryInsertInput({
    UuidValue? recordId,
    String? table,
    DateTime? time,
  }) =>
      Input_HistoryVisitHistoryInsertInput._({
        if (recordId != null) r'recordId': recordId,
        if (table != null) r'table': table,
        if (time != null) r'time': time,
      });

  Input_HistoryVisitHistoryInsertInput._(this._$data);

  factory Input_HistoryVisitHistoryInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] =
          l$recordId == null ? null : stringToUuid(l$recordId);
    }
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = (l$table as String?);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryVisitHistoryInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get recordId => (_$data['recordId'] as UuidValue?);

  String? get table => (_$data['table'] as String?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] =
          l$recordId == null ? null : uuidToString(l$recordId);
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table;
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryInsertInput<
          Input_HistoryVisitHistoryInsertInput>
      get copyWith => CopyWith_Input_HistoryVisitHistoryInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryInsertInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$recordId = recordId;
    final l$table = table;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryVisitHistoryInsertInput<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryInsertInput(
    Input_HistoryVisitHistoryInsertInput instance,
    TRes Function(Input_HistoryVisitHistoryInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryInsertInput;

  factory CopyWith_Input_HistoryVisitHistoryInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryInsertInput;

  TRes call({
    UuidValue? recordId,
    String? table,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryVisitHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryInsertInput _instance;

  final TRes Function(Input_HistoryVisitHistoryInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input_HistoryVisitHistoryInsertInput._({
        ..._instance._$data,
        if (recordId != _undefined) 'recordId': (recordId as UuidValue?),
        if (table != _undefined) 'table': (table as String?),
        if (time != _undefined) 'time': (time as DateTime?),
      }));
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryInsertInput(this._res);

  TRes _res;

  call({
    UuidValue? recordId,
    String? table,
    DateTime? time,
  }) =>
      _res;
}

class Input_HistoryVisitHistoryMaxOrderBy {
  factory Input_HistoryVisitHistoryMaxOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  }) =>
      Input_HistoryVisitHistoryMaxOrderBy._({
        if (recordId != null) r'recordId': recordId,
        if (recordedBy != null) r'recordedBy': recordedBy,
        if (time != null) r'time': time,
        if (visitId != null) r'visitId': visitId,
      });

  Input_HistoryVisitHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryMaxOrderBy.fromJson(
      Map<String, dynamic> data) {
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
      result$data['time'] =
          l$time == null ? null : fromJson_Enum_OrderBy((l$time as String));
    }
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : fromJson_Enum_OrderBy((l$visitId as String));
    }
    return Input_HistoryVisitHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Enum_OrderBy? get visitId => (_$data['visitId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] =
          l$recordId == null ? null : toJson_Enum_OrderBy(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] =
          l$recordedBy == null ? null : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] =
          l$visitId == null ? null : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<
          Input_HistoryVisitHistoryMaxOrderBy>
      get copyWith => CopyWith_Input_HistoryVisitHistoryMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryMaxOrderBy ||
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
    final l$time = time;
    final l$visitId = visitId;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryMaxOrderBy(
    Input_HistoryVisitHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryVisitHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryVisitHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  });
}

class _CopyWithImpl_Input_HistoryVisitHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? visitId = _undefined,
  }) =>
      _then(Input_HistoryVisitHistoryMaxOrderBy._({
        ..._instance._$data,
        if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
        if (recordedBy != _undefined)
          'recordedBy': (recordedBy as Enum_OrderBy?),
        if (time != _undefined) 'time': (time as Enum_OrderBy?),
        if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  }) =>
      _res;
}

class Input_HistoryVisitHistoryMinOrderBy {
  factory Input_HistoryVisitHistoryMinOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  }) =>
      Input_HistoryVisitHistoryMinOrderBy._({
        if (recordId != null) r'recordId': recordId,
        if (recordedBy != null) r'recordedBy': recordedBy,
        if (time != null) r'time': time,
        if (visitId != null) r'visitId': visitId,
      });

  Input_HistoryVisitHistoryMinOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryMinOrderBy.fromJson(
      Map<String, dynamic> data) {
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
      result$data['time'] =
          l$time == null ? null : fromJson_Enum_OrderBy((l$time as String));
    }
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : fromJson_Enum_OrderBy((l$visitId as String));
    }
    return Input_HistoryVisitHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Enum_OrderBy? get visitId => (_$data['visitId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] =
          l$recordId == null ? null : toJson_Enum_OrderBy(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] =
          l$recordedBy == null ? null : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] =
          l$visitId == null ? null : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryMinOrderBy<
          Input_HistoryVisitHistoryMinOrderBy>
      get copyWith => CopyWith_Input_HistoryVisitHistoryMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryMinOrderBy ||
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
    final l$time = time;
    final l$visitId = visitId;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryMinOrderBy(
    Input_HistoryVisitHistoryMinOrderBy instance,
    TRes Function(Input_HistoryVisitHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryMinOrderBy;

  factory CopyWith_Input_HistoryVisitHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  });
}

class _CopyWithImpl_Input_HistoryVisitHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? visitId = _undefined,
  }) =>
      _then(Input_HistoryVisitHistoryMinOrderBy._({
        ..._instance._$data,
        if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
        if (recordedBy != _undefined)
          'recordedBy': (recordedBy as Enum_OrderBy?),
        if (time != _undefined) 'time': (time as Enum_OrderBy?),
        if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  }) =>
      _res;
}

class Input_HistoryVisitHistoryOnConflict {
  factory Input_HistoryVisitHistoryOnConflict({
    required Enum_HistoryVisitHistoryConstraint constraint,
    List<Enum_HistoryVisitHistoryUpdateColumn>? updateColumns,
    Input_HistoryVisitHistoryBoolExp? where,
  }) =>
      Input_HistoryVisitHistoryOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_HistoryVisitHistoryOnConflict._(this._$data);

  factory Input_HistoryVisitHistoryOnConflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_HistoryVisitHistoryConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) =>
              fromJson_Enum_HistoryVisitHistoryUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_HistoryVisitHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryVisitHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryVisitHistoryConstraint);

  List<Enum_HistoryVisitHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryVisitHistoryUpdateColumn>?);

  Input_HistoryVisitHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryVisitHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_HistoryVisitHistoryConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryVisitHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryVisitHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryOnConflict<
          Input_HistoryVisitHistoryOnConflict>
      get copyWith => CopyWith_Input_HistoryVisitHistoryOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryOnConflict ||
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
