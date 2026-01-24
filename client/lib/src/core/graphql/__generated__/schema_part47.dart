// Part 47 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_QualificationsBoolExp<TRes> {
  factory CopyWith_Input_QualificationsBoolExp(
    Input_QualificationsBoolExp instance,
    TRes Function(Input_QualificationsBoolExp) then,
  ) = _CopyWithImpl_Input_QualificationsBoolExp;

  factory CopyWith_Input_QualificationsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsBoolExp;

  TRes call({
    List<Input_QualificationsBoolExp>? $_and,
    Input_QualificationsBoolExp? $_not,
    List<Input_QualificationsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_QualificationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_QualificationsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_QualificationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_QualificationsBoolExp<TRes>
    implements CopyWith_Input_QualificationsBoolExp<TRes> {
  _CopyWithImpl_Input_QualificationsBoolExp(this._instance, this._then);

  final Input_QualificationsBoolExp _instance;

  final TRes Function(Input_QualificationsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_QualificationsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_QualificationsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_QualificationsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_QualificationsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_QualificationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_QualificationsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_QualificationsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_QualificationsBoolExp.stub(_then(_instance))
        : CopyWith_Input_QualificationsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_QualificationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_QualificationsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_QualificationsBoolExp<TRes>
    implements CopyWith_Input_QualificationsBoolExp<TRes> {
  _CopyWithStubImpl_Input_QualificationsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_QualificationsBoolExp>? $_and,
    Input_QualificationsBoolExp? $_not,
    List<Input_QualificationsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_QualificationsBoolExp<TRes> get $_not =>
      CopyWith_Input_QualificationsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_QualificationsInsertInput {
  factory Input_QualificationsInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_QualificationsInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_QualificationsInsertInput._(this._$data);

  factory Input_QualificationsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_QualificationsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_QualificationsInsertInput<Input_QualificationsInsertInput>
  get copyWith => CopyWith_Input_QualificationsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_QualificationsInsertInput<TRes> {
  factory CopyWith_Input_QualificationsInsertInput(
    Input_QualificationsInsertInput instance,
    TRes Function(Input_QualificationsInsertInput) then,
  ) = _CopyWithImpl_Input_QualificationsInsertInput;

  factory CopyWith_Input_QualificationsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsInsertInput;

  TRes call({String? name, Input_PersonsArrRelInsertInput? persons});
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_QualificationsInsertInput<TRes>
    implements CopyWith_Input_QualificationsInsertInput<TRes> {
  _CopyWithImpl_Input_QualificationsInsertInput(this._instance, this._then);

  final Input_QualificationsInsertInput _instance;

  final TRes Function(Input_QualificationsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? persons = _undefined}) => _then(
    Input_QualificationsInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_QualificationsInsertInput<TRes>
    implements CopyWith_Input_QualificationsInsertInput<TRes> {
  _CopyWithStubImpl_Input_QualificationsInsertInput(this._res);

  TRes _res;

  call({String? name, Input_PersonsArrRelInsertInput? persons}) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_QualificationsObjRelInsertInput {
  factory Input_QualificationsObjRelInsertInput({
    required Input_QualificationsInsertInput data,
    Input_QualificationsOnConflict? onConflict,
  }) => Input_QualificationsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_QualificationsObjRelInsertInput._(this._$data);

  factory Input_QualificationsObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_QualificationsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_QualificationsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_QualificationsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_QualificationsInsertInput get data =>
      (_$data['data'] as Input_QualificationsInsertInput);

  Input_QualificationsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_QualificationsOnConflict?);

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

  CopyWith_Input_QualificationsObjRelInsertInput<
    Input_QualificationsObjRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_QualificationsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsObjRelInsertInput ||
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

abstract class CopyWith_Input_QualificationsObjRelInsertInput<TRes> {
  factory CopyWith_Input_QualificationsObjRelInsertInput(
    Input_QualificationsObjRelInsertInput instance,
    TRes Function(Input_QualificationsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_QualificationsObjRelInsertInput;

  factory CopyWith_Input_QualificationsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsObjRelInsertInput;

  TRes call({
    Input_QualificationsInsertInput? data,
    Input_QualificationsOnConflict? onConflict,
  });
  CopyWith_Input_QualificationsInsertInput<TRes> get data;
  CopyWith_Input_QualificationsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_QualificationsObjRelInsertInput<TRes>
    implements CopyWith_Input_QualificationsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_QualificationsObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_QualificationsObjRelInsertInput _instance;

  final TRes Function(Input_QualificationsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_QualificationsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_QualificationsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_QualificationsOnConflict?),
        }),
      );

  CopyWith_Input_QualificationsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_QualificationsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_QualificationsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_QualificationsOnConflict.stub(_then(_instance))
        : CopyWith_Input_QualificationsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_QualificationsObjRelInsertInput<TRes>
    implements CopyWith_Input_QualificationsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_QualificationsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_QualificationsInsertInput? data,
    Input_QualificationsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_QualificationsInsertInput<TRes> get data =>
      CopyWith_Input_QualificationsInsertInput.stub(_res);

  CopyWith_Input_QualificationsOnConflict<TRes> get onConflict =>
      CopyWith_Input_QualificationsOnConflict.stub(_res);
}

class Input_QualificationsOnConflict {
  factory Input_QualificationsOnConflict({
    required Enum_QualificationsConstraint constraint,
    List<Enum_QualificationsUpdateColumn>? updateColumns,
    Input_QualificationsBoolExp? where,
  }) => Input_QualificationsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_QualificationsOnConflict._(this._$data);

  factory Input_QualificationsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_QualificationsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_QualificationsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_QualificationsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_QualificationsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_QualificationsConstraint get constraint =>
      (_$data['constraint'] as Enum_QualificationsConstraint);

  List<Enum_QualificationsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_QualificationsUpdateColumn>?);

  Input_QualificationsBoolExp? get where =>
      (_$data['where'] as Input_QualificationsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_QualificationsConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_QualificationsUpdateColumn>)
              .map((e) => toJson_Enum_QualificationsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_QualificationsOnConflict<Input_QualificationsOnConflict>
  get copyWith => CopyWith_Input_QualificationsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsOnConflict ||
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

abstract class CopyWith_Input_QualificationsOnConflict<TRes> {
  factory CopyWith_Input_QualificationsOnConflict(
    Input_QualificationsOnConflict instance,
    TRes Function(Input_QualificationsOnConflict) then,
  ) = _CopyWithImpl_Input_QualificationsOnConflict;

  factory CopyWith_Input_QualificationsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsOnConflict;

  TRes call({
    Enum_QualificationsConstraint? constraint,
    List<Enum_QualificationsUpdateColumn>? updateColumns,
    Input_QualificationsBoolExp? where,
  });
  CopyWith_Input_QualificationsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_QualificationsOnConflict<TRes>
    implements CopyWith_Input_QualificationsOnConflict<TRes> {
  _CopyWithImpl_Input_QualificationsOnConflict(this._instance, this._then);

  final Input_QualificationsOnConflict _instance;

  final TRes Function(Input_QualificationsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_QualificationsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_QualificationsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_QualificationsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_QualificationsBoolExp?),
    }),
  );

  CopyWith_Input_QualificationsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_QualificationsBoolExp.stub(_then(_instance))
        : CopyWith_Input_QualificationsBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_QualificationsOnConflict<TRes>
    implements CopyWith_Input_QualificationsOnConflict<TRes> {
  _CopyWithStubImpl_Input_QualificationsOnConflict(this._res);

  TRes _res;

  call({
    Enum_QualificationsConstraint? constraint,
    List<Enum_QualificationsUpdateColumn>? updateColumns,
    Input_QualificationsBoolExp? where,
  }) => _res;

  CopyWith_Input_QualificationsBoolExp<TRes> get where =>
      CopyWith_Input_QualificationsBoolExp.stub(_res);
}

class Input_QualificationsOrderBy {
  factory Input_QualificationsOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_QualificationsOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_QualificationsOrderBy._(this._$data);

  factory Input_QualificationsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_QualificationsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_QualificationsOrderBy<Input_QualificationsOrderBy>
  get copyWith => CopyWith_Input_QualificationsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_QualificationsOrderBy<TRes> {
  factory CopyWith_Input_QualificationsOrderBy(
    Input_QualificationsOrderBy instance,
    TRes Function(Input_QualificationsOrderBy) then,
  ) = _CopyWithImpl_Input_QualificationsOrderBy;

  factory CopyWith_Input_QualificationsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_QualificationsOrderBy<TRes>
    implements CopyWith_Input_QualificationsOrderBy<TRes> {
  _CopyWithImpl_Input_QualificationsOrderBy(this._instance, this._then);

  final Input_QualificationsOrderBy _instance;

  final TRes Function(Input_QualificationsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_QualificationsOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_QualificationsOrderBy<TRes>
    implements CopyWith_Input_QualificationsOrderBy<TRes> {
  _CopyWithStubImpl_Input_QualificationsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_QualificationsPkColumnsInput {
  factory Input_QualificationsPkColumnsInput({required UuidValue id}) =>
      Input_QualificationsPkColumnsInput._({r'id': id});

  Input_QualificationsPkColumnsInput._(this._$data);

  factory Input_QualificationsPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_QualificationsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_QualificationsPkColumnsInput<
    Input_QualificationsPkColumnsInput
  >
  get copyWith => CopyWith_Input_QualificationsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Input_QualificationsPkColumnsInput<TRes> {
  factory CopyWith_Input_QualificationsPkColumnsInput(
    Input_QualificationsPkColumnsInput instance,
    TRes Function(Input_QualificationsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_QualificationsPkColumnsInput;

  factory CopyWith_Input_QualificationsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_QualificationsPkColumnsInput<TRes>
    implements CopyWith_Input_QualificationsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_QualificationsPkColumnsInput(this._instance, this._then);

  final Input_QualificationsPkColumnsInput _instance;

  final TRes Function(Input_QualificationsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_QualificationsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_QualificationsPkColumnsInput<TRes>
    implements CopyWith_Input_QualificationsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_QualificationsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_QualificationsSetInput {
  factory Input_QualificationsSetInput({String? name}) =>
      Input_QualificationsSetInput._({if (name != null) r'name': name});

  Input_QualificationsSetInput._(this._$data);

  factory Input_QualificationsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_QualificationsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_QualificationsSetInput<Input_QualificationsSetInput>
  get copyWith => CopyWith_Input_QualificationsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsSetInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith_Input_QualificationsSetInput<TRes> {
  factory CopyWith_Input_QualificationsSetInput(
    Input_QualificationsSetInput instance,
    TRes Function(Input_QualificationsSetInput) then,
  ) = _CopyWithImpl_Input_QualificationsSetInput;

  factory CopyWith_Input_QualificationsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_QualificationsSetInput<TRes>
    implements CopyWith_Input_QualificationsSetInput<TRes> {
  _CopyWithImpl_Input_QualificationsSetInput(this._instance, this._then);

  final Input_QualificationsSetInput _instance;

  final TRes Function(Input_QualificationsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_QualificationsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_QualificationsSetInput<TRes>
    implements CopyWith_Input_QualificationsSetInput<TRes> {
  _CopyWithStubImpl_Input_QualificationsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_QualificationsStreamCursorInput {
  factory Input_QualificationsStreamCursorInput({
    required Input_QualificationsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_QualificationsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_QualificationsStreamCursorInput._(this._$data);

  factory Input_QualificationsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_QualificationsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_QualificationsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_QualificationsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_QualificationsStreamCursorValueInput);

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

  CopyWith_Input_QualificationsStreamCursorInput<
    Input_QualificationsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_QualificationsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsStreamCursorInput ||
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

abstract class CopyWith_Input_QualificationsStreamCursorInput<TRes> {
  factory CopyWith_Input_QualificationsStreamCursorInput(
    Input_QualificationsStreamCursorInput instance,
    TRes Function(Input_QualificationsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_QualificationsStreamCursorInput;

  factory CopyWith_Input_QualificationsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsStreamCursorInput;

  TRes call({
    Input_QualificationsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_QualificationsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_QualificationsStreamCursorInput<TRes>
    implements CopyWith_Input_QualificationsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_QualificationsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_QualificationsStreamCursorInput _instance;

  final TRes Function(Input_QualificationsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_QualificationsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_QualificationsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_QualificationsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_QualificationsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_QualificationsStreamCursorInput<TRes>
    implements CopyWith_Input_QualificationsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_QualificationsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_QualificationsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_QualificationsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_QualificationsStreamCursorValueInput.stub(_res);
}

class Input_QualificationsStreamCursorValueInput {
  factory Input_QualificationsStreamCursorValueInput({
    UuidValue? id,
    String? name,
  }) => Input_QualificationsStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_QualificationsStreamCursorValueInput._(this._$data);

  factory Input_QualificationsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_QualificationsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_QualificationsStreamCursorValueInput<
    Input_QualificationsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_QualificationsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_QualificationsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_QualificationsStreamCursorValueInput(
    Input_QualificationsStreamCursorValueInput instance,
    TRes Function(Input_QualificationsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_QualificationsStreamCursorValueInput;

  factory CopyWith_Input_QualificationsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_QualificationsStreamCursorValueInput<TRes>
    implements CopyWith_Input_QualificationsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_QualificationsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_QualificationsStreamCursorValueInput _instance;

  final TRes Function(Input_QualificationsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_QualificationsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_QualificationsStreamCursorValueInput<TRes>
    implements CopyWith_Input_QualificationsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_QualificationsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_QualificationsUpdates {
  factory Input_QualificationsUpdates({
    Input_QualificationsSetInput? $_set,
    required Input_QualificationsBoolExp where,
  }) => Input_QualificationsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_QualificationsUpdates._(this._$data);

  factory Input_QualificationsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_QualificationsSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_QualificationsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_QualificationsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_QualificationsSetInput? get $_set =>
      (_$data['_set'] as Input_QualificationsSetInput?);

  Input_QualificationsBoolExp get where =>
      (_$data['where'] as Input_QualificationsBoolExp);

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

  CopyWith_Input_QualificationsUpdates<Input_QualificationsUpdates>
  get copyWith => CopyWith_Input_QualificationsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsUpdates ||
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

abstract class CopyWith_Input_QualificationsUpdates<TRes> {
  factory CopyWith_Input_QualificationsUpdates(
    Input_QualificationsUpdates instance,
    TRes Function(Input_QualificationsUpdates) then,
  ) = _CopyWithImpl_Input_QualificationsUpdates;

  factory CopyWith_Input_QualificationsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsUpdates;

  TRes call({
    Input_QualificationsSetInput? $_set,
    Input_QualificationsBoolExp? where,
  });
  CopyWith_Input_QualificationsSetInput<TRes> get $_set;
  CopyWith_Input_QualificationsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_QualificationsUpdates<TRes>
    implements CopyWith_Input_QualificationsUpdates<TRes> {
  _CopyWithImpl_Input_QualificationsUpdates(this._instance, this._then);

  final Input_QualificationsUpdates _instance;

  final TRes Function(Input_QualificationsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_QualificationsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_QualificationsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_QualificationsBoolExp),
    }),
  );

  CopyWith_Input_QualificationsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_QualificationsSetInput.stub(_then(_instance))
        : CopyWith_Input_QualificationsSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_QualificationsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_QualificationsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_QualificationsUpdates<TRes>
    implements CopyWith_Input_QualificationsUpdates<TRes> {
  _CopyWithStubImpl_Input_QualificationsUpdates(this._res);

  TRes _res;

  call({
    Input_QualificationsSetInput? $_set,
    Input_QualificationsBoolExp? where,
  }) => _res;

  CopyWith_Input_QualificationsSetInput<TRes> get $_set =>
      CopyWith_Input_QualificationsSetInput.stub(_res);

  CopyWith_Input_QualificationsBoolExp<TRes> get where =>
      CopyWith_Input_QualificationsBoolExp.stub(_res);
}

class Input_SchoolsBoolExp {
  factory Input_SchoolsBoolExp({
    List<Input_SchoolsBoolExp>? $_and,
    Input_SchoolsBoolExp? $_not,
    List<Input_SchoolsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_SchoolsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_SchoolsBoolExp._(this._$data);

  factory Input_SchoolsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_SchoolsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_SchoolsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_SchoolsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
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
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateBoolExp.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_SchoolsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_SchoolsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_SchoolsBoolExp>?);

  Input_SchoolsBoolExp? get $_not => (_$data['_not'] as Input_SchoolsBoolExp?);

  List<Input_SchoolsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_SchoolsBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

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
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp> get copyWith =>
      CopyWith_Input_SchoolsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsBoolExp || runtimeType != other.runtimeType) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_SchoolsBoolExp<TRes> {
  factory CopyWith_Input_SchoolsBoolExp(
    Input_SchoolsBoolExp instance,
    TRes Function(Input_SchoolsBoolExp) then,
  ) = _CopyWithImpl_Input_SchoolsBoolExp;

  factory CopyWith_Input_SchoolsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsBoolExp;

  TRes call({
    List<Input_SchoolsBoolExp>? $_and,
    Input_SchoolsBoolExp? $_not,
    List<Input_SchoolsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_SchoolsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_SchoolsBoolExp<TRes>
    implements CopyWith_Input_SchoolsBoolExp<TRes> {
  _CopyWithImpl_Input_SchoolsBoolExp(this._instance, this._then);

  final Input_SchoolsBoolExp _instance;

  final TRes Function(Input_SchoolsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_SchoolsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_SchoolsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_SchoolsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_SchoolsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_SchoolsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_SchoolsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_SchoolsBoolExp.stub(_then(_instance))
        : CopyWith_Input_SchoolsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_SchoolsBoolExp(e, (i) => i)),
    )?.toList(),
  );

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

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_SchoolsBoolExp<TRes>
    implements CopyWith_Input_SchoolsBoolExp<TRes> {
  _CopyWithStubImpl_Input_SchoolsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_SchoolsBoolExp>? $_and,
    Input_SchoolsBoolExp? $_not,
    List<Input_SchoolsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_SchoolsBoolExp<TRes> get $_not =>
      CopyWith_Input_SchoolsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_SchoolsInsertInput {
  factory Input_SchoolsInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_SchoolsInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_SchoolsInsertInput._(this._$data);

  factory Input_SchoolsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_SchoolsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_SchoolsInsertInput<Input_SchoolsInsertInput> get copyWith =>
      CopyWith_Input_SchoolsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_SchoolsInsertInput<TRes> {
  factory CopyWith_Input_SchoolsInsertInput(
    Input_SchoolsInsertInput instance,
    TRes Function(Input_SchoolsInsertInput) then,
  ) = _CopyWithImpl_Input_SchoolsInsertInput;

  factory CopyWith_Input_SchoolsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsInsertInput;

  TRes call({String? name, Input_PersonsArrRelInsertInput? persons});
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_SchoolsInsertInput<TRes>
    implements CopyWith_Input_SchoolsInsertInput<TRes> {
  _CopyWithImpl_Input_SchoolsInsertInput(this._instance, this._then);

  final Input_SchoolsInsertInput _instance;

  final TRes Function(Input_SchoolsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? persons = _undefined}) => _then(
    Input_SchoolsInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_SchoolsInsertInput<TRes>
    implements CopyWith_Input_SchoolsInsertInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsInsertInput(this._res);

  TRes _res;

  call({String? name, Input_PersonsArrRelInsertInput? persons}) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_SchoolsObjRelInsertInput {
  factory Input_SchoolsObjRelInsertInput({
    required Input_SchoolsInsertInput data,
    Input_SchoolsOnConflict? onConflict,
  }) => Input_SchoolsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_SchoolsObjRelInsertInput._(this._$data);

  factory Input_SchoolsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_SchoolsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_SchoolsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_SchoolsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_SchoolsInsertInput get data =>
      (_$data['data'] as Input_SchoolsInsertInput);

  Input_SchoolsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_SchoolsOnConflict?);

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

  CopyWith_Input_SchoolsObjRelInsertInput<Input_SchoolsObjRelInsertInput>
  get copyWith => CopyWith_Input_SchoolsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsObjRelInsertInput ||
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

abstract class CopyWith_Input_SchoolsObjRelInsertInput<TRes> {
  factory CopyWith_Input_SchoolsObjRelInsertInput(
    Input_SchoolsObjRelInsertInput instance,
    TRes Function(Input_SchoolsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_SchoolsObjRelInsertInput;

  factory CopyWith_Input_SchoolsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsObjRelInsertInput;

  TRes call({
    Input_SchoolsInsertInput? data,
    Input_SchoolsOnConflict? onConflict,
  });
  CopyWith_Input_SchoolsInsertInput<TRes> get data;
  CopyWith_Input_SchoolsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_SchoolsObjRelInsertInput<TRes>
    implements CopyWith_Input_SchoolsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_SchoolsObjRelInsertInput(this._instance, this._then);

  final Input_SchoolsObjRelInsertInput _instance;

  final TRes Function(Input_SchoolsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_SchoolsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_SchoolsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_SchoolsOnConflict?),
        }),
      );

  CopyWith_Input_SchoolsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_SchoolsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_SchoolsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_SchoolsOnConflict.stub(_then(_instance))
        : CopyWith_Input_SchoolsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_SchoolsObjRelInsertInput<TRes>
    implements CopyWith_Input_SchoolsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_SchoolsInsertInput? data, Input_SchoolsOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_SchoolsInsertInput<TRes> get data =>
      CopyWith_Input_SchoolsInsertInput.stub(_res);

  CopyWith_Input_SchoolsOnConflict<TRes> get onConflict =>
      CopyWith_Input_SchoolsOnConflict.stub(_res);
}

class Input_SchoolsOnConflict {
  factory Input_SchoolsOnConflict({
    required Enum_SchoolsConstraint constraint,
    List<Enum_SchoolsUpdateColumn>? updateColumns,
    Input_SchoolsBoolExp? where,
  }) => Input_SchoolsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_SchoolsOnConflict._(this._$data);

  factory Input_SchoolsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_SchoolsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_SchoolsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_SchoolsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_SchoolsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SchoolsConstraint get constraint =>
      (_$data['constraint'] as Enum_SchoolsConstraint);

  List<Enum_SchoolsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_SchoolsUpdateColumn>?);

  Input_SchoolsBoolExp? get where => (_$data['where'] as Input_SchoolsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_SchoolsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_SchoolsUpdateColumn>)
              .map((e) => toJson_Enum_SchoolsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_SchoolsOnConflict<Input_SchoolsOnConflict> get copyWith =>
      CopyWith_Input_SchoolsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_SchoolsOnConflict<TRes> {
  factory CopyWith_Input_SchoolsOnConflict(
    Input_SchoolsOnConflict instance,
    TRes Function(Input_SchoolsOnConflict) then,
  ) = _CopyWithImpl_Input_SchoolsOnConflict;

  factory CopyWith_Input_SchoolsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsOnConflict;

  TRes call({
    Enum_SchoolsConstraint? constraint,
    List<Enum_SchoolsUpdateColumn>? updateColumns,
    Input_SchoolsBoolExp? where,
  });
  CopyWith_Input_SchoolsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_SchoolsOnConflict<TRes>
    implements CopyWith_Input_SchoolsOnConflict<TRes> {
  _CopyWithImpl_Input_SchoolsOnConflict(this._instance, this._then);

  final Input_SchoolsOnConflict _instance;

  final TRes Function(Input_SchoolsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_SchoolsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_SchoolsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_SchoolsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_SchoolsBoolExp?),
    }),
  );

  CopyWith_Input_SchoolsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_SchoolsBoolExp.stub(_then(_instance))
        : CopyWith_Input_SchoolsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_SchoolsOnConflict<TRes>
    implements CopyWith_Input_SchoolsOnConflict<TRes> {
  _CopyWithStubImpl_Input_SchoolsOnConflict(this._res);

  TRes _res;

  call({
    Enum_SchoolsConstraint? constraint,
    List<Enum_SchoolsUpdateColumn>? updateColumns,
    Input_SchoolsBoolExp? where,
  }) => _res;

  CopyWith_Input_SchoolsBoolExp<TRes> get where =>
      CopyWith_Input_SchoolsBoolExp.stub(_res);
}

class Input_SchoolsOrderBy {
  factory Input_SchoolsOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_SchoolsOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_SchoolsOrderBy._(this._$data);

  factory Input_SchoolsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_SchoolsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_SchoolsOrderBy<Input_SchoolsOrderBy> get copyWith =>
      CopyWith_Input_SchoolsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsOrderBy || runtimeType != other.runtimeType) {
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
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}
