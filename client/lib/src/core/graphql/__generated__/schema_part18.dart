// Part 18 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_DataCheckOverridesBoolExp<TRes> {
  factory CopyWith_Input_DataCheckOverridesBoolExp(
    Input_DataCheckOverridesBoolExp instance,
    TRes Function(Input_DataCheckOverridesBoolExp) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesBoolExp;

  factory CopyWith_Input_DataCheckOverridesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesBoolExp;

  TRes call({
    List<Input_DataCheckOverridesBoolExp>? $_and,
    Input_DataCheckOverridesBoolExp? $_not,
    List<Input_DataCheckOverridesBoolExp>? $_or,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_UuidComparisonExp? updatedBy,
  });
  TRes $_and(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete;
  CopyWith_Input_UuidComparisonExp<TRes> get updatedBy;
}

class _CopyWithImpl_Input_DataCheckOverridesBoolExp<TRes>
    implements CopyWith_Input_DataCheckOverridesBoolExp<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesBoolExp(this._instance, this._then);

  final Input_DataCheckOverridesBoolExp _instance;

  final TRes Function(Input_DataCheckOverridesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? updatedBy = _undefined,
  }) => _then(
    Input_DataCheckOverridesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_DataCheckOverridesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_DataCheckOverridesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_DataCheckOverridesBoolExp>?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (isComplete != _undefined)
        'isComplete': (isComplete as Input_BooleanComparisonExp?),
      if (updatedBy != _undefined)
        'updatedBy': (updatedBy as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_DataCheckOverridesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_DataCheckOverridesBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataCheckOverridesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_DataCheckOverridesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamiliesBoolExp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$family, (e) => call(family: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete {
    final local$isComplete = _instance.isComplete;
    return local$isComplete == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isComplete,
            (e) => call(isComplete: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get updatedBy {
    final local$updatedBy = _instance.updatedBy;
    return local$updatedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$updatedBy,
            (e) => call(updatedBy: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesBoolExp<TRes>
    implements CopyWith_Input_DataCheckOverridesBoolExp<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_DataCheckOverridesBoolExp>? $_and,
    Input_DataCheckOverridesBoolExp? $_not,
    List<Input_DataCheckOverridesBoolExp>? $_or,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_UuidComparisonExp? updatedBy,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get $_not =>
      CopyWith_Input_DataCheckOverridesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get updatedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_DataCheckOverridesInsertInput {
  factory Input_DataCheckOverridesInsertInput({
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    bool? isComplete,
  }) => Input_DataCheckOverridesInsertInput._({
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
  });

  Input_DataCheckOverridesInsertInput._(this._$data);

  factory Input_DataCheckOverridesInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = (l$isComplete as bool?);
    }
    return Input_DataCheckOverridesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesObjRelInsertInput? get family =>
      (_$data['family'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  bool? get isComplete => (_$data['isComplete'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete;
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesInsertInput<
    Input_DataCheckOverridesInsertInput
  >
  get copyWith => CopyWith_Input_DataCheckOverridesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    return Object.hashAll([
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesInsertInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesInsertInput(
    Input_DataCheckOverridesInsertInput instance,
    TRes Function(Input_DataCheckOverridesInsertInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesInsertInput;

  factory CopyWith_Input_DataCheckOverridesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesInsertInput;

  TRes call({
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    bool? isComplete,
  });
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family;
}

class _CopyWithImpl_Input_DataCheckOverridesInsertInput<TRes>
    implements CopyWith_Input_DataCheckOverridesInsertInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesInsertInput(this._instance, this._then);

  final Input_DataCheckOverridesInsertInput _instance;

  final TRes Function(Input_DataCheckOverridesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
  }) => _then(
    Input_DataCheckOverridesInsertInput._({
      ..._instance._$data,
      if (family != _undefined)
        'family': (family as Input_FamiliesObjRelInsertInput?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (isComplete != _undefined) 'isComplete': (isComplete as bool?),
    }),
  );

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$family,
            (e) => call(family: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesInsertInput<TRes>
    implements CopyWith_Input_DataCheckOverridesInsertInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesInsertInput(this._res);

  TRes _res;

  call({
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    bool? isComplete,
  }) => _res;

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);
}

class Input_DataCheckOverridesOnConflict {
  factory Input_DataCheckOverridesOnConflict({
    required Enum_DataCheckOverridesConstraint constraint,
    List<Enum_DataCheckOverridesUpdateColumn>? updateColumns,
    Input_DataCheckOverridesBoolExp? where,
  }) => Input_DataCheckOverridesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_DataCheckOverridesOnConflict._(this._$data);

  factory Input_DataCheckOverridesOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_DataCheckOverridesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_DataCheckOverridesUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_DataCheckOverridesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_DataCheckOverridesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_DataCheckOverridesConstraint get constraint =>
      (_$data['constraint'] as Enum_DataCheckOverridesConstraint);

  List<Enum_DataCheckOverridesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_DataCheckOverridesUpdateColumn>?);

  Input_DataCheckOverridesBoolExp? get where =>
      (_$data['where'] as Input_DataCheckOverridesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_DataCheckOverridesConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_DataCheckOverridesUpdateColumn>)
              .map((e) => toJson_Enum_DataCheckOverridesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesOnConflict<
    Input_DataCheckOverridesOnConflict
  >
  get copyWith => CopyWith_Input_DataCheckOverridesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesOnConflict ||
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

abstract class CopyWith_Input_DataCheckOverridesOnConflict<TRes> {
  factory CopyWith_Input_DataCheckOverridesOnConflict(
    Input_DataCheckOverridesOnConflict instance,
    TRes Function(Input_DataCheckOverridesOnConflict) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesOnConflict;

  factory CopyWith_Input_DataCheckOverridesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesOnConflict;

  TRes call({
    Enum_DataCheckOverridesConstraint? constraint,
    List<Enum_DataCheckOverridesUpdateColumn>? updateColumns,
    Input_DataCheckOverridesBoolExp? where,
  });
  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DataCheckOverridesOnConflict<TRes>
    implements CopyWith_Input_DataCheckOverridesOnConflict<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesOnConflict(this._instance, this._then);

  final Input_DataCheckOverridesOnConflict _instance;

  final TRes Function(Input_DataCheckOverridesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_DataCheckOverridesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_DataCheckOverridesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_DataCheckOverridesUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_DataCheckOverridesBoolExp?),
    }),
  );

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_DataCheckOverridesBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataCheckOverridesBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesOnConflict<TRes>
    implements CopyWith_Input_DataCheckOverridesOnConflict<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesOnConflict(this._res);

  TRes _res;

  call({
    Enum_DataCheckOverridesConstraint? constraint,
    List<Enum_DataCheckOverridesUpdateColumn>? updateColumns,
    Input_DataCheckOverridesBoolExp? where,
  }) => _res;

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where =>
      CopyWith_Input_DataCheckOverridesBoolExp.stub(_res);
}

class Input_DataCheckOverridesOrderBy {
  factory Input_DataCheckOverridesOrderBy({
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? updatedBy,
  }) => Input_DataCheckOverridesOrderBy._({
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (updatedBy != null) r'updatedBy': updatedBy,
  });

  Input_DataCheckOverridesOrderBy._(this._$data);

  factory Input_DataCheckOverridesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : fromJson_Enum_OrderBy((l$isComplete as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedBy as String));
    }
    return Input_DataCheckOverridesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesOrderBy? get family =>
      (_$data['family'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get isComplete => (_$data['isComplete'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedBy => (_$data['updatedBy'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete == null
          ? null
          : toJson_Enum_OrderBy(l$isComplete);
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : toJson_Enum_OrderBy(l$updatedBy);
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesOrderBy<Input_DataCheckOverridesOrderBy>
  get copyWith => CopyWith_Input_DataCheckOverridesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$updatedBy = updatedBy;
    return Object.hashAll([
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesOrderBy<TRes> {
  factory CopyWith_Input_DataCheckOverridesOrderBy(
    Input_DataCheckOverridesOrderBy instance,
    TRes Function(Input_DataCheckOverridesOrderBy) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesOrderBy;

  factory CopyWith_Input_DataCheckOverridesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesOrderBy;

  TRes call({
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? updatedBy,
  });
  CopyWith_Input_FamiliesOrderBy<TRes> get family;
}

class _CopyWithImpl_Input_DataCheckOverridesOrderBy<TRes>
    implements CopyWith_Input_DataCheckOverridesOrderBy<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesOrderBy(this._instance, this._then);

  final Input_DataCheckOverridesOrderBy _instance;

  final TRes Function(Input_DataCheckOverridesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? updatedBy = _undefined,
  }) => _then(
    Input_DataCheckOverridesOrderBy._({
      ..._instance._$data,
      if (family != _undefined) 'family': (family as Input_FamiliesOrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (isComplete != _undefined) 'isComplete': (isComplete as Enum_OrderBy?),
      if (updatedBy != _undefined) 'updatedBy': (updatedBy as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_FamiliesOrderBy<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesOrderBy<TRes>
    implements CopyWith_Input_DataCheckOverridesOrderBy<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesOrderBy(this._res);

  TRes _res;

  call({
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? updatedBy,
  }) => _res;

  CopyWith_Input_FamiliesOrderBy<TRes> get family =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);
}

class Input_DataCheckOverridesPkColumnsInput {
  factory Input_DataCheckOverridesPkColumnsInput({
    required UuidValue familyId,
  }) => Input_DataCheckOverridesPkColumnsInput._({r'familyId': familyId});

  Input_DataCheckOverridesPkColumnsInput._(this._$data);

  factory Input_DataCheckOverridesPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Input_DataCheckOverridesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesPkColumnsInput<
    Input_DataCheckOverridesPkColumnsInput
  >
  get copyWith =>
      CopyWith_Input_DataCheckOverridesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    return Object.hashAll([l$familyId]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesPkColumnsInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesPkColumnsInput(
    Input_DataCheckOverridesPkColumnsInput instance,
    TRes Function(Input_DataCheckOverridesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesPkColumnsInput;

  factory CopyWith_Input_DataCheckOverridesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesPkColumnsInput;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Input_DataCheckOverridesPkColumnsInput<TRes>
    implements CopyWith_Input_DataCheckOverridesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_DataCheckOverridesPkColumnsInput _instance;

  final TRes Function(Input_DataCheckOverridesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) => _then(
    Input_DataCheckOverridesPkColumnsInput._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesPkColumnsInput<TRes>
    implements CopyWith_Input_DataCheckOverridesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Input_DataCheckOverridesSetInput {
  factory Input_DataCheckOverridesSetInput({bool? isComplete}) =>
      Input_DataCheckOverridesSetInput._({
        if (isComplete != null) r'isComplete': isComplete,
      });

  Input_DataCheckOverridesSetInput._(this._$data);

  factory Input_DataCheckOverridesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = (l$isComplete as bool?);
    }
    return Input_DataCheckOverridesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isComplete => (_$data['isComplete'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete;
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesSetInput<Input_DataCheckOverridesSetInput>
  get copyWith => CopyWith_Input_DataCheckOverridesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isComplete = isComplete;
    return Object.hashAll([
      _$data.containsKey('isComplete') ? l$isComplete : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesSetInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesSetInput(
    Input_DataCheckOverridesSetInput instance,
    TRes Function(Input_DataCheckOverridesSetInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesSetInput;

  factory CopyWith_Input_DataCheckOverridesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesSetInput;

  TRes call({bool? isComplete});
}

class _CopyWithImpl_Input_DataCheckOverridesSetInput<TRes>
    implements CopyWith_Input_DataCheckOverridesSetInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesSetInput(this._instance, this._then);

  final Input_DataCheckOverridesSetInput _instance;

  final TRes Function(Input_DataCheckOverridesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? isComplete = _undefined}) => _then(
    Input_DataCheckOverridesSetInput._({
      ..._instance._$data,
      if (isComplete != _undefined) 'isComplete': (isComplete as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesSetInput<TRes>
    implements CopyWith_Input_DataCheckOverridesSetInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesSetInput(this._res);

  TRes _res;

  call({bool? isComplete}) => _res;
}

class Input_DataCheckOverridesStreamCursorInput {
  factory Input_DataCheckOverridesStreamCursorInput({
    required Input_DataCheckOverridesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_DataCheckOverridesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_DataCheckOverridesStreamCursorInput._(this._$data);

  factory Input_DataCheckOverridesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_DataCheckOverridesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_DataCheckOverridesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DataCheckOverridesStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_DataCheckOverridesStreamCursorValueInput);

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

  CopyWith_Input_DataCheckOverridesStreamCursorInput<
    Input_DataCheckOverridesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_DataCheckOverridesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesStreamCursorInput ||
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

abstract class CopyWith_Input_DataCheckOverridesStreamCursorInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesStreamCursorInput(
    Input_DataCheckOverridesStreamCursorInput instance,
    TRes Function(Input_DataCheckOverridesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesStreamCursorInput;

  factory CopyWith_Input_DataCheckOverridesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorInput;

  TRes call({
    Input_DataCheckOverridesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_DataCheckOverridesStreamCursorInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_DataCheckOverridesStreamCursorInput _instance;

  final TRes Function(Input_DataCheckOverridesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_DataCheckOverridesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_DataCheckOverridesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_DataCheckOverridesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_DataCheckOverridesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_DataCheckOverridesStreamCursorValueInput.stub(_res);
}

class Input_DataCheckOverridesStreamCursorValueInput {
  factory Input_DataCheckOverridesStreamCursorValueInput({
    UuidValue? familyId,
    bool? isComplete,
    UuidValue? updatedBy,
  }) => Input_DataCheckOverridesStreamCursorValueInput._({
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (updatedBy != null) r'updatedBy': updatedBy,
  });

  Input_DataCheckOverridesStreamCursorValueInput._(this._$data);

  factory Input_DataCheckOverridesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = (l$isComplete as bool?);
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : stringToUuid(l$updatedBy);
    }
    return Input_DataCheckOverridesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  bool? get isComplete => (_$data['isComplete'] as bool?);

  UuidValue? get updatedBy => (_$data['updatedBy'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete;
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : uuidToString(l$updatedBy);
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<
    Input_DataCheckOverridesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_DataCheckOverridesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$updatedBy = updatedBy;
    return Object.hashAll([
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesStreamCursorValueInput(
    Input_DataCheckOverridesStreamCursorValueInput instance,
    TRes Function(Input_DataCheckOverridesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesStreamCursorValueInput;

  factory CopyWith_Input_DataCheckOverridesStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorValueInput;

  TRes call({UuidValue? familyId, bool? isComplete, UuidValue? updatedBy});
}

class _CopyWithImpl_Input_DataCheckOverridesStreamCursorValueInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_DataCheckOverridesStreamCursorValueInput _instance;

  final TRes Function(Input_DataCheckOverridesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? updatedBy = _undefined,
  }) => _then(
    Input_DataCheckOverridesStreamCursorValueInput._({
      ..._instance._$data,
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (isComplete != _undefined) 'isComplete': (isComplete as bool?),
      if (updatedBy != _undefined) 'updatedBy': (updatedBy as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorValueInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? familyId, bool? isComplete, UuidValue? updatedBy}) => _res;
}

class Input_DataCheckOverridesUpdates {
  factory Input_DataCheckOverridesUpdates({
    Input_DataCheckOverridesSetInput? $_set,
    required Input_DataCheckOverridesBoolExp where,
  }) => Input_DataCheckOverridesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_DataCheckOverridesUpdates._(this._$data);

  factory Input_DataCheckOverridesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_DataCheckOverridesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_DataCheckOverridesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_DataCheckOverridesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DataCheckOverridesSetInput? get $_set =>
      (_$data['_set'] as Input_DataCheckOverridesSetInput?);

  Input_DataCheckOverridesBoolExp get where =>
      (_$data['where'] as Input_DataCheckOverridesBoolExp);

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

  CopyWith_Input_DataCheckOverridesUpdates<Input_DataCheckOverridesUpdates>
  get copyWith => CopyWith_Input_DataCheckOverridesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesUpdates ||
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

abstract class CopyWith_Input_DataCheckOverridesUpdates<TRes> {
  factory CopyWith_Input_DataCheckOverridesUpdates(
    Input_DataCheckOverridesUpdates instance,
    TRes Function(Input_DataCheckOverridesUpdates) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesUpdates;

  factory CopyWith_Input_DataCheckOverridesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesUpdates;

  TRes call({
    Input_DataCheckOverridesSetInput? $_set,
    Input_DataCheckOverridesBoolExp? where,
  });
  CopyWith_Input_DataCheckOverridesSetInput<TRes> get $_set;
  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DataCheckOverridesUpdates<TRes>
    implements CopyWith_Input_DataCheckOverridesUpdates<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesUpdates(this._instance, this._then);

  final Input_DataCheckOverridesUpdates _instance;

  final TRes Function(Input_DataCheckOverridesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_DataCheckOverridesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_DataCheckOverridesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_DataCheckOverridesBoolExp),
    }),
  );

  CopyWith_Input_DataCheckOverridesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_DataCheckOverridesSetInput.stub(_then(_instance))
        : CopyWith_Input_DataCheckOverridesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_DataCheckOverridesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesUpdates<TRes>
    implements CopyWith_Input_DataCheckOverridesUpdates<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesUpdates(this._res);

  TRes _res;

  call({
    Input_DataCheckOverridesSetInput? $_set,
    Input_DataCheckOverridesBoolExp? where,
  }) => _res;

  CopyWith_Input_DataCheckOverridesSetInput<TRes> get $_set =>
      CopyWith_Input_DataCheckOverridesSetInput.stub(_res);

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where =>
      CopyWith_Input_DataCheckOverridesBoolExp.stub(_res);
}

class Input_DataChecksBoolExp {
  factory Input_DataChecksBoolExp({
    List<Input_DataChecksBoolExp>? $_and,
    Input_DataChecksBoolExp? $_not,
    List<Input_DataChecksBoolExp>? $_or,
    Input_BooleanComparisonExp? addressCheck,
    Input_JsonbComparisonExp? details,
    Input_FamiliesBoolExp? family,
    Input_BooleanComparisonExp? familyCheck,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_BooleanComparisonExp? userOverride,
  }) => Input_DataChecksBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (addressCheck != null) r'addressCheck': addressCheck,
    if (details != null) r'details': details,
    if (family != null) r'family': family,
    if (familyCheck != null) r'familyCheck': familyCheck,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (userOverride != null) r'userOverride': userOverride,
  });

  Input_DataChecksBoolExp._(this._$data);

  factory Input_DataChecksBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DataChecksBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_DataChecksBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DataChecksBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('addressCheck')) {
      final l$addressCheck = data['addressCheck'];
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$addressCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('details')) {
      final l$details = data['details'];
      result$data['details'] = l$details == null
          ? null
          : Input_JsonbComparisonExp.fromJson(
              (l$details as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyCheck')) {
      final l$familyCheck = data['familyCheck'];
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$familyCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isComplete as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userOverride')) {
      final l$userOverride = data['userOverride'];
      result$data['userOverride'] = l$userOverride == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userOverride as Map<String, dynamic>),
            );
    }
    return Input_DataChecksBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DataChecksBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_DataChecksBoolExp>?);

  Input_DataChecksBoolExp? get $_not =>
      (_$data['_not'] as Input_DataChecksBoolExp?);

  List<Input_DataChecksBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_DataChecksBoolExp>?);

  Input_BooleanComparisonExp? get addressCheck =>
      (_$data['addressCheck'] as Input_BooleanComparisonExp?);

  Input_JsonbComparisonExp? get details =>
      (_$data['details'] as Input_JsonbComparisonExp?);

  Input_FamiliesBoolExp? get family =>
      (_$data['family'] as Input_FamiliesBoolExp?);

  Input_BooleanComparisonExp? get familyCheck =>
      (_$data['familyCheck'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isComplete =>
      (_$data['isComplete'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get userOverride =>
      (_$data['userOverride'] as Input_BooleanComparisonExp?);

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
    if (_$data.containsKey('addressCheck')) {
      final l$addressCheck = addressCheck;
      result$data['addressCheck'] = l$addressCheck?.toJson();
    }
    if (_$data.containsKey('details')) {
      final l$details = details;
      result$data['details'] = l$details?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyCheck')) {
      final l$familyCheck = familyCheck;
      result$data['familyCheck'] = l$familyCheck?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete?.toJson();
    }
    if (_$data.containsKey('userOverride')) {
      final l$userOverride = userOverride;
      result$data['userOverride'] = l$userOverride?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp> get copyWith =>
      CopyWith_Input_DataChecksBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataChecksBoolExp || runtimeType != other.runtimeType) {
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
    final l$addressCheck = addressCheck;
    final lOther$addressCheck = other.addressCheck;
    if (_$data.containsKey('addressCheck') !=
        other._$data.containsKey('addressCheck')) {
      return false;
    }
    if (l$addressCheck != lOther$addressCheck) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (_$data.containsKey('details') != other._$data.containsKey('details')) {
      return false;
    }
    if (l$details != lOther$details) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyCheck = familyCheck;
    final lOther$familyCheck = other.familyCheck;
    if (_$data.containsKey('familyCheck') !=
        other._$data.containsKey('familyCheck')) {
      return false;
    }
    if (l$familyCheck != lOther$familyCheck) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$userOverride = userOverride;
    final lOther$userOverride = other.userOverride;
    if (_$data.containsKey('userOverride') !=
        other._$data.containsKey('userOverride')) {
      return false;
    }
    if (l$userOverride != lOther$userOverride) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$addressCheck = addressCheck;
    final l$details = details;
    final l$family = family;
    final l$familyCheck = familyCheck;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$userOverride = userOverride;
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
      _$data.containsKey('addressCheck') ? l$addressCheck : const {},
      _$data.containsKey('details') ? l$details : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyCheck') ? l$familyCheck : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('userOverride') ? l$userOverride : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataChecksBoolExp<TRes> {
  factory CopyWith_Input_DataChecksBoolExp(
    Input_DataChecksBoolExp instance,
    TRes Function(Input_DataChecksBoolExp) then,
  ) = _CopyWithImpl_Input_DataChecksBoolExp;

  factory CopyWith_Input_DataChecksBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DataChecksBoolExp;

  TRes call({
    List<Input_DataChecksBoolExp>? $_and,
    Input_DataChecksBoolExp? $_not,
    List<Input_DataChecksBoolExp>? $_or,
    Input_BooleanComparisonExp? addressCheck,
    Input_JsonbComparisonExp? details,
    Input_FamiliesBoolExp? family,
    Input_BooleanComparisonExp? familyCheck,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_BooleanComparisonExp? userOverride,
  });
  TRes $_and(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_DataChecksBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_BooleanComparisonExp<TRes> get addressCheck;
  CopyWith_Input_JsonbComparisonExp<TRes> get details;
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_BooleanComparisonExp<TRes> get familyCheck;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete;
  CopyWith_Input_BooleanComparisonExp<TRes> get userOverride;
}

class _CopyWithImpl_Input_DataChecksBoolExp<TRes>
    implements CopyWith_Input_DataChecksBoolExp<TRes> {
  _CopyWithImpl_Input_DataChecksBoolExp(this._instance, this._then);

  final Input_DataChecksBoolExp _instance;

  final TRes Function(Input_DataChecksBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? addressCheck = _undefined,
    Object? details = _undefined,
    Object? family = _undefined,
    Object? familyCheck = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? userOverride = _undefined,
  }) => _then(
    Input_DataChecksBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_DataChecksBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_DataChecksBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_DataChecksBoolExp>?),
      if (addressCheck != _undefined)
        'addressCheck': (addressCheck as Input_BooleanComparisonExp?),
      if (details != _undefined)
        'details': (details as Input_JsonbComparisonExp?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (familyCheck != _undefined)
        'familyCheck': (familyCheck as Input_BooleanComparisonExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (isComplete != _undefined)
        'isComplete': (isComplete as Input_BooleanComparisonExp?),
      if (userOverride != _undefined)
        'userOverride': (userOverride as Input_BooleanComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_DataChecksBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DataChecksBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_DataChecksBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataChecksBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_DataChecksBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_BooleanComparisonExp<TRes> get addressCheck {
    final local$addressCheck = _instance.addressCheck;
    return local$addressCheck == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$addressCheck,
            (e) => call(addressCheck: e),
          );
  }

  CopyWith_Input_JsonbComparisonExp<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith_Input_JsonbComparisonExp.stub(_then(_instance))
        : CopyWith_Input_JsonbComparisonExp(
            local$details,
            (e) => call(details: e),
          );
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$family, (e) => call(family: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get familyCheck {
    final local$familyCheck = _instance.familyCheck;
    return local$familyCheck == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$familyCheck,
            (e) => call(familyCheck: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete {
    final local$isComplete = _instance.isComplete;
    return local$isComplete == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isComplete,
            (e) => call(isComplete: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get userOverride {
    final local$userOverride = _instance.userOverride;
    return local$userOverride == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$userOverride,
            (e) => call(userOverride: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataChecksBoolExp<TRes>
    implements CopyWith_Input_DataChecksBoolExp<TRes> {
  _CopyWithStubImpl_Input_DataChecksBoolExp(this._res);

  TRes _res;

  call({
    List<Input_DataChecksBoolExp>? $_and,
    Input_DataChecksBoolExp? $_not,
    List<Input_DataChecksBoolExp>? $_or,
    Input_BooleanComparisonExp? addressCheck,
    Input_JsonbComparisonExp? details,
    Input_FamiliesBoolExp? family,
    Input_BooleanComparisonExp? familyCheck,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_BooleanComparisonExp? userOverride,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_DataChecksBoolExp<TRes> get $_not =>
      CopyWith_Input_DataChecksBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BooleanComparisonExp<TRes> get addressCheck =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_JsonbComparisonExp<TRes> get details =>
      CopyWith_Input_JsonbComparisonExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get familyCheck =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get userOverride =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_DataChecksOrderBy {
  factory Input_DataChecksOrderBy({
    Enum_OrderBy? addressCheck,
    Enum_OrderBy? details,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyCheck,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? userOverride,
  }) => Input_DataChecksOrderBy._({
    if (addressCheck != null) r'addressCheck': addressCheck,
    if (details != null) r'details': details,
    if (family != null) r'family': family,
    if (familyCheck != null) r'familyCheck': familyCheck,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (userOverride != null) r'userOverride': userOverride,
  });

  Input_DataChecksOrderBy._(this._$data);

  factory Input_DataChecksOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressCheck')) {
      final l$addressCheck = data['addressCheck'];
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : fromJson_Enum_OrderBy((l$addressCheck as String));
    }
    if (data.containsKey('details')) {
      final l$details = data['details'];
      result$data['details'] = l$details == null
          ? null
          : fromJson_Enum_OrderBy((l$details as String));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyCheck')) {
      final l$familyCheck = data['familyCheck'];
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : fromJson_Enum_OrderBy((l$familyCheck as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : fromJson_Enum_OrderBy((l$isComplete as String));
    }
    if (data.containsKey('userOverride')) {
      final l$userOverride = data['userOverride'];
      result$data['userOverride'] = l$userOverride == null
          ? null
          : fromJson_Enum_OrderBy((l$userOverride as String));
    }
    return Input_DataChecksOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get addressCheck => (_$data['addressCheck'] as Enum_OrderBy?);

  Enum_OrderBy? get details => (_$data['details'] as Enum_OrderBy?);

  Input_FamiliesOrderBy? get family =>
      (_$data['family'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get familyCheck => (_$data['familyCheck'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get isComplete => (_$data['isComplete'] as Enum_OrderBy?);

  Enum_OrderBy? get userOverride => (_$data['userOverride'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressCheck')) {
      final l$addressCheck = addressCheck;
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : toJson_Enum_OrderBy(l$addressCheck);
    }
    if (_$data.containsKey('details')) {
      final l$details = details;
      result$data['details'] = l$details == null
          ? null
          : toJson_Enum_OrderBy(l$details);
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyCheck')) {
      final l$familyCheck = familyCheck;
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : toJson_Enum_OrderBy(l$familyCheck);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete == null
          ? null
          : toJson_Enum_OrderBy(l$isComplete);
    }
    if (_$data.containsKey('userOverride')) {
      final l$userOverride = userOverride;
      result$data['userOverride'] = l$userOverride == null
          ? null
          : toJson_Enum_OrderBy(l$userOverride);
    }
    return result$data;
  }

  CopyWith_Input_DataChecksOrderBy<Input_DataChecksOrderBy> get copyWith =>
      CopyWith_Input_DataChecksOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataChecksOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressCheck = addressCheck;
    final lOther$addressCheck = other.addressCheck;
    if (_$data.containsKey('addressCheck') !=
        other._$data.containsKey('addressCheck')) {
      return false;
    }
    if (l$addressCheck != lOther$addressCheck) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (_$data.containsKey('details') != other._$data.containsKey('details')) {
      return false;
    }
    if (l$details != lOther$details) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyCheck = familyCheck;
    final lOther$familyCheck = other.familyCheck;
    if (_$data.containsKey('familyCheck') !=
        other._$data.containsKey('familyCheck')) {
      return false;
    }
    if (l$familyCheck != lOther$familyCheck) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$userOverride = userOverride;
    final lOther$userOverride = other.userOverride;
    if (_$data.containsKey('userOverride') !=
        other._$data.containsKey('userOverride')) {
      return false;
    }
    if (l$userOverride != lOther$userOverride) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressCheck = addressCheck;
    final l$details = details;
    final l$family = family;
    final l$familyCheck = familyCheck;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$userOverride = userOverride;
    return Object.hashAll([
      _$data.containsKey('addressCheck') ? l$addressCheck : const {},
      _$data.containsKey('details') ? l$details : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyCheck') ? l$familyCheck : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('userOverride') ? l$userOverride : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataChecksOrderBy<TRes> {
  factory CopyWith_Input_DataChecksOrderBy(
    Input_DataChecksOrderBy instance,
    TRes Function(Input_DataChecksOrderBy) then,
  ) = _CopyWithImpl_Input_DataChecksOrderBy;

  factory CopyWith_Input_DataChecksOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_DataChecksOrderBy;

  TRes call({
    Enum_OrderBy? addressCheck,
    Enum_OrderBy? details,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyCheck,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? userOverride,
  });
  CopyWith_Input_FamiliesOrderBy<TRes> get family;
}

class _CopyWithImpl_Input_DataChecksOrderBy<TRes>
    implements CopyWith_Input_DataChecksOrderBy<TRes> {
  _CopyWithImpl_Input_DataChecksOrderBy(this._instance, this._then);

  final Input_DataChecksOrderBy _instance;

  final TRes Function(Input_DataChecksOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressCheck = _undefined,
    Object? details = _undefined,
    Object? family = _undefined,
    Object? familyCheck = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? userOverride = _undefined,
  }) => _then(
    Input_DataChecksOrderBy._({
      ..._instance._$data,
      if (addressCheck != _undefined)
        'addressCheck': (addressCheck as Enum_OrderBy?),
      if (details != _undefined) 'details': (details as Enum_OrderBy?),
      if (family != _undefined) 'family': (family as Input_FamiliesOrderBy?),
      if (familyCheck != _undefined)
        'familyCheck': (familyCheck as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (isComplete != _undefined) 'isComplete': (isComplete as Enum_OrderBy?),
      if (userOverride != _undefined)
        'userOverride': (userOverride as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_FamiliesOrderBy<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl_Input_DataChecksOrderBy<TRes>
    implements CopyWith_Input_DataChecksOrderBy<TRes> {
  _CopyWithStubImpl_Input_DataChecksOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? addressCheck,
    Enum_OrderBy? details,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyCheck,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? userOverride,
  }) => _res;

  CopyWith_Input_FamiliesOrderBy<TRes> get family =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);
}

class Input_DataChecksStreamCursorInput {
  factory Input_DataChecksStreamCursorInput({
    required Input_DataChecksStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_DataChecksStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_DataChecksStreamCursorInput._(this._$data);

  factory Input_DataChecksStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_DataChecksStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_DataChecksStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DataChecksStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_DataChecksStreamCursorValueInput);

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

  CopyWith_Input_DataChecksStreamCursorInput<Input_DataChecksStreamCursorInput>
  get copyWith => CopyWith_Input_DataChecksStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataChecksStreamCursorInput ||
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

abstract class CopyWith_Input_DataChecksStreamCursorInput<TRes> {
  factory CopyWith_Input_DataChecksStreamCursorInput(
    Input_DataChecksStreamCursorInput instance,
    TRes Function(Input_DataChecksStreamCursorInput) then,
  ) = _CopyWithImpl_Input_DataChecksStreamCursorInput;

  factory CopyWith_Input_DataChecksStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataChecksStreamCursorInput;

  TRes call({
    Input_DataChecksStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_DataChecksStreamCursorValueInput<TRes> get initialValue;
}
