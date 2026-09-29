// Part 16 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_CollegesOrderBy<TRes> {
  factory CopyWith_Input_CollegesOrderBy(
    Input_CollegesOrderBy instance,
    TRes Function(Input_CollegesOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesOrderBy;

  factory CopyWith_Input_CollegesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Input_UniversitiesOrderBy? university,
    Enum_OrderBy? universityId,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
  CopyWith_Input_UniversitiesOrderBy<TRes> get university;
}

class _CopyWithImpl_Input_CollegesOrderBy<TRes>
    implements CopyWith_Input_CollegesOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesOrderBy(this._instance, this._then);

  final Input_CollegesOrderBy _instance;

  final TRes Function(Input_CollegesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
    Object? university = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
      if (university != _undefined)
        'university': (university as Input_UniversitiesOrderBy?),
      if (universityId != _undefined)
        'universityId': (universityId as Enum_OrderBy?),
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

  CopyWith_Input_UniversitiesOrderBy<TRes> get university {
    final local$university = _instance.university;
    return local$university == null
        ? CopyWith_Input_UniversitiesOrderBy.stub(_then(_instance))
        : CopyWith_Input_UniversitiesOrderBy(
            local$university,
            (e) => call(university: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesOrderBy<TRes>
    implements CopyWith_Input_CollegesOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Input_UniversitiesOrderBy? university,
    Enum_OrderBy? universityId,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_UniversitiesOrderBy<TRes> get university =>
      CopyWith_Input_UniversitiesOrderBy.stub(_res);
}

class Input_CollegesPkColumnsInput {
  factory Input_CollegesPkColumnsInput({required UuidValue id}) =>
      Input_CollegesPkColumnsInput._({r'id': id});

  Input_CollegesPkColumnsInput._(this._$data);

  factory Input_CollegesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_CollegesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_CollegesPkColumnsInput<Input_CollegesPkColumnsInput>
  get copyWith => CopyWith_Input_CollegesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesPkColumnsInput ||
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

abstract class CopyWith_Input_CollegesPkColumnsInput<TRes> {
  factory CopyWith_Input_CollegesPkColumnsInput(
    Input_CollegesPkColumnsInput instance,
    TRes Function(Input_CollegesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_CollegesPkColumnsInput;

  factory CopyWith_Input_CollegesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_CollegesPkColumnsInput<TRes>
    implements CopyWith_Input_CollegesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_CollegesPkColumnsInput(this._instance, this._then);

  final Input_CollegesPkColumnsInput _instance;

  final TRes Function(Input_CollegesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_CollegesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesPkColumnsInput<TRes>
    implements CopyWith_Input_CollegesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_CollegesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_CollegesSetInput {
  factory Input_CollegesSetInput({String? name}) =>
      Input_CollegesSetInput._({if (name != null) r'name': name});

  Input_CollegesSetInput._(this._$data);

  factory Input_CollegesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_CollegesSetInput._(result$data);
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

  CopyWith_Input_CollegesSetInput<Input_CollegesSetInput> get copyWith =>
      CopyWith_Input_CollegesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_CollegesSetInput<TRes> {
  factory CopyWith_Input_CollegesSetInput(
    Input_CollegesSetInput instance,
    TRes Function(Input_CollegesSetInput) then,
  ) = _CopyWithImpl_Input_CollegesSetInput;

  factory CopyWith_Input_CollegesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_CollegesSetInput<TRes>
    implements CopyWith_Input_CollegesSetInput<TRes> {
  _CopyWithImpl_Input_CollegesSetInput(this._instance, this._then);

  final Input_CollegesSetInput _instance;

  final TRes Function(Input_CollegesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_CollegesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesSetInput<TRes>
    implements CopyWith_Input_CollegesSetInput<TRes> {
  _CopyWithStubImpl_Input_CollegesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_CollegesStreamCursorInput {
  factory Input_CollegesStreamCursorInput({
    required Input_CollegesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_CollegesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_CollegesStreamCursorInput._(this._$data);

  factory Input_CollegesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_CollegesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_CollegesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_CollegesStreamCursorValueInput);

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

  CopyWith_Input_CollegesStreamCursorInput<Input_CollegesStreamCursorInput>
  get copyWith => CopyWith_Input_CollegesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesStreamCursorInput ||
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

abstract class CopyWith_Input_CollegesStreamCursorInput<TRes> {
  factory CopyWith_Input_CollegesStreamCursorInput(
    Input_CollegesStreamCursorInput instance,
    TRes Function(Input_CollegesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_CollegesStreamCursorInput;

  factory CopyWith_Input_CollegesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesStreamCursorInput;

  TRes call({
    Input_CollegesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_CollegesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_CollegesStreamCursorInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_CollegesStreamCursorInput(this._instance, this._then);

  final Input_CollegesStreamCursorInput _instance;

  final TRes Function(Input_CollegesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_CollegesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_CollegesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_CollegesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_CollegesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_CollegesStreamCursorInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_CollegesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_CollegesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_CollegesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_CollegesStreamCursorValueInput.stub(_res);
}

class Input_CollegesStreamCursorValueInput {
  factory Input_CollegesStreamCursorValueInput({
    UuidValue? id,
    String? name,
    UuidValue? universityId,
  }) => Input_CollegesStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesStreamCursorValueInput._(this._$data);

  factory Input_CollegesStreamCursorValueInput.fromJson(
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
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : stringToUuid(l$universityId);
    }
    return Input_CollegesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  UuidValue? get universityId => (_$data['universityId'] as UuidValue?);

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
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : uuidToString(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesStreamCursorValueInput<
    Input_CollegesStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_CollegesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesStreamCursorValueInput ||
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
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_CollegesStreamCursorValueInput(
    Input_CollegesStreamCursorValueInput instance,
    TRes Function(Input_CollegesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_CollegesStreamCursorValueInput;

  factory CopyWith_Input_CollegesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesStreamCursorValueInput;

  TRes call({UuidValue? id, String? name, UuidValue? universityId});
}

class _CopyWithImpl_Input_CollegesStreamCursorValueInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_CollegesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_CollegesStreamCursorValueInput _instance;

  final TRes Function(Input_CollegesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (universityId != _undefined)
        'universityId': (universityId as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesStreamCursorValueInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_CollegesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name, UuidValue? universityId}) => _res;
}

class Input_CollegesUpdates {
  factory Input_CollegesUpdates({
    Input_CollegesSetInput? $_set,
    required Input_CollegesBoolExp where,
  }) => Input_CollegesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_CollegesUpdates._(this._$data);

  factory Input_CollegesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_CollegesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_CollegesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_CollegesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesSetInput? get $_set =>
      (_$data['_set'] as Input_CollegesSetInput?);

  Input_CollegesBoolExp get where => (_$data['where'] as Input_CollegesBoolExp);

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

  CopyWith_Input_CollegesUpdates<Input_CollegesUpdates> get copyWith =>
      CopyWith_Input_CollegesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_CollegesUpdates<TRes> {
  factory CopyWith_Input_CollegesUpdates(
    Input_CollegesUpdates instance,
    TRes Function(Input_CollegesUpdates) then,
  ) = _CopyWithImpl_Input_CollegesUpdates;

  factory CopyWith_Input_CollegesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesUpdates;

  TRes call({Input_CollegesSetInput? $_set, Input_CollegesBoolExp? where});
  CopyWith_Input_CollegesSetInput<TRes> get $_set;
  CopyWith_Input_CollegesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_CollegesUpdates<TRes>
    implements CopyWith_Input_CollegesUpdates<TRes> {
  _CopyWithImpl_Input_CollegesUpdates(this._instance, this._then);

  final Input_CollegesUpdates _instance;

  final TRes Function(Input_CollegesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_CollegesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_CollegesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_CollegesBoolExp),
    }),
  );

  CopyWith_Input_CollegesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_CollegesSetInput.stub(_then(_instance))
        : CopyWith_Input_CollegesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_CollegesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_CollegesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_CollegesUpdates<TRes>
    implements CopyWith_Input_CollegesUpdates<TRes> {
  _CopyWithStubImpl_Input_CollegesUpdates(this._res);

  TRes _res;

  call({Input_CollegesSetInput? $_set, Input_CollegesBoolExp? where}) => _res;

  CopyWith_Input_CollegesSetInput<TRes> get $_set =>
      CopyWith_Input_CollegesSetInput.stub(_res);

  CopyWith_Input_CollegesBoolExp<TRes> get where =>
      CopyWith_Input_CollegesBoolExp.stub(_res);
}

class Input_ContactsAggregateOrderBy {
  factory Input_ContactsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_ContactsMaxOrderBy? max,
    Input_ContactsMinOrderBy? min,
  }) => Input_ContactsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_ContactsAggregateOrderBy._(this._$data);

  factory Input_ContactsAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
          : Input_ContactsMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_ContactsMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    return Input_ContactsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_ContactsMaxOrderBy? get max =>
      (_$data['max'] as Input_ContactsMaxOrderBy?);

  Input_ContactsMinOrderBy? get min =>
      (_$data['min'] as Input_ContactsMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_ContactsAggregateOrderBy<Input_ContactsAggregateOrderBy>
  get copyWith => CopyWith_Input_ContactsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsAggregateOrderBy ||
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

abstract class CopyWith_Input_ContactsAggregateOrderBy<TRes> {
  factory CopyWith_Input_ContactsAggregateOrderBy(
    Input_ContactsAggregateOrderBy instance,
    TRes Function(Input_ContactsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_ContactsAggregateOrderBy;

  factory CopyWith_Input_ContactsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_ContactsMaxOrderBy? max,
    Input_ContactsMinOrderBy? min,
  });
  CopyWith_Input_ContactsMaxOrderBy<TRes> get max;
  CopyWith_Input_ContactsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_ContactsAggregateOrderBy<TRes>
    implements CopyWith_Input_ContactsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_ContactsAggregateOrderBy(this._instance, this._then);

  final Input_ContactsAggregateOrderBy _instance;

  final TRes Function(Input_ContactsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_ContactsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_ContactsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_ContactsMinOrderBy?),
    }),
  );

  CopyWith_Input_ContactsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_ContactsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_ContactsMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_ContactsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_ContactsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_ContactsMinOrderBy(local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_ContactsAggregateOrderBy<TRes>
    implements CopyWith_Input_ContactsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_ContactsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_ContactsMaxOrderBy? max,
    Input_ContactsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_ContactsMaxOrderBy<TRes> get max =>
      CopyWith_Input_ContactsMaxOrderBy.stub(_res);

  CopyWith_Input_ContactsMinOrderBy<TRes> get min =>
      CopyWith_Input_ContactsMinOrderBy.stub(_res);
}

class Input_ContactsArrRelInsertInput {
  factory Input_ContactsArrRelInsertInput({
    required List<Input_ContactsInsertInput> data,
    Input_ContactsOnConflict? onConflict,
  }) => Input_ContactsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_ContactsArrRelInsertInput._(this._$data);

  factory Input_ContactsArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) =>
              Input_ContactsInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_ContactsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_ContactsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ContactsInsertInput> get data =>
      (_$data['data'] as List<Input_ContactsInsertInput>);

  Input_ContactsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_ContactsOnConflict?);

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

  CopyWith_Input_ContactsArrRelInsertInput<Input_ContactsArrRelInsertInput>
  get copyWith => CopyWith_Input_ContactsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsArrRelInsertInput ||
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

abstract class CopyWith_Input_ContactsArrRelInsertInput<TRes> {
  factory CopyWith_Input_ContactsArrRelInsertInput(
    Input_ContactsArrRelInsertInput instance,
    TRes Function(Input_ContactsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_ContactsArrRelInsertInput;

  factory CopyWith_Input_ContactsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsArrRelInsertInput;

  TRes call({
    List<Input_ContactsInsertInput>? data,
    Input_ContactsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_ContactsInsertInput> Function(
      Iterable<CopyWith_Input_ContactsInsertInput<Input_ContactsInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_ContactsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_ContactsArrRelInsertInput<TRes>
    implements CopyWith_Input_ContactsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_ContactsArrRelInsertInput(this._instance, this._then);

  final Input_ContactsArrRelInsertInput _instance;

  final TRes Function(Input_ContactsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_ContactsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_ContactsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_ContactsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_ContactsInsertInput> Function(
      Iterable<CopyWith_Input_ContactsInsertInput<Input_ContactsInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_ContactsInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_ContactsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_ContactsOnConflict.stub(_then(_instance))
        : CopyWith_Input_ContactsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_ContactsArrRelInsertInput<TRes>
    implements CopyWith_Input_ContactsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_ContactsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_ContactsInsertInput>? data,
    Input_ContactsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_ContactsOnConflict<TRes> get onConflict =>
      CopyWith_Input_ContactsOnConflict.stub(_res);
}

class Input_ContactsBoolExp {
  factory Input_ContactsBoolExp({
    List<Input_ContactsBoolExp>? $_and,
    Input_ContactsBoolExp? $_not,
    List<Input_ContactsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isMainPhone,
    Input_StringComparisonExp? label,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_StringComparisonExp? phone,
    Input_TimestamptzComparisonExp? updatedAt,
  }) => Input_ContactsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (createdAt != null) r'createdAt': createdAt,
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (personType != null) r'personType': personType,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ContactsBoolExp._(this._$data);

  factory Input_ContactsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ContactsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ContactsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ContactsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = l$isMainPhone == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isMainPhone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$label as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesBoolExp.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personTypeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$phone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    return Input_ContactsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ContactsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ContactsBoolExp>?);

  Input_ContactsBoolExp? get $_not =>
      (_$data['_not'] as Input_ContactsBoolExp?);

  List<Input_ContactsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ContactsBoolExp>?);

  Input_TimestamptzComparisonExp? get createdAt =>
      (_$data['createdAt'] as Input_TimestamptzComparisonExp?);

  Input_FamiliesBoolExp? get family =>
      (_$data['family'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isMainPhone =>
      (_$data['isMainPhone'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get label =>
      (_$data['label'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_PersonTypesBoolExp? get personType =>
      (_$data['personType'] as Input_PersonTypesBoolExp?);

  Input_UuidComparisonExp? get personTypeId =>
      (_$data['personTypeId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get phone =>
      (_$data['phone'] as Input_StringComparisonExp?);

  Input_TimestamptzComparisonExp? get updatedAt =>
      (_$data['updatedAt'] as Input_TimestamptzComparisonExp?);

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
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone?.toJson();
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId?.toJson();
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ContactsBoolExp<Input_ContactsBoolExp> get copyWith =>
      CopyWith_Input_ContactsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsBoolExp || runtimeType != other.runtimeType) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
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
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (_$data.containsKey('isMainPhone') !=
        other._$data.containsKey('isMainPhone')) {
      return false;
    }
    if (l$isMainPhone != lOther$isMainPhone) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$createdAt = createdAt;
    final l$family = family;
    final l$familyId = familyId;
    final l$id = id;
    final l$isMainPhone = isMainPhone;
    final l$label = label;
    final l$person = person;
    final l$personId = personId;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
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
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_ContactsBoolExp<TRes> {
  factory CopyWith_Input_ContactsBoolExp(
    Input_ContactsBoolExp instance,
    TRes Function(Input_ContactsBoolExp) then,
  ) = _CopyWithImpl_Input_ContactsBoolExp;

  factory CopyWith_Input_ContactsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsBoolExp;

  TRes call({
    List<Input_ContactsBoolExp>? $_and,
    Input_ContactsBoolExp? $_not,
    List<Input_ContactsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isMainPhone,
    Input_StringComparisonExp? label,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_StringComparisonExp? phone,
    Input_TimestamptzComparisonExp? updatedAt,
  });
  TRes $_and(
    Iterable<Input_ContactsBoolExp>? Function(
      Iterable<CopyWith_Input_ContactsBoolExp<Input_ContactsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_ContactsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_ContactsBoolExp>? Function(
      Iterable<CopyWith_Input_ContactsBoolExp<Input_ContactsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt;
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isMainPhone;
  CopyWith_Input_StringComparisonExp<TRes> get label;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_PersonTypesBoolExp<TRes> get personType;
  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId;
  CopyWith_Input_StringComparisonExp<TRes> get phone;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt;
}

class _CopyWithImpl_Input_ContactsBoolExp<TRes>
    implements CopyWith_Input_ContactsBoolExp<TRes> {
  _CopyWithImpl_Input_ContactsBoolExp(this._instance, this._then);

  final Input_ContactsBoolExp _instance;

  final TRes Function(Input_ContactsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? createdAt = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? personType = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ContactsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_ContactsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_ContactsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_ContactsBoolExp>?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input_TimestamptzComparisonExp?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isMainPhone != _undefined)
        'isMainPhone': (isMainPhone as Input_BooleanComparisonExp?),
      if (label != _undefined) 'label': (label as Input_StringComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesBoolExp?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Input_UuidComparisonExp?),
      if (phone != _undefined) 'phone': (phone as Input_StringComparisonExp?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input_TimestamptzComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_ContactsBoolExp>? Function(
      Iterable<CopyWith_Input_ContactsBoolExp<Input_ContactsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_ContactsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ContactsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ContactsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ContactsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_ContactsBoolExp>? Function(
      Iterable<CopyWith_Input_ContactsBoolExp<Input_ContactsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_ContactsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$family, (e) => call(family: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isMainPhone {
    final local$isMainPhone = _instance.isMainPhone;
    return local$isMainPhone == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isMainPhone,
            (e) => call(isMainPhone: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get label {
    final local$label = _instance.label;
    return local$label == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$label,
            (e) => call(label: e),
          );
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_PersonTypesBoolExp<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId {
    final local$personTypeId = _instance.personTypeId;
    return local$personTypeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personTypeId,
            (e) => call(personTypeId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get phone {
    final local$phone = _instance.phone;
    return local$phone == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$phone,
            (e) => call(phone: e),
          );
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }
}

class _CopyWithStubImpl_Input_ContactsBoolExp<TRes>
    implements CopyWith_Input_ContactsBoolExp<TRes> {
  _CopyWithStubImpl_Input_ContactsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ContactsBoolExp>? $_and,
    Input_ContactsBoolExp? $_not,
    List<Input_ContactsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isMainPhone,
    Input_StringComparisonExp? label,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_StringComparisonExp? phone,
    Input_TimestamptzComparisonExp? updatedAt,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_ContactsBoolExp<TRes> get $_not =>
      CopyWith_Input_ContactsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isMainPhone =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get label =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonTypesBoolExp<TRes> get personType =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get phone =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);
}

class Input_ContactsInsertInput {
  factory Input_ContactsInsertInput({
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_PersonTypesObjRelInsertInput? personType,
    UuidValue? personTypeId,
    String? phone,
  }) => Input_ContactsInsertInput._({
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (personType != null) r'personType': personType,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
  });

  Input_ContactsInsertInput._(this._$data);

  factory Input_ContactsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = (l$isMainPhone as bool?);
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsObjRelInsertInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesObjRelInsertInput.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input_ContactsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesObjRelInsertInput? get family =>
      (_$data['family'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isMainPhone => (_$data['isMainPhone'] as bool?);

  String? get label => (_$data['label'] as String?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Input_PersonTypesObjRelInsertInput? get personType =>
      (_$data['personType'] as Input_PersonTypesObjRelInsertInput?);

  UuidValue? get personTypeId => (_$data['personTypeId'] as UuidValue?);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone;
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : uuidToString(l$personTypeId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith_Input_ContactsInsertInput<Input_ContactsInsertInput> get copyWith =>
      CopyWith_Input_ContactsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
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
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (_$data.containsKey('isMainPhone') !=
        other._$data.containsKey('isMainPhone')) {
      return false;
    }
    if (l$isMainPhone != lOther$isMainPhone) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$familyId = familyId;
    final l$id = id;
    final l$isMainPhone = isMainPhone;
    final l$label = label;
    final l$person = person;
    final l$personId = personId;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith_Input_ContactsInsertInput<TRes> {
  factory CopyWith_Input_ContactsInsertInput(
    Input_ContactsInsertInput instance,
    TRes Function(Input_ContactsInsertInput) then,
  ) = _CopyWithImpl_Input_ContactsInsertInput;

  factory CopyWith_Input_ContactsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsInsertInput;

  TRes call({
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_PersonTypesObjRelInsertInput? personType,
    UuidValue? personTypeId,
    String? phone,
  });
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
  CopyWith_Input_PersonTypesObjRelInsertInput<TRes> get personType;
}

class _CopyWithImpl_Input_ContactsInsertInput<TRes>
    implements CopyWith_Input_ContactsInsertInput<TRes> {
  _CopyWithImpl_Input_ContactsInsertInput(this._instance, this._then);

  final Input_ContactsInsertInput _instance;

  final TRes Function(Input_ContactsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? personType = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
  }) => _then(
    Input_ContactsInsertInput._({
      ..._instance._$data,
      if (family != _undefined)
        'family': (family as Input_FamiliesObjRelInsertInput?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isMainPhone != _undefined) 'isMainPhone': (isMainPhone as bool?),
      if (label != _undefined) 'label': (label as String?),
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesObjRelInsertInput?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as UuidValue?),
      if (phone != _undefined) 'phone': (phone as String?),
    }),
  );

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$family,
            (e) => call(family: e),
          );
  }

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Input_PersonTypesObjRelInsertInput<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonTypesObjRelInsertInput(
            local$personType,
            (e) => call(personType: e),
          );
  }
}

class _CopyWithStubImpl_Input_ContactsInsertInput<TRes>
    implements CopyWith_Input_ContactsInsertInput<TRes> {
  _CopyWithStubImpl_Input_ContactsInsertInput(this._res);

  TRes _res;

  call({
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_PersonTypesObjRelInsertInput? personType,
    UuidValue? personTypeId,
    String? phone,
  }) => _res;

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonTypesObjRelInsertInput<TRes> get personType =>
      CopyWith_Input_PersonTypesObjRelInsertInput.stub(_res);
}

class Input_ContactsMaxOrderBy {
  factory Input_ContactsMaxOrderBy({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => Input_ContactsMaxOrderBy._({
    if (createdAt != null) r'createdAt': createdAt,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ContactsMaxOrderBy._(this._$data);

  factory Input_ContactsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : fromJson_Enum_OrderBy((l$label as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : fromJson_Enum_OrderBy((l$phone as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedAt as String));
    }
    return Input_ContactsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get label => (_$data['label'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get phone => (_$data['phone'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedAt => (_$data['updatedAt'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label == null
          ? null
          : toJson_Enum_OrderBy(l$label);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone == null
          ? null
          : toJson_Enum_OrderBy(l$phone);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith_Input_ContactsMaxOrderBy<Input_ContactsMaxOrderBy> get copyWith =>
      CopyWith_Input_ContactsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
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
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$familyId = familyId;
    final l$id = id;
    final l$label = label;
    final l$personId = personId;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}
