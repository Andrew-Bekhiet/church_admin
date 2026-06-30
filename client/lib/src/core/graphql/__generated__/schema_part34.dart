// Part 34 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryVisitHistoryInsertInput<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryInsertInput(
    Input_HistoryVisitHistoryInsertInput instance,
    TRes Function(Input_HistoryVisitHistoryInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryInsertInput;

  factory CopyWith_Input_HistoryVisitHistoryInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryInsertInput;

  TRes call({
    bool? isFatherVisit,
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
    Object? isFatherVisit = _undefined,
    Object? recordId = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryInsertInput._({
      ..._instance._$data,
      if (isFatherVisit != _undefined)
        'isFatherVisit': (isFatherVisit as bool?),
      if (recordId != _undefined) 'recordId': (recordId as UuidValue?),
      if (table != _undefined) 'table': (table as String?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryInsertInput(this._res);

  TRes _res;

  call({
    bool? isFatherVisit,
    UuidValue? recordId,
    String? table,
    DateTime? time,
  }) => _res;
}

class Input_HistoryVisitHistoryMaxOrderBy {
  factory Input_HistoryVisitHistoryMaxOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  }) => Input_HistoryVisitHistoryMaxOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryVisitHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryMaxOrderBy.fromJson(
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
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId == null
          ? null
          : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<
    Input_HistoryVisitHistoryMaxOrderBy
  >
  get copyWith => CopyWith_Input_HistoryVisitHistoryMaxOrderBy(this, (i) => i);

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
  _CopyWithImpl_Input_HistoryVisitHistoryMaxOrderBy(this._instance, this._then);

  final Input_HistoryVisitHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryMaxOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
    }),
  );
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
  }) => _res;
}

class Input_HistoryVisitHistoryMinOrderBy {
  factory Input_HistoryVisitHistoryMinOrderBy({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Enum_OrderBy? visitId,
  }) => Input_HistoryVisitHistoryMinOrderBy._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryVisitHistoryMinOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryMinOrderBy.fromJson(
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
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId == null
          ? null
          : toJson_Enum_OrderBy(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryMinOrderBy<
    Input_HistoryVisitHistoryMinOrderBy
  >
  get copyWith => CopyWith_Input_HistoryVisitHistoryMinOrderBy(this, (i) => i);

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
  _CopyWithImpl_Input_HistoryVisitHistoryMinOrderBy(this._instance, this._then);

  final Input_HistoryVisitHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryMinOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
    }),
  );
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
  }) => _res;
}

class Input_HistoryVisitHistoryOnConflict {
  factory Input_HistoryVisitHistoryOnConflict({
    required Enum_HistoryVisitHistoryConstraint constraint,
    List<Enum_HistoryVisitHistoryUpdateColumn>? updateColumns,
    Input_HistoryVisitHistoryBoolExp? where,
  }) => Input_HistoryVisitHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryVisitHistoryOnConflict._(this._$data);

  factory Input_HistoryVisitHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryVisitHistoryConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryVisitHistoryUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
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
    result$data['constraint'] = toJson_Enum_HistoryVisitHistoryConstraint(
      l$constraint,
    );
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
    Input_HistoryVisitHistoryOnConflict
  >
  get copyWith => CopyWith_Input_HistoryVisitHistoryOnConflict(this, (i) => i);

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

abstract class CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryOnConflict(
    Input_HistoryVisitHistoryOnConflict instance,
    TRes Function(Input_HistoryVisitHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryOnConflict;

  factory CopyWith_Input_HistoryVisitHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryOnConflict;

  TRes call({
    Enum_HistoryVisitHistoryConstraint? constraint,
    List<Enum_HistoryVisitHistoryUpdateColumn>? updateColumns,
    Input_HistoryVisitHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryVisitHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryOnConflict(this._instance, this._then);

  final Input_HistoryVisitHistoryOnConflict _instance;

  final TRes Function(Input_HistoryVisitHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryVisitHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryVisitHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryVisitHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryVisitHistoryConstraint? constraint,
    List<Enum_HistoryVisitHistoryUpdateColumn>? updateColumns,
    Input_HistoryVisitHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);
}

class Input_HistoryVisitHistoryOrderBy {
  factory Input_HistoryVisitHistoryOrderBy({
    Enum_OrderBy? isFatherVisit,
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  }) => Input_HistoryVisitHistoryOrderBy._({
    if (isFatherVisit != null) r'isFatherVisit': isFatherVisit,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryVisitHistoryOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = data['isFatherVisit'];
      result$data['isFatherVisit'] = l$isFatherVisit == null
          ? null
          : fromJson_Enum_OrderBy((l$isFatherVisit as String));
    }
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
    return Input_HistoryVisitHistoryOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get isFatherVisit => (_$data['isFatherVisit'] as Enum_OrderBy?);

  Enum_OrderBy? get recordId => (_$data['recordId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get table => (_$data['table'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Enum_OrderBy? get visitId => (_$data['visitId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = isFatherVisit;
      result$data['isFatherVisit'] = l$isFatherVisit == null
          ? null
          : toJson_Enum_OrderBy(l$isFatherVisit);
    }
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

  CopyWith_Input_HistoryVisitHistoryOrderBy<Input_HistoryVisitHistoryOrderBy>
  get copyWith => CopyWith_Input_HistoryVisitHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (_$data.containsKey('isFatherVisit') !=
        other._$data.containsKey('isFatherVisit')) {
      return false;
    }
    if (l$isFatherVisit != lOther$isFatherVisit) {
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
    final l$isFatherVisit = isFatherVisit;
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$table = table;
    final l$time = time;
    final l$user = user;
    final l$visitId = visitId;
    return Object.hashAll([
      _$data.containsKey('isFatherVisit') ? l$isFatherVisit : const {},
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryVisitHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryOrderBy(
    Input_HistoryVisitHistoryOrderBy instance,
    TRes Function(Input_HistoryVisitHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryOrderBy;

  factory CopyWith_Input_HistoryVisitHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryOrderBy;

  TRes call({
    Enum_OrderBy? isFatherVisit,
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryVisitHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryOrderBy(this._instance, this._then);

  final Input_HistoryVisitHistoryOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFatherVisit = _undefined,
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryOrderBy._({
      ..._instance._$data,
      if (isFatherVisit != _undefined)
        'isFatherVisit': (isFatherVisit as Enum_OrderBy?),
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

class _CopyWithStubImpl_Input_HistoryVisitHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? isFatherVisit,
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

class Input_HistoryVisitHistoryStreamCursorInput {
  factory Input_HistoryVisitHistoryStreamCursorInput({
    required Input_HistoryVisitHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryVisitHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryVisitHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryVisitHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryVisitHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryVisitHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryVisitHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryVisitHistoryStreamCursorValueInput);

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

  CopyWith_Input_HistoryVisitHistoryStreamCursorInput<
    Input_HistoryVisitHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryVisitHistoryStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryVisitHistoryStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryStreamCursorInput(
    Input_HistoryVisitHistoryStreamCursorInput instance,
    TRes Function(Input_HistoryVisitHistoryStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryStreamCursorInput;

  factory CopyWith_Input_HistoryVisitHistoryStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryStreamCursorInput;

  TRes call({
    Input_HistoryVisitHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryVisitHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryStreamCursorInput _instance;

  final TRes Function(Input_HistoryVisitHistoryStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryVisitHistoryStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryVisitHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput.stub(_res);
}

class Input_HistoryVisitHistoryStreamCursorValueInput {
  factory Input_HistoryVisitHistoryStreamCursorValueInput({
    bool? isFatherVisit,
    UuidValue? recordId,
    UuidValue? recordedBy,
    String? table,
    DateTime? time,
    UuidValue? visitId,
  }) => Input_HistoryVisitHistoryStreamCursorValueInput._({
    if (isFatherVisit != null) r'isFatherVisit': isFatherVisit,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryVisitHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryVisitHistoryStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = data['isFatherVisit'];
      result$data['isFatherVisit'] = (l$isFatherVisit as bool?);
    }
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : stringToUuid(l$recordId);
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : stringToUuid(l$recordedBy);
    }
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = (l$table as String?);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : stringToUuid(l$visitId);
    }
    return Input_HistoryVisitHistoryStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isFatherVisit => (_$data['isFatherVisit'] as bool?);

  UuidValue? get recordId => (_$data['recordId'] as UuidValue?);

  UuidValue? get recordedBy => (_$data['recordedBy'] as UuidValue?);

  String? get table => (_$data['table'] as String?);

  DateTime? get time => (_$data['time'] as DateTime?);

  UuidValue? get visitId => (_$data['visitId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = isFatherVisit;
      result$data['isFatherVisit'] = l$isFatherVisit;
    }
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId == null
          ? null
          : uuidToString(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : uuidToString(l$recordedBy);
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table;
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId == null
          ? null
          : uuidToString(l$visitId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<
    Input_HistoryVisitHistoryStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (_$data.containsKey('isFatherVisit') !=
        other._$data.containsKey('isFatherVisit')) {
      return false;
    }
    if (l$isFatherVisit != lOther$isFatherVisit) {
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
    final l$isFatherVisit = isFatherVisit;
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$table = table;
    final l$time = time;
    final l$visitId = visitId;
    return Object.hashAll([
      _$data.containsKey('isFatherVisit') ? l$isFatherVisit : const {},
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput(
    Input_HistoryVisitHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryVisitHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryVisitHistoryStreamCursorValueInput;

  TRes call({
    bool? isFatherVisit,
    UuidValue? recordId,
    UuidValue? recordedBy,
    String? table,
    DateTime? time,
    UuidValue? visitId,
  });
}

class _CopyWithImpl_Input_HistoryVisitHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryVisitHistoryStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFatherVisit = _undefined,
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryStreamCursorValueInput._({
      ..._instance._$data,
      if (isFatherVisit != _undefined)
        'isFatherVisit': (isFatherVisit as bool?),
      if (recordId != _undefined) 'recordId': (recordId as UuidValue?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
      if (table != _undefined) 'table': (table as String?),
      if (time != _undefined) 'time': (time as DateTime?),
      if (visitId != _undefined) 'visitId': (visitId as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryStreamCursorValueInput(this._res);

  TRes _res;

  call({
    bool? isFatherVisit,
    UuidValue? recordId,
    UuidValue? recordedBy,
    String? table,
    DateTime? time,
    UuidValue? visitId,
  }) => _res;
}

class Input_HobbiesBoolExp {
  factory Input_HobbiesBoolExp({
    List<Input_HobbiesBoolExp>? $_and,
    Input_HobbiesBoolExp? $_not,
    List<Input_HobbiesBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsHobbiesBoolExp? persons,
  }) => Input_HobbiesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_HobbiesBoolExp._(this._$data);

  factory Input_HobbiesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HobbiesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HobbiesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HobbiesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsHobbiesBoolExp.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_HobbiesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HobbiesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HobbiesBoolExp>?);

  Input_HobbiesBoolExp? get $_not => (_$data['_not'] as Input_HobbiesBoolExp?);

  List<Input_HobbiesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HobbiesBoolExp>?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsHobbiesBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsHobbiesBoolExp?);

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
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HobbiesBoolExp<Input_HobbiesBoolExp> get copyWith =>
      CopyWith_Input_HobbiesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesBoolExp || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
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
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_HobbiesBoolExp<TRes> {
  factory CopyWith_Input_HobbiesBoolExp(
    Input_HobbiesBoolExp instance,
    TRes Function(Input_HobbiesBoolExp) then,
  ) = _CopyWithImpl_Input_HobbiesBoolExp;

  factory CopyWith_Input_HobbiesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesBoolExp;

  TRes call({
    List<Input_HobbiesBoolExp>? $_and,
    Input_HobbiesBoolExp? $_not,
    List<Input_HobbiesBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsHobbiesBoolExp? persons,
  });
  TRes $_and(
    Iterable<Input_HobbiesBoolExp>? Function(
      Iterable<CopyWith_Input_HobbiesBoolExp<Input_HobbiesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_HobbiesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HobbiesBoolExp>? Function(
      Iterable<CopyWith_Input_HobbiesBoolExp<Input_HobbiesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get persons;
}

class _CopyWithImpl_Input_HobbiesBoolExp<TRes>
    implements CopyWith_Input_HobbiesBoolExp<TRes> {
  _CopyWithImpl_Input_HobbiesBoolExp(this._instance, this._then);

  final Input_HobbiesBoolExp _instance;

  final TRes Function(Input_HobbiesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_HobbiesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_HobbiesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_HobbiesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_HobbiesBoolExp>?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsHobbiesBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HobbiesBoolExp>? Function(
      Iterable<CopyWith_Input_HobbiesBoolExp<Input_HobbiesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_HobbiesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_HobbiesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_HobbiesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_HobbiesBoolExp>? Function(
      Iterable<CopyWith_Input_HobbiesBoolExp<Input_HobbiesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_HobbiesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsHobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesBoolExp(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_HobbiesBoolExp<TRes>
    implements CopyWith_Input_HobbiesBoolExp<TRes> {
  _CopyWithStubImpl_Input_HobbiesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HobbiesBoolExp>? $_and,
    Input_HobbiesBoolExp? $_not,
    List<Input_HobbiesBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsHobbiesBoolExp? persons,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HobbiesBoolExp<TRes> get $_not =>
      CopyWith_Input_HobbiesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);
}

class Input_HobbiesIncInput {
  factory Input_HobbiesIncInput({int? color}) =>
      Input_HobbiesIncInput._({if (color != null) r'color': color});

  Input_HobbiesIncInput._(this._$data);

  factory Input_HobbiesIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_HobbiesIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    return result$data;
  }

  CopyWith_Input_HobbiesIncInput<Input_HobbiesIncInput> get copyWith =>
      CopyWith_Input_HobbiesIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesIncInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HobbiesIncInput<TRes> {
  factory CopyWith_Input_HobbiesIncInput(
    Input_HobbiesIncInput instance,
    TRes Function(Input_HobbiesIncInput) then,
  ) = _CopyWithImpl_Input_HobbiesIncInput;

  factory CopyWith_Input_HobbiesIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_HobbiesIncInput<TRes>
    implements CopyWith_Input_HobbiesIncInput<TRes> {
  _CopyWithImpl_Input_HobbiesIncInput(this._instance, this._then);

  final Input_HobbiesIncInput _instance;

  final TRes Function(Input_HobbiesIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_HobbiesIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HobbiesIncInput<TRes>
    implements CopyWith_Input_HobbiesIncInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_HobbiesInsertInput {
  factory Input_HobbiesInsertInput({
    int? color,
    String? name,
    Input_PersonsHobbiesArrRelInsertInput? persons,
  }) => Input_HobbiesInsertInput._({
    if (color != null) r'color': color,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_HobbiesInsertInput._(this._$data);

  factory Input_HobbiesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsHobbiesArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_HobbiesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsHobbiesArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsHobbiesArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HobbiesInsertInput<Input_HobbiesInsertInput> get copyWith =>
      CopyWith_Input_HobbiesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesInsertInput ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_HobbiesInsertInput<TRes> {
  factory CopyWith_Input_HobbiesInsertInput(
    Input_HobbiesInsertInput instance,
    TRes Function(Input_HobbiesInsertInput) then,
  ) = _CopyWithImpl_Input_HobbiesInsertInput;

  factory CopyWith_Input_HobbiesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesInsertInput;

  TRes call({
    int? color,
    String? name,
    Input_PersonsHobbiesArrRelInsertInput? persons,
  });
  CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_HobbiesInsertInput<TRes>
    implements CopyWith_Input_HobbiesInsertInput<TRes> {
  _CopyWithImpl_Input_HobbiesInsertInput(this._instance, this._then);

  final Input_HobbiesInsertInput _instance;

  final TRes Function(Input_HobbiesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_HobbiesInsertInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsHobbiesArrRelInsertInput?),
    }),
  );

  CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsHobbiesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_HobbiesInsertInput<TRes>
    implements CopyWith_Input_HobbiesInsertInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesInsertInput(this._res);

  TRes _res;

  call({
    int? color,
    String? name,
    Input_PersonsHobbiesArrRelInsertInput? persons,
  }) => _res;

  CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsHobbiesArrRelInsertInput.stub(_res);
}

class Input_HobbiesObjRelInsertInput {
  factory Input_HobbiesObjRelInsertInput({
    required Input_HobbiesInsertInput data,
    Input_HobbiesOnConflict? onConflict,
  }) => Input_HobbiesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HobbiesObjRelInsertInput._(this._$data);

  factory Input_HobbiesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_HobbiesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HobbiesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HobbiesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesInsertInput get data =>
      (_$data['data'] as Input_HobbiesInsertInput);

  Input_HobbiesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HobbiesOnConflict?);

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

  CopyWith_Input_HobbiesObjRelInsertInput<Input_HobbiesObjRelInsertInput>
  get copyWith => CopyWith_Input_HobbiesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesObjRelInsertInput ||
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

abstract class CopyWith_Input_HobbiesObjRelInsertInput<TRes> {
  factory CopyWith_Input_HobbiesObjRelInsertInput(
    Input_HobbiesObjRelInsertInput instance,
    TRes Function(Input_HobbiesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_HobbiesObjRelInsertInput;

  factory CopyWith_Input_HobbiesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesObjRelInsertInput;

  TRes call({
    Input_HobbiesInsertInput? data,
    Input_HobbiesOnConflict? onConflict,
  });
  CopyWith_Input_HobbiesInsertInput<TRes> get data;
  CopyWith_Input_HobbiesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HobbiesObjRelInsertInput<TRes>
    implements CopyWith_Input_HobbiesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_HobbiesObjRelInsertInput(this._instance, this._then);

  final Input_HobbiesObjRelInsertInput _instance;

  final TRes Function(Input_HobbiesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HobbiesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_HobbiesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HobbiesOnConflict?),
        }),
      );

  CopyWith_Input_HobbiesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_HobbiesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_HobbiesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HobbiesOnConflict.stub(_then(_instance))
        : CopyWith_Input_HobbiesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HobbiesObjRelInsertInput<TRes>
    implements CopyWith_Input_HobbiesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesObjRelInsertInput(this._res);

  TRes _res;

  call({Input_HobbiesInsertInput? data, Input_HobbiesOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_HobbiesInsertInput<TRes> get data =>
      CopyWith_Input_HobbiesInsertInput.stub(_res);

  CopyWith_Input_HobbiesOnConflict<TRes> get onConflict =>
      CopyWith_Input_HobbiesOnConflict.stub(_res);
}

class Input_HobbiesOnConflict {
  factory Input_HobbiesOnConflict({
    required Enum_HobbiesConstraint constraint,
    List<Enum_HobbiesUpdateColumn>? updateColumns,
    Input_HobbiesBoolExp? where,
  }) => Input_HobbiesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HobbiesOnConflict._(this._$data);

  factory Input_HobbiesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HobbiesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_HobbiesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HobbiesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_HobbiesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HobbiesConstraint get constraint =>
      (_$data['constraint'] as Enum_HobbiesConstraint);

  List<Enum_HobbiesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HobbiesUpdateColumn>?);

  Input_HobbiesBoolExp? get where => (_$data['where'] as Input_HobbiesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HobbiesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HobbiesUpdateColumn>)
              .map((e) => toJson_Enum_HobbiesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HobbiesOnConflict<Input_HobbiesOnConflict> get copyWith =>
      CopyWith_Input_HobbiesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HobbiesOnConflict<TRes> {
  factory CopyWith_Input_HobbiesOnConflict(
    Input_HobbiesOnConflict instance,
    TRes Function(Input_HobbiesOnConflict) then,
  ) = _CopyWithImpl_Input_HobbiesOnConflict;

  factory CopyWith_Input_HobbiesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesOnConflict;

  TRes call({
    Enum_HobbiesConstraint? constraint,
    List<Enum_HobbiesUpdateColumn>? updateColumns,
    Input_HobbiesBoolExp? where,
  });
  CopyWith_Input_HobbiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HobbiesOnConflict<TRes>
    implements CopyWith_Input_HobbiesOnConflict<TRes> {
  _CopyWithImpl_Input_HobbiesOnConflict(this._instance, this._then);

  final Input_HobbiesOnConflict _instance;

  final TRes Function(Input_HobbiesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HobbiesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HobbiesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_HobbiesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_HobbiesBoolExp?),
    }),
  );

  CopyWith_Input_HobbiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_HobbiesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HobbiesOnConflict<TRes>
    implements CopyWith_Input_HobbiesOnConflict<TRes> {
  _CopyWithStubImpl_Input_HobbiesOnConflict(this._res);

  TRes _res;

  call({
    Enum_HobbiesConstraint? constraint,
    List<Enum_HobbiesUpdateColumn>? updateColumns,
    Input_HobbiesBoolExp? where,
  }) => _res;

  CopyWith_Input_HobbiesBoolExp<TRes> get where =>
      CopyWith_Input_HobbiesBoolExp.stub(_res);
}

class Input_HobbiesOrderBy {
  factory Input_HobbiesOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsHobbiesAggregateOrderBy? personsAggregate,
  }) => Input_HobbiesOrderBy._({
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_HobbiesOrderBy._(this._$data);

  factory Input_HobbiesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
          : Input_PersonsHobbiesAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_HobbiesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsHobbiesAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsHobbiesAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
    return result$data;
  }

  CopyWith_Input_HobbiesOrderBy<Input_HobbiesOrderBy> get copyWith =>
      CopyWith_Input_HobbiesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesOrderBy || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}
