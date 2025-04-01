// Part 4 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_AreasBoolExp<TRes> {
  factory CopyWith_Input_AreasBoolExp(
    Input_AreasBoolExp instance,
    TRes Function(Input_AreasBoolExp) then,
  ) = _CopyWithImpl_Input_AreasBoolExp;

  factory CopyWith_Input_AreasBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasBoolExp;

  TRes call({
    List<Input_AreasBoolExp>? $_and,
    Input_AreasBoolExp? $_not,
    List<Input_AreasBoolExp>? $_or,
    Input_AddressesBoolExp? addresses,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_GeographyComparisonExp? bounds,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_AreasStreetsBoolExp? streets,
  });
  TRes $_and(
      Iterable<Input_AreasBoolExp>? Function(
              Iterable<CopyWith_Input_AreasBoolExp<Input_AreasBoolExp>>?)
          _fn);
  CopyWith_Input_AreasBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_AreasBoolExp>? Function(
              Iterable<CopyWith_Input_AreasBoolExp<Input_AreasBoolExp>>?)
          _fn);
  CopyWith_Input_AddressesBoolExp<TRes> get addresses;
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_GeographyComparisonExp<TRes> get bounds;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_AreasStreetsBoolExp<TRes> get streets;
}

class _CopyWithImpl_Input_AreasBoolExp<TRes>
    implements CopyWith_Input_AreasBoolExp<TRes> {
  _CopyWithImpl_Input_AreasBoolExp(
    this._instance,
    this._then,
  );

  final Input_AreasBoolExp _instance;

  final TRes Function(Input_AreasBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? addresses = _undefined,
    Object? adminUsers = _undefined,
    Object? blurhash = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? streets = _undefined,
  }) =>
      _then(Input_AreasBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined) '_and': ($_and as List<Input_AreasBoolExp>?),
        if ($_not != _undefined) '_not': ($_not as Input_AreasBoolExp?),
        if ($_or != _undefined) '_or': ($_or as List<Input_AreasBoolExp>?),
        if (addresses != _undefined)
          'addresses': (addresses as Input_AddressesBoolExp?),
        if (adminUsers != _undefined)
          'adminUsers': (adminUsers as Input_AuthUsersAdminOnBoolExp?),
        if (blurhash != _undefined)
          'blurhash': (blurhash as Input_StringComparisonExp?),
        if (bounds != _undefined)
          'bounds': (bounds as Input_GeographyComparisonExp?),
        if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
        if (editHistory != _undefined)
          'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
        if (editHistoryAggregate != _undefined)
          'editHistoryAggregate': (editHistoryAggregate
              as Input_HistoryEditHistoryAggregateBoolExp?),
        if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
        if (lastEdit != _undefined)
          'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
        if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
        if (streets != _undefined)
          'streets': (streets as Input_AreasStreetsBoolExp?),
      }));

  TRes $_and(
          Iterable<Input_AreasBoolExp>? Function(
                  Iterable<CopyWith_Input_AreasBoolExp<Input_AreasBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and?.map((e) => CopyWith_Input_AreasBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_AreasBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AreasBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_AreasBoolExp>? Function(
                  Iterable<CopyWith_Input_AreasBoolExp<Input_AreasBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith_Input_AreasBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_AddressesBoolExp<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(
            local$addresses, (e) => call(addresses: e));
  }

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$adminUsers, (e) => call(adminUsers: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash, (e) => call(blurhash: e));
  }

  CopyWith_Input_GeographyComparisonExp<TRes> get bounds {
    final local$bounds = _instance.bounds;
    return local$bounds == null
        ? CopyWith_Input_GeographyComparisonExp.stub(_then(_instance))
        : CopyWith_Input_GeographyComparisonExp(
            local$bounds, (e) => call(bounds: e));
  }

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color, (e) => call(color: e));
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory {
    final local$editHistory = _instance.editHistory;
    return local$editHistory == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistory, (e) => call(editHistory: e));
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
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
            local$lastEdit, (e) => call(lastEdit: e));
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
            local$photoUpdatedAt, (e) => call(photoUpdatedAt: e));
  }

  CopyWith_Input_AreasStreetsBoolExp<TRes> get streets {
    final local$streets = _instance.streets;
    return local$streets == null
        ? CopyWith_Input_AreasStreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsBoolExp(
            local$streets, (e) => call(streets: e));
  }
}

class _CopyWithStubImpl_Input_AreasBoolExp<TRes>
    implements CopyWith_Input_AreasBoolExp<TRes> {
  _CopyWithStubImpl_Input_AreasBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AreasBoolExp>? $_and,
    Input_AreasBoolExp? $_not,
    List<Input_AreasBoolExp>? $_or,
    Input_AddressesBoolExp? addresses,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_GeographyComparisonExp? bounds,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_AreasStreetsBoolExp? streets,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_AreasBoolExp<TRes> get $_not =>
      CopyWith_Input_AreasBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get addresses =>
      CopyWith_Input_AddressesBoolExp.stub(_res);

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_GeographyComparisonExp<TRes> get bounds =>
      CopyWith_Input_GeographyComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate =>
          CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_AreasStreetsBoolExp<TRes> get streets =>
      CopyWith_Input_AreasStreetsBoolExp.stub(_res);
}

class Input_AreasIncInput {
  factory Input_AreasIncInput({int? color}) => Input_AreasIncInput._({
        if (color != null) r'color': color,
      });

  Input_AreasIncInput._(this._$data);

  factory Input_AreasIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_AreasIncInput._(result$data);
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

  CopyWith_Input_AreasIncInput<Input_AreasIncInput> get copyWith =>
      CopyWith_Input_AreasIncInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasIncInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_AreasIncInput<TRes> {
  factory CopyWith_Input_AreasIncInput(
    Input_AreasIncInput instance,
    TRes Function(Input_AreasIncInput) then,
  ) = _CopyWithImpl_Input_AreasIncInput;

  factory CopyWith_Input_AreasIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_AreasIncInput<TRes>
    implements CopyWith_Input_AreasIncInput<TRes> {
  _CopyWithImpl_Input_AreasIncInput(
    this._instance,
    this._then,
  );

  final Input_AreasIncInput _instance;

  final TRes Function(Input_AreasIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(Input_AreasIncInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
      }));
}

class _CopyWithStubImpl_Input_AreasIncInput<TRes>
    implements CopyWith_Input_AreasIncInput<TRes> {
  _CopyWithStubImpl_Input_AreasIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_AreasInsertInput {
  factory Input_AreasInsertInput({
    Input_AddressesArrRelInsertInput? addresses,
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Map<String, dynamic>? bounds,
    int? color,
    String? name,
    Input_AreasStreetsArrRelInsertInput? streets,
  }) =>
      Input_AreasInsertInput._({
        if (addresses != null) r'addresses': addresses,
        if (adminUsers != null) r'adminUsers': adminUsers,
        if (bounds != null) r'bounds': bounds,
        if (color != null) r'color': color,
        if (name != null) r'name': name,
        if (streets != null) r'streets': streets,
      });

  Input_AreasInsertInput._(this._$data);

  factory Input_AreasInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = l$addresses == null
          ? null
          : Input_AddressesArrRelInsertInput.fromJson(
              (l$addresses as Map<String, dynamic>));
    }
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnArrRelInsertInput.fromJson(
              (l$adminUsers as Map<String, dynamic>));
    }
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = (l$bounds as Map<String, dynamic>?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('streets')) {
      final l$streets = data['streets'];
      result$data['streets'] = l$streets == null
          ? null
          : Input_AreasStreetsArrRelInsertInput.fromJson(
              (l$streets as Map<String, dynamic>));
    }
    return Input_AreasInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesArrRelInsertInput? get addresses =>
      (_$data['addresses'] as Input_AddressesArrRelInsertInput?);

  Input_AuthUsersAdminOnArrRelInsertInput? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnArrRelInsertInput?);

  Map<String, dynamic>? get bounds =>
      (_$data['bounds'] as Map<String, dynamic>?);

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Input_AreasStreetsArrRelInsertInput? get streets =>
      (_$data['streets'] as Input_AreasStreetsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.toJson();
    }
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('streets')) {
      final l$streets = streets;
      result$data['streets'] = l$streets?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreasInsertInput<Input_AreasInsertInput> get copyWith =>
      CopyWith_Input_AreasInsertInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasInsertInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (_$data.containsKey('addresses') !=
        other._$data.containsKey('addresses')) {
      return false;
    }
    if (l$addresses != lOther$addresses) {
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (_$data.containsKey('bounds') != other._$data.containsKey('bounds')) {
      return false;
    }
    if (l$bounds != lOther$bounds) {
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
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (_$data.containsKey('streets') != other._$data.containsKey('streets')) {
      return false;
    }
    if (l$streets != lOther$streets) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addresses = addresses;
    final l$adminUsers = adminUsers;
    final l$bounds = bounds;
    final l$color = color;
    final l$name = name;
    final l$streets = streets;
    return Object.hashAll([
      _$data.containsKey('addresses') ? l$addresses : const {},
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('streets') ? l$streets : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasInsertInput<TRes> {
  factory CopyWith_Input_AreasInsertInput(
    Input_AreasInsertInput instance,
    TRes Function(Input_AreasInsertInput) then,
  ) = _CopyWithImpl_Input_AreasInsertInput;

  factory CopyWith_Input_AreasInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasInsertInput;

  TRes call({
    Input_AddressesArrRelInsertInput? addresses,
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Map<String, dynamic>? bounds,
    int? color,
    String? name,
    Input_AreasStreetsArrRelInsertInput? streets,
  });
  CopyWith_Input_AddressesArrRelInsertInput<TRes> get addresses;
  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers;
  CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> get streets;
}

class _CopyWithImpl_Input_AreasInsertInput<TRes>
    implements CopyWith_Input_AreasInsertInput<TRes> {
  _CopyWithImpl_Input_AreasInsertInput(
    this._instance,
    this._then,
  );

  final Input_AreasInsertInput _instance;

  final TRes Function(Input_AreasInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addresses = _undefined,
    Object? adminUsers = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? streets = _undefined,
  }) =>
      _then(Input_AreasInsertInput._({
        ..._instance._$data,
        if (addresses != _undefined)
          'addresses': (addresses as Input_AddressesArrRelInsertInput?),
        if (adminUsers != _undefined)
          'adminUsers':
              (adminUsers as Input_AuthUsersAdminOnArrRelInsertInput?),
        if (bounds != _undefined) 'bounds': (bounds as Map<String, dynamic>?),
        if (color != _undefined) 'color': (color as int?),
        if (name != _undefined) 'name': (name as String?),
        if (streets != _undefined)
          'streets': (streets as Input_AreasStreetsArrRelInsertInput?),
      }));

  CopyWith_Input_AddressesArrRelInsertInput<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AddressesArrRelInsertInput(
            local$addresses, (e) => call(addresses: e));
  }

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
            local$adminUsers, (e) => call(adminUsers: e));
  }

  CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> get streets {
    final local$streets = _instance.streets;
    return local$streets == null
        ? CopyWith_Input_AreasStreetsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsArrRelInsertInput(
            local$streets, (e) => call(streets: e));
  }
}

class _CopyWithStubImpl_Input_AreasInsertInput<TRes>
    implements CopyWith_Input_AreasInsertInput<TRes> {
  _CopyWithStubImpl_Input_AreasInsertInput(this._res);

  TRes _res;

  call({
    Input_AddressesArrRelInsertInput? addresses,
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Map<String, dynamic>? bounds,
    int? color,
    String? name,
    Input_AreasStreetsArrRelInsertInput? streets,
  }) =>
      _res;

  CopyWith_Input_AddressesArrRelInsertInput<TRes> get addresses =>
      CopyWith_Input_AddressesArrRelInsertInput.stub(_res);

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(_res);

  CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> get streets =>
      CopyWith_Input_AreasStreetsArrRelInsertInput.stub(_res);
}

class Input_AreasObjRelInsertInput {
  factory Input_AreasObjRelInsertInput({
    required Input_AreasInsertInput data,
    Input_AreasOnConflict? onConflict,
  }) =>
      Input_AreasObjRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_AreasObjRelInsertInput._(this._$data);

  factory Input_AreasObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input_AreasInsertInput.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AreasOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_AreasObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasInsertInput get data => (_$data['data'] as Input_AreasInsertInput);

  Input_AreasOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AreasOnConflict?);

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

  CopyWith_Input_AreasObjRelInsertInput<Input_AreasObjRelInsertInput>
      get copyWith => CopyWith_Input_AreasObjRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasObjRelInsertInput ||
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

abstract class CopyWith_Input_AreasObjRelInsertInput<TRes> {
  factory CopyWith_Input_AreasObjRelInsertInput(
    Input_AreasObjRelInsertInput instance,
    TRes Function(Input_AreasObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_AreasObjRelInsertInput;

  factory CopyWith_Input_AreasObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasObjRelInsertInput;

  TRes call({
    Input_AreasInsertInput? data,
    Input_AreasOnConflict? onConflict,
  });
  CopyWith_Input_AreasInsertInput<TRes> get data;
  CopyWith_Input_AreasOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AreasObjRelInsertInput<TRes>
    implements CopyWith_Input_AreasObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_AreasObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AreasObjRelInsertInput _instance;

  final TRes Function(Input_AreasObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_AreasObjRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input_AreasInsertInput),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_AreasOnConflict?),
      }));

  CopyWith_Input_AreasInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_AreasInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_AreasOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AreasOnConflict.stub(_then(_instance))
        : CopyWith_Input_AreasOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_AreasObjRelInsertInput<TRes>
    implements CopyWith_Input_AreasObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AreasObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_AreasInsertInput? data,
    Input_AreasOnConflict? onConflict,
  }) =>
      _res;

  CopyWith_Input_AreasInsertInput<TRes> get data =>
      CopyWith_Input_AreasInsertInput.stub(_res);

  CopyWith_Input_AreasOnConflict<TRes> get onConflict =>
      CopyWith_Input_AreasOnConflict.stub(_res);
}

class Input_AreasOnConflict {
  factory Input_AreasOnConflict({
    required Enum_AreasConstraint constraint,
    List<Enum_AreasUpdateColumn>? updateColumns,
    Input_AreasBoolExp? where,
  }) =>
      Input_AreasOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_AreasOnConflict._(this._$data);

  factory Input_AreasOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_AreasConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_AreasUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_AreasBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_AreasOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AreasConstraint get constraint =>
      (_$data['constraint'] as Enum_AreasConstraint);

  List<Enum_AreasUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_AreasUpdateColumn>?);

  Input_AreasBoolExp? get where => (_$data['where'] as Input_AreasBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_AreasConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_AreasUpdateColumn>)
              .map((e) => toJson_Enum_AreasUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreasOnConflict<Input_AreasOnConflict> get copyWith =>
      CopyWith_Input_AreasOnConflict(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_AreasOnConflict<TRes> {
  factory CopyWith_Input_AreasOnConflict(
    Input_AreasOnConflict instance,
    TRes Function(Input_AreasOnConflict) then,
  ) = _CopyWithImpl_Input_AreasOnConflict;

  factory CopyWith_Input_AreasOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasOnConflict;

  TRes call({
    Enum_AreasConstraint? constraint,
    List<Enum_AreasUpdateColumn>? updateColumns,
    Input_AreasBoolExp? where,
  });
  CopyWith_Input_AreasBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AreasOnConflict<TRes>
    implements CopyWith_Input_AreasOnConflict<TRes> {
  _CopyWithImpl_Input_AreasOnConflict(
    this._instance,
    this._then,
  );

  final Input_AreasOnConflict _instance;

  final TRes Function(Input_AreasOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_AreasOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_AreasConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns': (updateColumns as List<Enum_AreasUpdateColumn>),
        if (where != _undefined) 'where': (where as Input_AreasBoolExp?),
      }));

  CopyWith_Input_AreasBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AreasBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_AreasOnConflict<TRes>
    implements CopyWith_Input_AreasOnConflict<TRes> {
  _CopyWithStubImpl_Input_AreasOnConflict(this._res);

  TRes _res;

  call({
    Enum_AreasConstraint? constraint,
    List<Enum_AreasUpdateColumn>? updateColumns,
    Input_AreasBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_AreasBoolExp<TRes> get where =>
      CopyWith_Input_AreasBoolExp.stub(_res);
}

class Input_AreasOrderBy {
  factory Input_AreasOrderBy({
    Input_AddressesAggregateOrderBy? addressesAggregate,
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? bounds,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Input_AreasStreetsAggregateOrderBy? streetsAggregate,
  }) =>
      Input_AreasOrderBy._({
        if (addressesAggregate != null)
          r'addressesAggregate': addressesAggregate,
        if (adminUsersAggregate != null)
          r'adminUsersAggregate': adminUsersAggregate,
        if (blurhash != null) r'blurhash': blurhash,
        if (bounds != null) r'bounds': bounds,
        if (color != null) r'color': color,
        if (editHistoryAggregate != null)
          r'editHistoryAggregate': editHistoryAggregate,
        if (id != null) r'id': id,
        if (lastEdit != null) r'lastEdit': lastEdit,
        if (name != null) r'name': name,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (streetsAggregate != null) r'streetsAggregate': streetsAggregate,
      });

  Input_AreasOrderBy._(this._$data);

  factory Input_AreasOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressesAggregate')) {
      final l$addressesAggregate = data['addressesAggregate'];
      result$data['addressesAggregate'] = l$addressesAggregate == null
          ? null
          : Input_AddressesAggregateOrderBy.fromJson(
              (l$addressesAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = data['adminUsersAggregate'];
      result$data['adminUsersAggregate'] = l$adminUsersAggregate == null
          ? null
          : Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
              (l$adminUsersAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] =
          l$bounds == null ? null : fromJson_Enum_OrderBy((l$bounds as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateOrderBy.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('streetsAggregate')) {
      final l$streetsAggregate = data['streetsAggregate'];
      result$data['streetsAggregate'] = l$streetsAggregate == null
          ? null
          : Input_AreasStreetsAggregateOrderBy.fromJson(
              (l$streetsAggregate as Map<String, dynamic>));
    }
    return Input_AreasOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesAggregateOrderBy? get addressesAggregate =>
      (_$data['addressesAggregate'] as Input_AddressesAggregateOrderBy?);

  Input_AuthUsersAdminOnAggregateOrderBy? get adminUsersAggregate =>
      (_$data['adminUsersAggregate']
          as Input_AuthUsersAdminOnAggregateOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get bounds => (_$data['bounds'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_AreasStreetsAggregateOrderBy? get streetsAggregate =>
      (_$data['streetsAggregate'] as Input_AreasStreetsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressesAggregate')) {
      final l$addressesAggregate = addressesAggregate;
      result$data['addressesAggregate'] = l$addressesAggregate?.toJson();
    }
    if (_$data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = adminUsersAggregate;
      result$data['adminUsersAggregate'] = l$adminUsersAggregate?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] =
          l$blurhash == null ? null : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] =
          l$bounds == null ? null : toJson_Enum_OrderBy(l$bounds);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
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
    if (_$data.containsKey('streetsAggregate')) {
      final l$streetsAggregate = streetsAggregate;
      result$data['streetsAggregate'] = l$streetsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreasOrderBy<Input_AreasOrderBy> get copyWith =>
      CopyWith_Input_AreasOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressesAggregate = addressesAggregate;
    final lOther$addressesAggregate = other.addressesAggregate;
    if (_$data.containsKey('addressesAggregate') !=
        other._$data.containsKey('addressesAggregate')) {
      return false;
    }
    if (l$addressesAggregate != lOther$addressesAggregate) {
      return false;
    }
    final l$adminUsersAggregate = adminUsersAggregate;
    final lOther$adminUsersAggregate = other.adminUsersAggregate;
    if (_$data.containsKey('adminUsersAggregate') !=
        other._$data.containsKey('adminUsersAggregate')) {
      return false;
    }
    if (l$adminUsersAggregate != lOther$adminUsersAggregate) {
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (_$data.containsKey('bounds') != other._$data.containsKey('bounds')) {
      return false;
    }
    if (l$bounds != lOther$bounds) {
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
    final l$streetsAggregate = streetsAggregate;
    final lOther$streetsAggregate = other.streetsAggregate;
    if (_$data.containsKey('streetsAggregate') !=
        other._$data.containsKey('streetsAggregate')) {
      return false;
    }
    if (l$streetsAggregate != lOther$streetsAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressesAggregate = addressesAggregate;
    final l$adminUsersAggregate = adminUsersAggregate;
    final l$blurhash = blurhash;
    final l$bounds = bounds;
    final l$color = color;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$streetsAggregate = streetsAggregate;
    return Object.hashAll([
      _$data.containsKey('addressesAggregate')
          ? l$addressesAggregate
          : const {},
      _$data.containsKey('adminUsersAggregate')
          ? l$adminUsersAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('streetsAggregate') ? l$streetsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasOrderBy<TRes> {
  factory CopyWith_Input_AreasOrderBy(
    Input_AreasOrderBy instance,
    TRes Function(Input_AreasOrderBy) then,
  ) = _CopyWithImpl_Input_AreasOrderBy;

  factory CopyWith_Input_AreasOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasOrderBy;

  TRes call({
    Input_AddressesAggregateOrderBy? addressesAggregate,
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? bounds,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Input_AreasStreetsAggregateOrderBy? streetsAggregate,
  });
  CopyWith_Input_AddressesAggregateOrderBy<TRes> get addressesAggregate;
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminUsersAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> get streetsAggregate;
}

class _CopyWithImpl_Input_AreasOrderBy<TRes>
    implements CopyWith_Input_AreasOrderBy<TRes> {
  _CopyWithImpl_Input_AreasOrderBy(
    this._instance,
    this._then,
  );

  final Input_AreasOrderBy _instance;

  final TRes Function(Input_AreasOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressesAggregate = _undefined,
    Object? adminUsersAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? streetsAggregate = _undefined,
  }) =>
      _then(Input_AreasOrderBy._({
        ..._instance._$data,
        if (addressesAggregate != _undefined)
          'addressesAggregate':
              (addressesAggregate as Input_AddressesAggregateOrderBy?),
        if (adminUsersAggregate != _undefined)
          'adminUsersAggregate':
              (adminUsersAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
        if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
        if (bounds != _undefined) 'bounds': (bounds as Enum_OrderBy?),
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (editHistoryAggregate != _undefined)
          'editHistoryAggregate': (editHistoryAggregate
              as Input_HistoryEditHistoryAggregateOrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (lastEdit != _undefined)
          'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
        if (streetsAggregate != _undefined)
          'streetsAggregate':
              (streetsAggregate as Input_AreasStreetsAggregateOrderBy?),
      }));

  CopyWith_Input_AddressesAggregateOrderBy<TRes> get addressesAggregate {
    final local$addressesAggregate = _instance.addressesAggregate;
    return local$addressesAggregate == null
        ? CopyWith_Input_AddressesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesAggregateOrderBy(
            local$addressesAggregate, (e) => call(addressesAggregate: e));
  }

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
      get adminUsersAggregate {
    final local$adminUsersAggregate = _instance.adminUsersAggregate;
    return local$adminUsersAggregate == null
        ? CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
            local$adminUsersAggregate, (e) => call(adminUsersAggregate: e));
  }

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> get streetsAggregate {
    final local$streetsAggregate = _instance.streetsAggregate;
    return local$streetsAggregate == null
        ? CopyWith_Input_AreasStreetsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsAggregateOrderBy(
            local$streetsAggregate, (e) => call(streetsAggregate: e));
  }
}

class _CopyWithStubImpl_Input_AreasOrderBy<TRes>
    implements CopyWith_Input_AreasOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasOrderBy(this._res);

  TRes _res;

  call({
    Input_AddressesAggregateOrderBy? addressesAggregate,
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? bounds,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Input_AreasStreetsAggregateOrderBy? streetsAggregate,
  }) =>
      _res;

  CopyWith_Input_AddressesAggregateOrderBy<TRes> get addressesAggregate =>
      CopyWith_Input_AddressesAggregateOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
      get adminUsersAggregate =>
          CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate =>
          CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> get streetsAggregate =>
      CopyWith_Input_AreasStreetsAggregateOrderBy.stub(_res);
}

class Input_AreasPkColumnsInput {
  factory Input_AreasPkColumnsInput({required UuidValue id}) =>
      Input_AreasPkColumnsInput._({
        r'id': id,
      });

  Input_AreasPkColumnsInput._(this._$data);

  factory Input_AreasPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_AreasPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_AreasPkColumnsInput<Input_AreasPkColumnsInput> get copyWith =>
      CopyWith_Input_AreasPkColumnsInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasPkColumnsInput ||
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

abstract class CopyWith_Input_AreasPkColumnsInput<TRes> {
  factory CopyWith_Input_AreasPkColumnsInput(
    Input_AreasPkColumnsInput instance,
    TRes Function(Input_AreasPkColumnsInput) then,
  ) = _CopyWithImpl_Input_AreasPkColumnsInput;

  factory CopyWith_Input_AreasPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_AreasPkColumnsInput<TRes>
    implements CopyWith_Input_AreasPkColumnsInput<TRes> {
  _CopyWithImpl_Input_AreasPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_AreasPkColumnsInput _instance;

  final TRes Function(Input_AreasPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input_AreasPkColumnsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Input_AreasPkColumnsInput<TRes>
    implements CopyWith_Input_AreasPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_AreasPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_AreasSetInput {
  factory Input_AreasSetInput({
    Map<String, dynamic>? bounds,
    int? color,
    String? name,
  }) =>
      Input_AreasSetInput._({
        if (bounds != null) r'bounds': bounds,
        if (color != null) r'color': color,
        if (name != null) r'name': name,
      });

  Input_AreasSetInput._(this._$data);

  factory Input_AreasSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = (l$bounds as Map<String, dynamic>?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_AreasSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Map<String, dynamic>? get bounds =>
      (_$data['bounds'] as Map<String, dynamic>?);

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds;
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

  CopyWith_Input_AreasSetInput<Input_AreasSetInput> get copyWith =>
      CopyWith_Input_AreasSetInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasSetInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (_$data.containsKey('bounds') != other._$data.containsKey('bounds')) {
      return false;
    }
    if (l$bounds != lOther$bounds) {
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
    final l$bounds = bounds;
    final l$color = color;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasSetInput<TRes> {
  factory CopyWith_Input_AreasSetInput(
    Input_AreasSetInput instance,
    TRes Function(Input_AreasSetInput) then,
  ) = _CopyWithImpl_Input_AreasSetInput;

  factory CopyWith_Input_AreasSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasSetInput;

  TRes call({
    Map<String, dynamic>? bounds,
    int? color,
    String? name,
  });
}

class _CopyWithImpl_Input_AreasSetInput<TRes>
    implements CopyWith_Input_AreasSetInput<TRes> {
  _CopyWithImpl_Input_AreasSetInput(
    this._instance,
    this._then,
  );

  final Input_AreasSetInput _instance;

  final TRes Function(Input_AreasSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input_AreasSetInput._({
        ..._instance._$data,
        if (bounds != _undefined) 'bounds': (bounds as Map<String, dynamic>?),
        if (color != _undefined) 'color': (color as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl_Input_AreasSetInput<TRes>
    implements CopyWith_Input_AreasSetInput<TRes> {
  _CopyWithStubImpl_Input_AreasSetInput(this._res);

  TRes _res;

  call({
    Map<String, dynamic>? bounds,
    int? color,
    String? name,
  }) =>
      _res;
}

class Input_AreasStreamCursorInput {
  factory Input_AreasStreamCursorInput({
    required Input_AreasStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_AreasStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_AreasStreamCursorInput._(this._$data);

  factory Input_AreasStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_AreasStreamCursorValueInput.fromJson(
        (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_AreasStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_AreasStreamCursorValueInput);

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

  CopyWith_Input_AreasStreamCursorInput<Input_AreasStreamCursorInput>
      get copyWith => CopyWith_Input_AreasStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreamCursorInput ||
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

abstract class CopyWith_Input_AreasStreamCursorInput<TRes> {
  factory CopyWith_Input_AreasStreamCursorInput(
    Input_AreasStreamCursorInput instance,
    TRes Function(Input_AreasStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AreasStreamCursorInput;

  factory CopyWith_Input_AreasStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreamCursorInput;

  TRes call({
    Input_AreasStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AreasStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_AreasStreamCursorInput<TRes>
    implements CopyWith_Input_AreasStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AreasStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_AreasStreamCursorInput _instance;

  final TRes Function(Input_AreasStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_AreasStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue': (initialValue as Input_AreasStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_AreasStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AreasStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreamCursorInput<TRes>
    implements CopyWith_Input_AreasStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AreasStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_AreasStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_AreasStreamCursorValueInput.stub(_res);
}

class Input_AreasStreamCursorValueInput {
  factory Input_AreasStreamCursorValueInput({
    String? blurhash,
    Map<String, dynamic>? bounds,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
  }) =>
      Input_AreasStreamCursorValueInput._({
        if (blurhash != null) r'blurhash': blurhash,
        if (bounds != null) r'bounds': bounds,
        if (color != null) r'color': color,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
      });

  Input_AreasStreamCursorValueInput._(this._$data);

  factory Input_AreasStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = (l$bounds as Map<String, dynamic>?);
    }
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
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt);
    }
    return Input_AreasStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get blurhash => (_$data['blurhash'] as String?);

  Map<String, dynamic>? get bounds =>
      (_$data['bounds'] as Map<String, dynamic>?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds;
    }
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
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    }
    return result$data;
  }

  CopyWith_Input_AreasStreamCursorValueInput<Input_AreasStreamCursorValueInput>
      get copyWith => CopyWith_Input_AreasStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (_$data.containsKey('bounds') != other._$data.containsKey('bounds')) {
      return false;
    }
    if (l$bounds != lOther$bounds) {
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
    final l$blurhash = blurhash;
    final l$bounds = bounds;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AreasStreamCursorValueInput(
    Input_AreasStreamCursorValueInput instance,
    TRes Function(Input_AreasStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AreasStreamCursorValueInput;

  factory CopyWith_Input_AreasStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreamCursorValueInput;

  TRes call({
    String? blurhash,
    Map<String, dynamic>? bounds,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl_Input_AreasStreamCursorValueInput<TRes>
    implements CopyWith_Input_AreasStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AreasStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AreasStreamCursorValueInput _instance;

  final TRes Function(Input_AreasStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) =>
      _then(Input_AreasStreamCursorValueInput._({
        ..._instance._$data,
        if (blurhash != _undefined) 'blurhash': (blurhash as String?),
        if (bounds != _undefined) 'bounds': (bounds as Map<String, dynamic>?),
        if (color != _undefined) 'color': (color as int?),
        if (id != _undefined) 'id': (id as UuidValue?),
        if (name != _undefined) 'name': (name as String?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      }));
}

class _CopyWithStubImpl_Input_AreasStreamCursorValueInput<TRes>
    implements CopyWith_Input_AreasStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AreasStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    Map<String, dynamic>? bounds,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
  }) =>
      _res;
}

class Input_AreasStreetsAggregateOrderBy {
  factory Input_AreasStreetsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_AreasStreetsMaxOrderBy? max,
    Input_AreasStreetsMinOrderBy? min,
  }) =>
      Input_AreasStreetsAggregateOrderBy._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input_AreasStreetsAggregateOrderBy._(this._$data);

  factory Input_AreasStreetsAggregateOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_AreasStreetsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_AreasStreetsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input_AreasStreetsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_AreasStreetsMaxOrderBy? get max =>
      (_$data['max'] as Input_AreasStreetsMaxOrderBy?);

  Input_AreasStreetsMinOrderBy? get min =>
      (_$data['min'] as Input_AreasStreetsMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_AreasStreetsAggregateOrderBy<
          Input_AreasStreetsAggregateOrderBy>
      get copyWith => CopyWith_Input_AreasStreetsAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsAggregateOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> {
  factory CopyWith_Input_AreasStreetsAggregateOrderBy(
    Input_AreasStreetsAggregateOrderBy instance,
    TRes Function(Input_AreasStreetsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_AreasStreetsAggregateOrderBy;

  factory CopyWith_Input_AreasStreetsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AreasStreetsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_AreasStreetsMaxOrderBy? max,
    Input_AreasStreetsMinOrderBy? min,
  });
  CopyWith_Input_AreasStreetsMaxOrderBy<TRes> get max;
  CopyWith_Input_AreasStreetsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_AreasStreetsAggregateOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_AreasStreetsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_AreasStreetsAggregateOrderBy _instance;

  final TRes Function(Input_AreasStreetsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input_AreasStreetsAggregateOrderBy._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined) 'max': (max as Input_AreasStreetsMaxOrderBy?),
        if (min != _undefined) 'min': (min as Input_AreasStreetsMinOrderBy?),
      }));

  CopyWith_Input_AreasStreetsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_AreasStreetsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_AreasStreetsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_AreasStreetsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsMinOrderBy(local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_AreasStreetsAggregateOrderBy<TRes>
    implements CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_AreasStreetsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_AreasStreetsMaxOrderBy? max,
    Input_AreasStreetsMinOrderBy? min,
  }) =>
      _res;

  CopyWith_Input_AreasStreetsMaxOrderBy<TRes> get max =>
      CopyWith_Input_AreasStreetsMaxOrderBy.stub(_res);

  CopyWith_Input_AreasStreetsMinOrderBy<TRes> get min =>
      CopyWith_Input_AreasStreetsMinOrderBy.stub(_res);
}

class Input_AreasStreetsArrRelInsertInput {
  factory Input_AreasStreetsArrRelInsertInput({
    required List<Input_AreasStreetsInsertInput> data,
    Input_AreasStreetsOnConflict? onConflict,
  }) =>
      Input_AreasStreetsArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_AreasStreetsArrRelInsertInput._(this._$data);

  factory Input_AreasStreetsArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) =>
            Input_AreasStreetsInsertInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AreasStreetsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_AreasStreetsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AreasStreetsInsertInput> get data =>
      (_$data['data'] as List<Input_AreasStreetsInsertInput>);

  Input_AreasStreetsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AreasStreetsOnConflict?);

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

  CopyWith_Input_AreasStreetsArrRelInsertInput<
          Input_AreasStreetsArrRelInsertInput>
      get copyWith => CopyWith_Input_AreasStreetsArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasStreetsArrRelInsertInput ||
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
