// Part 37 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_StreetFilterInput<TRes> {
  factory CopyWith_Input_StreetFilterInput(
    Input_StreetFilterInput instance,
    TRes Function(Input_StreetFilterInput) then,
  ) = _CopyWithImpl_Input_StreetFilterInput;

  factory CopyWith_Input_StreetFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterInput;

  TRes call({
    List<Input_StreetFilterInput>? and,
    List<Input_StreetFilterInput>? or,
    List<Input_StreetFilterInput>? not,
    Input_StreetFilterId? id,
    Input_StreetFilterName? name,
    Input_StreetFilterLine? line,
    Input_StreetFilterColor? color,
    Input_StreetFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StreetFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_AreaFilterInput? areas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StreetFilterLastEdit? lastEdit,
    Input_StreetFilterLastVisit? lastVisit,
    Input_StreetFilterUserCanEdit? userCanEdit,
    Input_StreetFilterWithinPolygon? withinPolygon,
    Input_StreetFilterWithinDistance? withinDistance,
  });
  TRes and(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_StreetFilterId<TRes> get id;
  CopyWith_Input_StreetFilterName<TRes> get name;
  CopyWith_Input_StreetFilterLine<TRes> get line;
  CopyWith_Input_StreetFilterColor<TRes> get color;
  CopyWith_Input_StreetFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_StreetFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_AddressFilterInput<TRes> get addresses;
  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets;
  CopyWith_Input_AreaFilterInput<TRes> get areas;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_EditFilterInput<TRes> get edits;
  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit;
  CopyWith_Input_VisitFilterInput<TRes> get visits;
  CopyWith_Input_StreetFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_StreetFilterLastVisit<TRes> get lastVisit;
  CopyWith_Input_StreetFilterUserCanEdit<TRes> get userCanEdit;
  CopyWith_Input_StreetFilterWithinPolygon<TRes> get withinPolygon;
  CopyWith_Input_StreetFilterWithinDistance<TRes> get withinDistance;
}

class _CopyWithImpl_Input_StreetFilterInput<TRes>
    implements CopyWith_Input_StreetFilterInput<TRes> {
  _CopyWithImpl_Input_StreetFilterInput(this._instance, this._then);

  final Input_StreetFilterInput _instance;

  final TRes Function(Input_StreetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? line = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? addresses = _undefined,
    Object? areaStreets = _undefined,
    Object? areas = _undefined,
    Object? latestEdit = _undefined,
    Object? edits = _undefined,
    Object? latestVisit = _undefined,
    Object? visits = _undefined,
    Object? lastEdit = _undefined,
    Object? lastVisit = _undefined,
    Object? userCanEdit = _undefined,
    Object? withinPolygon = _undefined,
    Object? withinDistance = _undefined,
  }) => _then(
    Input_StreetFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_StreetFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_StreetFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_StreetFilterInput>?),
      if (id != _undefined) 'id': (id as Input_StreetFilterId?),
      if (name != _undefined) 'name': (name as Input_StreetFilterName?),
      if (line != _undefined) 'line': (line as Input_StreetFilterLine?),
      if (color != _undefined) 'color': (color as Input_StreetFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_StreetFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StreetFilterBlurhash?),
      if (addresses != _undefined)
        'addresses': (addresses as Input_AddressFilterInput?),
      if (areaStreets != _undefined)
        'areaStreets': (areaStreets as Input_AreaStreetFilterInput?),
      if (areas != _undefined) 'areas': (areas as Input_AreaFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (edits != _undefined) 'edits': (edits as Input_EditFilterInput?),
      if (latestVisit != _undefined)
        'latestVisit': (latestVisit as Input_LatestVisitFilterInput?),
      if (visits != _undefined) 'visits': (visits as Input_VisitFilterInput?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_StreetFilterLastEdit?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_StreetFilterLastVisit?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_StreetFilterUserCanEdit?),
      if (withinPolygon != _undefined)
        'withinPolygon': (withinPolygon as Input_StreetFilterWithinPolygon?),
      if (withinDistance != _undefined)
        'withinDistance': (withinDistance as Input_StreetFilterWithinDistance?),
    }),
  );

  TRes and(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_StreetFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_StreetFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_StreetFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_StreetFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_StreetFilterId.stub(_then(_instance))
        : CopyWith_Input_StreetFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StreetFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StreetFilterName.stub(_then(_instance))
        : CopyWith_Input_StreetFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_StreetFilterLine<TRes> get line {
    final local$line = _instance.line;
    return local$line == null
        ? CopyWith_Input_StreetFilterLine.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLine(local$line, (e) => call(line: e));
  }

  CopyWith_Input_StreetFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_StreetFilterColor.stub(_then(_instance))
        : CopyWith_Input_StreetFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_StreetFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_StreetFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_StreetFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_StreetFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StreetFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_StreetFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_AddressFilterInput<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressFilterInput.stub(_then(_instance))
        : CopyWith_Input_AddressFilterInput(
            local$addresses,
            (e) => call(addresses: e),
          );
  }

  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets {
    final local$areaStreets = _instance.areaStreets;
    return local$areaStreets == null
        ? CopyWith_Input_AreaStreetFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaStreetFilterInput(
            local$areaStreets,
            (e) => call(areaStreets: e),
          );
  }

  CopyWith_Input_AreaFilterInput<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Input_AreaFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaFilterInput(local$areas, (e) => call(areas: e));
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_EditFilterInput<TRes> get edits {
    final local$edits = _instance.edits;
    return local$edits == null
        ? CopyWith_Input_EditFilterInput.stub(_then(_instance))
        : CopyWith_Input_EditFilterInput(local$edits, (e) => call(edits: e));
  }

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Input_LatestVisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestVisitFilterInput(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Input_VisitFilterInput<TRes> get visits {
    final local$visits = _instance.visits;
    return local$visits == null
        ? CopyWith_Input_VisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_VisitFilterInput(local$visits, (e) => call(visits: e));
  }

  CopyWith_Input_StreetFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_StreetFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_StreetFilterLastVisit<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_StreetFilterLastVisit.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLastVisit(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_StreetFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_StreetFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_StreetFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }

  CopyWith_Input_StreetFilterWithinPolygon<TRes> get withinPolygon {
    final local$withinPolygon = _instance.withinPolygon;
    return local$withinPolygon == null
        ? CopyWith_Input_StreetFilterWithinPolygon.stub(_then(_instance))
        : CopyWith_Input_StreetFilterWithinPolygon(
            local$withinPolygon,
            (e) => call(withinPolygon: e),
          );
  }

  CopyWith_Input_StreetFilterWithinDistance<TRes> get withinDistance {
    final local$withinDistance = _instance.withinDistance;
    return local$withinDistance == null
        ? CopyWith_Input_StreetFilterWithinDistance.stub(_then(_instance))
        : CopyWith_Input_StreetFilterWithinDistance(
            local$withinDistance,
            (e) => call(withinDistance: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetFilterInput<TRes>
    implements CopyWith_Input_StreetFilterInput<TRes> {
  _CopyWithStubImpl_Input_StreetFilterInput(this._res);

  TRes _res;

  call({
    List<Input_StreetFilterInput>? and,
    List<Input_StreetFilterInput>? or,
    List<Input_StreetFilterInput>? not,
    Input_StreetFilterId? id,
    Input_StreetFilterName? name,
    Input_StreetFilterLine? line,
    Input_StreetFilterColor? color,
    Input_StreetFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StreetFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_AreaFilterInput? areas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StreetFilterLastEdit? lastEdit,
    Input_StreetFilterLastVisit? lastVisit,
    Input_StreetFilterUserCanEdit? userCanEdit,
    Input_StreetFilterWithinPolygon? withinPolygon,
    Input_StreetFilterWithinDistance? withinDistance,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_StreetFilterId<TRes> get id =>
      CopyWith_Input_StreetFilterId.stub(_res);

  CopyWith_Input_StreetFilterName<TRes> get name =>
      CopyWith_Input_StreetFilterName.stub(_res);

  CopyWith_Input_StreetFilterLine<TRes> get line =>
      CopyWith_Input_StreetFilterLine.stub(_res);

  CopyWith_Input_StreetFilterColor<TRes> get color =>
      CopyWith_Input_StreetFilterColor.stub(_res);

  CopyWith_Input_StreetFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_StreetFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_StreetFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_StreetFilterBlurhash.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get addresses =>
      CopyWith_Input_AddressFilterInput.stub(_res);

  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets =>
      CopyWith_Input_AreaStreetFilterInput.stub(_res);

  CopyWith_Input_AreaFilterInput<TRes> get areas =>
      CopyWith_Input_AreaFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_EditFilterInput<TRes> get edits =>
      CopyWith_Input_EditFilterInput.stub(_res);

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit =>
      CopyWith_Input_LatestVisitFilterInput.stub(_res);

  CopyWith_Input_VisitFilterInput<TRes> get visits =>
      CopyWith_Input_VisitFilterInput.stub(_res);

  CopyWith_Input_StreetFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_StreetFilterLastEdit.stub(_res);

  CopyWith_Input_StreetFilterLastVisit<TRes> get lastVisit =>
      CopyWith_Input_StreetFilterLastVisit.stub(_res);

  CopyWith_Input_StreetFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_StreetFilterUserCanEdit.stub(_res);

  CopyWith_Input_StreetFilterWithinPolygon<TRes> get withinPolygon =>
      CopyWith_Input_StreetFilterWithinPolygon.stub(_res);

  CopyWith_Input_StreetFilterWithinDistance<TRes> get withinDistance =>
      CopyWith_Input_StreetFilterWithinDistance.stub(_res);
}

class Input_StreetSortInput {
  factory Input_StreetSortInput({
    Enum_SortOrder? order,
    required Enum_StreetSortField field,
    Input_StreetWithinPolygonFieldInput? withinPolygonInput,
    Input_StreetWithinDistanceFieldInput? withinDistanceInput,
  }) => Input_StreetSortInput._({
    if (order != null) r'order': order,
    r'field': field,
    if (withinPolygonInput != null) r'withinPolygonInput': withinPolygonInput,
    if (withinDistanceInput != null)
      r'withinDistanceInput': withinDistanceInput,
  });

  Input_StreetSortInput._(this._$data);

  factory Input_StreetSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_StreetSortField((l$field as String));
    if (data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = data['withinPolygonInput'];
      result$data['withinPolygonInput'] = l$withinPolygonInput == null
          ? null
          : Input_StreetWithinPolygonFieldInput.fromJson(
              (l$withinPolygonInput as Map<String, dynamic>),
            );
    }
    if (data.containsKey('withinDistanceInput')) {
      final l$withinDistanceInput = data['withinDistanceInput'];
      result$data['withinDistanceInput'] = l$withinDistanceInput == null
          ? null
          : Input_StreetWithinDistanceFieldInput.fromJson(
              (l$withinDistanceInput as Map<String, dynamic>),
            );
    }
    return Input_StreetSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_StreetSortField get field => (_$data['field'] as Enum_StreetSortField);

  Input_StreetWithinPolygonFieldInput? get withinPolygonInput =>
      (_$data['withinPolygonInput'] as Input_StreetWithinPolygonFieldInput?);

  Input_StreetWithinDistanceFieldInput? get withinDistanceInput =>
      (_$data['withinDistanceInput'] as Input_StreetWithinDistanceFieldInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_StreetSortField(l$field);
    if (_$data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = withinPolygonInput;
      result$data['withinPolygonInput'] = l$withinPolygonInput?.toJson();
    }
    if (_$data.containsKey('withinDistanceInput')) {
      final l$withinDistanceInput = withinDistanceInput;
      result$data['withinDistanceInput'] = l$withinDistanceInput?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StreetSortInput<Input_StreetSortInput> get copyWith =>
      CopyWith_Input_StreetSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetSortInput || runtimeType != other.runtimeType) {
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
    final l$withinPolygonInput = withinPolygonInput;
    final lOther$withinPolygonInput = other.withinPolygonInput;
    if (_$data.containsKey('withinPolygonInput') !=
        other._$data.containsKey('withinPolygonInput')) {
      return false;
    }
    if (l$withinPolygonInput != lOther$withinPolygonInput) {
      return false;
    }
    final l$withinDistanceInput = withinDistanceInput;
    final lOther$withinDistanceInput = other.withinDistanceInput;
    if (_$data.containsKey('withinDistanceInput') !=
        other._$data.containsKey('withinDistanceInput')) {
      return false;
    }
    if (l$withinDistanceInput != lOther$withinDistanceInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    final l$withinPolygonInput = withinPolygonInput;
    final l$withinDistanceInput = withinDistanceInput;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
      _$data.containsKey('withinPolygonInput')
          ? l$withinPolygonInput
          : const {},
      _$data.containsKey('withinDistanceInput')
          ? l$withinDistanceInput
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_StreetSortInput<TRes> {
  factory CopyWith_Input_StreetSortInput(
    Input_StreetSortInput instance,
    TRes Function(Input_StreetSortInput) then,
  ) = _CopyWithImpl_Input_StreetSortInput;

  factory CopyWith_Input_StreetSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetSortInput;

  TRes call({
    Enum_SortOrder? order,
    Enum_StreetSortField? field,
    Input_StreetWithinPolygonFieldInput? withinPolygonInput,
    Input_StreetWithinDistanceFieldInput? withinDistanceInput,
  });
  CopyWith_Input_StreetWithinPolygonFieldInput<TRes> get withinPolygonInput;
  CopyWith_Input_StreetWithinDistanceFieldInput<TRes> get withinDistanceInput;
}

class _CopyWithImpl_Input_StreetSortInput<TRes>
    implements CopyWith_Input_StreetSortInput<TRes> {
  _CopyWithImpl_Input_StreetSortInput(this._instance, this._then);

  final Input_StreetSortInput _instance;

  final TRes Function(Input_StreetSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? field = _undefined,
    Object? withinPolygonInput = _undefined,
    Object? withinDistanceInput = _undefined,
  }) => _then(
    Input_StreetSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_StreetSortField),
      if (withinPolygonInput != _undefined)
        'withinPolygonInput':
            (withinPolygonInput as Input_StreetWithinPolygonFieldInput?),
      if (withinDistanceInput != _undefined)
        'withinDistanceInput':
            (withinDistanceInput as Input_StreetWithinDistanceFieldInput?),
    }),
  );

  CopyWith_Input_StreetWithinPolygonFieldInput<TRes> get withinPolygonInput {
    final local$withinPolygonInput = _instance.withinPolygonInput;
    return local$withinPolygonInput == null
        ? CopyWith_Input_StreetWithinPolygonFieldInput.stub(_then(_instance))
        : CopyWith_Input_StreetWithinPolygonFieldInput(
            local$withinPolygonInput,
            (e) => call(withinPolygonInput: e),
          );
  }

  CopyWith_Input_StreetWithinDistanceFieldInput<TRes> get withinDistanceInput {
    final local$withinDistanceInput = _instance.withinDistanceInput;
    return local$withinDistanceInput == null
        ? CopyWith_Input_StreetWithinDistanceFieldInput.stub(_then(_instance))
        : CopyWith_Input_StreetWithinDistanceFieldInput(
            local$withinDistanceInput,
            (e) => call(withinDistanceInput: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetSortInput<TRes>
    implements CopyWith_Input_StreetSortInput<TRes> {
  _CopyWithStubImpl_Input_StreetSortInput(this._res);

  TRes _res;

  call({
    Enum_SortOrder? order,
    Enum_StreetSortField? field,
    Input_StreetWithinPolygonFieldInput? withinPolygonInput,
    Input_StreetWithinDistanceFieldInput? withinDistanceInput,
  }) => _res;

  CopyWith_Input_StreetWithinPolygonFieldInput<TRes> get withinPolygonInput =>
      CopyWith_Input_StreetWithinPolygonFieldInput.stub(_res);

  CopyWith_Input_StreetWithinDistanceFieldInput<TRes> get withinDistanceInput =>
      CopyWith_Input_StreetWithinDistanceFieldInput.stub(_res);
}

class Input_UpdateStoreInput {
  factory Input_UpdateStoreInput({
    String? name,
    String? adminFamilyId,
    int? color,
    Input_AddressInput? address,
  }) => Input_UpdateStoreInput._({
    if (name != null) r'name': name,
    if (adminFamilyId != null) r'adminFamilyId': adminFamilyId,
    if (color != null) r'color': color,
    if (address != null) r'address': address,
  });

  Input_UpdateStoreInput._(this._$data);

  factory Input_UpdateStoreInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('adminFamilyId')) {
      final l$adminFamilyId = data['adminFamilyId'];
      result$data['adminFamilyId'] = (l$adminFamilyId as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressInput.fromJson((l$address as Map<String, dynamic>));
    }
    return Input_UpdateStoreInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get adminFamilyId => (_$data['adminFamilyId'] as String?);

  int? get color => (_$data['color'] as int?);

  Input_AddressInput? get address => (_$data['address'] as Input_AddressInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('adminFamilyId')) {
      final l$adminFamilyId = adminFamilyId;
      result$data['adminFamilyId'] = l$adminFamilyId;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UpdateStoreInput<Input_UpdateStoreInput> get copyWith =>
      CopyWith_Input_UpdateStoreInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateStoreInput || runtimeType != other.runtimeType) {
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
    final l$adminFamilyId = adminFamilyId;
    final lOther$adminFamilyId = other.adminFamilyId;
    if (_$data.containsKey('adminFamilyId') !=
        other._$data.containsKey('adminFamilyId')) {
      return false;
    }
    if (l$adminFamilyId != lOther$adminFamilyId) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$adminFamilyId = adminFamilyId;
    final l$color = color;
    final l$address = address;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('adminFamilyId') ? l$adminFamilyId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('address') ? l$address : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateStoreInput<TRes> {
  factory CopyWith_Input_UpdateStoreInput(
    Input_UpdateStoreInput instance,
    TRes Function(Input_UpdateStoreInput) then,
  ) = _CopyWithImpl_Input_UpdateStoreInput;

  factory CopyWith_Input_UpdateStoreInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateStoreInput;

  TRes call({
    String? name,
    String? adminFamilyId,
    int? color,
    Input_AddressInput? address,
  });
  CopyWith_Input_AddressInput<TRes> get address;
}

class _CopyWithImpl_Input_UpdateStoreInput<TRes>
    implements CopyWith_Input_UpdateStoreInput<TRes> {
  _CopyWithImpl_Input_UpdateStoreInput(this._instance, this._then);

  final Input_UpdateStoreInput _instance;

  final TRes Function(Input_UpdateStoreInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? adminFamilyId = _undefined,
    Object? color = _undefined,
    Object? address = _undefined,
  }) => _then(
    Input_UpdateStoreInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (adminFamilyId != _undefined)
        'adminFamilyId': (adminFamilyId as String?),
      if (color != _undefined) 'color': (color as int?),
      if (address != _undefined) 'address': (address as Input_AddressInput?),
    }),
  );

  CopyWith_Input_AddressInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressInput.stub(_then(_instance))
        : CopyWith_Input_AddressInput(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl_Input_UpdateStoreInput<TRes>
    implements CopyWith_Input_UpdateStoreInput<TRes> {
  _CopyWithStubImpl_Input_UpdateStoreInput(this._res);

  TRes _res;

  call({
    String? name,
    String? adminFamilyId,
    int? color,
    Input_AddressInput? address,
  }) => _res;

  CopyWith_Input_AddressInput<TRes> get address =>
      CopyWith_Input_AddressInput.stub(_res);
}

class Input_CreateStoreInput {
  factory Input_CreateStoreInput({
    required String name,
    String? adminFamilyId,
    int? color,
    Input_AddressInput? address,
  }) => Input_CreateStoreInput._({
    r'name': name,
    if (adminFamilyId != null) r'adminFamilyId': adminFamilyId,
    if (color != null) r'color': color,
    if (address != null) r'address': address,
  });

  Input_CreateStoreInput._(this._$data);

  factory Input_CreateStoreInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('adminFamilyId')) {
      final l$adminFamilyId = data['adminFamilyId'];
      result$data['adminFamilyId'] = (l$adminFamilyId as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressInput.fromJson((l$address as Map<String, dynamic>));
    }
    return Input_CreateStoreInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String? get adminFamilyId => (_$data['adminFamilyId'] as String?);

  int? get color => (_$data['color'] as int?);

  Input_AddressInput? get address => (_$data['address'] as Input_AddressInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('adminFamilyId')) {
      final l$adminFamilyId = adminFamilyId;
      result$data['adminFamilyId'] = l$adminFamilyId;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CreateStoreInput<Input_CreateStoreInput> get copyWith =>
      CopyWith_Input_CreateStoreInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateStoreInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$adminFamilyId = adminFamilyId;
    final lOther$adminFamilyId = other.adminFamilyId;
    if (_$data.containsKey('adminFamilyId') !=
        other._$data.containsKey('adminFamilyId')) {
      return false;
    }
    if (l$adminFamilyId != lOther$adminFamilyId) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$adminFamilyId = adminFamilyId;
    final l$color = color;
    final l$address = address;
    return Object.hashAll([
      l$name,
      _$data.containsKey('adminFamilyId') ? l$adminFamilyId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('address') ? l$address : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateStoreInput<TRes> {
  factory CopyWith_Input_CreateStoreInput(
    Input_CreateStoreInput instance,
    TRes Function(Input_CreateStoreInput) then,
  ) = _CopyWithImpl_Input_CreateStoreInput;

  factory CopyWith_Input_CreateStoreInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateStoreInput;

  TRes call({
    String? name,
    String? adminFamilyId,
    int? color,
    Input_AddressInput? address,
  });
  CopyWith_Input_AddressInput<TRes> get address;
}

class _CopyWithImpl_Input_CreateStoreInput<TRes>
    implements CopyWith_Input_CreateStoreInput<TRes> {
  _CopyWithImpl_Input_CreateStoreInput(this._instance, this._then);

  final Input_CreateStoreInput _instance;

  final TRes Function(Input_CreateStoreInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? adminFamilyId = _undefined,
    Object? color = _undefined,
    Object? address = _undefined,
  }) => _then(
    Input_CreateStoreInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (adminFamilyId != _undefined)
        'adminFamilyId': (adminFamilyId as String?),
      if (color != _undefined) 'color': (color as int?),
      if (address != _undefined) 'address': (address as Input_AddressInput?),
    }),
  );

  CopyWith_Input_AddressInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressInput.stub(_then(_instance))
        : CopyWith_Input_AddressInput(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl_Input_CreateStoreInput<TRes>
    implements CopyWith_Input_CreateStoreInput<TRes> {
  _CopyWithStubImpl_Input_CreateStoreInput(this._res);

  TRes _res;

  call({
    String? name,
    String? adminFamilyId,
    int? color,
    Input_AddressInput? address,
  }) => _res;

  CopyWith_Input_AddressInput<TRes> get address =>
      CopyWith_Input_AddressInput.stub(_res);
}

class Input_StoreWithinPolygonFieldInput {
  factory Input_StoreWithinPolygonFieldInput({required Json polygon}) =>
      Input_StoreWithinPolygonFieldInput._({r'polygon': polygon});

  Input_StoreWithinPolygonFieldInput._(this._$data);

  factory Input_StoreWithinPolygonFieldInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$polygon = data['polygon'];
    result$data['polygon'] = (l$polygon as Json);
    return Input_StoreWithinPolygonFieldInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json get polygon => (_$data['polygon'] as Json);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$polygon = polygon;
    result$data['polygon'] = l$polygon;
    return result$data;
  }

  CopyWith_Input_StoreWithinPolygonFieldInput<
    Input_StoreWithinPolygonFieldInput
  >
  get copyWith => CopyWith_Input_StoreWithinPolygonFieldInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoreWithinPolygonFieldInput ||
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

abstract class CopyWith_Input_StoreWithinPolygonFieldInput<TRes> {
  factory CopyWith_Input_StoreWithinPolygonFieldInput(
    Input_StoreWithinPolygonFieldInput instance,
    TRes Function(Input_StoreWithinPolygonFieldInput) then,
  ) = _CopyWithImpl_Input_StoreWithinPolygonFieldInput;

  factory CopyWith_Input_StoreWithinPolygonFieldInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoreWithinPolygonFieldInput;

  TRes call({Json? polygon});
}

class _CopyWithImpl_Input_StoreWithinPolygonFieldInput<TRes>
    implements CopyWith_Input_StoreWithinPolygonFieldInput<TRes> {
  _CopyWithImpl_Input_StoreWithinPolygonFieldInput(this._instance, this._then);

  final Input_StoreWithinPolygonFieldInput _instance;

  final TRes Function(Input_StoreWithinPolygonFieldInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? polygon = _undefined}) => _then(
    Input_StoreWithinPolygonFieldInput._({
      ..._instance._$data,
      if (polygon != _undefined && polygon != null)
        'polygon': (polygon as Json),
    }),
  );
}

class _CopyWithStubImpl_Input_StoreWithinPolygonFieldInput<TRes>
    implements CopyWith_Input_StoreWithinPolygonFieldInput<TRes> {
  _CopyWithStubImpl_Input_StoreWithinPolygonFieldInput(this._res);

  TRes _res;

  call({Json? polygon}) => _res;
}

class Input_StoreFilterWithinPolygon {
  factory Input_StoreFilterWithinPolygon({
    Input_StoreWithinPolygonFieldInput? input,
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
  }) => Input_StoreFilterWithinPolygon._({
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

  Input_StoreFilterWithinPolygon._(this._$data);

  factory Input_StoreFilterWithinPolygon.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_StoreWithinPolygonFieldInput.fromJson(
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
    return Input_StoreFilterWithinPolygon._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoreWithinPolygonFieldInput? get input =>
      (_$data['input'] as Input_StoreWithinPolygonFieldInput?);

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

  CopyWith_Input_StoreFilterWithinPolygon<Input_StoreFilterWithinPolygon>
  get copyWith => CopyWith_Input_StoreFilterWithinPolygon(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoreFilterWithinPolygon ||
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

abstract class CopyWith_Input_StoreFilterWithinPolygon<TRes> {
  factory CopyWith_Input_StoreFilterWithinPolygon(
    Input_StoreFilterWithinPolygon instance,
    TRes Function(Input_StoreFilterWithinPolygon) then,
  ) = _CopyWithImpl_Input_StoreFilterWithinPolygon;

  factory CopyWith_Input_StoreFilterWithinPolygon.stub(TRes res) =
      _CopyWithStubImpl_Input_StoreFilterWithinPolygon;

  TRes call({
    Input_StoreWithinPolygonFieldInput? input,
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
  CopyWith_Input_StoreWithinPolygonFieldInput<TRes> get input;
}

class _CopyWithImpl_Input_StoreFilterWithinPolygon<TRes>
    implements CopyWith_Input_StoreFilterWithinPolygon<TRes> {
  _CopyWithImpl_Input_StoreFilterWithinPolygon(this._instance, this._then);

  final Input_StoreFilterWithinPolygon _instance;

  final TRes Function(Input_StoreFilterWithinPolygon) _then;

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
    Input_StoreFilterWithinPolygon._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input_StoreWithinPolygonFieldInput?),
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

  CopyWith_Input_StoreWithinPolygonFieldInput<TRes> get input {
    final local$input = _instance.input;
    return local$input == null
        ? CopyWith_Input_StoreWithinPolygonFieldInput.stub(_then(_instance))
        : CopyWith_Input_StoreWithinPolygonFieldInput(
            local$input,
            (e) => call(input: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoreFilterWithinPolygon<TRes>
    implements CopyWith_Input_StoreFilterWithinPolygon<TRes> {
  _CopyWithStubImpl_Input_StoreFilterWithinPolygon(this._res);

  TRes _res;

  call({
    Input_StoreWithinPolygonFieldInput? input,
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

  CopyWith_Input_StoreWithinPolygonFieldInput<TRes> get input =>
      CopyWith_Input_StoreWithinPolygonFieldInput.stub(_res);
}

class Input_StoreFilterUserCanEdit {
  factory Input_StoreFilterUserCanEdit({
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
  }) => Input_StoreFilterUserCanEdit._({
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

  Input_StoreFilterUserCanEdit._(this._$data);

  factory Input_StoreFilterUserCanEdit.fromJson(Map<String, dynamic> data) {
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
    return Input_StoreFilterUserCanEdit._(result$data);
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

  CopyWith_Input_StoreFilterUserCanEdit<Input_StoreFilterUserCanEdit>
  get copyWith => CopyWith_Input_StoreFilterUserCanEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoreFilterUserCanEdit ||
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

abstract class CopyWith_Input_StoreFilterUserCanEdit<TRes> {
  factory CopyWith_Input_StoreFilterUserCanEdit(
    Input_StoreFilterUserCanEdit instance,
    TRes Function(Input_StoreFilterUserCanEdit) then,
  ) = _CopyWithImpl_Input_StoreFilterUserCanEdit;

  factory CopyWith_Input_StoreFilterUserCanEdit.stub(TRes res) =
      _CopyWithStubImpl_Input_StoreFilterUserCanEdit;

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

class _CopyWithImpl_Input_StoreFilterUserCanEdit<TRes>
    implements CopyWith_Input_StoreFilterUserCanEdit<TRes> {
  _CopyWithImpl_Input_StoreFilterUserCanEdit(this._instance, this._then);

  final Input_StoreFilterUserCanEdit _instance;

  final TRes Function(Input_StoreFilterUserCanEdit) _then;

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
    Input_StoreFilterUserCanEdit._({
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

class _CopyWithStubImpl_Input_StoreFilterUserCanEdit<TRes>
    implements CopyWith_Input_StoreFilterUserCanEdit<TRes> {
  _CopyWithStubImpl_Input_StoreFilterUserCanEdit(this._res);

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

class Input_StoreFilterLastEdit {
  factory Input_StoreFilterLastEdit({
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
  }) => Input_StoreFilterLastEdit._({
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

  Input_StoreFilterLastEdit._(this._$data);

  factory Input_StoreFilterLastEdit.fromJson(Map<String, dynamic> data) {
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
    return Input_StoreFilterLastEdit._(result$data);
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

  CopyWith_Input_StoreFilterLastEdit<Input_StoreFilterLastEdit> get copyWith =>
      CopyWith_Input_StoreFilterLastEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoreFilterLastEdit ||
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

abstract class CopyWith_Input_StoreFilterLastEdit<TRes> {
  factory CopyWith_Input_StoreFilterLastEdit(
    Input_StoreFilterLastEdit instance,
    TRes Function(Input_StoreFilterLastEdit) then,
  ) = _CopyWithImpl_Input_StoreFilterLastEdit;

  factory CopyWith_Input_StoreFilterLastEdit.stub(TRes res) =
      _CopyWithStubImpl_Input_StoreFilterLastEdit;

  TRes call({
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
  });
}

class _CopyWithImpl_Input_StoreFilterLastEdit<TRes>
    implements CopyWith_Input_StoreFilterLastEdit<TRes> {
  _CopyWithImpl_Input_StoreFilterLastEdit(this._instance, this._then);

  final Input_StoreFilterLastEdit _instance;

  final TRes Function(Input_StoreFilterLastEdit) _then;

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
    Input_StoreFilterLastEdit._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as DateTime?),
      if (notEq != _undefined) 'notEq': (notEq as DateTime?),
      if ($in != _undefined) 'in': ($in as List<DateTime?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as DateTime?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as DateTime?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as DateTime?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as DateTime?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as DateTime?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoreFilterLastEdit<TRes>
    implements CopyWith_Input_StoreFilterLastEdit<TRes> {
  _CopyWithStubImpl_Input_StoreFilterLastEdit(this._res);

  TRes _res;

  call({
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
  }) => _res;
}

class Input_StoreFilterAdminFamilyName {
  factory Input_StoreFilterAdminFamilyName({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_StoreFilterAdminFamilyName._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_StoreFilterAdminFamilyName._(this._$data);

  factory Input_StoreFilterAdminFamilyName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_StoreFilterAdminFamilyName._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

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
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_StoreFilterAdminFamilyName<Input_StoreFilterAdminFamilyName>
  get copyWith => CopyWith_Input_StoreFilterAdminFamilyName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoreFilterAdminFamilyName ||
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
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
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
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
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
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
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
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}
