// Part 54 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ResolvedContactsStreamCursorValueInput(
    Input_ResolvedContactsStreamCursorValueInput instance,
    TRes Function(Input_ResolvedContactsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ResolvedContactsStreamCursorValueInput;

  factory CopyWith_Input_ResolvedContactsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsStreamCursorValueInput;

  TRes call({
    DateTime? createdAt,
    UuidValue? effectiveFamilyId,
    UuidValue? effectivePersonTypeId,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    UuidValue? personId,
    UuidValue? personTypeId,
    String? phone,
    DateTime? updatedAt,
  });
}

class _CopyWithImpl_Input_ResolvedContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ResolvedContactsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ResolvedContactsStreamCursorValueInput _instance;

  final TRes Function(Input_ResolvedContactsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ResolvedContactsStreamCursorValueInput._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId': (effectiveFamilyId as UuidValue?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId': (effectivePersonTypeId as UuidValue?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isMainPhone != _undefined) 'isMainPhone': (isMainPhone as bool?),
      if (label != _undefined) 'label': (label as String?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as UuidValue?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_ResolvedContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    DateTime? createdAt,
    UuidValue? effectiveFamilyId,
    UuidValue? effectivePersonTypeId,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    UuidValue? personId,
    UuidValue? personTypeId,
    String? phone,
    DateTime? updatedAt,
  }) => _res;
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

abstract class CopyWith_Input_SchoolsOrderBy<TRes> {
  factory CopyWith_Input_SchoolsOrderBy(
    Input_SchoolsOrderBy instance,
    TRes Function(Input_SchoolsOrderBy) then,
  ) = _CopyWithImpl_Input_SchoolsOrderBy;

  factory CopyWith_Input_SchoolsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_SchoolsOrderBy<TRes>
    implements CopyWith_Input_SchoolsOrderBy<TRes> {
  _CopyWithImpl_Input_SchoolsOrderBy(this._instance, this._then);

  final Input_SchoolsOrderBy _instance;

  final TRes Function(Input_SchoolsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_SchoolsOrderBy._({
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

class _CopyWithStubImpl_Input_SchoolsOrderBy<TRes>
    implements CopyWith_Input_SchoolsOrderBy<TRes> {
  _CopyWithStubImpl_Input_SchoolsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_SchoolsPkColumnsInput {
  factory Input_SchoolsPkColumnsInput({required UuidValue id}) =>
      Input_SchoolsPkColumnsInput._({r'id': id});

  Input_SchoolsPkColumnsInput._(this._$data);

  factory Input_SchoolsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_SchoolsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_SchoolsPkColumnsInput<Input_SchoolsPkColumnsInput>
  get copyWith => CopyWith_Input_SchoolsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsPkColumnsInput ||
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

abstract class CopyWith_Input_SchoolsPkColumnsInput<TRes> {
  factory CopyWith_Input_SchoolsPkColumnsInput(
    Input_SchoolsPkColumnsInput instance,
    TRes Function(Input_SchoolsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_SchoolsPkColumnsInput;

  factory CopyWith_Input_SchoolsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_SchoolsPkColumnsInput<TRes>
    implements CopyWith_Input_SchoolsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_SchoolsPkColumnsInput(this._instance, this._then);

  final Input_SchoolsPkColumnsInput _instance;

  final TRes Function(Input_SchoolsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_SchoolsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_SchoolsPkColumnsInput<TRes>
    implements CopyWith_Input_SchoolsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_SchoolsSetInput {
  factory Input_SchoolsSetInput({String? name}) =>
      Input_SchoolsSetInput._({if (name != null) r'name': name});

  Input_SchoolsSetInput._(this._$data);

  factory Input_SchoolsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_SchoolsSetInput._(result$data);
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

  CopyWith_Input_SchoolsSetInput<Input_SchoolsSetInput> get copyWith =>
      CopyWith_Input_SchoolsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_SchoolsSetInput<TRes> {
  factory CopyWith_Input_SchoolsSetInput(
    Input_SchoolsSetInput instance,
    TRes Function(Input_SchoolsSetInput) then,
  ) = _CopyWithImpl_Input_SchoolsSetInput;

  factory CopyWith_Input_SchoolsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_SchoolsSetInput<TRes>
    implements CopyWith_Input_SchoolsSetInput<TRes> {
  _CopyWithImpl_Input_SchoolsSetInput(this._instance, this._then);

  final Input_SchoolsSetInput _instance;

  final TRes Function(Input_SchoolsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_SchoolsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_SchoolsSetInput<TRes>
    implements CopyWith_Input_SchoolsSetInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_SchoolsStreamCursorInput {
  factory Input_SchoolsStreamCursorInput({
    required Input_SchoolsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_SchoolsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_SchoolsStreamCursorInput._(this._$data);

  factory Input_SchoolsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_SchoolsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_SchoolsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_SchoolsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_SchoolsStreamCursorValueInput);

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

  CopyWith_Input_SchoolsStreamCursorInput<Input_SchoolsStreamCursorInput>
  get copyWith => CopyWith_Input_SchoolsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsStreamCursorInput ||
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

abstract class CopyWith_Input_SchoolsStreamCursorInput<TRes> {
  factory CopyWith_Input_SchoolsStreamCursorInput(
    Input_SchoolsStreamCursorInput instance,
    TRes Function(Input_SchoolsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_SchoolsStreamCursorInput;

  factory CopyWith_Input_SchoolsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsStreamCursorInput;

  TRes call({
    Input_SchoolsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_SchoolsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_SchoolsStreamCursorInput<TRes>
    implements CopyWith_Input_SchoolsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_SchoolsStreamCursorInput(this._instance, this._then);

  final Input_SchoolsStreamCursorInput _instance;

  final TRes Function(Input_SchoolsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_SchoolsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_SchoolsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_SchoolsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_SchoolsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_SchoolsStreamCursorInput<TRes>
    implements CopyWith_Input_SchoolsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_SchoolsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_SchoolsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_SchoolsStreamCursorValueInput.stub(_res);
}

class Input_SchoolsStreamCursorValueInput {
  factory Input_SchoolsStreamCursorValueInput({UuidValue? id, String? name}) =>
      Input_SchoolsStreamCursorValueInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_SchoolsStreamCursorValueInput._(this._$data);

  factory Input_SchoolsStreamCursorValueInput.fromJson(
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
    return Input_SchoolsStreamCursorValueInput._(result$data);
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

  CopyWith_Input_SchoolsStreamCursorValueInput<
    Input_SchoolsStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_SchoolsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsStreamCursorValueInput ||
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

abstract class CopyWith_Input_SchoolsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_SchoolsStreamCursorValueInput(
    Input_SchoolsStreamCursorValueInput instance,
    TRes Function(Input_SchoolsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_SchoolsStreamCursorValueInput;

  factory CopyWith_Input_SchoolsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_SchoolsStreamCursorValueInput<TRes>
    implements CopyWith_Input_SchoolsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_SchoolsStreamCursorValueInput(this._instance, this._then);

  final Input_SchoolsStreamCursorValueInput _instance;

  final TRes Function(Input_SchoolsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_SchoolsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_SchoolsStreamCursorValueInput<TRes>
    implements CopyWith_Input_SchoolsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_SchoolsUpdates {
  factory Input_SchoolsUpdates({
    Input_SchoolsSetInput? $_set,
    required Input_SchoolsBoolExp where,
  }) => Input_SchoolsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_SchoolsUpdates._(this._$data);

  factory Input_SchoolsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_SchoolsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_SchoolsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_SchoolsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_SchoolsSetInput? get $_set =>
      (_$data['_set'] as Input_SchoolsSetInput?);

  Input_SchoolsBoolExp get where => (_$data['where'] as Input_SchoolsBoolExp);

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

  CopyWith_Input_SchoolsUpdates<Input_SchoolsUpdates> get copyWith =>
      CopyWith_Input_SchoolsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_SchoolsUpdates<TRes> {
  factory CopyWith_Input_SchoolsUpdates(
    Input_SchoolsUpdates instance,
    TRes Function(Input_SchoolsUpdates) then,
  ) = _CopyWithImpl_Input_SchoolsUpdates;

  factory CopyWith_Input_SchoolsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsUpdates;

  TRes call({Input_SchoolsSetInput? $_set, Input_SchoolsBoolExp? where});
  CopyWith_Input_SchoolsSetInput<TRes> get $_set;
  CopyWith_Input_SchoolsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_SchoolsUpdates<TRes>
    implements CopyWith_Input_SchoolsUpdates<TRes> {
  _CopyWithImpl_Input_SchoolsUpdates(this._instance, this._then);

  final Input_SchoolsUpdates _instance;

  final TRes Function(Input_SchoolsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_SchoolsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_SchoolsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_SchoolsBoolExp),
    }),
  );

  CopyWith_Input_SchoolsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_SchoolsSetInput.stub(_then(_instance))
        : CopyWith_Input_SchoolsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_SchoolsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_SchoolsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_SchoolsUpdates<TRes>
    implements CopyWith_Input_SchoolsUpdates<TRes> {
  _CopyWithStubImpl_Input_SchoolsUpdates(this._res);

  TRes _res;

  call({Input_SchoolsSetInput? $_set, Input_SchoolsBoolExp? where}) => _res;

  CopyWith_Input_SchoolsSetInput<TRes> get $_set =>
      CopyWith_Input_SchoolsSetInput.stub(_res);

  CopyWith_Input_SchoolsBoolExp<TRes> get where =>
      CopyWith_Input_SchoolsBoolExp.stub(_res);
}

class Input_ServicesBoolExp {
  factory Input_ServicesBoolExp({
    List<Input_ServicesBoolExp>? $_and,
    Input_ServicesBoolExp? $_not,
    List<Input_ServicesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_BigintComparisonExp? color,
    Input_HistoryMeetingsBoolExp? defaultMeeting,
    Input_UuidComparisonExp? defaultMeetingId,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_GroupsBoolExp? groups,
    Input_GroupsAggregateBoolExp? groupsAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_ServicesBoolExp? nextService,
    Input_UuidComparisonExp? nextServiceId,
    Input_PersonsServicesBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StudyYearsBoolExp? studyYearFrom,
    Input_SmallintComparisonExp? studyYearFromId,
    Input_StudyYearsBoolExp? studyYearTo,
    Input_SmallintComparisonExp? studyYearToId,
    Input_BooleanComparisonExp? userCanEdit,
  }) => Input_ServicesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (blurhash != null) r'blurhash': blurhash,
    if (classes != null) r'classes': classes,
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (color != null) r'color': color,
    if (defaultMeeting != null) r'defaultMeeting': defaultMeeting,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
    if (editHistory != null) r'editHistory': editHistory,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (groups != null) r'groups': groups,
    if (groupsAggregate != null) r'groupsAggregate': groupsAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (nextService != null) r'nextService': nextService,
    if (nextServiceId != null) r'nextServiceId': nextServiceId,
    if (persons != null) r'persons': persons,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (studyYearFrom != null) r'studyYearFrom': studyYearFrom,
    if (studyYearFromId != null) r'studyYearFromId': studyYearFromId,
    if (studyYearTo != null) r'studyYearTo': studyYearTo,
    if (studyYearToId != null) r'studyYearToId': studyYearToId,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_ServicesBoolExp._(this._$data);

  factory Input_ServicesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ServicesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ServicesBoolExp.fromJson((e as Map<String, dynamic>)),
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
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$classes as Map<String, dynamic>));
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateBoolExp.fromJson(
              (l$classesAggregate as Map<String, dynamic>),
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
    if (data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = data['defaultMeeting'];
      result$data['defaultMeeting'] = l$defaultMeeting == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$defaultMeetingId as Map<String, dynamic>),
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
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$groups as Map<String, dynamic>));
    }
    if (data.containsKey('groupsAggregate')) {
      final l$groupsAggregate = data['groupsAggregate'];
      result$data['groupsAggregate'] = l$groupsAggregate == null
          ? null
          : Input_GroupsAggregateBoolExp.fromJson(
              (l$groupsAggregate as Map<String, dynamic>),
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
    if (data.containsKey('nextService')) {
      final l$nextService = data['nextService'];
      result$data['nextService'] = l$nextService == null
          ? null
          : Input_ServicesBoolExp.fromJson(
              (l$nextService as Map<String, dynamic>),
            );
    }
    if (data.containsKey('nextServiceId')) {
      final l$nextServiceId = data['nextServiceId'];
      result$data['nextServiceId'] = l$nextServiceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$nextServiceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsServicesBoolExp.fromJson(
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
    if (data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = data['studyYearFrom'];
      result$data['studyYearFrom'] = l$studyYearFrom == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = data['studyYearFromId'];
      result$data['studyYearFromId'] = l$studyYearFromId == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$studyYearFromId as Map<String, dynamic>),
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
    if (data.containsKey('studyYearToId')) {
      final l$studyYearToId = data['studyYearToId'];
      result$data['studyYearToId'] = l$studyYearToId == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$studyYearToId as Map<String, dynamic>),
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
    return Input_ServicesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ServicesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ServicesBoolExp>?);

  Input_ServicesBoolExp? get $_not =>
      (_$data['_not'] as Input_ServicesBoolExp?);

  List<Input_ServicesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ServicesBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_ClassesBoolExp? get classes =>
      (_$data['classes'] as Input_ClassesBoolExp?);

  Input_ClassesAggregateBoolExp? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateBoolExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryMeetingsBoolExp? get defaultMeeting =>
      (_$data['defaultMeeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get defaultMeetingId =>
      (_$data['defaultMeetingId'] as Input_UuidComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_GroupsBoolExp? get groups => (_$data['groups'] as Input_GroupsBoolExp?);

  Input_GroupsAggregateBoolExp? get groupsAggregate =>
      (_$data['groupsAggregate'] as Input_GroupsAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryMeetingsBoolExp? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_ServicesBoolExp? get nextService =>
      (_$data['nextService'] as Input_ServicesBoolExp?);

  Input_UuidComparisonExp? get nextServiceId =>
      (_$data['nextServiceId'] as Input_UuidComparisonExp?);

  Input_PersonsServicesBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsServicesBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_StudyYearsBoolExp? get studyYearFrom =>
      (_$data['studyYearFrom'] as Input_StudyYearsBoolExp?);

  Input_SmallintComparisonExp? get studyYearFromId =>
      (_$data['studyYearFromId'] as Input_SmallintComparisonExp?);

  Input_StudyYearsBoolExp? get studyYearTo =>
      (_$data['studyYearTo'] as Input_StudyYearsBoolExp?);

  Input_SmallintComparisonExp? get studyYearToId =>
      (_$data['studyYearToId'] as Input_SmallintComparisonExp?);

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
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = defaultMeeting;
      result$data['defaultMeeting'] = l$defaultMeeting?.toJson();
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('groupsAggregate')) {
      final l$groupsAggregate = groupsAggregate;
      result$data['groupsAggregate'] = l$groupsAggregate?.toJson();
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
    if (_$data.containsKey('nextService')) {
      final l$nextService = nextService;
      result$data['nextService'] = l$nextService?.toJson();
    }
    if (_$data.containsKey('nextServiceId')) {
      final l$nextServiceId = nextServiceId;
      result$data['nextServiceId'] = l$nextServiceId?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = studyYearFrom;
      result$data['studyYearFrom'] = l$studyYearFrom?.toJson();
    }
    if (_$data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = studyYearFromId;
      result$data['studyYearFromId'] = l$studyYearFromId?.toJson();
    }
    if (_$data.containsKey('studyYearTo')) {
      final l$studyYearTo = studyYearTo;
      result$data['studyYearTo'] = l$studyYearTo?.toJson();
    }
    if (_$data.containsKey('studyYearToId')) {
      final l$studyYearToId = studyYearToId;
      result$data['studyYearToId'] = l$studyYearToId?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ServicesBoolExp<Input_ServicesBoolExp> get copyWith =>
      CopyWith_Input_ServicesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesBoolExp || runtimeType != other.runtimeType) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
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
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (_$data.containsKey('defaultMeeting') !=
        other._$data.containsKey('defaultMeeting')) {
      return false;
    }
    if (l$defaultMeeting != lOther$defaultMeeting) {
      return false;
    }
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
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
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != lOther$groups) {
      return false;
    }
    final l$groupsAggregate = groupsAggregate;
    final lOther$groupsAggregate = other.groupsAggregate;
    if (_$data.containsKey('groupsAggregate') !=
        other._$data.containsKey('groupsAggregate')) {
      return false;
    }
    if (l$groupsAggregate != lOther$groupsAggregate) {
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
    final l$nextService = nextService;
    final lOther$nextService = other.nextService;
    if (_$data.containsKey('nextService') !=
        other._$data.containsKey('nextService')) {
      return false;
    }
    if (l$nextService != lOther$nextService) {
      return false;
    }
    final l$nextServiceId = nextServiceId;
    final lOther$nextServiceId = other.nextServiceId;
    if (_$data.containsKey('nextServiceId') !=
        other._$data.containsKey('nextServiceId')) {
      return false;
    }
    if (l$nextServiceId != lOther$nextServiceId) {
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
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (_$data.containsKey('studyYearFrom') !=
        other._$data.containsKey('studyYearFrom')) {
      return false;
    }
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (_$data.containsKey('studyYearFromId') !=
        other._$data.containsKey('studyYearFromId')) {
      return false;
    }
    if (l$studyYearFromId != lOther$studyYearFromId) {
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
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (_$data.containsKey('studyYearToId') !=
        other._$data.containsKey('studyYearToId')) {
      return false;
    }
    if (l$studyYearToId != lOther$studyYearToId) {
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
    final l$classes = classes;
    final l$classesAggregate = classesAggregate;
    final l$color = color;
    final l$defaultMeeting = defaultMeeting;
    final l$defaultMeetingId = defaultMeetingId;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$groups = groups;
    final l$groupsAggregate = groupsAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$meetings = meetings;
    final l$name = name;
    final l$nextService = nextService;
    final l$nextServiceId = nextServiceId;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearTo = studyYearTo;
    final l$studyYearToId = studyYearToId;
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
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeeting') ? l$defaultMeeting : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('groupsAggregate') ? l$groupsAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nextService') ? l$nextService : const {},
      _$data.containsKey('nextServiceId') ? l$nextServiceId : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('studyYearFrom') ? l$studyYearFrom : const {},
      _$data.containsKey('studyYearFromId') ? l$studyYearFromId : const {},
      _$data.containsKey('studyYearTo') ? l$studyYearTo : const {},
      _$data.containsKey('studyYearToId') ? l$studyYearToId : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}
