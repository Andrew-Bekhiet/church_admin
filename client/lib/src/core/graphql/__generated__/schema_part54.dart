// Part 54 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_StoresStddevSampOrderBy<TRes> {
  factory CopyWith_Input_StoresStddevSampOrderBy(
    Input_StoresStddevSampOrderBy instance,
    TRes Function(Input_StoresStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_StoresStddevSampOrderBy;

  factory CopyWith_Input_StoresStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresStddevSampOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresStddevSampOrderBy<TRes>
    implements CopyWith_Input_StoresStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_StoresStddevSampOrderBy(this._instance, this._then);

  final Input_StoresStddevSampOrderBy _instance;

  final TRes Function(Input_StoresStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresStddevSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresStddevSampOrderBy<TRes>
    implements CopyWith_Input_StoresStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StoresStreamCursorInput {
  factory Input_StoresStreamCursorInput({
    required Input_StoresStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_StoresStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_StoresStreamCursorInput._(this._$data);

  factory Input_StoresStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_StoresStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_StoresStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoresStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_StoresStreamCursorValueInput);

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

  CopyWith_Input_StoresStreamCursorInput<Input_StoresStreamCursorInput>
  get copyWith => CopyWith_Input_StoresStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresStreamCursorInput ||
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

abstract class CopyWith_Input_StoresStreamCursorInput<TRes> {
  factory CopyWith_Input_StoresStreamCursorInput(
    Input_StoresStreamCursorInput instance,
    TRes Function(Input_StoresStreamCursorInput) then,
  ) = _CopyWithImpl_Input_StoresStreamCursorInput;

  factory CopyWith_Input_StoresStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresStreamCursorInput;

  TRes call({
    Input_StoresStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_StoresStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_StoresStreamCursorInput<TRes>
    implements CopyWith_Input_StoresStreamCursorInput<TRes> {
  _CopyWithImpl_Input_StoresStreamCursorInput(this._instance, this._then);

  final Input_StoresStreamCursorInput _instance;

  final TRes Function(Input_StoresStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_StoresStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_StoresStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_StoresStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_StoresStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_StoresStreamCursorInput<TRes>
    implements CopyWith_Input_StoresStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_StoresStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_StoresStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_StoresStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_StoresStreamCursorValueInput.stub(_res);
}

class Input_StoresStreamCursorValueInput {
  factory Input_StoresStreamCursorValueInput({
    UuidValue? adminFamily,
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
  }) => Input_StoresStreamCursorValueInput._({
    if (adminFamily != null) r'adminFamily': adminFamily,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
  });

  Input_StoresStreamCursorValueInput._(this._$data);

  factory Input_StoresStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminFamily')) {
      final l$adminFamily = data['adminFamily'];
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : stringToUuid(l$adminFamily);
    }
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
    return Input_StoresStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get adminFamily => (_$data['adminFamily'] as UuidValue?);

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminFamily')) {
      final l$adminFamily = adminFamily;
      result$data['adminFamily'] = l$adminFamily == null
          ? null
          : uuidToString(l$adminFamily);
    }
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

  CopyWith_Input_StoresStreamCursorValueInput<
    Input_StoresStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_StoresStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StoresStreamCursorValueInput<TRes> {
  factory CopyWith_Input_StoresStreamCursorValueInput(
    Input_StoresStreamCursorValueInput instance,
    TRes Function(Input_StoresStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_StoresStreamCursorValueInput;

  factory CopyWith_Input_StoresStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresStreamCursorValueInput;

  TRes call({
    UuidValue? adminFamily,
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl_Input_StoresStreamCursorValueInput<TRes>
    implements CopyWith_Input_StoresStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_StoresStreamCursorValueInput(this._instance, this._then);

  final Input_StoresStreamCursorValueInput _instance;

  final TRes Function(Input_StoresStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminFamily = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) => _then(
    Input_StoresStreamCursorValueInput._({
      ..._instance._$data,
      if (adminFamily != _undefined) 'adminFamily': (adminFamily as UuidValue?),
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (color != _undefined) 'color': (color as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresStreamCursorValueInput<TRes>
    implements CopyWith_Input_StoresStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_StoresStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? adminFamily,
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
  }) => _res;
}

class Input_StoresSumOrderBy {
  factory Input_StoresSumOrderBy({Enum_OrderBy? color}) =>
      Input_StoresSumOrderBy._({if (color != null) r'color': color});

  Input_StoresSumOrderBy._(this._$data);

  factory Input_StoresSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresSumOrderBy._(result$data);
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

  CopyWith_Input_StoresSumOrderBy<Input_StoresSumOrderBy> get copyWith =>
      CopyWith_Input_StoresSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresSumOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StoresSumOrderBy<TRes> {
  factory CopyWith_Input_StoresSumOrderBy(
    Input_StoresSumOrderBy instance,
    TRes Function(Input_StoresSumOrderBy) then,
  ) = _CopyWithImpl_Input_StoresSumOrderBy;

  factory CopyWith_Input_StoresSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresSumOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresSumOrderBy<TRes>
    implements CopyWith_Input_StoresSumOrderBy<TRes> {
  _CopyWithImpl_Input_StoresSumOrderBy(this._instance, this._then);

  final Input_StoresSumOrderBy _instance;

  final TRes Function(Input_StoresSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresSumOrderBy<TRes>
    implements CopyWith_Input_StoresSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StoresUpdates {
  factory Input_StoresUpdates({
    Input_StoresIncInput? $_inc,
    Input_StoresSetInput? $_set,
    required Input_StoresBoolExp where,
  }) => Input_StoresUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_StoresUpdates._(this._$data);

  factory Input_StoresUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_StoresIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_StoresSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_StoresBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_StoresUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoresIncInput? get $_inc => (_$data['_inc'] as Input_StoresIncInput?);

  Input_StoresSetInput? get $_set => (_$data['_set'] as Input_StoresSetInput?);

  Input_StoresBoolExp get where => (_$data['where'] as Input_StoresBoolExp);

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

  CopyWith_Input_StoresUpdates<Input_StoresUpdates> get copyWith =>
      CopyWith_Input_StoresUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StoresUpdates<TRes> {
  factory CopyWith_Input_StoresUpdates(
    Input_StoresUpdates instance,
    TRes Function(Input_StoresUpdates) then,
  ) = _CopyWithImpl_Input_StoresUpdates;

  factory CopyWith_Input_StoresUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresUpdates;

  TRes call({
    Input_StoresIncInput? $_inc,
    Input_StoresSetInput? $_set,
    Input_StoresBoolExp? where,
  });
  CopyWith_Input_StoresIncInput<TRes> get $_inc;
  CopyWith_Input_StoresSetInput<TRes> get $_set;
  CopyWith_Input_StoresBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StoresUpdates<TRes>
    implements CopyWith_Input_StoresUpdates<TRes> {
  _CopyWithImpl_Input_StoresUpdates(this._instance, this._then);

  final Input_StoresUpdates _instance;

  final TRes Function(Input_StoresUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_StoresUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_StoresIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_StoresSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_StoresBoolExp),
    }),
  );

  CopyWith_Input_StoresIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_StoresIncInput.stub(_then(_instance))
        : CopyWith_Input_StoresIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_StoresSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_StoresSetInput.stub(_then(_instance))
        : CopyWith_Input_StoresSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_StoresBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_StoresBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StoresUpdates<TRes>
    implements CopyWith_Input_StoresUpdates<TRes> {
  _CopyWithStubImpl_Input_StoresUpdates(this._res);

  TRes _res;

  call({
    Input_StoresIncInput? $_inc,
    Input_StoresSetInput? $_set,
    Input_StoresBoolExp? where,
  }) => _res;

  CopyWith_Input_StoresIncInput<TRes> get $_inc =>
      CopyWith_Input_StoresIncInput.stub(_res);

  CopyWith_Input_StoresSetInput<TRes> get $_set =>
      CopyWith_Input_StoresSetInput.stub(_res);

  CopyWith_Input_StoresBoolExp<TRes> get where =>
      CopyWith_Input_StoresBoolExp.stub(_res);
}

class Input_StoresVarPopOrderBy {
  factory Input_StoresVarPopOrderBy({Enum_OrderBy? color}) =>
      Input_StoresVarPopOrderBy._({if (color != null) r'color': color});

  Input_StoresVarPopOrderBy._(this._$data);

  factory Input_StoresVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresVarPopOrderBy._(result$data);
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

  CopyWith_Input_StoresVarPopOrderBy<Input_StoresVarPopOrderBy> get copyWith =>
      CopyWith_Input_StoresVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresVarPopOrderBy ||
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

abstract class CopyWith_Input_StoresVarPopOrderBy<TRes> {
  factory CopyWith_Input_StoresVarPopOrderBy(
    Input_StoresVarPopOrderBy instance,
    TRes Function(Input_StoresVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_StoresVarPopOrderBy;

  factory CopyWith_Input_StoresVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresVarPopOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresVarPopOrderBy<TRes>
    implements CopyWith_Input_StoresVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_StoresVarPopOrderBy(this._instance, this._then);

  final Input_StoresVarPopOrderBy _instance;

  final TRes Function(Input_StoresVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresVarPopOrderBy<TRes>
    implements CopyWith_Input_StoresVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StoresVarSampOrderBy {
  factory Input_StoresVarSampOrderBy({Enum_OrderBy? color}) =>
      Input_StoresVarSampOrderBy._({if (color != null) r'color': color});

  Input_StoresVarSampOrderBy._(this._$data);

  factory Input_StoresVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresVarSampOrderBy._(result$data);
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

  CopyWith_Input_StoresVarSampOrderBy<Input_StoresVarSampOrderBy>
  get copyWith => CopyWith_Input_StoresVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresVarSampOrderBy ||
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

abstract class CopyWith_Input_StoresVarSampOrderBy<TRes> {
  factory CopyWith_Input_StoresVarSampOrderBy(
    Input_StoresVarSampOrderBy instance,
    TRes Function(Input_StoresVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_StoresVarSampOrderBy;

  factory CopyWith_Input_StoresVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresVarSampOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresVarSampOrderBy<TRes>
    implements CopyWith_Input_StoresVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_StoresVarSampOrderBy(this._instance, this._then);

  final Input_StoresVarSampOrderBy _instance;

  final TRes Function(Input_StoresVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresVarSampOrderBy<TRes>
    implements CopyWith_Input_StoresVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StoresVarianceOrderBy {
  factory Input_StoresVarianceOrderBy({Enum_OrderBy? color}) =>
      Input_StoresVarianceOrderBy._({if (color != null) r'color': color});

  Input_StoresVarianceOrderBy._(this._$data);

  factory Input_StoresVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_StoresVarianceOrderBy._(result$data);
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

  CopyWith_Input_StoresVarianceOrderBy<Input_StoresVarianceOrderBy>
  get copyWith => CopyWith_Input_StoresVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoresVarianceOrderBy ||
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

abstract class CopyWith_Input_StoresVarianceOrderBy<TRes> {
  factory CopyWith_Input_StoresVarianceOrderBy(
    Input_StoresVarianceOrderBy instance,
    TRes Function(Input_StoresVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_StoresVarianceOrderBy;

  factory CopyWith_Input_StoresVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StoresVarianceOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_StoresVarianceOrderBy<TRes>
    implements CopyWith_Input_StoresVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_StoresVarianceOrderBy(this._instance, this._then);

  final Input_StoresVarianceOrderBy _instance;

  final TRes Function(Input_StoresVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_StoresVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_StoresVarianceOrderBy<TRes>
    implements CopyWith_Input_StoresVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_StoresVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_StreetsBoolExp {
  factory Input_StreetsBoolExp({
    List<Input_StreetsBoolExp>? $_and,
    Input_StreetsBoolExp? $_not,
    List<Input_StreetsBoolExp>? $_or,
    Input_AddressesBoolExp? addresses,
    Input_AreasStreetsBoolExp? areas,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryLatestVisitsBoolExp? lastVisit,
    Input_GeographyComparisonExp? line,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_BooleanComparisonExp? userCanEdit,
  }) => Input_StreetsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (addresses != null) r'addresses': addresses,
    if (areas != null) r'areas': areas,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistory != null) r'editHistory': editHistory,
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

  Input_StreetsBoolExp._(this._$data);

  factory Input_StreetsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_StreetsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_StreetsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_StreetsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = l$addresses == null
          ? null
          : Input_AddressesBoolExp.fromJson(
              (l$addresses as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areas')) {
      final l$areas = data['areas'];
      result$data['areas'] = l$areas == null
          ? null
          : Input_AreasStreetsBoolExp.fromJson(
              (l$areas as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = l$editHistory == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
            );
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
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_HistoryLatestVisitsBoolExp.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = l$line == null
          ? null
          : Input_GeographyComparisonExp.fromJson(
              (l$line as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_StreetsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StreetsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_StreetsBoolExp>?);

  Input_StreetsBoolExp? get $_not => (_$data['_not'] as Input_StreetsBoolExp?);

  List<Input_StreetsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_StreetsBoolExp>?);

  Input_AddressesBoolExp? get addresses =>
      (_$data['addresses'] as Input_AddressesBoolExp?);

  Input_AreasStreetsBoolExp? get areas =>
      (_$data['areas'] as Input_AreasStreetsBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryLatestVisitsBoolExp? get lastVisit =>
      (_$data['lastVisit'] as Input_HistoryLatestVisitsBoolExp?);

  Input_GeographyComparisonExp? get line =>
      (_$data['line'] as Input_GeographyComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

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
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.toJson();
    }
    if (_$data.containsKey('areas')) {
      final l$areas = areas;
      result$data['areas'] = l$areas?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
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
      result$data['line'] = l$line?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StreetsBoolExp<Input_StreetsBoolExp> get copyWith =>
      CopyWith_Input_StreetsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsBoolExp || runtimeType != other.runtimeType) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$addresses = addresses;
    final l$areas = areas;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$lastVisit = lastVisit;
    final l$line = line;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$userCanEdit = userCanEdit;
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
      _$data.containsKey('addresses') ? l$addresses : const {},
      _$data.containsKey('areas') ? l$areas : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
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

abstract class CopyWith_Input_StreetsBoolExp<TRes> {
  factory CopyWith_Input_StreetsBoolExp(
    Input_StreetsBoolExp instance,
    TRes Function(Input_StreetsBoolExp) then,
  ) = _CopyWithImpl_Input_StreetsBoolExp;

  factory CopyWith_Input_StreetsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetsBoolExp;

  TRes call({
    List<Input_StreetsBoolExp>? $_and,
    Input_StreetsBoolExp? $_not,
    List<Input_StreetsBoolExp>? $_or,
    Input_AddressesBoolExp? addresses,
    Input_AreasStreetsBoolExp? areas,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryLatestVisitsBoolExp? lastVisit,
    Input_GeographyComparisonExp? line,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_BooleanComparisonExp? userCanEdit,
  });
  TRes $_and(
    Iterable<Input_StreetsBoolExp>? Function(
      Iterable<CopyWith_Input_StreetsBoolExp<Input_StreetsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_StreetsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_StreetsBoolExp>? Function(
      Iterable<CopyWith_Input_StreetsBoolExp<Input_StreetsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AddressesBoolExp<TRes> get addresses;
  CopyWith_Input_AreasStreetsBoolExp<TRes> get areas;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get lastVisit;
  CopyWith_Input_GeographyComparisonExp<TRes> get line;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_StreetsBoolExp<TRes>
    implements CopyWith_Input_StreetsBoolExp<TRes> {
  _CopyWithImpl_Input_StreetsBoolExp(this._instance, this._then);

  final Input_StreetsBoolExp _instance;

  final TRes Function(Input_StreetsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? addresses = _undefined,
    Object? areas = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? lastVisit = _undefined,
    Object? line = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_StreetsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_StreetsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_StreetsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_StreetsBoolExp>?),
      if (addresses != _undefined)
        'addresses': (addresses as Input_AddressesBoolExp?),
      if (areas != _undefined) 'areas': (areas as Input_AreasStreetsBoolExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (editHistory != _undefined)
        'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_HistoryLatestVisitsBoolExp?),
      if (line != _undefined) 'line': (line as Input_GeographyComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_BooleanComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_StreetsBoolExp>? Function(
      Iterable<CopyWith_Input_StreetsBoolExp<Input_StreetsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_StreetsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_StreetsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_StreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StreetsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_StreetsBoolExp>? Function(
      Iterable<CopyWith_Input_StreetsBoolExp<Input_StreetsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_StreetsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AddressesBoolExp<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(
            local$addresses,
            (e) => call(addresses: e),
          );
  }

  CopyWith_Input_AreasStreetsBoolExp<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Input_AreasStreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasStreetsBoolExp(
            local$areas,
            (e) => call(areas: e),
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

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestVisitsBoolExp(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_GeographyComparisonExp<TRes> get line {
    final local$line = _instance.line;
    return local$line == null
        ? CopyWith_Input_GeographyComparisonExp.stub(_then(_instance))
        : CopyWith_Input_GeographyComparisonExp(
            local$line,
            (e) => call(line: e),
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

class _CopyWithStubImpl_Input_StreetsBoolExp<TRes>
    implements CopyWith_Input_StreetsBoolExp<TRes> {
  _CopyWithStubImpl_Input_StreetsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_StreetsBoolExp>? $_and,
    Input_StreetsBoolExp? $_not,
    List<Input_StreetsBoolExp>? $_or,
    Input_AddressesBoolExp? addresses,
    Input_AreasStreetsBoolExp? areas,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryLatestVisitsBoolExp? lastVisit,
    Input_GeographyComparisonExp? line,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_BooleanComparisonExp? userCanEdit,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_StreetsBoolExp<TRes> get $_not =>
      CopyWith_Input_StreetsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get addresses =>
      CopyWith_Input_AddressesBoolExp.stub(_res);

  CopyWith_Input_AreasStreetsBoolExp<TRes> get areas =>
      CopyWith_Input_AreasStreetsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

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

  CopyWith_Input_HistoryLatestVisitsBoolExp<TRes> get lastVisit =>
      CopyWith_Input_HistoryLatestVisitsBoolExp.stub(_res);

  CopyWith_Input_GeographyComparisonExp<TRes> get line =>
      CopyWith_Input_GeographyComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_StreetsIncInput {
  factory Input_StreetsIncInput({int? color}) =>
      Input_StreetsIncInput._({if (color != null) r'color': color});

  Input_StreetsIncInput._(this._$data);

  factory Input_StreetsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_StreetsIncInput._(result$data);
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

  CopyWith_Input_StreetsIncInput<Input_StreetsIncInput> get copyWith =>
      CopyWith_Input_StreetsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetsIncInput || runtimeType != other.runtimeType) {
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
