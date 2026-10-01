// Part 62 of the schema
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

class Input_UsersFcmTokensAggregateOrderBy {
  factory Input_UsersFcmTokensAggregateOrderBy({
    Enum_OrderBy? count,
    Input_UsersFcmTokensMaxOrderBy? max,
    Input_UsersFcmTokensMinOrderBy? min,
  }) => Input_UsersFcmTokensAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_UsersFcmTokensAggregateOrderBy._(this._$data);

  factory Input_UsersFcmTokensAggregateOrderBy.fromJson(
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
          : Input_UsersFcmTokensMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_UsersFcmTokensMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_UsersFcmTokensAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_UsersFcmTokensMaxOrderBy? get max =>
      (_$data['max'] as Input_UsersFcmTokensMaxOrderBy?);

  Input_UsersFcmTokensMinOrderBy? get min =>
      (_$data['min'] as Input_UsersFcmTokensMinOrderBy?);

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

  CopyWith_Input_UsersFcmTokensAggregateOrderBy<
    Input_UsersFcmTokensAggregateOrderBy
  >
  get copyWith => CopyWith_Input_UsersFcmTokensAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensAggregateOrderBy ||
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

abstract class CopyWith_Input_UsersFcmTokensAggregateOrderBy<TRes> {
  factory CopyWith_Input_UsersFcmTokensAggregateOrderBy(
    Input_UsersFcmTokensAggregateOrderBy instance,
    TRes Function(Input_UsersFcmTokensAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensAggregateOrderBy;

  factory CopyWith_Input_UsersFcmTokensAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_UsersFcmTokensMaxOrderBy? max,
    Input_UsersFcmTokensMinOrderBy? min,
  });
  CopyWith_Input_UsersFcmTokensMaxOrderBy<TRes> get max;
  CopyWith_Input_UsersFcmTokensMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_UsersFcmTokensAggregateOrderBy<TRes>
    implements CopyWith_Input_UsersFcmTokensAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_UsersFcmTokensAggregateOrderBy _instance;

  final TRes Function(Input_UsersFcmTokensAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_UsersFcmTokensAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_UsersFcmTokensMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_UsersFcmTokensMinOrderBy?),
    }),
  );

  CopyWith_Input_UsersFcmTokensMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_UsersFcmTokensMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_UsersFcmTokensMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_UsersFcmTokensMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_UsersFcmTokensMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_UsersFcmTokensMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_UsersFcmTokensAggregateOrderBy<TRes>
    implements CopyWith_Input_UsersFcmTokensAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_UsersFcmTokensMaxOrderBy? max,
    Input_UsersFcmTokensMinOrderBy? min,
  }) => _res;

  CopyWith_Input_UsersFcmTokensMaxOrderBy<TRes> get max =>
      CopyWith_Input_UsersFcmTokensMaxOrderBy.stub(_res);

  CopyWith_Input_UsersFcmTokensMinOrderBy<TRes> get min =>
      CopyWith_Input_UsersFcmTokensMinOrderBy.stub(_res);
}

class Input_UsersFcmTokensArrRelInsertInput {
  factory Input_UsersFcmTokensArrRelInsertInput({
    required List<Input_UsersFcmTokensInsertInput> data,
    Input_UsersFcmTokensOnConflict? onConflict,
  }) => Input_UsersFcmTokensArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_UsersFcmTokensArrRelInsertInput._(this._$data);

  factory Input_UsersFcmTokensArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_UsersFcmTokensInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_UsersFcmTokensOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_UsersFcmTokensArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_UsersFcmTokensInsertInput> get data =>
      (_$data['data'] as List<Input_UsersFcmTokensInsertInput>);

  Input_UsersFcmTokensOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_UsersFcmTokensOnConflict?);

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

  CopyWith_Input_UsersFcmTokensArrRelInsertInput<
    Input_UsersFcmTokensArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_UsersFcmTokensArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensArrRelInsertInput ||
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

abstract class CopyWith_Input_UsersFcmTokensArrRelInsertInput<TRes> {
  factory CopyWith_Input_UsersFcmTokensArrRelInsertInput(
    Input_UsersFcmTokensArrRelInsertInput instance,
    TRes Function(Input_UsersFcmTokensArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensArrRelInsertInput;

  factory CopyWith_Input_UsersFcmTokensArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensArrRelInsertInput;

  TRes call({
    List<Input_UsersFcmTokensInsertInput>? data,
    Input_UsersFcmTokensOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_UsersFcmTokensInsertInput> Function(
      Iterable<
        CopyWith_Input_UsersFcmTokensInsertInput<
          Input_UsersFcmTokensInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_UsersFcmTokensOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_UsersFcmTokensArrRelInsertInput<TRes>
    implements CopyWith_Input_UsersFcmTokensArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_UsersFcmTokensArrRelInsertInput _instance;

  final TRes Function(Input_UsersFcmTokensArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_UsersFcmTokensArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_UsersFcmTokensInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_UsersFcmTokensOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_UsersFcmTokensInsertInput> Function(
      Iterable<
        CopyWith_Input_UsersFcmTokensInsertInput<
          Input_UsersFcmTokensInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_UsersFcmTokensInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_UsersFcmTokensOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_UsersFcmTokensOnConflict.stub(_then(_instance))
        : CopyWith_Input_UsersFcmTokensOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_UsersFcmTokensArrRelInsertInput<TRes>
    implements CopyWith_Input_UsersFcmTokensArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_UsersFcmTokensInsertInput>? data,
    Input_UsersFcmTokensOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_UsersFcmTokensOnConflict<TRes> get onConflict =>
      CopyWith_Input_UsersFcmTokensOnConflict.stub(_res);
}

class Input_UsersFcmTokensBoolExp {
  factory Input_UsersFcmTokensBoolExp({
    List<Input_UsersFcmTokensBoolExp>? $_and,
    Input_UsersFcmTokensBoolExp? $_not,
    List<Input_UsersFcmTokensBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_StringComparisonExp? token,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_UsersFcmTokensBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (createdAt != null) r'createdAt': createdAt,
    if (token != null) r'token': token,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
  });

  Input_UsersFcmTokensBoolExp._(this._$data);

  factory Input_UsersFcmTokensBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_UsersFcmTokensBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_UsersFcmTokensBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_UsersFcmTokensBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = l$token == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$token as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_UsersFcmTokensBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_UsersFcmTokensBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_UsersFcmTokensBoolExp>?);

  Input_UsersFcmTokensBoolExp? get $_not =>
      (_$data['_not'] as Input_UsersFcmTokensBoolExp?);

  List<Input_UsersFcmTokensBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_UsersFcmTokensBoolExp>?);

  Input_TimestamptzComparisonExp? get createdAt =>
      (_$data['createdAt'] as Input_TimestamptzComparisonExp?);

  Input_StringComparisonExp? get token =>
      (_$data['token'] as Input_StringComparisonExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UsersFcmTokensBoolExp<Input_UsersFcmTokensBoolExp>
  get copyWith => CopyWith_Input_UsersFcmTokensBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensBoolExp ||
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
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
    final l$createdAt = createdAt;
    final l$token = token;
    final l$uid = uid;
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
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersFcmTokensBoolExp<TRes> {
  factory CopyWith_Input_UsersFcmTokensBoolExp(
    Input_UsersFcmTokensBoolExp instance,
    TRes Function(Input_UsersFcmTokensBoolExp) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensBoolExp;

  factory CopyWith_Input_UsersFcmTokensBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensBoolExp;

  TRes call({
    List<Input_UsersFcmTokensBoolExp>? $_and,
    Input_UsersFcmTokensBoolExp? $_not,
    List<Input_UsersFcmTokensBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_StringComparisonExp? token,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_UsersFcmTokensBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersFcmTokensBoolExp<Input_UsersFcmTokensBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_UsersFcmTokensBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_UsersFcmTokensBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersFcmTokensBoolExp<Input_UsersFcmTokensBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt;
  CopyWith_Input_StringComparisonExp<TRes> get token;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_UsersFcmTokensBoolExp<TRes>
    implements CopyWith_Input_UsersFcmTokensBoolExp<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensBoolExp(this._instance, this._then);

  final Input_UsersFcmTokensBoolExp _instance;

  final TRes Function(Input_UsersFcmTokensBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? createdAt = _undefined,
    Object? token = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_UsersFcmTokensBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_UsersFcmTokensBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_UsersFcmTokensBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_UsersFcmTokensBoolExp>?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input_TimestamptzComparisonExp?),
      if (token != _undefined) 'token': (token as Input_StringComparisonExp?),
      if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_UsersFcmTokensBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersFcmTokensBoolExp<Input_UsersFcmTokensBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_UsersFcmTokensBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UsersFcmTokensBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_UsersFcmTokensBoolExp.stub(_then(_instance))
        : CopyWith_Input_UsersFcmTokensBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_UsersFcmTokensBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersFcmTokensBoolExp<Input_UsersFcmTokensBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_UsersFcmTokensBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get token {
    final local$token = _instance.token;
    return local$token == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$token,
            (e) => call(token: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_UsersFcmTokensBoolExp<TRes>
    implements CopyWith_Input_UsersFcmTokensBoolExp<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensBoolExp(this._res);

  TRes _res;

  call({
    List<Input_UsersFcmTokensBoolExp>? $_and,
    Input_UsersFcmTokensBoolExp? $_not,
    List<Input_UsersFcmTokensBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_StringComparisonExp? token,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_UsersFcmTokensBoolExp<TRes> get $_not =>
      CopyWith_Input_UsersFcmTokensBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get token =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_UsersFcmTokensInsertInput {
  factory Input_UsersFcmTokensInsertInput({
    String? token,
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
  }) => Input_UsersFcmTokensInsertInput._({
    if (token != null) r'token': token,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
  });

  Input_UsersFcmTokensInsertInput._(this._$data);

  factory Input_UsersFcmTokensInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = (l$token as String?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_UsersFcmTokensInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get token => (_$data['token'] as String?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Input_AuthUsersDataObjRelInsertInput? get user =>
      (_$data['user'] as Input_AuthUsersDataObjRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UsersFcmTokensInsertInput<Input_UsersFcmTokensInsertInput>
  get copyWith => CopyWith_Input_UsersFcmTokensInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
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
    final l$token = token;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersFcmTokensInsertInput<TRes> {
  factory CopyWith_Input_UsersFcmTokensInsertInput(
    Input_UsersFcmTokensInsertInput instance,
    TRes Function(Input_UsersFcmTokensInsertInput) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensInsertInput;

  factory CopyWith_Input_UsersFcmTokensInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensInsertInput;

  TRes call({
    String? token,
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
  });
  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user;
}

class _CopyWithImpl_Input_UsersFcmTokensInsertInput<TRes>
    implements CopyWith_Input_UsersFcmTokensInsertInput<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensInsertInput(this._instance, this._then);

  final Input_UsersFcmTokensInsertInput _instance;

  final TRes Function(Input_UsersFcmTokensInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_UsersFcmTokensInsertInput._({
      ..._instance._$data,
      if (token != _undefined) 'token': (token as String?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
      if (user != _undefined)
        'user': (user as Input_AuthUsersDataObjRelInsertInput?),
    }),
  );

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataObjRelInsertInput(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl_Input_UsersFcmTokensInsertInput<TRes>
    implements CopyWith_Input_UsersFcmTokensInsertInput<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensInsertInput(this._res);

  TRes _res;

  call({
    String? token,
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
  }) => _res;

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user =>
      CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_res);
}

class Input_UsersFcmTokensMaxOrderBy {
  factory Input_UsersFcmTokensMaxOrderBy({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? token,
    Enum_OrderBy? uid,
  }) => Input_UsersFcmTokensMaxOrderBy._({
    if (createdAt != null) r'createdAt': createdAt,
    if (token != null) r'token': token,
    if (uid != null) r'uid': uid,
  });

  Input_UsersFcmTokensMaxOrderBy._(this._$data);

  factory Input_UsersFcmTokensMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = l$token == null
          ? null
          : fromJson_Enum_OrderBy((l$token as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_UsersFcmTokensMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get token => (_$data['token'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token == null
          ? null
          : toJson_Enum_OrderBy(l$token);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_UsersFcmTokensMaxOrderBy<Input_UsersFcmTokensMaxOrderBy>
  get copyWith => CopyWith_Input_UsersFcmTokensMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$token = token;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersFcmTokensMaxOrderBy<TRes> {
  factory CopyWith_Input_UsersFcmTokensMaxOrderBy(
    Input_UsersFcmTokensMaxOrderBy instance,
    TRes Function(Input_UsersFcmTokensMaxOrderBy) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensMaxOrderBy;

  factory CopyWith_Input_UsersFcmTokensMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensMaxOrderBy;

  TRes call({Enum_OrderBy? createdAt, Enum_OrderBy? token, Enum_OrderBy? uid});
}

class _CopyWithImpl_Input_UsersFcmTokensMaxOrderBy<TRes>
    implements CopyWith_Input_UsersFcmTokensMaxOrderBy<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensMaxOrderBy(this._instance, this._then);

  final Input_UsersFcmTokensMaxOrderBy _instance;

  final TRes Function(Input_UsersFcmTokensMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? token = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_UsersFcmTokensMaxOrderBy._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as Enum_OrderBy?),
      if (token != _undefined) 'token': (token as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersFcmTokensMaxOrderBy<TRes>
    implements CopyWith_Input_UsersFcmTokensMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? createdAt, Enum_OrderBy? token, Enum_OrderBy? uid}) =>
      _res;
}

class Input_UsersFcmTokensMinOrderBy {
  factory Input_UsersFcmTokensMinOrderBy({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? token,
    Enum_OrderBy? uid,
  }) => Input_UsersFcmTokensMinOrderBy._({
    if (createdAt != null) r'createdAt': createdAt,
    if (token != null) r'token': token,
    if (uid != null) r'uid': uid,
  });

  Input_UsersFcmTokensMinOrderBy._(this._$data);

  factory Input_UsersFcmTokensMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = l$token == null
          ? null
          : fromJson_Enum_OrderBy((l$token as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_UsersFcmTokensMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get token => (_$data['token'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token == null
          ? null
          : toJson_Enum_OrderBy(l$token);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_UsersFcmTokensMinOrderBy<Input_UsersFcmTokensMinOrderBy>
  get copyWith => CopyWith_Input_UsersFcmTokensMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$token = token;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}
