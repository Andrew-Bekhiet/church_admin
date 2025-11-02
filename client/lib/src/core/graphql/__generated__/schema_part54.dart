// Part 54 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_UniversitiesInsertInput<TRes> {
  factory CopyWith_Input_UniversitiesInsertInput(
    Input_UniversitiesInsertInput instance,
    TRes Function(Input_UniversitiesInsertInput) then,
  ) = _CopyWithImpl_Input_UniversitiesInsertInput;

  factory CopyWith_Input_UniversitiesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesInsertInput;

  TRes call({Input_CollegesArrRelInsertInput? colleges, String? name});
  CopyWith_Input_CollegesArrRelInsertInput<TRes> get colleges;
}

class _CopyWithImpl_Input_UniversitiesInsertInput<TRes>
    implements CopyWith_Input_UniversitiesInsertInput<TRes> {
  _CopyWithImpl_Input_UniversitiesInsertInput(this._instance, this._then);

  final Input_UniversitiesInsertInput _instance;

  final TRes Function(Input_UniversitiesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? colleges = _undefined, Object? name = _undefined}) =>
      _then(
        Input_UniversitiesInsertInput._({
          ..._instance._$data,
          if (colleges != _undefined)
            'colleges': (colleges as Input_CollegesArrRelInsertInput?),
          if (name != _undefined) 'name': (name as String?),
        }),
      );

  CopyWith_Input_CollegesArrRelInsertInput<TRes> get colleges {
    final local$colleges = _instance.colleges;
    return local$colleges == null
        ? CopyWith_Input_CollegesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_CollegesArrRelInsertInput(
            local$colleges,
            (e) => call(colleges: e),
          );
  }
}

class _CopyWithStubImpl_Input_UniversitiesInsertInput<TRes>
    implements CopyWith_Input_UniversitiesInsertInput<TRes> {
  _CopyWithStubImpl_Input_UniversitiesInsertInput(this._res);

  TRes _res;

  call({Input_CollegesArrRelInsertInput? colleges, String? name}) => _res;

  CopyWith_Input_CollegesArrRelInsertInput<TRes> get colleges =>
      CopyWith_Input_CollegesArrRelInsertInput.stub(_res);
}

class Input_UniversitiesObjRelInsertInput {
  factory Input_UniversitiesObjRelInsertInput({
    required Input_UniversitiesInsertInput data,
    Input_UniversitiesOnConflict? onConflict,
  }) => Input_UniversitiesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_UniversitiesObjRelInsertInput._(this._$data);

  factory Input_UniversitiesObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_UniversitiesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_UniversitiesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_UniversitiesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UniversitiesInsertInput get data =>
      (_$data['data'] as Input_UniversitiesInsertInput);

  Input_UniversitiesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_UniversitiesOnConflict?);

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

  CopyWith_Input_UniversitiesObjRelInsertInput<
    Input_UniversitiesObjRelInsertInput
  >
  get copyWith => CopyWith_Input_UniversitiesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesObjRelInsertInput ||
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

abstract class CopyWith_Input_UniversitiesObjRelInsertInput<TRes> {
  factory CopyWith_Input_UniversitiesObjRelInsertInput(
    Input_UniversitiesObjRelInsertInput instance,
    TRes Function(Input_UniversitiesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_UniversitiesObjRelInsertInput;

  factory CopyWith_Input_UniversitiesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesObjRelInsertInput;

  TRes call({
    Input_UniversitiesInsertInput? data,
    Input_UniversitiesOnConflict? onConflict,
  });
  CopyWith_Input_UniversitiesInsertInput<TRes> get data;
  CopyWith_Input_UniversitiesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_UniversitiesObjRelInsertInput<TRes>
    implements CopyWith_Input_UniversitiesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_UniversitiesObjRelInsertInput(this._instance, this._then);

  final Input_UniversitiesObjRelInsertInput _instance;

  final TRes Function(Input_UniversitiesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_UniversitiesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_UniversitiesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_UniversitiesOnConflict?),
        }),
      );

  CopyWith_Input_UniversitiesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_UniversitiesInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_UniversitiesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_UniversitiesOnConflict.stub(_then(_instance))
        : CopyWith_Input_UniversitiesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_UniversitiesObjRelInsertInput<TRes>
    implements CopyWith_Input_UniversitiesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_UniversitiesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_UniversitiesInsertInput? data,
    Input_UniversitiesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_UniversitiesInsertInput<TRes> get data =>
      CopyWith_Input_UniversitiesInsertInput.stub(_res);

  CopyWith_Input_UniversitiesOnConflict<TRes> get onConflict =>
      CopyWith_Input_UniversitiesOnConflict.stub(_res);
}

class Input_UniversitiesOnConflict {
  factory Input_UniversitiesOnConflict({
    required Enum_UniversitiesConstraint constraint,
    List<Enum_UniversitiesUpdateColumn>? updateColumns,
    Input_UniversitiesBoolExp? where,
  }) => Input_UniversitiesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_UniversitiesOnConflict._(this._$data);

  factory Input_UniversitiesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_UniversitiesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_UniversitiesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_UniversitiesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_UniversitiesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_UniversitiesConstraint get constraint =>
      (_$data['constraint'] as Enum_UniversitiesConstraint);

  List<Enum_UniversitiesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_UniversitiesUpdateColumn>?);

  Input_UniversitiesBoolExp? get where =>
      (_$data['where'] as Input_UniversitiesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_UniversitiesConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_UniversitiesUpdateColumn>)
              .map((e) => toJson_Enum_UniversitiesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UniversitiesOnConflict<Input_UniversitiesOnConflict>
  get copyWith => CopyWith_Input_UniversitiesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesOnConflict ||
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

abstract class CopyWith_Input_UniversitiesOnConflict<TRes> {
  factory CopyWith_Input_UniversitiesOnConflict(
    Input_UniversitiesOnConflict instance,
    TRes Function(Input_UniversitiesOnConflict) then,
  ) = _CopyWithImpl_Input_UniversitiesOnConflict;

  factory CopyWith_Input_UniversitiesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesOnConflict;

  TRes call({
    Enum_UniversitiesConstraint? constraint,
    List<Enum_UniversitiesUpdateColumn>? updateColumns,
    Input_UniversitiesBoolExp? where,
  });
  CopyWith_Input_UniversitiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_UniversitiesOnConflict<TRes>
    implements CopyWith_Input_UniversitiesOnConflict<TRes> {
  _CopyWithImpl_Input_UniversitiesOnConflict(this._instance, this._then);

  final Input_UniversitiesOnConflict _instance;

  final TRes Function(Input_UniversitiesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_UniversitiesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_UniversitiesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_UniversitiesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_UniversitiesBoolExp?),
    }),
  );

  CopyWith_Input_UniversitiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_UniversitiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_UniversitiesBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_UniversitiesOnConflict<TRes>
    implements CopyWith_Input_UniversitiesOnConflict<TRes> {
  _CopyWithStubImpl_Input_UniversitiesOnConflict(this._res);

  TRes _res;

  call({
    Enum_UniversitiesConstraint? constraint,
    List<Enum_UniversitiesUpdateColumn>? updateColumns,
    Input_UniversitiesBoolExp? where,
  }) => _res;

  CopyWith_Input_UniversitiesBoolExp<TRes> get where =>
      CopyWith_Input_UniversitiesBoolExp.stub(_res);
}

class Input_UniversitiesOrderBy {
  factory Input_UniversitiesOrderBy({
    Input_CollegesAggregateOrderBy? collegesAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  }) => Input_UniversitiesOrderBy._({
    if (collegesAggregate != null) r'collegesAggregate': collegesAggregate,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_UniversitiesOrderBy._(this._$data);

  factory Input_UniversitiesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('collegesAggregate')) {
      final l$collegesAggregate = data['collegesAggregate'];
      result$data['collegesAggregate'] = l$collegesAggregate == null
          ? null
          : Input_CollegesAggregateOrderBy.fromJson(
              (l$collegesAggregate as Map<String, dynamic>),
            );
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
    return Input_UniversitiesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesAggregateOrderBy? get collegesAggregate =>
      (_$data['collegesAggregate'] as Input_CollegesAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('collegesAggregate')) {
      final l$collegesAggregate = collegesAggregate;
      result$data['collegesAggregate'] = l$collegesAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    return result$data;
  }

  CopyWith_Input_UniversitiesOrderBy<Input_UniversitiesOrderBy> get copyWith =>
      CopyWith_Input_UniversitiesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$collegesAggregate = collegesAggregate;
    final lOther$collegesAggregate = other.collegesAggregate;
    if (_$data.containsKey('collegesAggregate') !=
        other._$data.containsKey('collegesAggregate')) {
      return false;
    }
    if (l$collegesAggregate != lOther$collegesAggregate) {
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
    final l$collegesAggregate = collegesAggregate;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('collegesAggregate') ? l$collegesAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_UniversitiesOrderBy<TRes> {
  factory CopyWith_Input_UniversitiesOrderBy(
    Input_UniversitiesOrderBy instance,
    TRes Function(Input_UniversitiesOrderBy) then,
  ) = _CopyWithImpl_Input_UniversitiesOrderBy;

  factory CopyWith_Input_UniversitiesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesOrderBy;

  TRes call({
    Input_CollegesAggregateOrderBy? collegesAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  });
  CopyWith_Input_CollegesAggregateOrderBy<TRes> get collegesAggregate;
}

class _CopyWithImpl_Input_UniversitiesOrderBy<TRes>
    implements CopyWith_Input_UniversitiesOrderBy<TRes> {
  _CopyWithImpl_Input_UniversitiesOrderBy(this._instance, this._then);

  final Input_UniversitiesOrderBy _instance;

  final TRes Function(Input_UniversitiesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? collegesAggregate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_UniversitiesOrderBy._({
      ..._instance._$data,
      if (collegesAggregate != _undefined)
        'collegesAggregate':
            (collegesAggregate as Input_CollegesAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_CollegesAggregateOrderBy<TRes> get collegesAggregate {
    final local$collegesAggregate = _instance.collegesAggregate;
    return local$collegesAggregate == null
        ? CopyWith_Input_CollegesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_CollegesAggregateOrderBy(
            local$collegesAggregate,
            (e) => call(collegesAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_UniversitiesOrderBy<TRes>
    implements CopyWith_Input_UniversitiesOrderBy<TRes> {
  _CopyWithStubImpl_Input_UniversitiesOrderBy(this._res);

  TRes _res;

  call({
    Input_CollegesAggregateOrderBy? collegesAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  }) => _res;

  CopyWith_Input_CollegesAggregateOrderBy<TRes> get collegesAggregate =>
      CopyWith_Input_CollegesAggregateOrderBy.stub(_res);
}

class Input_UniversitiesPkColumnsInput {
  factory Input_UniversitiesPkColumnsInput({required UuidValue id}) =>
      Input_UniversitiesPkColumnsInput._({r'id': id});

  Input_UniversitiesPkColumnsInput._(this._$data);

  factory Input_UniversitiesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_UniversitiesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_UniversitiesPkColumnsInput<Input_UniversitiesPkColumnsInput>
  get copyWith => CopyWith_Input_UniversitiesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesPkColumnsInput ||
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

abstract class CopyWith_Input_UniversitiesPkColumnsInput<TRes> {
  factory CopyWith_Input_UniversitiesPkColumnsInput(
    Input_UniversitiesPkColumnsInput instance,
    TRes Function(Input_UniversitiesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_UniversitiesPkColumnsInput;

  factory CopyWith_Input_UniversitiesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_UniversitiesPkColumnsInput<TRes>
    implements CopyWith_Input_UniversitiesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_UniversitiesPkColumnsInput(this._instance, this._then);

  final Input_UniversitiesPkColumnsInput _instance;

  final TRes Function(Input_UniversitiesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_UniversitiesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_UniversitiesPkColumnsInput<TRes>
    implements CopyWith_Input_UniversitiesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_UniversitiesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_UniversitiesSetInput {
  factory Input_UniversitiesSetInput({String? name}) =>
      Input_UniversitiesSetInput._({if (name != null) r'name': name});

  Input_UniversitiesSetInput._(this._$data);

  factory Input_UniversitiesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_UniversitiesSetInput._(result$data);
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

  CopyWith_Input_UniversitiesSetInput<Input_UniversitiesSetInput>
  get copyWith => CopyWith_Input_UniversitiesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesSetInput ||
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

abstract class CopyWith_Input_UniversitiesSetInput<TRes> {
  factory CopyWith_Input_UniversitiesSetInput(
    Input_UniversitiesSetInput instance,
    TRes Function(Input_UniversitiesSetInput) then,
  ) = _CopyWithImpl_Input_UniversitiesSetInput;

  factory CopyWith_Input_UniversitiesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_UniversitiesSetInput<TRes>
    implements CopyWith_Input_UniversitiesSetInput<TRes> {
  _CopyWithImpl_Input_UniversitiesSetInput(this._instance, this._then);

  final Input_UniversitiesSetInput _instance;

  final TRes Function(Input_UniversitiesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_UniversitiesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UniversitiesSetInput<TRes>
    implements CopyWith_Input_UniversitiesSetInput<TRes> {
  _CopyWithStubImpl_Input_UniversitiesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_UniversitiesStreamCursorInput {
  factory Input_UniversitiesStreamCursorInput({
    required Input_UniversitiesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_UniversitiesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_UniversitiesStreamCursorInput._(this._$data);

  factory Input_UniversitiesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_UniversitiesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_UniversitiesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UniversitiesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_UniversitiesStreamCursorValueInput);

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

  CopyWith_Input_UniversitiesStreamCursorInput<
    Input_UniversitiesStreamCursorInput
  >
  get copyWith => CopyWith_Input_UniversitiesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesStreamCursorInput ||
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

abstract class CopyWith_Input_UniversitiesStreamCursorInput<TRes> {
  factory CopyWith_Input_UniversitiesStreamCursorInput(
    Input_UniversitiesStreamCursorInput instance,
    TRes Function(Input_UniversitiesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_UniversitiesStreamCursorInput;

  factory CopyWith_Input_UniversitiesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesStreamCursorInput;

  TRes call({
    Input_UniversitiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_UniversitiesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_UniversitiesStreamCursorInput<TRes>
    implements CopyWith_Input_UniversitiesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_UniversitiesStreamCursorInput(this._instance, this._then);

  final Input_UniversitiesStreamCursorInput _instance;

  final TRes Function(Input_UniversitiesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_UniversitiesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_UniversitiesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_UniversitiesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_UniversitiesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_UniversitiesStreamCursorInput<TRes>
    implements CopyWith_Input_UniversitiesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_UniversitiesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_UniversitiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_UniversitiesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_UniversitiesStreamCursorValueInput.stub(_res);
}

class Input_UniversitiesStreamCursorValueInput {
  factory Input_UniversitiesStreamCursorValueInput({
    UuidValue? id,
    String? name,
  }) => Input_UniversitiesStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_UniversitiesStreamCursorValueInput._(this._$data);

  factory Input_UniversitiesStreamCursorValueInput.fromJson(
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
    return Input_UniversitiesStreamCursorValueInput._(result$data);
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

  CopyWith_Input_UniversitiesStreamCursorValueInput<
    Input_UniversitiesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_UniversitiesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesStreamCursorValueInput ||
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

abstract class CopyWith_Input_UniversitiesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_UniversitiesStreamCursorValueInput(
    Input_UniversitiesStreamCursorValueInput instance,
    TRes Function(Input_UniversitiesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_UniversitiesStreamCursorValueInput;

  factory CopyWith_Input_UniversitiesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_UniversitiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_UniversitiesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_UniversitiesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_UniversitiesStreamCursorValueInput _instance;

  final TRes Function(Input_UniversitiesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_UniversitiesStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UniversitiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_UniversitiesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_UniversitiesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_UniversitiesUpdates {
  factory Input_UniversitiesUpdates({
    Input_UniversitiesSetInput? $_set,
    required Input_UniversitiesBoolExp where,
  }) => Input_UniversitiesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_UniversitiesUpdates._(this._$data);

  factory Input_UniversitiesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_UniversitiesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_UniversitiesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_UniversitiesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UniversitiesSetInput? get $_set =>
      (_$data['_set'] as Input_UniversitiesSetInput?);

  Input_UniversitiesBoolExp get where =>
      (_$data['where'] as Input_UniversitiesBoolExp);

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

  CopyWith_Input_UniversitiesUpdates<Input_UniversitiesUpdates> get copyWith =>
      CopyWith_Input_UniversitiesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesUpdates ||
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

abstract class CopyWith_Input_UniversitiesUpdates<TRes> {
  factory CopyWith_Input_UniversitiesUpdates(
    Input_UniversitiesUpdates instance,
    TRes Function(Input_UniversitiesUpdates) then,
  ) = _CopyWithImpl_Input_UniversitiesUpdates;

  factory CopyWith_Input_UniversitiesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesUpdates;

  TRes call({
    Input_UniversitiesSetInput? $_set,
    Input_UniversitiesBoolExp? where,
  });
  CopyWith_Input_UniversitiesSetInput<TRes> get $_set;
  CopyWith_Input_UniversitiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_UniversitiesUpdates<TRes>
    implements CopyWith_Input_UniversitiesUpdates<TRes> {
  _CopyWithImpl_Input_UniversitiesUpdates(this._instance, this._then);

  final Input_UniversitiesUpdates _instance;

  final TRes Function(Input_UniversitiesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_UniversitiesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_UniversitiesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_UniversitiesBoolExp),
    }),
  );

  CopyWith_Input_UniversitiesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_UniversitiesSetInput.stub(_then(_instance))
        : CopyWith_Input_UniversitiesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_UniversitiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_UniversitiesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_UniversitiesUpdates<TRes>
    implements CopyWith_Input_UniversitiesUpdates<TRes> {
  _CopyWithStubImpl_Input_UniversitiesUpdates(this._res);

  TRes _res;

  call({Input_UniversitiesSetInput? $_set, Input_UniversitiesBoolExp? where}) =>
      _res;

  CopyWith_Input_UniversitiesSetInput<TRes> get $_set =>
      CopyWith_Input_UniversitiesSetInput.stub(_res);

  CopyWith_Input_UniversitiesBoolExp<TRes> get where =>
      CopyWith_Input_UniversitiesBoolExp.stub(_res);
}

class Input_UuidComparisonExp {
  factory Input_UuidComparisonExp({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  }) => Input_UuidComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
  });

  Input_UuidComparisonExp._(this._$data);

  factory Input_UuidComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : stringToUuid(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : stringToUuid(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null ? null : stringToUuid(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : stringToUuid(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null ? null : stringToUuid(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null ? null : stringToUuid(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    return Input_UuidComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get $_eq => (_$data['_eq'] as UuidValue?);

  UuidValue? get $_gt => (_$data['_gt'] as UuidValue?);

  UuidValue? get $_gte => (_$data['_gte'] as UuidValue?);

  List<UuidValue>? get $_in => (_$data['_in'] as List<UuidValue>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  UuidValue? get $_lt => (_$data['_lt'] as UuidValue?);

  UuidValue? get $_lte => (_$data['_lte'] as UuidValue?);

  UuidValue? get $_neq => (_$data['_neq'] as UuidValue?);

  List<UuidValue>? get $_nin => (_$data['_nin'] as List<UuidValue>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : uuidToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : uuidToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : uuidToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : uuidToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : uuidToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : uuidToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => uuidToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_UuidComparisonExp<Input_UuidComparisonExp> get copyWith =>
      CopyWith_Input_UuidComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UuidComparisonExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_isNull = $_isNull;
    final lOther$$_isNull = other.$_isNull;
    if (_$data.containsKey('_isNull') != other._$data.containsKey('_isNull')) {
      return false;
    }
    if (l$$_isNull != lOther$$_isNull) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UuidComparisonExp<TRes> {
  factory CopyWith_Input_UuidComparisonExp(
    Input_UuidComparisonExp instance,
    TRes Function(Input_UuidComparisonExp) then,
  ) = _CopyWithImpl_Input_UuidComparisonExp;

  factory CopyWith_Input_UuidComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_UuidComparisonExp;

  TRes call({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  });
}

class _CopyWithImpl_Input_UuidComparisonExp<TRes>
    implements CopyWith_Input_UuidComparisonExp<TRes> {
  _CopyWithImpl_Input_UuidComparisonExp(this._instance, this._then);

  final Input_UuidComparisonExp _instance;

  final TRes Function(Input_UuidComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) => _then(
    Input_UuidComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as UuidValue?),
      if ($_gt != _undefined) '_gt': ($_gt as UuidValue?),
      if ($_gte != _undefined) '_gte': ($_gte as UuidValue?),
      if ($_in != _undefined) '_in': ($_in as List<UuidValue>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as UuidValue?),
      if ($_lte != _undefined) '_lte': ($_lte as UuidValue?),
      if ($_neq != _undefined) '_neq': ($_neq as UuidValue?),
      if ($_nin != _undefined) '_nin': ($_nin as List<UuidValue>?),
    }),
  );
}

class _CopyWithStubImpl_Input_UuidComparisonExp<TRes>
    implements CopyWith_Input_UuidComparisonExp<TRes> {
  _CopyWithStubImpl_Input_UuidComparisonExp(this._res);

  TRes _res;

  call({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  }) => _res;
}

class Input_classesAggregateBoolExpBool_and {
  factory Input_classesAggregateBoolExpBool_and({
    required Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_classesAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpBool_and._(this._$data);

  factory Input_classesAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpBool_and._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpBool_and<
    Input_classesAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_classesAggregateBoolExpBool_and(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpBool_and(
    Input_classesAggregateBoolExpBool_and instance,
    TRes Function(Input_classesAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpBool_and;

  factory CopyWith_Input_classesAggregateBoolExpBool_and.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and;

  TRes call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_classesAggregateBoolExpBool_and _instance;

  final TRes Function(Input_classesAggregateBoolExpBool_and) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and(this._res);

  TRes _res;

  call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_classesAggregateBoolExpBool_or {
  factory Input_classesAggregateBoolExpBool_or({
    required Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_classesAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpBool_or._(this._$data);

  factory Input_classesAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpBool_or<
    Input_classesAggregateBoolExpBool_or
  >
  get copyWith => CopyWith_Input_classesAggregateBoolExpBool_or(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpBool_or ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpBool_or(
    Input_classesAggregateBoolExpBool_or instance,
    TRes Function(Input_classesAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpBool_or;

  factory CopyWith_Input_classesAggregateBoolExpBool_or.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or;

  TRes call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_classesAggregateBoolExpBool_or _instance;

  final TRes Function(Input_classesAggregateBoolExpBool_or) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or(this._res);

  TRes _res;

  call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_classesAggregateBoolExpCount {
  factory Input_classesAggregateBoolExpCount({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_classesAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpCount._(this._$data);

  factory Input_classesAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_ClassesSelectColumn((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_ClassesSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_ClassesSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_ClassesSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpCount<
    Input_classesAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_classesAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpCount(
    Input_classesAggregateBoolExpCount instance,
    TRes Function(Input_classesAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpCount;

  factory CopyWith_Input_classesAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpCount;

  TRes call({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpCount(this._instance, this._then);

  final Input_classesAggregateBoolExpCount _instance;

  final TRes Function(Input_classesAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_ClassesSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_groupsAggregateBoolExpCount {
  factory Input_groupsAggregateBoolExpCount({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_groupsAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_groupsAggregateBoolExpCount._(this._$data);

  factory Input_groupsAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_GroupsSelectColumn((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_groupsAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_GroupsSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_GroupsSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_GroupsBoolExp? get filter => (_$data['filter'] as Input_GroupsBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_GroupsSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_groupsAggregateBoolExpCount<Input_groupsAggregateBoolExpCount>
  get copyWith => CopyWith_Input_groupsAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_groupsAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_groupsAggregateBoolExpCount(
    Input_groupsAggregateBoolExpCount instance,
    TRes Function(Input_groupsAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_groupsAggregateBoolExpCount;

  factory CopyWith_Input_groupsAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_groupsAggregateBoolExpCount;

  TRes call({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_GroupsBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_groupsAggregateBoolExpCount<TRes>
    implements CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_groupsAggregateBoolExpCount(this._instance, this._then);

  final Input_groupsAggregateBoolExpCount _instance;

  final TRes Function(Input_groupsAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_groupsAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_GroupsSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_GroupsBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_GroupsBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_groupsAggregateBoolExpCount<TRes>
    implements CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_groupsAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_GroupsBoolExp<TRes> get filter =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and {
  factory Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and({
    required Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryAttendanceDaysConstraintsBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and._(this._$data);

  factory Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceDaysConstraintsBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and<
    Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input_historyAttendanceDaysConstraintsAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}
