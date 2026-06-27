// Part 37 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonTypesBoolExp<TRes> {
  factory CopyWith_Input_PersonTypesBoolExp(
    Input_PersonTypesBoolExp instance,
    TRes Function(Input_PersonTypesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonTypesBoolExp;

  factory CopyWith_Input_PersonTypesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesBoolExp;

  TRes call({
    List<Input_PersonTypesBoolExp>? $_and,
    Input_PersonTypesBoolExp? $_not,
    List<Input_PersonTypesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isFamilyAdmin,
    Input_BooleanComparisonExp? isHidden,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonTypesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isFamilyAdmin;
  CopyWith_Input_BooleanComparisonExp<TRes> get isHidden;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_IntComparisonExp<TRes> get order;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonTypesBoolExp<TRes>
    implements CopyWith_Input_PersonTypesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonTypesBoolExp(this._instance, this._then);

  final Input_PersonTypesBoolExp _instance;

  final TRes Function(Input_PersonTypesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_PersonTypesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonTypesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonTypesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_PersonTypesBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isFamilyAdmin != _undefined)
        'isFamilyAdmin': (isFamilyAdmin as Input_BooleanComparisonExp?),
      if (isHidden != _undefined)
        'isHidden': (isHidden as Input_BooleanComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (order != _undefined) 'order': (order as Input_IntComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonTypesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonTypesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonTypesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isFamilyAdmin {
    final local$isFamilyAdmin = _instance.isFamilyAdmin;
    return local$isFamilyAdmin == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isFamilyAdmin,
            (e) => call(isFamilyAdmin: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isHidden {
    final local$isHidden = _instance.isHidden;
    return local$isHidden == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isHidden,
            (e) => call(isHidden: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(local$order, (e) => call(order: e));
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

class _CopyWithStubImpl_Input_PersonTypesBoolExp<TRes>
    implements CopyWith_Input_PersonTypesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonTypesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonTypesBoolExp>? $_and,
    Input_PersonTypesBoolExp? $_not,
    List<Input_PersonTypesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isFamilyAdmin,
    Input_BooleanComparisonExp? isHidden,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonTypesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isFamilyAdmin =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isHidden =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get order =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_PersonTypesInsertInput {
  factory Input_PersonTypesInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_PersonTypesInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_PersonTypesInsertInput._(this._$data);

  factory Input_PersonTypesInsertInput.fromJson(Map<String, dynamic> data) {
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
    return Input_PersonTypesInsertInput._(result$data);
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

  CopyWith_Input_PersonTypesInsertInput<Input_PersonTypesInsertInput>
  get copyWith => CopyWith_Input_PersonTypesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesInsertInput ||
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

abstract class CopyWith_Input_PersonTypesInsertInput<TRes> {
  factory CopyWith_Input_PersonTypesInsertInput(
    Input_PersonTypesInsertInput instance,
    TRes Function(Input_PersonTypesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonTypesInsertInput;

  factory CopyWith_Input_PersonTypesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesInsertInput;

  TRes call({String? name, Input_PersonsArrRelInsertInput? persons});
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_PersonTypesInsertInput<TRes>
    implements CopyWith_Input_PersonTypesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonTypesInsertInput(this._instance, this._then);

  final Input_PersonTypesInsertInput _instance;

  final TRes Function(Input_PersonTypesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? persons = _undefined}) => _then(
    Input_PersonTypesInsertInput._({
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

class _CopyWithStubImpl_Input_PersonTypesInsertInput<TRes>
    implements CopyWith_Input_PersonTypesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesInsertInput(this._res);

  TRes _res;

  call({String? name, Input_PersonsArrRelInsertInput? persons}) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_PersonTypesObjRelInsertInput {
  factory Input_PersonTypesObjRelInsertInput({
    required Input_PersonTypesInsertInput data,
    Input_PersonTypesOnConflict? onConflict,
  }) => Input_PersonTypesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonTypesObjRelInsertInput._(this._$data);

  factory Input_PersonTypesObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_PersonTypesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonTypesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypesInsertInput get data =>
      (_$data['data'] as Input_PersonTypesInsertInput);

  Input_PersonTypesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonTypesOnConflict?);

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

  CopyWith_Input_PersonTypesObjRelInsertInput<
    Input_PersonTypesObjRelInsertInput
  >
  get copyWith => CopyWith_Input_PersonTypesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesObjRelInsertInput ||
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

abstract class CopyWith_Input_PersonTypesObjRelInsertInput<TRes> {
  factory CopyWith_Input_PersonTypesObjRelInsertInput(
    Input_PersonTypesObjRelInsertInput instance,
    TRes Function(Input_PersonTypesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonTypesObjRelInsertInput;

  factory CopyWith_Input_PersonTypesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesObjRelInsertInput;

  TRes call({
    Input_PersonTypesInsertInput? data,
    Input_PersonTypesOnConflict? onConflict,
  });
  CopyWith_Input_PersonTypesInsertInput<TRes> get data;
  CopyWith_Input_PersonTypesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonTypesObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonTypesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonTypesObjRelInsertInput(this._instance, this._then);

  final Input_PersonTypesObjRelInsertInput _instance;

  final TRes Function(Input_PersonTypesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonTypesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_PersonTypesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonTypesOnConflict?),
        }),
      );

  CopyWith_Input_PersonTypesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_PersonTypesInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_PersonTypesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonTypesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonTypesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonTypesObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonTypesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonTypesInsertInput? data,
    Input_PersonTypesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_PersonTypesInsertInput<TRes> get data =>
      CopyWith_Input_PersonTypesInsertInput.stub(_res);

  CopyWith_Input_PersonTypesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonTypesOnConflict.stub(_res);
}

class Input_PersonTypesOnConflict {
  factory Input_PersonTypesOnConflict({
    required Enum_PersonTypesConstraint constraint,
    List<Enum_PersonTypesUpdateColumn>? updateColumns,
    Input_PersonTypesBoolExp? where,
  }) => Input_PersonTypesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonTypesOnConflict._(this._$data);

  factory Input_PersonTypesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonTypesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonTypesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonTypesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonTypesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonTypesConstraint);

  List<Enum_PersonTypesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonTypesUpdateColumn>?);

  Input_PersonTypesBoolExp? get where =>
      (_$data['where'] as Input_PersonTypesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonTypesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonTypesUpdateColumn>)
              .map((e) => toJson_Enum_PersonTypesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesOnConflict<Input_PersonTypesOnConflict>
  get copyWith => CopyWith_Input_PersonTypesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesOnConflict ||
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

abstract class CopyWith_Input_PersonTypesOnConflict<TRes> {
  factory CopyWith_Input_PersonTypesOnConflict(
    Input_PersonTypesOnConflict instance,
    TRes Function(Input_PersonTypesOnConflict) then,
  ) = _CopyWithImpl_Input_PersonTypesOnConflict;

  factory CopyWith_Input_PersonTypesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesOnConflict;

  TRes call({
    Enum_PersonTypesConstraint? constraint,
    List<Enum_PersonTypesUpdateColumn>? updateColumns,
    Input_PersonTypesBoolExp? where,
  });
  CopyWith_Input_PersonTypesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonTypesOnConflict<TRes>
    implements CopyWith_Input_PersonTypesOnConflict<TRes> {
  _CopyWithImpl_Input_PersonTypesOnConflict(this._instance, this._then);

  final Input_PersonTypesOnConflict _instance;

  final TRes Function(Input_PersonTypesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonTypesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_PersonTypesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_PersonTypesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_PersonTypesBoolExp?),
    }),
  );

  CopyWith_Input_PersonTypesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonTypesOnConflict<TRes>
    implements CopyWith_Input_PersonTypesOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonTypesOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonTypesConstraint? constraint,
    List<Enum_PersonTypesUpdateColumn>? updateColumns,
    Input_PersonTypesBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonTypesBoolExp<TRes> get where =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);
}

class Input_PersonTypesOrderBy {
  factory Input_PersonTypesOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? isFamilyAdmin,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_PersonTypesOrderBy._({
    if (id != null) r'id': id,
    if (isFamilyAdmin != null) r'isFamilyAdmin': isFamilyAdmin,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_PersonTypesOrderBy._(this._$data);

  factory Input_PersonTypesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = data['isFamilyAdmin'];
      result$data['isFamilyAdmin'] = l$isFamilyAdmin == null
          ? null
          : fromJson_Enum_OrderBy((l$isFamilyAdmin as String));
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_OrderBy((l$order as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get isFamilyAdmin => (_$data['isFamilyAdmin'] as Enum_OrderBy?);

  Enum_OrderBy? get isHidden => (_$data['isHidden'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get order => (_$data['order'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = isFamilyAdmin;
      result$data['isFamilyAdmin'] = l$isFamilyAdmin == null
          ? null
          : toJson_Enum_OrderBy(l$isFamilyAdmin);
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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_OrderBy(l$order);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesOrderBy<Input_PersonTypesOrderBy> get copyWith =>
      CopyWith_Input_PersonTypesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesOrderBy ||
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (_$data.containsKey('isFamilyAdmin') !=
        other._$data.containsKey('isFamilyAdmin')) {
      return false;
    }
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$name = name;
    final l$order = order;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isFamilyAdmin') ? l$isFamilyAdmin : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonTypesOrderBy<TRes> {
  factory CopyWith_Input_PersonTypesOrderBy(
    Input_PersonTypesOrderBy instance,
    TRes Function(Input_PersonTypesOrderBy) then,
  ) = _CopyWithImpl_Input_PersonTypesOrderBy;

  factory CopyWith_Input_PersonTypesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? isFamilyAdmin,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonTypesOrderBy<TRes>
    implements CopyWith_Input_PersonTypesOrderBy<TRes> {
  _CopyWithImpl_Input_PersonTypesOrderBy(this._instance, this._then);

  final Input_PersonTypesOrderBy _instance;

  final TRes Function(Input_PersonTypesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_PersonTypesOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (isFamilyAdmin != _undefined)
        'isFamilyAdmin': (isFamilyAdmin as Enum_OrderBy?),
      if (isHidden != _undefined) 'isHidden': (isHidden as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (order != _undefined) 'order': (order as Enum_OrderBy?),
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

class _CopyWithStubImpl_Input_PersonTypesOrderBy<TRes>
    implements CopyWith_Input_PersonTypesOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonTypesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? isFamilyAdmin,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_PersonTypesPkColumnsInput {
  factory Input_PersonTypesPkColumnsInput({required UuidValue id}) =>
      Input_PersonTypesPkColumnsInput._({r'id': id});

  Input_PersonTypesPkColumnsInput._(this._$data);

  factory Input_PersonTypesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_PersonTypesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_PersonTypesPkColumnsInput<Input_PersonTypesPkColumnsInput>
  get copyWith => CopyWith_Input_PersonTypesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesPkColumnsInput ||
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

abstract class CopyWith_Input_PersonTypesPkColumnsInput<TRes> {
  factory CopyWith_Input_PersonTypesPkColumnsInput(
    Input_PersonTypesPkColumnsInput instance,
    TRes Function(Input_PersonTypesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_PersonTypesPkColumnsInput;

  factory CopyWith_Input_PersonTypesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_PersonTypesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonTypesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_PersonTypesPkColumnsInput(this._instance, this._then);

  final Input_PersonTypesPkColumnsInput _instance;

  final TRes Function(Input_PersonTypesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_PersonTypesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonTypesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonTypesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_PersonTypesSetInput {
  factory Input_PersonTypesSetInput({String? name}) =>
      Input_PersonTypesSetInput._({if (name != null) r'name': name});

  Input_PersonTypesSetInput._(this._$data);

  factory Input_PersonTypesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_PersonTypesSetInput._(result$data);
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

  CopyWith_Input_PersonTypesSetInput<Input_PersonTypesSetInput> get copyWith =>
      CopyWith_Input_PersonTypesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesSetInput ||
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

abstract class CopyWith_Input_PersonTypesSetInput<TRes> {
  factory CopyWith_Input_PersonTypesSetInput(
    Input_PersonTypesSetInput instance,
    TRes Function(Input_PersonTypesSetInput) then,
  ) = _CopyWithImpl_Input_PersonTypesSetInput;

  factory CopyWith_Input_PersonTypesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_PersonTypesSetInput<TRes>
    implements CopyWith_Input_PersonTypesSetInput<TRes> {
  _CopyWithImpl_Input_PersonTypesSetInput(this._instance, this._then);

  final Input_PersonTypesSetInput _instance;

  final TRes Function(Input_PersonTypesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_PersonTypesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonTypesSetInput<TRes>
    implements CopyWith_Input_PersonTypesSetInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_PersonTypesStreamCursorInput {
  factory Input_PersonTypesStreamCursorInput({
    required Input_PersonTypesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonTypesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonTypesStreamCursorInput._(this._$data);

  factory Input_PersonTypesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonTypesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonTypesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonTypesStreamCursorValueInput);

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

  CopyWith_Input_PersonTypesStreamCursorInput<
    Input_PersonTypesStreamCursorInput
  >
  get copyWith => CopyWith_Input_PersonTypesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesStreamCursorInput ||
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

abstract class CopyWith_Input_PersonTypesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonTypesStreamCursorInput(
    Input_PersonTypesStreamCursorInput instance,
    TRes Function(Input_PersonTypesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonTypesStreamCursorInput;

  factory CopyWith_Input_PersonTypesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesStreamCursorInput;

  TRes call({
    Input_PersonTypesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonTypesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonTypesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonTypesStreamCursorInput(this._instance, this._then);

  final Input_PersonTypesStreamCursorInput _instance;

  final TRes Function(Input_PersonTypesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonTypesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonTypesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonTypesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonTypesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonTypesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonTypesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonTypesStreamCursorValueInput.stub(_res);
}

class Input_PersonTypesStreamCursorValueInput {
  factory Input_PersonTypesStreamCursorValueInput({
    UuidValue? id,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? name,
    int? order,
  }) => Input_PersonTypesStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (isFamilyAdmin != null) r'isFamilyAdmin': isFamilyAdmin,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
  });

  Input_PersonTypesStreamCursorValueInput._(this._$data);

  factory Input_PersonTypesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = data['isFamilyAdmin'];
      result$data['isFamilyAdmin'] = (l$isFamilyAdmin as bool?);
    }
    if (data.containsKey('isHidden')) {
      final l$isHidden = data['isHidden'];
      result$data['isHidden'] = (l$isHidden as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    return Input_PersonTypesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isFamilyAdmin => (_$data['isFamilyAdmin'] as bool?);

  bool? get isHidden => (_$data['isHidden'] as bool?);

  String? get name => (_$data['name'] as String?);

  int? get order => (_$data['order'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = isFamilyAdmin;
      result$data['isFamilyAdmin'] = l$isFamilyAdmin;
    }
    if (_$data.containsKey('isHidden')) {
      final l$isHidden = isHidden;
      result$data['isHidden'] = l$isHidden;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesStreamCursorValueInput<
    Input_PersonTypesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonTypesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesStreamCursorValueInput ||
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (_$data.containsKey('isFamilyAdmin') !=
        other._$data.containsKey('isFamilyAdmin')) {
      return false;
    }
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$name = name;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isFamilyAdmin') ? l$isFamilyAdmin : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonTypesStreamCursorValueInput(
    Input_PersonTypesStreamCursorValueInput instance,
    TRes Function(Input_PersonTypesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonTypesStreamCursorValueInput;

  factory CopyWith_Input_PersonTypesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesStreamCursorValueInput;

  TRes call({
    UuidValue? id,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? name,
    int? order,
  });
}

class _CopyWithImpl_Input_PersonTypesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonTypesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonTypesStreamCursorValueInput _instance;

  final TRes Function(Input_PersonTypesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
  }) => _then(
    Input_PersonTypesStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isFamilyAdmin != _undefined)
        'isFamilyAdmin': (isFamilyAdmin as bool?),
      if (isHidden != _undefined) 'isHidden': (isHidden as bool?),
      if (name != _undefined) 'name': (name as String?),
      if (order != _undefined) 'order': (order as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonTypesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? id,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? name,
    int? order,
  }) => _res;
}

class Input_PersonTypesUpdates {
  factory Input_PersonTypesUpdates({
    Input_PersonTypesSetInput? $_set,
    required Input_PersonTypesBoolExp where,
  }) => Input_PersonTypesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_PersonTypesUpdates._(this._$data);

  factory Input_PersonTypesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_PersonTypesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_PersonTypesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonTypesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypesSetInput? get $_set =>
      (_$data['_set'] as Input_PersonTypesSetInput?);

  Input_PersonTypesBoolExp get where =>
      (_$data['where'] as Input_PersonTypesBoolExp);

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

  CopyWith_Input_PersonTypesUpdates<Input_PersonTypesUpdates> get copyWith =>
      CopyWith_Input_PersonTypesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesUpdates ||
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

abstract class CopyWith_Input_PersonTypesUpdates<TRes> {
  factory CopyWith_Input_PersonTypesUpdates(
    Input_PersonTypesUpdates instance,
    TRes Function(Input_PersonTypesUpdates) then,
  ) = _CopyWithImpl_Input_PersonTypesUpdates;

  factory CopyWith_Input_PersonTypesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesUpdates;

  TRes call({
    Input_PersonTypesSetInput? $_set,
    Input_PersonTypesBoolExp? where,
  });
  CopyWith_Input_PersonTypesSetInput<TRes> get $_set;
  CopyWith_Input_PersonTypesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonTypesUpdates<TRes>
    implements CopyWith_Input_PersonTypesUpdates<TRes> {
  _CopyWithImpl_Input_PersonTypesUpdates(this._instance, this._then);

  final Input_PersonTypesUpdates _instance;

  final TRes Function(Input_PersonTypesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_PersonTypesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_PersonTypesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_PersonTypesBoolExp),
    }),
  );

  CopyWith_Input_PersonTypesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_PersonTypesSetInput.stub(_then(_instance))
        : CopyWith_Input_PersonTypesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_PersonTypesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonTypesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonTypesUpdates<TRes>
    implements CopyWith_Input_PersonTypesUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonTypesUpdates(this._res);

  TRes _res;

  call({Input_PersonTypesSetInput? $_set, Input_PersonTypesBoolExp? where}) =>
      _res;

  CopyWith_Input_PersonTypesSetInput<TRes> get $_set =>
      CopyWith_Input_PersonTypesSetInput.stub(_res);

  CopyWith_Input_PersonTypesBoolExp<TRes> get where =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);
}

class Input_PersonsAggregateBoolExp {
  factory Input_PersonsAggregateBoolExp({
    Input_personsAggregateBoolExpBool_and? bool_and,
    Input_personsAggregateBoolExpBool_or? bool_or,
    Input_personsAggregateBoolExpCount? count,
  }) => Input_PersonsAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_PersonsAggregateBoolExp._(this._$data);

  factory Input_PersonsAggregateBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_personsAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_personsAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_personsAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_PersonsAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_personsAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and'] as Input_personsAggregateBoolExpBool_and?);

  Input_personsAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or'] as Input_personsAggregateBoolExpBool_or?);

  Input_personsAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_personsAggregateBoolExpCount?);

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

  CopyWith_Input_PersonsAggregateBoolExp<Input_PersonsAggregateBoolExp>
  get copyWith => CopyWith_Input_PersonsAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsAggregateBoolExp ||
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

abstract class CopyWith_Input_PersonsAggregateBoolExp<TRes> {
  factory CopyWith_Input_PersonsAggregateBoolExp(
    Input_PersonsAggregateBoolExp instance,
    TRes Function(Input_PersonsAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsAggregateBoolExp;

  factory CopyWith_Input_PersonsAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsAggregateBoolExp;

  TRes call({
    Input_personsAggregateBoolExpBool_and? bool_and,
    Input_personsAggregateBoolExpBool_or? bool_or,
    Input_personsAggregateBoolExpCount? count,
  });
  CopyWith_Input_personsAggregateBoolExpBool_and<TRes> get bool_and;
  CopyWith_Input_personsAggregateBoolExpBool_or<TRes> get bool_or;
  CopyWith_Input_personsAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_PersonsAggregateBoolExp<TRes>
    implements CopyWith_Input_PersonsAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsAggregateBoolExp(this._instance, this._then);

  final Input_PersonsAggregateBoolExp _instance;

  final TRes Function(Input_PersonsAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_PersonsAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and': (bool_and as Input_personsAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or': (bool_or as Input_personsAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count': (count as Input_personsAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_personsAggregateBoolExpBool_and<TRes> get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_personsAggregateBoolExpBool_and.stub(_then(_instance))
        : CopyWith_Input_personsAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_personsAggregateBoolExpBool_or<TRes> get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_personsAggregateBoolExpBool_or.stub(_then(_instance))
        : CopyWith_Input_personsAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_personsAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_personsAggregateBoolExpCount.stub(_then(_instance))
        : CopyWith_Input_personsAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsAggregateBoolExp<TRes>
    implements CopyWith_Input_PersonsAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_personsAggregateBoolExpBool_and? bool_and,
    Input_personsAggregateBoolExpBool_or? bool_or,
    Input_personsAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_personsAggregateBoolExpBool_and<TRes> get bool_and =>
      CopyWith_Input_personsAggregateBoolExpBool_and.stub(_res);

  CopyWith_Input_personsAggregateBoolExpBool_or<TRes> get bool_or =>
      CopyWith_Input_personsAggregateBoolExpBool_or.stub(_res);

  CopyWith_Input_personsAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_personsAggregateBoolExpCount.stub(_res);
}

class Input_PersonsAggregateOrderBy {
  factory Input_PersonsAggregateOrderBy({
    Input_PersonsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_PersonsMaxOrderBy? max,
    Input_PersonsMinOrderBy? min,
    Input_PersonsStddevOrderBy? stddev,
    Input_PersonsStddevPopOrderBy? stddevPop,
    Input_PersonsStddevSampOrderBy? stddevSamp,
    Input_PersonsSumOrderBy? sum,
    Input_PersonsVarPopOrderBy? varPop,
    Input_PersonsVarSampOrderBy? varSamp,
    Input_PersonsVarianceOrderBy? variance,
  }) => Input_PersonsAggregateOrderBy._({
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

  Input_PersonsAggregateOrderBy._(this._$data);

  factory Input_PersonsAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_PersonsAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_PersonsMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_PersonsMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_PersonsStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_PersonsStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_PersonsStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_PersonsSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_PersonsVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_PersonsVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_PersonsVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_PersonsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsAvgOrderBy? get avg =>
      (_$data['avg'] as Input_PersonsAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_PersonsMaxOrderBy? get max =>
      (_$data['max'] as Input_PersonsMaxOrderBy?);

  Input_PersonsMinOrderBy? get min =>
      (_$data['min'] as Input_PersonsMinOrderBy?);

  Input_PersonsStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_PersonsStddevOrderBy?);

  Input_PersonsStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_PersonsStddevPopOrderBy?);

  Input_PersonsStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_PersonsStddevSampOrderBy?);

  Input_PersonsSumOrderBy? get sum =>
      (_$data['sum'] as Input_PersonsSumOrderBy?);

  Input_PersonsVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_PersonsVarPopOrderBy?);

  Input_PersonsVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_PersonsVarSampOrderBy?);

  Input_PersonsVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_PersonsVarianceOrderBy?);

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

  CopyWith_Input_PersonsAggregateOrderBy<Input_PersonsAggregateOrderBy>
  get copyWith => CopyWith_Input_PersonsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsAggregateOrderBy ||
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

abstract class CopyWith_Input_PersonsAggregateOrderBy<TRes> {
  factory CopyWith_Input_PersonsAggregateOrderBy(
    Input_PersonsAggregateOrderBy instance,
    TRes Function(Input_PersonsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsAggregateOrderBy;

  factory CopyWith_Input_PersonsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsAggregateOrderBy;

  TRes call({
    Input_PersonsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_PersonsMaxOrderBy? max,
    Input_PersonsMinOrderBy? min,
    Input_PersonsStddevOrderBy? stddev,
    Input_PersonsStddevPopOrderBy? stddevPop,
    Input_PersonsStddevSampOrderBy? stddevSamp,
    Input_PersonsSumOrderBy? sum,
    Input_PersonsVarPopOrderBy? varPop,
    Input_PersonsVarSampOrderBy? varSamp,
    Input_PersonsVarianceOrderBy? variance,
  });
  CopyWith_Input_PersonsAvgOrderBy<TRes> get avg;
  CopyWith_Input_PersonsMaxOrderBy<TRes> get max;
  CopyWith_Input_PersonsMinOrderBy<TRes> get min;
  CopyWith_Input_PersonsStddevOrderBy<TRes> get stddev;
  CopyWith_Input_PersonsStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_PersonsStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_PersonsSumOrderBy<TRes> get sum;
  CopyWith_Input_PersonsVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_PersonsVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_PersonsVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_PersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsAggregateOrderBy(this._instance, this._then);

  final Input_PersonsAggregateOrderBy _instance;

  final TRes Function(Input_PersonsAggregateOrderBy) _then;

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
    Input_PersonsAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_PersonsAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_PersonsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_PersonsMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_PersonsStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_PersonsStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_PersonsStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_PersonsSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_PersonsVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_PersonsVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_PersonsVarianceOrderBy?),
    }),
  );

  CopyWith_Input_PersonsAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_PersonsAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_PersonsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_PersonsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_PersonsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_PersonsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_PersonsStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_PersonsStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_PersonsStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_PersonsStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_PersonsStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_PersonsStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_PersonsSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_PersonsSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_PersonsVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_PersonsVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_PersonsVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_PersonsVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_PersonsVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_PersonsVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_PersonsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_PersonsMaxOrderBy? max,
    Input_PersonsMinOrderBy? min,
    Input_PersonsStddevOrderBy? stddev,
    Input_PersonsStddevPopOrderBy? stddevPop,
    Input_PersonsStddevSampOrderBy? stddevSamp,
    Input_PersonsSumOrderBy? sum,
    Input_PersonsVarPopOrderBy? varPop,
    Input_PersonsVarSampOrderBy? varSamp,
    Input_PersonsVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_PersonsAvgOrderBy<TRes> get avg =>
      CopyWith_Input_PersonsAvgOrderBy.stub(_res);

  CopyWith_Input_PersonsMaxOrderBy<TRes> get max =>
      CopyWith_Input_PersonsMaxOrderBy.stub(_res);

  CopyWith_Input_PersonsMinOrderBy<TRes> get min =>
      CopyWith_Input_PersonsMinOrderBy.stub(_res);

  CopyWith_Input_PersonsStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_PersonsStddevOrderBy.stub(_res);

  CopyWith_Input_PersonsStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_PersonsStddevPopOrderBy.stub(_res);

  CopyWith_Input_PersonsStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_PersonsStddevSampOrderBy.stub(_res);

  CopyWith_Input_PersonsSumOrderBy<TRes> get sum =>
      CopyWith_Input_PersonsSumOrderBy.stub(_res);

  CopyWith_Input_PersonsVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_PersonsVarPopOrderBy.stub(_res);

  CopyWith_Input_PersonsVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_PersonsVarSampOrderBy.stub(_res);

  CopyWith_Input_PersonsVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_PersonsVarianceOrderBy.stub(_res);
}

class Input_PersonsAppendInput {
  factory Input_PersonsAppendInput({Json? otherPhones}) =>
      Input_PersonsAppendInput._({
        if (otherPhones != null) r'otherPhones': otherPhones,
      });

  Input_PersonsAppendInput._(this._$data);

  factory Input_PersonsAppendInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as Json?);
    }
    return Input_PersonsAppendInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get otherPhones => (_$data['otherPhones'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    return result$data;
  }

  CopyWith_Input_PersonsAppendInput<Input_PersonsAppendInput> get copyWith =>
      CopyWith_Input_PersonsAppendInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsAppendInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otherPhones = otherPhones;
    return Object.hashAll([
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
    ]);
  }
}
