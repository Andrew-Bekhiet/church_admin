// Part 39 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_HobbiesOrderBy<TRes> {
  factory CopyWith_Input_HobbiesOrderBy(
    Input_HobbiesOrderBy instance,
    TRes Function(Input_HobbiesOrderBy) then,
  ) = _CopyWithImpl_Input_HobbiesOrderBy;

  factory CopyWith_Input_HobbiesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsHobbiesAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_HobbiesOrderBy<TRes>
    implements CopyWith_Input_HobbiesOrderBy<TRes> {
  _CopyWithImpl_Input_HobbiesOrderBy(this._instance, this._then);

  final Input_HobbiesOrderBy _instance;

  final TRes Function(Input_HobbiesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_HobbiesOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsHobbiesAggregateOrderBy?),
    }),
  );

  CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsHobbiesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_HobbiesOrderBy<TRes>
    implements CopyWith_Input_HobbiesOrderBy<TRes> {
  _CopyWithStubImpl_Input_HobbiesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsHobbiesAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsHobbiesAggregateOrderBy.stub(_res);
}

class Input_HobbiesPkColumnsInput {
  factory Input_HobbiesPkColumnsInput({required UuidValue id}) =>
      Input_HobbiesPkColumnsInput._({r'id': id});

  Input_HobbiesPkColumnsInput._(this._$data);

  factory Input_HobbiesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_HobbiesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_HobbiesPkColumnsInput<Input_HobbiesPkColumnsInput>
  get copyWith => CopyWith_Input_HobbiesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesPkColumnsInput ||
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

abstract class CopyWith_Input_HobbiesPkColumnsInput<TRes> {
  factory CopyWith_Input_HobbiesPkColumnsInput(
    Input_HobbiesPkColumnsInput instance,
    TRes Function(Input_HobbiesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HobbiesPkColumnsInput;

  factory CopyWith_Input_HobbiesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_HobbiesPkColumnsInput<TRes>
    implements CopyWith_Input_HobbiesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HobbiesPkColumnsInput(this._instance, this._then);

  final Input_HobbiesPkColumnsInput _instance;

  final TRes Function(Input_HobbiesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_HobbiesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_HobbiesPkColumnsInput<TRes>
    implements CopyWith_Input_HobbiesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_HobbiesSetInput {
  factory Input_HobbiesSetInput({int? color, String? name}) =>
      Input_HobbiesSetInput._({
        if (color != null) r'color': color,
        if (name != null) r'name': name,
      });

  Input_HobbiesSetInput._(this._$data);

  factory Input_HobbiesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_HobbiesSetInput._(result$data);
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

  CopyWith_Input_HobbiesSetInput<Input_HobbiesSetInput> get copyWith =>
      CopyWith_Input_HobbiesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HobbiesSetInput<TRes> {
  factory CopyWith_Input_HobbiesSetInput(
    Input_HobbiesSetInput instance,
    TRes Function(Input_HobbiesSetInput) then,
  ) = _CopyWithImpl_Input_HobbiesSetInput;

  factory CopyWith_Input_HobbiesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesSetInput;

  TRes call({int? color, String? name});
}

class _CopyWithImpl_Input_HobbiesSetInput<TRes>
    implements CopyWith_Input_HobbiesSetInput<TRes> {
  _CopyWithImpl_Input_HobbiesSetInput(this._instance, this._then);

  final Input_HobbiesSetInput _instance;

  final TRes Function(Input_HobbiesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined, Object? name = _undefined}) => _then(
    Input_HobbiesSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HobbiesSetInput<TRes>
    implements CopyWith_Input_HobbiesSetInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesSetInput(this._res);

  TRes _res;

  call({int? color, String? name}) => _res;
}

class Input_HobbiesStreamCursorInput {
  factory Input_HobbiesStreamCursorInput({
    required Input_HobbiesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HobbiesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HobbiesStreamCursorInput._(this._$data);

  factory Input_HobbiesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_HobbiesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HobbiesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_HobbiesStreamCursorValueInput);

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

  CopyWith_Input_HobbiesStreamCursorInput<Input_HobbiesStreamCursorInput>
  get copyWith => CopyWith_Input_HobbiesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesStreamCursorInput ||
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

abstract class CopyWith_Input_HobbiesStreamCursorInput<TRes> {
  factory CopyWith_Input_HobbiesStreamCursorInput(
    Input_HobbiesStreamCursorInput instance,
    TRes Function(Input_HobbiesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HobbiesStreamCursorInput;

  factory CopyWith_Input_HobbiesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesStreamCursorInput;

  TRes call({
    Input_HobbiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HobbiesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_HobbiesStreamCursorInput<TRes>
    implements CopyWith_Input_HobbiesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HobbiesStreamCursorInput(this._instance, this._then);

  final Input_HobbiesStreamCursorInput _instance;

  final TRes Function(Input_HobbiesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HobbiesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_HobbiesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HobbiesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HobbiesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HobbiesStreamCursorInput<TRes>
    implements CopyWith_Input_HobbiesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HobbiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HobbiesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_HobbiesStreamCursorValueInput.stub(_res);
}

class Input_HobbiesStreamCursorValueInput {
  factory Input_HobbiesStreamCursorValueInput({
    int? color,
    UuidValue? id,
    String? name,
  }) => Input_HobbiesStreamCursorValueInput._({
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_HobbiesStreamCursorValueInput._(this._$data);

  factory Input_HobbiesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HobbiesStreamCursorValueInput._(result$data);
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

  CopyWith_Input_HobbiesStreamCursorValueInput<
    Input_HobbiesStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_HobbiesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesStreamCursorValueInput ||
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

abstract class CopyWith_Input_HobbiesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HobbiesStreamCursorValueInput(
    Input_HobbiesStreamCursorValueInput instance,
    TRes Function(Input_HobbiesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HobbiesStreamCursorValueInput;

  factory CopyWith_Input_HobbiesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesStreamCursorValueInput;

  TRes call({int? color, UuidValue? id, String? name});
}

class _CopyWithImpl_Input_HobbiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_HobbiesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HobbiesStreamCursorValueInput(this._instance, this._then);

  final Input_HobbiesStreamCursorValueInput _instance;

  final TRes Function(Input_HobbiesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_HobbiesStreamCursorValueInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HobbiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_HobbiesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HobbiesStreamCursorValueInput(this._res);

  TRes _res;

  call({int? color, UuidValue? id, String? name}) => _res;
}

class Input_HobbiesUpdates {
  factory Input_HobbiesUpdates({
    Input_HobbiesIncInput? $_inc,
    Input_HobbiesSetInput? $_set,
    required Input_HobbiesBoolExp where,
  }) => Input_HobbiesUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HobbiesUpdates._(this._$data);

  factory Input_HobbiesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_HobbiesIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HobbiesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_HobbiesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_HobbiesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesIncInput? get $_inc =>
      (_$data['_inc'] as Input_HobbiesIncInput?);

  Input_HobbiesSetInput? get $_set =>
      (_$data['_set'] as Input_HobbiesSetInput?);

  Input_HobbiesBoolExp get where => (_$data['where'] as Input_HobbiesBoolExp);

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

  CopyWith_Input_HobbiesUpdates<Input_HobbiesUpdates> get copyWith =>
      CopyWith_Input_HobbiesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HobbiesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HobbiesUpdates<TRes> {
  factory CopyWith_Input_HobbiesUpdates(
    Input_HobbiesUpdates instance,
    TRes Function(Input_HobbiesUpdates) then,
  ) = _CopyWithImpl_Input_HobbiesUpdates;

  factory CopyWith_Input_HobbiesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HobbiesUpdates;

  TRes call({
    Input_HobbiesIncInput? $_inc,
    Input_HobbiesSetInput? $_set,
    Input_HobbiesBoolExp? where,
  });
  CopyWith_Input_HobbiesIncInput<TRes> get $_inc;
  CopyWith_Input_HobbiesSetInput<TRes> get $_set;
  CopyWith_Input_HobbiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HobbiesUpdates<TRes>
    implements CopyWith_Input_HobbiesUpdates<TRes> {
  _CopyWithImpl_Input_HobbiesUpdates(this._instance, this._then);

  final Input_HobbiesUpdates _instance;

  final TRes Function(Input_HobbiesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HobbiesUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_HobbiesIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_HobbiesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_HobbiesBoolExp),
    }),
  );

  CopyWith_Input_HobbiesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_HobbiesIncInput.stub(_then(_instance))
        : CopyWith_Input_HobbiesIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_HobbiesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HobbiesSetInput.stub(_then(_instance))
        : CopyWith_Input_HobbiesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_HobbiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HobbiesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HobbiesUpdates<TRes>
    implements CopyWith_Input_HobbiesUpdates<TRes> {
  _CopyWithStubImpl_Input_HobbiesUpdates(this._res);

  TRes _res;

  call({
    Input_HobbiesIncInput? $_inc,
    Input_HobbiesSetInput? $_set,
    Input_HobbiesBoolExp? where,
  }) => _res;

  CopyWith_Input_HobbiesIncInput<TRes> get $_inc =>
      CopyWith_Input_HobbiesIncInput.stub(_res);

  CopyWith_Input_HobbiesSetInput<TRes> get $_set =>
      CopyWith_Input_HobbiesSetInput.stub(_res);

  CopyWith_Input_HobbiesBoolExp<TRes> get where =>
      CopyWith_Input_HobbiesBoolExp.stub(_res);
}

class Input_IntComparisonExp {
  factory Input_IntComparisonExp({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) => Input_IntComparisonExp._({
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

  Input_IntComparisonExp._(this._$data);

  factory Input_IntComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as int?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as int?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as int?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as int?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as int?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as int?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    return Input_IntComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get $_eq => (_$data['_eq'] as int?);

  int? get $_gt => (_$data['_gt'] as int?);

  int? get $_gte => (_$data['_gte'] as int?);

  List<int>? get $_in => (_$data['_in'] as List<int>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  int? get $_lt => (_$data['_lt'] as int?);

  int? get $_lte => (_$data['_lte'] as int?);

  int? get $_neq => (_$data['_neq'] as int?);

  List<int>? get $_nin => (_$data['_nin'] as List<int>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith_Input_IntComparisonExp<Input_IntComparisonExp> get copyWith =>
      CopyWith_Input_IntComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_IntComparisonExp || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_IntComparisonExp<TRes> {
  factory CopyWith_Input_IntComparisonExp(
    Input_IntComparisonExp instance,
    TRes Function(Input_IntComparisonExp) then,
  ) = _CopyWithImpl_Input_IntComparisonExp;

  factory CopyWith_Input_IntComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_IntComparisonExp;

  TRes call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  });
}

class _CopyWithImpl_Input_IntComparisonExp<TRes>
    implements CopyWith_Input_IntComparisonExp<TRes> {
  _CopyWithImpl_Input_IntComparisonExp(this._instance, this._then);

  final Input_IntComparisonExp _instance;

  final TRes Function(Input_IntComparisonExp) _then;

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
    Input_IntComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as int?),
      if ($_gt != _undefined) '_gt': ($_gt as int?),
      if ($_gte != _undefined) '_gte': ($_gte as int?),
      if ($_in != _undefined) '_in': ($_in as List<int>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as int?),
      if ($_lte != _undefined) '_lte': ($_lte as int?),
      if ($_neq != _undefined) '_neq': ($_neq as int?),
      if ($_nin != _undefined) '_nin': ($_nin as List<int>?),
    }),
  );
}

class _CopyWithStubImpl_Input_IntComparisonExp<TRes>
    implements CopyWith_Input_IntComparisonExp<TRes> {
  _CopyWithStubImpl_Input_IntComparisonExp(this._res);

  TRes _res;

  call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) => _res;
}

class Input_JobsBoolExp {
  factory Input_JobsBoolExp({
    List<Input_JobsBoolExp>? $_and,
    Input_JobsBoolExp? $_not,
    List<Input_JobsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_JobsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_JobsBoolExp._(this._$data);

  factory Input_JobsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_JobsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_JobsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_JobsBoolExp.fromJson((e as Map<String, dynamic>)))
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
    return Input_JobsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_JobsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_JobsBoolExp>?);

  Input_JobsBoolExp? get $_not => (_$data['_not'] as Input_JobsBoolExp?);

  List<Input_JobsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_JobsBoolExp>?);

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

  CopyWith_Input_JobsBoolExp<Input_JobsBoolExp> get copyWith =>
      CopyWith_Input_JobsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsBoolExp || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_JobsBoolExp<TRes> {
  factory CopyWith_Input_JobsBoolExp(
    Input_JobsBoolExp instance,
    TRes Function(Input_JobsBoolExp) then,
  ) = _CopyWithImpl_Input_JobsBoolExp;

  factory CopyWith_Input_JobsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsBoolExp;

  TRes call({
    List<Input_JobsBoolExp>? $_and,
    Input_JobsBoolExp? $_not,
    List<Input_JobsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_JobsBoolExp>? Function(
      Iterable<CopyWith_Input_JobsBoolExp<Input_JobsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_JobsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_JobsBoolExp>? Function(
      Iterable<CopyWith_Input_JobsBoolExp<Input_JobsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_JobsBoolExp<TRes>
    implements CopyWith_Input_JobsBoolExp<TRes> {
  _CopyWithImpl_Input_JobsBoolExp(this._instance, this._then);

  final Input_JobsBoolExp _instance;

  final TRes Function(Input_JobsBoolExp) _then;

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
    Input_JobsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_JobsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_JobsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_JobsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_JobsBoolExp>? Function(
      Iterable<CopyWith_Input_JobsBoolExp<Input_JobsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_JobsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_JobsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_JobsBoolExp.stub(_then(_instance))
        : CopyWith_Input_JobsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_JobsBoolExp>? Function(
      Iterable<CopyWith_Input_JobsBoolExp<Input_JobsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_JobsBoolExp(e, (i) => i)),
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

class _CopyWithStubImpl_Input_JobsBoolExp<TRes>
    implements CopyWith_Input_JobsBoolExp<TRes> {
  _CopyWithStubImpl_Input_JobsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_JobsBoolExp>? $_and,
    Input_JobsBoolExp? $_not,
    List<Input_JobsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_JobsBoolExp<TRes> get $_not =>
      CopyWith_Input_JobsBoolExp.stub(_res);

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

class Input_JobsInsertInput {
  factory Input_JobsInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_JobsInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_JobsInsertInput._(this._$data);

  factory Input_JobsInsertInput.fromJson(Map<String, dynamic> data) {
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
    return Input_JobsInsertInput._(result$data);
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

  CopyWith_Input_JobsInsertInput<Input_JobsInsertInput> get copyWith =>
      CopyWith_Input_JobsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsInsertInput || runtimeType != other.runtimeType) {
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
