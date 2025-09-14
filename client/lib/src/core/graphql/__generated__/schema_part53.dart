// Part 53 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_TagsObjRelInsertInput<TRes> {
  factory CopyWith_Input_TagsObjRelInsertInput(
    Input_TagsObjRelInsertInput instance,
    TRes Function(Input_TagsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_TagsObjRelInsertInput;

  factory CopyWith_Input_TagsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsObjRelInsertInput;

  TRes call({Input_TagsInsertInput? data, Input_TagsOnConflict? onConflict});
  CopyWith_Input_TagsInsertInput<TRes> get data;
  CopyWith_Input_TagsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_TagsObjRelInsertInput<TRes>
    implements CopyWith_Input_TagsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_TagsObjRelInsertInput(this._instance, this._then);

  final Input_TagsObjRelInsertInput _instance;

  final TRes Function(Input_TagsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_TagsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_TagsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_TagsOnConflict?),
        }),
      );

  CopyWith_Input_TagsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_TagsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_TagsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_TagsOnConflict.stub(_then(_instance))
        : CopyWith_Input_TagsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_TagsObjRelInsertInput<TRes>
    implements CopyWith_Input_TagsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_TagsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_TagsInsertInput? data, Input_TagsOnConflict? onConflict}) => _res;

  CopyWith_Input_TagsInsertInput<TRes> get data =>
      CopyWith_Input_TagsInsertInput.stub(_res);

  CopyWith_Input_TagsOnConflict<TRes> get onConflict =>
      CopyWith_Input_TagsOnConflict.stub(_res);
}

class Input_TagsOnConflict {
  factory Input_TagsOnConflict({
    required Enum_TagsConstraint constraint,
    List<Enum_TagsUpdateColumn>? updateColumns,
    Input_TagsBoolExp? where,
  }) => Input_TagsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_TagsOnConflict._(this._$data);

  factory Input_TagsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_TagsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_TagsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_TagsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_TagsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_TagsConstraint get constraint =>
      (_$data['constraint'] as Enum_TagsConstraint);

  List<Enum_TagsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_TagsUpdateColumn>?);

  Input_TagsBoolExp? get where => (_$data['where'] as Input_TagsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_TagsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_TagsUpdateColumn>)
              .map((e) => toJson_Enum_TagsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_TagsOnConflict<Input_TagsOnConflict> get copyWith =>
      CopyWith_Input_TagsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_TagsOnConflict<TRes> {
  factory CopyWith_Input_TagsOnConflict(
    Input_TagsOnConflict instance,
    TRes Function(Input_TagsOnConflict) then,
  ) = _CopyWithImpl_Input_TagsOnConflict;

  factory CopyWith_Input_TagsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsOnConflict;

  TRes call({
    Enum_TagsConstraint? constraint,
    List<Enum_TagsUpdateColumn>? updateColumns,
    Input_TagsBoolExp? where,
  });
  CopyWith_Input_TagsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_TagsOnConflict<TRes>
    implements CopyWith_Input_TagsOnConflict<TRes> {
  _CopyWithImpl_Input_TagsOnConflict(this._instance, this._then);

  final Input_TagsOnConflict _instance;

  final TRes Function(Input_TagsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_TagsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_TagsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_TagsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_TagsBoolExp?),
    }),
  );

  CopyWith_Input_TagsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_TagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_TagsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_TagsOnConflict<TRes>
    implements CopyWith_Input_TagsOnConflict<TRes> {
  _CopyWithStubImpl_Input_TagsOnConflict(this._res);

  TRes _res;

  call({
    Enum_TagsConstraint? constraint,
    List<Enum_TagsUpdateColumn>? updateColumns,
    Input_TagsBoolExp? where,
  }) => _res;

  CopyWith_Input_TagsBoolExp<TRes> get where =>
      CopyWith_Input_TagsBoolExp.stub(_res);
}

class Input_TagsOrderBy {
  factory Input_TagsOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsTagsAggregateOrderBy? personsAggregate,
  }) => Input_TagsOrderBy._({
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_TagsOrderBy._(this._$data);

  factory Input_TagsOrderBy.fromJson(Map<String, dynamic> data) {
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
          : Input_PersonsTagsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_TagsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsTagsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsTagsAggregateOrderBy?);

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

  CopyWith_Input_TagsOrderBy<Input_TagsOrderBy> get copyWith =>
      CopyWith_Input_TagsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_TagsOrderBy<TRes> {
  factory CopyWith_Input_TagsOrderBy(
    Input_TagsOrderBy instance,
    TRes Function(Input_TagsOrderBy) then,
  ) = _CopyWithImpl_Input_TagsOrderBy;

  factory CopyWith_Input_TagsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsTagsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_TagsOrderBy<TRes>
    implements CopyWith_Input_TagsOrderBy<TRes> {
  _CopyWithImpl_Input_TagsOrderBy(this._instance, this._then);

  final Input_TagsOrderBy _instance;

  final TRes Function(Input_TagsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_TagsOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsTagsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsTagsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_TagsOrderBy<TRes>
    implements CopyWith_Input_TagsOrderBy<TRes> {
  _CopyWithStubImpl_Input_TagsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsTagsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsTagsAggregateOrderBy.stub(_res);
}

class Input_TagsPkColumnsInput {
  factory Input_TagsPkColumnsInput({required UuidValue id}) =>
      Input_TagsPkColumnsInput._({r'id': id});

  Input_TagsPkColumnsInput._(this._$data);

  factory Input_TagsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_TagsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_TagsPkColumnsInput<Input_TagsPkColumnsInput> get copyWith =>
      CopyWith_Input_TagsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsPkColumnsInput ||
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

abstract class CopyWith_Input_TagsPkColumnsInput<TRes> {
  factory CopyWith_Input_TagsPkColumnsInput(
    Input_TagsPkColumnsInput instance,
    TRes Function(Input_TagsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_TagsPkColumnsInput;

  factory CopyWith_Input_TagsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_TagsPkColumnsInput<TRes>
    implements CopyWith_Input_TagsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_TagsPkColumnsInput(this._instance, this._then);

  final Input_TagsPkColumnsInput _instance;

  final TRes Function(Input_TagsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_TagsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_TagsPkColumnsInput<TRes>
    implements CopyWith_Input_TagsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_TagsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_TagsSetInput {
  factory Input_TagsSetInput({int? color, String? name}) =>
      Input_TagsSetInput._({
        if (color != null) r'color': color,
        if (name != null) r'name': name,
      });

  Input_TagsSetInput._(this._$data);

  factory Input_TagsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_TagsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

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
    return result$data;
  }

  CopyWith_Input_TagsSetInput<Input_TagsSetInput> get copyWith =>
      CopyWith_Input_TagsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsSetInput || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_TagsSetInput<TRes> {
  factory CopyWith_Input_TagsSetInput(
    Input_TagsSetInput instance,
    TRes Function(Input_TagsSetInput) then,
  ) = _CopyWithImpl_Input_TagsSetInput;

  factory CopyWith_Input_TagsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsSetInput;

  TRes call({int? color, String? name});
}

class _CopyWithImpl_Input_TagsSetInput<TRes>
    implements CopyWith_Input_TagsSetInput<TRes> {
  _CopyWithImpl_Input_TagsSetInput(this._instance, this._then);

  final Input_TagsSetInput _instance;

  final TRes Function(Input_TagsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined, Object? name = _undefined}) => _then(
    Input_TagsSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_TagsSetInput<TRes>
    implements CopyWith_Input_TagsSetInput<TRes> {
  _CopyWithStubImpl_Input_TagsSetInput(this._res);

  TRes _res;

  call({int? color, String? name}) => _res;
}

class Input_TagsStreamCursorInput {
  factory Input_TagsStreamCursorInput({
    required Input_TagsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_TagsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_TagsStreamCursorInput._(this._$data);

  factory Input_TagsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_TagsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_TagsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_TagsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_TagsStreamCursorValueInput);

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

  CopyWith_Input_TagsStreamCursorInput<Input_TagsStreamCursorInput>
  get copyWith => CopyWith_Input_TagsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsStreamCursorInput ||
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

abstract class CopyWith_Input_TagsStreamCursorInput<TRes> {
  factory CopyWith_Input_TagsStreamCursorInput(
    Input_TagsStreamCursorInput instance,
    TRes Function(Input_TagsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_TagsStreamCursorInput;

  factory CopyWith_Input_TagsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsStreamCursorInput;

  TRes call({
    Input_TagsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_TagsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_TagsStreamCursorInput<TRes>
    implements CopyWith_Input_TagsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_TagsStreamCursorInput(this._instance, this._then);

  final Input_TagsStreamCursorInput _instance;

  final TRes Function(Input_TagsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_TagsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_TagsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_TagsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_TagsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_TagsStreamCursorInput<TRes>
    implements CopyWith_Input_TagsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_TagsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_TagsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_TagsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_TagsStreamCursorValueInput.stub(_res);
}

class Input_TagsStreamCursorValueInput {
  factory Input_TagsStreamCursorValueInput({
    int? color,
    UuidValue? id,
    String? name,
  }) => Input_TagsStreamCursorValueInput._({
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_TagsStreamCursorValueInput._(this._$data);

  factory Input_TagsStreamCursorValueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_TagsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
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

  CopyWith_Input_TagsStreamCursorValueInput<Input_TagsStreamCursorValueInput>
  get copyWith => CopyWith_Input_TagsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsStreamCursorValueInput ||
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
    final l$color = color;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_TagsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_TagsStreamCursorValueInput(
    Input_TagsStreamCursorValueInput instance,
    TRes Function(Input_TagsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_TagsStreamCursorValueInput;

  factory CopyWith_Input_TagsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsStreamCursorValueInput;

  TRes call({int? color, UuidValue? id, String? name});
}

class _CopyWithImpl_Input_TagsStreamCursorValueInput<TRes>
    implements CopyWith_Input_TagsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_TagsStreamCursorValueInput(this._instance, this._then);

  final Input_TagsStreamCursorValueInput _instance;

  final TRes Function(Input_TagsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_TagsStreamCursorValueInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_TagsStreamCursorValueInput<TRes>
    implements CopyWith_Input_TagsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_TagsStreamCursorValueInput(this._res);

  TRes _res;

  call({int? color, UuidValue? id, String? name}) => _res;
}

class Input_TagsUpdates {
  factory Input_TagsUpdates({
    Input_TagsIncInput? $_inc,
    Input_TagsSetInput? $_set,
    required Input_TagsBoolExp where,
  }) => Input_TagsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_TagsUpdates._(this._$data);

  factory Input_TagsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_TagsIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_TagsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_TagsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_TagsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_TagsIncInput? get $_inc => (_$data['_inc'] as Input_TagsIncInput?);

  Input_TagsSetInput? get $_set => (_$data['_set'] as Input_TagsSetInput?);

  Input_TagsBoolExp get where => (_$data['where'] as Input_TagsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_TagsUpdates<Input_TagsUpdates> get copyWith =>
      CopyWith_Input_TagsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsUpdates || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
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
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_TagsUpdates<TRes> {
  factory CopyWith_Input_TagsUpdates(
    Input_TagsUpdates instance,
    TRes Function(Input_TagsUpdates) then,
  ) = _CopyWithImpl_Input_TagsUpdates;

  factory CopyWith_Input_TagsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsUpdates;

  TRes call({
    Input_TagsIncInput? $_inc,
    Input_TagsSetInput? $_set,
    Input_TagsBoolExp? where,
  });
  CopyWith_Input_TagsIncInput<TRes> get $_inc;
  CopyWith_Input_TagsSetInput<TRes> get $_set;
  CopyWith_Input_TagsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_TagsUpdates<TRes>
    implements CopyWith_Input_TagsUpdates<TRes> {
  _CopyWithImpl_Input_TagsUpdates(this._instance, this._then);

  final Input_TagsUpdates _instance;

  final TRes Function(Input_TagsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_TagsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_TagsIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_TagsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_TagsBoolExp),
    }),
  );

  CopyWith_Input_TagsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_TagsIncInput.stub(_then(_instance))
        : CopyWith_Input_TagsIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_TagsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_TagsSetInput.stub(_then(_instance))
        : CopyWith_Input_TagsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_TagsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_TagsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_TagsUpdates<TRes>
    implements CopyWith_Input_TagsUpdates<TRes> {
  _CopyWithStubImpl_Input_TagsUpdates(this._res);

  TRes _res;

  call({
    Input_TagsIncInput? $_inc,
    Input_TagsSetInput? $_set,
    Input_TagsBoolExp? where,
  }) => _res;

  CopyWith_Input_TagsIncInput<TRes> get $_inc =>
      CopyWith_Input_TagsIncInput.stub(_res);

  CopyWith_Input_TagsSetInput<TRes> get $_set =>
      CopyWith_Input_TagsSetInput.stub(_res);

  CopyWith_Input_TagsBoolExp<TRes> get where =>
      CopyWith_Input_TagsBoolExp.stub(_res);
}

class Input_TimestampComparisonExp {
  factory Input_TimestampComparisonExp({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => Input_TimestampComparisonExp._({
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

  Input_TimestampComparisonExp._(this._$data);

  factory Input_TimestampComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : tstzFromString(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : tstzFromString(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null ? null : tstzFromString(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : tstzFromString(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null ? null : tstzFromString(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null ? null : tstzFromString(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    return Input_TimestampComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get $_eq => (_$data['_eq'] as DateTime?);

  DateTime? get $_gt => (_$data['_gt'] as DateTime?);

  DateTime? get $_gte => (_$data['_gte'] as DateTime?);

  List<DateTime>? get $_in => (_$data['_in'] as List<DateTime>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  DateTime? get $_lt => (_$data['_lt'] as DateTime?);

  DateTime? get $_lte => (_$data['_lte'] as DateTime?);

  DateTime? get $_neq => (_$data['_neq'] as DateTime?);

  List<DateTime>? get $_nin => (_$data['_nin'] as List<DateTime>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : tstzToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : tstzToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : tstzToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => tstzToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : tstzToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : tstzToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : tstzToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => tstzToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_TimestampComparisonExp<Input_TimestampComparisonExp>
  get copyWith => CopyWith_Input_TimestampComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TimestampComparisonExp ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_TimestampComparisonExp<TRes> {
  factory CopyWith_Input_TimestampComparisonExp(
    Input_TimestampComparisonExp instance,
    TRes Function(Input_TimestampComparisonExp) then,
  ) = _CopyWithImpl_Input_TimestampComparisonExp;

  factory CopyWith_Input_TimestampComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_TimestampComparisonExp;

  TRes call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  });
}

class _CopyWithImpl_Input_TimestampComparisonExp<TRes>
    implements CopyWith_Input_TimestampComparisonExp<TRes> {
  _CopyWithImpl_Input_TimestampComparisonExp(this._instance, this._then);

  final Input_TimestampComparisonExp _instance;

  final TRes Function(Input_TimestampComparisonExp) _then;

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
    Input_TimestampComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as DateTime?),
      if ($_gt != _undefined) '_gt': ($_gt as DateTime?),
      if ($_gte != _undefined) '_gte': ($_gte as DateTime?),
      if ($_in != _undefined) '_in': ($_in as List<DateTime>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as DateTime?),
      if ($_lte != _undefined) '_lte': ($_lte as DateTime?),
      if ($_neq != _undefined) '_neq': ($_neq as DateTime?),
      if ($_nin != _undefined) '_nin': ($_nin as List<DateTime>?),
    }),
  );
}

class _CopyWithStubImpl_Input_TimestampComparisonExp<TRes>
    implements CopyWith_Input_TimestampComparisonExp<TRes> {
  _CopyWithStubImpl_Input_TimestampComparisonExp(this._res);

  TRes _res;

  call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => _res;
}

class Input_TimestamptzComparisonExp {
  factory Input_TimestamptzComparisonExp({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => Input_TimestamptzComparisonExp._({
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

  Input_TimestamptzComparisonExp._(this._$data);

  factory Input_TimestamptzComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : tstzFromString(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : tstzFromString(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null ? null : tstzFromString(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : tstzFromString(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null ? null : tstzFromString(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null ? null : tstzFromString(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    return Input_TimestamptzComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get $_eq => (_$data['_eq'] as DateTime?);

  DateTime? get $_gt => (_$data['_gt'] as DateTime?);

  DateTime? get $_gte => (_$data['_gte'] as DateTime?);

  List<DateTime>? get $_in => (_$data['_in'] as List<DateTime>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  DateTime? get $_lt => (_$data['_lt'] as DateTime?);

  DateTime? get $_lte => (_$data['_lte'] as DateTime?);

  DateTime? get $_neq => (_$data['_neq'] as DateTime?);

  List<DateTime>? get $_nin => (_$data['_nin'] as List<DateTime>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : tstzToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : tstzToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : tstzToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => tstzToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : tstzToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : tstzToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : tstzToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => tstzToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_TimestamptzComparisonExp<Input_TimestamptzComparisonExp>
  get copyWith => CopyWith_Input_TimestamptzComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TimestamptzComparisonExp ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_TimestamptzComparisonExp<TRes> {
  factory CopyWith_Input_TimestamptzComparisonExp(
    Input_TimestamptzComparisonExp instance,
    TRes Function(Input_TimestamptzComparisonExp) then,
  ) = _CopyWithImpl_Input_TimestamptzComparisonExp;

  factory CopyWith_Input_TimestamptzComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_TimestamptzComparisonExp;

  TRes call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  });
}

class _CopyWithImpl_Input_TimestamptzComparisonExp<TRes>
    implements CopyWith_Input_TimestamptzComparisonExp<TRes> {
  _CopyWithImpl_Input_TimestamptzComparisonExp(this._instance, this._then);

  final Input_TimestamptzComparisonExp _instance;

  final TRes Function(Input_TimestamptzComparisonExp) _then;

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
    Input_TimestamptzComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as DateTime?),
      if ($_gt != _undefined) '_gt': ($_gt as DateTime?),
      if ($_gte != _undefined) '_gte': ($_gte as DateTime?),
      if ($_in != _undefined) '_in': ($_in as List<DateTime>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as DateTime?),
      if ($_lte != _undefined) '_lte': ($_lte as DateTime?),
      if ($_neq != _undefined) '_neq': ($_neq as DateTime?),
      if ($_nin != _undefined) '_nin': ($_nin as List<DateTime>?),
    }),
  );
}

class _CopyWithStubImpl_Input_TimestamptzComparisonExp<TRes>
    implements CopyWith_Input_TimestamptzComparisonExp<TRes> {
  _CopyWithStubImpl_Input_TimestamptzComparisonExp(this._res);

  TRes _res;

  call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => _res;
}

class Input_UniversitiesBoolExp {
  factory Input_UniversitiesBoolExp({
    List<Input_UniversitiesBoolExp>? $_and,
    Input_UniversitiesBoolExp? $_not,
    List<Input_UniversitiesBoolExp>? $_or,
    Input_CollegesBoolExp? colleges,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  }) => Input_UniversitiesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (colleges != null) r'colleges': colleges,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_UniversitiesBoolExp._(this._$data);

  factory Input_UniversitiesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_UniversitiesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_UniversitiesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_UniversitiesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('colleges')) {
      final l$colleges = data['colleges'];
      result$data['colleges'] = l$colleges == null
          ? null
          : Input_CollegesBoolExp.fromJson(
              (l$colleges as Map<String, dynamic>),
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
    return Input_UniversitiesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_UniversitiesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_UniversitiesBoolExp>?);

  Input_UniversitiesBoolExp? get $_not =>
      (_$data['_not'] as Input_UniversitiesBoolExp?);

  List<Input_UniversitiesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_UniversitiesBoolExp>?);

  Input_CollegesBoolExp? get colleges =>
      (_$data['colleges'] as Input_CollegesBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('colleges')) {
      final l$colleges = colleges;
      result$data['colleges'] = l$colleges?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UniversitiesBoolExp<Input_UniversitiesBoolExp> get copyWith =>
      CopyWith_Input_UniversitiesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesBoolExp ||
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
    final l$colleges = colleges;
    final lOther$colleges = other.colleges;
    if (_$data.containsKey('colleges') !=
        other._$data.containsKey('colleges')) {
      return false;
    }
    if (l$colleges != lOther$colleges) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$colleges = colleges;
    final l$id = id;
    final l$name = name;
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
      _$data.containsKey('colleges') ? l$colleges : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_UniversitiesBoolExp<TRes> {
  factory CopyWith_Input_UniversitiesBoolExp(
    Input_UniversitiesBoolExp instance,
    TRes Function(Input_UniversitiesBoolExp) then,
  ) = _CopyWithImpl_Input_UniversitiesBoolExp;

  factory CopyWith_Input_UniversitiesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_UniversitiesBoolExp;

  TRes call({
    List<Input_UniversitiesBoolExp>? $_and,
    Input_UniversitiesBoolExp? $_not,
    List<Input_UniversitiesBoolExp>? $_or,
    Input_CollegesBoolExp? colleges,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  });
  TRes $_and(
    Iterable<Input_UniversitiesBoolExp>? Function(
      Iterable<CopyWith_Input_UniversitiesBoolExp<Input_UniversitiesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UniversitiesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_UniversitiesBoolExp>? Function(
      Iterable<CopyWith_Input_UniversitiesBoolExp<Input_UniversitiesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_CollegesBoolExp<TRes> get colleges;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
}

class _CopyWithImpl_Input_UniversitiesBoolExp<TRes>
    implements CopyWith_Input_UniversitiesBoolExp<TRes> {
  _CopyWithImpl_Input_UniversitiesBoolExp(this._instance, this._then);

  final Input_UniversitiesBoolExp _instance;

  final TRes Function(Input_UniversitiesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? colleges = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_UniversitiesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_UniversitiesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_UniversitiesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_UniversitiesBoolExp>?),
      if (colleges != _undefined)
        'colleges': (colleges as Input_CollegesBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_UniversitiesBoolExp>? Function(
      Iterable<CopyWith_Input_UniversitiesBoolExp<Input_UniversitiesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_UniversitiesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UniversitiesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_UniversitiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_UniversitiesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_UniversitiesBoolExp>? Function(
      Iterable<CopyWith_Input_UniversitiesBoolExp<Input_UniversitiesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_UniversitiesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_CollegesBoolExp<TRes> get colleges {
    final local$colleges = _instance.colleges;
    return local$colleges == null
        ? CopyWith_Input_CollegesBoolExp.stub(_then(_instance))
        : CopyWith_Input_CollegesBoolExp(
            local$colleges,
            (e) => call(colleges: e),
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
}

class _CopyWithStubImpl_Input_UniversitiesBoolExp<TRes>
    implements CopyWith_Input_UniversitiesBoolExp<TRes> {
  _CopyWithStubImpl_Input_UniversitiesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_UniversitiesBoolExp>? $_and,
    Input_UniversitiesBoolExp? $_not,
    List<Input_UniversitiesBoolExp>? $_or,
    Input_CollegesBoolExp? colleges,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_UniversitiesBoolExp<TRes> get $_not =>
      CopyWith_Input_UniversitiesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_CollegesBoolExp<TRes> get colleges =>
      CopyWith_Input_CollegesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_UniversitiesInsertInput {
  factory Input_UniversitiesInsertInput({
    Input_CollegesArrRelInsertInput? colleges,
    String? name,
  }) => Input_UniversitiesInsertInput._({
    if (colleges != null) r'colleges': colleges,
    if (name != null) r'name': name,
  });

  Input_UniversitiesInsertInput._(this._$data);

  factory Input_UniversitiesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('colleges')) {
      final l$colleges = data['colleges'];
      result$data['colleges'] = l$colleges == null
          ? null
          : Input_CollegesArrRelInsertInput.fromJson(
              (l$colleges as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_UniversitiesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesArrRelInsertInput? get colleges =>
      (_$data['colleges'] as Input_CollegesArrRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('colleges')) {
      final l$colleges = colleges;
      result$data['colleges'] = l$colleges?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_UniversitiesInsertInput<Input_UniversitiesInsertInput>
  get copyWith => CopyWith_Input_UniversitiesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UniversitiesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$colleges = colleges;
    final lOther$colleges = other.colleges;
    if (_$data.containsKey('colleges') !=
        other._$data.containsKey('colleges')) {
      return false;
    }
    if (l$colleges != lOther$colleges) {
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
    final l$colleges = colleges;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('colleges') ? l$colleges : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

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
