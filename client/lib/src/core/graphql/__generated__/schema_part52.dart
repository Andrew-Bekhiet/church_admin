// Part 52 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ServicesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ServicesStreamCursorValueInput(
    Input_ServicesStreamCursorValueInput instance,
    TRes Function(Input_ServicesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ServicesStreamCursorValueInput;

  factory CopyWith_Input_ServicesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesStreamCursorValueInput;

  TRes call({
    String? blurhash,
    int? color,
    UuidValue? defaultMeetingId,
    UuidValue? id,
    String? name,
    UuidValue? nextServiceId,
    DateTime? photoUpdatedAt,
    int? studyYearFromId,
    int? studyYearToId,
  });
}

class _CopyWithImpl_Input_ServicesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ServicesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ServicesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ServicesStreamCursorValueInput _instance;

  final TRes Function(Input_ServicesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? defaultMeetingId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? nextServiceId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearToId = _undefined,
  }) => _then(
    Input_ServicesStreamCursorValueInput._({
      ..._instance._$data,
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (color != _undefined) 'color': (color as int?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (nextServiceId != _undefined)
        'nextServiceId': (nextServiceId as UuidValue?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      if (studyYearFromId != _undefined)
        'studyYearFromId': (studyYearFromId as int?),
      if (studyYearToId != _undefined) 'studyYearToId': (studyYearToId as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_ServicesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ServicesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ServicesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    int? color,
    UuidValue? defaultMeetingId,
    UuidValue? id,
    String? name,
    UuidValue? nextServiceId,
    DateTime? photoUpdatedAt,
    int? studyYearFromId,
    int? studyYearToId,
  }) => _res;
}

class Input_ServicesUpdates {
  factory Input_ServicesUpdates({
    Input_ServicesIncInput? $_inc,
    Input_ServicesSetInput? $_set,
    required Input_ServicesBoolExp where,
  }) => Input_ServicesUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_ServicesUpdates._(this._$data);

  factory Input_ServicesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_ServicesIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_ServicesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_ServicesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_ServicesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ServicesIncInput? get $_inc =>
      (_$data['_inc'] as Input_ServicesIncInput?);

  Input_ServicesSetInput? get $_set =>
      (_$data['_set'] as Input_ServicesSetInput?);

  Input_ServicesBoolExp get where => (_$data['where'] as Input_ServicesBoolExp);

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

  CopyWith_Input_ServicesUpdates<Input_ServicesUpdates> get copyWith =>
      CopyWith_Input_ServicesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServicesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ServicesUpdates<TRes> {
  factory CopyWith_Input_ServicesUpdates(
    Input_ServicesUpdates instance,
    TRes Function(Input_ServicesUpdates) then,
  ) = _CopyWithImpl_Input_ServicesUpdates;

  factory CopyWith_Input_ServicesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ServicesUpdates;

  TRes call({
    Input_ServicesIncInput? $_inc,
    Input_ServicesSetInput? $_set,
    Input_ServicesBoolExp? where,
  });
  CopyWith_Input_ServicesIncInput<TRes> get $_inc;
  CopyWith_Input_ServicesSetInput<TRes> get $_set;
  CopyWith_Input_ServicesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ServicesUpdates<TRes>
    implements CopyWith_Input_ServicesUpdates<TRes> {
  _CopyWithImpl_Input_ServicesUpdates(this._instance, this._then);

  final Input_ServicesUpdates _instance;

  final TRes Function(Input_ServicesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_ServicesUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_ServicesIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_ServicesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_ServicesBoolExp),
    }),
  );

  CopyWith_Input_ServicesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_ServicesIncInput.stub(_then(_instance))
        : CopyWith_Input_ServicesIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_ServicesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_ServicesSetInput.stub(_then(_instance))
        : CopyWith_Input_ServicesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_ServicesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ServicesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ServicesUpdates<TRes>
    implements CopyWith_Input_ServicesUpdates<TRes> {
  _CopyWithStubImpl_Input_ServicesUpdates(this._res);

  TRes _res;

  call({
    Input_ServicesIncInput? $_inc,
    Input_ServicesSetInput? $_set,
    Input_ServicesBoolExp? where,
  }) => _res;

  CopyWith_Input_ServicesIncInput<TRes> get $_inc =>
      CopyWith_Input_ServicesIncInput.stub(_res);

  CopyWith_Input_ServicesSetInput<TRes> get $_set =>
      CopyWith_Input_ServicesSetInput.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get where =>
      CopyWith_Input_ServicesBoolExp.stub(_res);
}

class Input_ShammasLevelsBoolExp {
  factory Input_ShammasLevelsBoolExp({
    List<Input_ShammasLevelsBoolExp>? $_and,
    Input_ShammasLevelsBoolExp? $_not,
    List<Input_ShammasLevelsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
  }) => Input_ShammasLevelsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
  });

  Input_ShammasLevelsBoolExp._(this._$data);

  factory Input_ShammasLevelsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ShammasLevelsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ShammasLevelsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ShammasLevelsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : Input_IntComparisonExp.fromJson((l$order as Map<String, dynamic>));
    }
    return Input_ShammasLevelsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ShammasLevelsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ShammasLevelsBoolExp>?);

  Input_ShammasLevelsBoolExp? get $_not =>
      (_$data['_not'] as Input_ShammasLevelsBoolExp?);

  List<Input_ShammasLevelsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ShammasLevelsBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_IntComparisonExp? get order =>
      (_$data['order'] as Input_IntComparisonExp?);

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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ShammasLevelsBoolExp<Input_ShammasLevelsBoolExp>
  get copyWith => CopyWith_Input_ShammasLevelsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ShammasLevelsBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
    final l$order = order;
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
      _$data.containsKey('order') ? l$order : const {},
    ]);
  }
}

abstract class CopyWith_Input_ShammasLevelsBoolExp<TRes> {
  factory CopyWith_Input_ShammasLevelsBoolExp(
    Input_ShammasLevelsBoolExp instance,
    TRes Function(Input_ShammasLevelsBoolExp) then,
  ) = _CopyWithImpl_Input_ShammasLevelsBoolExp;

  factory CopyWith_Input_ShammasLevelsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ShammasLevelsBoolExp;

  TRes call({
    List<Input_ShammasLevelsBoolExp>? $_and,
    Input_ShammasLevelsBoolExp? $_not,
    List<Input_ShammasLevelsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
  });
  TRes $_and(
    Iterable<Input_ShammasLevelsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ShammasLevelsBoolExp<Input_ShammasLevelsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ShammasLevelsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_ShammasLevelsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ShammasLevelsBoolExp<Input_ShammasLevelsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_IntComparisonExp<TRes> get order;
}

class _CopyWithImpl_Input_ShammasLevelsBoolExp<TRes>
    implements CopyWith_Input_ShammasLevelsBoolExp<TRes> {
  _CopyWithImpl_Input_ShammasLevelsBoolExp(this._instance, this._then);

  final Input_ShammasLevelsBoolExp _instance;

  final TRes Function(Input_ShammasLevelsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
  }) => _then(
    Input_ShammasLevelsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_ShammasLevelsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_ShammasLevelsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_ShammasLevelsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (order != _undefined) 'order': (order as Input_IntComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_ShammasLevelsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ShammasLevelsBoolExp<Input_ShammasLevelsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_ShammasLevelsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ShammasLevelsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ShammasLevelsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ShammasLevelsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_ShammasLevelsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ShammasLevelsBoolExp<Input_ShammasLevelsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_ShammasLevelsBoolExp(e, (i) => i),
      ),
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

  CopyWith_Input_IntComparisonExp<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(local$order, (e) => call(order: e));
  }
}

class _CopyWithStubImpl_Input_ShammasLevelsBoolExp<TRes>
    implements CopyWith_Input_ShammasLevelsBoolExp<TRes> {
  _CopyWithStubImpl_Input_ShammasLevelsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ShammasLevelsBoolExp>? $_and,
    Input_ShammasLevelsBoolExp? $_not,
    List<Input_ShammasLevelsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_ShammasLevelsBoolExp<TRes> get $_not =>
      CopyWith_Input_ShammasLevelsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get order =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_ShammasLevelsOrderBy {
  factory Input_ShammasLevelsOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
  }) => Input_ShammasLevelsOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
  });

  Input_ShammasLevelsOrderBy._(this._$data);

  factory Input_ShammasLevelsOrderBy.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_OrderBy((l$order as String));
    }
    return Input_ShammasLevelsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get order => (_$data['order'] as Enum_OrderBy?);

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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_OrderBy(l$order);
    }
    return result$data;
  }

  CopyWith_Input_ShammasLevelsOrderBy<Input_ShammasLevelsOrderBy>
  get copyWith => CopyWith_Input_ShammasLevelsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ShammasLevelsOrderBy ||
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
    final l$name = name;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
    ]);
  }
}

abstract class CopyWith_Input_ShammasLevelsOrderBy<TRes> {
  factory CopyWith_Input_ShammasLevelsOrderBy(
    Input_ShammasLevelsOrderBy instance,
    TRes Function(Input_ShammasLevelsOrderBy) then,
  ) = _CopyWithImpl_Input_ShammasLevelsOrderBy;

  factory CopyWith_Input_ShammasLevelsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ShammasLevelsOrderBy;

  TRes call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? order});
}

class _CopyWithImpl_Input_ShammasLevelsOrderBy<TRes>
    implements CopyWith_Input_ShammasLevelsOrderBy<TRes> {
  _CopyWithImpl_Input_ShammasLevelsOrderBy(this._instance, this._then);

  final Input_ShammasLevelsOrderBy _instance;

  final TRes Function(Input_ShammasLevelsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
  }) => _then(
    Input_ShammasLevelsOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (order != _undefined) 'order': (order as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ShammasLevelsOrderBy<TRes>
    implements CopyWith_Input_ShammasLevelsOrderBy<TRes> {
  _CopyWithStubImpl_Input_ShammasLevelsOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? order}) => _res;
}

class Input_ShammasLevelsPkColumnsInput {
  factory Input_ShammasLevelsPkColumnsInput({required UuidValue id}) =>
      Input_ShammasLevelsPkColumnsInput._({r'id': id});

  Input_ShammasLevelsPkColumnsInput._(this._$data);

  factory Input_ShammasLevelsPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ShammasLevelsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ShammasLevelsPkColumnsInput<Input_ShammasLevelsPkColumnsInput>
  get copyWith => CopyWith_Input_ShammasLevelsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ShammasLevelsPkColumnsInput ||
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

abstract class CopyWith_Input_ShammasLevelsPkColumnsInput<TRes> {
  factory CopyWith_Input_ShammasLevelsPkColumnsInput(
    Input_ShammasLevelsPkColumnsInput instance,
    TRes Function(Input_ShammasLevelsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_ShammasLevelsPkColumnsInput;

  factory CopyWith_Input_ShammasLevelsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ShammasLevelsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_ShammasLevelsPkColumnsInput<TRes>
    implements CopyWith_Input_ShammasLevelsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_ShammasLevelsPkColumnsInput(this._instance, this._then);

  final Input_ShammasLevelsPkColumnsInput _instance;

  final TRes Function(Input_ShammasLevelsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_ShammasLevelsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_ShammasLevelsPkColumnsInput<TRes>
    implements CopyWith_Input_ShammasLevelsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ShammasLevelsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ShammasLevelsStreamCursorInput {
  factory Input_ShammasLevelsStreamCursorInput({
    required Input_ShammasLevelsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ShammasLevelsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ShammasLevelsStreamCursorInput._(this._$data);

  factory Input_ShammasLevelsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_ShammasLevelsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ShammasLevelsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ShammasLevelsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ShammasLevelsStreamCursorValueInput);

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

  CopyWith_Input_ShammasLevelsStreamCursorInput<
    Input_ShammasLevelsStreamCursorInput
  >
  get copyWith => CopyWith_Input_ShammasLevelsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ShammasLevelsStreamCursorInput ||
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

abstract class CopyWith_Input_ShammasLevelsStreamCursorInput<TRes> {
  factory CopyWith_Input_ShammasLevelsStreamCursorInput(
    Input_ShammasLevelsStreamCursorInput instance,
    TRes Function(Input_ShammasLevelsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ShammasLevelsStreamCursorInput;

  factory CopyWith_Input_ShammasLevelsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ShammasLevelsStreamCursorInput;

  TRes call({
    Input_ShammasLevelsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ShammasLevelsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ShammasLevelsStreamCursorInput<TRes>
    implements CopyWith_Input_ShammasLevelsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ShammasLevelsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_ShammasLevelsStreamCursorInput _instance;

  final TRes Function(Input_ShammasLevelsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ShammasLevelsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_ShammasLevelsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ShammasLevelsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ShammasLevelsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ShammasLevelsStreamCursorInput<TRes>
    implements CopyWith_Input_ShammasLevelsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ShammasLevelsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ShammasLevelsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ShammasLevelsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ShammasLevelsStreamCursorValueInput.stub(_res);
}

class Input_ShammasLevelsStreamCursorValueInput {
  factory Input_ShammasLevelsStreamCursorValueInput({
    UuidValue? id,
    String? name,
    int? order,
  }) => Input_ShammasLevelsStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
  });

  Input_ShammasLevelsStreamCursorValueInput._(this._$data);

  factory Input_ShammasLevelsStreamCursorValueInput.fromJson(
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    return Input_ShammasLevelsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  int? get order => (_$data['order'] as int?);

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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    return result$data;
  }

  CopyWith_Input_ShammasLevelsStreamCursorValueInput<
    Input_ShammasLevelsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_ShammasLevelsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ShammasLevelsStreamCursorValueInput ||
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
    final l$name = name;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
    ]);
  }
}

abstract class CopyWith_Input_ShammasLevelsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ShammasLevelsStreamCursorValueInput(
    Input_ShammasLevelsStreamCursorValueInput instance,
    TRes Function(Input_ShammasLevelsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ShammasLevelsStreamCursorValueInput;

  factory CopyWith_Input_ShammasLevelsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ShammasLevelsStreamCursorValueInput;

  TRes call({UuidValue? id, String? name, int? order});
}

class _CopyWithImpl_Input_ShammasLevelsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ShammasLevelsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ShammasLevelsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ShammasLevelsStreamCursorValueInput _instance;

  final TRes Function(Input_ShammasLevelsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
  }) => _then(
    Input_ShammasLevelsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (order != _undefined) 'order': (order as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_ShammasLevelsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ShammasLevelsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ShammasLevelsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name, int? order}) => _res;
}

class Input_ShammasLevelsUpdates {
  factory Input_ShammasLevelsUpdates({
    required Input_ShammasLevelsBoolExp where,
  }) => Input_ShammasLevelsUpdates._({r'where': where});

  Input_ShammasLevelsUpdates._(this._$data);

  factory Input_ShammasLevelsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input_ShammasLevelsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_ShammasLevelsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ShammasLevelsBoolExp get where =>
      (_$data['where'] as Input_ShammasLevelsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_ShammasLevelsUpdates<Input_ShammasLevelsUpdates>
  get copyWith => CopyWith_Input_ShammasLevelsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ShammasLevelsUpdates ||
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

abstract class CopyWith_Input_ShammasLevelsUpdates<TRes> {
  factory CopyWith_Input_ShammasLevelsUpdates(
    Input_ShammasLevelsUpdates instance,
    TRes Function(Input_ShammasLevelsUpdates) then,
  ) = _CopyWithImpl_Input_ShammasLevelsUpdates;

  factory CopyWith_Input_ShammasLevelsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ShammasLevelsUpdates;

  TRes call({Input_ShammasLevelsBoolExp? where});
  CopyWith_Input_ShammasLevelsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ShammasLevelsUpdates<TRes>
    implements CopyWith_Input_ShammasLevelsUpdates<TRes> {
  _CopyWithImpl_Input_ShammasLevelsUpdates(this._instance, this._then);

  final Input_ShammasLevelsUpdates _instance;

  final TRes Function(Input_ShammasLevelsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(
    Input_ShammasLevelsUpdates._({
      ..._instance._$data,
      if (where != _undefined && where != null)
        'where': (where as Input_ShammasLevelsBoolExp),
    }),
  );

  CopyWith_Input_ShammasLevelsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ShammasLevelsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_ShammasLevelsUpdates<TRes>
    implements CopyWith_Input_ShammasLevelsUpdates<TRes> {
  _CopyWithStubImpl_Input_ShammasLevelsUpdates(this._res);

  TRes _res;

  call({Input_ShammasLevelsBoolExp? where}) => _res;

  CopyWith_Input_ShammasLevelsBoolExp<TRes> get where =>
      CopyWith_Input_ShammasLevelsBoolExp.stub(_res);
}

class Input_SmallintComparisonExp {
  factory Input_SmallintComparisonExp({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) => Input_SmallintComparisonExp._({
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

  Input_SmallintComparisonExp._(this._$data);

  factory Input_SmallintComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as int?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as int?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as int?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as int?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as int?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as int?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    return Input_SmallintComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get $_eq => (_$data['_eq'] as int?);

  int? get $_gt => (_$data['_gt'] as int?);

  int? get $_gte => (_$data['_gte'] as int?);

  List<int>? get $_in => (_$data['_in'] as List<int>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  int? get $_lt => (_$data['_lt'] as int?);

  int? get $_lte => (_$data['_lte'] as int?);

  int? get $_neq => (_$data['_neq'] as int?);

  List<int>? get $_nin => (_$data['_nin'] as List<int>?);

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

  CopyWith_Input_SmallintComparisonExp<Input_SmallintComparisonExp>
  get copyWith => CopyWith_Input_SmallintComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SmallintComparisonExp ||
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

abstract class CopyWith_Input_SmallintComparisonExp<TRes> {
  factory CopyWith_Input_SmallintComparisonExp(
    Input_SmallintComparisonExp instance,
    TRes Function(Input_SmallintComparisonExp) then,
  ) = _CopyWithImpl_Input_SmallintComparisonExp;

  factory CopyWith_Input_SmallintComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_SmallintComparisonExp;

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

class _CopyWithImpl_Input_SmallintComparisonExp<TRes>
    implements CopyWith_Input_SmallintComparisonExp<TRes> {
  _CopyWithImpl_Input_SmallintComparisonExp(this._instance, this._then);

  final Input_SmallintComparisonExp _instance;

  final TRes Function(Input_SmallintComparisonExp) _then;

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
    Input_SmallintComparisonExp._({
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

class _CopyWithStubImpl_Input_SmallintComparisonExp<TRes>
    implements CopyWith_Input_SmallintComparisonExp<TRes> {
  _CopyWithStubImpl_Input_SmallintComparisonExp(this._res);

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

class Input_StoresAggregateBoolExp {
  factory Input_StoresAggregateBoolExp({
    Input_storesAggregateBoolExpCount? count,
  }) => Input_StoresAggregateBoolExp._({if (count != null) r'count': count});

  Input_StoresAggregateBoolExp._(this._$data);

  factory Input_StoresAggregateBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_storesAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_StoresAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_storesAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_storesAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StoresAggregateBoolExp<Input_StoresAggregateBoolExp>
  get copyWith => CopyWith_Input_StoresAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresAggregateBoolExp ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith_Input_StoresAggregateBoolExp<TRes> {
  factory CopyWith_Input_StoresAggregateBoolExp(
    Input_StoresAggregateBoolExp instance,
    TRes Function(Input_StoresAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_StoresAggregateBoolExp;

  factory CopyWith_Input_StoresAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresAggregateBoolExp;

  TRes call({Input_storesAggregateBoolExpCount? count});
  CopyWith_Input_storesAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_StoresAggregateBoolExp<TRes>
    implements CopyWith_Input_StoresAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_StoresAggregateBoolExp(this._instance, this._then);

  final Input_StoresAggregateBoolExp _instance;

  final TRes Function(Input_StoresAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_StoresAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_storesAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_storesAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_storesAggregateBoolExpCount.stub(_then(_instance))
        : CopyWith_Input_storesAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoresAggregateBoolExp<TRes>
    implements CopyWith_Input_StoresAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_StoresAggregateBoolExp(this._res);

  TRes _res;

  call({Input_storesAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_storesAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_storesAggregateBoolExpCount.stub(_res);
}

class Input_StoresAggregateOrderBy {
  factory Input_StoresAggregateOrderBy({
    Input_StoresAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_StoresMaxOrderBy? max,
    Input_StoresMinOrderBy? min,
    Input_StoresStddevOrderBy? stddev,
    Input_StoresStddevPopOrderBy? stddevPop,
    Input_StoresStddevSampOrderBy? stddevSamp,
    Input_StoresSumOrderBy? sum,
    Input_StoresVarPopOrderBy? varPop,
    Input_StoresVarSampOrderBy? varSamp,
    Input_StoresVarianceOrderBy? variance,
  }) => Input_StoresAggregateOrderBy._({
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

  Input_StoresAggregateOrderBy._(this._$data);

  factory Input_StoresAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_StoresAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_StoresMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_StoresMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_StoresStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_StoresStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_StoresStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_StoresSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_StoresVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_StoresVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_StoresVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_StoresAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoresAvgOrderBy? get avg => (_$data['avg'] as Input_StoresAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_StoresMaxOrderBy? get max => (_$data['max'] as Input_StoresMaxOrderBy?);

  Input_StoresMinOrderBy? get min => (_$data['min'] as Input_StoresMinOrderBy?);

  Input_StoresStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_StoresStddevOrderBy?);

  Input_StoresStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_StoresStddevPopOrderBy?);

  Input_StoresStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_StoresStddevSampOrderBy?);

  Input_StoresSumOrderBy? get sum => (_$data['sum'] as Input_StoresSumOrderBy?);

  Input_StoresVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_StoresVarPopOrderBy?);

  Input_StoresVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_StoresVarSampOrderBy?);

  Input_StoresVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_StoresVarianceOrderBy?);

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

  CopyWith_Input_StoresAggregateOrderBy<Input_StoresAggregateOrderBy>
  get copyWith => CopyWith_Input_StoresAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresAggregateOrderBy ||
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

abstract class CopyWith_Input_StoresAggregateOrderBy<TRes> {
  factory CopyWith_Input_StoresAggregateOrderBy(
    Input_StoresAggregateOrderBy instance,
    TRes Function(Input_StoresAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_StoresAggregateOrderBy;

  factory CopyWith_Input_StoresAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresAggregateOrderBy;

  TRes call({
    Input_StoresAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_StoresMaxOrderBy? max,
    Input_StoresMinOrderBy? min,
    Input_StoresStddevOrderBy? stddev,
    Input_StoresStddevPopOrderBy? stddevPop,
    Input_StoresStddevSampOrderBy? stddevSamp,
    Input_StoresSumOrderBy? sum,
    Input_StoresVarPopOrderBy? varPop,
    Input_StoresVarSampOrderBy? varSamp,
    Input_StoresVarianceOrderBy? variance,
  });
  CopyWith_Input_StoresAvgOrderBy<TRes> get avg;
  CopyWith_Input_StoresMaxOrderBy<TRes> get max;
  CopyWith_Input_StoresMinOrderBy<TRes> get min;
  CopyWith_Input_StoresStddevOrderBy<TRes> get stddev;
  CopyWith_Input_StoresStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_StoresStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_StoresSumOrderBy<TRes> get sum;
  CopyWith_Input_StoresVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_StoresVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_StoresVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_StoresAggregateOrderBy<TRes>
    implements CopyWith_Input_StoresAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_StoresAggregateOrderBy(this._instance, this._then);

  final Input_StoresAggregateOrderBy _instance;

  final TRes Function(Input_StoresAggregateOrderBy) _then;

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
    Input_StoresAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_StoresAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_StoresMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_StoresMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_StoresStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_StoresStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_StoresStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_StoresSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_StoresVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_StoresVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_StoresVarianceOrderBy?),
    }),
  );

  CopyWith_Input_StoresAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_StoresAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_StoresMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_StoresMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_StoresMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_StoresMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_StoresStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_StoresStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_StoresStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_StoresStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_StoresStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_StoresStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_StoresSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_StoresSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_StoresVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_StoresVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_StoresVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_StoresVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_StoresVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_StoresVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoresAggregateOrderBy<TRes>
    implements CopyWith_Input_StoresAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_StoresAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_StoresMaxOrderBy? max,
    Input_StoresMinOrderBy? min,
    Input_StoresStddevOrderBy? stddev,
    Input_StoresStddevPopOrderBy? stddevPop,
    Input_StoresStddevSampOrderBy? stddevSamp,
    Input_StoresSumOrderBy? sum,
    Input_StoresVarPopOrderBy? varPop,
    Input_StoresVarSampOrderBy? varSamp,
    Input_StoresVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_StoresAvgOrderBy<TRes> get avg =>
      CopyWith_Input_StoresAvgOrderBy.stub(_res);

  CopyWith_Input_StoresMaxOrderBy<TRes> get max =>
      CopyWith_Input_StoresMaxOrderBy.stub(_res);

  CopyWith_Input_StoresMinOrderBy<TRes> get min =>
      CopyWith_Input_StoresMinOrderBy.stub(_res);

  CopyWith_Input_StoresStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_StoresStddevOrderBy.stub(_res);

  CopyWith_Input_StoresStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_StoresStddevPopOrderBy.stub(_res);

  CopyWith_Input_StoresStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_StoresStddevSampOrderBy.stub(_res);

  CopyWith_Input_StoresSumOrderBy<TRes> get sum =>
      CopyWith_Input_StoresSumOrderBy.stub(_res);

  CopyWith_Input_StoresVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_StoresVarPopOrderBy.stub(_res);

  CopyWith_Input_StoresVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_StoresVarSampOrderBy.stub(_res);

  CopyWith_Input_StoresVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_StoresVarianceOrderBy.stub(_res);
}

class Input_StoresArrRelInsertInput {
  factory Input_StoresArrRelInsertInput({
    required List<Input_StoresInsertInput> data,
    Input_StoresOnConflict? onConflict,
  }) => Input_StoresArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_StoresArrRelInsertInput._(this._$data);

  factory Input_StoresArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_StoresInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_StoresOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_StoresArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StoresInsertInput> get data =>
      (_$data['data'] as List<Input_StoresInsertInput>);

  Input_StoresOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_StoresOnConflict?);

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

  CopyWith_Input_StoresArrRelInsertInput<Input_StoresArrRelInsertInput>
  get copyWith => CopyWith_Input_StoresArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresArrRelInsertInput ||
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

abstract class CopyWith_Input_StoresArrRelInsertInput<TRes> {
  factory CopyWith_Input_StoresArrRelInsertInput(
    Input_StoresArrRelInsertInput instance,
    TRes Function(Input_StoresArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_StoresArrRelInsertInput;

  factory CopyWith_Input_StoresArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresArrRelInsertInput;

  TRes call({
    List<Input_StoresInsertInput>? data,
    Input_StoresOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_StoresInsertInput> Function(
      Iterable<CopyWith_Input_StoresInsertInput<Input_StoresInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_StoresOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_StoresArrRelInsertInput<TRes>
    implements CopyWith_Input_StoresArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_StoresArrRelInsertInput(this._instance, this._then);

  final Input_StoresArrRelInsertInput _instance;

  final TRes Function(Input_StoresArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_StoresArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_StoresInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_StoresOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_StoresInsertInput> Function(
      Iterable<CopyWith_Input_StoresInsertInput<Input_StoresInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_StoresInsertInput(e, (i) => i)),
    ).toList(),
  );

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

class _CopyWithStubImpl_Input_StoresArrRelInsertInput<TRes>
    implements CopyWith_Input_StoresArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_StoresArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_StoresInsertInput>? data,
    Input_StoresOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_StoresOnConflict<TRes> get onConflict =>
      CopyWith_Input_StoresOnConflict.stub(_res);
}

class Input_StoresAvgOrderBy {
  factory Input_StoresAvgOrderBy({Enum_OrderBy? color}) =>
      Input_StoresAvgOrderBy._({if (color != null) r'color': color});

  Input_StoresAvgOrderBy._(this._$data);

  factory Input_StoresAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresAvgOrderBy._(result$data);
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

  CopyWith_Input_StoresAvgOrderBy<Input_StoresAvgOrderBy> get copyWith =>
      CopyWith_Input_StoresAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresAvgOrderBy || runtimeType != other.runtimeType) {
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
