// Part 41 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AreaStreetFilterAreaId<TRes> {
  factory CopyWith_Input_AreaStreetFilterAreaId(
    Input_AreaStreetFilterAreaId instance,
    TRes Function(Input_AreaStreetFilterAreaId) then,
  ) = _CopyWithImpl_Input_AreaStreetFilterAreaId;

  factory CopyWith_Input_AreaStreetFilterAreaId.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaStreetFilterAreaId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AreaStreetFilterAreaId<TRes>
    implements CopyWith_Input_AreaStreetFilterAreaId<TRes> {
  _CopyWithImpl_Input_AreaStreetFilterAreaId(this._instance, this._then);

  final Input_AreaStreetFilterAreaId _instance;

  final TRes Function(Input_AreaStreetFilterAreaId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaStreetFilterAreaId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaStreetFilterAreaId<TRes>
    implements CopyWith_Input_AreaStreetFilterAreaId<TRes> {
  _CopyWithStubImpl_Input_AreaStreetFilterAreaId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_AreaStreetFilterInput {
  factory Input_AreaStreetFilterInput({
    List<Input_AreaStreetFilterInput>? and,
    List<Input_AreaStreetFilterInput>? or,
    List<Input_AreaStreetFilterInput>? not,
    Input_AreaStreetFilterAreaId? areaId,
    Input_AreaStreetFilterStreetId? streetId,
    Input_AreaFilterInput? area,
    Input_StreetFilterInput? street,
  }) => Input_AreaStreetFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (areaId != null) r'areaId': areaId,
    if (streetId != null) r'streetId': streetId,
    if (area != null) r'area': area,
    if (street != null) r'street': street,
  });

  Input_AreaStreetFilterInput._(this._$data);

  factory Input_AreaStreetFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_AreaStreetFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_AreaStreetFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_AreaStreetFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : Input_AreaStreetFilterAreaId.fromJson(
              (l$areaId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : Input_AreaStreetFilterStreetId.fromJson(
              (l$streetId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreaFilterInput.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetFilterInput.fromJson(
              (l$street as Map<String, dynamic>),
            );
    }
    return Input_AreaStreetFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AreaStreetFilterInput>? get and =>
      (_$data['and'] as List<Input_AreaStreetFilterInput>?);

  List<Input_AreaStreetFilterInput>? get or =>
      (_$data['or'] as List<Input_AreaStreetFilterInput>?);

  List<Input_AreaStreetFilterInput>? get not =>
      (_$data['not'] as List<Input_AreaStreetFilterInput>?);

  Input_AreaStreetFilterAreaId? get areaId =>
      (_$data['areaId'] as Input_AreaStreetFilterAreaId?);

  Input_AreaStreetFilterStreetId? get streetId =>
      (_$data['streetId'] as Input_AreaStreetFilterStreetId?);

  Input_AreaFilterInput? get area => (_$data['area'] as Input_AreaFilterInput?);

  Input_StreetFilterInput? get street =>
      (_$data['street'] as Input_StreetFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId?.toJson();
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
  get copyWith => CopyWith_Input_AreaStreetFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaStreetFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$areaId = areaId;
    final l$streetId = streetId;
    final l$area = area;
    final l$street = street;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('street') ? l$street : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaStreetFilterInput<TRes> {
  factory CopyWith_Input_AreaStreetFilterInput(
    Input_AreaStreetFilterInput instance,
    TRes Function(Input_AreaStreetFilterInput) then,
  ) = _CopyWithImpl_Input_AreaStreetFilterInput;

  factory CopyWith_Input_AreaStreetFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaStreetFilterInput;

  TRes call({
    List<Input_AreaStreetFilterInput>? and,
    List<Input_AreaStreetFilterInput>? or,
    List<Input_AreaStreetFilterInput>? not,
    Input_AreaStreetFilterAreaId? areaId,
    Input_AreaStreetFilterStreetId? streetId,
    Input_AreaFilterInput? area,
    Input_StreetFilterInput? street,
  });
  TRes and(
    Iterable<Input_AreaStreetFilterInput>? Function(
      Iterable<
        CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_AreaStreetFilterInput>? Function(
      Iterable<
        CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_AreaStreetFilterInput>? Function(
      Iterable<
        CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_AreaStreetFilterAreaId<TRes> get areaId;
  CopyWith_Input_AreaStreetFilterStreetId<TRes> get streetId;
  CopyWith_Input_AreaFilterInput<TRes> get area;
  CopyWith_Input_StreetFilterInput<TRes> get street;
}

class _CopyWithImpl_Input_AreaStreetFilterInput<TRes>
    implements CopyWith_Input_AreaStreetFilterInput<TRes> {
  _CopyWithImpl_Input_AreaStreetFilterInput(this._instance, this._then);

  final Input_AreaStreetFilterInput _instance;

  final TRes Function(Input_AreaStreetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? areaId = _undefined,
    Object? streetId = _undefined,
    Object? area = _undefined,
    Object? street = _undefined,
  }) => _then(
    Input_AreaStreetFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_AreaStreetFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_AreaStreetFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_AreaStreetFilterInput>?),
      if (areaId != _undefined)
        'areaId': (areaId as Input_AreaStreetFilterAreaId?),
      if (streetId != _undefined)
        'streetId': (streetId as Input_AreaStreetFilterStreetId?),
      if (area != _undefined) 'area': (area as Input_AreaFilterInput?),
      if (street != _undefined) 'street': (street as Input_StreetFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_AreaStreetFilterInput>? Function(
      Iterable<
        CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_AreaStreetFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_AreaStreetFilterInput>? Function(
      Iterable<
        CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_AreaStreetFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_AreaStreetFilterInput>? Function(
      Iterable<
        CopyWith_Input_AreaStreetFilterInput<Input_AreaStreetFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_AreaStreetFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AreaStreetFilterAreaId<TRes> get areaId {
    final local$areaId = _instance.areaId;
    return local$areaId == null
        ? CopyWith_Input_AreaStreetFilterAreaId.stub(_then(_instance))
        : CopyWith_Input_AreaStreetFilterAreaId(
            local$areaId,
            (e) => call(areaId: e),
          );
  }

  CopyWith_Input_AreaStreetFilterStreetId<TRes> get streetId {
    final local$streetId = _instance.streetId;
    return local$streetId == null
        ? CopyWith_Input_AreaStreetFilterStreetId.stub(_then(_instance))
        : CopyWith_Input_AreaStreetFilterStreetId(
            local$streetId,
            (e) => call(streetId: e),
          );
  }

  CopyWith_Input_AreaFilterInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreaFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaFilterInput(local$area, (e) => call(area: e));
  }

  CopyWith_Input_StreetFilterInput<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetFilterInput.stub(_then(_instance))
        : CopyWith_Input_StreetFilterInput(
            local$street,
            (e) => call(street: e),
          );
  }
}

class _CopyWithStubImpl_Input_AreaStreetFilterInput<TRes>
    implements CopyWith_Input_AreaStreetFilterInput<TRes> {
  _CopyWithStubImpl_Input_AreaStreetFilterInput(this._res);

  TRes _res;

  call({
    List<Input_AreaStreetFilterInput>? and,
    List<Input_AreaStreetFilterInput>? or,
    List<Input_AreaStreetFilterInput>? not,
    Input_AreaStreetFilterAreaId? areaId,
    Input_AreaStreetFilterStreetId? streetId,
    Input_AreaFilterInput? area,
    Input_StreetFilterInput? street,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_AreaStreetFilterAreaId<TRes> get areaId =>
      CopyWith_Input_AreaStreetFilterAreaId.stub(_res);

  CopyWith_Input_AreaStreetFilterStreetId<TRes> get streetId =>
      CopyWith_Input_AreaStreetFilterStreetId.stub(_res);

  CopyWith_Input_AreaFilterInput<TRes> get area =>
      CopyWith_Input_AreaFilterInput.stub(_res);

  CopyWith_Input_StreetFilterInput<TRes> get street =>
      CopyWith_Input_StreetFilterInput.stub(_res);
}

class Input_AreaStreetSortInput {
  factory Input_AreaStreetSortInput({
    Enum_SortOrder? order,
    required Enum_AreaStreetSortField field,
  }) => Input_AreaStreetSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_AreaStreetSortInput._(this._$data);

  factory Input_AreaStreetSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_AreaStreetSortField(
      (l$field as String),
    );
    return Input_AreaStreetSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_AreaStreetSortField get field =>
      (_$data['field'] as Enum_AreaStreetSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_AreaStreetSortField(l$field);
    return result$data;
  }

  CopyWith_Input_AreaStreetSortInput<Input_AreaStreetSortInput> get copyWith =>
      CopyWith_Input_AreaStreetSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaStreetSortInput ||
        runtimeType != other.runtimeType) {
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
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_AreaStreetSortInput<TRes> {
  factory CopyWith_Input_AreaStreetSortInput(
    Input_AreaStreetSortInput instance,
    TRes Function(Input_AreaStreetSortInput) then,
  ) = _CopyWithImpl_Input_AreaStreetSortInput;

  factory CopyWith_Input_AreaStreetSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaStreetSortInput;

  TRes call({Enum_SortOrder? order, Enum_AreaStreetSortField? field});
}

class _CopyWithImpl_Input_AreaStreetSortInput<TRes>
    implements CopyWith_Input_AreaStreetSortInput<TRes> {
  _CopyWithImpl_Input_AreaStreetSortInput(this._instance, this._then);

  final Input_AreaStreetSortInput _instance;

  final TRes Function(Input_AreaStreetSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_AreaStreetSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_AreaStreetSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaStreetSortInput<TRes>
    implements CopyWith_Input_AreaStreetSortInput<TRes> {
  _CopyWithStubImpl_Input_AreaStreetSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_AreaStreetSortField? field}) => _res;
}

class Input_UpdateAreaInput {
  factory Input_UpdateAreaInput({
    String? name,
    Json? bounds,
    int? color,
    DateTime? lastVisit,
  }) => Input_UpdateAreaInput._({
    if (name != null) r'name': name,
    if (bounds != null) r'bounds': bounds,
    if (color != null) r'color': color,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_UpdateAreaInput._(this._$data);

  factory Input_UpdateAreaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = (l$bounds as Json?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_UpdateAreaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Json? get bounds => (_$data['bounds'] as Json?);

  int? get color => (_$data['color'] as int?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_UpdateAreaInput<Input_UpdateAreaInput> get copyWith =>
      CopyWith_Input_UpdateAreaInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateAreaInput || runtimeType != other.runtimeType) {
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
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$bounds = bounds;
    final l$color = color;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateAreaInput<TRes> {
  factory CopyWith_Input_UpdateAreaInput(
    Input_UpdateAreaInput instance,
    TRes Function(Input_UpdateAreaInput) then,
  ) = _CopyWithImpl_Input_UpdateAreaInput;

  factory CopyWith_Input_UpdateAreaInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateAreaInput;

  TRes call({String? name, Json? bounds, int? color, DateTime? lastVisit});
}

class _CopyWithImpl_Input_UpdateAreaInput<TRes>
    implements CopyWith_Input_UpdateAreaInput<TRes> {
  _CopyWithImpl_Input_UpdateAreaInput(this._instance, this._then);

  final Input_UpdateAreaInput _instance;

  final TRes Function(Input_UpdateAreaInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? lastVisit = _undefined,
  }) => _then(
    Input_UpdateAreaInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (bounds != _undefined) 'bounds': (bounds as Json?),
      if (color != _undefined) 'color': (color as int?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_UpdateAreaInput<TRes>
    implements CopyWith_Input_UpdateAreaInput<TRes> {
  _CopyWithStubImpl_Input_UpdateAreaInput(this._res);

  TRes _res;

  call({String? name, Json? bounds, int? color, DateTime? lastVisit}) => _res;
}

class Input_CreateAreaInput {
  factory Input_CreateAreaInput({
    required String name,
    Json? bounds,
    int? color,
    DateTime? lastVisit,
  }) => Input_CreateAreaInput._({
    r'name': name,
    if (bounds != null) r'bounds': bounds,
    if (color != null) r'color': color,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_CreateAreaInput._(this._$data);

  factory Input_CreateAreaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = (l$bounds as Json?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_CreateAreaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Json? get bounds => (_$data['bounds'] as Json?);

  int? get color => (_$data['color'] as int?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_CreateAreaInput<Input_CreateAreaInput> get copyWith =>
      CopyWith_Input_CreateAreaInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateAreaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$bounds = bounds;
    final l$color = color;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      l$name,
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateAreaInput<TRes> {
  factory CopyWith_Input_CreateAreaInput(
    Input_CreateAreaInput instance,
    TRes Function(Input_CreateAreaInput) then,
  ) = _CopyWithImpl_Input_CreateAreaInput;

  factory CopyWith_Input_CreateAreaInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateAreaInput;

  TRes call({String? name, Json? bounds, int? color, DateTime? lastVisit});
}

class _CopyWithImpl_Input_CreateAreaInput<TRes>
    implements CopyWith_Input_CreateAreaInput<TRes> {
  _CopyWithImpl_Input_CreateAreaInput(this._instance, this._then);

  final Input_CreateAreaInput _instance;

  final TRes Function(Input_CreateAreaInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? lastVisit = _undefined,
  }) => _then(
    Input_CreateAreaInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (bounds != _undefined) 'bounds': (bounds as Json?),
      if (color != _undefined) 'color': (color as int?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_CreateAreaInput<TRes>
    implements CopyWith_Input_CreateAreaInput<TRes> {
  _CopyWithStubImpl_Input_CreateAreaInput(this._res);

  TRes _res;

  call({String? name, Json? bounds, int? color, DateTime? lastVisit}) => _res;
}

class Input_AreaContainsPointFieldInput {
  factory Input_AreaContainsPointFieldInput({required Json point}) =>
      Input_AreaContainsPointFieldInput._({r'point': point});

  Input_AreaContainsPointFieldInput._(this._$data);

  factory Input_AreaContainsPointFieldInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$point = data['point'];
    result$data['point'] = (l$point as Json);
    return Input_AreaContainsPointFieldInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json get point => (_$data['point'] as Json);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$point = point;
    result$data['point'] = l$point;
    return result$data;
  }

  CopyWith_Input_AreaContainsPointFieldInput<Input_AreaContainsPointFieldInput>
  get copyWith => CopyWith_Input_AreaContainsPointFieldInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaContainsPointFieldInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }
}

abstract class CopyWith_Input_AreaContainsPointFieldInput<TRes> {
  factory CopyWith_Input_AreaContainsPointFieldInput(
    Input_AreaContainsPointFieldInput instance,
    TRes Function(Input_AreaContainsPointFieldInput) then,
  ) = _CopyWithImpl_Input_AreaContainsPointFieldInput;

  factory CopyWith_Input_AreaContainsPointFieldInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaContainsPointFieldInput;

  TRes call({Json? point});
}

class _CopyWithImpl_Input_AreaContainsPointFieldInput<TRes>
    implements CopyWith_Input_AreaContainsPointFieldInput<TRes> {
  _CopyWithImpl_Input_AreaContainsPointFieldInput(this._instance, this._then);

  final Input_AreaContainsPointFieldInput _instance;

  final TRes Function(Input_AreaContainsPointFieldInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) => _then(
    Input_AreaContainsPointFieldInput._({
      ..._instance._$data,
      if (point != _undefined && point != null) 'point': (point as Json),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaContainsPointFieldInput<TRes>
    implements CopyWith_Input_AreaContainsPointFieldInput<TRes> {
  _CopyWithStubImpl_Input_AreaContainsPointFieldInput(this._res);

  TRes _res;

  call({Json? point}) => _res;
}

class Input_AreaFilterContainsPoint {
  factory Input_AreaFilterContainsPoint({
    Input_AreaContainsPointFieldInput? input,
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_AreaFilterContainsPoint._({
    if (input != null) r'input': input,
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_AreaFilterContainsPoint._(this._$data);

  factory Input_AreaFilterContainsPoint.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_AreaContainsPointFieldInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_AreaFilterContainsPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreaContainsPointFieldInput? get input =>
      (_$data['input'] as Input_AreaContainsPointFieldInput?);

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool>? get $in => (_$data['in'] as List<bool>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterContainsPoint<Input_AreaFilterContainsPoint>
  get copyWith => CopyWith_Input_AreaFilterContainsPoint(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterContainsPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('input') ? l$input : const {},
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterContainsPoint<TRes> {
  factory CopyWith_Input_AreaFilterContainsPoint(
    Input_AreaFilterContainsPoint instance,
    TRes Function(Input_AreaFilterContainsPoint) then,
  ) = _CopyWithImpl_Input_AreaFilterContainsPoint;

  factory CopyWith_Input_AreaFilterContainsPoint.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterContainsPoint;

  TRes call({
    Input_AreaContainsPointFieldInput? input,
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
  CopyWith_Input_AreaContainsPointFieldInput<TRes> get input;
}

class _CopyWithImpl_Input_AreaFilterContainsPoint<TRes>
    implements CopyWith_Input_AreaFilterContainsPoint<TRes> {
  _CopyWithImpl_Input_AreaFilterContainsPoint(this._instance, this._then);

  final Input_AreaFilterContainsPoint _instance;

  final TRes Function(Input_AreaFilterContainsPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaFilterContainsPoint._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input_AreaContainsPointFieldInput?),
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );

  CopyWith_Input_AreaContainsPointFieldInput<TRes> get input {
    final local$input = _instance.input;
    return local$input == null
        ? CopyWith_Input_AreaContainsPointFieldInput.stub(_then(_instance))
        : CopyWith_Input_AreaContainsPointFieldInput(
            local$input,
            (e) => call(input: e),
          );
  }
}

class _CopyWithStubImpl_Input_AreaFilterContainsPoint<TRes>
    implements CopyWith_Input_AreaFilterContainsPoint<TRes> {
  _CopyWithStubImpl_Input_AreaFilterContainsPoint(this._res);

  TRes _res;

  call({
    Input_AreaContainsPointFieldInput? input,
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;

  CopyWith_Input_AreaContainsPointFieldInput<TRes> get input =>
      CopyWith_Input_AreaContainsPointFieldInput.stub(_res);
}

class Input_AreaWithinPolygonFieldInput {
  factory Input_AreaWithinPolygonFieldInput({required Json polygon}) =>
      Input_AreaWithinPolygonFieldInput._({r'polygon': polygon});

  Input_AreaWithinPolygonFieldInput._(this._$data);

  factory Input_AreaWithinPolygonFieldInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$polygon = data['polygon'];
    result$data['polygon'] = (l$polygon as Json);
    return Input_AreaWithinPolygonFieldInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json get polygon => (_$data['polygon'] as Json);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$polygon = polygon;
    result$data['polygon'] = l$polygon;
    return result$data;
  }

  CopyWith_Input_AreaWithinPolygonFieldInput<Input_AreaWithinPolygonFieldInput>
  get copyWith => CopyWith_Input_AreaWithinPolygonFieldInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaWithinPolygonFieldInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != lOther$polygon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$polygon = polygon;
    return Object.hashAll([l$polygon]);
  }
}

abstract class CopyWith_Input_AreaWithinPolygonFieldInput<TRes> {
  factory CopyWith_Input_AreaWithinPolygonFieldInput(
    Input_AreaWithinPolygonFieldInput instance,
    TRes Function(Input_AreaWithinPolygonFieldInput) then,
  ) = _CopyWithImpl_Input_AreaWithinPolygonFieldInput;

  factory CopyWith_Input_AreaWithinPolygonFieldInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaWithinPolygonFieldInput;

  TRes call({Json? polygon});
}

class _CopyWithImpl_Input_AreaWithinPolygonFieldInput<TRes>
    implements CopyWith_Input_AreaWithinPolygonFieldInput<TRes> {
  _CopyWithImpl_Input_AreaWithinPolygonFieldInput(this._instance, this._then);

  final Input_AreaWithinPolygonFieldInput _instance;

  final TRes Function(Input_AreaWithinPolygonFieldInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? polygon = _undefined}) => _then(
    Input_AreaWithinPolygonFieldInput._({
      ..._instance._$data,
      if (polygon != _undefined && polygon != null)
        'polygon': (polygon as Json),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaWithinPolygonFieldInput<TRes>
    implements CopyWith_Input_AreaWithinPolygonFieldInput<TRes> {
  _CopyWithStubImpl_Input_AreaWithinPolygonFieldInput(this._res);

  TRes _res;

  call({Json? polygon}) => _res;
}

class Input_AreaFilterWithinPolygon {
  factory Input_AreaFilterWithinPolygon({
    Input_AreaWithinPolygonFieldInput? input,
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_AreaFilterWithinPolygon._({
    if (input != null) r'input': input,
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_AreaFilterWithinPolygon._(this._$data);

  factory Input_AreaFilterWithinPolygon.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_AreaWithinPolygonFieldInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_AreaFilterWithinPolygon._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreaWithinPolygonFieldInput? get input =>
      (_$data['input'] as Input_AreaWithinPolygonFieldInput?);

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool>? get $in => (_$data['in'] as List<bool>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterWithinPolygon<Input_AreaFilterWithinPolygon>
  get copyWith => CopyWith_Input_AreaFilterWithinPolygon(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterWithinPolygon ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('input') ? l$input : const {},
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterWithinPolygon<TRes> {
  factory CopyWith_Input_AreaFilterWithinPolygon(
    Input_AreaFilterWithinPolygon instance,
    TRes Function(Input_AreaFilterWithinPolygon) then,
  ) = _CopyWithImpl_Input_AreaFilterWithinPolygon;

  factory CopyWith_Input_AreaFilterWithinPolygon.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterWithinPolygon;

  TRes call({
    Input_AreaWithinPolygonFieldInput? input,
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
  CopyWith_Input_AreaWithinPolygonFieldInput<TRes> get input;
}

class _CopyWithImpl_Input_AreaFilterWithinPolygon<TRes>
    implements CopyWith_Input_AreaFilterWithinPolygon<TRes> {
  _CopyWithImpl_Input_AreaFilterWithinPolygon(this._instance, this._then);

  final Input_AreaFilterWithinPolygon _instance;

  final TRes Function(Input_AreaFilterWithinPolygon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaFilterWithinPolygon._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input_AreaWithinPolygonFieldInput?),
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );

  CopyWith_Input_AreaWithinPolygonFieldInput<TRes> get input {
    final local$input = _instance.input;
    return local$input == null
        ? CopyWith_Input_AreaWithinPolygonFieldInput.stub(_then(_instance))
        : CopyWith_Input_AreaWithinPolygonFieldInput(
            local$input,
            (e) => call(input: e),
          );
  }
}

class _CopyWithStubImpl_Input_AreaFilterWithinPolygon<TRes>
    implements CopyWith_Input_AreaFilterWithinPolygon<TRes> {
  _CopyWithStubImpl_Input_AreaFilterWithinPolygon(this._res);

  TRes _res;

  call({
    Input_AreaWithinPolygonFieldInput? input,
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;

  CopyWith_Input_AreaWithinPolygonFieldInput<TRes> get input =>
      CopyWith_Input_AreaWithinPolygonFieldInput.stub(_res);
}

class Input_AreaFilterUserCanEdit {
  factory Input_AreaFilterUserCanEdit({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_AreaFilterUserCanEdit._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_AreaFilterUserCanEdit._(this._$data);

  factory Input_AreaFilterUserCanEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_AreaFilterUserCanEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool>? get $in => (_$data['in'] as List<bool>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterUserCanEdit<Input_AreaFilterUserCanEdit>
  get copyWith => CopyWith_Input_AreaFilterUserCanEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterUserCanEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterUserCanEdit<TRes> {
  factory CopyWith_Input_AreaFilterUserCanEdit(
    Input_AreaFilterUserCanEdit instance,
    TRes Function(Input_AreaFilterUserCanEdit) then,
  ) = _CopyWithImpl_Input_AreaFilterUserCanEdit;

  factory CopyWith_Input_AreaFilterUserCanEdit.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterUserCanEdit;

  TRes call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AreaFilterUserCanEdit<TRes>
    implements CopyWith_Input_AreaFilterUserCanEdit<TRes> {
  _CopyWithImpl_Input_AreaFilterUserCanEdit(this._instance, this._then);

  final Input_AreaFilterUserCanEdit _instance;

  final TRes Function(Input_AreaFilterUserCanEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaFilterUserCanEdit._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaFilterUserCanEdit<TRes>
    implements CopyWith_Input_AreaFilterUserCanEdit<TRes> {
  _CopyWithStubImpl_Input_AreaFilterUserCanEdit(this._res);

  TRes _res;

  call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;
}

class Input_AreaFilterLastVisit {
  factory Input_AreaFilterLastVisit({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime?>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => Input_AreaFilterLastVisit._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_AreaFilterLastVisit._(this._$data);

  factory Input_AreaFilterLastVisit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null ? null : tstzFromString(l$eq);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = l$notEq == null ? null : tstzFromString(l$notEq);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : tstzFromString(e))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzFromString(l$lessThan);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzFromString(l$greaterThan);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzFromString(l$lessThanOrEqual);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzFromString(l$greaterThanOrEqual);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzFromString(l$isDistinctFrom);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzFromString(l$isNotDistinctFrom);
    }
    return Input_AreaFilterLastVisit._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get notEq => (_$data['notEq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  DateTime? get lessThan => (_$data['lessThan'] as DateTime?);

  DateTime? get greaterThan => (_$data['greaterThan'] as DateTime?);

  DateTime? get lessThanOrEqual => (_$data['lessThanOrEqual'] as DateTime?);

  DateTime? get greaterThanOrEqual =>
      (_$data['greaterThanOrEqual'] as DateTime?);

  DateTime? get isDistinctFrom => (_$data['isDistinctFrom'] as DateTime?);

  DateTime? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : tstzToString(l$eq);
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq == null ? null : tstzToString(l$notEq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in
          ?.map((e) => e == null ? null : tstzToString(e))
          .toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzToString(l$lessThan);
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzToString(l$greaterThan);
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzToString(l$lessThanOrEqual);
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzToString(l$greaterThanOrEqual);
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzToString(l$isDistinctFrom);
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzToString(l$isNotDistinctFrom);
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterLastVisit<Input_AreaFilterLastVisit> get copyWith =>
      CopyWith_Input_AreaFilterLastVisit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}
