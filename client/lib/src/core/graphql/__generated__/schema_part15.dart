// Part 15 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_DistrictsStreamCursorValueInput(
    Input_DistrictsStreamCursorValueInput instance,
    TRes Function(Input_DistrictsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_DistrictsStreamCursorValueInput;

  factory CopyWith_Input_DistrictsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput;

  TRes call({
    UuidValue? id,
    String? name,
  });
}

class _CopyWithImpl_Input_DistrictsStreamCursorValueInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_DistrictsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_DistrictsStreamCursorValueInput _instance;

  final TRes Function(Input_DistrictsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input_DistrictsStreamCursorValueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as UuidValue?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
  }) =>
      _res;
}

class Input_DistrictsUpdates {
  factory Input_DistrictsUpdates({
    Input_DistrictsSetInput? $_set,
    required Input_DistrictsBoolExp where,
  }) =>
      Input_DistrictsUpdates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_DistrictsUpdates._(this._$data);

  factory Input_DistrictsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_DistrictsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input_DistrictsBoolExp.fromJson((l$where as Map<String, dynamic>));
    return Input_DistrictsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsSetInput? get $_set =>
      (_$data['_set'] as Input_DistrictsSetInput?);

  Input_DistrictsBoolExp get where =>
      (_$data['where'] as Input_DistrictsBoolExp);

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

  CopyWith_Input_DistrictsUpdates<Input_DistrictsUpdates> get copyWith =>
      CopyWith_Input_DistrictsUpdates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictsUpdates<TRes> {
  factory CopyWith_Input_DistrictsUpdates(
    Input_DistrictsUpdates instance,
    TRes Function(Input_DistrictsUpdates) then,
  ) = _CopyWithImpl_Input_DistrictsUpdates;

  factory CopyWith_Input_DistrictsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsUpdates;

  TRes call({
    Input_DistrictsSetInput? $_set,
    Input_DistrictsBoolExp? where,
  });
  CopyWith_Input_DistrictsSetInput<TRes> get $_set;
  CopyWith_Input_DistrictsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DistrictsUpdates<TRes>
    implements CopyWith_Input_DistrictsUpdates<TRes> {
  _CopyWithImpl_Input_DistrictsUpdates(
    this._instance,
    this._then,
  );

  final Input_DistrictsUpdates _instance;

  final TRes Function(Input_DistrictsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_DistrictsUpdates._({
        ..._instance._$data,
        if ($_set != _undefined) '_set': ($_set as Input_DistrictsSetInput?),
        if (where != _undefined && where != null)
          'where': (where as Input_DistrictsBoolExp),
      }));

  CopyWith_Input_DistrictsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_DistrictsSetInput.stub(_then(_instance))
        : CopyWith_Input_DistrictsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_DistrictsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_DistrictsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_DistrictsUpdates<TRes>
    implements CopyWith_Input_DistrictsUpdates<TRes> {
  _CopyWithStubImpl_Input_DistrictsUpdates(this._res);

  TRes _res;

  call({
    Input_DistrictsSetInput? $_set,
    Input_DistrictsBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_DistrictsSetInput<TRes> get $_set =>
      CopyWith_Input_DistrictsSetInput.stub(_res);

  CopyWith_Input_DistrictsBoolExp<TRes> get where =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);
}

class Input_FamiliesBoolExp {
  factory Input_FamiliesBoolExp({
    List<Input_FamiliesBoolExp>? $_and,
    Input_FamiliesBoolExp? $_not,
    List<Input_FamiliesBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_StringComparisonExp? addressText,
    Input_StringComparisonExp? blurhash,
    Input_FamiliesFamiliesBoolExp? children,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_GeographyComparisonExp? geolocation,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_StringComparisonExp? notes,
    Input_FamiliesFamiliesBoolExp? parents,
    Input_PersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StoresBoolExp? stores,
  }) =>
      Input_FamiliesBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (address != null) r'address': address,
        if (addressText != null) r'addressText': addressText,
        if (blurhash != null) r'blurhash': blurhash,
        if (children != null) r'children': children,
        if (color != null) r'color': color,
        if (editHistory != null) r'editHistory': editHistory,
        if (editHistoryAggregate != null)
          r'editHistoryAggregate': editHistoryAggregate,
        if (geolocation != null) r'geolocation': geolocation,
        if (id != null) r'id': id,
        if (lastEdit != null) r'lastEdit': lastEdit,
        if (name != null) r'name': name,
        if (notes != null) r'notes': notes,
        if (parents != null) r'parents': parents,
        if (persons != null) r'persons': persons,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (stores != null) r'stores': stores,
      });

  Input_FamiliesBoolExp._(this._$data);

  factory Input_FamiliesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input_FamiliesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input_FamiliesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesBoolExp.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = l$addressText == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$addressText as Map<String, dynamic>));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>));
    }
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = l$children == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$children as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>));
    }
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = l$editHistory == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistory as Map<String, dynamic>));
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = l$geolocation == null
          ? null
          : Input_GeographyComparisonExp.fromJson(
              (l$geolocation as Map<String, dynamic>));
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
              (l$lastEdit as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$notes as Map<String, dynamic>));
    }
    if (data.containsKey('parents')) {
      final l$parents = data['parents'];
      result$data['parents'] = l$parents == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$parents as Map<String, dynamic>));
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>));
    }
    if (data.containsKey('stores')) {
      final l$stores = data['stores'];
      result$data['stores'] = l$stores == null
          ? null
          : Input_StoresBoolExp.fromJson((l$stores as Map<String, dynamic>));
    }
    return Input_FamiliesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FamiliesBoolExp>?);

  Input_FamiliesBoolExp? get $_not =>
      (_$data['_not'] as Input_FamiliesBoolExp?);

  List<Input_FamiliesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FamiliesBoolExp>?);

  Input_AddressesBoolExp? get address =>
      (_$data['address'] as Input_AddressesBoolExp?);

  Input_StringComparisonExp? get addressText =>
      (_$data['addressText'] as Input_StringComparisonExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_FamiliesFamiliesBoolExp? get children =>
      (_$data['children'] as Input_FamiliesFamiliesBoolExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_GeographyComparisonExp? get geolocation =>
      (_$data['geolocation'] as Input_GeographyComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_StringComparisonExp? get notes =>
      (_$data['notes'] as Input_StringComparisonExp?);

  Input_FamiliesFamiliesBoolExp? get parents =>
      (_$data['parents'] as Input_FamiliesFamiliesBoolExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_StoresBoolExp? get stores => (_$data['stores'] as Input_StoresBoolExp?);

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
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] = l$addressText?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('parents')) {
      final l$parents = parents;
      result$data['parents'] = l$parents?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('stores')) {
      final l$stores = stores;
      result$data['stores'] = l$stores?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesBoolExp<Input_FamiliesBoolExp> get copyWith =>
      CopyWith_Input_FamiliesBoolExp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesBoolExp || runtimeType != other.runtimeType) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (_$data.containsKey('children') !=
        other._$data.containsKey('children')) {
      return false;
    }
    if (l$children != lOther$children) {
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (_$data.containsKey('parents') != other._$data.containsKey('parents')) {
      return false;
    }
    if (l$parents != lOther$parents) {
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
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (_$data.containsKey('stores') != other._$data.containsKey('stores')) {
      return false;
    }
    if (l$stores != lOther$stores) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$address = address;
    final l$addressText = addressText;
    final l$blurhash = blurhash;
    final l$children = children;
    final l$color = color;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$geolocation = geolocation;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$notes = notes;
    final l$parents = parents;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$stores = stores;
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
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('children') ? l$children : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('parents') ? l$parents : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('stores') ? l$stores : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesBoolExp<TRes> {
  factory CopyWith_Input_FamiliesBoolExp(
    Input_FamiliesBoolExp instance,
    TRes Function(Input_FamiliesBoolExp) then,
  ) = _CopyWithImpl_Input_FamiliesBoolExp;

  factory CopyWith_Input_FamiliesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesBoolExp;

  TRes call({
    List<Input_FamiliesBoolExp>? $_and,
    Input_FamiliesBoolExp? $_not,
    List<Input_FamiliesBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_StringComparisonExp? addressText,
    Input_StringComparisonExp? blurhash,
    Input_FamiliesFamiliesBoolExp? children,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_GeographyComparisonExp? geolocation,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_StringComparisonExp? notes,
    Input_FamiliesFamiliesBoolExp? parents,
    Input_PersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StoresBoolExp? stores,
  });
  TRes $_and(
      Iterable<Input_FamiliesBoolExp>? Function(
              Iterable<CopyWith_Input_FamiliesBoolExp<Input_FamiliesBoolExp>>?)
          _fn);
  CopyWith_Input_FamiliesBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_FamiliesBoolExp>? Function(
              Iterable<CopyWith_Input_FamiliesBoolExp<Input_FamiliesBoolExp>>?)
          _fn);
  CopyWith_Input_AddressesBoolExp<TRes> get address;
  CopyWith_Input_StringComparisonExp<TRes> get addressText;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get children;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate;
  CopyWith_Input_GeographyComparisonExp<TRes> get geolocation;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_StringComparisonExp<TRes> get notes;
  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get parents;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_StoresBoolExp<TRes> get stores;
}

class _CopyWithImpl_Input_FamiliesBoolExp<TRes>
    implements CopyWith_Input_FamiliesBoolExp<TRes> {
  _CopyWithImpl_Input_FamiliesBoolExp(
    this._instance,
    this._then,
  );

  final Input_FamiliesBoolExp _instance;

  final TRes Function(Input_FamiliesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? address = _undefined,
    Object? addressText = _undefined,
    Object? blurhash = _undefined,
    Object? children = _undefined,
    Object? color = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? geolocation = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? parents = _undefined,
    Object? persons = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? stores = _undefined,
  }) =>
      _then(Input_FamiliesBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_FamiliesBoolExp>?),
        if ($_not != _undefined) '_not': ($_not as Input_FamiliesBoolExp?),
        if ($_or != _undefined) '_or': ($_or as List<Input_FamiliesBoolExp>?),
        if (address != _undefined)
          'address': (address as Input_AddressesBoolExp?),
        if (addressText != _undefined)
          'addressText': (addressText as Input_StringComparisonExp?),
        if (blurhash != _undefined)
          'blurhash': (blurhash as Input_StringComparisonExp?),
        if (children != _undefined)
          'children': (children as Input_FamiliesFamiliesBoolExp?),
        if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
        if (editHistory != _undefined)
          'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
        if (editHistoryAggregate != _undefined)
          'editHistoryAggregate': (editHistoryAggregate
              as Input_HistoryEditHistoryAggregateBoolExp?),
        if (geolocation != _undefined)
          'geolocation': (geolocation as Input_GeographyComparisonExp?),
        if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
        if (lastEdit != _undefined)
          'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
        if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
        if (notes != _undefined) 'notes': (notes as Input_StringComparisonExp?),
        if (parents != _undefined)
          'parents': (parents as Input_FamiliesFamiliesBoolExp?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsBoolExp?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
        if (stores != _undefined) 'stores': (stores as Input_StoresBoolExp?),
      }));

  TRes $_and(
          Iterable<Input_FamiliesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_FamiliesBoolExp<Input_FamiliesBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and?.map((e) => CopyWith_Input_FamiliesBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_FamiliesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_FamiliesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_FamiliesBoolExp<Input_FamiliesBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith_Input_FamiliesBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_AddressesBoolExp<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(
            local$address, (e) => call(address: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get addressText {
    final local$addressText = _instance.addressText;
    return local$addressText == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$addressText, (e) => call(addressText: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash, (e) => call(blurhash: e));
  }

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get children {
    final local$children = _instance.children;
    return local$children == null
        ? CopyWith_Input_FamiliesFamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesBoolExp(
            local$children, (e) => call(children: e));
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

  CopyWith_Input_GeographyComparisonExp<TRes> get geolocation {
    final local$geolocation = _instance.geolocation;
    return local$geolocation == null
        ? CopyWith_Input_GeographyComparisonExp.stub(_then(_instance))
        : CopyWith_Input_GeographyComparisonExp(
            local$geolocation, (e) => call(geolocation: e));
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

  CopyWith_Input_StringComparisonExp<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$notes, (e) => call(notes: e));
  }

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get parents {
    final local$parents = _instance.parents;
    return local$parents == null
        ? CopyWith_Input_FamiliesFamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesBoolExp(
            local$parents, (e) => call(parents: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$photoUpdatedAt, (e) => call(photoUpdatedAt: e));
  }

  CopyWith_Input_StoresBoolExp<TRes> get stores {
    final local$stores = _instance.stores;
    return local$stores == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$stores, (e) => call(stores: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesBoolExp<TRes>
    implements CopyWith_Input_FamiliesBoolExp<TRes> {
  _CopyWithStubImpl_Input_FamiliesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_FamiliesBoolExp>? $_and,
    Input_FamiliesBoolExp? $_not,
    List<Input_FamiliesBoolExp>? $_or,
    Input_AddressesBoolExp? address,
    Input_StringComparisonExp? addressText,
    Input_StringComparisonExp? blurhash,
    Input_FamiliesFamiliesBoolExp? children,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_GeographyComparisonExp? geolocation,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_StringComparisonExp? notes,
    Input_FamiliesFamiliesBoolExp? parents,
    Input_PersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_StoresBoolExp? stores,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_FamiliesBoolExp<TRes> get $_not =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get address =>
      CopyWith_Input_AddressesBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get addressText =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get children =>
      CopyWith_Input_FamiliesFamiliesBoolExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
      get editHistoryAggregate =>
          CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_GeographyComparisonExp<TRes> get geolocation =>
      CopyWith_Input_GeographyComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get notes =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get parents =>
      CopyWith_Input_FamiliesFamiliesBoolExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_StoresBoolExp<TRes> get stores =>
      CopyWith_Input_StoresBoolExp.stub(_res);
}

class Input_FamiliesFamiliesAggregateOrderBy {
  factory Input_FamiliesFamiliesAggregateOrderBy({
    Enum_OrderBy? count,
    Input_FamiliesFamiliesMaxOrderBy? max,
    Input_FamiliesFamiliesMinOrderBy? min,
  }) =>
      Input_FamiliesFamiliesAggregateOrderBy._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input_FamiliesFamiliesAggregateOrderBy._(this._$data);

  factory Input_FamiliesFamiliesAggregateOrderBy.fromJson(
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
          : Input_FamiliesFamiliesMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_FamiliesFamiliesMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input_FamiliesFamiliesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_FamiliesFamiliesMaxOrderBy? get max =>
      (_$data['max'] as Input_FamiliesFamiliesMaxOrderBy?);

  Input_FamiliesFamiliesMinOrderBy? get min =>
      (_$data['min'] as Input_FamiliesFamiliesMinOrderBy?);

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

  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<
          Input_FamiliesFamiliesAggregateOrderBy>
      get copyWith => CopyWith_Input_FamiliesFamiliesAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesAggregateOrderBy ||
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

abstract class CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesAggregateOrderBy(
    Input_FamiliesFamiliesAggregateOrderBy instance,
    TRes Function(Input_FamiliesFamiliesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesAggregateOrderBy;

  factory CopyWith_Input_FamiliesFamiliesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_FamiliesFamiliesMaxOrderBy? max,
    Input_FamiliesFamiliesMinOrderBy? min,
  });
  CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> get max;
  CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_FamiliesFamiliesAggregateOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesAggregateOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input_FamiliesFamiliesAggregateOrderBy._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined)
          'max': (max as Input_FamiliesFamiliesMaxOrderBy?),
        if (min != _undefined)
          'min': (min as Input_FamiliesFamiliesMinOrderBy?),
      }));

  CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_FamiliesFamiliesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesMaxOrderBy(
            local$max, (e) => call(max: e));
  }

  CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_FamiliesFamiliesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesMinOrderBy(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesAggregateOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_FamiliesFamiliesMaxOrderBy? max,
    Input_FamiliesFamiliesMinOrderBy? min,
  }) =>
      _res;

  CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> get max =>
      CopyWith_Input_FamiliesFamiliesMaxOrderBy.stub(_res);

  CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> get min =>
      CopyWith_Input_FamiliesFamiliesMinOrderBy.stub(_res);
}

class Input_FamiliesFamiliesArrRelInsertInput {
  factory Input_FamiliesFamiliesArrRelInsertInput({
    required List<Input_FamiliesFamiliesInsertInput> data,
    Input_FamiliesFamiliesOnConflict? onConflict,
  }) =>
      Input_FamiliesFamiliesArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_FamiliesFamiliesArrRelInsertInput._(this._$data);

  factory Input_FamiliesFamiliesArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input_FamiliesFamiliesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_FamiliesFamiliesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_FamiliesFamiliesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesFamiliesInsertInput> get data =>
      (_$data['data'] as List<Input_FamiliesFamiliesInsertInput>);

  Input_FamiliesFamiliesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_FamiliesFamiliesOnConflict?);

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

  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<
          Input_FamiliesFamiliesArrRelInsertInput>
      get copyWith => CopyWith_Input_FamiliesFamiliesArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesArrRelInsertInput ||
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

abstract class CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> {
  factory CopyWith_Input_FamiliesFamiliesArrRelInsertInput(
    Input_FamiliesFamiliesArrRelInsertInput instance,
    TRes Function(Input_FamiliesFamiliesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesArrRelInsertInput;

  factory CopyWith_Input_FamiliesFamiliesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesArrRelInsertInput;

  TRes call({
    List<Input_FamiliesFamiliesInsertInput>? data,
    Input_FamiliesFamiliesOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_FamiliesFamiliesInsertInput> Function(
              Iterable<
                  CopyWith_Input_FamiliesFamiliesInsertInput<
                      Input_FamiliesFamiliesInsertInput>>)
          _fn);
  CopyWith_Input_FamiliesFamiliesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_FamiliesFamiliesArrRelInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesArrRelInsertInput _instance;

  final TRes Function(Input_FamiliesFamiliesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_FamiliesFamiliesArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_FamiliesFamiliesInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_FamiliesFamiliesOnConflict?),
      }));

  TRes data(
          Iterable<Input_FamiliesFamiliesInsertInput> Function(
                  Iterable<
                      CopyWith_Input_FamiliesFamiliesInsertInput<
                          Input_FamiliesFamiliesInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_FamiliesFamiliesInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_FamiliesFamiliesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_FamiliesFamiliesOnConflict.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesArrRelInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_FamiliesFamiliesInsertInput>? data,
    Input_FamiliesFamiliesOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_FamiliesFamiliesOnConflict<TRes> get onConflict =>
      CopyWith_Input_FamiliesFamiliesOnConflict.stub(_res);
}

class Input_FamiliesFamiliesBoolExp {
  factory Input_FamiliesFamiliesBoolExp({
    List<Input_FamiliesFamiliesBoolExp>? $_and,
    Input_FamiliesFamiliesBoolExp? $_not,
    List<Input_FamiliesFamiliesBoolExp>? $_or,
    Input_FamiliesBoolExp? child,
    Input_UuidComparisonExp? childFamilyId,
    Input_FamiliesBoolExp? parent,
    Input_UuidComparisonExp? parentFamilyId,
  }) =>
      Input_FamiliesFamiliesBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (child != null) r'child': child,
        if (childFamilyId != null) r'childFamilyId': childFamilyId,
        if (parent != null) r'parent': parent,
        if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
      });

  Input_FamiliesFamiliesBoolExp._(this._$data);

  factory Input_FamiliesFamiliesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_FamiliesFamiliesBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_FamiliesFamiliesBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('child')) {
      final l$child = data['child'];
      result$data['child'] = l$child == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$child as Map<String, dynamic>));
    }
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$childFamilyId as Map<String, dynamic>));
    }
    if (data.containsKey('parent')) {
      final l$parent = data['parent'];
      result$data['parent'] = l$parent == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$parent as Map<String, dynamic>));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$parentFamilyId as Map<String, dynamic>));
    }
    return Input_FamiliesFamiliesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesFamiliesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FamiliesFamiliesBoolExp>?);

  Input_FamiliesFamiliesBoolExp? get $_not =>
      (_$data['_not'] as Input_FamiliesFamiliesBoolExp?);

  List<Input_FamiliesFamiliesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FamiliesFamiliesBoolExp>?);

  Input_FamiliesBoolExp? get child =>
      (_$data['child'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get childFamilyId =>
      (_$data['childFamilyId'] as Input_UuidComparisonExp?);

  Input_FamiliesBoolExp? get parent =>
      (_$data['parent'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get parentFamilyId =>
      (_$data['parentFamilyId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('child')) {
      final l$child = child;
      result$data['child'] = l$child?.toJson();
    }
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId?.toJson();
    }
    if (_$data.containsKey('parent')) {
      final l$parent = parent;
      result$data['parent'] = l$parent?.toJson();
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesBoolExp<Input_FamiliesFamiliesBoolExp>
      get copyWith => CopyWith_Input_FamiliesFamiliesBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesBoolExp ||
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
    final l$child = child;
    final lOther$child = other.child;
    if (_$data.containsKey('child') != other._$data.containsKey('child')) {
      return false;
    }
    if (l$child != lOther$child) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (_$data.containsKey('parent') != other._$data.containsKey('parent')) {
      return false;
    }
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$child = child;
    final l$childFamilyId = childFamilyId;
    final l$parent = parent;
    final l$parentFamilyId = parentFamilyId;
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
      _$data.containsKey('child') ? l$child : const {},
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parent') ? l$parent : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesBoolExp<TRes> {
  factory CopyWith_Input_FamiliesFamiliesBoolExp(
    Input_FamiliesFamiliesBoolExp instance,
    TRes Function(Input_FamiliesFamiliesBoolExp) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesBoolExp;

  factory CopyWith_Input_FamiliesFamiliesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesBoolExp;

  TRes call({
    List<Input_FamiliesFamiliesBoolExp>? $_and,
    Input_FamiliesFamiliesBoolExp? $_not,
    List<Input_FamiliesFamiliesBoolExp>? $_or,
    Input_FamiliesBoolExp? child,
    Input_UuidComparisonExp? childFamilyId,
    Input_FamiliesBoolExp? parent,
    Input_UuidComparisonExp? parentFamilyId,
  });
  TRes $_and(
      Iterable<Input_FamiliesFamiliesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_FamiliesFamiliesBoolExp<
                      Input_FamiliesFamiliesBoolExp>>?)
          _fn);
  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_FamiliesFamiliesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_FamiliesFamiliesBoolExp<
                      Input_FamiliesFamiliesBoolExp>>?)
          _fn);
  CopyWith_Input_FamiliesBoolExp<TRes> get child;
  CopyWith_Input_UuidComparisonExp<TRes> get childFamilyId;
  CopyWith_Input_FamiliesBoolExp<TRes> get parent;
  CopyWith_Input_UuidComparisonExp<TRes> get parentFamilyId;
}

class _CopyWithImpl_Input_FamiliesFamiliesBoolExp<TRes>
    implements CopyWith_Input_FamiliesFamiliesBoolExp<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesBoolExp(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesBoolExp _instance;

  final TRes Function(Input_FamiliesFamiliesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? child = _undefined,
    Object? childFamilyId = _undefined,
    Object? parent = _undefined,
    Object? parentFamilyId = _undefined,
  }) =>
      _then(Input_FamiliesFamiliesBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_FamiliesFamiliesBoolExp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input_FamiliesFamiliesBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_FamiliesFamiliesBoolExp>?),
        if (child != _undefined) 'child': (child as Input_FamiliesBoolExp?),
        if (childFamilyId != _undefined)
          'childFamilyId': (childFamilyId as Input_UuidComparisonExp?),
        if (parent != _undefined) 'parent': (parent as Input_FamiliesBoolExp?),
        if (parentFamilyId != _undefined)
          'parentFamilyId': (parentFamilyId as Input_UuidComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_FamiliesFamiliesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_FamiliesFamiliesBoolExp<
                          Input_FamiliesFamiliesBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith_Input_FamiliesFamiliesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_FamiliesFamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_FamiliesFamiliesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_FamiliesFamiliesBoolExp<
                          Input_FamiliesFamiliesBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(
              _instance.$_or?.map((e) => CopyWith_Input_FamiliesFamiliesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_FamiliesBoolExp<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$child, (e) => call(child: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get childFamilyId {
    final local$childFamilyId = _instance.childFamilyId;
    return local$childFamilyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$childFamilyId, (e) => call(childFamilyId: e));
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$parent, (e) => call(parent: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get parentFamilyId {
    final local$parentFamilyId = _instance.parentFamilyId;
    return local$parentFamilyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$parentFamilyId, (e) => call(parentFamilyId: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesBoolExp<TRes>
    implements CopyWith_Input_FamiliesFamiliesBoolExp<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_FamiliesFamiliesBoolExp>? $_and,
    Input_FamiliesFamiliesBoolExp? $_not,
    List<Input_FamiliesFamiliesBoolExp>? $_or,
    Input_FamiliesBoolExp? child,
    Input_UuidComparisonExp? childFamilyId,
    Input_FamiliesBoolExp? parent,
    Input_UuidComparisonExp? parentFamilyId,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get $_not =>
      CopyWith_Input_FamiliesFamiliesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_FamiliesBoolExp<TRes> get child =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get childFamilyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get parent =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get parentFamilyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_FamiliesFamiliesInsertInput {
  factory Input_FamiliesFamiliesInsertInput({
    Input_FamiliesObjRelInsertInput? child,
    UuidValue? childFamilyId,
    Input_FamiliesObjRelInsertInput? parent,
    UuidValue? parentFamilyId,
  }) =>
      Input_FamiliesFamiliesInsertInput._({
        if (child != null) r'child': child,
        if (childFamilyId != null) r'childFamilyId': childFamilyId,
        if (parent != null) r'parent': parent,
        if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
      });

  Input_FamiliesFamiliesInsertInput._(this._$data);

  factory Input_FamiliesFamiliesInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('child')) {
      final l$child = data['child'];
      result$data['child'] = l$child == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$child as Map<String, dynamic>));
    }
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] =
          l$childFamilyId == null ? null : stringToUuid(l$childFamilyId);
    }
    if (data.containsKey('parent')) {
      final l$parent = data['parent'];
      result$data['parent'] = l$parent == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$parent as Map<String, dynamic>));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] =
          l$parentFamilyId == null ? null : stringToUuid(l$parentFamilyId);
    }
    return Input_FamiliesFamiliesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesObjRelInsertInput? get child =>
      (_$data['child'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get childFamilyId => (_$data['childFamilyId'] as UuidValue?);

  Input_FamiliesObjRelInsertInput? get parent =>
      (_$data['parent'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get parentFamilyId => (_$data['parentFamilyId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('child')) {
      final l$child = child;
      result$data['child'] = l$child?.toJson();
    }
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] =
          l$childFamilyId == null ? null : uuidToString(l$childFamilyId);
    }
    if (_$data.containsKey('parent')) {
      final l$parent = parent;
      result$data['parent'] = l$parent?.toJson();
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] =
          l$parentFamilyId == null ? null : uuidToString(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesInsertInput<Input_FamiliesFamiliesInsertInput>
      get copyWith => CopyWith_Input_FamiliesFamiliesInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (_$data.containsKey('child') != other._$data.containsKey('child')) {
      return false;
    }
    if (l$child != lOther$child) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (_$data.containsKey('parent') != other._$data.containsKey('parent')) {
      return false;
    }
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$child = child;
    final l$childFamilyId = childFamilyId;
    final l$parent = parent;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('child') ? l$child : const {},
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parent') ? l$parent : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesInsertInput<TRes> {
  factory CopyWith_Input_FamiliesFamiliesInsertInput(
    Input_FamiliesFamiliesInsertInput instance,
    TRes Function(Input_FamiliesFamiliesInsertInput) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesInsertInput;

  factory CopyWith_Input_FamiliesFamiliesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesInsertInput;

  TRes call({
    Input_FamiliesObjRelInsertInput? child,
    UuidValue? childFamilyId,
    Input_FamiliesObjRelInsertInput? parent,
    UuidValue? parentFamilyId,
  });
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get child;
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get parent;
}

class _CopyWithImpl_Input_FamiliesFamiliesInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesInsertInput<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesInsertInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesInsertInput _instance;

  final TRes Function(Input_FamiliesFamiliesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? child = _undefined,
    Object? childFamilyId = _undefined,
    Object? parent = _undefined,
    Object? parentFamilyId = _undefined,
  }) =>
      _then(Input_FamiliesFamiliesInsertInput._({
        ..._instance._$data,
        if (child != _undefined)
          'child': (child as Input_FamiliesObjRelInsertInput?),
        if (childFamilyId != _undefined)
          'childFamilyId': (childFamilyId as UuidValue?),
        if (parent != _undefined)
          'parent': (parent as Input_FamiliesObjRelInsertInput?),
        if (parentFamilyId != _undefined)
          'parentFamilyId': (parentFamilyId as UuidValue?),
      }));

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$child, (e) => call(child: e));
  }

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$parent, (e) => call(parent: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesInsertInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesInsertInput(this._res);

  TRes _res;

  call({
    Input_FamiliesObjRelInsertInput? child,
    UuidValue? childFamilyId,
    Input_FamiliesObjRelInsertInput? parent,
    UuidValue? parentFamilyId,
  }) =>
      _res;

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get child =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get parent =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);
}

class Input_FamiliesFamiliesMaxOrderBy {
  factory Input_FamiliesFamiliesMaxOrderBy({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  }) =>
      Input_FamiliesFamiliesMaxOrderBy._({
        if (childFamilyId != null) r'childFamilyId': childFamilyId,
        if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
      });

  Input_FamiliesFamiliesMaxOrderBy._(this._$data);

  factory Input_FamiliesFamiliesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$childFamilyId as String));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$parentFamilyId as String));
    }
    return Input_FamiliesFamiliesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get childFamilyId => (_$data['childFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get parentFamilyId =>
      (_$data['parentFamilyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] =
          l$childFamilyId == null ? null : toJson_Enum_OrderBy(l$childFamilyId);
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesMaxOrderBy<Input_FamiliesFamiliesMaxOrderBy>
      get copyWith => CopyWith_Input_FamiliesFamiliesMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childFamilyId = childFamilyId;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesMaxOrderBy(
    Input_FamiliesFamiliesMaxOrderBy instance,
    TRes Function(Input_FamiliesFamiliesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesMaxOrderBy;

  factory CopyWith_Input_FamiliesFamiliesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesMaxOrderBy;

  TRes call({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  });
}

class _CopyWithImpl_Input_FamiliesFamiliesMaxOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesMaxOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? childFamilyId = _undefined,
    Object? parentFamilyId = _undefined,
  }) =>
      _then(Input_FamiliesFamiliesMaxOrderBy._({
        ..._instance._$data,
        if (childFamilyId != _undefined)
          'childFamilyId': (childFamilyId as Enum_OrderBy?),
        if (parentFamilyId != _undefined)
          'parentFamilyId': (parentFamilyId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_FamiliesFamiliesMaxOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  }) =>
      _res;
}

class Input_FamiliesFamiliesMinOrderBy {
  factory Input_FamiliesFamiliesMinOrderBy({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  }) =>
      Input_FamiliesFamiliesMinOrderBy._({
        if (childFamilyId != null) r'childFamilyId': childFamilyId,
        if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
      });

  Input_FamiliesFamiliesMinOrderBy._(this._$data);

  factory Input_FamiliesFamiliesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$childFamilyId as String));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$parentFamilyId as String));
    }
    return Input_FamiliesFamiliesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get childFamilyId => (_$data['childFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get parentFamilyId =>
      (_$data['parentFamilyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] =
          l$childFamilyId == null ? null : toJson_Enum_OrderBy(l$childFamilyId);
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesMinOrderBy<Input_FamiliesFamiliesMinOrderBy>
      get copyWith => CopyWith_Input_FamiliesFamiliesMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childFamilyId = childFamilyId;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesMinOrderBy(
    Input_FamiliesFamiliesMinOrderBy instance,
    TRes Function(Input_FamiliesFamiliesMinOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesMinOrderBy;

  factory CopyWith_Input_FamiliesFamiliesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesMinOrderBy;

  TRes call({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  });
}

class _CopyWithImpl_Input_FamiliesFamiliesMinOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesMinOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? childFamilyId = _undefined,
    Object? parentFamilyId = _undefined,
  }) =>
      _then(Input_FamiliesFamiliesMinOrderBy._({
        ..._instance._$data,
        if (childFamilyId != _undefined)
          'childFamilyId': (childFamilyId as Enum_OrderBy?),
        if (parentFamilyId != _undefined)
          'parentFamilyId': (parentFamilyId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_FamiliesFamiliesMinOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  }) =>
      _res;
}

class Input_FamiliesFamiliesOnConflict {
  factory Input_FamiliesFamiliesOnConflict({
    required Enum_FamiliesFamiliesConstraint constraint,
    List<Enum_FamiliesFamiliesUpdateColumn>? updateColumns,
    Input_FamiliesFamiliesBoolExp? where,
  }) =>
      Input_FamiliesFamiliesOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_FamiliesFamiliesOnConflict._(this._$data);

  factory Input_FamiliesFamiliesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_FamiliesFamiliesConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_FamiliesFamiliesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_FamiliesFamiliesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_FamiliesFamiliesConstraint get constraint =>
      (_$data['constraint'] as Enum_FamiliesFamiliesConstraint);

  List<Enum_FamiliesFamiliesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_FamiliesFamiliesUpdateColumn>?);

  Input_FamiliesFamiliesBoolExp? get where =>
      (_$data['where'] as Input_FamiliesFamiliesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_FamiliesFamiliesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_FamiliesFamiliesUpdateColumn>)
              .map((e) => toJson_Enum_FamiliesFamiliesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesOnConflict<Input_FamiliesFamiliesOnConflict>
      get copyWith => CopyWith_Input_FamiliesFamiliesOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesOnConflict ||
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
