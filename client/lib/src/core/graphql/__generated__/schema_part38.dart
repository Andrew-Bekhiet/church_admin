// Part 38 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesArrRelInsertInput(
    Input_PersonsHobbiesArrRelInsertInput instance,
    TRes Function(Input_PersonsHobbiesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesArrRelInsertInput;

  factory CopyWith_Input_PersonsHobbiesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesArrRelInsertInput;

  TRes call({
    List<Input_PersonsHobbiesInsertInput>? data,
    Input_PersonsHobbiesOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_PersonsHobbiesInsertInput> Function(
              Iterable<
                  CopyWith_Input_PersonsHobbiesInsertInput<
                      Input_PersonsHobbiesInsertInput>>)
          _fn);
  CopyWith_Input_PersonsHobbiesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsHobbiesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesArrRelInsertInput _instance;

  final TRes Function(Input_PersonsHobbiesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_PersonsHobbiesArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_PersonsHobbiesInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_PersonsHobbiesOnConflict?),
      }));

  TRes data(
          Iterable<Input_PersonsHobbiesInsertInput> Function(
                  Iterable<
                      CopyWith_Input_PersonsHobbiesInsertInput<
                          Input_PersonsHobbiesInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_PersonsHobbiesInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_PersonsHobbiesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsHobbiesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsHobbiesInsertInput>? data,
    Input_PersonsHobbiesOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsHobbiesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsHobbiesOnConflict.stub(_res);
}

class Input_PersonsHobbiesBoolExp {
  factory Input_PersonsHobbiesBoolExp({
    List<Input_PersonsHobbiesBoolExp>? $_and,
    Input_PersonsHobbiesBoolExp? $_not,
    List<Input_PersonsHobbiesBoolExp>? $_or,
    Input_HobbiesBoolExp? hobby,
    Input_UuidComparisonExp? hobbyId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) =>
      Input_PersonsHobbiesBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (hobby != null) r'hobby': hobby,
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesBoolExp._(this._$data);

  factory Input_PersonsHobbiesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input_PersonsHobbiesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsHobbiesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input_PersonsHobbiesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hobby')) {
      final l$hobby = data['hobby'];
      result$data['hobby'] = l$hobby == null
          ? null
          : Input_HobbiesBoolExp.fromJson((l$hobby as Map<String, dynamic>));
    }
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$hobbyId as Map<String, dynamic>));
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>));
    }
    return Input_PersonsHobbiesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsHobbiesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsHobbiesBoolExp>?);

  Input_PersonsHobbiesBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsHobbiesBoolExp?);

  List<Input_PersonsHobbiesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsHobbiesBoolExp>?);

  Input_HobbiesBoolExp? get hobby => (_$data['hobby'] as Input_HobbiesBoolExp?);

  Input_UuidComparisonExp? get hobbyId =>
      (_$data['hobbyId'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('hobby')) {
      final l$hobby = hobby;
      result$data['hobby'] = l$hobby?.toJson();
    }
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] = l$hobbyId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesBoolExp<Input_PersonsHobbiesBoolExp>
      get copyWith => CopyWith_Input_PersonsHobbiesBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesBoolExp ||
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
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (_$data.containsKey('hobby') != other._$data.containsKey('hobby')) {
      return false;
    }
    if (l$hobby != lOther$hobby) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$hobby = hobby;
    final l$hobbyId = hobbyId;
    final l$person = person;
    final l$personId = personId;
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
      _$data.containsKey('hobby') ? l$hobby : const {},
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesBoolExp<TRes> {
  factory CopyWith_Input_PersonsHobbiesBoolExp(
    Input_PersonsHobbiesBoolExp instance,
    TRes Function(Input_PersonsHobbiesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesBoolExp;

  factory CopyWith_Input_PersonsHobbiesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesBoolExp;

  TRes call({
    List<Input_PersonsHobbiesBoolExp>? $_and,
    Input_PersonsHobbiesBoolExp? $_not,
    List<Input_PersonsHobbiesBoolExp>? $_or,
    Input_HobbiesBoolExp? hobby,
    Input_UuidComparisonExp? hobbyId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
      Iterable<Input_PersonsHobbiesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_PersonsHobbiesBoolExp<
                      Input_PersonsHobbiesBoolExp>>?)
          _fn);
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_PersonsHobbiesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_PersonsHobbiesBoolExp<
                      Input_PersonsHobbiesBoolExp>>?)
          _fn);
  CopyWith_Input_HobbiesBoolExp<TRes> get hobby;
  CopyWith_Input_UuidComparisonExp<TRes> get hobbyId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_PersonsHobbiesBoolExp<TRes>
    implements CopyWith_Input_PersonsHobbiesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesBoolExp(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesBoolExp _instance;

  final TRes Function(Input_PersonsHobbiesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? hobby = _undefined,
    Object? hobbyId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_PersonsHobbiesBoolExp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input_PersonsHobbiesBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_PersonsHobbiesBoolExp>?),
        if (hobby != _undefined) 'hobby': (hobby as Input_HobbiesBoolExp?),
        if (hobbyId != _undefined)
          'hobbyId': (hobbyId as Input_UuidComparisonExp?),
        if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
        if (personId != _undefined)
          'personId': (personId as Input_UuidComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_PersonsHobbiesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_PersonsHobbiesBoolExp<
                          Input_PersonsHobbiesBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(
              _instance.$_and?.map((e) => CopyWith_Input_PersonsHobbiesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsHobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_PersonsHobbiesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_PersonsHobbiesBoolExp<
                          Input_PersonsHobbiesBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(
              _instance.$_or?.map((e) => CopyWith_Input_PersonsHobbiesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_HobbiesBoolExp<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return local$hobby == null
        ? CopyWith_Input_HobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_HobbiesBoolExp(local$hobby, (e) => call(hobby: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get hobbyId {
    final local$hobbyId = _instance.hobbyId;
    return local$hobbyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$hobbyId, (e) => call(hobbyId: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personId, (e) => call(personId: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesBoolExp<TRes>
    implements CopyWith_Input_PersonsHobbiesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsHobbiesBoolExp>? $_and,
    Input_PersonsHobbiesBoolExp? $_not,
    List<Input_PersonsHobbiesBoolExp>? $_or,
    Input_HobbiesBoolExp? hobby,
    Input_UuidComparisonExp? hobbyId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HobbiesBoolExp<TRes> get hobby =>
      CopyWith_Input_HobbiesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get hobbyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsHobbiesInsertInput {
  factory Input_PersonsHobbiesInsertInput({
    Input_HobbiesObjRelInsertInput? hobby,
    UuidValue? hobbyId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) =>
      Input_PersonsHobbiesInsertInput._({
        if (hobby != null) r'hobby': hobby,
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesInsertInput._(this._$data);

  factory Input_PersonsHobbiesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobby')) {
      final l$hobby = data['hobby'];
      result$data['hobby'] = l$hobby == null
          ? null
          : Input_HobbiesObjRelInsertInput.fromJson(
              (l$hobby as Map<String, dynamic>));
    }
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] =
          l$hobbyId == null ? null : stringToUuid(l$hobbyId);
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsObjRelInsertInput.fromJson(
              (l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    return Input_PersonsHobbiesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesObjRelInsertInput? get hobby =>
      (_$data['hobby'] as Input_HobbiesObjRelInsertInput?);

  UuidValue? get hobbyId => (_$data['hobbyId'] as UuidValue?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobby')) {
      final l$hobby = hobby;
      result$data['hobby'] = l$hobby?.toJson();
    }
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : uuidToString(l$hobbyId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesInsertInput<Input_PersonsHobbiesInsertInput>
      get copyWith => CopyWith_Input_PersonsHobbiesInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (_$data.containsKey('hobby') != other._$data.containsKey('hobby')) {
      return false;
    }
    if (l$hobby != lOther$hobby) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hobby = hobby;
    final l$hobbyId = hobbyId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobby') ? l$hobby : const {},
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesInsertInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesInsertInput(
    Input_PersonsHobbiesInsertInput instance,
    TRes Function(Input_PersonsHobbiesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesInsertInput;

  factory CopyWith_Input_PersonsHobbiesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesInsertInput;

  TRes call({
    Input_HobbiesObjRelInsertInput? hobby,
    UuidValue? hobbyId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  });
  CopyWith_Input_HobbiesObjRelInsertInput<TRes> get hobby;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_PersonsHobbiesInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesInsertInput _instance;

  final TRes Function(Input_PersonsHobbiesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? hobbyId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesInsertInput._({
        ..._instance._$data,
        if (hobby != _undefined)
          'hobby': (hobby as Input_HobbiesObjRelInsertInput?),
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as UuidValue?),
        if (person != _undefined)
          'person': (person as Input_PersonsObjRelInsertInput?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));

  CopyWith_Input_HobbiesObjRelInsertInput<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return local$hobby == null
        ? CopyWith_Input_HobbiesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_HobbiesObjRelInsertInput(
            local$hobby, (e) => call(hobby: e));
  }

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesInsertInput(this._res);

  TRes _res;

  call({
    Input_HobbiesObjRelInsertInput? hobby,
    UuidValue? hobbyId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) =>
      _res;

  CopyWith_Input_HobbiesObjRelInsertInput<TRes> get hobby =>
      CopyWith_Input_HobbiesObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_PersonsHobbiesMaxOrderBy {
  factory Input_PersonsHobbiesMaxOrderBy({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsHobbiesMaxOrderBy._({
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesMaxOrderBy._(this._$data);

  factory Input_PersonsHobbiesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : fromJson_Enum_OrderBy((l$hobbyId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsHobbiesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get hobbyId => (_$data['hobbyId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : toJson_Enum_OrderBy(l$hobbyId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesMaxOrderBy<Input_PersonsHobbiesMaxOrderBy>
      get copyWith => CopyWith_Input_PersonsHobbiesMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hobbyId = hobbyId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsHobbiesMaxOrderBy(
    Input_PersonsHobbiesMaxOrderBy instance,
    TRes Function(Input_PersonsHobbiesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesMaxOrderBy;

  factory CopyWith_Input_PersonsHobbiesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesMaxOrderBy;

  TRes call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_PersonsHobbiesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesMaxOrderBy _instance;

  final TRes Function(Input_PersonsHobbiesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobbyId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesMaxOrderBy._({
        ..._instance._$data,
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsHobbiesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_PersonsHobbiesMinOrderBy {
  factory Input_PersonsHobbiesMinOrderBy({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsHobbiesMinOrderBy._({
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesMinOrderBy._(this._$data);

  factory Input_PersonsHobbiesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : fromJson_Enum_OrderBy((l$hobbyId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsHobbiesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get hobbyId => (_$data['hobbyId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : toJson_Enum_OrderBy(l$hobbyId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesMinOrderBy<Input_PersonsHobbiesMinOrderBy>
      get copyWith => CopyWith_Input_PersonsHobbiesMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hobbyId = hobbyId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsHobbiesMinOrderBy(
    Input_PersonsHobbiesMinOrderBy instance,
    TRes Function(Input_PersonsHobbiesMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesMinOrderBy;

  factory CopyWith_Input_PersonsHobbiesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesMinOrderBy;

  TRes call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_PersonsHobbiesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesMinOrderBy _instance;

  final TRes Function(Input_PersonsHobbiesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobbyId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesMinOrderBy._({
        ..._instance._$data,
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsHobbiesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_PersonsHobbiesOnConflict {
  factory Input_PersonsHobbiesOnConflict({
    required Enum_PersonsHobbiesConstraint constraint,
    List<Enum_PersonsHobbiesUpdateColumn>? updateColumns,
    Input_PersonsHobbiesBoolExp? where,
  }) =>
      Input_PersonsHobbiesOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_PersonsHobbiesOnConflict._(this._$data);

  factory Input_PersonsHobbiesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_PersonsHobbiesConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsHobbiesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsHobbiesBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_PersonsHobbiesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsHobbiesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsHobbiesConstraint);

  List<Enum_PersonsHobbiesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsHobbiesUpdateColumn>?);

  Input_PersonsHobbiesBoolExp? get where =>
      (_$data['where'] as Input_PersonsHobbiesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_PersonsHobbiesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsHobbiesUpdateColumn>)
              .map((e) => toJson_Enum_PersonsHobbiesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesOnConflict<Input_PersonsHobbiesOnConflict>
      get copyWith => CopyWith_Input_PersonsHobbiesOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesOnConflict ||
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

abstract class CopyWith_Input_PersonsHobbiesOnConflict<TRes> {
  factory CopyWith_Input_PersonsHobbiesOnConflict(
    Input_PersonsHobbiesOnConflict instance,
    TRes Function(Input_PersonsHobbiesOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesOnConflict;

  factory CopyWith_Input_PersonsHobbiesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesOnConflict;

  TRes call({
    Enum_PersonsHobbiesConstraint? constraint,
    List<Enum_PersonsHobbiesUpdateColumn>? updateColumns,
    Input_PersonsHobbiesBoolExp? where,
  });
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsHobbiesOnConflict<TRes>
    implements CopyWith_Input_PersonsHobbiesOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesOnConflict(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesOnConflict _instance;

  final TRes Function(Input_PersonsHobbiesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_PersonsHobbiesOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_PersonsHobbiesConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns':
              (updateColumns as List<Enum_PersonsHobbiesUpdateColumn>),
        if (where != _undefined)
          'where': (where as Input_PersonsHobbiesBoolExp?),
      }));

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsHobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesOnConflict<TRes>
    implements CopyWith_Input_PersonsHobbiesOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsHobbiesConstraint? constraint,
    List<Enum_PersonsHobbiesUpdateColumn>? updateColumns,
    Input_PersonsHobbiesBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);
}

class Input_PersonsHobbiesOrderBy {
  factory Input_PersonsHobbiesOrderBy({
    Input_HobbiesOrderBy? hobby,
    Enum_OrderBy? hobbyId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsHobbiesOrderBy._({
        if (hobby != null) r'hobby': hobby,
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesOrderBy._(this._$data);

  factory Input_PersonsHobbiesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobby')) {
      final l$hobby = data['hobby'];
      result$data['hobby'] = l$hobby == null
          ? null
          : Input_HobbiesOrderBy.fromJson((l$hobby as Map<String, dynamic>));
    }
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : fromJson_Enum_OrderBy((l$hobbyId as String));
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsHobbiesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesOrderBy? get hobby => (_$data['hobby'] as Input_HobbiesOrderBy?);

  Enum_OrderBy? get hobbyId => (_$data['hobbyId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobby')) {
      final l$hobby = hobby;
      result$data['hobby'] = l$hobby?.toJson();
    }
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : toJson_Enum_OrderBy(l$hobbyId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesOrderBy<Input_PersonsHobbiesOrderBy>
      get copyWith => CopyWith_Input_PersonsHobbiesOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (_$data.containsKey('hobby') != other._$data.containsKey('hobby')) {
      return false;
    }
    if (l$hobby != lOther$hobby) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hobby = hobby;
    final l$hobbyId = hobbyId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobby') ? l$hobby : const {},
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesOrderBy<TRes> {
  factory CopyWith_Input_PersonsHobbiesOrderBy(
    Input_PersonsHobbiesOrderBy instance,
    TRes Function(Input_PersonsHobbiesOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesOrderBy;

  factory CopyWith_Input_PersonsHobbiesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesOrderBy;

  TRes call({
    Input_HobbiesOrderBy? hobby,
    Enum_OrderBy? hobbyId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  });
  CopyWith_Input_HobbiesOrderBy<TRes> get hobby;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_PersonsHobbiesOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesOrderBy _instance;

  final TRes Function(Input_PersonsHobbiesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? hobbyId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesOrderBy._({
        ..._instance._$data,
        if (hobby != _undefined) 'hobby': (hobby as Input_HobbiesOrderBy?),
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as Enum_OrderBy?),
        if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));

  CopyWith_Input_HobbiesOrderBy<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return local$hobby == null
        ? CopyWith_Input_HobbiesOrderBy.stub(_then(_instance))
        : CopyWith_Input_HobbiesOrderBy(local$hobby, (e) => call(hobby: e));
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesOrderBy(this._res);

  TRes _res;

  call({
    Input_HobbiesOrderBy? hobby,
    Enum_OrderBy? hobbyId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) =>
      _res;

  CopyWith_Input_HobbiesOrderBy<TRes> get hobby =>
      CopyWith_Input_HobbiesOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_PersonsHobbiesStreamCursorInput {
  factory Input_PersonsHobbiesStreamCursorInput({
    required Input_PersonsHobbiesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_PersonsHobbiesStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_PersonsHobbiesStreamCursorInput._(this._$data);

  factory Input_PersonsHobbiesStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonsHobbiesStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsHobbiesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsHobbiesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonsHobbiesStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesStreamCursorInput<
          Input_PersonsHobbiesStreamCursorInput>
      get copyWith => CopyWith_Input_PersonsHobbiesStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsHobbiesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesStreamCursorInput(
    Input_PersonsHobbiesStreamCursorInput instance,
    TRes Function(Input_PersonsHobbiesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesStreamCursorInput;

  factory CopyWith_Input_PersonsHobbiesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorInput;

  TRes call({
    Input_PersonsHobbiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsHobbiesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesStreamCursorInput _instance;

  final TRes Function(Input_PersonsHobbiesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_PersonsHobbiesStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue':
              (initialValue as Input_PersonsHobbiesStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsHobbiesStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsHobbiesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsHobbiesStreamCursorValueInput.stub(_res);
}

class Input_PersonsHobbiesStreamCursorValueInput {
  factory Input_PersonsHobbiesStreamCursorValueInput({
    UuidValue? hobbyId,
    UuidValue? personId,
  }) =>
      Input_PersonsHobbiesStreamCursorValueInput._({
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesStreamCursorValueInput._(this._$data);

  factory Input_PersonsHobbiesStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] =
          l$hobbyId == null ? null : stringToUuid(l$hobbyId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    return Input_PersonsHobbiesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get hobbyId => (_$data['hobbyId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : uuidToString(l$hobbyId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesStreamCursorValueInput<
          Input_PersonsHobbiesStreamCursorValueInput>
      get copyWith => CopyWith_Input_PersonsHobbiesStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hobbyId = hobbyId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesStreamCursorValueInput(
    Input_PersonsHobbiesStreamCursorValueInput instance,
    TRes Function(Input_PersonsHobbiesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesStreamCursorValueInput;

  factory CopyWith_Input_PersonsHobbiesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorValueInput;

  TRes call({
    UuidValue? hobbyId,
    UuidValue? personId,
  });
}

class _CopyWithImpl_Input_PersonsHobbiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsHobbiesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobbyId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesStreamCursorValueInput._({
        ..._instance._$data,
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as UuidValue?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));
}

class _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsHobbiesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? hobbyId,
    UuidValue? personId,
  }) =>
      _res;
}

class Input_PersonsHobbiesUpdates {
  factory Input_PersonsHobbiesUpdates(
          {required Input_PersonsHobbiesBoolExp where}) =>
      Input_PersonsHobbiesUpdates._({
        r'where': where,
      });

  Input_PersonsHobbiesUpdates._(this._$data);

  factory Input_PersonsHobbiesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input_PersonsHobbiesBoolExp.fromJson((l$where as Map<String, dynamic>));
    return Input_PersonsHobbiesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsHobbiesBoolExp get where =>
      (_$data['where'] as Input_PersonsHobbiesBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesUpdates<Input_PersonsHobbiesUpdates>
      get copyWith => CopyWith_Input_PersonsHobbiesUpdates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesUpdates ||
        runtimeType != other.runtimeType) {
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
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesUpdates<TRes> {
  factory CopyWith_Input_PersonsHobbiesUpdates(
    Input_PersonsHobbiesUpdates instance,
    TRes Function(Input_PersonsHobbiesUpdates) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesUpdates;

  factory CopyWith_Input_PersonsHobbiesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesUpdates;

  TRes call({Input_PersonsHobbiesBoolExp? where});
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsHobbiesUpdates<TRes>
    implements CopyWith_Input_PersonsHobbiesUpdates<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesUpdates(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesUpdates _instance;

  final TRes Function(Input_PersonsHobbiesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Input_PersonsHobbiesUpdates._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input_PersonsHobbiesBoolExp),
      }));

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonsHobbiesBoolExp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesUpdates<TRes>
    implements CopyWith_Input_PersonsHobbiesUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesUpdates(this._res);

  TRes _res;

  call({Input_PersonsHobbiesBoolExp? where}) => _res;

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get where =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);
}

class Input_PersonsIncInput {
  factory Input_PersonsIncInput({
    int? color,
    int? studyYearId,
  }) =>
      Input_PersonsIncInput._({
        if (color != null) r'color': color,
        if (studyYearId != null) r'studyYearId': studyYearId,
      });

  Input_PersonsIncInput._(this._$data);

  factory Input_PersonsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    return Input_PersonsIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    return result$data;
  }

  CopyWith_Input_PersonsIncInput<Input_PersonsIncInput> get copyWith =>
      CopyWith_Input_PersonsIncInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsIncInput || runtimeType != other.runtimeType) {
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
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsIncInput<TRes> {
  factory CopyWith_Input_PersonsIncInput(
    Input_PersonsIncInput instance,
    TRes Function(Input_PersonsIncInput) then,
  ) = _CopyWithImpl_Input_PersonsIncInput;

  factory CopyWith_Input_PersonsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsIncInput;

  TRes call({
    int? color,
    int? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsIncInput<TRes>
    implements CopyWith_Input_PersonsIncInput<TRes> {
  _CopyWithImpl_Input_PersonsIncInput(
    this._instance,
    this._then,
  );

  final Input_PersonsIncInput _instance;

  final TRes Function(Input_PersonsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? studyYearId = _undefined,
  }) =>
      _then(Input_PersonsIncInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
        if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      }));
}

class _CopyWithStubImpl_Input_PersonsIncInput<TRes>
    implements CopyWith_Input_PersonsIncInput<TRes> {
  _CopyWithStubImpl_Input_PersonsIncInput(this._res);

  TRes _res;

  call({
    int? color,
    int? studyYearId,
  }) =>
      _res;
}

class Input_PersonsInsertInput {
  factory Input_PersonsInsertInput({
    Input_AddressesObjRelInsertInput? address,
    String? addressText,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    DateTime? birthdate,
    Input_HistoryCallHistoryArrRelInsertInput? callHistory,
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    Input_CollegesObjRelInsertInput? college,
    UuidValue? collegeId,
    int? color,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    Input_FathersObjRelInsertInput? father,
    UuidValue? fatherId,
    bool? gender,
    Map<String, dynamic>? geolocation,
    Input_PersonsGroupsArrRelInsertInput? groups,
    Input_PersonsHobbiesArrRelInsertInput? hobbies,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Input_JobsObjRelInsertInput? job,
    String? jobDescription,
    UuidValue? jobId,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? mainPhone,
    String? name,
    String? notes,
    Json? otherPhones,
    Input_PersonTypesObjRelInsertInput? personType,
    UuidValue? personTypeId,
    Input_QualificationsObjRelInsertInput? qualification,
    UuidValue? qualificationId,
    Input_SchoolsObjRelInsertInput? school,
    UuidValue? schoolId,
    Input_PersonsServicesArrRelInsertInput? services,
    UuidValue? shammasLevelId,
    Input_PersonStatesObjRelInsertInput? state,
    UuidValue? stateId,
    UuidValue? storeId,
    Input_StudyYearsObjRelInsertInput? studyYear,
    int? studyYearId,
    Input_PersonsTagsArrRelInsertInput? tags,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
  }) =>
      Input_PersonsInsertInput._({
        if (address != null) r'address': address,
        if (addressText != null) r'addressText': addressText,
        if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
        if (birthdate != null) r'birthdate': birthdate,
        if (callHistory != null) r'callHistory': callHistory,
        if (church != null) r'church': church,
        if (churchId != null) r'churchId': churchId,
        if (college != null) r'college': college,
        if (collegeId != null) r'collegeId': collegeId,
        if (color != null) r'color': color,
        if (confessionHistory != null) r'confessionHistory': confessionHistory,
        if (family != null) r'family': family,
        if (familyId != null) r'familyId': familyId,
        if (father != null) r'father': father,
        if (fatherId != null) r'fatherId': fatherId,
        if (gender != null) r'gender': gender,
        if (geolocation != null) r'geolocation': geolocation,
        if (groups != null) r'groups': groups,
        if (hobbies != null) r'hobbies': hobbies,
        if (isServant != null) r'isServant': isServant,
        if (isShammas != null) r'isShammas': isShammas,
        if (isStudent != null) r'isStudent': isStudent,
        if (job != null) r'job': job,
        if (jobDescription != null) r'jobDescription': jobDescription,
        if (jobId != null) r'jobId': jobId,
        if (kodasHistory != null) r'kodasHistory': kodasHistory,
        if (mainPhone != null) r'mainPhone': mainPhone,
        if (name != null) r'name': name,
        if (notes != null) r'notes': notes,
        if (otherPhones != null) r'otherPhones': otherPhones,
        if (personType != null) r'personType': personType,
        if (personTypeId != null) r'personTypeId': personTypeId,
        if (qualification != null) r'qualification': qualification,
        if (qualificationId != null) r'qualificationId': qualificationId,
        if (school != null) r'school': school,
        if (schoolId != null) r'schoolId': schoolId,
        if (services != null) r'services': services,
        if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
        if (state != null) r'state': state,
        if (stateId != null) r'stateId': stateId,
        if (storeId != null) r'storeId': storeId,
        if (studyYear != null) r'studyYear': studyYear,
        if (studyYearId != null) r'studyYearId': studyYearId,
        if (tags != null) r'tags': tags,
        if (visitHistory != null) r'visitHistory': visitHistory,
      });

  Input_PersonsInsertInput._(this._$data);

  factory Input_PersonsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesObjRelInsertInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = (l$addressText as String?);
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>));
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] =
          l$birthdate == null ? null : dateFromString(l$birthdate);
    }
    if (data.containsKey('callHistory')) {
      final l$callHistory = data['callHistory'];
      result$data['callHistory'] = l$callHistory == null
          ? null
          : Input_HistoryCallHistoryArrRelInsertInput.fromJson(
              (l$callHistory as Map<String, dynamic>));
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesObjRelInsertInput.fromJson(
              (l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] =
          l$churchId == null ? null : stringToUuid(l$churchId);
    }
    if (data.containsKey('college')) {
      final l$college = data['college'];
      result$data['college'] = l$college == null
          ? null
          : Input_CollegesObjRelInsertInput.fromJson(
              (l$college as Map<String, dynamic>));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] =
          l$collegeId == null ? null : stringToUuid(l$collegeId);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryArrRelInsertInput.fromJson(
              (l$confessionHistory as Map<String, dynamic>));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] =
          l$familyId == null ? null : stringToUuid(l$familyId);
    }
    if (data.containsKey('father')) {
      final l$father = data['father'];
      result$data['father'] = l$father == null
          ? null
          : Input_FathersObjRelInsertInput.fromJson(
              (l$father as Map<String, dynamic>));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] =
          l$fatherId == null ? null : stringToUuid(l$fatherId);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input_PersonsGroupsArrRelInsertInput.fromJson(
              (l$groups as Map<String, dynamic>));
    }
    if (data.containsKey('hobbies')) {
      final l$hobbies = data['hobbies'];
      result$data['hobbies'] = l$hobbies == null
          ? null
          : Input_PersonsHobbiesArrRelInsertInput.fromJson(
              (l$hobbies as Map<String, dynamic>));
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = (l$isServant as bool?);
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = (l$isShammas as bool?);
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = (l$isStudent as bool?);
    }
    if (data.containsKey('job')) {
      final l$job = data['job'];
      result$data['job'] = l$job == null
          ? null
          : Input_JobsObjRelInsertInput.fromJson(
              (l$job as Map<String, dynamic>));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null ? null : stringToUuid(l$jobId);
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryArrRelInsertInput.fromJson(
              (l$kodasHistory as Map<String, dynamic>));
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = (l$mainPhone as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as Json?);
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesObjRelInsertInput.fromJson(
              (l$personType as Map<String, dynamic>));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] =
          l$personTypeId == null ? null : stringToUuid(l$personTypeId);
    }
    if (data.containsKey('qualification')) {
      final l$qualification = data['qualification'];
      result$data['qualification'] = l$qualification == null
          ? null
          : Input_QualificationsObjRelInsertInput.fromJson(
              (l$qualification as Map<String, dynamic>));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] =
          l$qualificationId == null ? null : stringToUuid(l$qualificationId);
    }
    if (data.containsKey('school')) {
      final l$school = data['school'];
      result$data['school'] = l$school == null
          ? null
          : Input_SchoolsObjRelInsertInput.fromJson(
              (l$school as Map<String, dynamic>));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] =
          l$schoolId == null ? null : stringToUuid(l$schoolId);
    }
    if (data.containsKey('services')) {
      final l$services = data['services'];
      result$data['services'] = l$services == null
          ? null
          : Input_PersonsServicesArrRelInsertInput.fromJson(
              (l$services as Map<String, dynamic>));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] =
          l$shammasLevelId == null ? null : stringToUuid(l$shammasLevelId);
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = l$state == null
          ? null
          : Input_PersonStatesObjRelInsertInput.fromJson(
              (l$state as Map<String, dynamic>));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] =
          l$stateId == null ? null : stringToUuid(l$stateId);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] =
          l$storeId == null ? null : stringToUuid(l$storeId);
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYear as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = l$tags == null
          ? null
          : Input_PersonsTagsArrRelInsertInput.fromJson(
              (l$tags as Map<String, dynamic>));
    }
    if (data.containsKey('visitHistory')) {
      final l$visitHistory = data['visitHistory'];
      result$data['visitHistory'] = l$visitHistory == null
          ? null
          : Input_HistoryVisitHistoryArrRelInsertInput.fromJson(
              (l$visitHistory as Map<String, dynamic>));
    }
    return Input_PersonsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesObjRelInsertInput? get address =>
      (_$data['address'] as Input_AddressesObjRelInsertInput?);

  String? get addressText => (_$data['addressText'] as String?);

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  DateTime? get birthdate => (_$data['birthdate'] as DateTime?);

  Input_HistoryCallHistoryArrRelInsertInput? get callHistory =>
      (_$data['callHistory'] as Input_HistoryCallHistoryArrRelInsertInput?);

  Input_ChurchesObjRelInsertInput? get church =>
      (_$data['church'] as Input_ChurchesObjRelInsertInput?);

  UuidValue? get churchId => (_$data['churchId'] as UuidValue?);

  Input_CollegesObjRelInsertInput? get college =>
      (_$data['college'] as Input_CollegesObjRelInsertInput?);

  UuidValue? get collegeId => (_$data['collegeId'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  Input_HistoryConfessionHistoryArrRelInsertInput? get confessionHistory =>
      (_$data['confessionHistory']
          as Input_HistoryConfessionHistoryArrRelInsertInput?);

  Input_FamiliesObjRelInsertInput? get family =>
      (_$data['family'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  Input_FathersObjRelInsertInput? get father =>
      (_$data['father'] as Input_FathersObjRelInsertInput?);

  UuidValue? get fatherId => (_$data['fatherId'] as UuidValue?);

  bool? get gender => (_$data['gender'] as bool?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  Input_PersonsGroupsArrRelInsertInput? get groups =>
      (_$data['groups'] as Input_PersonsGroupsArrRelInsertInput?);

  Input_PersonsHobbiesArrRelInsertInput? get hobbies =>
      (_$data['hobbies'] as Input_PersonsHobbiesArrRelInsertInput?);

  bool? get isServant => (_$data['isServant'] as bool?);

  bool? get isShammas => (_$data['isShammas'] as bool?);

  bool? get isStudent => (_$data['isStudent'] as bool?);

  Input_JobsObjRelInsertInput? get job =>
      (_$data['job'] as Input_JobsObjRelInsertInput?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  UuidValue? get jobId => (_$data['jobId'] as UuidValue?);

  Input_HistoryKodasHistoryArrRelInsertInput? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryArrRelInsertInput?);

  String? get mainPhone => (_$data['mainPhone'] as String?);

  String? get name => (_$data['name'] as String?);

  String? get notes => (_$data['notes'] as String?);

  Json? get otherPhones => (_$data['otherPhones'] as Json?);

  Input_PersonTypesObjRelInsertInput? get personType =>
      (_$data['personType'] as Input_PersonTypesObjRelInsertInput?);

  UuidValue? get personTypeId => (_$data['personTypeId'] as UuidValue?);

  Input_QualificationsObjRelInsertInput? get qualification =>
      (_$data['qualification'] as Input_QualificationsObjRelInsertInput?);

  UuidValue? get qualificationId => (_$data['qualificationId'] as UuidValue?);

  Input_SchoolsObjRelInsertInput? get school =>
      (_$data['school'] as Input_SchoolsObjRelInsertInput?);

  UuidValue? get schoolId => (_$data['schoolId'] as UuidValue?);

  Input_PersonsServicesArrRelInsertInput? get services =>
      (_$data['services'] as Input_PersonsServicesArrRelInsertInput?);

  UuidValue? get shammasLevelId => (_$data['shammasLevelId'] as UuidValue?);

  Input_PersonStatesObjRelInsertInput? get state =>
      (_$data['state'] as Input_PersonStatesObjRelInsertInput?);

  UuidValue? get stateId => (_$data['stateId'] as UuidValue?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  Input_StudyYearsObjRelInsertInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsObjRelInsertInput?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  Input_PersonsTagsArrRelInsertInput? get tags =>
      (_$data['tags'] as Input_PersonsTagsArrRelInsertInput?);

  Input_HistoryVisitHistoryArrRelInsertInput? get visitHistory =>
      (_$data['visitHistory'] as Input_HistoryVisitHistoryArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] = l$addressText;
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] =
          l$birthdate == null ? null : dateToString(l$birthdate);
    }
    if (_$data.containsKey('callHistory')) {
      final l$callHistory = callHistory;
      result$data['callHistory'] = l$callHistory?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] =
          l$churchId == null ? null : uuidToString(l$churchId);
    }
    if (_$data.containsKey('college')) {
      final l$college = college;
      result$data['college'] = l$college?.toJson();
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] =
          l$collegeId == null ? null : uuidToString(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] =
          l$familyId == null ? null : uuidToString(l$familyId);
    }
    if (_$data.containsKey('father')) {
      final l$father = father;
      result$data['father'] = l$father?.toJson();
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] =
          l$fatherId == null ? null : uuidToString(l$fatherId);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('hobbies')) {
      final l$hobbies = hobbies;
      result$data['hobbies'] = l$hobbies?.toJson();
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant;
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas;
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent;
    }
    if (_$data.containsKey('job')) {
      final l$job = job;
      result$data['job'] = l$job?.toJson();
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null ? null : uuidToString(l$jobId);
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] =
          l$personTypeId == null ? null : uuidToString(l$personTypeId);
    }
    if (_$data.containsKey('qualification')) {
      final l$qualification = qualification;
      result$data['qualification'] = l$qualification?.toJson();
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] =
          l$qualificationId == null ? null : uuidToString(l$qualificationId);
    }
    if (_$data.containsKey('school')) {
      final l$school = school;
      result$data['school'] = l$school?.toJson();
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] =
          l$schoolId == null ? null : uuidToString(l$schoolId);
    }
    if (_$data.containsKey('services')) {
      final l$services = services;
      result$data['services'] = l$services?.toJson();
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] =
          l$shammasLevelId == null ? null : uuidToString(l$shammasLevelId);
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state?.toJson();
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] =
          l$stateId == null ? null : uuidToString(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] =
          l$storeId == null ? null : uuidToString(l$storeId);
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.toJson();
    }
    if (_$data.containsKey('visitHistory')) {
      final l$visitHistory = visitHistory;
      result$data['visitHistory'] = l$visitHistory?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsInsertInput<Input_PersonsInsertInput> get copyWith =>
      CopyWith_Input_PersonsInsertInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$addressText = addressText;
    final lOther$addressText = other.addressText;
    if (_$data.containsKey('addressText') !=
        other._$data.containsKey('addressText')) {
      return false;
    }
    if (l$addressText != lOther$addressText) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (_$data.containsKey('attendanceHistory') !=
        other._$data.containsKey('attendanceHistory')) {
      return false;
    }
    if (l$attendanceHistory != lOther$attendanceHistory) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$callHistory = callHistory;
    final lOther$callHistory = other.callHistory;
    if (_$data.containsKey('callHistory') !=
        other._$data.containsKey('callHistory')) {
      return false;
    }
    if (l$callHistory != lOther$callHistory) {
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
    final l$college = college;
    final lOther$college = other.college;
    if (_$data.containsKey('college') != other._$data.containsKey('college')) {
      return false;
    }
    if (l$college != lOther$college) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
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
    final l$father = father;
    final lOther$father = other.father;
    if (_$data.containsKey('father') != other._$data.containsKey('father')) {
      return false;
    }
    if (l$father != lOther$father) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
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
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (_$data.containsKey('hobbies') != other._$data.containsKey('hobbies')) {
      return false;
    }
    if (l$hobbies != lOther$hobbies) {
      return false;
    }
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (_$data.containsKey('isShammas') !=
        other._$data.containsKey('isShammas')) {
      return false;
    }
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (_$data.containsKey('job') != other._$data.containsKey('job')) {
      return false;
    }
    if (l$job != lOther$job) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
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
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (_$data.containsKey('qualification') !=
        other._$data.containsKey('qualification')) {
      return false;
    }
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (_$data.containsKey('school') != other._$data.containsKey('school')) {
      return false;
    }
    if (l$school != lOther$school) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (_$data.containsKey('services') !=
        other._$data.containsKey('services')) {
      return false;
    }
    if (l$services != lOther$services) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != lOther$tags) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$addressText = addressText;
    final l$attendanceHistory = attendanceHistory;
    final l$birthdate = birthdate;
    final l$callHistory = callHistory;
    final l$church = church;
    final l$churchId = churchId;
    final l$college = college;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$confessionHistory = confessionHistory;
    final l$family = family;
    final l$familyId = familyId;
    final l$father = father;
    final l$fatherId = fatherId;
    final l$gender = gender;
    final l$geolocation = geolocation;
    final l$groups = groups;
    final l$hobbies = hobbies;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$kodasHistory = kodasHistory;
    final l$mainPhone = mainPhone;
    final l$name = name;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$qualification = qualification;
    final l$qualificationId = qualificationId;
    final l$school = school;
    final l$schoolId = schoolId;
    final l$services = services;
    final l$shammasLevelId = shammasLevelId;
    final l$state = state;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYear = studyYear;
    final l$studyYearId = studyYearId;
    final l$tags = tags;
    final l$visitHistory = visitHistory;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('callHistory') ? l$callHistory : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('college') ? l$college : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('father') ? l$father : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('hobbies') ? l$hobbies : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('job') ? l$job : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('qualification') ? l$qualification : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('school') ? l$school : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('services') ? l$services : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('tags') ? l$tags : const {},
      _$data.containsKey('visitHistory') ? l$visitHistory : const {},
    ]);
  }
}
