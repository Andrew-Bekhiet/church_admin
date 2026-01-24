// Part 22 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_GroupsUpdates<TRes> {
  factory CopyWith_Input_GroupsUpdates(
    Input_GroupsUpdates instance,
    TRes Function(Input_GroupsUpdates) then,
  ) = _CopyWithImpl_Input_GroupsUpdates;

  factory CopyWith_Input_GroupsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsUpdates;

  TRes call({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    Input_GroupsBoolExp? where,
  });
  CopyWith_Input_GroupsIncInput<TRes> get $_inc;
  CopyWith_Input_GroupsSetInput<TRes> get $_set;
  CopyWith_Input_GroupsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_GroupsUpdates<TRes>
    implements CopyWith_Input_GroupsUpdates<TRes> {
  _CopyWithImpl_Input_GroupsUpdates(this._instance, this._then);

  final Input_GroupsUpdates _instance;

  final TRes Function(Input_GroupsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_GroupsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_GroupsIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_GroupsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_GroupsBoolExp),
    }),
  );

  CopyWith_Input_GroupsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_GroupsIncInput.stub(_then(_instance))
        : CopyWith_Input_GroupsIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_GroupsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_GroupsSetInput.stub(_then(_instance))
        : CopyWith_Input_GroupsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_GroupsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_GroupsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_GroupsUpdates<TRes>
    implements CopyWith_Input_GroupsUpdates<TRes> {
  _CopyWithStubImpl_Input_GroupsUpdates(this._res);

  TRes _res;

  call({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    Input_GroupsBoolExp? where,
  }) => _res;

  CopyWith_Input_GroupsIncInput<TRes> get $_inc =>
      CopyWith_Input_GroupsIncInput.stub(_res);

  CopyWith_Input_GroupsSetInput<TRes> get $_set =>
      CopyWith_Input_GroupsSetInput.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get where =>
      CopyWith_Input_GroupsBoolExp.stub(_res);
}

class Input_GroupsVarPopOrderBy {
  factory Input_GroupsVarPopOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarPopOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarPopOrderBy._(this._$data);

  factory Input_GroupsVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_GroupsVarPopOrderBy<Input_GroupsVarPopOrderBy> get copyWith =>
      CopyWith_Input_GroupsVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarPopOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarPopOrderBy(
    Input_GroupsVarPopOrderBy instance,
    TRes Function(Input_GroupsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarPopOrderBy;

  factory CopyWith_Input_GroupsVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarPopOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarPopOrderBy<TRes>
    implements CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarPopOrderBy(this._instance, this._then);

  final Input_GroupsVarPopOrderBy _instance;

  final TRes Function(Input_GroupsVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarPopOrderBy<TRes>
    implements CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsVarSampOrderBy {
  factory Input_GroupsVarSampOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarSampOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarSampOrderBy._(this._$data);

  factory Input_GroupsVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_GroupsVarSampOrderBy<Input_GroupsVarSampOrderBy>
  get copyWith => CopyWith_Input_GroupsVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarSampOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarSampOrderBy(
    Input_GroupsVarSampOrderBy instance,
    TRes Function(Input_GroupsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarSampOrderBy;

  factory CopyWith_Input_GroupsVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarSampOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarSampOrderBy<TRes>
    implements CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarSampOrderBy(this._instance, this._then);

  final Input_GroupsVarSampOrderBy _instance;

  final TRes Function(Input_GroupsVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarSampOrderBy<TRes>
    implements CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsVarianceOrderBy {
  factory Input_GroupsVarianceOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarianceOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarianceOrderBy._(this._$data);

  factory Input_GroupsVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarianceOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_GroupsVarianceOrderBy<Input_GroupsVarianceOrderBy>
  get copyWith => CopyWith_Input_GroupsVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarianceOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarianceOrderBy(
    Input_GroupsVarianceOrderBy instance,
    TRes Function(Input_GroupsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarianceOrderBy;

  factory CopyWith_Input_GroupsVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarianceOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarianceOrderBy<TRes>
    implements CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarianceOrderBy(this._instance, this._then);

  final Input_GroupsVarianceOrderBy _instance;

  final TRes Function(Input_GroupsVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarianceOrderBy<TRes>
    implements CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_HistoryAttendanceDaysBoolExp {
  factory Input_HistoryAttendanceDaysBoolExp({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsBoolExp? constraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    constraintsAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
    Input_StringComparisonExp? notes,
  }) => Input_HistoryAttendanceDaysBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (confessionHistoryAggregate != null)
      r'confessionHistoryAggregate': confessionHistoryAggregate,
    if (constraints != null) r'constraints': constraints,
    if (constraintsAggregate != null)
      r'constraintsAggregate': constraintsAggregate,
    if (day != null) r'day': day,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
    if (kodasHistoryAggregate != null)
      r'kodasHistoryAggregate': kodasHistoryAggregate,
    if (notes != null) r'notes': notes,
  });

  Input_HistoryAttendanceDaysBoolExp._(this._$data);

  factory Input_HistoryAttendanceDaysBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysBoolExp.fromJson(
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
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
          ? null
          : Input_HistoryConfessionHistoryAggregateBoolExp.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('constraints')) {
      final l$constraints = data['constraints'];
      result$data['constraints'] = l$constraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$constraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = data['constraintsAggregate'];
      result$data['constraintsAggregate'] = l$constraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.fromJson(
              (l$constraintsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_DateComparisonExp.fromJson((l$day as Map<String, dynamic>));
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateBoolExp.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$notes as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceDaysBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryAttendanceDaysBoolExp>?);

  Input_HistoryAttendanceDaysBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryAttendanceDaysBoolExp?);

  List<Input_HistoryAttendanceDaysBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryAttendanceDaysBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_HistoryConfessionHistoryBoolExp? get confessionHistory =>
      (_$data['confessionHistory'] as Input_HistoryConfessionHistoryBoolExp?);

  Input_HistoryConfessionHistoryAggregateBoolExp?
  get confessionHistoryAggregate =>
      (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateBoolExp?);

  Input_HistoryAttendanceDaysConstraintsBoolExp? get constraints =>
      (_$data['constraints'] as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
  get constraintsAggregate =>
      (_$data['constraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?);

  Input_DateComparisonExp? get day =>
      (_$data['day'] as Input_DateComparisonExp?);

  Input_HistoryKodasHistoryBoolExp? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryBoolExp?);

  Input_HistoryKodasHistoryAggregateBoolExp? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateBoolExp?);

  Input_StringComparisonExp? get notes =>
      (_$data['notes'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] = l$confessionHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('constraints')) {
      final l$constraints = constraints;
      result$data['constraints'] = l$constraints?.toJson();
    }
    if (_$data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = constraintsAggregate;
      result$data['constraintsAggregate'] = l$constraintsAggregate?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysBoolExp<
    Input_HistoryAttendanceDaysBoolExp
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysBoolExp ||
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
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
      return false;
    }
    final l$constraints = constraints;
    final lOther$constraints = other.constraints;
    if (_$data.containsKey('constraints') !=
        other._$data.containsKey('constraints')) {
      return false;
    }
    if (l$constraints != lOther$constraints) {
      return false;
    }
    final l$constraintsAggregate = constraintsAggregate;
    final lOther$constraintsAggregate = other.constraintsAggregate;
    if (_$data.containsKey('constraintsAggregate') !=
        other._$data.containsKey('constraintsAggregate')) {
      return false;
    }
    if (l$constraintsAggregate != lOther$constraintsAggregate) {
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
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
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
    final l$confessionHistory = confessionHistory;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$constraints = constraints;
    final l$constraintsAggregate = constraintsAggregate;
    final l$day = day;
    final l$kodasHistory = kodasHistory;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$notes = notes;
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
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('constraints') ? l$constraints : const {},
      _$data.containsKey('constraintsAggregate')
          ? l$constraintsAggregate
          : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysBoolExp(
    Input_HistoryAttendanceDaysBoolExp instance,
    TRes Function(Input_HistoryAttendanceDaysBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysBoolExp;

  factory CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysBoolExp;

  TRes call({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsBoolExp? constraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    constraintsAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
    Input_StringComparisonExp? notes,
  });
  TRes $_and(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory;
  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate;
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get constraints;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get constraintsAggregate;
  CopyWith_Input_DateComparisonExp<TRes> get day;
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory;
  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get notes;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysBoolExp(this._instance, this._then);

  final Input_HistoryAttendanceDaysBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceDaysBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? confessionHistory = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? constraints = _undefined,
    Object? constraintsAggregate = _undefined,
    Object? day = _undefined,
    Object? kodasHistory = _undefined,
    Object? kodasHistoryAggregate = _undefined,
    Object? notes = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryAttendanceDaysBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryAttendanceDaysBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryAttendanceDaysBoolExp>?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (confessionHistory != _undefined)
        'confessionHistory':
            (confessionHistory as Input_HistoryConfessionHistoryBoolExp?),
      if (confessionHistoryAggregate != _undefined)
        'confessionHistoryAggregate':
            (confessionHistoryAggregate
                as Input_HistoryConfessionHistoryAggregateBoolExp?),
      if (constraints != _undefined)
        'constraints':
            (constraints as Input_HistoryAttendanceDaysConstraintsBoolExp?),
      if (constraintsAggregate != _undefined)
        'constraintsAggregate':
            (constraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?),
      if (day != _undefined) 'day': (day as Input_DateComparisonExp?),
      if (kodasHistory != _undefined)
        'kodasHistory': (kodasHistory as Input_HistoryKodasHistoryBoolExp?),
      if (kodasHistoryAggregate != _undefined)
        'kodasHistoryAggregate':
            (kodasHistoryAggregate
                as Input_HistoryKodasHistoryAggregateBoolExp?),
      if (notes != _undefined) 'notes': (notes as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryAttendanceDaysBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryAttendanceDaysBoolExp(e, (i) => i),
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

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$confessionHistory,
            (e) => call(confessionHistory: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get constraints {
    final local$constraints = _instance.constraints;
    return local$constraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$constraints,
            (e) => call(constraints: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get constraintsAggregate {
    final local$constraintsAggregate = _instance.constraintsAggregate;
    return local$constraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
            local$constraintsAggregate,
            (e) => call(constraintsAggregate: e),
          );
  }

  CopyWith_Input_DateComparisonExp<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$day, (e) => call(day: e));
  }

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$kodasHistory,
            (e) => call(kodasHistory: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryAggregateBoolExp(
            local$kodasHistoryAggregate,
            (e) => call(kodasHistoryAggregate: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$notes,
            (e) => call(notes: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsBoolExp? constraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    constraintsAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
    Input_StringComparisonExp? notes,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate =>
      CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get constraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get constraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
        _res,
      );

  CopyWith_Input_DateComparisonExp<TRes> get day =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate =>
      CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get notes =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsAggregateBoolExp {
  factory Input_HistoryAttendanceDaysConstraintsAggregateBoolExp({
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceDaysConstraintsAggregateBoolExpCount? count,
  }) => Input_HistoryAttendanceDaysConstraintsAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_HistoryAttendanceDaysConstraintsAggregateBoolExp._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyAttendanceDaysConstraintsAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysConstraintsAggregateBoolExp._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and?
  get bool_and =>
      (_$data['bool_and']
          as Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and?);

  Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or']
          as Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or?);

  Input_historyAttendanceDaysConstraintsAggregateBoolExpCount? get count =>
      (_$data['count']
          as Input_historyAttendanceDaysConstraintsAggregateBoolExpCount?);

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

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp;

  TRes call({
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceDaysConstraintsAggregateBoolExpCount? count,
  });
  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and<TRes>
  get bool_and;
  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or<TRes>
  get bool_or;
  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<TRes>
  get count;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsAggregateBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsAggregateBoolExp)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and':
            (bool_and
                as Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or':
            (bool_or
                as Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count':
            (count
                as Input_historyAttendanceDaysConstraintsAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and<TRes>
  get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or<TRes>
  get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<TRes>
  get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
    this._res,
  );

  TRes _res;

  call({
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceDaysConstraintsAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and<TRes>
  get bool_and =>
      CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and.stub(
        _res,
      );

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or<TRes>
  get bool_or =>
      CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_or.stub(
        _res,
      );

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<TRes>
  get count =>
      CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount.stub(
        _res,
      );
}

class Input_HistoryAttendanceDaysConstraintsAggregateOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsAggregateOrderBy({
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryAttendanceDaysConstraintsMaxOrderBy? max,
    Input_HistoryAttendanceDaysConstraintsMinOrderBy? min,
    Input_HistoryAttendanceDaysConstraintsStddevOrderBy? stddev,
    Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy? stddevPop,
    Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy? stddevSamp,
    Input_HistoryAttendanceDaysConstraintsSumOrderBy? sum,
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy? varPop,
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy? varSamp,
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy? variance,
  }) => Input_HistoryAttendanceDaysConstraintsAggregateOrderBy._({
    if (avg != null) r'avg': avg,
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
    if (stddev != null) r'stddev': stddev,
    if (stddevPop != null) r'stddevPop': stddevPop,
    if (stddevSamp != null) r'stddevSamp': stddevSamp,
    if (sum != null) r'sum': sum,
    if (varPop != null) r'varPop': varPop,
    if (varSamp != null) r'varSamp': varSamp,
    if (variance != null) r'variance': variance,
  });

  Input_HistoryAttendanceDaysConstraintsAggregateOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAvgOrderBy.fromJson(
              (l$avg as Map<String, dynamic>),
            );
    }
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
          : Input_HistoryAttendanceDaysConstraintsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsSumOrderBy.fromJson(
              (l$sum as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysConstraintsAggregateOrderBy._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysConstraintsAvgOrderBy? get avg =>
      (_$data['avg'] as Input_HistoryAttendanceDaysConstraintsAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryAttendanceDaysConstraintsMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryAttendanceDaysConstraintsMaxOrderBy?);

  Input_HistoryAttendanceDaysConstraintsMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryAttendanceDaysConstraintsMinOrderBy?);

  Input_HistoryAttendanceDaysConstraintsStddevOrderBy? get stddev =>
      (_$data['stddev']
          as Input_HistoryAttendanceDaysConstraintsStddevOrderBy?);

  Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop']
          as Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy?);

  Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp']
          as Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy?);

  Input_HistoryAttendanceDaysConstraintsSumOrderBy? get sum =>
      (_$data['sum'] as Input_HistoryAttendanceDaysConstraintsSumOrderBy?);

  Input_HistoryAttendanceDaysConstraintsVarPopOrderBy? get varPop =>
      (_$data['varPop']
          as Input_HistoryAttendanceDaysConstraintsVarPopOrderBy?);

  Input_HistoryAttendanceDaysConstraintsVarSampOrderBy? get varSamp =>
      (_$data['varSamp']
          as Input_HistoryAttendanceDaysConstraintsVarSampOrderBy?);

  Input_HistoryAttendanceDaysConstraintsVarianceOrderBy? get variance =>
      (_$data['variance']
          as Input_HistoryAttendanceDaysConstraintsVarianceOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avg')) {
      final l$avg = avg;
      result$data['avg'] = l$avg?.toJson();
    }
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
    if (_$data.containsKey('stddev')) {
      final l$stddev = stddev;
      result$data['stddev'] = l$stddev?.toJson();
    }
    if (_$data.containsKey('stddevPop')) {
      final l$stddevPop = stddevPop;
      result$data['stddevPop'] = l$stddevPop?.toJson();
    }
    if (_$data.containsKey('stddevSamp')) {
      final l$stddevSamp = stddevSamp;
      result$data['stddevSamp'] = l$stddevSamp?.toJson();
    }
    if (_$data.containsKey('sum')) {
      final l$sum = sum;
      result$data['sum'] = l$sum?.toJson();
    }
    if (_$data.containsKey('varPop')) {
      final l$varPop = varPop;
      result$data['varPop'] = l$varPop?.toJson();
    }
    if (_$data.containsKey('varSamp')) {
      final l$varSamp = varSamp;
      result$data['varSamp'] = l$varSamp?.toJson();
    }
    if (_$data.containsKey('variance')) {
      final l$variance = variance;
      result$data['variance'] = l$variance?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsAggregateOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (_$data.containsKey('avg') != other._$data.containsKey('avg')) {
      return false;
    }
    if (l$avg != lOther$avg) {
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
    final l$stddev = stddev;
    final lOther$stddev = other.stddev;
    if (_$data.containsKey('stddev') != other._$data.containsKey('stddev')) {
      return false;
    }
    if (l$stddev != lOther$stddev) {
      return false;
    }
    final l$stddevPop = stddevPop;
    final lOther$stddevPop = other.stddevPop;
    if (_$data.containsKey('stddevPop') !=
        other._$data.containsKey('stddevPop')) {
      return false;
    }
    if (l$stddevPop != lOther$stddevPop) {
      return false;
    }
    final l$stddevSamp = stddevSamp;
    final lOther$stddevSamp = other.stddevSamp;
    if (_$data.containsKey('stddevSamp') !=
        other._$data.containsKey('stddevSamp')) {
      return false;
    }
    if (l$stddevSamp != lOther$stddevSamp) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (_$data.containsKey('sum') != other._$data.containsKey('sum')) {
      return false;
    }
    if (l$sum != lOther$sum) {
      return false;
    }
    final l$varPop = varPop;
    final lOther$varPop = other.varPop;
    if (_$data.containsKey('varPop') != other._$data.containsKey('varPop')) {
      return false;
    }
    if (l$varPop != lOther$varPop) {
      return false;
    }
    final l$varSamp = varSamp;
    final lOther$varSamp = other.varSamp;
    if (_$data.containsKey('varSamp') != other._$data.containsKey('varSamp')) {
      return false;
    }
    if (l$varSamp != lOther$varSamp) {
      return false;
    }
    final l$variance = variance;
    final lOther$variance = other.variance;
    if (_$data.containsKey('variance') !=
        other._$data.containsKey('variance')) {
      return false;
    }
    if (l$variance != lOther$variance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avg = avg;
    final l$count = count;
    final l$max = max;
    final l$min = min;
    final l$stddev = stddev;
    final l$stddevPop = stddevPop;
    final l$stddevSamp = stddevSamp;
    final l$sum = sum;
    final l$varPop = varPop;
    final l$varSamp = varSamp;
    final l$variance = variance;
    return Object.hashAll([
      _$data.containsKey('avg') ? l$avg : const {},
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
      _$data.containsKey('stddev') ? l$stddev : const {},
      _$data.containsKey('stddevPop') ? l$stddevPop : const {},
      _$data.containsKey('stddevSamp') ? l$stddevSamp : const {},
      _$data.containsKey('sum') ? l$sum : const {},
      _$data.containsKey('varPop') ? l$varPop : const {},
      _$data.containsKey('varSamp') ? l$varSamp : const {},
      _$data.containsKey('variance') ? l$variance : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy;

  TRes call({
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryAttendanceDaysConstraintsMaxOrderBy? max,
    Input_HistoryAttendanceDaysConstraintsMinOrderBy? min,
    Input_HistoryAttendanceDaysConstraintsStddevOrderBy? stddev,
    Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy? stddevPop,
    Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy? stddevSamp,
    Input_HistoryAttendanceDaysConstraintsSumOrderBy? sum,
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy? varPop,
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy? varSamp,
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy? variance,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> get avg;
  CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> get min;
  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes> get stddev;
  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes>
  get stddevPop;
  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<TRes>
  get stddevSamp;
  CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> get sum;
  CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes>
  get varSamp;
  CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes>
  get variance;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsAggregateOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsAggregateOrderBy)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avg = _undefined,
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? stddev = _undefined,
    Object? stddevPop = _undefined,
    Object? stddevSamp = _undefined,
    Object? sum = _undefined,
    Object? varPop = _undefined,
    Object? varSamp = _undefined,
    Object? variance = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined)
        'avg': (avg as Input_HistoryAttendanceDaysConstraintsAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryAttendanceDaysConstraintsMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryAttendanceDaysConstraintsMinOrderBy?),
      if (stddev != _undefined)
        'stddev':
            (stddev as Input_HistoryAttendanceDaysConstraintsStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop':
            (stddevPop
                as Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp':
            (stddevSamp
                as Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy?),
      if (sum != _undefined)
        'sum': (sum as Input_HistoryAttendanceDaysConstraintsSumOrderBy?),
      if (varPop != _undefined)
        'varPop':
            (varPop as Input_HistoryAttendanceDaysConstraintsVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp':
            (varSamp as Input_HistoryAttendanceDaysConstraintsVarSampOrderBy?),
      if (variance != _undefined)
        'variance':
            (variance
                as Input_HistoryAttendanceDaysConstraintsVarianceOrderBy?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy(
            local$avg,
            (e) => call(avg: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes>
  get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes>
  get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<TRes>
  get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy(
            local$sum,
            (e) => call(sum: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes>
  get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes>
  get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes>
  get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
    this._res,
  );

  TRes _res;

  call({
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryAttendanceDaysConstraintsMaxOrderBy? max,
    Input_HistoryAttendanceDaysConstraintsMinOrderBy? min,
    Input_HistoryAttendanceDaysConstraintsStddevOrderBy? stddev,
    Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy? stddevPop,
    Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy? stddevSamp,
    Input_HistoryAttendanceDaysConstraintsSumOrderBy? sum,
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy? varPop,
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy? varSamp,
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> get avg =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes>
  get stddev =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes>
  get stddevPop =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<TRes>
  get stddevSamp =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> get sum =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes>
  get varPop =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes>
  get varSamp =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes>
  get variance =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsArrRelInsertInput {
  factory Input_HistoryAttendanceDaysConstraintsArrRelInsertInput({
    required List<Input_HistoryAttendanceDaysConstraintsInsertInput> data,
    Input_HistoryAttendanceDaysConstraintsOnConflict? onConflict,
  }) => Input_HistoryAttendanceDaysConstraintsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryAttendanceDaysConstraintsArrRelInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryAttendanceDaysConstraintsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysConstraintsArrRelInsertInput._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceDaysConstraintsInsertInput> get data =>
      (_$data['data']
          as List<Input_HistoryAttendanceDaysConstraintsInsertInput>);

  Input_HistoryAttendanceDaysConstraintsOnConflict? get onConflict =>
      (_$data['onConflict']
          as Input_HistoryAttendanceDaysConstraintsOnConflict?);

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

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput;

  TRes call({
    List<Input_HistoryAttendanceDaysConstraintsInsertInput>? data,
    Input_HistoryAttendanceDaysConstraintsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_HistoryAttendanceDaysConstraintsInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput<
          Input_HistoryAttendanceDaysConstraintsInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
  get onConflict;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsArrRelInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsArrRelInsertInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput._({
      ..._instance._$data,
      if (data != _undefined && data != null)
        'data':
            (data as List<Input_HistoryAttendanceDaysConstraintsInsertInput>),
      if (onConflict != _undefined)
        'onConflict':
            (onConflict as Input_HistoryAttendanceDaysConstraintsOnConflict?),
    }),
  );

  TRes data(
    Iterable<Input_HistoryAttendanceDaysConstraintsInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput<
          Input_HistoryAttendanceDaysConstraintsInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryAttendanceDaysConstraintsInsertInput(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
  get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
    this._res,
  );

  TRes _res;

  call({
    List<Input_HistoryAttendanceDaysConstraintsInsertInput>? data,
    Input_HistoryAttendanceDaysConstraintsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
  get onConflict =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsAvgOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsAvgOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceDaysConstraintsAvgOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceDaysConstraintsAvgOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsAvgOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsAvgOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsAvgOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy(
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsAvgOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsAvgOrderBy;

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

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceDaysConstraintsAvgOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
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
  }) => Input_HistoryAttendanceDaysConstraintsBoolExp._({
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
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
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
              (l$groupId as Map<String, dynamic>),
            );
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
              (l$serviceGender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
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
    Input_HistoryAttendanceDaysConstraintsBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(this, (i) => i);

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
