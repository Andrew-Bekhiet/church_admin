// Part 5 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> {
  factory CopyWith_Input_AreasStreetsArrRelInsertInput(
    Input_AreasStreetsArrRelInsertInput instance,
    TRes Function(Input_AreasStreetsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_AreasStreetsArrRelInsertInput;

  factory CopyWith_Input_AreasStreetsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsArrRelInsertInput;

  TRes call({
    List<Input_AreasStreetsInsertInput>? data,
    Input_AreasStreetsOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_AreasStreetsInsertInput> Function(
              Iterable<
                  CopyWith_Input_AreasStreetsInsertInput<
                      Input_AreasStreetsInsertInput>>)
          _fn);
  CopyWith_Input_AreasStreetsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AreasStreetsArrRelInsertInput<TRes>
    implements CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_AreasStreetsArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsArrRelInsertInput _instance;

  final TRes Function(Input_AreasStreetsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_AreasStreetsArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_AreasStreetsInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_AreasStreetsOnConflict?),
      }));

  TRes data(
          Iterable<Input_AreasStreetsInsertInput> Function(
                  Iterable<
                      CopyWith_Input_AreasStreetsInsertInput<
                          Input_AreasStreetsInsertInput>>)
              _fn) =>
      call(
          data: _fn(
              _instance.data.map((e) => CopyWith_Input_AreasStreetsInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_AreasStreetsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AreasStreetsOnConflict.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsArrRelInsertInput<TRes>
    implements CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_AreasStreetsInsertInput>? data,
    Input_AreasStreetsOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_AreasStreetsOnConflict<TRes> get onConflict =>
      CopyWith_Input_AreasStreetsOnConflict.stub(_res);
}

class Input_AreasStreetsBoolExp {
  factory Input_AreasStreetsBoolExp({
    List<Input_AreasStreetsBoolExp>? $_and,
    Input_AreasStreetsBoolExp? $_not,
    List<Input_AreasStreetsBoolExp>? $_or,
    Input_AreasBoolExp? area,
    Input_UuidComparisonExp? areaId,
    Input_StreetsBoolExp? street,
    Input_UuidComparisonExp? streetId,
  }) =>
      Input_AreasStreetsBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (area != null) r'area': area,
        if (areaId != null) r'areaId': areaId,
        if (street != null) r'street': street,
        if (streetId != null) r'streetId': streetId,
      });

  Input_AreasStreetsBoolExp._(this._$data);

  factory Input_AreasStreetsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input_AreasStreetsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AreasStreetsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input_AreasStreetsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasBoolExp.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$areaId as Map<String, dynamic>));
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetsBoolExp.fromJson((l$street as Map<String, dynamic>));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$streetId as Map<String, dynamic>));
    }
    return Input_AreasStreetsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AreasStreetsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AreasStreetsBoolExp>?);

  Input_AreasStreetsBoolExp? get $_not =>
      (_$data['_not'] as Input_AreasStreetsBoolExp?);

  List<Input_AreasStreetsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AreasStreetsBoolExp>?);

  Input_AreasBoolExp? get area => (_$data['area'] as Input_AreasBoolExp?);

  Input_UuidComparisonExp? get areaId =>
      (_$data['areaId'] as Input_UuidComparisonExp?);

  Input_StreetsBoolExp? get street =>
      (_$data['street'] as Input_StreetsBoolExp?);

  Input_UuidComparisonExp? get streetId =>
      (_$data['streetId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId?.toJson();
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsBoolExp<Input_AreasStreetsBoolExp> get copyWith =>
      CopyWith_Input_AreasStreetsBoolExp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsBoolExp ||
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
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$area = area;
    final l$areaId = areaId;
    final l$street = street;
    final l$streetId = streetId;
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
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsBoolExp<TRes> {
  factory CopyWith_Input_AreasStreetsBoolExp(
    Input_AreasStreetsBoolExp instance,
    TRes Function(Input_AreasStreetsBoolExp) then,
  ) = _CopyWithImpl_Input_AreasStreetsBoolExp;

  factory CopyWith_Input_AreasStreetsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsBoolExp;

  TRes call({
    List<Input_AreasStreetsBoolExp>? $_and,
    Input_AreasStreetsBoolExp? $_not,
    List<Input_AreasStreetsBoolExp>? $_or,
    Input_AreasBoolExp? area,
    Input_UuidComparisonExp? areaId,
    Input_StreetsBoolExp? street,
    Input_UuidComparisonExp? streetId,
  });
  TRes $_and(
      Iterable<Input_AreasStreetsBoolExp>? Function(
              Iterable<
                  CopyWith_Input_AreasStreetsBoolExp<
                      Input_AreasStreetsBoolExp>>?)
          _fn);
  CopyWith_Input_AreasStreetsBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_AreasStreetsBoolExp>? Function(
              Iterable<
                  CopyWith_Input_AreasStreetsBoolExp<
                      Input_AreasStreetsBoolExp>>?)
          _fn);
  CopyWith_Input_AreasBoolExp<TRes> get area;
  CopyWith_Input_UuidComparisonExp<TRes> get areaId;
  CopyWith_Input_StreetsBoolExp<TRes> get street;
  CopyWith_Input_UuidComparisonExp<TRes> get streetId;
}

class _CopyWithImpl_Input_AreasStreetsBoolExp<TRes>
    implements CopyWith_Input_AreasStreetsBoolExp<TRes> {
  _CopyWithImpl_Input_AreasStreetsBoolExp(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsBoolExp _instance;

  final TRes Function(Input_AreasStreetsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
  }) =>
      _then(Input_AreasStreetsBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_AreasStreetsBoolExp>?),
        if ($_not != _undefined) '_not': ($_not as Input_AreasStreetsBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_AreasStreetsBoolExp>?),
        if (area != _undefined) 'area': (area as Input_AreasBoolExp?),
        if (areaId != _undefined)
          'areaId': (areaId as Input_UuidComparisonExp?),
        if (street != _undefined) 'street': (street as Input_StreetsBoolExp?),
        if (streetId != _undefined)
          'streetId': (streetId as Input_UuidComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_AreasStreetsBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_AreasStreetsBoolExp<
                          Input_AreasStreetsBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(
              _instance.$_and?.map((e) => CopyWith_Input_AreasStreetsBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_AreasStreetsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AreasStreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_AreasStreetsBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_AreasStreetsBoolExp<
                          Input_AreasStreetsBoolExp>>?)
              _fn) =>
      call(
          $_or:
              _fn(_instance.$_or?.map((e) => CopyWith_Input_AreasStreetsBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_AreasBoolExp<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasBoolExp(local$area, (e) => call(area: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get areaId {
    final local$areaId = _instance.areaId;
    return local$areaId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$areaId, (e) => call(areaId: e));
  }

  CopyWith_Input_StreetsBoolExp<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StreetsBoolExp(local$street, (e) => call(street: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get streetId {
    final local$streetId = _instance.streetId;
    return local$streetId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$streetId, (e) => call(streetId: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsBoolExp<TRes>
    implements CopyWith_Input_AreasStreetsBoolExp<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AreasStreetsBoolExp>? $_and,
    Input_AreasStreetsBoolExp? $_not,
    List<Input_AreasStreetsBoolExp>? $_or,
    Input_AreasBoolExp? area,
    Input_UuidComparisonExp? areaId,
    Input_StreetsBoolExp? street,
    Input_UuidComparisonExp? streetId,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_AreasStreetsBoolExp<TRes> get $_not =>
      CopyWith_Input_AreasStreetsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AreasBoolExp<TRes> get area =>
      CopyWith_Input_AreasBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get areaId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StreetsBoolExp<TRes> get street =>
      CopyWith_Input_StreetsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get streetId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_AreasStreetsInsertInput {
  factory Input_AreasStreetsInsertInput({
    Input_AreasObjRelInsertInput? area,
    UuidValue? areaId,
    Input_StreetsObjRelInsertInput? street,
    UuidValue? streetId,
  }) =>
      Input_AreasStreetsInsertInput._({
        if (area != null) r'area': area,
        if (areaId != null) r'areaId': areaId,
        if (street != null) r'street': street,
        if (streetId != null) r'streetId': streetId,
      });

  Input_AreasStreetsInsertInput._(this._$data);

  factory Input_AreasStreetsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasObjRelInsertInput.fromJson(
              (l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetsObjRelInsertInput.fromJson(
              (l$street as Map<String, dynamic>));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] =
          l$streetId == null ? null : stringToUuid(l$streetId);
    }
    return Input_AreasStreetsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasObjRelInsertInput? get area =>
      (_$data['area'] as Input_AreasObjRelInsertInput?);

  UuidValue? get areaId => (_$data['areaId'] as UuidValue?);

  Input_StreetsObjRelInsertInput? get street =>
      (_$data['street'] as Input_StreetsObjRelInsertInput?);

  UuidValue? get streetId => (_$data['streetId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null ? null : uuidToString(l$areaId);
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] =
          l$streetId == null ? null : uuidToString(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsInsertInput<Input_AreasStreetsInsertInput>
      get copyWith => CopyWith_Input_AreasStreetsInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$area = area;
    final l$areaId = areaId;
    final l$street = street;
    final l$streetId = streetId;
    return Object.hashAll([
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsInsertInput<TRes> {
  factory CopyWith_Input_AreasStreetsInsertInput(
    Input_AreasStreetsInsertInput instance,
    TRes Function(Input_AreasStreetsInsertInput) then,
  ) = _CopyWithImpl_Input_AreasStreetsInsertInput;

  factory CopyWith_Input_AreasStreetsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsInsertInput;

  TRes call({
    Input_AreasObjRelInsertInput? area,
    UuidValue? areaId,
    Input_StreetsObjRelInsertInput? street,
    UuidValue? streetId,
  });
  CopyWith_Input_AreasObjRelInsertInput<TRes> get area;
  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street;
}

class _CopyWithImpl_Input_AreasStreetsInsertInput<TRes>
    implements CopyWith_Input_AreasStreetsInsertInput<TRes> {
  _CopyWithImpl_Input_AreasStreetsInsertInput(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsInsertInput _instance;

  final TRes Function(Input_AreasStreetsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
  }) =>
      _then(Input_AreasStreetsInsertInput._({
        ..._instance._$data,
        if (area != _undefined) 'area': (area as Input_AreasObjRelInsertInput?),
        if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
        if (street != _undefined)
          'street': (street as Input_StreetsObjRelInsertInput?),
        if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
      }));

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasObjRelInsertInput(
            local$area, (e) => call(area: e));
  }

  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StreetsObjRelInsertInput(
            local$street, (e) => call(street: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsInsertInput<TRes>
    implements CopyWith_Input_AreasStreetsInsertInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsInsertInput(this._res);

  TRes _res;

  call({
    Input_AreasObjRelInsertInput? area,
    UuidValue? areaId,
    Input_StreetsObjRelInsertInput? street,
    UuidValue? streetId,
  }) =>
      _res;

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area =>
      CopyWith_Input_AreasObjRelInsertInput.stub(_res);

  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street =>
      CopyWith_Input_StreetsObjRelInsertInput.stub(_res);
}

class Input_AreasStreetsMaxOrderBy {
  factory Input_AreasStreetsMaxOrderBy({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  }) =>
      Input_AreasStreetsMaxOrderBy._({
        if (areaId != null) r'areaId': areaId,
        if (streetId != null) r'streetId': streetId,
      });

  Input_AreasStreetsMaxOrderBy._(this._$data);

  factory Input_AreasStreetsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] =
          l$areaId == null ? null : fromJson_Enum_OrderBy((l$areaId as String));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : fromJson_Enum_OrderBy((l$streetId as String));
    }
    return Input_AreasStreetsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get areaId => (_$data['areaId'] as Enum_OrderBy?);

  Enum_OrderBy? get streetId => (_$data['streetId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] =
          l$areaId == null ? null : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] =
          l$streetId == null ? null : toJson_Enum_OrderBy(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsMaxOrderBy<Input_AreasStreetsMaxOrderBy>
      get copyWith => CopyWith_Input_AreasStreetsMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaId = areaId;
    final l$streetId = streetId;
    return Object.hashAll([
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsMaxOrderBy<TRes> {
  factory CopyWith_Input_AreasStreetsMaxOrderBy(
    Input_AreasStreetsMaxOrderBy instance,
    TRes Function(Input_AreasStreetsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_AreasStreetsMaxOrderBy;

  factory CopyWith_Input_AreasStreetsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsMaxOrderBy;

  TRes call({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  });
}

class _CopyWithImpl_Input_AreasStreetsMaxOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_AreasStreetsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsMaxOrderBy _instance;

  final TRes Function(Input_AreasStreetsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaId = _undefined,
    Object? streetId = _undefined,
  }) =>
      _then(Input_AreasStreetsMaxOrderBy._({
        ..._instance._$data,
        if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
        if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_AreasStreetsMaxOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  }) =>
      _res;
}

class Input_AreasStreetsMinOrderBy {
  factory Input_AreasStreetsMinOrderBy({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  }) =>
      Input_AreasStreetsMinOrderBy._({
        if (areaId != null) r'areaId': areaId,
        if (streetId != null) r'streetId': streetId,
      });

  Input_AreasStreetsMinOrderBy._(this._$data);

  factory Input_AreasStreetsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] =
          l$areaId == null ? null : fromJson_Enum_OrderBy((l$areaId as String));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : fromJson_Enum_OrderBy((l$streetId as String));
    }
    return Input_AreasStreetsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get areaId => (_$data['areaId'] as Enum_OrderBy?);

  Enum_OrderBy? get streetId => (_$data['streetId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] =
          l$areaId == null ? null : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] =
          l$streetId == null ? null : toJson_Enum_OrderBy(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsMinOrderBy<Input_AreasStreetsMinOrderBy>
      get copyWith => CopyWith_Input_AreasStreetsMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaId = areaId;
    final l$streetId = streetId;
    return Object.hashAll([
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsMinOrderBy<TRes> {
  factory CopyWith_Input_AreasStreetsMinOrderBy(
    Input_AreasStreetsMinOrderBy instance,
    TRes Function(Input_AreasStreetsMinOrderBy) then,
  ) = _CopyWithImpl_Input_AreasStreetsMinOrderBy;

  factory CopyWith_Input_AreasStreetsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsMinOrderBy;

  TRes call({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  });
}

class _CopyWithImpl_Input_AreasStreetsMinOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMinOrderBy<TRes> {
  _CopyWithImpl_Input_AreasStreetsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsMinOrderBy _instance;

  final TRes Function(Input_AreasStreetsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaId = _undefined,
    Object? streetId = _undefined,
  }) =>
      _then(Input_AreasStreetsMinOrderBy._({
        ..._instance._$data,
        if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
        if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_AreasStreetsMinOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  }) =>
      _res;
}

class Input_AreasStreetsOnConflict {
  factory Input_AreasStreetsOnConflict({
    required Enum_AreasStreetsConstraint constraint,
    List<Enum_AreasStreetsUpdateColumn>? updateColumns,
    Input_AreasStreetsBoolExp? where,
  }) =>
      Input_AreasStreetsOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_AreasStreetsOnConflict._(this._$data);

  factory Input_AreasStreetsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_AreasStreetsConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_AreasStreetsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_AreasStreetsBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_AreasStreetsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AreasStreetsConstraint get constraint =>
      (_$data['constraint'] as Enum_AreasStreetsConstraint);

  List<Enum_AreasStreetsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_AreasStreetsUpdateColumn>?);

  Input_AreasStreetsBoolExp? get where =>
      (_$data['where'] as Input_AreasStreetsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_AreasStreetsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_AreasStreetsUpdateColumn>)
              .map((e) => toJson_Enum_AreasStreetsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsOnConflict<Input_AreasStreetsOnConflict>
      get copyWith => CopyWith_Input_AreasStreetsOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsOnConflict ||
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

abstract class CopyWith_Input_AreasStreetsOnConflict<TRes> {
  factory CopyWith_Input_AreasStreetsOnConflict(
    Input_AreasStreetsOnConflict instance,
    TRes Function(Input_AreasStreetsOnConflict) then,
  ) = _CopyWithImpl_Input_AreasStreetsOnConflict;

  factory CopyWith_Input_AreasStreetsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsOnConflict;

  TRes call({
    Enum_AreasStreetsConstraint? constraint,
    List<Enum_AreasStreetsUpdateColumn>? updateColumns,
    Input_AreasStreetsBoolExp? where,
  });
  CopyWith_Input_AreasStreetsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AreasStreetsOnConflict<TRes>
    implements CopyWith_Input_AreasStreetsOnConflict<TRes> {
  _CopyWithImpl_Input_AreasStreetsOnConflict(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsOnConflict _instance;

  final TRes Function(Input_AreasStreetsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_AreasStreetsOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_AreasStreetsConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns':
              (updateColumns as List<Enum_AreasStreetsUpdateColumn>),
        if (where != _undefined) 'where': (where as Input_AreasStreetsBoolExp?),
      }));

  CopyWith_Input_AreasStreetsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AreasStreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsOnConflict<TRes>
    implements CopyWith_Input_AreasStreetsOnConflict<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsOnConflict(this._res);

  TRes _res;

  call({
    Enum_AreasStreetsConstraint? constraint,
    List<Enum_AreasStreetsUpdateColumn>? updateColumns,
    Input_AreasStreetsBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_AreasStreetsBoolExp<TRes> get where =>
      CopyWith_Input_AreasStreetsBoolExp.stub(_res);
}

class Input_AreasStreetsOrderBy {
  factory Input_AreasStreetsOrderBy({
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
  }) =>
      Input_AreasStreetsOrderBy._({
        if (area != null) r'area': area,
        if (areaId != null) r'areaId': areaId,
        if (street != null) r'street': street,
        if (streetId != null) r'streetId': streetId,
      });

  Input_AreasStreetsOrderBy._(this._$data);

  factory Input_AreasStreetsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasOrderBy.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] =
          l$areaId == null ? null : fromJson_Enum_OrderBy((l$areaId as String));
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetsOrderBy.fromJson((l$street as Map<String, dynamic>));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : fromJson_Enum_OrderBy((l$streetId as String));
    }
    return Input_AreasStreetsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasOrderBy? get area => (_$data['area'] as Input_AreasOrderBy?);

  Enum_OrderBy? get areaId => (_$data['areaId'] as Enum_OrderBy?);

  Input_StreetsOrderBy? get street =>
      (_$data['street'] as Input_StreetsOrderBy?);

  Enum_OrderBy? get streetId => (_$data['streetId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] =
          l$areaId == null ? null : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] =
          l$streetId == null ? null : toJson_Enum_OrderBy(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsOrderBy<Input_AreasStreetsOrderBy> get copyWith =>
      CopyWith_Input_AreasStreetsOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$area = area;
    final l$areaId = areaId;
    final l$street = street;
    final l$streetId = streetId;
    return Object.hashAll([
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsOrderBy<TRes> {
  factory CopyWith_Input_AreasStreetsOrderBy(
    Input_AreasStreetsOrderBy instance,
    TRes Function(Input_AreasStreetsOrderBy) then,
  ) = _CopyWithImpl_Input_AreasStreetsOrderBy;

  factory CopyWith_Input_AreasStreetsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsOrderBy;

  TRes call({
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
  });
  CopyWith_Input_AreasOrderBy<TRes> get area;
  CopyWith_Input_StreetsOrderBy<TRes> get street;
}

class _CopyWithImpl_Input_AreasStreetsOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsOrderBy<TRes> {
  _CopyWithImpl_Input_AreasStreetsOrderBy(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsOrderBy _instance;

  final TRes Function(Input_AreasStreetsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
  }) =>
      _then(Input_AreasStreetsOrderBy._({
        ..._instance._$data,
        if (area != _undefined) 'area': (area as Input_AreasOrderBy?),
        if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
        if (street != _undefined) 'street': (street as Input_StreetsOrderBy?),
        if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
      }));

  CopyWith_Input_AreasOrderBy<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasOrderBy(local$area, (e) => call(area: e));
  }

  CopyWith_Input_StreetsOrderBy<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StreetsOrderBy(local$street, (e) => call(street: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsOrderBy(this._res);

  TRes _res;

  call({
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
  }) =>
      _res;

  CopyWith_Input_AreasOrderBy<TRes> get area =>
      CopyWith_Input_AreasOrderBy.stub(_res);

  CopyWith_Input_StreetsOrderBy<TRes> get street =>
      CopyWith_Input_StreetsOrderBy.stub(_res);
}

class Input_AreasStreetsStreamCursorInput {
  factory Input_AreasStreetsStreamCursorInput({
    required Input_AreasStreetsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_AreasStreetsStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_AreasStreetsStreamCursorInput._(this._$data);

  factory Input_AreasStreetsStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_AreasStreetsStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_AreasStreetsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasStreetsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_AreasStreetsStreamCursorValueInput);

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

  CopyWith_Input_AreasStreetsStreamCursorInput<
          Input_AreasStreetsStreamCursorInput>
      get copyWith => CopyWith_Input_AreasStreetsStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsStreamCursorInput ||
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

abstract class CopyWith_Input_AreasStreetsStreamCursorInput<TRes> {
  factory CopyWith_Input_AreasStreetsStreamCursorInput(
    Input_AreasStreetsStreamCursorInput instance,
    TRes Function(Input_AreasStreetsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AreasStreetsStreamCursorInput;

  factory CopyWith_Input_AreasStreetsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsStreamCursorInput;

  TRes call({
    Input_AreasStreetsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_AreasStreetsStreamCursorInput<TRes>
    implements CopyWith_Input_AreasStreetsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AreasStreetsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsStreamCursorInput _instance;

  final TRes Function(Input_AreasStreetsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_AreasStreetsStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue':
              (initialValue as Input_AreasStreetsStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AreasStreetsStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsStreamCursorInput<TRes>
    implements CopyWith_Input_AreasStreetsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AreasStreetsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_AreasStreetsStreamCursorValueInput.stub(_res);
}

class Input_AreasStreetsStreamCursorValueInput {
  factory Input_AreasStreetsStreamCursorValueInput({
    UuidValue? areaId,
    UuidValue? streetId,
  }) =>
      Input_AreasStreetsStreamCursorValueInput._({
        if (areaId != null) r'areaId': areaId,
        if (streetId != null) r'streetId': streetId,
      });

  Input_AreasStreetsStreamCursorValueInput._(this._$data);

  factory Input_AreasStreetsStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] =
          l$streetId == null ? null : stringToUuid(l$streetId);
    }
    return Input_AreasStreetsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get areaId => (_$data['areaId'] as UuidValue?);

  UuidValue? get streetId => (_$data['streetId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null ? null : uuidToString(l$areaId);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] =
          l$streetId == null ? null : uuidToString(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsStreamCursorValueInput<
          Input_AreasStreetsStreamCursorValueInput>
      get copyWith => CopyWith_Input_AreasStreetsStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaId = areaId;
    final l$streetId = streetId;
    return Object.hashAll([
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AreasStreetsStreamCursorValueInput(
    Input_AreasStreetsStreamCursorValueInput instance,
    TRes Function(Input_AreasStreetsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AreasStreetsStreamCursorValueInput;

  factory CopyWith_Input_AreasStreetsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsStreamCursorValueInput;

  TRes call({
    UuidValue? areaId,
    UuidValue? streetId,
  });
}

class _CopyWithImpl_Input_AreasStreetsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AreasStreetsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsStreamCursorValueInput _instance;

  final TRes Function(Input_AreasStreetsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaId = _undefined,
    Object? streetId = _undefined,
  }) =>
      _then(Input_AreasStreetsStreamCursorValueInput._({
        ..._instance._$data,
        if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
        if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
      }));
}

class _CopyWithStubImpl_Input_AreasStreetsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? areaId,
    UuidValue? streetId,
  }) =>
      _res;
}

class Input_AreasUpdates {
  factory Input_AreasUpdates({
    Input_AreasIncInput? $_inc,
    Input_AreasSetInput? $_set,
    required Input_AreasBoolExp where,
  }) =>
      Input_AreasUpdates._({
        if ($_inc != null) r'_inc': $_inc,
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_AreasUpdates._(this._$data);

  factory Input_AreasUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_AreasIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_AreasSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input_AreasBoolExp.fromJson((l$where as Map<String, dynamic>));
    return Input_AreasUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasIncInput? get $_inc => (_$data['_inc'] as Input_AreasIncInput?);

  Input_AreasSetInput? get $_set => (_$data['_set'] as Input_AreasSetInput?);

  Input_AreasBoolExp get where => (_$data['where'] as Input_AreasBoolExp);

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

  CopyWith_Input_AreasUpdates<Input_AreasUpdates> get copyWith =>
      CopyWith_Input_AreasUpdates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_AreasUpdates<TRes> {
  factory CopyWith_Input_AreasUpdates(
    Input_AreasUpdates instance,
    TRes Function(Input_AreasUpdates) then,
  ) = _CopyWithImpl_Input_AreasUpdates;

  factory CopyWith_Input_AreasUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasUpdates;

  TRes call({
    Input_AreasIncInput? $_inc,
    Input_AreasSetInput? $_set,
    Input_AreasBoolExp? where,
  });
  CopyWith_Input_AreasIncInput<TRes> get $_inc;
  CopyWith_Input_AreasSetInput<TRes> get $_set;
  CopyWith_Input_AreasBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AreasUpdates<TRes>
    implements CopyWith_Input_AreasUpdates<TRes> {
  _CopyWithImpl_Input_AreasUpdates(
    this._instance,
    this._then,
  );

  final Input_AreasUpdates _instance;

  final TRes Function(Input_AreasUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_AreasUpdates._({
        ..._instance._$data,
        if ($_inc != _undefined) '_inc': ($_inc as Input_AreasIncInput?),
        if ($_set != _undefined) '_set': ($_set as Input_AreasSetInput?),
        if (where != _undefined && where != null)
          'where': (where as Input_AreasBoolExp),
      }));

  CopyWith_Input_AreasIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_AreasIncInput.stub(_then(_instance))
        : CopyWith_Input_AreasIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_AreasSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_AreasSetInput.stub(_then(_instance))
        : CopyWith_Input_AreasSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_AreasBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_AreasBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_AreasUpdates<TRes>
    implements CopyWith_Input_AreasUpdates<TRes> {
  _CopyWithStubImpl_Input_AreasUpdates(this._res);

  TRes _res;

  call({
    Input_AreasIncInput? $_inc,
    Input_AreasSetInput? $_set,
    Input_AreasBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_AreasIncInput<TRes> get $_inc =>
      CopyWith_Input_AreasIncInput.stub(_res);

  CopyWith_Input_AreasSetInput<TRes> get $_set =>
      CopyWith_Input_AreasSetInput.stub(_res);

  CopyWith_Input_AreasBoolExp<TRes> get where =>
      CopyWith_Input_AreasBoolExp.stub(_res);
}

class Input_AuthUsersAdminOnAggregateOrderBy {
  factory Input_AuthUsersAdminOnAggregateOrderBy({
    Input_AuthUsersAdminOnAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AuthUsersAdminOnMaxOrderBy? max,
    Input_AuthUsersAdminOnMinOrderBy? min,
    Input_AuthUsersAdminOnStddevOrderBy? stddev,
    Input_AuthUsersAdminOnStddevPopOrderBy? stddevPop,
    Input_AuthUsersAdminOnStddevSampOrderBy? stddevSamp,
    Input_AuthUsersAdminOnSumOrderBy? sum,
    Input_AuthUsersAdminOnVarPopOrderBy? varPop,
    Input_AuthUsersAdminOnVarSampOrderBy? varSamp,
    Input_AuthUsersAdminOnVarianceOrderBy? variance,
  }) =>
      Input_AuthUsersAdminOnAggregateOrderBy._({
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

  Input_AuthUsersAdminOnAggregateOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_AuthUsersAdminOnAvgOrderBy.fromJson(
              (l$avg as Map<String, dynamic>));
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_AuthUsersAdminOnMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_AuthUsersAdminOnMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_AuthUsersAdminOnStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>));
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_AuthUsersAdminOnStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>));
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_AuthUsersAdminOnStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>));
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_AuthUsersAdminOnSumOrderBy.fromJson(
              (l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_AuthUsersAdminOnVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>));
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_AuthUsersAdminOnVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>));
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_AuthUsersAdminOnVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>));
    }
    return Input_AuthUsersAdminOnAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnAvgOrderBy? get avg =>
      (_$data['avg'] as Input_AuthUsersAdminOnAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_AuthUsersAdminOnMaxOrderBy? get max =>
      (_$data['max'] as Input_AuthUsersAdminOnMaxOrderBy?);

  Input_AuthUsersAdminOnMinOrderBy? get min =>
      (_$data['min'] as Input_AuthUsersAdminOnMinOrderBy?);

  Input_AuthUsersAdminOnStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_AuthUsersAdminOnStddevOrderBy?);

  Input_AuthUsersAdminOnStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_AuthUsersAdminOnStddevPopOrderBy?);

  Input_AuthUsersAdminOnStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_AuthUsersAdminOnStddevSampOrderBy?);

  Input_AuthUsersAdminOnSumOrderBy? get sum =>
      (_$data['sum'] as Input_AuthUsersAdminOnSumOrderBy?);

  Input_AuthUsersAdminOnVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_AuthUsersAdminOnVarPopOrderBy?);

  Input_AuthUsersAdminOnVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_AuthUsersAdminOnVarSampOrderBy?);

  Input_AuthUsersAdminOnVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_AuthUsersAdminOnVarianceOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avg')) {
      final l$avg = avg;
      result$data['avg'] = l$avg?.toJson();
    }
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson_Enum_OrderBy(l$count);
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

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<
          Input_AuthUsersAdminOnAggregateOrderBy>
      get copyWith => CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnAggregateOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
    Input_AuthUsersAdminOnAggregateOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnAggregateOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnAggregateOrderBy;

  TRes call({
    Input_AuthUsersAdminOnAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AuthUsersAdminOnMaxOrderBy? max,
    Input_AuthUsersAdminOnMinOrderBy? min,
    Input_AuthUsersAdminOnStddevOrderBy? stddev,
    Input_AuthUsersAdminOnStddevPopOrderBy? stddevPop,
    Input_AuthUsersAdminOnStddevSampOrderBy? stddevSamp,
    Input_AuthUsersAdminOnSumOrderBy? sum,
    Input_AuthUsersAdminOnVarPopOrderBy? varPop,
    Input_AuthUsersAdminOnVarSampOrderBy? varSamp,
    Input_AuthUsersAdminOnVarianceOrderBy? variance,
  });
  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> get avg;
  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> get max;
  CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> get min;
  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> get stddev;
  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> get sum;
  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnAggregateOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnAggregateOrderBy) _then;

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
  }) =>
      _then(Input_AuthUsersAdminOnAggregateOrderBy._({
        ..._instance._$data,
        if (avg != _undefined)
          'avg': (avg as Input_AuthUsersAdminOnAvgOrderBy?),
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined)
          'max': (max as Input_AuthUsersAdminOnMaxOrderBy?),
        if (min != _undefined)
          'min': (min as Input_AuthUsersAdminOnMinOrderBy?),
        if (stddev != _undefined)
          'stddev': (stddev as Input_AuthUsersAdminOnStddevOrderBy?),
        if (stddevPop != _undefined)
          'stddevPop': (stddevPop as Input_AuthUsersAdminOnStddevPopOrderBy?),
        if (stddevSamp != _undefined)
          'stddevSamp':
              (stddevSamp as Input_AuthUsersAdminOnStddevSampOrderBy?),
        if (sum != _undefined)
          'sum': (sum as Input_AuthUsersAdminOnSumOrderBy?),
        if (varPop != _undefined)
          'varPop': (varPop as Input_AuthUsersAdminOnVarPopOrderBy?),
        if (varSamp != _undefined)
          'varSamp': (varSamp as Input_AuthUsersAdminOnVarSampOrderBy?),
        if (variance != _undefined)
          'variance': (variance as Input_AuthUsersAdminOnVarianceOrderBy?),
      }));

  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_AuthUsersAdminOnAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAvgOrderBy(
            local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_AuthUsersAdminOnMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnMaxOrderBy(
            local$max, (e) => call(max: e));
  }

  CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_AuthUsersAdminOnMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnMinOrderBy(
            local$min, (e) => call(min: e));
  }

  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_AuthUsersAdminOnStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnStddevOrderBy(
            local$stddev, (e) => call(stddev: e));
  }

  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy(
            local$stddevPop, (e) => call(stddevPop: e));
  }

  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy(
            local$stddevSamp, (e) => call(stddevSamp: e));
  }

  CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_AuthUsersAdminOnSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnSumOrderBy(
            local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_AuthUsersAdminOnVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnVarPopOrderBy(
            local$varPop, (e) => call(varPop: e));
  }

  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_AuthUsersAdminOnVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnVarSampOrderBy(
            local$varSamp, (e) => call(varSamp: e));
  }

  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_AuthUsersAdminOnVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnVarianceOrderBy(
            local$variance, (e) => call(variance: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AuthUsersAdminOnMaxOrderBy? max,
    Input_AuthUsersAdminOnMinOrderBy? min,
    Input_AuthUsersAdminOnStddevOrderBy? stddev,
    Input_AuthUsersAdminOnStddevPopOrderBy? stddevPop,
    Input_AuthUsersAdminOnStddevSampOrderBy? stddevSamp,
    Input_AuthUsersAdminOnSumOrderBy? sum,
    Input_AuthUsersAdminOnVarPopOrderBy? varPop,
    Input_AuthUsersAdminOnVarSampOrderBy? varSamp,
    Input_AuthUsersAdminOnVarianceOrderBy? variance,
  }) =>
      _res;

  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> get avg =>
      CopyWith_Input_AuthUsersAdminOnAvgOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> get max =>
      CopyWith_Input_AuthUsersAdminOnMaxOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> get min =>
      CopyWith_Input_AuthUsersAdminOnMinOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_AuthUsersAdminOnStddevOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> get sum =>
      CopyWith_Input_AuthUsersAdminOnSumOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_AuthUsersAdminOnVarPopOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_AuthUsersAdminOnVarSampOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_AuthUsersAdminOnVarianceOrderBy.stub(_res);
}

class Input_AuthUsersAdminOnArrRelInsertInput {
  factory Input_AuthUsersAdminOnArrRelInsertInput({
    required List<Input_AuthUsersAdminOnInsertInput> data,
    Input_AuthUsersAdminOnOnConflict? onConflict,
  }) =>
      Input_AuthUsersAdminOnArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_AuthUsersAdminOnArrRelInsertInput._(this._$data);

  factory Input_AuthUsersAdminOnArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input_AuthUsersAdminOnInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AuthUsersAdminOnOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_AuthUsersAdminOnArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersAdminOnInsertInput> get data =>
      (_$data['data'] as List<Input_AuthUsersAdminOnInsertInput>);

  Input_AuthUsersAdminOnOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AuthUsersAdminOnOnConflict?);

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

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<
          Input_AuthUsersAdminOnArrRelInsertInput>
      get copyWith => CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnArrRelInsertInput ||
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
