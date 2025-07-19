// Part 24 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysOnConflict(
    Input_HistoryAttendanceDaysOnConflict instance,
    TRes Function(Input_HistoryAttendanceDaysOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict;

  factory CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict;

  TRes call({
    Enum_HistoryAttendanceDaysConstraint? constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceDaysOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_HistoryAttendanceDaysConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns':
              (updateColumns as List<Enum_HistoryAttendanceDaysUpdateColumn>),
        if (where != _undefined)
          'where': (where as Input_HistoryAttendanceDaysBoolExp?),
      }));

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceDaysConstraint? constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysOrderBy {
  factory Input_HistoryAttendanceDaysOrderBy({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
        constraintsAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Enum_OrderBy? notes,
  }) =>
      Input_HistoryAttendanceDaysOrderBy._({
        if (attendanceHistoryAggregate != null)
          r'attendanceHistoryAggregate': attendanceHistoryAggregate,
        if (confessionHistoryAggregate != null)
          r'confessionHistoryAggregate': confessionHistoryAggregate,
        if (constraintsAggregate != null)
          r'constraintsAggregate': constraintsAggregate,
        if (day != null) r'day': day,
        if (kodasHistoryAggregate != null)
          r'kodasHistoryAggregate': kodasHistoryAggregate,
        if (notes != null) r'notes': notes,
      });

  Input_HistoryAttendanceDaysOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
              ? null
              : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
                  (l$attendanceHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
              ? null
              : Input_HistoryConfessionHistoryAggregateOrderBy.fromJson(
                  (l$confessionHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = data['constraintsAggregate'];
      result$data['constraintsAggregate'] = l$constraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.fromJson(
              (l$constraintsAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] =
          l$day == null ? null : fromJson_Enum_OrderBy((l$day as String));
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateOrderBy.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] =
          l$notes == null ? null : fromJson_Enum_OrderBy((l$notes as String));
    }
    return Input_HistoryAttendanceDaysOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryAggregateOrderBy?
      get attendanceHistoryAggregate => (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Input_HistoryConfessionHistoryAggregateOrderBy?
      get confessionHistoryAggregate => (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateOrderBy?);

  Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
      get constraintsAggregate => (_$data['constraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?);

  Enum_OrderBy? get day => (_$data['day'] as Enum_OrderBy?);

  Input_HistoryKodasHistoryAggregateOrderBy? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateOrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = constraintsAggregate;
      result$data['constraintsAggregate'] = l$constraintsAggregate?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : toJson_Enum_OrderBy(l$day);
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] =
          l$notes == null ? null : toJson_Enum_OrderBy(l$notes);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysOrderBy<
          Input_HistoryAttendanceDaysOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysOrderBy ||
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
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$constraintsAggregate = constraintsAggregate;
    final l$day = day;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('constraintsAggregate')
          ? l$constraintsAggregate
          : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysOrderBy(
    Input_HistoryAttendanceDaysOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy;

  TRes call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
        constraintsAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Enum_OrderBy? notes,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
      get attendanceHistoryAggregate;
  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
      get confessionHistoryAggregate;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
      get constraintsAggregate;
  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
      get kodasHistoryAggregate;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistoryAggregate = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? constraintsAggregate = _undefined,
    Object? day = _undefined,
    Object? kodasHistoryAggregate = _undefined,
    Object? notes = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysOrderBy._({
        ..._instance._$data,
        if (attendanceHistoryAggregate != _undefined)
          'attendanceHistoryAggregate': (attendanceHistoryAggregate
              as Input_HistoryAttendanceHistoryAggregateOrderBy?),
        if (confessionHistoryAggregate != _undefined)
          'confessionHistoryAggregate': (confessionHistoryAggregate
              as Input_HistoryConfessionHistoryAggregateOrderBy?),
        if (constraintsAggregate != _undefined)
          'constraintsAggregate': (constraintsAggregate
              as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?),
        if (day != _undefined) 'day': (day as Enum_OrderBy?),
        if (kodasHistoryAggregate != _undefined)
          'kodasHistoryAggregate': (kodasHistoryAggregate
              as Input_HistoryKodasHistoryAggregateOrderBy?),
        if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
      }));

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

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
      get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e));
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
      get constraintsAggregate {
    final local$constraintsAggregate = _instance.constraintsAggregate;
    return local$constraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
            local$constraintsAggregate, (e) => call(constraintsAggregate: e));
  }

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
      get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryKodasHistoryAggregateOrderBy(
            local$kodasHistoryAggregate, (e) => call(kodasHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
        constraintsAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Enum_OrderBy? notes,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
      get confessionHistoryAggregate =>
          CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
      get constraintsAggregate =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
              _res);

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
      get kodasHistoryAggregate =>
          CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(_res);
}

class Input_HistoryAttendanceDaysPkColumnsInput {
  factory Input_HistoryAttendanceDaysPkColumnsInput({required DateTime day}) =>
      Input_HistoryAttendanceDaysPkColumnsInput._({
        r'day': day,
      });

  Input_HistoryAttendanceDaysPkColumnsInput._(this._$data);

  factory Input_HistoryAttendanceDaysPkColumnsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$day = data['day'];
    result$data['day'] = dateFromString(l$day);
    return Input_HistoryAttendanceDaysPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get day => (_$data['day'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$day = day;
    result$data['day'] = dateToString(l$day);
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<
          Input_HistoryAttendanceDaysPkColumnsInput>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysPkColumnsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    return Object.hashAll([l$day]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysPkColumnsInput(
    Input_HistoryAttendanceDaysPkColumnsInput instance,
    TRes Function(Input_HistoryAttendanceDaysPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput;

  factory CopyWith_Input_HistoryAttendanceDaysPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput;

  TRes call({DateTime? day});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysPkColumnsInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined}) =>
      _then(Input_HistoryAttendanceDaysPkColumnsInput._({
        ..._instance._$data,
        if (day != _undefined && day != null) 'day': (day as DateTime),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput(this._res);

  TRes _res;

  call({DateTime? day}) => _res;
}

class Input_HistoryAttendanceDaysSetInput {
  factory Input_HistoryAttendanceDaysSetInput({
    DateTime? day,
    String? notes,
  }) =>
      Input_HistoryAttendanceDaysSetInput._({
        if (day != null) r'day': day,
        if (notes != null) r'notes': notes,
      });

  Input_HistoryAttendanceDaysSetInput._(this._$data);

  factory Input_HistoryAttendanceDaysSetInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input_HistoryAttendanceDaysSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysSetInput<
          Input_HistoryAttendanceDaysSetInput>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysSetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysSetInput ||
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
    final l$day = day;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysSetInput(
    Input_HistoryAttendanceDaysSetInput instance,
    TRes Function(Input_HistoryAttendanceDaysSetInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysSetInput;

  factory CopyWith_Input_HistoryAttendanceDaysSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput;

  TRes call({
    DateTime? day,
    String? notes,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysSetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysSetInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysSetInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? notes = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysSetInput._({
        ..._instance._$data,
        if (day != _undefined) 'day': (day as DateTime?),
        if (notes != _undefined) 'notes': (notes as String?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput(this._res);

  TRes _res;

  call({
    DateTime? day,
    String? notes,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysStreamCursorInput {
  factory Input_HistoryAttendanceDaysStreamCursorInput({
    required Input_HistoryAttendanceDaysStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_HistoryAttendanceDaysStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_HistoryAttendanceDaysStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceDaysStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceDaysStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryAttendanceDaysStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryAttendanceDaysStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<
          Input_HistoryAttendanceDaysStreamCursorInput>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorInput(
    Input_HistoryAttendanceDaysStreamCursorInput instance,
    TRes Function(Input_HistoryAttendanceDaysStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput;

  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput;

  TRes call({
    Input_HistoryAttendanceDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
      get initialValue;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysStreamCursorInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue': (initialValue
              as Input_HistoryAttendanceDaysStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
      get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
      get initialValue =>
          CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput.stub(_res);
}

class Input_HistoryAttendanceDaysStreamCursorValueInput {
  factory Input_HistoryAttendanceDaysStreamCursorValueInput({
    DateTime? day,
    String? notes,
  }) =>
      Input_HistoryAttendanceDaysStreamCursorValueInput._({
        if (day != null) r'day': day,
        if (notes != null) r'notes': notes,
      });

  Input_HistoryAttendanceDaysStreamCursorValueInput._(this._$data);

  factory Input_HistoryAttendanceDaysStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input_HistoryAttendanceDaysStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<
          Input_HistoryAttendanceDaysStreamCursorValueInput>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysStreamCursorValueInput ||
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
    final l$day = day;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
    Input_HistoryAttendanceDaysStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceDaysStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput;

  TRes call({
    DateTime? day,
    String? notes,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? notes = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysStreamCursorValueInput._({
        ..._instance._$data,
        if (day != _undefined) 'day': (day as DateTime?),
        if (notes != _undefined) 'notes': (notes as String?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput(
      this._res);

  TRes _res;

  call({
    DateTime? day,
    String? notes,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysUpdates {
  factory Input_HistoryAttendanceDaysUpdates({
    Input_HistoryAttendanceDaysSetInput? $_set,
    required Input_HistoryAttendanceDaysBoolExp where,
  }) =>
      Input_HistoryAttendanceDaysUpdates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_HistoryAttendanceDaysUpdates._(this._$data);

  factory Input_HistoryAttendanceDaysUpdates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryAttendanceDaysSetInput.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryAttendanceDaysBoolExp.fromJson(
        (l$where as Map<String, dynamic>));
    return Input_HistoryAttendanceDaysUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysSetInput? get $_set =>
      (_$data['_set'] as Input_HistoryAttendanceDaysSetInput?);

  Input_HistoryAttendanceDaysBoolExp get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysBoolExp);

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

  CopyWith_Input_HistoryAttendanceDaysUpdates<
          Input_HistoryAttendanceDaysUpdates>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysUpdates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysUpdates ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysUpdates(
    Input_HistoryAttendanceDaysUpdates instance,
    TRes Function(Input_HistoryAttendanceDaysUpdates) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysUpdates;

  factory CopyWith_Input_HistoryAttendanceDaysUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates;

  TRes call({
    Input_HistoryAttendanceDaysSetInput? $_set,
    Input_HistoryAttendanceDaysBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set;
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysUpdates(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysUpdates _instance;

  final TRes Function(Input_HistoryAttendanceDaysUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysUpdates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input_HistoryAttendanceDaysSetInput?),
        if (where != _undefined && where != null)
          'where': (where as Input_HistoryAttendanceDaysBoolExp),
      }));

  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryAttendanceDaysSetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysSetInput(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryAttendanceDaysBoolExp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysSetInput? $_set,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set =>
      CopyWith_Input_HistoryAttendanceDaysSetInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryAggregateBoolExp {
  factory Input_HistoryAttendanceHistoryAggregateBoolExp({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  }) =>
      Input_HistoryAttendanceHistoryAggregateBoolExp._({
        if (bool_and != null) r'bool_and': bool_and,
        if (bool_or != null) r'bool_or': bool_or,
        if (count != null) r'count': count,
      });

  Input_HistoryAttendanceHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryAttendanceHistoryAggregateBoolExp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>));
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>));
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyAttendanceHistoryAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and']
          as Input_historyAttendanceHistoryAggregateBoolExpBool_and?);

  Input_historyAttendanceHistoryAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or']
          as Input_historyAttendanceHistoryAggregateBoolExpBool_or?);

  Input_historyAttendanceHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyAttendanceHistoryAggregateBoolExpCount?);

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

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<
          Input_HistoryAttendanceHistoryAggregateBoolExp>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
    Input_HistoryAttendanceHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryAttendanceHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateBoolExp;

  TRes call({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  });
  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
      get bool_and;
  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
      get bool_or;
  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) =>
      _then(Input_HistoryAttendanceHistoryAggregateBoolExp._({
        ..._instance._$data,
        if (bool_and != _undefined)
          'bool_and': (bool_and
              as Input_historyAttendanceHistoryAggregateBoolExpBool_and?),
        if (bool_or != _undefined)
          'bool_or': (bool_or
              as Input_historyAttendanceHistoryAggregateBoolExpBool_or?),
        if (count != _undefined)
          'count':
              (count as Input_historyAttendanceHistoryAggregateBoolExpCount?),
      }));

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
      get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and.stub(
            _then(_instance))
        : CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
            local$bool_and, (e) => call(bool_and: e));
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
      get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(
            _then(_instance))
        : CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
            local$bool_or, (e) => call(bool_or: e));
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(
            _then(_instance))
        : CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  }) =>
      _res;

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
      get bool_and =>
          CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and.stub(
              _res);

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
      get bool_or =>
          CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(
              _res);

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes>
      get count =>
          CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(
              _res);
}

class Input_HistoryAttendanceHistoryAggregateOrderBy {
  factory Input_HistoryAttendanceHistoryAggregateOrderBy({
    Input_HistoryAttendanceHistoryAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryAttendanceHistoryMaxOrderBy? max,
    Input_HistoryAttendanceHistoryMinOrderBy? min,
    Input_HistoryAttendanceHistoryStddevOrderBy? stddev,
    Input_HistoryAttendanceHistoryStddevPopOrderBy? stddevPop,
    Input_HistoryAttendanceHistoryStddevSampOrderBy? stddevSamp,
    Input_HistoryAttendanceHistorySumOrderBy? sum,
    Input_HistoryAttendanceHistoryVarPopOrderBy? varPop,
    Input_HistoryAttendanceHistoryVarSampOrderBy? varSamp,
    Input_HistoryAttendanceHistoryVarianceOrderBy? variance,
  }) =>
      Input_HistoryAttendanceHistoryAggregateOrderBy._({
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

  Input_HistoryAttendanceHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_HistoryAttendanceHistoryAvgOrderBy.fromJson(
              (l$avg as Map<String, dynamic>));
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_HistoryAttendanceHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryAttendanceHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_HistoryAttendanceHistoryStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>));
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_HistoryAttendanceHistoryStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>));
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_HistoryAttendanceHistoryStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>));
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_HistoryAttendanceHistorySumOrderBy.fromJson(
              (l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_HistoryAttendanceHistoryVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>));
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_HistoryAttendanceHistoryVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>));
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_HistoryAttendanceHistoryVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryAvgOrderBy? get avg =>
      (_$data['avg'] as Input_HistoryAttendanceHistoryAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryAttendanceHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryAttendanceHistoryMaxOrderBy?);

  Input_HistoryAttendanceHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryAttendanceHistoryMinOrderBy?);

  Input_HistoryAttendanceHistoryStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_HistoryAttendanceHistoryStddevOrderBy?);

  Input_HistoryAttendanceHistoryStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_HistoryAttendanceHistoryStddevPopOrderBy?);

  Input_HistoryAttendanceHistoryStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp']
          as Input_HistoryAttendanceHistoryStddevSampOrderBy?);

  Input_HistoryAttendanceHistorySumOrderBy? get sum =>
      (_$data['sum'] as Input_HistoryAttendanceHistorySumOrderBy?);

  Input_HistoryAttendanceHistoryVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_HistoryAttendanceHistoryVarPopOrderBy?);

  Input_HistoryAttendanceHistoryVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_HistoryAttendanceHistoryVarSampOrderBy?);

  Input_HistoryAttendanceHistoryVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_HistoryAttendanceHistoryVarianceOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avg')) {
      final l$avg = avg;
      result$data['avg'] = l$avg?.toJson();
    }
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

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<
          Input_HistoryAttendanceHistoryAggregateOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
    Input_HistoryAttendanceHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateOrderBy;

  TRes call({
    Input_HistoryAttendanceHistoryAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryAttendanceHistoryMaxOrderBy? max,
    Input_HistoryAttendanceHistoryMinOrderBy? min,
    Input_HistoryAttendanceHistoryStddevOrderBy? stddev,
    Input_HistoryAttendanceHistoryStddevPopOrderBy? stddevPop,
    Input_HistoryAttendanceHistoryStddevSampOrderBy? stddevSamp,
    Input_HistoryAttendanceHistorySumOrderBy? sum,
    Input_HistoryAttendanceHistoryVarPopOrderBy? varPop,
    Input_HistoryAttendanceHistoryVarSampOrderBy? varSamp,
    Input_HistoryAttendanceHistoryVarianceOrderBy? variance,
  });
  CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<TRes> get avg;
  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> get min;
  CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> get stddev;
  CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_HistoryAttendanceHistorySumOrderBy<TRes> get sum;
  CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryAggregateOrderBy) _then;

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
  }) =>
      _then(Input_HistoryAttendanceHistoryAggregateOrderBy._({
        ..._instance._$data,
        if (avg != _undefined)
          'avg': (avg as Input_HistoryAttendanceHistoryAvgOrderBy?),
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined)
          'max': (max as Input_HistoryAttendanceHistoryMaxOrderBy?),
        if (min != _undefined)
          'min': (min as Input_HistoryAttendanceHistoryMinOrderBy?),
        if (stddev != _undefined)
          'stddev': (stddev as Input_HistoryAttendanceHistoryStddevOrderBy?),
        if (stddevPop != _undefined)
          'stddevPop':
              (stddevPop as Input_HistoryAttendanceHistoryStddevPopOrderBy?),
        if (stddevSamp != _undefined)
          'stddevSamp':
              (stddevSamp as Input_HistoryAttendanceHistoryStddevSampOrderBy?),
        if (sum != _undefined)
          'sum': (sum as Input_HistoryAttendanceHistorySumOrderBy?),
        if (varPop != _undefined)
          'varPop': (varPop as Input_HistoryAttendanceHistoryVarPopOrderBy?),
        if (varSamp != _undefined)
          'varSamp': (varSamp as Input_HistoryAttendanceHistoryVarSampOrderBy?),
        if (variance != _undefined)
          'variance':
              (variance as Input_HistoryAttendanceHistoryVarianceOrderBy?),
      }));

  CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy(
            local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy(
            local$max, (e) => call(max: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryAttendanceHistoryMinOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryMinOrderBy(
            local$min, (e) => call(min: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy(
            local$stddev, (e) => call(stddev: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy(
            local$stddevPop, (e) => call(stddevPop: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes>
      get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy(
            local$stddevSamp, (e) => call(stddevSamp: e));
  }

  CopyWith_Input_HistoryAttendanceHistorySumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_HistoryAttendanceHistorySumOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistorySumOrderBy(
            local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy(
            local$varPop, (e) => call(varPop: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy(
            local$varSamp, (e) => call(varSamp: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy(
            local$variance, (e) => call(variance: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryAttendanceHistoryMaxOrderBy? max,
    Input_HistoryAttendanceHistoryMinOrderBy? min,
    Input_HistoryAttendanceHistoryStddevOrderBy? stddev,
    Input_HistoryAttendanceHistoryStddevPopOrderBy? stddevPop,
    Input_HistoryAttendanceHistoryStddevSampOrderBy? stddevSamp,
    Input_HistoryAttendanceHistorySumOrderBy? sum,
    Input_HistoryAttendanceHistoryVarPopOrderBy? varPop,
    Input_HistoryAttendanceHistoryVarSampOrderBy? varSamp,
    Input_HistoryAttendanceHistoryVarianceOrderBy? variance,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<TRes> get avg =>
      CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryAttendanceHistoryMinOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes>
      get stddevSamp =>
          CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistorySumOrderBy<TRes> get sum =>
      CopyWith_Input_HistoryAttendanceHistorySumOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy.stub(_res);
}

class Input_HistoryAttendanceHistoryArrRelInsertInput {
  factory Input_HistoryAttendanceHistoryArrRelInsertInput({
    required List<Input_HistoryAttendanceHistoryInsertInput> data,
    Input_HistoryAttendanceHistoryOnConflict? onConflict,
  }) =>
      Input_HistoryAttendanceHistoryArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_HistoryAttendanceHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input_HistoryAttendanceHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryAttendanceHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryAttendanceHistoryInsertInput>);

  Input_HistoryAttendanceHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryAttendanceHistoryOnConflict?);

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

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<
          Input_HistoryAttendanceHistoryArrRelInsertInput>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
    Input_HistoryAttendanceHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryAttendanceHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryAttendanceHistoryInsertInput>? data,
    Input_HistoryAttendanceHistoryOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_HistoryAttendanceHistoryInsertInput> Function(
              Iterable<
                  CopyWith_Input_HistoryAttendanceHistoryInsertInput<
                      Input_HistoryAttendanceHistoryInsertInput>>)
          _fn);
  CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_HistoryAttendanceHistoryArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_HistoryAttendanceHistoryInsertInput>),
        if (onConflict != _undefined)
          'onConflict':
              (onConflict as Input_HistoryAttendanceHistoryOnConflict?),
      }));

  TRes data(
          Iterable<Input_HistoryAttendanceHistoryInsertInput> Function(
                  Iterable<
                      CopyWith_Input_HistoryAttendanceHistoryInsertInput<
                          Input_HistoryAttendanceHistoryInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_HistoryAttendanceHistoryInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryAttendanceHistoryOnConflict.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceHistoryInsertInput>? data,
    Input_HistoryAttendanceHistoryOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryAttendanceHistoryOnConflict.stub(_res);
}

class Input_HistoryAttendanceHistoryAvgOrderBy {
  factory Input_HistoryAttendanceHistoryAvgOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryAvgOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryAvgOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryAvgOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryAvgOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<
          Input_HistoryAttendanceHistoryAvgOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryAvgOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy(
    Input_HistoryAttendanceHistoryAvgOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryAvgOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryAvgOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryAvgOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryAvgOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryAvgOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryAvgOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryBoolExp {
  factory Input_HistoryAttendanceHistoryBoolExp({
    List<Input_HistoryAttendanceHistoryBoolExp>? $_and,
    Input_HistoryAttendanceHistoryBoolExp? $_not,
    List<Input_HistoryAttendanceHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? asAdmin,
    Input_ClassesBoolExp? $class,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_AuthUsersDataBoolExp? recordedByUser,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
    Input_TimestampComparisonExp? time,
  }) =>
      Input_HistoryAttendanceHistoryBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (asAdmin != null) r'asAdmin': asAdmin,
        if ($class != null) r'class': $class,
        if (day != null) r'day': day,
        if (dayId != null) r'dayId': dayId,
        if (group != null) r'group': group,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
        if (recordedBy != null) r'recordedBy': recordedBy,
        if (recordedByUser != null) r'recordedByUser': recordedByUser,
        if (service != null) r'service': service,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (studyYear != null) r'studyYear': studyYear,
        if (time != null) r'time': time,
      });

  Input_HistoryAttendanceHistoryBoolExp._(this._$data);

  factory Input_HistoryAttendanceHistoryBoolExp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('asAdmin')) {
      final l$asAdmin = data['asAdmin'];
      result$data['asAdmin'] = l$asAdmin == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$asAdmin as Map<String, dynamic>));
    }
    if (data.containsKey('class')) {
      final l$$class = data['class'];
      result$data['class'] = l$$class == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$$class as Map<String, dynamic>));
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
              (l$personId as Map<String, dynamic>));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>));
    }
    if (data.containsKey('recordedByUser')) {
      final l$recordedByUser = data['recordedByUser'];
      result$data['recordedByUser'] = l$recordedByUser == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$recordedByUser as Map<String, dynamic>));
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_TimestampComparisonExp.fromJson(
              (l$time as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryAttendanceHistoryBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryAttendanceHistoryBoolExp?);

  List<Input_HistoryAttendanceHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryAttendanceHistoryBoolExp>?);

  Input_BooleanComparisonExp? get asAdmin =>
      (_$data['asAdmin'] as Input_BooleanComparisonExp?);

  Input_ClassesBoolExp? get $class =>
      (_$data['class'] as Input_ClassesBoolExp?);

  Input_HistoryAttendanceDaysBoolExp? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysBoolExp?);

  Input_DateComparisonExp? get dayId =>
      (_$data['dayId'] as Input_DateComparisonExp?);

  Input_GroupsBoolExp? get group => (_$data['group'] as Input_GroupsBoolExp?);

  Input_UuidComparisonExp? get groupId =>
      (_$data['groupId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get recordedByUser =>
      (_$data['recordedByUser'] as Input_AuthUsersDataBoolExp?);

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

  Input_TimestampComparisonExp? get time =>
      (_$data['time'] as Input_TimestampComparisonExp?);

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
    if (_$data.containsKey('asAdmin')) {
      final l$asAdmin = asAdmin;
      result$data['asAdmin'] = l$asAdmin?.toJson();
    }
    if (_$data.containsKey('class')) {
      final l$$class = $class;
      result$data['class'] = l$$class?.toJson();
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
    if (_$data.containsKey('recordedByUser')) {
      final l$recordedByUser = recordedByUser;
      result$data['recordedByUser'] = l$recordedByUser?.toJson();
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<
          Input_HistoryAttendanceHistoryBoolExp>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryBoolExp ||
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
    final l$asAdmin = asAdmin;
    final lOther$asAdmin = other.asAdmin;
    if (_$data.containsKey('asAdmin') != other._$data.containsKey('asAdmin')) {
      return false;
    }
    if (l$asAdmin != lOther$asAdmin) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (_$data.containsKey('class') != other._$data.containsKey('class')) {
      return false;
    }
    if (l$$class != lOther$$class) {
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
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (_$data.containsKey('recordedByUser') !=
        other._$data.containsKey('recordedByUser')) {
      return false;
    }
    if (l$recordedByUser != lOther$recordedByUser) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$asAdmin = asAdmin;
    final l$$class = $class;
    final l$day = day;
    final l$dayId = dayId;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$recordedByUser = recordedByUser;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    final l$time = time;
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
      _$data.containsKey('asAdmin') ? l$asAdmin : const {},
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('recordedByUser') ? l$recordedByUser : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}
