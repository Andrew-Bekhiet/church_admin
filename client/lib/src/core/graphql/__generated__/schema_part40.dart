// Part 40 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_JobsInsertInput<TRes> {
  factory CopyWith_Input_JobsInsertInput(
    Input_JobsInsertInput instance,
    TRes Function(Input_JobsInsertInput) then,
  ) = _CopyWithImpl_Input_JobsInsertInput;

  factory CopyWith_Input_JobsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsInsertInput;

  TRes call({String? name, Input_PersonsArrRelInsertInput? persons});
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_JobsInsertInput<TRes>
    implements CopyWith_Input_JobsInsertInput<TRes> {
  _CopyWithImpl_Input_JobsInsertInput(this._instance, this._then);

  final Input_JobsInsertInput _instance;

  final TRes Function(Input_JobsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? persons = _undefined}) => _then(
    Input_JobsInsertInput._({
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

class _CopyWithStubImpl_Input_JobsInsertInput<TRes>
    implements CopyWith_Input_JobsInsertInput<TRes> {
  _CopyWithStubImpl_Input_JobsInsertInput(this._res);

  TRes _res;

  call({String? name, Input_PersonsArrRelInsertInput? persons}) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_JobsObjRelInsertInput {
  factory Input_JobsObjRelInsertInput({
    required Input_JobsInsertInput data,
    Input_JobsOnConflict? onConflict,
  }) => Input_JobsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_JobsObjRelInsertInput._(this._$data);

  factory Input_JobsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_JobsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_JobsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_JobsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_JobsInsertInput get data => (_$data['data'] as Input_JobsInsertInput);

  Input_JobsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_JobsOnConflict?);

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

  CopyWith_Input_JobsObjRelInsertInput<Input_JobsObjRelInsertInput>
  get copyWith => CopyWith_Input_JobsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsObjRelInsertInput ||
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

abstract class CopyWith_Input_JobsObjRelInsertInput<TRes> {
  factory CopyWith_Input_JobsObjRelInsertInput(
    Input_JobsObjRelInsertInput instance,
    TRes Function(Input_JobsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_JobsObjRelInsertInput;

  factory CopyWith_Input_JobsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsObjRelInsertInput;

  TRes call({Input_JobsInsertInput? data, Input_JobsOnConflict? onConflict});
  CopyWith_Input_JobsInsertInput<TRes> get data;
  CopyWith_Input_JobsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_JobsObjRelInsertInput<TRes>
    implements CopyWith_Input_JobsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_JobsObjRelInsertInput(this._instance, this._then);

  final Input_JobsObjRelInsertInput _instance;

  final TRes Function(Input_JobsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_JobsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_JobsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_JobsOnConflict?),
        }),
      );

  CopyWith_Input_JobsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_JobsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_JobsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_JobsOnConflict.stub(_then(_instance))
        : CopyWith_Input_JobsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_JobsObjRelInsertInput<TRes>
    implements CopyWith_Input_JobsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_JobsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_JobsInsertInput? data, Input_JobsOnConflict? onConflict}) => _res;

  CopyWith_Input_JobsInsertInput<TRes> get data =>
      CopyWith_Input_JobsInsertInput.stub(_res);

  CopyWith_Input_JobsOnConflict<TRes> get onConflict =>
      CopyWith_Input_JobsOnConflict.stub(_res);
}

class Input_JobsOnConflict {
  factory Input_JobsOnConflict({
    required Enum_JobsConstraint constraint,
    List<Enum_JobsUpdateColumn>? updateColumns,
    Input_JobsBoolExp? where,
  }) => Input_JobsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_JobsOnConflict._(this._$data);

  factory Input_JobsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_JobsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_JobsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_JobsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_JobsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_JobsConstraint get constraint =>
      (_$data['constraint'] as Enum_JobsConstraint);

  List<Enum_JobsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_JobsUpdateColumn>?);

  Input_JobsBoolExp? get where => (_$data['where'] as Input_JobsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_JobsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_JobsUpdateColumn>)
              .map((e) => toJson_Enum_JobsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_JobsOnConflict<Input_JobsOnConflict> get copyWith =>
      CopyWith_Input_JobsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_JobsOnConflict<TRes> {
  factory CopyWith_Input_JobsOnConflict(
    Input_JobsOnConflict instance,
    TRes Function(Input_JobsOnConflict) then,
  ) = _CopyWithImpl_Input_JobsOnConflict;

  factory CopyWith_Input_JobsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsOnConflict;

  TRes call({
    Enum_JobsConstraint? constraint,
    List<Enum_JobsUpdateColumn>? updateColumns,
    Input_JobsBoolExp? where,
  });
  CopyWith_Input_JobsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_JobsOnConflict<TRes>
    implements CopyWith_Input_JobsOnConflict<TRes> {
  _CopyWithImpl_Input_JobsOnConflict(this._instance, this._then);

  final Input_JobsOnConflict _instance;

  final TRes Function(Input_JobsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_JobsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_JobsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_JobsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_JobsBoolExp?),
    }),
  );

  CopyWith_Input_JobsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_JobsBoolExp.stub(_then(_instance))
        : CopyWith_Input_JobsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_JobsOnConflict<TRes>
    implements CopyWith_Input_JobsOnConflict<TRes> {
  _CopyWithStubImpl_Input_JobsOnConflict(this._res);

  TRes _res;

  call({
    Enum_JobsConstraint? constraint,
    List<Enum_JobsUpdateColumn>? updateColumns,
    Input_JobsBoolExp? where,
  }) => _res;

  CopyWith_Input_JobsBoolExp<TRes> get where =>
      CopyWith_Input_JobsBoolExp.stub(_res);
}

class Input_JobsOrderBy {
  factory Input_JobsOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_JobsOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_JobsOrderBy._(this._$data);

  factory Input_JobsOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_JobsOrderBy._(result$data);
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

  CopyWith_Input_JobsOrderBy<Input_JobsOrderBy> get copyWith =>
      CopyWith_Input_JobsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_JobsOrderBy<TRes> {
  factory CopyWith_Input_JobsOrderBy(
    Input_JobsOrderBy instance,
    TRes Function(Input_JobsOrderBy) then,
  ) = _CopyWithImpl_Input_JobsOrderBy;

  factory CopyWith_Input_JobsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_JobsOrderBy<TRes>
    implements CopyWith_Input_JobsOrderBy<TRes> {
  _CopyWithImpl_Input_JobsOrderBy(this._instance, this._then);

  final Input_JobsOrderBy _instance;

  final TRes Function(Input_JobsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_JobsOrderBy._({
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

class _CopyWithStubImpl_Input_JobsOrderBy<TRes>
    implements CopyWith_Input_JobsOrderBy<TRes> {
  _CopyWithStubImpl_Input_JobsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_JobsPkColumnsInput {
  factory Input_JobsPkColumnsInput({required UuidValue id}) =>
      Input_JobsPkColumnsInput._({r'id': id});

  Input_JobsPkColumnsInput._(this._$data);

  factory Input_JobsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_JobsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_JobsPkColumnsInput<Input_JobsPkColumnsInput> get copyWith =>
      CopyWith_Input_JobsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsPkColumnsInput ||
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

abstract class CopyWith_Input_JobsPkColumnsInput<TRes> {
  factory CopyWith_Input_JobsPkColumnsInput(
    Input_JobsPkColumnsInput instance,
    TRes Function(Input_JobsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_JobsPkColumnsInput;

  factory CopyWith_Input_JobsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_JobsPkColumnsInput<TRes>
    implements CopyWith_Input_JobsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_JobsPkColumnsInput(this._instance, this._then);

  final Input_JobsPkColumnsInput _instance;

  final TRes Function(Input_JobsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_JobsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_JobsPkColumnsInput<TRes>
    implements CopyWith_Input_JobsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_JobsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_JobsSetInput {
  factory Input_JobsSetInput({String? name}) =>
      Input_JobsSetInput._({if (name != null) r'name': name});

  Input_JobsSetInput._(this._$data);

  factory Input_JobsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_JobsSetInput._(result$data);
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

  CopyWith_Input_JobsSetInput<Input_JobsSetInput> get copyWith =>
      CopyWith_Input_JobsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_JobsSetInput<TRes> {
  factory CopyWith_Input_JobsSetInput(
    Input_JobsSetInput instance,
    TRes Function(Input_JobsSetInput) then,
  ) = _CopyWithImpl_Input_JobsSetInput;

  factory CopyWith_Input_JobsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_JobsSetInput<TRes>
    implements CopyWith_Input_JobsSetInput<TRes> {
  _CopyWithImpl_Input_JobsSetInput(this._instance, this._then);

  final Input_JobsSetInput _instance;

  final TRes Function(Input_JobsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_JobsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_JobsSetInput<TRes>
    implements CopyWith_Input_JobsSetInput<TRes> {
  _CopyWithStubImpl_Input_JobsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_JobsStreamCursorInput {
  factory Input_JobsStreamCursorInput({
    required Input_JobsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_JobsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_JobsStreamCursorInput._(this._$data);

  factory Input_JobsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_JobsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_JobsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_JobsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_JobsStreamCursorValueInput);

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

  CopyWith_Input_JobsStreamCursorInput<Input_JobsStreamCursorInput>
  get copyWith => CopyWith_Input_JobsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsStreamCursorInput ||
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

abstract class CopyWith_Input_JobsStreamCursorInput<TRes> {
  factory CopyWith_Input_JobsStreamCursorInput(
    Input_JobsStreamCursorInput instance,
    TRes Function(Input_JobsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_JobsStreamCursorInput;

  factory CopyWith_Input_JobsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsStreamCursorInput;

  TRes call({
    Input_JobsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_JobsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_JobsStreamCursorInput<TRes>
    implements CopyWith_Input_JobsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_JobsStreamCursorInput(this._instance, this._then);

  final Input_JobsStreamCursorInput _instance;

  final TRes Function(Input_JobsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_JobsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_JobsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_JobsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_JobsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_JobsStreamCursorInput<TRes>
    implements CopyWith_Input_JobsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_JobsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_JobsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_JobsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_JobsStreamCursorValueInput.stub(_res);
}

class Input_JobsStreamCursorValueInput {
  factory Input_JobsStreamCursorValueInput({UuidValue? id, String? name}) =>
      Input_JobsStreamCursorValueInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_JobsStreamCursorValueInput._(this._$data);

  factory Input_JobsStreamCursorValueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_JobsStreamCursorValueInput._(result$data);
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

  CopyWith_Input_JobsStreamCursorValueInput<Input_JobsStreamCursorValueInput>
  get copyWith => CopyWith_Input_JobsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsStreamCursorValueInput ||
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

abstract class CopyWith_Input_JobsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_JobsStreamCursorValueInput(
    Input_JobsStreamCursorValueInput instance,
    TRes Function(Input_JobsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_JobsStreamCursorValueInput;

  factory CopyWith_Input_JobsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_JobsStreamCursorValueInput<TRes>
    implements CopyWith_Input_JobsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_JobsStreamCursorValueInput(this._instance, this._then);

  final Input_JobsStreamCursorValueInput _instance;

  final TRes Function(Input_JobsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_JobsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_JobsStreamCursorValueInput<TRes>
    implements CopyWith_Input_JobsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_JobsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_JobsUpdates {
  factory Input_JobsUpdates({
    Input_JobsSetInput? $_set,
    required Input_JobsBoolExp where,
  }) =>
      Input_JobsUpdates._({if ($_set != null) r'_set': $_set, r'where': where});

  Input_JobsUpdates._(this._$data);

  factory Input_JobsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_JobsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_JobsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_JobsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_JobsSetInput? get $_set => (_$data['_set'] as Input_JobsSetInput?);

  Input_JobsBoolExp get where => (_$data['where'] as Input_JobsBoolExp);

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

  CopyWith_Input_JobsUpdates<Input_JobsUpdates> get copyWith =>
      CopyWith_Input_JobsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JobsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_JobsUpdates<TRes> {
  factory CopyWith_Input_JobsUpdates(
    Input_JobsUpdates instance,
    TRes Function(Input_JobsUpdates) then,
  ) = _CopyWithImpl_Input_JobsUpdates;

  factory CopyWith_Input_JobsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_JobsUpdates;

  TRes call({Input_JobsSetInput? $_set, Input_JobsBoolExp? where});
  CopyWith_Input_JobsSetInput<TRes> get $_set;
  CopyWith_Input_JobsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_JobsUpdates<TRes>
    implements CopyWith_Input_JobsUpdates<TRes> {
  _CopyWithImpl_Input_JobsUpdates(this._instance, this._then);

  final Input_JobsUpdates _instance;

  final TRes Function(Input_JobsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_JobsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_JobsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_JobsBoolExp),
    }),
  );

  CopyWith_Input_JobsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_JobsSetInput.stub(_then(_instance))
        : CopyWith_Input_JobsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_JobsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_JobsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_JobsUpdates<TRes>
    implements CopyWith_Input_JobsUpdates<TRes> {
  _CopyWithStubImpl_Input_JobsUpdates(this._res);

  TRes _res;

  call({Input_JobsSetInput? $_set, Input_JobsBoolExp? where}) => _res;

  CopyWith_Input_JobsSetInput<TRes> get $_set =>
      CopyWith_Input_JobsSetInput.stub(_res);

  CopyWith_Input_JobsBoolExp<TRes> get where =>
      CopyWith_Input_JobsBoolExp.stub(_res);
}

class Input_JsonComparisonExp {
  factory Input_JsonComparisonExp({
    Json? $_eq,
    Json? $_gt,
    Json? $_gte,
    List<Json>? $_in,
    bool? $_isNull,
    Json? $_lt,
    Json? $_lte,
    Json? $_neq,
    List<Json>? $_nin,
  }) => Input_JsonComparisonExp._({
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

  Input_JsonComparisonExp._(this._$data);

  factory Input_JsonComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as Json?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as Json?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as Json?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as Json))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as Json?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as Json?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as Json?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as Json))
          .toList();
    }
    return Input_JsonComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get $_eq => (_$data['_eq'] as Json?);

  Json? get $_gt => (_$data['_gt'] as Json?);

  Json? get $_gte => (_$data['_gte'] as Json?);

  List<Json>? get $_in => (_$data['_in'] as List<Json>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  Json? get $_lt => (_$data['_lt'] as Json?);

  Json? get $_lte => (_$data['_lte'] as Json?);

  Json? get $_neq => (_$data['_neq'] as Json?);

  List<Json>? get $_nin => (_$data['_nin'] as List<Json>?);

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

  CopyWith_Input_JsonComparisonExp<Input_JsonComparisonExp> get copyWith =>
      CopyWith_Input_JsonComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JsonComparisonExp || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_JsonComparisonExp<TRes> {
  factory CopyWith_Input_JsonComparisonExp(
    Input_JsonComparisonExp instance,
    TRes Function(Input_JsonComparisonExp) then,
  ) = _CopyWithImpl_Input_JsonComparisonExp;

  factory CopyWith_Input_JsonComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_JsonComparisonExp;

  TRes call({
    Json? $_eq,
    Json? $_gt,
    Json? $_gte,
    List<Json>? $_in,
    bool? $_isNull,
    Json? $_lt,
    Json? $_lte,
    Json? $_neq,
    List<Json>? $_nin,
  });
}

class _CopyWithImpl_Input_JsonComparisonExp<TRes>
    implements CopyWith_Input_JsonComparisonExp<TRes> {
  _CopyWithImpl_Input_JsonComparisonExp(this._instance, this._then);

  final Input_JsonComparisonExp _instance;

  final TRes Function(Input_JsonComparisonExp) _then;

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
    Input_JsonComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as Json?),
      if ($_gt != _undefined) '_gt': ($_gt as Json?),
      if ($_gte != _undefined) '_gte': ($_gte as Json?),
      if ($_in != _undefined) '_in': ($_in as List<Json>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as Json?),
      if ($_lte != _undefined) '_lte': ($_lte as Json?),
      if ($_neq != _undefined) '_neq': ($_neq as Json?),
      if ($_nin != _undefined) '_nin': ($_nin as List<Json>?),
    }),
  );
}

class _CopyWithStubImpl_Input_JsonComparisonExp<TRes>
    implements CopyWith_Input_JsonComparisonExp<TRes> {
  _CopyWithStubImpl_Input_JsonComparisonExp(this._res);

  TRes _res;

  call({
    Json? $_eq,
    Json? $_gt,
    Json? $_gte,
    List<Json>? $_in,
    bool? $_isNull,
    Json? $_lt,
    Json? $_lte,
    Json? $_neq,
    List<Json>? $_nin,
  }) => _res;
}

class Input_JsonbCastExp {
  factory Input_JsonbCastExp({Input_StringComparisonExp? $String}) =>
      Input_JsonbCastExp._({if ($String != null) r'String': $String});

  Input_JsonbCastExp._(this._$data);

  factory Input_JsonbCastExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('String')) {
      final l$$String = data['String'];
      result$data['String'] = l$$String == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$$String as Map<String, dynamic>),
            );
    }
    return Input_JsonbCastExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StringComparisonExp? get $String =>
      (_$data['String'] as Input_StringComparisonExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('String')) {
      final l$$String = $String;
      result$data['String'] = l$$String?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_JsonbCastExp<Input_JsonbCastExp> get copyWith =>
      CopyWith_Input_JsonbCastExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JsonbCastExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$String = $String;
    final lOther$$String = other.$String;
    if (_$data.containsKey('String') != other._$data.containsKey('String')) {
      return false;
    }
    if (l$$String != lOther$$String) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$String = $String;
    return Object.hashAll([
      _$data.containsKey('String') ? l$$String : const {},
    ]);
  }
}

abstract class CopyWith_Input_JsonbCastExp<TRes> {
  factory CopyWith_Input_JsonbCastExp(
    Input_JsonbCastExp instance,
    TRes Function(Input_JsonbCastExp) then,
  ) = _CopyWithImpl_Input_JsonbCastExp;

  factory CopyWith_Input_JsonbCastExp.stub(TRes res) =
      _CopyWithStubImpl_Input_JsonbCastExp;

  TRes call({Input_StringComparisonExp? $String});
  CopyWith_Input_StringComparisonExp<TRes> get $String;
}

class _CopyWithImpl_Input_JsonbCastExp<TRes>
    implements CopyWith_Input_JsonbCastExp<TRes> {
  _CopyWithImpl_Input_JsonbCastExp(this._instance, this._then);

  final Input_JsonbCastExp _instance;

  final TRes Function(Input_JsonbCastExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $String = _undefined}) => _then(
    Input_JsonbCastExp._({
      ..._instance._$data,
      if ($String != _undefined)
        'String': ($String as Input_StringComparisonExp?),
    }),
  );

  CopyWith_Input_StringComparisonExp<TRes> get $String {
    final local$$String = _instance.$String;
    return local$$String == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$$String,
            (e) => call($String: e),
          );
  }
}

class _CopyWithStubImpl_Input_JsonbCastExp<TRes>
    implements CopyWith_Input_JsonbCastExp<TRes> {
  _CopyWithStubImpl_Input_JsonbCastExp(this._res);

  TRes _res;

  call({Input_StringComparisonExp? $String}) => _res;

  CopyWith_Input_StringComparisonExp<TRes> get $String =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_JsonbComparisonExp {
  factory Input_JsonbComparisonExp({
    Input_JsonbCastExp? $_cast,
    Json? $_containedIn,
    Json? $_contains,
    Json? $_eq,
    Json? $_gt,
    Json? $_gte,
    String? $_hasKey,
    List<String>? $_hasKeysAll,
    List<String>? $_hasKeysAny,
    List<Json>? $_in,
    bool? $_isNull,
    String? $_jsonbPathExists,
    String? $_jsonbPathMatch,
    Json? $_lt,
    Json? $_lte,
    Json? $_neq,
    List<Json>? $_nin,
  }) => Input_JsonbComparisonExp._({
    if ($_cast != null) r'_cast': $_cast,
    if ($_containedIn != null) r'_containedIn': $_containedIn,
    if ($_contains != null) r'_contains': $_contains,
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_hasKey != null) r'_hasKey': $_hasKey,
    if ($_hasKeysAll != null) r'_hasKeysAll': $_hasKeysAll,
    if ($_hasKeysAny != null) r'_hasKeysAny': $_hasKeysAny,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_jsonbPathExists != null) r'_jsonbPathExists': $_jsonbPathExists,
    if ($_jsonbPathMatch != null) r'_jsonbPathMatch': $_jsonbPathMatch,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
  });

  Input_JsonbComparisonExp._(this._$data);

  factory Input_JsonbComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cast')) {
      final l$$_cast = data['_cast'];
      result$data['_cast'] = l$$_cast == null
          ? null
          : Input_JsonbCastExp.fromJson((l$$_cast as Map<String, dynamic>));
    }
    if (data.containsKey('_containedIn')) {
      final l$$_containedIn = data['_containedIn'];
      result$data['_containedIn'] = (l$$_containedIn as Json?);
    }
    if (data.containsKey('_contains')) {
      final l$$_contains = data['_contains'];
      result$data['_contains'] = (l$$_contains as Json?);
    }
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as Json?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as Json?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as Json?);
    }
    if (data.containsKey('_hasKey')) {
      final l$$_hasKey = data['_hasKey'];
      result$data['_hasKey'] = (l$$_hasKey as String?);
    }
    if (data.containsKey('_hasKeysAll')) {
      final l$$_hasKeysAll = data['_hasKeysAll'];
      result$data['_hasKeysAll'] = (l$$_hasKeysAll as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_hasKeysAny')) {
      final l$$_hasKeysAny = data['_hasKeysAny'];
      result$data['_hasKeysAny'] = (l$$_hasKeysAny as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as Json))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_jsonbPathExists')) {
      final l$$_jsonbPathExists = data['_jsonbPathExists'];
      result$data['_jsonbPathExists'] = (l$$_jsonbPathExists as String?);
    }
    if (data.containsKey('_jsonbPathMatch')) {
      final l$$_jsonbPathMatch = data['_jsonbPathMatch'];
      result$data['_jsonbPathMatch'] = (l$$_jsonbPathMatch as String?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as Json?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as Json?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as Json?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as Json))
          .toList();
    }
    return Input_JsonbComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_JsonbCastExp? get $_cast => (_$data['_cast'] as Input_JsonbCastExp?);

  Json? get $_containedIn => (_$data['_containedIn'] as Json?);

  Json? get $_contains => (_$data['_contains'] as Json?);

  Json? get $_eq => (_$data['_eq'] as Json?);

  Json? get $_gt => (_$data['_gt'] as Json?);

  Json? get $_gte => (_$data['_gte'] as Json?);

  String? get $_hasKey => (_$data['_hasKey'] as String?);

  List<String>? get $_hasKeysAll => (_$data['_hasKeysAll'] as List<String>?);

  List<String>? get $_hasKeysAny => (_$data['_hasKeysAny'] as List<String>?);

  List<Json>? get $_in => (_$data['_in'] as List<Json>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  String? get $_jsonbPathExists => (_$data['_jsonbPathExists'] as String?);

  String? get $_jsonbPathMatch => (_$data['_jsonbPathMatch'] as String?);

  Json? get $_lt => (_$data['_lt'] as Json?);

  Json? get $_lte => (_$data['_lte'] as Json?);

  Json? get $_neq => (_$data['_neq'] as Json?);

  List<Json>? get $_nin => (_$data['_nin'] as List<Json>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cast')) {
      final l$$_cast = $_cast;
      result$data['_cast'] = l$$_cast?.toJson();
    }
    if (_$data.containsKey('_containedIn')) {
      final l$$_containedIn = $_containedIn;
      result$data['_containedIn'] = l$$_containedIn;
    }
    if (_$data.containsKey('_contains')) {
      final l$$_contains = $_contains;
      result$data['_contains'] = l$$_contains;
    }
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
    if (_$data.containsKey('_hasKey')) {
      final l$$_hasKey = $_hasKey;
      result$data['_hasKey'] = l$$_hasKey;
    }
    if (_$data.containsKey('_hasKeysAll')) {
      final l$$_hasKeysAll = $_hasKeysAll;
      result$data['_hasKeysAll'] = l$$_hasKeysAll?.map((e) => e).toList();
    }
    if (_$data.containsKey('_hasKeysAny')) {
      final l$$_hasKeysAny = $_hasKeysAny;
      result$data['_hasKeysAny'] = l$$_hasKeysAny?.map((e) => e).toList();
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_jsonbPathExists')) {
      final l$$_jsonbPathExists = $_jsonbPathExists;
      result$data['_jsonbPathExists'] = l$$_jsonbPathExists;
    }
    if (_$data.containsKey('_jsonbPathMatch')) {
      final l$$_jsonbPathMatch = $_jsonbPathMatch;
      result$data['_jsonbPathMatch'] = l$$_jsonbPathMatch;
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

  CopyWith_Input_JsonbComparisonExp<Input_JsonbComparisonExp> get copyWith =>
      CopyWith_Input_JsonbComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_JsonbComparisonExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cast = $_cast;
    final lOther$$_cast = other.$_cast;
    if (_$data.containsKey('_cast') != other._$data.containsKey('_cast')) {
      return false;
    }
    if (l$$_cast != lOther$$_cast) {
      return false;
    }
    final l$$_containedIn = $_containedIn;
    final lOther$$_containedIn = other.$_containedIn;
    if (_$data.containsKey('_containedIn') !=
        other._$data.containsKey('_containedIn')) {
      return false;
    }
    if (l$$_containedIn != lOther$$_containedIn) {
      return false;
    }
    final l$$_contains = $_contains;
    final lOther$$_contains = other.$_contains;
    if (_$data.containsKey('_contains') !=
        other._$data.containsKey('_contains')) {
      return false;
    }
    if (l$$_contains != lOther$$_contains) {
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
    final l$$_hasKey = $_hasKey;
    final lOther$$_hasKey = other.$_hasKey;
    if (_$data.containsKey('_hasKey') != other._$data.containsKey('_hasKey')) {
      return false;
    }
    if (l$$_hasKey != lOther$$_hasKey) {
      return false;
    }
    final l$$_hasKeysAll = $_hasKeysAll;
    final lOther$$_hasKeysAll = other.$_hasKeysAll;
    if (_$data.containsKey('_hasKeysAll') !=
        other._$data.containsKey('_hasKeysAll')) {
      return false;
    }
    if (l$$_hasKeysAll != null && lOther$$_hasKeysAll != null) {
      if (l$$_hasKeysAll.length != lOther$$_hasKeysAll.length) {
        return false;
      }
      for (int i = 0; i < l$$_hasKeysAll.length; i++) {
        final l$$_hasKeysAll$entry = l$$_hasKeysAll[i];
        final lOther$$_hasKeysAll$entry = lOther$$_hasKeysAll[i];
        if (l$$_hasKeysAll$entry != lOther$$_hasKeysAll$entry) {
          return false;
        }
      }
    } else if (l$$_hasKeysAll != lOther$$_hasKeysAll) {
      return false;
    }
    final l$$_hasKeysAny = $_hasKeysAny;
    final lOther$$_hasKeysAny = other.$_hasKeysAny;
    if (_$data.containsKey('_hasKeysAny') !=
        other._$data.containsKey('_hasKeysAny')) {
      return false;
    }
    if (l$$_hasKeysAny != null && lOther$$_hasKeysAny != null) {
      if (l$$_hasKeysAny.length != lOther$$_hasKeysAny.length) {
        return false;
      }
      for (int i = 0; i < l$$_hasKeysAny.length; i++) {
        final l$$_hasKeysAny$entry = l$$_hasKeysAny[i];
        final lOther$$_hasKeysAny$entry = lOther$$_hasKeysAny[i];
        if (l$$_hasKeysAny$entry != lOther$$_hasKeysAny$entry) {
          return false;
        }
      }
    } else if (l$$_hasKeysAny != lOther$$_hasKeysAny) {
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
    final l$$_jsonbPathExists = $_jsonbPathExists;
    final lOther$$_jsonbPathExists = other.$_jsonbPathExists;
    if (_$data.containsKey('_jsonbPathExists') !=
        other._$data.containsKey('_jsonbPathExists')) {
      return false;
    }
    if (l$$_jsonbPathExists != lOther$$_jsonbPathExists) {
      return false;
    }
    final l$$_jsonbPathMatch = $_jsonbPathMatch;
    final lOther$$_jsonbPathMatch = other.$_jsonbPathMatch;
    if (_$data.containsKey('_jsonbPathMatch') !=
        other._$data.containsKey('_jsonbPathMatch')) {
      return false;
    }
    if (l$$_jsonbPathMatch != lOther$$_jsonbPathMatch) {
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
    final l$$_cast = $_cast;
    final l$$_containedIn = $_containedIn;
    final l$$_contains = $_contains;
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_hasKey = $_hasKey;
    final l$$_hasKeysAll = $_hasKeysAll;
    final l$$_hasKeysAny = $_hasKeysAny;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_jsonbPathExists = $_jsonbPathExists;
    final l$$_jsonbPathMatch = $_jsonbPathMatch;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_cast') ? l$$_cast : const {},
      _$data.containsKey('_containedIn') ? l$$_containedIn : const {},
      _$data.containsKey('_contains') ? l$$_contains : const {},
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_hasKey') ? l$$_hasKey : const {},
      _$data.containsKey('_hasKeysAll')
          ? l$$_hasKeysAll == null
                ? null
                : Object.hashAll(l$$_hasKeysAll.map((v) => v))
          : const {},
      _$data.containsKey('_hasKeysAny')
          ? l$$_hasKeysAny == null
                ? null
                : Object.hashAll(l$$_hasKeysAny.map((v) => v))
          : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_jsonbPathExists') ? l$$_jsonbPathExists : const {},
      _$data.containsKey('_jsonbPathMatch') ? l$$_jsonbPathMatch : const {},
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
