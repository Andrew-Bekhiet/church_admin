// Part 12 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ChurchesObjRelInsertInput<TRes> {
  factory CopyWith_Input_ChurchesObjRelInsertInput(
    Input_ChurchesObjRelInsertInput instance,
    TRes Function(Input_ChurchesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_ChurchesObjRelInsertInput;

  factory CopyWith_Input_ChurchesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesObjRelInsertInput;

  TRes call({
    Input_ChurchesInsertInput? data,
    Input_ChurchesOnConflict? onConflict,
  });
  CopyWith_Input_ChurchesInsertInput<TRes> get data;
  CopyWith_Input_ChurchesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_ChurchesObjRelInsertInput<TRes>
    implements CopyWith_Input_ChurchesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_ChurchesObjRelInsertInput(this._instance, this._then);

  final Input_ChurchesObjRelInsertInput _instance;

  final TRes Function(Input_ChurchesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_ChurchesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_ChurchesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_ChurchesOnConflict?),
        }),
      );

  CopyWith_Input_ChurchesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_ChurchesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_ChurchesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_ChurchesOnConflict.stub(_then(_instance))
        : CopyWith_Input_ChurchesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_ChurchesObjRelInsertInput<TRes>
    implements CopyWith_Input_ChurchesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_ChurchesInsertInput? data,
    Input_ChurchesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_ChurchesInsertInput<TRes> get data =>
      CopyWith_Input_ChurchesInsertInput.stub(_res);

  CopyWith_Input_ChurchesOnConflict<TRes> get onConflict =>
      CopyWith_Input_ChurchesOnConflict.stub(_res);
}

class Input_ChurchesOnConflict {
  factory Input_ChurchesOnConflict({
    required Enum_ChurchesConstraint constraint,
    List<Enum_ChurchesUpdateColumn>? updateColumns,
    Input_ChurchesBoolExp? where,
  }) => Input_ChurchesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_ChurchesOnConflict._(this._$data);

  factory Input_ChurchesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_ChurchesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_ChurchesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_ChurchesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_ChurchesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ChurchesConstraint get constraint =>
      (_$data['constraint'] as Enum_ChurchesConstraint);

  List<Enum_ChurchesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_ChurchesUpdateColumn>?);

  Input_ChurchesBoolExp? get where =>
      (_$data['where'] as Input_ChurchesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_ChurchesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_ChurchesUpdateColumn>)
              .map((e) => toJson_Enum_ChurchesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ChurchesOnConflict<Input_ChurchesOnConflict> get copyWith =>
      CopyWith_Input_ChurchesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesOnConflict ||
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

abstract class CopyWith_Input_ChurchesOnConflict<TRes> {
  factory CopyWith_Input_ChurchesOnConflict(
    Input_ChurchesOnConflict instance,
    TRes Function(Input_ChurchesOnConflict) then,
  ) = _CopyWithImpl_Input_ChurchesOnConflict;

  factory CopyWith_Input_ChurchesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesOnConflict;

  TRes call({
    Enum_ChurchesConstraint? constraint,
    List<Enum_ChurchesUpdateColumn>? updateColumns,
    Input_ChurchesBoolExp? where,
  });
  CopyWith_Input_ChurchesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ChurchesOnConflict<TRes>
    implements CopyWith_Input_ChurchesOnConflict<TRes> {
  _CopyWithImpl_Input_ChurchesOnConflict(this._instance, this._then);

  final Input_ChurchesOnConflict _instance;

  final TRes Function(Input_ChurchesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_ChurchesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_ChurchesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_ChurchesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_ChurchesBoolExp?),
    }),
  );

  CopyWith_Input_ChurchesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_ChurchesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ChurchesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ChurchesOnConflict<TRes>
    implements CopyWith_Input_ChurchesOnConflict<TRes> {
  _CopyWithStubImpl_Input_ChurchesOnConflict(this._res);

  TRes _res;

  call({
    Enum_ChurchesConstraint? constraint,
    List<Enum_ChurchesUpdateColumn>? updateColumns,
    Input_ChurchesBoolExp? where,
  }) => _res;

  CopyWith_Input_ChurchesBoolExp<TRes> get where =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);
}

class Input_ChurchesOrderBy {
  factory Input_ChurchesOrderBy({
    Input_FathersAggregateOrderBy? fathersAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_ChurchesOrderBy._({
    if (fathersAggregate != null) r'fathersAggregate': fathersAggregate,
    if (id != null) r'id': id,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_ChurchesOrderBy._(this._$data);

  factory Input_ChurchesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fathersAggregate')) {
      final l$fathersAggregate = data['fathersAggregate'];
      result$data['fathersAggregate'] = l$fathersAggregate == null
          ? null
          : Input_FathersAggregateOrderBy.fromJson(
              (l$fathersAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('isHidden')) {
      final l$isHidden = data['isHidden'];
      result$data['isHidden'] = l$isHidden == null
          ? null
          : fromJson_Enum_OrderBy((l$isHidden as String));
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
    return Input_ChurchesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FathersAggregateOrderBy? get fathersAggregate =>
      (_$data['fathersAggregate'] as Input_FathersAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get isHidden => (_$data['isHidden'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fathersAggregate')) {
      final l$fathersAggregate = fathersAggregate;
      result$data['fathersAggregate'] = l$fathersAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('isHidden')) {
      final l$isHidden = isHidden;
      result$data['isHidden'] = l$isHidden == null
          ? null
          : toJson_Enum_OrderBy(l$isHidden);
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

  CopyWith_Input_ChurchesOrderBy<Input_ChurchesOrderBy> get copyWith =>
      CopyWith_Input_ChurchesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fathersAggregate = fathersAggregate;
    final lOther$fathersAggregate = other.fathersAggregate;
    if (_$data.containsKey('fathersAggregate') !=
        other._$data.containsKey('fathersAggregate')) {
      return false;
    }
    if (l$fathersAggregate != lOther$fathersAggregate) {
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
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (_$data.containsKey('isHidden') !=
        other._$data.containsKey('isHidden')) {
      return false;
    }
    if (l$isHidden != lOther$isHidden) {
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
    final l$fathersAggregate = fathersAggregate;
    final l$id = id;
    final l$isHidden = isHidden;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('fathersAggregate') ? l$fathersAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_ChurchesOrderBy<TRes> {
  factory CopyWith_Input_ChurchesOrderBy(
    Input_ChurchesOrderBy instance,
    TRes Function(Input_ChurchesOrderBy) then,
  ) = _CopyWithImpl_Input_ChurchesOrderBy;

  factory CopyWith_Input_ChurchesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesOrderBy;

  TRes call({
    Input_FathersAggregateOrderBy? fathersAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_FathersAggregateOrderBy<TRes> get fathersAggregate;
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_ChurchesOrderBy<TRes>
    implements CopyWith_Input_ChurchesOrderBy<TRes> {
  _CopyWithImpl_Input_ChurchesOrderBy(this._instance, this._then);

  final Input_ChurchesOrderBy _instance;

  final TRes Function(Input_ChurchesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fathersAggregate = _undefined,
    Object? id = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_ChurchesOrderBy._({
      ..._instance._$data,
      if (fathersAggregate != _undefined)
        'fathersAggregate':
            (fathersAggregate as Input_FathersAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (isHidden != _undefined) 'isHidden': (isHidden as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_FathersAggregateOrderBy<TRes> get fathersAggregate {
    final local$fathersAggregate = _instance.fathersAggregate;
    return local$fathersAggregate == null
        ? CopyWith_Input_FathersAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_FathersAggregateOrderBy(
            local$fathersAggregate,
            (e) => call(fathersAggregate: e),
          );
  }

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

class _CopyWithStubImpl_Input_ChurchesOrderBy<TRes>
    implements CopyWith_Input_ChurchesOrderBy<TRes> {
  _CopyWithStubImpl_Input_ChurchesOrderBy(this._res);

  TRes _res;

  call({
    Input_FathersAggregateOrderBy? fathersAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_FathersAggregateOrderBy<TRes> get fathersAggregate =>
      CopyWith_Input_FathersAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_ChurchesPkColumnsInput {
  factory Input_ChurchesPkColumnsInput({required UuidValue id}) =>
      Input_ChurchesPkColumnsInput._({r'id': id});

  Input_ChurchesPkColumnsInput._(this._$data);

  factory Input_ChurchesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ChurchesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ChurchesPkColumnsInput<Input_ChurchesPkColumnsInput>
  get copyWith => CopyWith_Input_ChurchesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesPkColumnsInput ||
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

abstract class CopyWith_Input_ChurchesPkColumnsInput<TRes> {
  factory CopyWith_Input_ChurchesPkColumnsInput(
    Input_ChurchesPkColumnsInput instance,
    TRes Function(Input_ChurchesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_ChurchesPkColumnsInput;

  factory CopyWith_Input_ChurchesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_ChurchesPkColumnsInput<TRes>
    implements CopyWith_Input_ChurchesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_ChurchesPkColumnsInput(this._instance, this._then);

  final Input_ChurchesPkColumnsInput _instance;

  final TRes Function(Input_ChurchesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_ChurchesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_ChurchesPkColumnsInput<TRes>
    implements CopyWith_Input_ChurchesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ChurchesSetInput {
  factory Input_ChurchesSetInput({String? name}) =>
      Input_ChurchesSetInput._({if (name != null) r'name': name});

  Input_ChurchesSetInput._(this._$data);

  factory Input_ChurchesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_ChurchesSetInput._(result$data);
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

  CopyWith_Input_ChurchesSetInput<Input_ChurchesSetInput> get copyWith =>
      CopyWith_Input_ChurchesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ChurchesSetInput<TRes> {
  factory CopyWith_Input_ChurchesSetInput(
    Input_ChurchesSetInput instance,
    TRes Function(Input_ChurchesSetInput) then,
  ) = _CopyWithImpl_Input_ChurchesSetInput;

  factory CopyWith_Input_ChurchesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_ChurchesSetInput<TRes>
    implements CopyWith_Input_ChurchesSetInput<TRes> {
  _CopyWithImpl_Input_ChurchesSetInput(this._instance, this._then);

  final Input_ChurchesSetInput _instance;

  final TRes Function(Input_ChurchesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_ChurchesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ChurchesSetInput<TRes>
    implements CopyWith_Input_ChurchesSetInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_ChurchesStreamCursorInput {
  factory Input_ChurchesStreamCursorInput({
    required Input_ChurchesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ChurchesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ChurchesStreamCursorInput._(this._$data);

  factory Input_ChurchesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_ChurchesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ChurchesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ChurchesStreamCursorValueInput);

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

  CopyWith_Input_ChurchesStreamCursorInput<Input_ChurchesStreamCursorInput>
  get copyWith => CopyWith_Input_ChurchesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesStreamCursorInput ||
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

abstract class CopyWith_Input_ChurchesStreamCursorInput<TRes> {
  factory CopyWith_Input_ChurchesStreamCursorInput(
    Input_ChurchesStreamCursorInput instance,
    TRes Function(Input_ChurchesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ChurchesStreamCursorInput;

  factory CopyWith_Input_ChurchesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesStreamCursorInput;

  TRes call({
    Input_ChurchesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ChurchesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ChurchesStreamCursorInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ChurchesStreamCursorInput(this._instance, this._then);

  final Input_ChurchesStreamCursorInput _instance;

  final TRes Function(Input_ChurchesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ChurchesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_ChurchesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ChurchesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ChurchesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ChurchesStreamCursorInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ChurchesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ChurchesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ChurchesStreamCursorValueInput.stub(_res);
}

class Input_ChurchesStreamCursorValueInput {
  factory Input_ChurchesStreamCursorValueInput({
    UuidValue? id,
    bool? isHidden,
    String? name,
  }) => Input_ChurchesStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
  });

  Input_ChurchesStreamCursorValueInput._(this._$data);

  factory Input_ChurchesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isHidden')) {
      final l$isHidden = data['isHidden'];
      result$data['isHidden'] = (l$isHidden as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_ChurchesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isHidden => (_$data['isHidden'] as bool?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isHidden')) {
      final l$isHidden = isHidden;
      result$data['isHidden'] = l$isHidden;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_ChurchesStreamCursorValueInput<
    Input_ChurchesStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_ChurchesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesStreamCursorValueInput ||
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
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (_$data.containsKey('isHidden') !=
        other._$data.containsKey('isHidden')) {
      return false;
    }
    if (l$isHidden != lOther$isHidden) {
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
    final l$isHidden = isHidden;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_ChurchesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ChurchesStreamCursorValueInput(
    Input_ChurchesStreamCursorValueInput instance,
    TRes Function(Input_ChurchesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ChurchesStreamCursorValueInput;

  factory CopyWith_Input_ChurchesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesStreamCursorValueInput;

  TRes call({UuidValue? id, bool? isHidden, String? name});
}

class _CopyWithImpl_Input_ChurchesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ChurchesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ChurchesStreamCursorValueInput _instance;

  final TRes Function(Input_ChurchesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_ChurchesStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isHidden != _undefined) 'isHidden': (isHidden as bool?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ChurchesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, bool? isHidden, String? name}) => _res;
}

class Input_ChurchesUpdates {
  factory Input_ChurchesUpdates({
    Input_ChurchesSetInput? $_set,
    required Input_ChurchesBoolExp where,
  }) => Input_ChurchesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_ChurchesUpdates._(this._$data);

  factory Input_ChurchesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_ChurchesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_ChurchesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_ChurchesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesSetInput? get $_set =>
      (_$data['_set'] as Input_ChurchesSetInput?);

  Input_ChurchesBoolExp get where => (_$data['where'] as Input_ChurchesBoolExp);

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

  CopyWith_Input_ChurchesUpdates<Input_ChurchesUpdates> get copyWith =>
      CopyWith_Input_ChurchesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ChurchesUpdates<TRes> {
  factory CopyWith_Input_ChurchesUpdates(
    Input_ChurchesUpdates instance,
    TRes Function(Input_ChurchesUpdates) then,
  ) = _CopyWithImpl_Input_ChurchesUpdates;

  factory CopyWith_Input_ChurchesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesUpdates;

  TRes call({Input_ChurchesSetInput? $_set, Input_ChurchesBoolExp? where});
  CopyWith_Input_ChurchesSetInput<TRes> get $_set;
  CopyWith_Input_ChurchesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ChurchesUpdates<TRes>
    implements CopyWith_Input_ChurchesUpdates<TRes> {
  _CopyWithImpl_Input_ChurchesUpdates(this._instance, this._then);

  final Input_ChurchesUpdates _instance;

  final TRes Function(Input_ChurchesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_ChurchesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_ChurchesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_ChurchesBoolExp),
    }),
  );

  CopyWith_Input_ChurchesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_ChurchesSetInput.stub(_then(_instance))
        : CopyWith_Input_ChurchesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_ChurchesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ChurchesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ChurchesUpdates<TRes>
    implements CopyWith_Input_ChurchesUpdates<TRes> {
  _CopyWithStubImpl_Input_ChurchesUpdates(this._res);

  TRes _res;

  call({Input_ChurchesSetInput? $_set, Input_ChurchesBoolExp? where}) => _res;

  CopyWith_Input_ChurchesSetInput<TRes> get $_set =>
      CopyWith_Input_ChurchesSetInput.stub(_res);

  CopyWith_Input_ChurchesBoolExp<TRes> get where =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);
}

class Input_ClassesAggregateBoolExp {
  factory Input_ClassesAggregateBoolExp({
    Input_classesAggregateBoolExpBool_and? bool_and,
    Input_classesAggregateBoolExpBool_or? bool_or,
    Input_classesAggregateBoolExpCount? count,
  }) => Input_ClassesAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_ClassesAggregateBoolExp._(this._$data);

  factory Input_ClassesAggregateBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_classesAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_classesAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_classesAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_ClassesAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_classesAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and'] as Input_classesAggregateBoolExpBool_and?);

  Input_classesAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or'] as Input_classesAggregateBoolExpBool_or?);

  Input_classesAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_classesAggregateBoolExpCount?);

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

  CopyWith_Input_ClassesAggregateBoolExp<Input_ClassesAggregateBoolExp>
  get copyWith => CopyWith_Input_ClassesAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesAggregateBoolExp ||
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

abstract class CopyWith_Input_ClassesAggregateBoolExp<TRes> {
  factory CopyWith_Input_ClassesAggregateBoolExp(
    Input_ClassesAggregateBoolExp instance,
    TRes Function(Input_ClassesAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_ClassesAggregateBoolExp;

  factory CopyWith_Input_ClassesAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesAggregateBoolExp;

  TRes call({
    Input_classesAggregateBoolExpBool_and? bool_and,
    Input_classesAggregateBoolExpBool_or? bool_or,
    Input_classesAggregateBoolExpCount? count,
  });
  CopyWith_Input_classesAggregateBoolExpBool_and<TRes> get bool_and;
  CopyWith_Input_classesAggregateBoolExpBool_or<TRes> get bool_or;
  CopyWith_Input_classesAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_ClassesAggregateBoolExp<TRes>
    implements CopyWith_Input_ClassesAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_ClassesAggregateBoolExp(this._instance, this._then);

  final Input_ClassesAggregateBoolExp _instance;

  final TRes Function(Input_ClassesAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_ClassesAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and': (bool_and as Input_classesAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or': (bool_or as Input_classesAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count': (count as Input_classesAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_classesAggregateBoolExpBool_and<TRes> get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_classesAggregateBoolExpBool_and.stub(_then(_instance))
        : CopyWith_Input_classesAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_classesAggregateBoolExpBool_or<TRes> get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_classesAggregateBoolExpBool_or.stub(_then(_instance))
        : CopyWith_Input_classesAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_classesAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_classesAggregateBoolExpCount.stub(_then(_instance))
        : CopyWith_Input_classesAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesAggregateBoolExp<TRes>
    implements CopyWith_Input_ClassesAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_ClassesAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_classesAggregateBoolExpBool_and? bool_and,
    Input_classesAggregateBoolExpBool_or? bool_or,
    Input_classesAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_classesAggregateBoolExpBool_and<TRes> get bool_and =>
      CopyWith_Input_classesAggregateBoolExpBool_and.stub(_res);

  CopyWith_Input_classesAggregateBoolExpBool_or<TRes> get bool_or =>
      CopyWith_Input_classesAggregateBoolExpBool_or.stub(_res);

  CopyWith_Input_classesAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_classesAggregateBoolExpCount.stub(_res);
}

class Input_ClassesAggregateOrderBy {
  factory Input_ClassesAggregateOrderBy({
    Input_ClassesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_ClassesMaxOrderBy? max,
    Input_ClassesMinOrderBy? min,
    Input_ClassesStddevOrderBy? stddev,
    Input_ClassesStddevPopOrderBy? stddevPop,
    Input_ClassesStddevSampOrderBy? stddevSamp,
    Input_ClassesSumOrderBy? sum,
    Input_ClassesVarPopOrderBy? varPop,
    Input_ClassesVarSampOrderBy? varSamp,
    Input_ClassesVarianceOrderBy? variance,
  }) => Input_ClassesAggregateOrderBy._({
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

  Input_ClassesAggregateOrderBy._(this._$data);

  factory Input_ClassesAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_ClassesAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_ClassesMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_ClassesMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_ClassesStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_ClassesStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_ClassesStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_ClassesSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_ClassesVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_ClassesVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_ClassesVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_ClassesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesAvgOrderBy? get avg =>
      (_$data['avg'] as Input_ClassesAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_ClassesMaxOrderBy? get max =>
      (_$data['max'] as Input_ClassesMaxOrderBy?);

  Input_ClassesMinOrderBy? get min =>
      (_$data['min'] as Input_ClassesMinOrderBy?);

  Input_ClassesStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_ClassesStddevOrderBy?);

  Input_ClassesStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_ClassesStddevPopOrderBy?);

  Input_ClassesStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_ClassesStddevSampOrderBy?);

  Input_ClassesSumOrderBy? get sum =>
      (_$data['sum'] as Input_ClassesSumOrderBy?);

  Input_ClassesVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_ClassesVarPopOrderBy?);

  Input_ClassesVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_ClassesVarSampOrderBy?);

  Input_ClassesVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_ClassesVarianceOrderBy?);

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

  CopyWith_Input_ClassesAggregateOrderBy<Input_ClassesAggregateOrderBy>
  get copyWith => CopyWith_Input_ClassesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesAggregateOrderBy ||
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

abstract class CopyWith_Input_ClassesAggregateOrderBy<TRes> {
  factory CopyWith_Input_ClassesAggregateOrderBy(
    Input_ClassesAggregateOrderBy instance,
    TRes Function(Input_ClassesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesAggregateOrderBy;

  factory CopyWith_Input_ClassesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesAggregateOrderBy;

  TRes call({
    Input_ClassesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_ClassesMaxOrderBy? max,
    Input_ClassesMinOrderBy? min,
    Input_ClassesStddevOrderBy? stddev,
    Input_ClassesStddevPopOrderBy? stddevPop,
    Input_ClassesStddevSampOrderBy? stddevSamp,
    Input_ClassesSumOrderBy? sum,
    Input_ClassesVarPopOrderBy? varPop,
    Input_ClassesVarSampOrderBy? varSamp,
    Input_ClassesVarianceOrderBy? variance,
  });
  CopyWith_Input_ClassesAvgOrderBy<TRes> get avg;
  CopyWith_Input_ClassesMaxOrderBy<TRes> get max;
  CopyWith_Input_ClassesMinOrderBy<TRes> get min;
  CopyWith_Input_ClassesStddevOrderBy<TRes> get stddev;
  CopyWith_Input_ClassesStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_ClassesStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_ClassesSumOrderBy<TRes> get sum;
  CopyWith_Input_ClassesVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_ClassesVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_ClassesVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_ClassesAggregateOrderBy<TRes>
    implements CopyWith_Input_ClassesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesAggregateOrderBy(this._instance, this._then);

  final Input_ClassesAggregateOrderBy _instance;

  final TRes Function(Input_ClassesAggregateOrderBy) _then;

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
    Input_ClassesAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_ClassesAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_ClassesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_ClassesMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_ClassesStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_ClassesStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_ClassesStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_ClassesSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_ClassesVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_ClassesVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_ClassesVarianceOrderBy?),
    }),
  );

  CopyWith_Input_ClassesAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_ClassesAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_ClassesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_ClassesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_ClassesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_ClassesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_ClassesStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_ClassesStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_ClassesStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_ClassesStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_ClassesStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_ClassesStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_ClassesSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_ClassesSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_ClassesVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_ClassesVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_ClassesVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_ClassesVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_ClassesVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_ClassesVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesAggregateOrderBy<TRes>
    implements CopyWith_Input_ClassesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_ClassesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_ClassesMaxOrderBy? max,
    Input_ClassesMinOrderBy? min,
    Input_ClassesStddevOrderBy? stddev,
    Input_ClassesStddevPopOrderBy? stddevPop,
    Input_ClassesStddevSampOrderBy? stddevSamp,
    Input_ClassesSumOrderBy? sum,
    Input_ClassesVarPopOrderBy? varPop,
    Input_ClassesVarSampOrderBy? varSamp,
    Input_ClassesVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_ClassesAvgOrderBy<TRes> get avg =>
      CopyWith_Input_ClassesAvgOrderBy.stub(_res);

  CopyWith_Input_ClassesMaxOrderBy<TRes> get max =>
      CopyWith_Input_ClassesMaxOrderBy.stub(_res);

  CopyWith_Input_ClassesMinOrderBy<TRes> get min =>
      CopyWith_Input_ClassesMinOrderBy.stub(_res);

  CopyWith_Input_ClassesStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_ClassesStddevOrderBy.stub(_res);

  CopyWith_Input_ClassesStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_ClassesStddevPopOrderBy.stub(_res);

  CopyWith_Input_ClassesStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_ClassesStddevSampOrderBy.stub(_res);

  CopyWith_Input_ClassesSumOrderBy<TRes> get sum =>
      CopyWith_Input_ClassesSumOrderBy.stub(_res);

  CopyWith_Input_ClassesVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_ClassesVarPopOrderBy.stub(_res);

  CopyWith_Input_ClassesVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_ClassesVarSampOrderBy.stub(_res);

  CopyWith_Input_ClassesVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_ClassesVarianceOrderBy.stub(_res);
}

class Input_ClassesArrRelInsertInput {
  factory Input_ClassesArrRelInsertInput({
    required List<Input_ClassesInsertInput> data,
    Input_ClassesOnConflict? onConflict,
  }) => Input_ClassesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_ClassesArrRelInsertInput._(this._$data);

  factory Input_ClassesArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_ClassesInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_ClassesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_ClassesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ClassesInsertInput> get data =>
      (_$data['data'] as List<Input_ClassesInsertInput>);

  Input_ClassesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_ClassesOnConflict?);

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

  CopyWith_Input_ClassesArrRelInsertInput<Input_ClassesArrRelInsertInput>
  get copyWith => CopyWith_Input_ClassesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesArrRelInsertInput ||
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

abstract class CopyWith_Input_ClassesArrRelInsertInput<TRes> {
  factory CopyWith_Input_ClassesArrRelInsertInput(
    Input_ClassesArrRelInsertInput instance,
    TRes Function(Input_ClassesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_ClassesArrRelInsertInput;

  factory CopyWith_Input_ClassesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesArrRelInsertInput;

  TRes call({
    List<Input_ClassesInsertInput>? data,
    Input_ClassesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_ClassesInsertInput> Function(
      Iterable<CopyWith_Input_ClassesInsertInput<Input_ClassesInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_ClassesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_ClassesArrRelInsertInput<TRes>
    implements CopyWith_Input_ClassesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_ClassesArrRelInsertInput(this._instance, this._then);

  final Input_ClassesArrRelInsertInput _instance;

  final TRes Function(Input_ClassesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_ClassesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_ClassesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_ClassesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_ClassesInsertInput> Function(
      Iterable<CopyWith_Input_ClassesInsertInput<Input_ClassesInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_ClassesInsertInput(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Input_ClassesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_ClassesOnConflict.stub(_then(_instance))
        : CopyWith_Input_ClassesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesArrRelInsertInput<TRes>
    implements CopyWith_Input_ClassesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_ClassesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_ClassesInsertInput>? data,
    Input_ClassesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_ClassesOnConflict<TRes> get onConflict =>
      CopyWith_Input_ClassesOnConflict.stub(_res);
}

class Input_ClassesAvgOrderBy {
  factory Input_ClassesAvgOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? serviceStudyYearTo,
  }) => Input_ClassesAvgOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceStudyYearTo != null) r'serviceStudyYearTo': serviceStudyYearTo,
  });

  Input_ClassesAvgOrderBy._(this._$data);

  factory Input_ClassesAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('serviceStudyYearTo')) {
      final l$serviceStudyYearTo = data['serviceStudyYearTo'];
      result$data['serviceStudyYearTo'] = l$serviceStudyYearTo == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYearTo as String));
    }
    return Input_ClassesAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYearTo =>
      (_$data['serviceStudyYearTo'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('serviceStudyYearTo')) {
      final l$serviceStudyYearTo = serviceStudyYearTo;
      result$data['serviceStudyYearTo'] = l$serviceStudyYearTo == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYearTo);
    }
    return result$data;
  }

  CopyWith_Input_ClassesAvgOrderBy<Input_ClassesAvgOrderBy> get copyWith =>
      CopyWith_Input_ClassesAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesAvgOrderBy || runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final lOther$serviceStudyYearTo = other.serviceStudyYearTo;
    if (_$data.containsKey('serviceStudyYearTo') !=
        other._$data.containsKey('serviceStudyYearTo')) {
      return false;
    }
    if (l$serviceStudyYearTo != lOther$serviceStudyYearTo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceStudyYearTo')
          ? l$serviceStudyYearTo
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesAvgOrderBy<TRes> {
  factory CopyWith_Input_ClassesAvgOrderBy(
    Input_ClassesAvgOrderBy instance,
    TRes Function(Input_ClassesAvgOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesAvgOrderBy;

  factory CopyWith_Input_ClassesAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesAvgOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? serviceStudyYearTo,
  });
}

class _CopyWithImpl_Input_ClassesAvgOrderBy<TRes>
    implements CopyWith_Input_ClassesAvgOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesAvgOrderBy(this._instance, this._then);

  final Input_ClassesAvgOrderBy _instance;

  final TRes Function(Input_ClassesAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearTo = _undefined,
  }) => _then(
    Input_ClassesAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (serviceStudyYearTo != _undefined)
        'serviceStudyYearTo': (serviceStudyYearTo as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesAvgOrderBy<TRes>
    implements CopyWith_Input_ClassesAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesAvgOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? serviceStudyYearTo,
  }) => _res;
}

class Input_ClassesBoolExp {
  factory Input_ClassesBoolExp({
    List<Input_ClassesBoolExp>? $_and,
    Input_ClassesBoolExp? $_not,
    List<Input_ClassesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_ClassesPersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_IntComparisonExp? serviceStudyYearTo,
    Input_StudyYearsBoolExp? studyYear,
    Input_StudyYearsBoolExp? studyYearTo,
    Input_BooleanComparisonExp? userCanEdit,
  }) => Input_ClassesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistory != null) r'editHistory': editHistory,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceStudyYearTo != null) r'serviceStudyYearTo': serviceStudyYearTo,
    if (studyYear != null) r'studyYear': studyYear,
    if (studyYearTo != null) r'studyYearTo': studyYearTo,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_ClassesBoolExp._(this._$data);

  factory Input_ClassesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ClassesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ClassesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$adminUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = l$editHistory == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$meetings as Map<String, dynamic>),
            );
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
          : Input_ClassesPersonsBoolExp.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
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
    if (data.containsKey('serviceStudyYearTo')) {
      final l$serviceStudyYearTo = data['serviceStudyYearTo'];
      result$data['serviceStudyYearTo'] = l$serviceStudyYearTo == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$serviceStudyYearTo as Map<String, dynamic>),
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
    if (data.containsKey('studyYearTo')) {
      final l$studyYearTo = data['studyYearTo'];
      result$data['studyYearTo'] = l$studyYearTo == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_ClassesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ClassesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ClassesBoolExp>?);

  Input_ClassesBoolExp? get $_not => (_$data['_not'] as Input_ClassesBoolExp?);

  List<Input_ClassesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ClassesBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryMeetingsBoolExp? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_ClassesPersonsBoolExp? get persons =>
      (_$data['persons'] as Input_ClassesPersonsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_BooleanComparisonExp? get serviceGender =>
      (_$data['serviceGender'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_IntComparisonExp? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_IntComparisonExp?);

  Input_IntComparisonExp? get serviceStudyYearTo =>
      (_$data['serviceStudyYearTo'] as Input_IntComparisonExp?);

  Input_StudyYearsBoolExp? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsBoolExp?);

  Input_StudyYearsBoolExp? get studyYearTo =>
      (_$data['studyYearTo'] as Input_StudyYearsBoolExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

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
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
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
    if (_$data.containsKey('serviceStudyYearTo')) {
      final l$serviceStudyYearTo = serviceStudyYearTo;
      result$data['serviceStudyYearTo'] = l$serviceStudyYearTo?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('studyYearTo')) {
      final l$studyYearTo = studyYearTo;
      result$data['studyYearTo'] = l$studyYearTo?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ClassesBoolExp<Input_ClassesBoolExp> get copyWith =>
      CopyWith_Input_ClassesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesBoolExp || runtimeType != other.runtimeType) {
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
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
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
    final l$editHistory = editHistory;
    final lOther$editHistory = other.editHistory;
    if (_$data.containsKey('editHistory') !=
        other._$data.containsKey('editHistory')) {
      return false;
    }
    if (l$editHistory != lOther$editHistory) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (_$data.containsKey('meetings') !=
        other._$data.containsKey('meetings')) {
      return false;
    }
    if (l$meetings != lOther$meetings) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final lOther$serviceStudyYearTo = other.serviceStudyYearTo;
    if (_$data.containsKey('serviceStudyYearTo') !=
        other._$data.containsKey('serviceStudyYearTo')) {
      return false;
    }
    if (l$serviceStudyYearTo != lOther$serviceStudyYearTo) {
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
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (_$data.containsKey('studyYearTo') !=
        other._$data.containsKey('studyYearTo')) {
      return false;
    }
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminUsers = adminUsers;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$meetings = meetings;
    final l$name = name;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final l$studyYear = studyYear;
    final l$studyYearTo = studyYearTo;
    final l$userCanEdit = userCanEdit;
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
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceStudyYearTo')
          ? l$serviceStudyYearTo
          : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('studyYearTo') ? l$studyYearTo : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}
