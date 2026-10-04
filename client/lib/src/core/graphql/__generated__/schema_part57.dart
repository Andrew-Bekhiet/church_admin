// Part 57 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_StoresBoolExp<TRes> {
  factory CopyWith_Input_StoresBoolExp(
    Input_StoresBoolExp instance,
    TRes Function(Input_StoresBoolExp) then,
  ) = _CopyWithImpl_Input_StoresBoolExp;

  factory CopyWith_Input_StoresBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresBoolExp;

  TRes call({
    List<Input_StoresBoolExp>? $_and,
    Input_StoresBoolExp? $_not,
    List<Input_StoresBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_UuidComparisonExp? adminFamily,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_BooleanComparisonExp? userCanEdit,
  });
  TRes $_and(
    Iterable<Input_StoresBoolExp>? Function(
      Iterable<CopyWith_Input_StoresBoolExp<Input_StoresBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_StoresBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_StoresBoolExp>? Function(
      Iterable<CopyWith_Input_StoresBoolExp<Input_StoresBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AddressesBoolExp<TRes> get address;
  CopyWith_Input_UuidComparisonExp<TRes> get adminFamily;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate;
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_StoresBoolExp<TRes>
    implements CopyWith_Input_StoresBoolExp<TRes> {
  _CopyWithImpl_Input_StoresBoolExp(this._instance, this._then);

  final Input_StoresBoolExp _instance;

  final TRes Function(Input_StoresBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? address = _undefined,
    Object? adminFamily = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? family = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_StoresBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_StoresBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_StoresBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_StoresBoolExp>?),
      if (address != _undefined)
        'address': (address as Input_AddressesBoolExp?),
      if (adminFamily != _undefined)
        'adminFamily': (adminFamily as Input_UuidComparisonExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (editHistory != _undefined)
        'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_BooleanComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_StoresBoolExp>? Function(
      Iterable<CopyWith_Input_StoresBoolExp<Input_StoresBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_StoresBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_StoresBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_StoresBoolExp>? Function(
      Iterable<CopyWith_Input_StoresBoolExp<Input_StoresBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_StoresBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AddressesBoolExp<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get adminFamily {
    final local$adminFamily = _instance.adminFamily;
    return local$adminFamily == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$adminFamily,
            (e) => call(adminFamily: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory {
    final local$editHistory = _instance.editHistory;
    return local$editHistory == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistory,
            (e) => call(editHistory: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistoryAggregate,
            (e) => call(editHistoryAggregate: e),
          );
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$family, (e) => call(family: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoresBoolExp<TRes>
    implements CopyWith_Input_StoresBoolExp<TRes> {
  _CopyWithStubImpl_Input_StoresBoolExp(this._res);

  TRes _res;

  call({
    List<Input_StoresBoolExp>? $_and,
    Input_StoresBoolExp? $_not,
    List<Input_StoresBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_UuidComparisonExp? adminFamily,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_BooleanComparisonExp? userCanEdit,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_StoresBoolExp<TRes> get $_not =>
      CopyWith_Input_StoresBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get address =>
      CopyWith_Input_AddressesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get adminFamily =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_StoresIncInput {
  factory Input_StoresIncInput({int? color}) =>
      Input_StoresIncInput._({if (color != null) r'color': color});

  Input_StoresIncInput._(this._$data);

  factory Input_StoresIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_StoresIncInput._(result$data);
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

  CopyWith_Input_StoresIncInput<Input_StoresIncInput> get copyWith =>
      CopyWith_Input_StoresIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresIncInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StoresIncInput<TRes> {
  factory CopyWith_Input_StoresIncInput(
    Input_StoresIncInput instance,
    TRes Function(Input_StoresIncInput) then,
  ) = _CopyWithImpl_Input_StoresIncInput;

  factory CopyWith_Input_StoresIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_StoresIncInput<TRes>
    implements CopyWith_Input_StoresIncInput<TRes> {
  _CopyWithImpl_Input_StoresIncInput(this._instance, this._then);

  final Input_StoresIncInput _instance;

  final TRes Function(Input_StoresIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresIncInput<TRes>
    implements CopyWith_Input_StoresIncInput<TRes> {
  _CopyWithStubImpl_Input_StoresIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_StoresInsertInput {
  factory Input_StoresInsertInput({
    Input_AddressesObjRelInsertInput? address,
    UuidValue? adminFamily,
    int? color,
    Input_FamiliesObjRelInsertInput? family,
    String? name,
  }) => Input_StoresInsertInput._({
    if (address != null) r'address': address,
    if (adminFamily != null) r'adminFamily': adminFamily,
    if (color != null) r'color': color,
    if (family != null) r'family': family,
    if (name != null) r'name': name,
  });

  Input_StoresInsertInput._(this._$data);

  factory Input_StoresInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesObjRelInsertInput.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminFamily')) {
      final l$adminFamily = data['adminFamily'];
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : stringToUuid(l$adminFamily);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_StoresInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesObjRelInsertInput? get address =>
      (_$data['address'] as Input_AddressesObjRelInsertInput?);

  UuidValue? get adminFamily => (_$data['adminFamily'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  Input_FamiliesObjRelInsertInput? get family =>
      (_$data['family'] as Input_FamiliesObjRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('adminFamily')) {
      final l$adminFamily = adminFamily;
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : uuidToString(l$adminFamily);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_StoresInsertInput<Input_StoresInsertInput> get copyWith =>
      CopyWith_Input_StoresInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresInsertInput || runtimeType != other.runtimeType) {
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
    final l$adminFamily = adminFamily;
    final lOther$adminFamily = other.adminFamily;
    if (_$data.containsKey('adminFamily') !=
        other._$data.containsKey('adminFamily')) {
      return false;
    }
    if (l$adminFamily != lOther$adminFamily) {
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
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
    final l$address = address;
    final l$adminFamily = adminFamily;
    final l$color = color;
    final l$family = family;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('adminFamily') ? l$adminFamily : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_StoresInsertInput<TRes> {
  factory CopyWith_Input_StoresInsertInput(
    Input_StoresInsertInput instance,
    TRes Function(Input_StoresInsertInput) then,
  ) = _CopyWithImpl_Input_StoresInsertInput;

  factory CopyWith_Input_StoresInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresInsertInput;

  TRes call({
    Input_AddressesObjRelInsertInput? address,
    UuidValue? adminFamily,
    int? color,
    Input_FamiliesObjRelInsertInput? family,
    String? name,
  });
  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address;
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family;
}

class _CopyWithImpl_Input_StoresInsertInput<TRes>
    implements CopyWith_Input_StoresInsertInput<TRes> {
  _CopyWithImpl_Input_StoresInsertInput(this._instance, this._then);

  final Input_StoresInsertInput _instance;

  final TRes Function(Input_StoresInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? adminFamily = _undefined,
    Object? color = _undefined,
    Object? family = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_StoresInsertInput._({
      ..._instance._$data,
      if (address != _undefined)
        'address': (address as Input_AddressesObjRelInsertInput?),
      if (adminFamily != _undefined) 'adminFamily': (adminFamily as UuidValue?),
      if (color != _undefined) 'color': (color as int?),
      if (family != _undefined)
        'family': (family as Input_FamiliesObjRelInsertInput?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );

  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AddressesObjRelInsertInput(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$family,
            (e) => call(family: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoresInsertInput<TRes>
    implements CopyWith_Input_StoresInsertInput<TRes> {
  _CopyWithStubImpl_Input_StoresInsertInput(this._res);

  TRes _res;

  call({
    Input_AddressesObjRelInsertInput? address,
    UuidValue? adminFamily,
    int? color,
    Input_FamiliesObjRelInsertInput? family,
    String? name,
  }) => _res;

  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address =>
      CopyWith_Input_AddressesObjRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);
}

class Input_StoresMaxOrderBy {
  factory Input_StoresMaxOrderBy({
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
  }) => Input_StoresMaxOrderBy._({
    if (adminFamily != null) r'adminFamily': adminFamily,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
  });

  Input_StoresMaxOrderBy._(this._$data);

  factory Input_StoresMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminFamily')) {
      final l$adminFamily = data['adminFamily'];
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : fromJson_Enum_OrderBy((l$adminFamily as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
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
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    return Input_StoresMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get adminFamily => (_$data['adminFamily'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminFamily')) {
      final l$adminFamily = adminFamily;
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : toJson_Enum_OrderBy(l$adminFamily);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
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
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    return result$data;
  }

  CopyWith_Input_StoresMaxOrderBy<Input_StoresMaxOrderBy> get copyWith =>
      CopyWith_Input_StoresMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresMaxOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminFamily = adminFamily;
    final lOther$adminFamily = other.adminFamily;
    if (_$data.containsKey('adminFamily') !=
        other._$data.containsKey('adminFamily')) {
      return false;
    }
    if (l$adminFamily != lOther$adminFamily) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminFamily = adminFamily;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      _$data.containsKey('adminFamily') ? l$adminFamily : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_StoresMaxOrderBy<TRes> {
  factory CopyWith_Input_StoresMaxOrderBy(
    Input_StoresMaxOrderBy instance,
    TRes Function(Input_StoresMaxOrderBy) then,
  ) = _CopyWithImpl_Input_StoresMaxOrderBy;

  factory CopyWith_Input_StoresMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresMaxOrderBy;

  TRes call({
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
  });
}

class _CopyWithImpl_Input_StoresMaxOrderBy<TRes>
    implements CopyWith_Input_StoresMaxOrderBy<TRes> {
  _CopyWithImpl_Input_StoresMaxOrderBy(this._instance, this._then);

  final Input_StoresMaxOrderBy _instance;

  final TRes Function(Input_StoresMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminFamily = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) => _then(
    Input_StoresMaxOrderBy._({
      ..._instance._$data,
      if (adminFamily != _undefined)
        'adminFamily': (adminFamily as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresMaxOrderBy<TRes>
    implements CopyWith_Input_StoresMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
  }) => _res;
}

class Input_StoresMinOrderBy {
  factory Input_StoresMinOrderBy({
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
  }) => Input_StoresMinOrderBy._({
    if (adminFamily != null) r'adminFamily': adminFamily,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
  });

  Input_StoresMinOrderBy._(this._$data);

  factory Input_StoresMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminFamily')) {
      final l$adminFamily = data['adminFamily'];
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : fromJson_Enum_OrderBy((l$adminFamily as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
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
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    return Input_StoresMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get adminFamily => (_$data['adminFamily'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminFamily')) {
      final l$adminFamily = adminFamily;
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : toJson_Enum_OrderBy(l$adminFamily);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
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
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    return result$data;
  }

  CopyWith_Input_StoresMinOrderBy<Input_StoresMinOrderBy> get copyWith =>
      CopyWith_Input_StoresMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresMinOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminFamily = adminFamily;
    final lOther$adminFamily = other.adminFamily;
    if (_$data.containsKey('adminFamily') !=
        other._$data.containsKey('adminFamily')) {
      return false;
    }
    if (l$adminFamily != lOther$adminFamily) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminFamily = adminFamily;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      _$data.containsKey('adminFamily') ? l$adminFamily : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_StoresMinOrderBy<TRes> {
  factory CopyWith_Input_StoresMinOrderBy(
    Input_StoresMinOrderBy instance,
    TRes Function(Input_StoresMinOrderBy) then,
  ) = _CopyWithImpl_Input_StoresMinOrderBy;

  factory CopyWith_Input_StoresMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresMinOrderBy;

  TRes call({
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
  });
}

class _CopyWithImpl_Input_StoresMinOrderBy<TRes>
    implements CopyWith_Input_StoresMinOrderBy<TRes> {
  _CopyWithImpl_Input_StoresMinOrderBy(this._instance, this._then);

  final Input_StoresMinOrderBy _instance;

  final TRes Function(Input_StoresMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminFamily = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) => _then(
    Input_StoresMinOrderBy._({
      ..._instance._$data,
      if (adminFamily != _undefined)
        'adminFamily': (adminFamily as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresMinOrderBy<TRes>
    implements CopyWith_Input_StoresMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
  }) => _res;
}

class Input_StoresObjRelInsertInput {
  factory Input_StoresObjRelInsertInput({
    required Input_StoresInsertInput data,
    Input_StoresOnConflict? onConflict,
  }) => Input_StoresObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_StoresObjRelInsertInput._(this._$data);

  factory Input_StoresObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_StoresInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_StoresOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_StoresObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoresInsertInput get data =>
      (_$data['data'] as Input_StoresInsertInput);

  Input_StoresOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_StoresOnConflict?);

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

  CopyWith_Input_StoresObjRelInsertInput<Input_StoresObjRelInsertInput>
  get copyWith => CopyWith_Input_StoresObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresObjRelInsertInput ||
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

abstract class CopyWith_Input_StoresObjRelInsertInput<TRes> {
  factory CopyWith_Input_StoresObjRelInsertInput(
    Input_StoresObjRelInsertInput instance,
    TRes Function(Input_StoresObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_StoresObjRelInsertInput;

  factory CopyWith_Input_StoresObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresObjRelInsertInput;

  TRes call({
    Input_StoresInsertInput? data,
    Input_StoresOnConflict? onConflict,
  });
  CopyWith_Input_StoresInsertInput<TRes> get data;
  CopyWith_Input_StoresOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_StoresObjRelInsertInput<TRes>
    implements CopyWith_Input_StoresObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_StoresObjRelInsertInput(this._instance, this._then);

  final Input_StoresObjRelInsertInput _instance;

  final TRes Function(Input_StoresObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_StoresObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_StoresInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_StoresOnConflict?),
        }),
      );

  CopyWith_Input_StoresInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_StoresInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_StoresOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_StoresOnConflict.stub(_then(_instance))
        : CopyWith_Input_StoresOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoresObjRelInsertInput<TRes>
    implements CopyWith_Input_StoresObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_StoresObjRelInsertInput(this._res);

  TRes _res;

  call({Input_StoresInsertInput? data, Input_StoresOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_StoresInsertInput<TRes> get data =>
      CopyWith_Input_StoresInsertInput.stub(_res);

  CopyWith_Input_StoresOnConflict<TRes> get onConflict =>
      CopyWith_Input_StoresOnConflict.stub(_res);
}

class Input_StoresOnConflict {
  factory Input_StoresOnConflict({
    required Enum_StoresConstraint constraint,
    List<Enum_StoresUpdateColumn>? updateColumns,
    Input_StoresBoolExp? where,
  }) => Input_StoresOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_StoresOnConflict._(this._$data);

  factory Input_StoresOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_StoresConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_StoresUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_StoresBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_StoresOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_StoresConstraint get constraint =>
      (_$data['constraint'] as Enum_StoresConstraint);

  List<Enum_StoresUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_StoresUpdateColumn>?);

  Input_StoresBoolExp? get where => (_$data['where'] as Input_StoresBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_StoresConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_StoresUpdateColumn>)
              .map((e) => toJson_Enum_StoresUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StoresOnConflict<Input_StoresOnConflict> get copyWith =>
      CopyWith_Input_StoresOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StoresOnConflict<TRes> {
  factory CopyWith_Input_StoresOnConflict(
    Input_StoresOnConflict instance,
    TRes Function(Input_StoresOnConflict) then,
  ) = _CopyWithImpl_Input_StoresOnConflict;

  factory CopyWith_Input_StoresOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresOnConflict;

  TRes call({
    Enum_StoresConstraint? constraint,
    List<Enum_StoresUpdateColumn>? updateColumns,
    Input_StoresBoolExp? where,
  });
  CopyWith_Input_StoresBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StoresOnConflict<TRes>
    implements CopyWith_Input_StoresOnConflict<TRes> {
  _CopyWithImpl_Input_StoresOnConflict(this._instance, this._then);

  final Input_StoresOnConflict _instance;

  final TRes Function(Input_StoresOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_StoresOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_StoresConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_StoresUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_StoresBoolExp?),
    }),
  );

  CopyWith_Input_StoresBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StoresOnConflict<TRes>
    implements CopyWith_Input_StoresOnConflict<TRes> {
  _CopyWithStubImpl_Input_StoresOnConflict(this._res);

  TRes _res;

  call({
    Enum_StoresConstraint? constraint,
    List<Enum_StoresUpdateColumn>? updateColumns,
    Input_StoresBoolExp? where,
  }) => _res;

  CopyWith_Input_StoresBoolExp<TRes> get where =>
      CopyWith_Input_StoresBoolExp.stub(_res);
}

class Input_StoresOrderBy {
  factory Input_StoresOrderBy({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? userCanEdit,
  }) => Input_StoresOrderBy._({
    if (address != null) r'address': address,
    if (adminFamily != null) r'adminFamily': adminFamily,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (family != null) r'family': family,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_StoresOrderBy._(this._$data);

  factory Input_StoresOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesOrderBy.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminFamily')) {
      final l$adminFamily = data['adminFamily'];
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : fromJson_Enum_OrderBy((l$adminFamily as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateOrderBy.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : fromJson_Enum_OrderBy((l$userCanEdit as String));
    }
    return Input_StoresOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesOrderBy? get address =>
      (_$data['address'] as Input_AddressesOrderBy?);

  Enum_OrderBy? get adminFamily => (_$data['adminFamily'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Input_FamiliesOrderBy? get family =>
      (_$data['family'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get userCanEdit => (_$data['userCanEdit'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('adminFamily')) {
      final l$adminFamily = adminFamily;
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : toJson_Enum_OrderBy(l$adminFamily);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : toJson_Enum_OrderBy(l$userCanEdit);
    }
    return result$data;
  }

  CopyWith_Input_StoresOrderBy<Input_StoresOrderBy> get copyWith =>
      CopyWith_Input_StoresOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresOrderBy || runtimeType != other.runtimeType) {
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
    final l$adminFamily = adminFamily;
    final lOther$adminFamily = other.adminFamily;
    if (_$data.containsKey('adminFamily') !=
        other._$data.containsKey('adminFamily')) {
      return false;
    }
    if (l$adminFamily != lOther$adminFamily) {
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
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$address = address;
    final l$adminFamily = adminFamily;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$family = family;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$userCanEdit = userCanEdit;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('adminFamily') ? l$adminFamily : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}

abstract class CopyWith_Input_StoresOrderBy<TRes> {
  factory CopyWith_Input_StoresOrderBy(
    Input_StoresOrderBy instance,
    TRes Function(Input_StoresOrderBy) then,
  ) = _CopyWithImpl_Input_StoresOrderBy;

  factory CopyWith_Input_StoresOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresOrderBy;

  TRes call({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? userCanEdit,
  });
  CopyWith_Input_AddressesOrderBy<TRes> get address;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate;
  CopyWith_Input_FamiliesOrderBy<TRes> get family;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
}

class _CopyWithImpl_Input_StoresOrderBy<TRes>
    implements CopyWith_Input_StoresOrderBy<TRes> {
  _CopyWithImpl_Input_StoresOrderBy(this._instance, this._then);

  final Input_StoresOrderBy _instance;

  final TRes Function(Input_StoresOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? adminFamily = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? family = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_StoresOrderBy._({
      ..._instance._$data,
      if (address != _undefined)
        'address': (address as Input_AddressesOrderBy?),
      if (adminFamily != _undefined)
        'adminFamily': (adminFamily as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateOrderBy?),
      if (family != _undefined) 'family': (family as Input_FamiliesOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AddressesOrderBy<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesOrderBy(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistoryAggregate,
            (e) => call(editHistoryAggregate: e),
          );
  }

  CopyWith_Input_FamiliesOrderBy<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$family, (e) => call(family: e));
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoresOrderBy<TRes>
    implements CopyWith_Input_StoresOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresOrderBy(this._res);

  TRes _res;

  call({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? adminFamily,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? userCanEdit,
  }) => _res;

  CopyWith_Input_AddressesOrderBy<TRes> get address =>
      CopyWith_Input_AddressesOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_FamiliesOrderBy<TRes> get family =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);
}

class Input_StoresPkColumnsInput {
  factory Input_StoresPkColumnsInput({required UuidValue id}) =>
      Input_StoresPkColumnsInput._({r'id': id});

  Input_StoresPkColumnsInput._(this._$data);

  factory Input_StoresPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_StoresPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_StoresPkColumnsInput<Input_StoresPkColumnsInput>
  get copyWith => CopyWith_Input_StoresPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresPkColumnsInput ||
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

abstract class CopyWith_Input_StoresPkColumnsInput<TRes> {
  factory CopyWith_Input_StoresPkColumnsInput(
    Input_StoresPkColumnsInput instance,
    TRes Function(Input_StoresPkColumnsInput) then,
  ) = _CopyWithImpl_Input_StoresPkColumnsInput;

  factory CopyWith_Input_StoresPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_StoresPkColumnsInput<TRes>
    implements CopyWith_Input_StoresPkColumnsInput<TRes> {
  _CopyWithImpl_Input_StoresPkColumnsInput(this._instance, this._then);

  final Input_StoresPkColumnsInput _instance;

  final TRes Function(Input_StoresPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_StoresPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresPkColumnsInput<TRes>
    implements CopyWith_Input_StoresPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_StoresPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_StoresSetInput {
  factory Input_StoresSetInput({
    UuidValue? adminFamily,
    int? color,
    String? name,
  }) => Input_StoresSetInput._({
    if (adminFamily != null) r'adminFamily': adminFamily,
    if (color != null) r'color': color,
    if (name != null) r'name': name,
  });

  Input_StoresSetInput._(this._$data);

  factory Input_StoresSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminFamily')) {
      final l$adminFamily = data['adminFamily'];
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : stringToUuid(l$adminFamily);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_StoresSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get adminFamily => (_$data['adminFamily'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminFamily')) {
      final l$adminFamily = adminFamily;
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : uuidToString(l$adminFamily);
    }
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

  CopyWith_Input_StoresSetInput<Input_StoresSetInput> get copyWith =>
      CopyWith_Input_StoresSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresSetInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminFamily = adminFamily;
    final lOther$adminFamily = other.adminFamily;
    if (_$data.containsKey('adminFamily') !=
        other._$data.containsKey('adminFamily')) {
      return false;
    }
    if (l$adminFamily != lOther$adminFamily) {
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
    final l$adminFamily = adminFamily;
    final l$color = color;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('adminFamily') ? l$adminFamily : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_StoresSetInput<TRes> {
  factory CopyWith_Input_StoresSetInput(
    Input_StoresSetInput instance,
    TRes Function(Input_StoresSetInput) then,
  ) = _CopyWithImpl_Input_StoresSetInput;

  factory CopyWith_Input_StoresSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresSetInput;

  TRes call({UuidValue? adminFamily, int? color, String? name});
}

class _CopyWithImpl_Input_StoresSetInput<TRes>
    implements CopyWith_Input_StoresSetInput<TRes> {
  _CopyWithImpl_Input_StoresSetInput(this._instance, this._then);

  final Input_StoresSetInput _instance;

  final TRes Function(Input_StoresSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminFamily = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_StoresSetInput._({
      ..._instance._$data,
      if (adminFamily != _undefined) 'adminFamily': (adminFamily as UuidValue?),
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresSetInput<TRes>
    implements CopyWith_Input_StoresSetInput<TRes> {
  _CopyWithStubImpl_Input_StoresSetInput(this._res);

  TRes _res;

  call({UuidValue? adminFamily, int? color, String? name}) => _res;
}

class Input_StoresStddevOrderBy {
  factory Input_StoresStddevOrderBy({Enum_OrderBy? color}) =>
      Input_StoresStddevOrderBy._({if (color != null) r'color': color});

  Input_StoresStddevOrderBy._(this._$data);

  factory Input_StoresStddevOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresStddevOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_StoresStddevOrderBy<Input_StoresStddevOrderBy> get copyWith =>
      CopyWith_Input_StoresStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresStddevOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_StoresStddevOrderBy<TRes> {
  factory CopyWith_Input_StoresStddevOrderBy(
    Input_StoresStddevOrderBy instance,
    TRes Function(Input_StoresStddevOrderBy) then,
  ) = _CopyWithImpl_Input_StoresStddevOrderBy;

  factory CopyWith_Input_StoresStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresStddevOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresStddevOrderBy<TRes>
    implements CopyWith_Input_StoresStddevOrderBy<TRes> {
  _CopyWithImpl_Input_StoresStddevOrderBy(this._instance, this._then);

  final Input_StoresStddevOrderBy _instance;

  final TRes Function(Input_StoresStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresStddevOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresStddevOrderBy<TRes>
    implements CopyWith_Input_StoresStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StoresStddevPopOrderBy {
  factory Input_StoresStddevPopOrderBy({Enum_OrderBy? color}) =>
      Input_StoresStddevPopOrderBy._({if (color != null) r'color': color});

  Input_StoresStddevPopOrderBy._(this._$data);

  factory Input_StoresStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresStddevPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_StoresStddevPopOrderBy<Input_StoresStddevPopOrderBy>
  get copyWith => CopyWith_Input_StoresStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresStddevPopOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_StoresStddevPopOrderBy<TRes> {
  factory CopyWith_Input_StoresStddevPopOrderBy(
    Input_StoresStddevPopOrderBy instance,
    TRes Function(Input_StoresStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_StoresStddevPopOrderBy;

  factory CopyWith_Input_StoresStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresStddevPopOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresStddevPopOrderBy<TRes>
    implements CopyWith_Input_StoresStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_StoresStddevPopOrderBy(this._instance, this._then);

  final Input_StoresStddevPopOrderBy _instance;

  final TRes Function(Input_StoresStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresStddevPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresStddevPopOrderBy<TRes>
    implements CopyWith_Input_StoresStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StoresStddevSampOrderBy {
  factory Input_StoresStddevSampOrderBy({Enum_OrderBy? color}) =>
      Input_StoresStddevSampOrderBy._({if (color != null) r'color': color});

  Input_StoresStddevSampOrderBy._(this._$data);

  factory Input_StoresStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresStddevSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_StoresStddevSampOrderBy<Input_StoresStddevSampOrderBy>
  get copyWith => CopyWith_Input_StoresStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresStddevSampOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}
