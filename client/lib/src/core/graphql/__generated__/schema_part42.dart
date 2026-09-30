// Part 42 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonStatesOrderBy<TRes> {
  factory CopyWith_Input_PersonStatesOrderBy(
    Input_PersonStatesOrderBy instance,
    TRes Function(Input_PersonStatesOrderBy) then,
  ) = _CopyWithImpl_Input_PersonStatesOrderBy;

  factory CopyWith_Input_PersonStatesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonStatesOrderBy<TRes>
    implements CopyWith_Input_PersonStatesOrderBy<TRes> {
  _CopyWithImpl_Input_PersonStatesOrderBy(this._instance, this._then);

  final Input_PersonStatesOrderBy _instance;

  final TRes Function(Input_PersonStatesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_PersonStatesOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonStatesOrderBy<TRes>
    implements CopyWith_Input_PersonStatesOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonStatesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_PersonStatesPkColumnsInput {
  factory Input_PersonStatesPkColumnsInput({required UuidValue id}) =>
      Input_PersonStatesPkColumnsInput._({r'id': id});

  Input_PersonStatesPkColumnsInput._(this._$data);

  factory Input_PersonStatesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_PersonStatesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_PersonStatesPkColumnsInput<Input_PersonStatesPkColumnsInput>
  get copyWith => CopyWith_Input_PersonStatesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesPkColumnsInput ||
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

abstract class CopyWith_Input_PersonStatesPkColumnsInput<TRes> {
  factory CopyWith_Input_PersonStatesPkColumnsInput(
    Input_PersonStatesPkColumnsInput instance,
    TRes Function(Input_PersonStatesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_PersonStatesPkColumnsInput;

  factory CopyWith_Input_PersonStatesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_PersonStatesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonStatesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_PersonStatesPkColumnsInput(this._instance, this._then);

  final Input_PersonStatesPkColumnsInput _instance;

  final TRes Function(Input_PersonStatesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_PersonStatesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonStatesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonStatesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_PersonStatesSetInput {
  factory Input_PersonStatesSetInput({int? color, String? name}) =>
      Input_PersonStatesSetInput._({
        if (color != null) r'color': color,
        if (name != null) r'name': name,
      });

  Input_PersonStatesSetInput._(this._$data);

  factory Input_PersonStatesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_PersonStatesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_PersonStatesSetInput<Input_PersonStatesSetInput>
  get copyWith => CopyWith_Input_PersonStatesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesSetInput ||
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
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesSetInput<TRes> {
  factory CopyWith_Input_PersonStatesSetInput(
    Input_PersonStatesSetInput instance,
    TRes Function(Input_PersonStatesSetInput) then,
  ) = _CopyWithImpl_Input_PersonStatesSetInput;

  factory CopyWith_Input_PersonStatesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesSetInput;

  TRes call({int? color, String? name});
}

class _CopyWithImpl_Input_PersonStatesSetInput<TRes>
    implements CopyWith_Input_PersonStatesSetInput<TRes> {
  _CopyWithImpl_Input_PersonStatesSetInput(this._instance, this._then);

  final Input_PersonStatesSetInput _instance;

  final TRes Function(Input_PersonStatesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined, Object? name = _undefined}) => _then(
    Input_PersonStatesSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonStatesSetInput<TRes>
    implements CopyWith_Input_PersonStatesSetInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesSetInput(this._res);

  TRes _res;

  call({int? color, String? name}) => _res;
}

class Input_PersonStatesStreamCursorInput {
  factory Input_PersonStatesStreamCursorInput({
    required Input_PersonStatesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonStatesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonStatesStreamCursorInput._(this._$data);

  factory Input_PersonStatesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonStatesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonStatesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonStatesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonStatesStreamCursorValueInput);

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

  CopyWith_Input_PersonStatesStreamCursorInput<
    Input_PersonStatesStreamCursorInput
  >
  get copyWith => CopyWith_Input_PersonStatesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesStreamCursorInput ||
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

abstract class CopyWith_Input_PersonStatesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonStatesStreamCursorInput(
    Input_PersonStatesStreamCursorInput instance,
    TRes Function(Input_PersonStatesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonStatesStreamCursorInput;

  factory CopyWith_Input_PersonStatesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesStreamCursorInput;

  TRes call({
    Input_PersonStatesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonStatesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonStatesStreamCursorInput(this._instance, this._then);

  final Input_PersonStatesStreamCursorInput _instance;

  final TRes Function(Input_PersonStatesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonStatesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonStatesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonStatesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonStatesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonStatesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonStatesStreamCursorValueInput.stub(_res);
}

class Input_PersonStatesStreamCursorValueInput {
  factory Input_PersonStatesStreamCursorValueInput({
    int? color,
    UuidValue? id,
    String? name,
  }) => Input_PersonStatesStreamCursorValueInput._({
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_PersonStatesStreamCursorValueInput._(this._$data);

  factory Input_PersonStatesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    return Input_PersonStatesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_PersonStatesStreamCursorValueInput<
    Input_PersonStatesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonStatesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesStreamCursorValueInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonStatesStreamCursorValueInput(
    Input_PersonStatesStreamCursorValueInput instance,
    TRes Function(Input_PersonStatesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonStatesStreamCursorValueInput;

  factory CopyWith_Input_PersonStatesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesStreamCursorValueInput;

  TRes call({int? color, UuidValue? id, String? name});
}

class _CopyWithImpl_Input_PersonStatesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonStatesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesStreamCursorValueInput _instance;

  final TRes Function(Input_PersonStatesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_PersonStatesStreamCursorValueInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonStatesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesStreamCursorValueInput(this._res);

  TRes _res;

  call({int? color, UuidValue? id, String? name}) => _res;
}

class Input_PersonStatesUpdates {
  factory Input_PersonStatesUpdates({
    Input_PersonStatesIncInput? $_inc,
    Input_PersonStatesSetInput? $_set,
    required Input_PersonStatesBoolExp where,
  }) => Input_PersonStatesUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_PersonStatesUpdates._(this._$data);

  factory Input_PersonStatesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_PersonStatesIncInput.fromJson(
              (l$$_inc as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_PersonStatesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_PersonStatesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonStatesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonStatesIncInput? get $_inc =>
      (_$data['_inc'] as Input_PersonStatesIncInput?);

  Input_PersonStatesSetInput? get $_set =>
      (_$data['_set'] as Input_PersonStatesSetInput?);

  Input_PersonStatesBoolExp get where =>
      (_$data['where'] as Input_PersonStatesBoolExp);

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

  CopyWith_Input_PersonStatesUpdates<Input_PersonStatesUpdates> get copyWith =>
      CopyWith_Input_PersonStatesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesUpdates ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_PersonStatesUpdates<TRes> {
  factory CopyWith_Input_PersonStatesUpdates(
    Input_PersonStatesUpdates instance,
    TRes Function(Input_PersonStatesUpdates) then,
  ) = _CopyWithImpl_Input_PersonStatesUpdates;

  factory CopyWith_Input_PersonStatesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesUpdates;

  TRes call({
    Input_PersonStatesIncInput? $_inc,
    Input_PersonStatesSetInput? $_set,
    Input_PersonStatesBoolExp? where,
  });
  CopyWith_Input_PersonStatesIncInput<TRes> get $_inc;
  CopyWith_Input_PersonStatesSetInput<TRes> get $_set;
  CopyWith_Input_PersonStatesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonStatesUpdates<TRes>
    implements CopyWith_Input_PersonStatesUpdates<TRes> {
  _CopyWithImpl_Input_PersonStatesUpdates(this._instance, this._then);

  final Input_PersonStatesUpdates _instance;

  final TRes Function(Input_PersonStatesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonStatesUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_PersonStatesIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_PersonStatesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_PersonStatesBoolExp),
    }),
  );

  CopyWith_Input_PersonStatesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_PersonStatesIncInput.stub(_then(_instance))
        : CopyWith_Input_PersonStatesIncInput(
            local$$_inc,
            (e) => call($_inc: e),
          );
  }

  CopyWith_Input_PersonStatesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_PersonStatesSetInput.stub(_then(_instance))
        : CopyWith_Input_PersonStatesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_PersonStatesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonStatesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonStatesUpdates<TRes>
    implements CopyWith_Input_PersonStatesUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonStatesUpdates(this._res);

  TRes _res;

  call({
    Input_PersonStatesIncInput? $_inc,
    Input_PersonStatesSetInput? $_set,
    Input_PersonStatesBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonStatesIncInput<TRes> get $_inc =>
      CopyWith_Input_PersonStatesIncInput.stub(_res);

  CopyWith_Input_PersonStatesSetInput<TRes> get $_set =>
      CopyWith_Input_PersonStatesSetInput.stub(_res);

  CopyWith_Input_PersonStatesBoolExp<TRes> get where =>
      CopyWith_Input_PersonStatesBoolExp.stub(_res);
}

class Input_PersonTypesBoolExp {
  factory Input_PersonTypesBoolExp({
    List<Input_PersonTypesBoolExp>? $_and,
    Input_PersonTypesBoolExp? $_not,
    List<Input_PersonTypesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isFamilyAdmin,
    Input_BooleanComparisonExp? isHidden,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_PersonTypesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (isFamilyAdmin != null) r'isFamilyAdmin': isFamilyAdmin,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_PersonTypesBoolExp._(this._$data);

  factory Input_PersonTypesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonTypesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonTypesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonTypesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = data['isFamilyAdmin'];
      result$data['isFamilyAdmin'] = l$isFamilyAdmin == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isFamilyAdmin as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isHidden')) {
      final l$isHidden = data['isHidden'];
      result$data['isHidden'] = l$isHidden == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isHidden as Map<String, dynamic>),
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : Input_IntComparisonExp.fromJson((l$order as Map<String, dynamic>));
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateBoolExp.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonTypesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonTypesBoolExp>?);

  Input_PersonTypesBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonTypesBoolExp?);

  List<Input_PersonTypesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonTypesBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isFamilyAdmin =>
      (_$data['isFamilyAdmin'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get isHidden =>
      (_$data['isHidden'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_IntComparisonExp? get order =>
      (_$data['order'] as Input_IntComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

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
    if (_$data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = isFamilyAdmin;
      result$data['isFamilyAdmin'] = l$isFamilyAdmin?.toJson();
    }
    if (_$data.containsKey('isHidden')) {
      final l$isHidden = isHidden;
      result$data['isHidden'] = l$isHidden?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp> get copyWith =>
      CopyWith_Input_PersonTypesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesBoolExp ||
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (_$data.containsKey('isFamilyAdmin') !=
        other._$data.containsKey('isFamilyAdmin')) {
      return false;
    }
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (_$data.containsKey('isHidden') !=
        other._$data.containsKey('isHidden')) {
      return false;
    }
    if (l$isHidden != lOther$isHidden) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$name = name;
    final l$order = order;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('isFamilyAdmin') ? l$isFamilyAdmin : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonTypesBoolExp<TRes> {
  factory CopyWith_Input_PersonTypesBoolExp(
    Input_PersonTypesBoolExp instance,
    TRes Function(Input_PersonTypesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonTypesBoolExp;

  factory CopyWith_Input_PersonTypesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesBoolExp;

  TRes call({
    List<Input_PersonTypesBoolExp>? $_and,
    Input_PersonTypesBoolExp? $_not,
    List<Input_PersonTypesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isFamilyAdmin,
    Input_BooleanComparisonExp? isHidden,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonTypesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isFamilyAdmin;
  CopyWith_Input_BooleanComparisonExp<TRes> get isHidden;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_IntComparisonExp<TRes> get order;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonTypesBoolExp<TRes>
    implements CopyWith_Input_PersonTypesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonTypesBoolExp(this._instance, this._then);

  final Input_PersonTypesBoolExp _instance;

  final TRes Function(Input_PersonTypesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_PersonTypesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonTypesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonTypesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_PersonTypesBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isFamilyAdmin != _undefined)
        'isFamilyAdmin': (isFamilyAdmin as Input_BooleanComparisonExp?),
      if (isHidden != _undefined)
        'isHidden': (isHidden as Input_BooleanComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (order != _undefined) 'order': (order as Input_IntComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonTypesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonTypesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_PersonTypesBoolExp>? Function(
      Iterable<CopyWith_Input_PersonTypesBoolExp<Input_PersonTypesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonTypesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isFamilyAdmin {
    final local$isFamilyAdmin = _instance.isFamilyAdmin;
    return local$isFamilyAdmin == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isFamilyAdmin,
            (e) => call(isFamilyAdmin: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isHidden {
    final local$isHidden = _instance.isHidden;
    return local$isHidden == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isHidden,
            (e) => call(isHidden: e),
          );
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

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonTypesBoolExp<TRes>
    implements CopyWith_Input_PersonTypesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonTypesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonTypesBoolExp>? $_and,
    Input_PersonTypesBoolExp? $_not,
    List<Input_PersonTypesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isFamilyAdmin,
    Input_BooleanComparisonExp? isHidden,
    Input_StringComparisonExp? name,
    Input_IntComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonTypesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isFamilyAdmin =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isHidden =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get order =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_PersonTypesInsertInput {
  factory Input_PersonTypesInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_PersonTypesInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_PersonTypesInsertInput._(this._$data);

  factory Input_PersonTypesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesInsertInput<Input_PersonTypesInsertInput>
  get copyWith => CopyWith_Input_PersonTypesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonTypesInsertInput<TRes> {
  factory CopyWith_Input_PersonTypesInsertInput(
    Input_PersonTypesInsertInput instance,
    TRes Function(Input_PersonTypesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonTypesInsertInput;

  factory CopyWith_Input_PersonTypesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesInsertInput;

  TRes call({String? name, Input_PersonsArrRelInsertInput? persons});
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_PersonTypesInsertInput<TRes>
    implements CopyWith_Input_PersonTypesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonTypesInsertInput(this._instance, this._then);

  final Input_PersonTypesInsertInput _instance;

  final TRes Function(Input_PersonTypesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? persons = _undefined}) => _then(
    Input_PersonTypesInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonTypesInsertInput<TRes>
    implements CopyWith_Input_PersonTypesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesInsertInput(this._res);

  TRes _res;

  call({String? name, Input_PersonsArrRelInsertInput? persons}) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_PersonTypesObjRelInsertInput {
  factory Input_PersonTypesObjRelInsertInput({
    required Input_PersonTypesInsertInput data,
    Input_PersonTypesOnConflict? onConflict,
  }) => Input_PersonTypesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonTypesObjRelInsertInput._(this._$data);

  factory Input_PersonTypesObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_PersonTypesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonTypesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypesInsertInput get data =>
      (_$data['data'] as Input_PersonTypesInsertInput);

  Input_PersonTypesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonTypesOnConflict?);

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

  CopyWith_Input_PersonTypesObjRelInsertInput<
    Input_PersonTypesObjRelInsertInput
  >
  get copyWith => CopyWith_Input_PersonTypesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesObjRelInsertInput ||
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

abstract class CopyWith_Input_PersonTypesObjRelInsertInput<TRes> {
  factory CopyWith_Input_PersonTypesObjRelInsertInput(
    Input_PersonTypesObjRelInsertInput instance,
    TRes Function(Input_PersonTypesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonTypesObjRelInsertInput;

  factory CopyWith_Input_PersonTypesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesObjRelInsertInput;

  TRes call({
    Input_PersonTypesInsertInput? data,
    Input_PersonTypesOnConflict? onConflict,
  });
  CopyWith_Input_PersonTypesInsertInput<TRes> get data;
  CopyWith_Input_PersonTypesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonTypesObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonTypesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonTypesObjRelInsertInput(this._instance, this._then);

  final Input_PersonTypesObjRelInsertInput _instance;

  final TRes Function(Input_PersonTypesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonTypesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_PersonTypesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonTypesOnConflict?),
        }),
      );

  CopyWith_Input_PersonTypesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_PersonTypesInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_PersonTypesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonTypesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonTypesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonTypesObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonTypesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonTypesInsertInput? data,
    Input_PersonTypesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_PersonTypesInsertInput<TRes> get data =>
      CopyWith_Input_PersonTypesInsertInput.stub(_res);

  CopyWith_Input_PersonTypesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonTypesOnConflict.stub(_res);
}

class Input_PersonTypesOnConflict {
  factory Input_PersonTypesOnConflict({
    required Enum_PersonTypesConstraint constraint,
    List<Enum_PersonTypesUpdateColumn>? updateColumns,
    Input_PersonTypesBoolExp? where,
  }) => Input_PersonTypesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonTypesOnConflict._(this._$data);

  factory Input_PersonTypesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonTypesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonTypesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonTypesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonTypesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonTypesConstraint);

  List<Enum_PersonTypesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonTypesUpdateColumn>?);

  Input_PersonTypesBoolExp? get where =>
      (_$data['where'] as Input_PersonTypesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonTypesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonTypesUpdateColumn>)
              .map((e) => toJson_Enum_PersonTypesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesOnConflict<Input_PersonTypesOnConflict>
  get copyWith => CopyWith_Input_PersonTypesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesOnConflict ||
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

abstract class CopyWith_Input_PersonTypesOnConflict<TRes> {
  factory CopyWith_Input_PersonTypesOnConflict(
    Input_PersonTypesOnConflict instance,
    TRes Function(Input_PersonTypesOnConflict) then,
  ) = _CopyWithImpl_Input_PersonTypesOnConflict;

  factory CopyWith_Input_PersonTypesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesOnConflict;

  TRes call({
    Enum_PersonTypesConstraint? constraint,
    List<Enum_PersonTypesUpdateColumn>? updateColumns,
    Input_PersonTypesBoolExp? where,
  });
  CopyWith_Input_PersonTypesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonTypesOnConflict<TRes>
    implements CopyWith_Input_PersonTypesOnConflict<TRes> {
  _CopyWithImpl_Input_PersonTypesOnConflict(this._instance, this._then);

  final Input_PersonTypesOnConflict _instance;

  final TRes Function(Input_PersonTypesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonTypesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_PersonTypesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_PersonTypesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_PersonTypesBoolExp?),
    }),
  );

  CopyWith_Input_PersonTypesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonTypesOnConflict<TRes>
    implements CopyWith_Input_PersonTypesOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonTypesOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonTypesConstraint? constraint,
    List<Enum_PersonTypesUpdateColumn>? updateColumns,
    Input_PersonTypesBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonTypesBoolExp<TRes> get where =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);
}

class Input_PersonTypesOrderBy {
  factory Input_PersonTypesOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? isFamilyAdmin,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_PersonTypesOrderBy._({
    if (id != null) r'id': id,
    if (isFamilyAdmin != null) r'isFamilyAdmin': isFamilyAdmin,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_PersonTypesOrderBy._(this._$data);

  factory Input_PersonTypesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = data['isFamilyAdmin'];
      result$data['isFamilyAdmin'] = l$isFamilyAdmin == null
          ? null
          : fromJson_Enum_OrderBy((l$isFamilyAdmin as String));
    }
    if (data.containsKey('isHidden')) {
      final l$isHidden = data['isHidden'];
      result$data['isHidden'] = l$isHidden == null
          ? null
          : fromJson_Enum_OrderBy((l$isHidden as String));
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
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_PersonTypesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get isFamilyAdmin => (_$data['isFamilyAdmin'] as Enum_OrderBy?);

  Enum_OrderBy? get isHidden => (_$data['isHidden'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get order => (_$data['order'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = isFamilyAdmin;
      result$data['isFamilyAdmin'] = l$isFamilyAdmin == null
          ? null
          : toJson_Enum_OrderBy(l$isFamilyAdmin);
    }
    if (_$data.containsKey('isHidden')) {
      final l$isHidden = isHidden;
      result$data['isHidden'] = l$isHidden == null
          ? null
          : toJson_Enum_OrderBy(l$isHidden);
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
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesOrderBy<Input_PersonTypesOrderBy> get copyWith =>
      CopyWith_Input_PersonTypesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesOrderBy ||
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (_$data.containsKey('isFamilyAdmin') !=
        other._$data.containsKey('isFamilyAdmin')) {
      return false;
    }
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (_$data.containsKey('isHidden') !=
        other._$data.containsKey('isHidden')) {
      return false;
    }
    if (l$isHidden != lOther$isHidden) {
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$name = name;
    final l$order = order;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isFamilyAdmin') ? l$isFamilyAdmin : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonTypesOrderBy<TRes> {
  factory CopyWith_Input_PersonTypesOrderBy(
    Input_PersonTypesOrderBy instance,
    TRes Function(Input_PersonTypesOrderBy) then,
  ) = _CopyWithImpl_Input_PersonTypesOrderBy;

  factory CopyWith_Input_PersonTypesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? isFamilyAdmin,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonTypesOrderBy<TRes>
    implements CopyWith_Input_PersonTypesOrderBy<TRes> {
  _CopyWithImpl_Input_PersonTypesOrderBy(this._instance, this._then);

  final Input_PersonTypesOrderBy _instance;

  final TRes Function(Input_PersonTypesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_PersonTypesOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (isFamilyAdmin != _undefined)
        'isFamilyAdmin': (isFamilyAdmin as Enum_OrderBy?),
      if (isHidden != _undefined) 'isHidden': (isHidden as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (order != _undefined) 'order': (order as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonTypesOrderBy<TRes>
    implements CopyWith_Input_PersonTypesOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonTypesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? isFamilyAdmin,
    Enum_OrderBy? isHidden,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_PersonTypesPkColumnsInput {
  factory Input_PersonTypesPkColumnsInput({required UuidValue id}) =>
      Input_PersonTypesPkColumnsInput._({r'id': id});

  Input_PersonTypesPkColumnsInput._(this._$data);

  factory Input_PersonTypesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_PersonTypesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_PersonTypesPkColumnsInput<Input_PersonTypesPkColumnsInput>
  get copyWith => CopyWith_Input_PersonTypesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesPkColumnsInput ||
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

abstract class CopyWith_Input_PersonTypesPkColumnsInput<TRes> {
  factory CopyWith_Input_PersonTypesPkColumnsInput(
    Input_PersonTypesPkColumnsInput instance,
    TRes Function(Input_PersonTypesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_PersonTypesPkColumnsInput;

  factory CopyWith_Input_PersonTypesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_PersonTypesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonTypesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_PersonTypesPkColumnsInput(this._instance, this._then);

  final Input_PersonTypesPkColumnsInput _instance;

  final TRes Function(Input_PersonTypesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_PersonTypesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonTypesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonTypesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_PersonTypesSetInput {
  factory Input_PersonTypesSetInput({String? name}) =>
      Input_PersonTypesSetInput._({if (name != null) r'name': name});

  Input_PersonTypesSetInput._(this._$data);

  factory Input_PersonTypesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_PersonTypesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_PersonTypesSetInput<Input_PersonTypesSetInput> get copyWith =>
      CopyWith_Input_PersonTypesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesSetInput ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith_Input_PersonTypesSetInput<TRes> {
  factory CopyWith_Input_PersonTypesSetInput(
    Input_PersonTypesSetInput instance,
    TRes Function(Input_PersonTypesSetInput) then,
  ) = _CopyWithImpl_Input_PersonTypesSetInput;

  factory CopyWith_Input_PersonTypesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_PersonTypesSetInput<TRes>
    implements CopyWith_Input_PersonTypesSetInput<TRes> {
  _CopyWithImpl_Input_PersonTypesSetInput(this._instance, this._then);

  final Input_PersonTypesSetInput _instance;

  final TRes Function(Input_PersonTypesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_PersonTypesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonTypesSetInput<TRes>
    implements CopyWith_Input_PersonTypesSetInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_PersonTypesStreamCursorInput {
  factory Input_PersonTypesStreamCursorInput({
    required Input_PersonTypesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonTypesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonTypesStreamCursorInput._(this._$data);

  factory Input_PersonTypesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonTypesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonTypesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonTypesStreamCursorValueInput);

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

  CopyWith_Input_PersonTypesStreamCursorInput<
    Input_PersonTypesStreamCursorInput
  >
  get copyWith => CopyWith_Input_PersonTypesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesStreamCursorInput ||
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

abstract class CopyWith_Input_PersonTypesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonTypesStreamCursorInput(
    Input_PersonTypesStreamCursorInput instance,
    TRes Function(Input_PersonTypesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonTypesStreamCursorInput;

  factory CopyWith_Input_PersonTypesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonTypesStreamCursorInput;

  TRes call({
    Input_PersonTypesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonTypesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonTypesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonTypesStreamCursorInput(this._instance, this._then);

  final Input_PersonTypesStreamCursorInput _instance;

  final TRes Function(Input_PersonTypesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonTypesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonTypesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonTypesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonTypesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonTypesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonTypesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonTypesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonTypesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonTypesStreamCursorValueInput.stub(_res);
}

class Input_PersonTypesStreamCursorValueInput {
  factory Input_PersonTypesStreamCursorValueInput({
    UuidValue? id,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? name,
    int? order,
  }) => Input_PersonTypesStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (isFamilyAdmin != null) r'isFamilyAdmin': isFamilyAdmin,
    if (isHidden != null) r'isHidden': isHidden,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
  });

  Input_PersonTypesStreamCursorValueInput._(this._$data);

  factory Input_PersonTypesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = data['isFamilyAdmin'];
      result$data['isFamilyAdmin'] = (l$isFamilyAdmin as bool?);
    }
    if (data.containsKey('isHidden')) {
      final l$isHidden = data['isHidden'];
      result$data['isHidden'] = (l$isHidden as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    return Input_PersonTypesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isFamilyAdmin => (_$data['isFamilyAdmin'] as bool?);

  bool? get isHidden => (_$data['isHidden'] as bool?);

  String? get name => (_$data['name'] as String?);

  int? get order => (_$data['order'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isFamilyAdmin')) {
      final l$isFamilyAdmin = isFamilyAdmin;
      result$data['isFamilyAdmin'] = l$isFamilyAdmin;
    }
    if (_$data.containsKey('isHidden')) {
      final l$isHidden = isHidden;
      result$data['isHidden'] = l$isHidden;
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

  CopyWith_Input_PersonTypesStreamCursorValueInput<
    Input_PersonTypesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonTypesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTypesStreamCursorValueInput ||
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (_$data.containsKey('isFamilyAdmin') !=
        other._$data.containsKey('isFamilyAdmin')) {
      return false;
    }
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (_$data.containsKey('isHidden') !=
        other._$data.containsKey('isHidden')) {
      return false;
    }
    if (l$isHidden != lOther$isHidden) {
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$name = name;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isFamilyAdmin') ? l$isFamilyAdmin : const {},
      _$data.containsKey('isHidden') ? l$isHidden : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
    ]);
  }
}
