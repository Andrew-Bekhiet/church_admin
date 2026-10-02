// Part 17 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_DistrictsInsertInput<TRes> {
  factory CopyWith_Input_DistrictsInsertInput(
    Input_DistrictsInsertInput instance,
    TRes Function(Input_DistrictsInsertInput) then,
  ) = _CopyWithImpl_Input_DistrictsInsertInput;

  factory CopyWith_Input_DistrictsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsInsertInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_DistrictsInsertInput<TRes>
    implements CopyWith_Input_DistrictsInsertInput<TRes> {
  _CopyWithImpl_Input_DistrictsInsertInput(this._instance, this._then);

  final Input_DistrictsInsertInput _instance;

  final TRes Function(Input_DistrictsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_DistrictsInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsInsertInput<TRes>
    implements CopyWith_Input_DistrictsInsertInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsInsertInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_DistrictsObjRelInsertInput {
  factory Input_DistrictsObjRelInsertInput({
    required Input_DistrictsInsertInput data,
    Input_DistrictsOnConflict? onConflict,
  }) => Input_DistrictsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_DistrictsObjRelInsertInput._(this._$data);

  factory Input_DistrictsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_DistrictsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_DistrictsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_DistrictsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsInsertInput get data =>
      (_$data['data'] as Input_DistrictsInsertInput);

  Input_DistrictsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_DistrictsOnConflict?);

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

  CopyWith_Input_DistrictsObjRelInsertInput<Input_DistrictsObjRelInsertInput>
  get copyWith => CopyWith_Input_DistrictsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsObjRelInsertInput ||
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

abstract class CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  factory CopyWith_Input_DistrictsObjRelInsertInput(
    Input_DistrictsObjRelInsertInput instance,
    TRes Function(Input_DistrictsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_DistrictsObjRelInsertInput;

  factory CopyWith_Input_DistrictsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsObjRelInsertInput;

  TRes call({
    Input_DistrictsInsertInput? data,
    Input_DistrictsOnConflict? onConflict,
  });
  CopyWith_Input_DistrictsInsertInput<TRes> get data;
  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_DistrictsObjRelInsertInput<TRes>
    implements CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_DistrictsObjRelInsertInput(this._instance, this._then);

  final Input_DistrictsObjRelInsertInput _instance;

  final TRes Function(Input_DistrictsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_DistrictsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_DistrictsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_DistrictsOnConflict?),
        }),
      );

  CopyWith_Input_DistrictsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_DistrictsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_DistrictsOnConflict.stub(_then(_instance))
        : CopyWith_Input_DistrictsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_DistrictsObjRelInsertInput<TRes>
    implements CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_DistrictsInsertInput? data,
    Input_DistrictsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_DistrictsInsertInput<TRes> get data =>
      CopyWith_Input_DistrictsInsertInput.stub(_res);

  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict =>
      CopyWith_Input_DistrictsOnConflict.stub(_res);
}

class Input_DistrictsOnConflict {
  factory Input_DistrictsOnConflict({
    required Enum_DistrictsConstraint constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  }) => Input_DistrictsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_DistrictsOnConflict._(this._$data);

  factory Input_DistrictsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_DistrictsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_DistrictsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_DistrictsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_DistrictsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_DistrictsConstraint get constraint =>
      (_$data['constraint'] as Enum_DistrictsConstraint);

  List<Enum_DistrictsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_DistrictsUpdateColumn>?);

  Input_DistrictsBoolExp? get where =>
      (_$data['where'] as Input_DistrictsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_DistrictsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_DistrictsUpdateColumn>)
              .map((e) => toJson_Enum_DistrictsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DistrictsOnConflict<Input_DistrictsOnConflict> get copyWith =>
      CopyWith_Input_DistrictsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsOnConflict ||
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

abstract class CopyWith_Input_DistrictsOnConflict<TRes> {
  factory CopyWith_Input_DistrictsOnConflict(
    Input_DistrictsOnConflict instance,
    TRes Function(Input_DistrictsOnConflict) then,
  ) = _CopyWithImpl_Input_DistrictsOnConflict;

  factory CopyWith_Input_DistrictsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsOnConflict;

  TRes call({
    Enum_DistrictsConstraint? constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  });
  CopyWith_Input_DistrictsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DistrictsOnConflict<TRes>
    implements CopyWith_Input_DistrictsOnConflict<TRes> {
  _CopyWithImpl_Input_DistrictsOnConflict(this._instance, this._then);

  final Input_DistrictsOnConflict _instance;

  final TRes Function(Input_DistrictsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_DistrictsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_DistrictsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_DistrictsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_DistrictsBoolExp?),
    }),
  );

  CopyWith_Input_DistrictsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_DistrictsBoolExp.stub(_then(_instance))
        : CopyWith_Input_DistrictsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_DistrictsOnConflict<TRes>
    implements CopyWith_Input_DistrictsOnConflict<TRes> {
  _CopyWithStubImpl_Input_DistrictsOnConflict(this._res);

  TRes _res;

  call({
    Enum_DistrictsConstraint? constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  }) => _res;

  CopyWith_Input_DistrictsBoolExp<TRes> get where =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);
}

class Input_DistrictsOrderBy {
  factory Input_DistrictsOrderBy({Enum_OrderBy? id, Enum_OrderBy? name}) =>
      Input_DistrictsOrderBy._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_DistrictsOrderBy._(this._$data);

  factory Input_DistrictsOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_DistrictsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

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
    return result$data;
  }

  CopyWith_Input_DistrictsOrderBy<Input_DistrictsOrderBy> get copyWith =>
      CopyWith_Input_DistrictsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictsOrderBy<TRes> {
  factory CopyWith_Input_DistrictsOrderBy(
    Input_DistrictsOrderBy instance,
    TRes Function(Input_DistrictsOrderBy) then,
  ) = _CopyWithImpl_Input_DistrictsOrderBy;

  factory CopyWith_Input_DistrictsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsOrderBy;

  TRes call({Enum_OrderBy? id, Enum_OrderBy? name});
}

class _CopyWithImpl_Input_DistrictsOrderBy<TRes>
    implements CopyWith_Input_DistrictsOrderBy<TRes> {
  _CopyWithImpl_Input_DistrictsOrderBy(this._instance, this._then);

  final Input_DistrictsOrderBy _instance;

  final TRes Function(Input_DistrictsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_DistrictsOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsOrderBy<TRes>
    implements CopyWith_Input_DistrictsOrderBy<TRes> {
  _CopyWithStubImpl_Input_DistrictsOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? id, Enum_OrderBy? name}) => _res;
}

class Input_DistrictsPkColumnsInput {
  factory Input_DistrictsPkColumnsInput({required UuidValue id}) =>
      Input_DistrictsPkColumnsInput._({r'id': id});

  Input_DistrictsPkColumnsInput._(this._$data);

  factory Input_DistrictsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_DistrictsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_DistrictsPkColumnsInput<Input_DistrictsPkColumnsInput>
  get copyWith => CopyWith_Input_DistrictsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsPkColumnsInput ||
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

abstract class CopyWith_Input_DistrictsPkColumnsInput<TRes> {
  factory CopyWith_Input_DistrictsPkColumnsInput(
    Input_DistrictsPkColumnsInput instance,
    TRes Function(Input_DistrictsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_DistrictsPkColumnsInput;

  factory CopyWith_Input_DistrictsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_DistrictsPkColumnsInput<TRes>
    implements CopyWith_Input_DistrictsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_DistrictsPkColumnsInput(this._instance, this._then);

  final Input_DistrictsPkColumnsInput _instance;

  final TRes Function(Input_DistrictsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_DistrictsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsPkColumnsInput<TRes>
    implements CopyWith_Input_DistrictsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_DistrictsSetInput {
  factory Input_DistrictsSetInput({String? name}) =>
      Input_DistrictsSetInput._({if (name != null) r'name': name});

  Input_DistrictsSetInput._(this._$data);

  factory Input_DistrictsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_DistrictsSetInput._(result$data);
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

  CopyWith_Input_DistrictsSetInput<Input_DistrictsSetInput> get copyWith =>
      CopyWith_Input_DistrictsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictsSetInput<TRes> {
  factory CopyWith_Input_DistrictsSetInput(
    Input_DistrictsSetInput instance,
    TRes Function(Input_DistrictsSetInput) then,
  ) = _CopyWithImpl_Input_DistrictsSetInput;

  factory CopyWith_Input_DistrictsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_DistrictsSetInput<TRes>
    implements CopyWith_Input_DistrictsSetInput<TRes> {
  _CopyWithImpl_Input_DistrictsSetInput(this._instance, this._then);

  final Input_DistrictsSetInput _instance;

  final TRes Function(Input_DistrictsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_DistrictsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsSetInput<TRes>
    implements CopyWith_Input_DistrictsSetInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_DistrictsStreamCursorInput {
  factory Input_DistrictsStreamCursorInput({
    required Input_DistrictsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_DistrictsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_DistrictsStreamCursorInput._(this._$data);

  factory Input_DistrictsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_DistrictsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_DistrictsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_DistrictsStreamCursorValueInput);

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

  CopyWith_Input_DistrictsStreamCursorInput<Input_DistrictsStreamCursorInput>
  get copyWith => CopyWith_Input_DistrictsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsStreamCursorInput ||
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

abstract class CopyWith_Input_DistrictsStreamCursorInput<TRes> {
  factory CopyWith_Input_DistrictsStreamCursorInput(
    Input_DistrictsStreamCursorInput instance,
    TRes Function(Input_DistrictsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_DistrictsStreamCursorInput;

  factory CopyWith_Input_DistrictsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsStreamCursorInput;

  TRes call({
    Input_DistrictsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_DistrictsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_DistrictsStreamCursorInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_DistrictsStreamCursorInput(this._instance, this._then);

  final Input_DistrictsStreamCursorInput _instance;

  final TRes Function(Input_DistrictsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_DistrictsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_DistrictsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_DistrictsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_DistrictsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_DistrictsStreamCursorInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_DistrictsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_DistrictsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_DistrictsStreamCursorValueInput.stub(_res);
}

class Input_DistrictsStreamCursorValueInput {
  factory Input_DistrictsStreamCursorValueInput({
    UuidValue? id,
    String? name,
  }) => Input_DistrictsStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_DistrictsStreamCursorValueInput._(this._$data);

  factory Input_DistrictsStreamCursorValueInput.fromJson(
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
    return Input_DistrictsStreamCursorValueInput._(result$data);
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

  CopyWith_Input_DistrictsStreamCursorValueInput<
    Input_DistrictsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_DistrictsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsStreamCursorValueInput ||
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

abstract class CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_DistrictsStreamCursorValueInput(
    Input_DistrictsStreamCursorValueInput instance,
    TRes Function(Input_DistrictsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_DistrictsStreamCursorValueInput;

  factory CopyWith_Input_DistrictsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_DistrictsStreamCursorValueInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_DistrictsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_DistrictsStreamCursorValueInput _instance;

  final TRes Function(Input_DistrictsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_DistrictsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_DistrictsUpdates {
  factory Input_DistrictsUpdates({
    Input_DistrictsSetInput? $_set,
    required Input_DistrictsBoolExp where,
  }) => Input_DistrictsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_DistrictsUpdates._(this._$data);

  factory Input_DistrictsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_DistrictsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_DistrictsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_DistrictsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsSetInput? get $_set =>
      (_$data['_set'] as Input_DistrictsSetInput?);

  Input_DistrictsBoolExp get where =>
      (_$data['where'] as Input_DistrictsBoolExp);

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

  CopyWith_Input_DistrictsUpdates<Input_DistrictsUpdates> get copyWith =>
      CopyWith_Input_DistrictsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictsUpdates<TRes> {
  factory CopyWith_Input_DistrictsUpdates(
    Input_DistrictsUpdates instance,
    TRes Function(Input_DistrictsUpdates) then,
  ) = _CopyWithImpl_Input_DistrictsUpdates;

  factory CopyWith_Input_DistrictsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsUpdates;

  TRes call({Input_DistrictsSetInput? $_set, Input_DistrictsBoolExp? where});
  CopyWith_Input_DistrictsSetInput<TRes> get $_set;
  CopyWith_Input_DistrictsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DistrictsUpdates<TRes>
    implements CopyWith_Input_DistrictsUpdates<TRes> {
  _CopyWithImpl_Input_DistrictsUpdates(this._instance, this._then);

  final Input_DistrictsUpdates _instance;

  final TRes Function(Input_DistrictsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_DistrictsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_DistrictsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_DistrictsBoolExp),
    }),
  );

  CopyWith_Input_DistrictsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_DistrictsSetInput.stub(_then(_instance))
        : CopyWith_Input_DistrictsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_DistrictsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_DistrictsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_DistrictsUpdates<TRes>
    implements CopyWith_Input_DistrictsUpdates<TRes> {
  _CopyWithStubImpl_Input_DistrictsUpdates(this._res);

  TRes _res;

  call({Input_DistrictsSetInput? $_set, Input_DistrictsBoolExp? where}) => _res;

  CopyWith_Input_DistrictsSetInput<TRes> get $_set =>
      CopyWith_Input_DistrictsSetInput.stub(_res);

  CopyWith_Input_DistrictsBoolExp<TRes> get where =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);
}

class Input_FamiliesAdminsPhonesBoolExp {
  factory Input_FamiliesAdminsPhonesBoolExp({
    List<Input_FamiliesAdminsPhonesBoolExp>? $_and,
    Input_FamiliesAdminsPhonesBoolExp? $_not,
    List<Input_FamiliesAdminsPhonesBoolExp>? $_or,
    Input_JsonComparisonExp? aggregatedPhones,
    Input_UuidComparisonExp? familyId,
  }) => Input_FamiliesAdminsPhonesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (aggregatedPhones != null) r'aggregatedPhones': aggregatedPhones,
    if (familyId != null) r'familyId': familyId,
  });

  Input_FamiliesAdminsPhonesBoolExp._(this._$data);

  factory Input_FamiliesAdminsPhonesBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = data['aggregatedPhones'];
      result$data['aggregatedPhones'] = l$aggregatedPhones == null
          ? null
          : Input_JsonComparisonExp.fromJson(
              (l$aggregatedPhones as Map<String, dynamic>),
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
    return Input_FamiliesAdminsPhonesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesAdminsPhonesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FamiliesAdminsPhonesBoolExp>?);

  Input_FamiliesAdminsPhonesBoolExp? get $_not =>
      (_$data['_not'] as Input_FamiliesAdminsPhonesBoolExp?);

  List<Input_FamiliesAdminsPhonesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FamiliesAdminsPhonesBoolExp>?);

  Input_JsonComparisonExp? get aggregatedPhones =>
      (_$data['aggregatedPhones'] as Input_JsonComparisonExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = aggregatedPhones;
      result$data['aggregatedPhones'] = l$aggregatedPhones?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesAdminsPhonesBoolExp<Input_FamiliesAdminsPhonesBoolExp>
  get copyWith => CopyWith_Input_FamiliesAdminsPhonesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesBoolExp ||
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
    final l$aggregatedPhones = aggregatedPhones;
    final lOther$aggregatedPhones = other.aggregatedPhones;
    if (_$data.containsKey('aggregatedPhones') !=
        other._$data.containsKey('aggregatedPhones')) {
      return false;
    }
    if (l$aggregatedPhones != lOther$aggregatedPhones) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$aggregatedPhones = aggregatedPhones;
    final l$familyId = familyId;
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
      _$data.containsKey('aggregatedPhones') ? l$aggregatedPhones : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> {
  factory CopyWith_Input_FamiliesAdminsPhonesBoolExp(
    Input_FamiliesAdminsPhonesBoolExp instance,
    TRes Function(Input_FamiliesAdminsPhonesBoolExp) then,
  ) = _CopyWithImpl_Input_FamiliesAdminsPhonesBoolExp;

  factory CopyWith_Input_FamiliesAdminsPhonesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesAdminsPhonesBoolExp;

  TRes call({
    List<Input_FamiliesAdminsPhonesBoolExp>? $_and,
    Input_FamiliesAdminsPhonesBoolExp? $_not,
    List<Input_FamiliesAdminsPhonesBoolExp>? $_or,
    Input_JsonComparisonExp? aggregatedPhones,
    Input_UuidComparisonExp? familyId,
  });
  TRes $_and(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_JsonComparisonExp<TRes> get aggregatedPhones;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
}

class _CopyWithImpl_Input_FamiliesAdminsPhonesBoolExp<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> {
  _CopyWithImpl_Input_FamiliesAdminsPhonesBoolExp(this._instance, this._then);

  final Input_FamiliesAdminsPhonesBoolExp _instance;

  final TRes Function(Input_FamiliesAdminsPhonesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? aggregatedPhones = _undefined,
    Object? familyId = _undefined,
  }) => _then(
    Input_FamiliesAdminsPhonesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_FamiliesAdminsPhonesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_FamiliesAdminsPhonesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_FamiliesAdminsPhonesBoolExp>?),
      if (aggregatedPhones != _undefined)
        'aggregatedPhones': (aggregatedPhones as Input_JsonComparisonExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_FamiliesAdminsPhonesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_FamiliesAdminsPhonesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesAdminsPhonesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_FamiliesAdminsPhonesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_JsonComparisonExp<TRes> get aggregatedPhones {
    final local$aggregatedPhones = _instance.aggregatedPhones;
    return local$aggregatedPhones == null
        ? CopyWith_Input_JsonComparisonExp.stub(_then(_instance))
        : CopyWith_Input_JsonComparisonExp(
            local$aggregatedPhones,
            (e) => call(aggregatedPhones: e),
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
}

class _CopyWithStubImpl_Input_FamiliesAdminsPhonesBoolExp<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> {
  _CopyWithStubImpl_Input_FamiliesAdminsPhonesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_FamiliesAdminsPhonesBoolExp>? $_and,
    Input_FamiliesAdminsPhonesBoolExp? $_not,
    List<Input_FamiliesAdminsPhonesBoolExp>? $_or,
    Input_JsonComparisonExp? aggregatedPhones,
    Input_UuidComparisonExp? familyId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> get $_not =>
      CopyWith_Input_FamiliesAdminsPhonesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_JsonComparisonExp<TRes> get aggregatedPhones =>
      CopyWith_Input_JsonComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_FamiliesAdminsPhonesOrderBy {
  factory Input_FamiliesAdminsPhonesOrderBy({
    Enum_OrderBy? aggregatedPhones,
    Enum_OrderBy? familyId,
  }) => Input_FamiliesAdminsPhonesOrderBy._({
    if (aggregatedPhones != null) r'aggregatedPhones': aggregatedPhones,
    if (familyId != null) r'familyId': familyId,
  });

  Input_FamiliesAdminsPhonesOrderBy._(this._$data);

  factory Input_FamiliesAdminsPhonesOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = data['aggregatedPhones'];
      result$data['aggregatedPhones'] = l$aggregatedPhones == null
          ? null
          : fromJson_Enum_OrderBy((l$aggregatedPhones as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    return Input_FamiliesAdminsPhonesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get aggregatedPhones =>
      (_$data['aggregatedPhones'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = aggregatedPhones;
      result$data['aggregatedPhones'] = l$aggregatedPhones == null
          ? null
          : toJson_Enum_OrderBy(l$aggregatedPhones);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesAdminsPhonesOrderBy<Input_FamiliesAdminsPhonesOrderBy>
  get copyWith => CopyWith_Input_FamiliesAdminsPhonesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregatedPhones = aggregatedPhones;
    final lOther$aggregatedPhones = other.aggregatedPhones;
    if (_$data.containsKey('aggregatedPhones') !=
        other._$data.containsKey('aggregatedPhones')) {
      return false;
    }
    if (l$aggregatedPhones != lOther$aggregatedPhones) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$aggregatedPhones = aggregatedPhones;
    final l$familyId = familyId;
    return Object.hashAll([
      _$data.containsKey('aggregatedPhones') ? l$aggregatedPhones : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesAdminsPhonesOrderBy<TRes> {
  factory CopyWith_Input_FamiliesAdminsPhonesOrderBy(
    Input_FamiliesAdminsPhonesOrderBy instance,
    TRes Function(Input_FamiliesAdminsPhonesOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesAdminsPhonesOrderBy;

  factory CopyWith_Input_FamiliesAdminsPhonesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesAdminsPhonesOrderBy;

  TRes call({Enum_OrderBy? aggregatedPhones, Enum_OrderBy? familyId});
}

class _CopyWithImpl_Input_FamiliesAdminsPhonesOrderBy<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesAdminsPhonesOrderBy(this._instance, this._then);

  final Input_FamiliesAdminsPhonesOrderBy _instance;

  final TRes Function(Input_FamiliesAdminsPhonesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregatedPhones = _undefined,
    Object? familyId = _undefined,
  }) => _then(
    Input_FamiliesAdminsPhonesOrderBy._({
      ..._instance._$data,
      if (aggregatedPhones != _undefined)
        'aggregatedPhones': (aggregatedPhones as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesAdminsPhonesOrderBy<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesAdminsPhonesOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? aggregatedPhones, Enum_OrderBy? familyId}) => _res;
}

class Input_FamiliesAdminsPhonesStreamCursorInput {
  factory Input_FamiliesAdminsPhonesStreamCursorInput({
    required Input_FamiliesAdminsPhonesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_FamiliesAdminsPhonesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_FamiliesAdminsPhonesStreamCursorInput._(this._$data);

  factory Input_FamiliesAdminsPhonesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_FamiliesAdminsPhonesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_FamiliesAdminsPhonesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesAdminsPhonesStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_FamiliesAdminsPhonesStreamCursorValueInput);

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

  CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput<
    Input_FamiliesAdminsPhonesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesStreamCursorInput ||
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

abstract class CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput<TRes> {
  factory CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput(
    Input_FamiliesAdminsPhonesStreamCursorInput instance,
    TRes Function(Input_FamiliesAdminsPhonesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_FamiliesAdminsPhonesStreamCursorInput;

  factory CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesAdminsPhonesStreamCursorInput;

  TRes call({
    Input_FamiliesAdminsPhonesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_FamiliesAdminsPhonesStreamCursorInput<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_FamiliesAdminsPhonesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesAdminsPhonesStreamCursorInput _instance;

  final TRes Function(Input_FamiliesAdminsPhonesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_FamiliesAdminsPhonesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_FamiliesAdminsPhonesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_FamiliesAdminsPhonesStreamCursorInput<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesAdminsPhonesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_FamiliesAdminsPhonesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput.stub(_res);
}

class Input_FamiliesAdminsPhonesStreamCursorValueInput {
  factory Input_FamiliesAdminsPhonesStreamCursorValueInput({
    Json? aggregatedPhones,
    UuidValue? familyId,
  }) => Input_FamiliesAdminsPhonesStreamCursorValueInput._({
    if (aggregatedPhones != null) r'aggregatedPhones': aggregatedPhones,
    if (familyId != null) r'familyId': familyId,
  });

  Input_FamiliesAdminsPhonesStreamCursorValueInput._(this._$data);

  factory Input_FamiliesAdminsPhonesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = data['aggregatedPhones'];
      result$data['aggregatedPhones'] = (l$aggregatedPhones as Json?);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    return Input_FamiliesAdminsPhonesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get aggregatedPhones => (_$data['aggregatedPhones'] as Json?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = aggregatedPhones;
      result$data['aggregatedPhones'] = l$aggregatedPhones;
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<
    Input_FamiliesAdminsPhonesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregatedPhones = aggregatedPhones;
    final lOther$aggregatedPhones = other.aggregatedPhones;
    if (_$data.containsKey('aggregatedPhones') !=
        other._$data.containsKey('aggregatedPhones')) {
      return false;
    }
    if (l$aggregatedPhones != lOther$aggregatedPhones) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$aggregatedPhones = aggregatedPhones;
    final l$familyId = familyId;
    return Object.hashAll([
      _$data.containsKey('aggregatedPhones') ? l$aggregatedPhones : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput(
    Input_FamiliesAdminsPhonesStreamCursorValueInput instance,
    TRes Function(Input_FamiliesAdminsPhonesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_FamiliesAdminsPhonesStreamCursorValueInput;

  factory CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_FamiliesAdminsPhonesStreamCursorValueInput;

  TRes call({Json? aggregatedPhones, UuidValue? familyId});
}

class _CopyWithImpl_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_FamiliesAdminsPhonesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesAdminsPhonesStreamCursorValueInput _instance;

  final TRes Function(Input_FamiliesAdminsPhonesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregatedPhones = _undefined,
    Object? familyId = _undefined,
  }) => _then(
    Input_FamiliesAdminsPhonesStreamCursorValueInput._({
      ..._instance._$data,
      if (aggregatedPhones != _undefined)
        'aggregatedPhones': (aggregatedPhones as Json?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesAdminsPhonesStreamCursorValueInput(this._res);

  TRes _res;

  call({Json? aggregatedPhones, UuidValue? familyId}) => _res;
}

class Input_FamiliesBoolExp {
  factory Input_FamiliesBoolExp({
    List<Input_FamiliesBoolExp>? $_and,
    Input_FamiliesBoolExp? $_not,
    List<Input_FamiliesBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_StringComparisonExp? blurhash,
    Input_FamiliesFamiliesBoolExp? children,
    Input_ChurchesBoolExp? church,
    Input_UuidComparisonExp? churchId,
    Input_BigintComparisonExp? color,
    Input_StringComparisonExp? deceasedSpouseName,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesAdminsPhonesBoolExp? familyAdminsPhones,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryLatestFatherVisitsBoolExp? lastFatherVisit,
    Input_HistoryLatestVisitsBoolExp? lastVisit,
    Input_DateComparisonExp? marriageDate,
    Input_StringComparisonExp? name,
    Input_StringComparisonExp? notes,
    Input_FamiliesFamiliesBoolExp? parents,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StringComparisonExp? status,
    Input_StoresBoolExp? stores,
    Input_StoresAggregateBoolExp? storesAggregate,
    Input_BooleanComparisonExp? userCanEdit,
    Input_HistoryVisitHistoryBoolExp? visitHistory,
    Input_HistoryVisitHistoryAggregateBoolExp? visitHistoryAggregate,
  }) => Input_FamiliesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (address != null) r'address': address,
    if (blurhash != null) r'blurhash': blurhash,
    if (children != null) r'children': children,
    if (church != null) r'church': church,
    if (churchId != null) r'churchId': churchId,
    if (color != null) r'color': color,
    if (deceasedSpouseName != null) r'deceasedSpouseName': deceasedSpouseName,
    if (editHistory != null) r'editHistory': editHistory,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (familyAdminsPhones != null) r'familyAdminsPhones': familyAdminsPhones,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastFatherVisit != null) r'lastFatherVisit': lastFatherVisit,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (marriageDate != null) r'marriageDate': marriageDate,
    if (name != null) r'name': name,
    if (notes != null) r'notes': notes,
    if (parents != null) r'parents': parents,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (status != null) r'status': status,
    if (stores != null) r'stores': stores,
    if (storesAggregate != null) r'storesAggregate': storesAggregate,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
    if (visitHistory != null) r'visitHistory': visitHistory,
    if (visitHistoryAggregate != null)
      r'visitHistoryAggregate': visitHistoryAggregate,
  });

  Input_FamiliesBoolExp._(this._$data);

  factory Input_FamiliesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesBoolExp.fromJson(
              (l$address as Map<String, dynamic>),
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
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = l$children == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$children as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesBoolExp.fromJson((l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$churchId as Map<String, dynamic>),
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
    if (data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = data['deceasedSpouseName'];
      result$data['deceasedSpouseName'] = l$deceasedSpouseName == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$deceasedSpouseName as Map<String, dynamic>),
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
    if (data.containsKey('familyAdminsPhones')) {
      final l$familyAdminsPhones = data['familyAdminsPhones'];
      result$data['familyAdminsPhones'] = l$familyAdminsPhones == null
          ? null
          : Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (l$familyAdminsPhones as Map<String, dynamic>),
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
    if (data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = data['lastFatherVisit'];
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : Input_HistoryLatestFatherVisitsBoolExp.fromJson(
              (l$lastFatherVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_HistoryLatestVisitsBoolExp.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('marriageDate')) {
      final l$marriageDate = data['marriageDate'];
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : Input_DateComparisonExp.fromJson(
              (l$marriageDate as Map<String, dynamic>),
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
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$notes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('parents')) {
      final l$parents = data['parents'];
      result$data['parents'] = l$parents == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$parents as Map<String, dynamic>),
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
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$status as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stores')) {
      final l$stores = data['stores'];
      result$data['stores'] = l$stores == null
          ? null
          : Input_StoresBoolExp.fromJson((l$stores as Map<String, dynamic>));
    }
    if (data.containsKey('storesAggregate')) {
      final l$storesAggregate = data['storesAggregate'];
      result$data['storesAggregate'] = l$storesAggregate == null
          ? null
          : Input_StoresAggregateBoolExp.fromJson(
              (l$storesAggregate as Map<String, dynamic>),
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
    if (data.containsKey('visitHistory')) {
      final l$visitHistory = data['visitHistory'];
      result$data['visitHistory'] = l$visitHistory == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$visitHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = data['visitHistoryAggregate'];
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate == null
          ? null
          : Input_HistoryVisitHistoryAggregateBoolExp.fromJson(
              (l$visitHistoryAggregate as Map<String, dynamic>),
            );
    }
    return Input_FamiliesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FamiliesBoolExp>?);

  Input_FamiliesBoolExp? get $_not =>
      (_$data['_not'] as Input_FamiliesBoolExp?);

  List<Input_FamiliesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FamiliesBoolExp>?);

  Input_AddressesBoolExp? get address =>
      (_$data['address'] as Input_AddressesBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_FamiliesFamiliesBoolExp? get children =>
      (_$data['children'] as Input_FamiliesFamiliesBoolExp?);

  Input_ChurchesBoolExp? get church =>
      (_$data['church'] as Input_ChurchesBoolExp?);

  Input_UuidComparisonExp? get churchId =>
      (_$data['churchId'] as Input_UuidComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_StringComparisonExp? get deceasedSpouseName =>
      (_$data['deceasedSpouseName'] as Input_StringComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_FamiliesAdminsPhonesBoolExp? get familyAdminsPhones =>
      (_$data['familyAdminsPhones'] as Input_FamiliesAdminsPhonesBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryLatestFatherVisitsBoolExp? get lastFatherVisit =>
      (_$data['lastFatherVisit'] as Input_HistoryLatestFatherVisitsBoolExp?);

  Input_HistoryLatestVisitsBoolExp? get lastVisit =>
      (_$data['lastVisit'] as Input_HistoryLatestVisitsBoolExp?);

  Input_DateComparisonExp? get marriageDate =>
      (_$data['marriageDate'] as Input_DateComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_StringComparisonExp? get notes =>
      (_$data['notes'] as Input_StringComparisonExp?);

  Input_FamiliesFamiliesBoolExp? get parents =>
      (_$data['parents'] as Input_FamiliesFamiliesBoolExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_StringComparisonExp? get status =>
      (_$data['status'] as Input_StringComparisonExp?);

  Input_StoresBoolExp? get stores => (_$data['stores'] as Input_StoresBoolExp?);

  Input_StoresAggregateBoolExp? get storesAggregate =>
      (_$data['storesAggregate'] as Input_StoresAggregateBoolExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

  Input_HistoryVisitHistoryBoolExp? get visitHistory =>
      (_$data['visitHistory'] as Input_HistoryVisitHistoryBoolExp?);

  Input_HistoryVisitHistoryAggregateBoolExp? get visitHistoryAggregate =>
      (_$data['visitHistoryAggregate']
          as Input_HistoryVisitHistoryAggregateBoolExp?);

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
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = deceasedSpouseName;
      result$data['deceasedSpouseName'] = l$deceasedSpouseName?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('familyAdminsPhones')) {
      final l$familyAdminsPhones = familyAdminsPhones;
      result$data['familyAdminsPhones'] = l$familyAdminsPhones?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = lastFatherVisit;
      result$data['lastFatherVisit'] = l$lastFatherVisit?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('marriageDate')) {
      final l$marriageDate = marriageDate;
      result$data['marriageDate'] = l$marriageDate?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('parents')) {
      final l$parents = parents;
      result$data['parents'] = l$parents?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('stores')) {
      final l$stores = stores;
      result$data['stores'] = l$stores?.toJson();
    }
    if (_$data.containsKey('storesAggregate')) {
      final l$storesAggregate = storesAggregate;
      result$data['storesAggregate'] = l$storesAggregate?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    if (_$data.containsKey('visitHistory')) {
      final l$visitHistory = visitHistory;
      result$data['visitHistory'] = l$visitHistory?.toJson();
    }
    if (_$data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = visitHistoryAggregate;
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesBoolExp<Input_FamiliesBoolExp> get copyWith =>
      CopyWith_Input_FamiliesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesBoolExp || runtimeType != other.runtimeType) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$children = children;
    final lOther$children = other.children;
    if (_$data.containsKey('children') !=
        other._$data.containsKey('children')) {
      return false;
    }
    if (l$children != lOther$children) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (_$data.containsKey('deceasedSpouseName') !=
        other._$data.containsKey('deceasedSpouseName')) {
      return false;
    }
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
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
    final l$familyAdminsPhones = familyAdminsPhones;
    final lOther$familyAdminsPhones = other.familyAdminsPhones;
    if (_$data.containsKey('familyAdminsPhones') !=
        other._$data.containsKey('familyAdminsPhones')) {
      return false;
    }
    if (l$familyAdminsPhones != lOther$familyAdminsPhones) {
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
    final l$lastFatherVisit = lastFatherVisit;
    final lOther$lastFatherVisit = other.lastFatherVisit;
    if (_$data.containsKey('lastFatherVisit') !=
        other._$data.containsKey('lastFatherVisit')) {
      return false;
    }
    if (l$lastFatherVisit != lOther$lastFatherVisit) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (_$data.containsKey('marriageDate') !=
        other._$data.containsKey('marriageDate')) {
      return false;
    }
    if (l$marriageDate != lOther$marriageDate) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (_$data.containsKey('parents') != other._$data.containsKey('parents')) {
      return false;
    }
    if (l$parents != lOther$parents) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (_$data.containsKey('stores') != other._$data.containsKey('stores')) {
      return false;
    }
    if (l$stores != lOther$stores) {
      return false;
    }
    final l$storesAggregate = storesAggregate;
    final lOther$storesAggregate = other.storesAggregate;
    if (_$data.containsKey('storesAggregate') !=
        other._$data.containsKey('storesAggregate')) {
      return false;
    }
    if (l$storesAggregate != lOther$storesAggregate) {
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
    final l$visitHistory = visitHistory;
    final lOther$visitHistory = other.visitHistory;
    if (_$data.containsKey('visitHistory') !=
        other._$data.containsKey('visitHistory')) {
      return false;
    }
    if (l$visitHistory != lOther$visitHistory) {
      return false;
    }
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final lOther$visitHistoryAggregate = other.visitHistoryAggregate;
    if (_$data.containsKey('visitHistoryAggregate') !=
        other._$data.containsKey('visitHistoryAggregate')) {
      return false;
    }
    if (l$visitHistoryAggregate != lOther$visitHistoryAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$address = address;
    final l$blurhash = blurhash;
    final l$children = children;
    final l$church = church;
    final l$churchId = churchId;
    final l$color = color;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$familyAdminsPhones = familyAdminsPhones;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$lastFatherVisit = lastFatherVisit;
    final l$lastVisit = lastVisit;
    final l$marriageDate = marriageDate;
    final l$name = name;
    final l$notes = notes;
    final l$parents = parents;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$status = status;
    final l$stores = stores;
    final l$storesAggregate = storesAggregate;
    final l$userCanEdit = userCanEdit;
    final l$visitHistory = visitHistory;
    final l$visitHistoryAggregate = visitHistoryAggregate;
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
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('children') ? l$children : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('deceasedSpouseName')
          ? l$deceasedSpouseName
          : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('familyAdminsPhones')
          ? l$familyAdminsPhones
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastFatherVisit') ? l$lastFatherVisit : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('marriageDate') ? l$marriageDate : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('parents') ? l$parents : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('stores') ? l$stores : const {},
      _$data.containsKey('storesAggregate') ? l$storesAggregate : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
      _$data.containsKey('visitHistory') ? l$visitHistory : const {},
      _$data.containsKey('visitHistoryAggregate')
          ? l$visitHistoryAggregate
          : const {},
    ]);
  }
}
