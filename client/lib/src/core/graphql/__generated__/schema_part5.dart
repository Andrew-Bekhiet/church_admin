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
        CopyWith_Input_AreasStreetsInsertInput<Input_AreasStreetsInsertInput>
      >,
    )
    _fn,
  );
  CopyWith_Input_AreasStreetsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AreasStreetsArrRelInsertInput<TRes>
    implements CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_AreasStreetsArrRelInsertInput(this._instance, this._then);

  final Input_AreasStreetsArrRelInsertInput _instance;

  final TRes Function(Input_AreasStreetsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AreasStreetsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_AreasStreetsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AreasStreetsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_AreasStreetsInsertInput> Function(
      Iterable<
        CopyWith_Input_AreasStreetsInsertInput<Input_AreasStreetsInsertInput>
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_AreasStreetsInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_AreasStreetsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AreasStreetsOnConflict.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AreasStreetsArrRelInsertInput<TRes>
    implements CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_AreasStreetsInsertInput>? data,
    Input_AreasStreetsOnConflict? onConflict,
  }) => _res;

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
  }) => Input_AreasStreetsBoolExp._({
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
          ?.map(
            (e) =>
                Input_AreasStreetsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AreasStreetsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_AreasStreetsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
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
              (l$areaId as Map<String, dynamic>),
            );
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
              (l$streetId as Map<String, dynamic>),
            );
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
      CopyWith_Input_AreasStreetsBoolExp(this, (i) => i);

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
      Iterable<CopyWith_Input_AreasStreetsBoolExp<Input_AreasStreetsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AreasStreetsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_AreasStreetsBoolExp>? Function(
      Iterable<CopyWith_Input_AreasStreetsBoolExp<Input_AreasStreetsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AreasBoolExp<TRes> get area;
  CopyWith_Input_UuidComparisonExp<TRes> get areaId;
  CopyWith_Input_StreetsBoolExp<TRes> get street;
  CopyWith_Input_UuidComparisonExp<TRes> get streetId;
}

class _CopyWithImpl_Input_AreasStreetsBoolExp<TRes>
    implements CopyWith_Input_AreasStreetsBoolExp<TRes> {
  _CopyWithImpl_Input_AreasStreetsBoolExp(this._instance, this._then);

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
  }) => _then(
    Input_AreasStreetsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_AreasStreetsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_AreasStreetsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_AreasStreetsBoolExp>?),
      if (area != _undefined) 'area': (area as Input_AreasBoolExp?),
      if (areaId != _undefined) 'areaId': (areaId as Input_UuidComparisonExp?),
      if (street != _undefined) 'street': (street as Input_StreetsBoolExp?),
      if (streetId != _undefined)
        'streetId': (streetId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_AreasStreetsBoolExp>? Function(
      Iterable<CopyWith_Input_AreasStreetsBoolExp<Input_AreasStreetsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_AreasStreetsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AreasStreetsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AreasStreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_AreasStreetsBoolExp>? Function(
      Iterable<CopyWith_Input_AreasStreetsBoolExp<Input_AreasStreetsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_AreasStreetsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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
            local$areaId,
            (e) => call(areaId: e),
          );
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
            local$streetId,
            (e) => call(streetId: e),
          );
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
  }) => _res;

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
  }) => Input_AreasStreetsInsertInput._({
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
              (l$area as Map<String, dynamic>),
            );
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
              (l$street as Map<String, dynamic>),
            );
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : stringToUuid(l$streetId);
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
      result$data['streetId'] = l$streetId == null
          ? null
          : uuidToString(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsInsertInput<Input_AreasStreetsInsertInput>
  get copyWith => CopyWith_Input_AreasStreetsInsertInput(this, (i) => i);

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
  _CopyWithImpl_Input_AreasStreetsInsertInput(this._instance, this._then);

  final Input_AreasStreetsInsertInput _instance;

  final TRes Function(Input_AreasStreetsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
  }) => _then(
    Input_AreasStreetsInsertInput._({
      ..._instance._$data,
      if (area != _undefined) 'area': (area as Input_AreasObjRelInsertInput?),
      if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
      if (street != _undefined)
        'street': (street as Input_StreetsObjRelInsertInput?),
      if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
    }),
  );

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasObjRelInsertInput(
            local$area,
            (e) => call(area: e),
          );
  }

  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StreetsObjRelInsertInput(
            local$street,
            (e) => call(street: e),
          );
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
  }) => _res;

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area =>
      CopyWith_Input_AreasObjRelInsertInput.stub(_res);

  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street =>
      CopyWith_Input_StreetsObjRelInsertInput.stub(_res);
}

class Input_AreasStreetsMaxOrderBy {
  factory Input_AreasStreetsMaxOrderBy({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  }) => Input_AreasStreetsMaxOrderBy._({
    if (areaId != null) r'areaId': areaId,
    if (streetId != null) r'streetId': streetId,
  });

  Input_AreasStreetsMaxOrderBy._(this._$data);

  factory Input_AreasStreetsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : fromJson_Enum_OrderBy((l$areaId as String));
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
      result$data['areaId'] = l$areaId == null
          ? null
          : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : toJson_Enum_OrderBy(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsMaxOrderBy<Input_AreasStreetsMaxOrderBy>
  get copyWith => CopyWith_Input_AreasStreetsMaxOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? areaId, Enum_OrderBy? streetId});
}

class _CopyWithImpl_Input_AreasStreetsMaxOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_AreasStreetsMaxOrderBy(this._instance, this._then);

  final Input_AreasStreetsMaxOrderBy _instance;

  final TRes Function(Input_AreasStreetsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areaId = _undefined, Object? streetId = _undefined}) =>
      _then(
        Input_AreasStreetsMaxOrderBy._({
          ..._instance._$data,
          if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
          if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_AreasStreetsMaxOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? areaId, Enum_OrderBy? streetId}) => _res;
}

class Input_AreasStreetsMinOrderBy {
  factory Input_AreasStreetsMinOrderBy({
    Enum_OrderBy? areaId,
    Enum_OrderBy? streetId,
  }) => Input_AreasStreetsMinOrderBy._({
    if (areaId != null) r'areaId': areaId,
    if (streetId != null) r'streetId': streetId,
  });

  Input_AreasStreetsMinOrderBy._(this._$data);

  factory Input_AreasStreetsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : fromJson_Enum_OrderBy((l$areaId as String));
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
      result$data['areaId'] = l$areaId == null
          ? null
          : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : toJson_Enum_OrderBy(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsMinOrderBy<Input_AreasStreetsMinOrderBy>
  get copyWith => CopyWith_Input_AreasStreetsMinOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? areaId, Enum_OrderBy? streetId});
}

class _CopyWithImpl_Input_AreasStreetsMinOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMinOrderBy<TRes> {
  _CopyWithImpl_Input_AreasStreetsMinOrderBy(this._instance, this._then);

  final Input_AreasStreetsMinOrderBy _instance;

  final TRes Function(Input_AreasStreetsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areaId = _undefined, Object? streetId = _undefined}) =>
      _then(
        Input_AreasStreetsMinOrderBy._({
          ..._instance._$data,
          if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
          if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_AreasStreetsMinOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? areaId, Enum_OrderBy? streetId}) => _res;
}

class Input_AreasStreetsOnConflict {
  factory Input_AreasStreetsOnConflict({
    required Enum_AreasStreetsConstraint constraint,
    List<Enum_AreasStreetsUpdateColumn>? updateColumns,
    Input_AreasStreetsBoolExp? where,
  }) => Input_AreasStreetsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_AreasStreetsOnConflict._(this._$data);

  factory Input_AreasStreetsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_AreasStreetsConstraint(
      (l$constraint as String),
    );
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
              (l$where as Map<String, dynamic>),
            );
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
    result$data['constraint'] = toJson_Enum_AreasStreetsConstraint(
      l$constraint,
    );
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
  get copyWith => CopyWith_Input_AreasStreetsOnConflict(this, (i) => i);

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
  _CopyWithImpl_Input_AreasStreetsOnConflict(this._instance, this._then);

  final Input_AreasStreetsOnConflict _instance;

  final TRes Function(Input_AreasStreetsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AreasStreetsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_AreasStreetsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_AreasStreetsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_AreasStreetsBoolExp?),
    }),
  );

  CopyWith_Input_AreasStreetsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AreasStreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsBoolExp(
            local$where,
            (e) => call(where: e),
          );
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
  }) => _res;

  CopyWith_Input_AreasStreetsBoolExp<TRes> get where =>
      CopyWith_Input_AreasStreetsBoolExp.stub(_res);
}

class Input_AreasStreetsOrderBy {
  factory Input_AreasStreetsOrderBy({
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
  }) => Input_AreasStreetsOrderBy._({
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
      result$data['areaId'] = l$areaId == null
          ? null
          : fromJson_Enum_OrderBy((l$areaId as String));
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
      result$data['areaId'] = l$areaId == null
          ? null
          : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : toJson_Enum_OrderBy(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsOrderBy<Input_AreasStreetsOrderBy> get copyWith =>
      CopyWith_Input_AreasStreetsOrderBy(this, (i) => i);

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
  _CopyWithImpl_Input_AreasStreetsOrderBy(this._instance, this._then);

  final Input_AreasStreetsOrderBy _instance;

  final TRes Function(Input_AreasStreetsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
  }) => _then(
    Input_AreasStreetsOrderBy._({
      ..._instance._$data,
      if (area != _undefined) 'area': (area as Input_AreasOrderBy?),
      if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
      if (street != _undefined) 'street': (street as Input_StreetsOrderBy?),
      if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
    }),
  );

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
  }) => _res;

  CopyWith_Input_AreasOrderBy<TRes> get area =>
      CopyWith_Input_AreasOrderBy.stub(_res);

  CopyWith_Input_StreetsOrderBy<TRes> get street =>
      CopyWith_Input_StreetsOrderBy.stub(_res);
}

class Input_AreasStreetsStreamCursorInput {
  factory Input_AreasStreetsStreamCursorInput({
    required Input_AreasStreetsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_AreasStreetsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_AreasStreetsStreamCursorInput._(this._$data);

  factory Input_AreasStreetsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_AreasStreetsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
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
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsStreamCursorInput<
    Input_AreasStreetsStreamCursorInput
  >
  get copyWith => CopyWith_Input_AreasStreetsStreamCursorInput(this, (i) => i);

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
  _CopyWithImpl_Input_AreasStreetsStreamCursorInput(this._instance, this._then);

  final Input_AreasStreetsStreamCursorInput _instance;

  final TRes Function(Input_AreasStreetsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_AreasStreetsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_AreasStreetsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AreasStreetsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_AreasStreetsStreamCursorInput<TRes>
    implements CopyWith_Input_AreasStreetsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AreasStreetsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_AreasStreetsStreamCursorValueInput.stub(_res);
}

class Input_AreasStreetsStreamCursorValueInput {
  factory Input_AreasStreetsStreamCursorValueInput({
    UuidValue? areaId,
    UuidValue? streetId,
  }) => Input_AreasStreetsStreamCursorValueInput._({
    if (areaId != null) r'areaId': areaId,
    if (streetId != null) r'streetId': streetId,
  });

  Input_AreasStreetsStreamCursorValueInput._(this._$data);

  factory Input_AreasStreetsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : stringToUuid(l$streetId);
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
      result$data['streetId'] = l$streetId == null
          ? null
          : uuidToString(l$streetId);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreetsStreamCursorValueInput<
    Input_AreasStreetsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_AreasStreetsStreamCursorValueInput(this, (i) => i);

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

  TRes call({UuidValue? areaId, UuidValue? streetId});
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

  TRes call({Object? areaId = _undefined, Object? streetId = _undefined}) =>
      _then(
        Input_AreasStreetsStreamCursorValueInput._({
          ..._instance._$data,
          if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
          if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_AreasStreetsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AreasStreetsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? areaId, UuidValue? streetId}) => _res;
}

class Input_AreasUpdates {
  factory Input_AreasUpdates({
    Input_AreasIncInput? $_inc,
    Input_AreasSetInput? $_set,
    required Input_AreasBoolExp where,
  }) => Input_AreasUpdates._({
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
    result$data['where'] = Input_AreasBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
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
      CopyWith_Input_AreasUpdates(this, (i) => i);

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
  _CopyWithImpl_Input_AreasUpdates(this._instance, this._then);

  final Input_AreasUpdates _instance;

  final TRes Function(Input_AreasUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AreasUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_AreasIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_AreasSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_AreasBoolExp),
    }),
  );

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
  }) => _res;

  CopyWith_Input_AreasIncInput<TRes> get $_inc =>
      CopyWith_Input_AreasIncInput.stub(_res);

  CopyWith_Input_AreasSetInput<TRes> get $_set =>
      CopyWith_Input_AreasSetInput.stub(_res);

  CopyWith_Input_AreasBoolExp<TRes> get where =>
      CopyWith_Input_AreasBoolExp.stub(_res);
}

class Input_AuthInvitationsBoolExp {
  factory Input_AuthInvitationsBoolExp({
    List<Input_AuthInvitationsBoolExp>? $_and,
    Input_AuthInvitationsBoolExp? $_not,
    List<Input_AuthInvitationsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? claimedAt,
    Input_StringComparisonExp? code,
    Input_TimestamptzComparisonExp? createdAt,
    Input_UuidComparisonExp? createdBy,
    Input_AuthUsersDataBoolExp? creator,
    Input_TimestamptzComparisonExp? expiresAt,
    Input_UuidComparisonExp? id,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? userUid,
  }) => Input_AuthInvitationsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (claimedAt != null) r'claimedAt': claimedAt,
    if (code != null) r'code': code,
    if (createdAt != null) r'createdAt': createdAt,
    if (createdBy != null) r'createdBy': createdBy,
    if (creator != null) r'creator': creator,
    if (expiresAt != null) r'expiresAt': expiresAt,
    if (id != null) r'id': id,
    if (user != null) r'user': user,
    if (userUid != null) r'userUid': userUid,
  });

  Input_AuthInvitationsBoolExp._(this._$data);

  factory Input_AuthInvitationsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_AuthInvitationsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AuthInvitationsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_AuthInvitationsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('claimedAt')) {
      final l$claimedAt = data['claimedAt'];
      result$data['claimedAt'] = l$claimedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$claimedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$code as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$createdBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('creator')) {
      final l$creator = data['creator'];
      result$data['creator'] = l$creator == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$creator as Map<String, dynamic>),
            );
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$expiresAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userUid')) {
      final l$userUid = data['userUid'];
      result$data['userUid'] = l$userUid == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$userUid as Map<String, dynamic>),
            );
    }
    return Input_AuthInvitationsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthInvitationsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AuthInvitationsBoolExp>?);

  Input_AuthInvitationsBoolExp? get $_not =>
      (_$data['_not'] as Input_AuthInvitationsBoolExp?);

  List<Input_AuthInvitationsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AuthInvitationsBoolExp>?);

  Input_TimestamptzComparisonExp? get claimedAt =>
      (_$data['claimedAt'] as Input_TimestamptzComparisonExp?);

  Input_StringComparisonExp? get code =>
      (_$data['code'] as Input_StringComparisonExp?);

  Input_TimestamptzComparisonExp? get createdAt =>
      (_$data['createdAt'] as Input_TimestamptzComparisonExp?);

  Input_UuidComparisonExp? get createdBy =>
      (_$data['createdBy'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get creator =>
      (_$data['creator'] as Input_AuthUsersDataBoolExp?);

  Input_TimestamptzComparisonExp? get expiresAt =>
      (_$data['expiresAt'] as Input_TimestamptzComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

  Input_UuidComparisonExp? get userUid =>
      (_$data['userUid'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('claimedAt')) {
      final l$claimedAt = claimedAt;
      result$data['claimedAt'] = l$claimedAt?.toJson();
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('creator')) {
      final l$creator = creator;
      result$data['creator'] = l$creator?.toJson();
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userUid')) {
      final l$userUid = userUid;
      result$data['userUid'] = l$userUid?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsBoolExp<Input_AuthInvitationsBoolExp>
  get copyWith => CopyWith_Input_AuthInvitationsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsBoolExp ||
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
    final l$claimedAt = claimedAt;
    final lOther$claimedAt = other.claimedAt;
    if (_$data.containsKey('claimedAt') !=
        other._$data.containsKey('claimedAt')) {
      return false;
    }
    if (l$claimedAt != lOther$claimedAt) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
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
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$creator = creator;
    final lOther$creator = other.creator;
    if (_$data.containsKey('creator') != other._$data.containsKey('creator')) {
      return false;
    }
    if (l$creator != lOther$creator) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$userUid = userUid;
    final lOther$userUid = other.userUid;
    if (_$data.containsKey('userUid') != other._$data.containsKey('userUid')) {
      return false;
    }
    if (l$userUid != lOther$userUid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$claimedAt = claimedAt;
    final l$code = code;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$creator = creator;
    final l$expiresAt = expiresAt;
    final l$id = id;
    final l$user = user;
    final l$userUid = userUid;
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
      _$data.containsKey('claimedAt') ? l$claimedAt : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('creator') ? l$creator : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userUid') ? l$userUid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsBoolExp<TRes> {
  factory CopyWith_Input_AuthInvitationsBoolExp(
    Input_AuthInvitationsBoolExp instance,
    TRes Function(Input_AuthInvitationsBoolExp) then,
  ) = _CopyWithImpl_Input_AuthInvitationsBoolExp;

  factory CopyWith_Input_AuthInvitationsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsBoolExp;

  TRes call({
    List<Input_AuthInvitationsBoolExp>? $_and,
    Input_AuthInvitationsBoolExp? $_not,
    List<Input_AuthInvitationsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? claimedAt,
    Input_StringComparisonExp? code,
    Input_TimestamptzComparisonExp? createdAt,
    Input_UuidComparisonExp? createdBy,
    Input_AuthUsersDataBoolExp? creator,
    Input_TimestamptzComparisonExp? expiresAt,
    Input_UuidComparisonExp? id,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? userUid,
  });
  TRes $_and(
    Iterable<Input_AuthInvitationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthInvitationsBoolExp<Input_AuthInvitationsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_AuthInvitationsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_AuthInvitationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthInvitationsBoolExp<Input_AuthInvitationsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_TimestamptzComparisonExp<TRes> get claimedAt;
  CopyWith_Input_StringComparisonExp<TRes> get code;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt;
  CopyWith_Input_UuidComparisonExp<TRes> get createdBy;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get creator;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get expiresAt;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
  CopyWith_Input_UuidComparisonExp<TRes> get userUid;
}

class _CopyWithImpl_Input_AuthInvitationsBoolExp<TRes>
    implements CopyWith_Input_AuthInvitationsBoolExp<TRes> {
  _CopyWithImpl_Input_AuthInvitationsBoolExp(this._instance, this._then);

  final Input_AuthInvitationsBoolExp _instance;

  final TRes Function(Input_AuthInvitationsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? claimedAt = _undefined,
    Object? code = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? creator = _undefined,
    Object? expiresAt = _undefined,
    Object? id = _undefined,
    Object? user = _undefined,
    Object? userUid = _undefined,
  }) => _then(
    Input_AuthInvitationsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_AuthInvitationsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_AuthInvitationsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_AuthInvitationsBoolExp>?),
      if (claimedAt != _undefined)
        'claimedAt': (claimedAt as Input_TimestamptzComparisonExp?),
      if (code != _undefined) 'code': (code as Input_StringComparisonExp?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input_TimestamptzComparisonExp?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Input_UuidComparisonExp?),
      if (creator != _undefined)
        'creator': (creator as Input_AuthUsersDataBoolExp?),
      if (expiresAt != _undefined)
        'expiresAt': (expiresAt as Input_TimestamptzComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
      if (userUid != _undefined)
        'userUid': (userUid as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_AuthInvitationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthInvitationsBoolExp<Input_AuthInvitationsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_AuthInvitationsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AuthInvitationsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AuthInvitationsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthInvitationsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_AuthInvitationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthInvitationsBoolExp<Input_AuthInvitationsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_AuthInvitationsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_TimestamptzComparisonExp<TRes> get claimedAt {
    final local$claimedAt = _instance.claimedAt;
    return local$claimedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$claimedAt,
            (e) => call(claimedAt: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$code, (e) => call(code: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$createdBy,
            (e) => call(createdBy: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get creator {
    final local$creator = _instance.creator;
    return local$creator == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(
            local$creator,
            (e) => call(creator: e),
          );
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get expiresAt {
    final local$expiresAt = _instance.expiresAt;
    return local$expiresAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$expiresAt,
            (e) => call(expiresAt: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get userUid {
    final local$userUid = _instance.userUid;
    return local$userUid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$userUid,
            (e) => call(userUid: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthInvitationsBoolExp<TRes>
    implements CopyWith_Input_AuthInvitationsBoolExp<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AuthInvitationsBoolExp>? $_and,
    Input_AuthInvitationsBoolExp? $_not,
    List<Input_AuthInvitationsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? claimedAt,
    Input_StringComparisonExp? code,
    Input_TimestamptzComparisonExp? createdAt,
    Input_UuidComparisonExp? createdBy,
    Input_AuthUsersDataBoolExp? creator,
    Input_TimestamptzComparisonExp? expiresAt,
    Input_UuidComparisonExp? id,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? userUid,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_AuthInvitationsBoolExp<TRes> get $_not =>
      CopyWith_Input_AuthInvitationsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_TimestamptzComparisonExp<TRes> get claimedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get code =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get createdBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get creator =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get expiresAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get userUid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_AuthInvitationsInsertInput {
  factory Input_AuthInvitationsInsertInput({
    Input_AuthUsersDataObjRelInsertInput? creator,
    DateTime? expiresAt,
    Input_AuthUsersDataObjRelInsertInput? user,
    UuidValue? userUid,
  }) => Input_AuthInvitationsInsertInput._({
    if (creator != null) r'creator': creator,
    if (expiresAt != null) r'expiresAt': expiresAt,
    if (user != null) r'user': user,
    if (userUid != null) r'userUid': userUid,
  });

  Input_AuthInvitationsInsertInput._(this._$data);

  factory Input_AuthInvitationsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('creator')) {
      final l$creator = data['creator'];
      result$data['creator'] = l$creator == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$creator as Map<String, dynamic>),
            );
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : tstzFromString(l$expiresAt);
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userUid')) {
      final l$userUid = data['userUid'];
      result$data['userUid'] = l$userUid == null
          ? null
          : stringToUuid(l$userUid);
    }
    return Input_AuthInvitationsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersDataObjRelInsertInput? get creator =>
      (_$data['creator'] as Input_AuthUsersDataObjRelInsertInput?);

  DateTime? get expiresAt => (_$data['expiresAt'] as DateTime?);

  Input_AuthUsersDataObjRelInsertInput? get user =>
      (_$data['user'] as Input_AuthUsersDataObjRelInsertInput?);

  UuidValue? get userUid => (_$data['userUid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('creator')) {
      final l$creator = creator;
      result$data['creator'] = l$creator?.toJson();
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : tstzToString(l$expiresAt);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userUid')) {
      final l$userUid = userUid;
      result$data['userUid'] = l$userUid == null
          ? null
          : uuidToString(l$userUid);
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsInsertInput<Input_AuthInvitationsInsertInput>
  get copyWith => CopyWith_Input_AuthInvitationsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$creator = creator;
    final lOther$creator = other.creator;
    if (_$data.containsKey('creator') != other._$data.containsKey('creator')) {
      return false;
    }
    if (l$creator != lOther$creator) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
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
    final l$userUid = userUid;
    final lOther$userUid = other.userUid;
    if (_$data.containsKey('userUid') != other._$data.containsKey('userUid')) {
      return false;
    }
    if (l$userUid != lOther$userUid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$creator = creator;
    final l$expiresAt = expiresAt;
    final l$user = user;
    final l$userUid = userUid;
    return Object.hashAll([
      _$data.containsKey('creator') ? l$creator : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userUid') ? l$userUid : const {},
    ]);
  }
}
