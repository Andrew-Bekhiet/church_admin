// Part 58 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_StreetsIncInput<TRes> {
  factory CopyWith_Input_StreetsIncInput(
    Input_StreetsIncInput instance,
    TRes Function(Input_StreetsIncInput) then,
  ) = _CopyWithImpl_Input_StreetsIncInput;

  factory CopyWith_Input_StreetsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_StreetsIncInput<TRes>
    implements CopyWith_Input_StreetsIncInput<TRes> {
  _CopyWithImpl_Input_StreetsIncInput(this._instance, this._then);

  final Input_StreetsIncInput _instance;

  final TRes Function(Input_StreetsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StreetsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_StreetsIncInput<TRes>
    implements CopyWith_Input_StreetsIncInput<TRes> {
  _CopyWithStubImpl_Input_StreetsIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_StreetsInsertInput {
  factory Input_StreetsInsertInput({
    Input_AddressesArrRelInsertInput? addresses,
    Input_AreasStreetsArrRelInsertInput? areas,
    int? color,
    Map<String, dynamic>? line,
    String? name,
  }) => Input_StreetsInsertInput._({
    if (addresses != null) r'addresses': addresses,
    if (areas != null) r'areas': areas,
    if (color != null) r'color': color,
    if (line != null) r'line': line,
    if (name != null) r'name': name,
  });

  Input_StreetsInsertInput._(this._$data);

  factory Input_StreetsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = l$addresses == null
          ? null
          : Input_AddressesArrRelInsertInput.fromJson(
              (l$addresses as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areas')) {
      final l$areas = data['areas'];
      result$data['areas'] = l$areas == null
          ? null
          : Input_AreasStreetsArrRelInsertInput.fromJson(
              (l$areas as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = (l$line as Map<String, dynamic>?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_StreetsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesArrRelInsertInput? get addresses =>
      (_$data['addresses'] as Input_AddressesArrRelInsertInput?);

  Input_AreasStreetsArrRelInsertInput? get areas =>
      (_$data['areas'] as Input_AreasStreetsArrRelInsertInput?);

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic>? get line => (_$data['line'] as Map<String, dynamic>?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.toJson();
    }
    if (_$data.containsKey('areas')) {
      final l$areas = areas;
      result$data['areas'] = l$areas?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_StreetsInsertInput<Input_StreetsInsertInput> get copyWith =>
      CopyWith_Input_StreetsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (_$data.containsKey('areas') != other._$data.containsKey('areas')) {
      return false;
    }
    if (l$areas != lOther$areas) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$addresses = addresses;
    final l$areas = areas;
    final l$color = color;
    final l$line = line;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('addresses') ? l$addresses : const {},
      _$data.containsKey('areas') ? l$areas : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_StreetsInsertInput<TRes> {
  factory CopyWith_Input_StreetsInsertInput(
    Input_StreetsInsertInput instance,
    TRes Function(Input_StreetsInsertInput) then,
  ) = _CopyWithImpl_Input_StreetsInsertInput;

  factory CopyWith_Input_StreetsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsInsertInput;

  TRes call({
    Input_AddressesArrRelInsertInput? addresses,
    Input_AreasStreetsArrRelInsertInput? areas,
    int? color,
    Map<String, dynamic>? line,
    String? name,
  });
  CopyWith_Input_AddressesArrRelInsertInput<TRes> get addresses;
  CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> get areas;
}

class _CopyWithImpl_Input_StreetsInsertInput<TRes>
    implements CopyWith_Input_StreetsInsertInput<TRes> {
  _CopyWithImpl_Input_StreetsInsertInput(this._instance, this._then);

  final Input_StreetsInsertInput _instance;

  final TRes Function(Input_StreetsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addresses = _undefined,
    Object? areas = _undefined,
    Object? color = _undefined,
    Object? line = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_StreetsInsertInput._({
      ..._instance._$data,
      if (addresses != _undefined)
        'addresses': (addresses as Input_AddressesArrRelInsertInput?),
      if (areas != _undefined)
        'areas': (areas as Input_AreasStreetsArrRelInsertInput?),
      if (color != _undefined) 'color': (color as int?),
      if (line != _undefined) 'line': (line as Map<String, dynamic>?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );

  CopyWith_Input_AddressesArrRelInsertInput<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AddressesArrRelInsertInput(
            local$addresses,
            (e) => call(addresses: e),
          );
  }

  CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Input_AreasStreetsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsArrRelInsertInput(
            local$areas,
            (e) => call(areas: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetsInsertInput<TRes>
    implements CopyWith_Input_StreetsInsertInput<TRes> {
  _CopyWithStubImpl_Input_StreetsInsertInput(this._res);

  TRes _res;

  call({
    Input_AddressesArrRelInsertInput? addresses,
    Input_AreasStreetsArrRelInsertInput? areas,
    int? color,
    Map<String, dynamic>? line,
    String? name,
  }) => _res;

  CopyWith_Input_AddressesArrRelInsertInput<TRes> get addresses =>
      CopyWith_Input_AddressesArrRelInsertInput.stub(_res);

  CopyWith_Input_AreasStreetsArrRelInsertInput<TRes> get areas =>
      CopyWith_Input_AreasStreetsArrRelInsertInput.stub(_res);
}

class Input_StreetsObjRelInsertInput {
  factory Input_StreetsObjRelInsertInput({
    required Input_StreetsInsertInput data,
    Input_StreetsOnConflict? onConflict,
  }) => Input_StreetsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_StreetsObjRelInsertInput._(this._$data);

  factory Input_StreetsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_StreetsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_StreetsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_StreetsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetsInsertInput get data =>
      (_$data['data'] as Input_StreetsInsertInput);

  Input_StreetsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_StreetsOnConflict?);

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

  CopyWith_Input_StreetsObjRelInsertInput<Input_StreetsObjRelInsertInput>
  get copyWith => CopyWith_Input_StreetsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsObjRelInsertInput ||
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

abstract class CopyWith_Input_StreetsObjRelInsertInput<TRes> {
  factory CopyWith_Input_StreetsObjRelInsertInput(
    Input_StreetsObjRelInsertInput instance,
    TRes Function(Input_StreetsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_StreetsObjRelInsertInput;

  factory CopyWith_Input_StreetsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsObjRelInsertInput;

  TRes call({
    Input_StreetsInsertInput? data,
    Input_StreetsOnConflict? onConflict,
  });
  CopyWith_Input_StreetsInsertInput<TRes> get data;
  CopyWith_Input_StreetsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_StreetsObjRelInsertInput<TRes>
    implements CopyWith_Input_StreetsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_StreetsObjRelInsertInput(this._instance, this._then);

  final Input_StreetsObjRelInsertInput _instance;

  final TRes Function(Input_StreetsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_StreetsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_StreetsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_StreetsOnConflict?),
        }),
      );

  CopyWith_Input_StreetsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_StreetsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_StreetsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_StreetsOnConflict.stub(_then(_instance))
        : CopyWith_Input_StreetsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetsObjRelInsertInput<TRes>
    implements CopyWith_Input_StreetsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_StreetsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_StreetsInsertInput? data, Input_StreetsOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_StreetsInsertInput<TRes> get data =>
      CopyWith_Input_StreetsInsertInput.stub(_res);

  CopyWith_Input_StreetsOnConflict<TRes> get onConflict =>
      CopyWith_Input_StreetsOnConflict.stub(_res);
}

class Input_StreetsOnConflict {
  factory Input_StreetsOnConflict({
    required Enum_StreetsConstraint constraint,
    List<Enum_StreetsUpdateColumn>? updateColumns,
    Input_StreetsBoolExp? where,
  }) => Input_StreetsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_StreetsOnConflict._(this._$data);

  factory Input_StreetsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_StreetsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_StreetsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_StreetsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_StreetsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_StreetsConstraint get constraint =>
      (_$data['constraint'] as Enum_StreetsConstraint);

  List<Enum_StreetsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_StreetsUpdateColumn>?);

  Input_StreetsBoolExp? get where => (_$data['where'] as Input_StreetsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_StreetsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_StreetsUpdateColumn>)
              .map((e) => toJson_Enum_StreetsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StreetsOnConflict<Input_StreetsOnConflict> get copyWith =>
      CopyWith_Input_StreetsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StreetsOnConflict<TRes> {
  factory CopyWith_Input_StreetsOnConflict(
    Input_StreetsOnConflict instance,
    TRes Function(Input_StreetsOnConflict) then,
  ) = _CopyWithImpl_Input_StreetsOnConflict;

  factory CopyWith_Input_StreetsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsOnConflict;

  TRes call({
    Enum_StreetsConstraint? constraint,
    List<Enum_StreetsUpdateColumn>? updateColumns,
    Input_StreetsBoolExp? where,
  });
  CopyWith_Input_StreetsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StreetsOnConflict<TRes>
    implements CopyWith_Input_StreetsOnConflict<TRes> {
  _CopyWithImpl_Input_StreetsOnConflict(this._instance, this._then);

  final Input_StreetsOnConflict _instance;

  final TRes Function(Input_StreetsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_StreetsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_StreetsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_StreetsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_StreetsBoolExp?),
    }),
  );

  CopyWith_Input_StreetsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_StreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StreetsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StreetsOnConflict<TRes>
    implements CopyWith_Input_StreetsOnConflict<TRes> {
  _CopyWithStubImpl_Input_StreetsOnConflict(this._res);

  TRes _res;

  call({
    Enum_StreetsConstraint? constraint,
    List<Enum_StreetsUpdateColumn>? updateColumns,
    Input_StreetsBoolExp? where,
  }) => _res;

  CopyWith_Input_StreetsBoolExp<TRes> get where =>
      CopyWith_Input_StreetsBoolExp.stub(_res);
}

class Input_StreetsOrderBy {
  factory Input_StreetsOrderBy({
    Input_AddressesAggregateOrderBy? addressesAggregate,
    Input_AreasStreetsAggregateOrderBy? areasAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? line,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? userCanEdit,
  }) => Input_StreetsOrderBy._({
    if (addressesAggregate != null) r'addressesAggregate': addressesAggregate,
    if (areasAggregate != null) r'areasAggregate': areasAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (line != null) r'line': line,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_StreetsOrderBy._(this._$data);

  factory Input_StreetsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressesAggregate')) {
      final l$addressesAggregate = data['addressesAggregate'];
      result$data['addressesAggregate'] = l$addressesAggregate == null
          ? null
          : Input_AddressesAggregateOrderBy.fromJson(
              (l$addressesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areasAggregate')) {
      final l$areasAggregate = data['areasAggregate'];
      result$data['areasAggregate'] = l$areasAggregate == null
          ? null
          : Input_AreasStreetsAggregateOrderBy.fromJson(
              (l$areasAggregate as Map<String, dynamic>),
            );
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
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_HistoryLatestVisitsOrderBy.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = l$line == null
          ? null
          : fromJson_Enum_OrderBy((l$line as String));
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
    return Input_StreetsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesAggregateOrderBy? get addressesAggregate =>
      (_$data['addressesAggregate'] as Input_AddressesAggregateOrderBy?);

  Input_AreasStreetsAggregateOrderBy? get areasAggregate =>
      (_$data['areasAggregate'] as Input_AreasStreetsAggregateOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Input_HistoryLatestVisitsOrderBy? get lastVisit =>
      (_$data['lastVisit'] as Input_HistoryLatestVisitsOrderBy?);

  Enum_OrderBy? get line => (_$data['line'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get userCanEdit => (_$data['userCanEdit'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressesAggregate')) {
      final l$addressesAggregate = addressesAggregate;
      result$data['addressesAggregate'] = l$addressesAggregate?.toJson();
    }
    if (_$data.containsKey('areasAggregate')) {
      final l$areasAggregate = areasAggregate;
      result$data['areasAggregate'] = l$areasAggregate?.toJson();
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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line == null ? null : toJson_Enum_OrderBy(l$line);
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

  CopyWith_Input_StreetsOrderBy<Input_StreetsOrderBy> get copyWith =>
      CopyWith_Input_StreetsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsOrderBy || runtimeType != other.runtimeType) {
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
    final l$areasAggregate = areasAggregate;
    final lOther$areasAggregate = other.areasAggregate;
    if (_$data.containsKey('areasAggregate') !=
        other._$data.containsKey('areasAggregate')) {
      return false;
    }
    if (l$areasAggregate != lOther$areasAggregate) {
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
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$addressesAggregate = addressesAggregate;
    final l$areasAggregate = areasAggregate;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$lastVisit = lastVisit;
    final l$line = line;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$userCanEdit = userCanEdit;
    return Object.hashAll([
      _$data.containsKey('addressesAggregate')
          ? l$addressesAggregate
          : const {},
      _$data.containsKey('areasAggregate') ? l$areasAggregate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}

abstract class CopyWith_Input_StreetsOrderBy<TRes> {
  factory CopyWith_Input_StreetsOrderBy(
    Input_StreetsOrderBy instance,
    TRes Function(Input_StreetsOrderBy) then,
  ) = _CopyWithImpl_Input_StreetsOrderBy;

  factory CopyWith_Input_StreetsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsOrderBy;

  TRes call({
    Input_AddressesAggregateOrderBy? addressesAggregate,
    Input_AreasStreetsAggregateOrderBy? areasAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? line,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? userCanEdit,
  });
  CopyWith_Input_AddressesAggregateOrderBy<TRes> get addressesAggregate;
  CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> get areasAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> get lastVisit;
}

class _CopyWithImpl_Input_StreetsOrderBy<TRes>
    implements CopyWith_Input_StreetsOrderBy<TRes> {
  _CopyWithImpl_Input_StreetsOrderBy(this._instance, this._then);

  final Input_StreetsOrderBy _instance;

  final TRes Function(Input_StreetsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressesAggregate = _undefined,
    Object? areasAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? lastVisit = _undefined,
    Object? line = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_StreetsOrderBy._({
      ..._instance._$data,
      if (addressesAggregate != _undefined)
        'addressesAggregate':
            (addressesAggregate as Input_AddressesAggregateOrderBy?),
      if (areasAggregate != _undefined)
        'areasAggregate':
            (areasAggregate as Input_AreasStreetsAggregateOrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_HistoryLatestVisitsOrderBy?),
      if (line != _undefined) 'line': (line as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AddressesAggregateOrderBy<TRes> get addressesAggregate {
    final local$addressesAggregate = _instance.addressesAggregate;
    return local$addressesAggregate == null
        ? CopyWith_Input_AddressesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesAggregateOrderBy(
            local$addressesAggregate,
            (e) => call(addressesAggregate: e),
          );
  }

  CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> get areasAggregate {
    final local$areasAggregate = _instance.areasAggregate;
    return local$areasAggregate == null
        ? CopyWith_Input_AreasStreetsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsAggregateOrderBy(
            local$areasAggregate,
            (e) => call(areasAggregate: e),
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

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_HistoryLatestVisitsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestVisitsOrderBy(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetsOrderBy<TRes>
    implements CopyWith_Input_StreetsOrderBy<TRes> {
  _CopyWithStubImpl_Input_StreetsOrderBy(this._res);

  TRes _res;

  call({
    Input_AddressesAggregateOrderBy? addressesAggregate,
    Input_AreasStreetsAggregateOrderBy? areasAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? line,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? userCanEdit,
  }) => _res;

  CopyWith_Input_AddressesAggregateOrderBy<TRes> get addressesAggregate =>
      CopyWith_Input_AddressesAggregateOrderBy.stub(_res);

  CopyWith_Input_AreasStreetsAggregateOrderBy<TRes> get areasAggregate =>
      CopyWith_Input_AreasStreetsAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> get lastVisit =>
      CopyWith_Input_HistoryLatestVisitsOrderBy.stub(_res);
}

class Input_StreetsPkColumnsInput {
  factory Input_StreetsPkColumnsInput({required UuidValue id}) =>
      Input_StreetsPkColumnsInput._({r'id': id});

  Input_StreetsPkColumnsInput._(this._$data);

  factory Input_StreetsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_StreetsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_StreetsPkColumnsInput<Input_StreetsPkColumnsInput>
  get copyWith => CopyWith_Input_StreetsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsPkColumnsInput ||
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

abstract class CopyWith_Input_StreetsPkColumnsInput<TRes> {
  factory CopyWith_Input_StreetsPkColumnsInput(
    Input_StreetsPkColumnsInput instance,
    TRes Function(Input_StreetsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_StreetsPkColumnsInput;

  factory CopyWith_Input_StreetsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_StreetsPkColumnsInput<TRes>
    implements CopyWith_Input_StreetsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_StreetsPkColumnsInput(this._instance, this._then);

  final Input_StreetsPkColumnsInput _instance;

  final TRes Function(Input_StreetsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_StreetsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_StreetsPkColumnsInput<TRes>
    implements CopyWith_Input_StreetsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_StreetsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_StreetsSetInput {
  factory Input_StreetsSetInput({
    int? color,
    Map<String, dynamic>? line,
    String? name,
  }) => Input_StreetsSetInput._({
    if (color != null) r'color': color,
    if (line != null) r'line': line,
    if (name != null) r'name': name,
  });

  Input_StreetsSetInput._(this._$data);

  factory Input_StreetsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = (l$line as Map<String, dynamic>?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_StreetsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic>? get line => (_$data['line'] as Map<String, dynamic>?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_StreetsSetInput<Input_StreetsSetInput> get copyWith =>
      CopyWith_Input_StreetsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsSetInput || runtimeType != other.runtimeType) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$line = line;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_StreetsSetInput<TRes> {
  factory CopyWith_Input_StreetsSetInput(
    Input_StreetsSetInput instance,
    TRes Function(Input_StreetsSetInput) then,
  ) = _CopyWithImpl_Input_StreetsSetInput;

  factory CopyWith_Input_StreetsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsSetInput;

  TRes call({int? color, Map<String, dynamic>? line, String? name});
}

class _CopyWithImpl_Input_StreetsSetInput<TRes>
    implements CopyWith_Input_StreetsSetInput<TRes> {
  _CopyWithImpl_Input_StreetsSetInput(this._instance, this._then);

  final Input_StreetsSetInput _instance;

  final TRes Function(Input_StreetsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? line = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_StreetsSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (line != _undefined) 'line': (line as Map<String, dynamic>?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_StreetsSetInput<TRes>
    implements CopyWith_Input_StreetsSetInput<TRes> {
  _CopyWithStubImpl_Input_StreetsSetInput(this._res);

  TRes _res;

  call({int? color, Map<String, dynamic>? line, String? name}) => _res;
}

class Input_StreetsStreamCursorInput {
  factory Input_StreetsStreamCursorInput({
    required Input_StreetsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_StreetsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_StreetsStreamCursorInput._(this._$data);

  factory Input_StreetsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_StreetsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_StreetsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_StreetsStreamCursorValueInput);

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

  CopyWith_Input_StreetsStreamCursorInput<Input_StreetsStreamCursorInput>
  get copyWith => CopyWith_Input_StreetsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsStreamCursorInput ||
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

abstract class CopyWith_Input_StreetsStreamCursorInput<TRes> {
  factory CopyWith_Input_StreetsStreamCursorInput(
    Input_StreetsStreamCursorInput instance,
    TRes Function(Input_StreetsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_StreetsStreamCursorInput;

  factory CopyWith_Input_StreetsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsStreamCursorInput;

  TRes call({
    Input_StreetsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_StreetsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_StreetsStreamCursorInput<TRes>
    implements CopyWith_Input_StreetsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_StreetsStreamCursorInput(this._instance, this._then);

  final Input_StreetsStreamCursorInput _instance;

  final TRes Function(Input_StreetsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_StreetsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_StreetsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_StreetsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_StreetsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_StreetsStreamCursorInput<TRes>
    implements CopyWith_Input_StreetsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_StreetsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_StreetsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_StreetsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_StreetsStreamCursorValueInput.stub(_res);
}

class Input_StreetsStreamCursorValueInput {
  factory Input_StreetsStreamCursorValueInput({
    String? blurhash,
    int? color,
    UuidValue? id,
    Map<String, dynamic>? line,
    String? name,
    DateTime? photoUpdatedAt,
  }) => Input_StreetsStreamCursorValueInput._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (line != null) r'line': line,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
  });

  Input_StreetsStreamCursorValueInput._(this._$data);

  factory Input_StreetsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = (l$line as Map<String, dynamic>?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt);
    }
    return Input_StreetsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  Map<String, dynamic>? get line => (_$data['line'] as Map<String, dynamic>?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
    }
    return result$data;
  }

  CopyWith_Input_StreetsStreamCursorValueInput<
    Input_StreetsStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_StreetsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsStreamCursorValueInput ||
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
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$color = color;
    final l$id = id;
    final l$line = line;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_StreetsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_StreetsStreamCursorValueInput(
    Input_StreetsStreamCursorValueInput instance,
    TRes Function(Input_StreetsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_StreetsStreamCursorValueInput;

  factory CopyWith_Input_StreetsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsStreamCursorValueInput;

  TRes call({
    String? blurhash,
    int? color,
    UuidValue? id,
    Map<String, dynamic>? line,
    String? name,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl_Input_StreetsStreamCursorValueInput<TRes>
    implements CopyWith_Input_StreetsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_StreetsStreamCursorValueInput(this._instance, this._then);

  final Input_StreetsStreamCursorValueInput _instance;

  final TRes Function(Input_StreetsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? line = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) => _then(
    Input_StreetsStreamCursorValueInput._({
      ..._instance._$data,
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (color != _undefined) 'color': (color as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (line != _undefined) 'line': (line as Map<String, dynamic>?),
      if (name != _undefined) 'name': (name as String?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_StreetsStreamCursorValueInput<TRes>
    implements CopyWith_Input_StreetsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_StreetsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    int? color,
    UuidValue? id,
    Map<String, dynamic>? line,
    String? name,
    DateTime? photoUpdatedAt,
  }) => _res;
}

class Input_StreetsUpdates {
  factory Input_StreetsUpdates({
    Input_StreetsIncInput? $_inc,
    Input_StreetsSetInput? $_set,
    required Input_StreetsBoolExp where,
  }) => Input_StreetsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_StreetsUpdates._(this._$data);

  factory Input_StreetsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_StreetsIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_StreetsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_StreetsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_StreetsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetsIncInput? get $_inc =>
      (_$data['_inc'] as Input_StreetsIncInput?);

  Input_StreetsSetInput? get $_set =>
      (_$data['_set'] as Input_StreetsSetInput?);

  Input_StreetsBoolExp get where => (_$data['where'] as Input_StreetsBoolExp);

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

  CopyWith_Input_StreetsUpdates<Input_StreetsUpdates> get copyWith =>
      CopyWith_Input_StreetsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StreetsUpdates<TRes> {
  factory CopyWith_Input_StreetsUpdates(
    Input_StreetsUpdates instance,
    TRes Function(Input_StreetsUpdates) then,
  ) = _CopyWithImpl_Input_StreetsUpdates;

  factory CopyWith_Input_StreetsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsUpdates;

  TRes call({
    Input_StreetsIncInput? $_inc,
    Input_StreetsSetInput? $_set,
    Input_StreetsBoolExp? where,
  });
  CopyWith_Input_StreetsIncInput<TRes> get $_inc;
  CopyWith_Input_StreetsSetInput<TRes> get $_set;
  CopyWith_Input_StreetsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StreetsUpdates<TRes>
    implements CopyWith_Input_StreetsUpdates<TRes> {
  _CopyWithImpl_Input_StreetsUpdates(this._instance, this._then);

  final Input_StreetsUpdates _instance;

  final TRes Function(Input_StreetsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_StreetsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_StreetsIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_StreetsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_StreetsBoolExp),
    }),
  );

  CopyWith_Input_StreetsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_StreetsIncInput.stub(_then(_instance))
        : CopyWith_Input_StreetsIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_StreetsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_StreetsSetInput.stub(_then(_instance))
        : CopyWith_Input_StreetsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_StreetsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_StreetsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StreetsUpdates<TRes>
    implements CopyWith_Input_StreetsUpdates<TRes> {
  _CopyWithStubImpl_Input_StreetsUpdates(this._res);

  TRes _res;

  call({
    Input_StreetsIncInput? $_inc,
    Input_StreetsSetInput? $_set,
    Input_StreetsBoolExp? where,
  }) => _res;

  CopyWith_Input_StreetsIncInput<TRes> get $_inc =>
      CopyWith_Input_StreetsIncInput.stub(_res);

  CopyWith_Input_StreetsSetInput<TRes> get $_set =>
      CopyWith_Input_StreetsSetInput.stub(_res);

  CopyWith_Input_StreetsBoolExp<TRes> get where =>
      CopyWith_Input_StreetsBoolExp.stub(_res);
}

class Input_StringComparisonExp {
  factory Input_StringComparisonExp({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_isNull,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  }) => Input_StringComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_ilike != null) r'_ilike': $_ilike,
    if ($_in != null) r'_in': $_in,
    if ($_iregex != null) r'_iregex': $_iregex,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_like != null) r'_like': $_like,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nilike != null) r'_nilike': $_nilike,
    if ($_nin != null) r'_nin': $_nin,
    if ($_niregex != null) r'_niregex': $_niregex,
    if ($_nlike != null) r'_nlike': $_nlike,
    if ($_nregex != null) r'_nregex': $_nregex,
    if ($_nsimilar != null) r'_nsimilar': $_nsimilar,
    if ($_regex != null) r'_regex': $_regex,
    if ($_similar != null) r'_similar': $_similar,
  });

  Input_StringComparisonExp._(this._$data);

  factory Input_StringComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as String?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as String?);
    }
    if (data.containsKey('_ilike')) {
      final l$$_ilike = data['_ilike'];
      result$data['_ilike'] = (l$$_ilike as String?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_iregex')) {
      final l$$_iregex = data['_iregex'];
      result$data['_iregex'] = (l$$_iregex as String?);
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_like')) {
      final l$$_like = data['_like'];
      result$data['_like'] = (l$$_like as String?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as String?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as String?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as String?);
    }
    if (data.containsKey('_nilike')) {
      final l$$_nilike = data['_nilike'];
      result$data['_nilike'] = (l$$_nilike as String?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_niregex')) {
      final l$$_niregex = data['_niregex'];
      result$data['_niregex'] = (l$$_niregex as String?);
    }
    if (data.containsKey('_nlike')) {
      final l$$_nlike = data['_nlike'];
      result$data['_nlike'] = (l$$_nlike as String?);
    }
    if (data.containsKey('_nregex')) {
      final l$$_nregex = data['_nregex'];
      result$data['_nregex'] = (l$$_nregex as String?);
    }
    if (data.containsKey('_nsimilar')) {
      final l$$_nsimilar = data['_nsimilar'];
      result$data['_nsimilar'] = (l$$_nsimilar as String?);
    }
    if (data.containsKey('_regex')) {
      final l$$_regex = data['_regex'];
      result$data['_regex'] = (l$$_regex as String?);
    }
    if (data.containsKey('_similar')) {
      final l$$_similar = data['_similar'];
      result$data['_similar'] = (l$$_similar as String?);
    }
    return Input_StringComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_eq => (_$data['_eq'] as String?);

  String? get $_gt => (_$data['_gt'] as String?);

  String? get $_gte => (_$data['_gte'] as String?);

  String? get $_ilike => (_$data['_ilike'] as String?);

  List<String>? get $_in => (_$data['_in'] as List<String>?);

  String? get $_iregex => (_$data['_iregex'] as String?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  String? get $_like => (_$data['_like'] as String?);

  String? get $_lt => (_$data['_lt'] as String?);

  String? get $_lte => (_$data['_lte'] as String?);

  String? get $_neq => (_$data['_neq'] as String?);

  String? get $_nilike => (_$data['_nilike'] as String?);

  List<String>? get $_nin => (_$data['_nin'] as List<String>?);

  String? get $_niregex => (_$data['_niregex'] as String?);

  String? get $_nlike => (_$data['_nlike'] as String?);

  String? get $_nregex => (_$data['_nregex'] as String?);

  String? get $_nsimilar => (_$data['_nsimilar'] as String?);

  String? get $_regex => (_$data['_regex'] as String?);

  String? get $_similar => (_$data['_similar'] as String?);

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
    if (_$data.containsKey('_ilike')) {
      final l$$_ilike = $_ilike;
      result$data['_ilike'] = l$$_ilike;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_iregex')) {
      final l$$_iregex = $_iregex;
      result$data['_iregex'] = l$$_iregex;
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_like')) {
      final l$$_like = $_like;
      result$data['_like'] = l$$_like;
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
    if (_$data.containsKey('_nilike')) {
      final l$$_nilike = $_nilike;
      result$data['_nilike'] = l$$_nilike;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('_niregex')) {
      final l$$_niregex = $_niregex;
      result$data['_niregex'] = l$$_niregex;
    }
    if (_$data.containsKey('_nlike')) {
      final l$$_nlike = $_nlike;
      result$data['_nlike'] = l$$_nlike;
    }
    if (_$data.containsKey('_nregex')) {
      final l$$_nregex = $_nregex;
      result$data['_nregex'] = l$$_nregex;
    }
    if (_$data.containsKey('_nsimilar')) {
      final l$$_nsimilar = $_nsimilar;
      result$data['_nsimilar'] = l$$_nsimilar;
    }
    if (_$data.containsKey('_regex')) {
      final l$$_regex = $_regex;
      result$data['_regex'] = l$$_regex;
    }
    if (_$data.containsKey('_similar')) {
      final l$$_similar = $_similar;
      result$data['_similar'] = l$$_similar;
    }
    return result$data;
  }

  CopyWith_Input_StringComparisonExp<Input_StringComparisonExp> get copyWith =>
      CopyWith_Input_StringComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StringComparisonExp ||
        runtimeType != other.runtimeType) {
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
    final l$$_ilike = $_ilike;
    final lOther$$_ilike = other.$_ilike;
    if (_$data.containsKey('_ilike') != other._$data.containsKey('_ilike')) {
      return false;
    }
    if (l$$_ilike != lOther$$_ilike) {
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
    final l$$_iregex = $_iregex;
    final lOther$$_iregex = other.$_iregex;
    if (_$data.containsKey('_iregex') != other._$data.containsKey('_iregex')) {
      return false;
    }
    if (l$$_iregex != lOther$$_iregex) {
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
    final l$$_like = $_like;
    final lOther$$_like = other.$_like;
    if (_$data.containsKey('_like') != other._$data.containsKey('_like')) {
      return false;
    }
    if (l$$_like != lOther$$_like) {
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
    final l$$_nilike = $_nilike;
    final lOther$$_nilike = other.$_nilike;
    if (_$data.containsKey('_nilike') != other._$data.containsKey('_nilike')) {
      return false;
    }
    if (l$$_nilike != lOther$$_nilike) {
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
    final l$$_niregex = $_niregex;
    final lOther$$_niregex = other.$_niregex;
    if (_$data.containsKey('_niregex') !=
        other._$data.containsKey('_niregex')) {
      return false;
    }
    if (l$$_niregex != lOther$$_niregex) {
      return false;
    }
    final l$$_nlike = $_nlike;
    final lOther$$_nlike = other.$_nlike;
    if (_$data.containsKey('_nlike') != other._$data.containsKey('_nlike')) {
      return false;
    }
    if (l$$_nlike != lOther$$_nlike) {
      return false;
    }
    final l$$_nregex = $_nregex;
    final lOther$$_nregex = other.$_nregex;
    if (_$data.containsKey('_nregex') != other._$data.containsKey('_nregex')) {
      return false;
    }
    if (l$$_nregex != lOther$$_nregex) {
      return false;
    }
    final l$$_nsimilar = $_nsimilar;
    final lOther$$_nsimilar = other.$_nsimilar;
    if (_$data.containsKey('_nsimilar') !=
        other._$data.containsKey('_nsimilar')) {
      return false;
    }
    if (l$$_nsimilar != lOther$$_nsimilar) {
      return false;
    }
    final l$$_regex = $_regex;
    final lOther$$_regex = other.$_regex;
    if (_$data.containsKey('_regex') != other._$data.containsKey('_regex')) {
      return false;
    }
    if (l$$_regex != lOther$$_regex) {
      return false;
    }
    final l$$_similar = $_similar;
    final lOther$$_similar = other.$_similar;
    if (_$data.containsKey('_similar') !=
        other._$data.containsKey('_similar')) {
      return false;
    }
    if (l$$_similar != lOther$$_similar) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_ilike = $_ilike;
    final l$$_in = $_in;
    final l$$_iregex = $_iregex;
    final l$$_isNull = $_isNull;
    final l$$_like = $_like;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nilike = $_nilike;
    final l$$_nin = $_nin;
    final l$$_niregex = $_niregex;
    final l$$_nlike = $_nlike;
    final l$$_nregex = $_nregex;
    final l$$_nsimilar = $_nsimilar;
    final l$$_regex = $_regex;
    final l$$_similar = $_similar;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_ilike') ? l$$_ilike : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_iregex') ? l$$_iregex : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_like') ? l$$_like : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nilike') ? l$$_nilike : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
      _$data.containsKey('_niregex') ? l$$_niregex : const {},
      _$data.containsKey('_nlike') ? l$$_nlike : const {},
      _$data.containsKey('_nregex') ? l$$_nregex : const {},
      _$data.containsKey('_nsimilar') ? l$$_nsimilar : const {},
      _$data.containsKey('_regex') ? l$$_regex : const {},
      _$data.containsKey('_similar') ? l$$_similar : const {},
    ]);
  }
}
