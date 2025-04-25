// Part 12 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsMaxOrderBy(
    Input_ClassesPersonsMaxOrderBy instance,
    TRes Function(Input_ClassesPersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsMaxOrderBy;

  factory CopyWith_Input_ClassesPersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsMaxOrderBy;

  TRes call({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_ClassesPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsMaxOrderBy _instance;

  final TRes Function(Input_ClassesPersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_ClassesPersonsMaxOrderBy._({
        ..._instance._$data,
        if (classId != _undefined) 'classId': (classId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_ClassesPersonsMinOrderBy {
  factory Input_ClassesPersonsMinOrderBy({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  }) =>
      Input_ClassesPersonsMinOrderBy._({
        if (classId != null) r'classId': classId,
        if (personId != null) r'personId': personId,
      });

  Input_ClassesPersonsMinOrderBy._(this._$data);

  factory Input_ClassesPersonsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : fromJson_Enum_OrderBy((l$classId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_ClassesPersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get classId => (_$data['classId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] =
          l$classId == null ? null : toJson_Enum_OrderBy(l$classId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsMinOrderBy<Input_ClassesPersonsMinOrderBy>
      get copyWith => CopyWith_Input_ClassesPersonsMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsMinOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsMinOrderBy(
    Input_ClassesPersonsMinOrderBy instance,
    TRes Function(Input_ClassesPersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsMinOrderBy;

  factory CopyWith_Input_ClassesPersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsMinOrderBy;

  TRes call({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_ClassesPersonsMinOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsMinOrderBy _instance;

  final TRes Function(Input_ClassesPersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_ClassesPersonsMinOrderBy._({
        ..._instance._$data,
        if (classId != _undefined) 'classId': (classId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesPersonsMinOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_ClassesPersonsOrderBy {
  factory Input_ClassesPersonsOrderBy({
    Input_ClassesOrderBy? $class,
    Enum_OrderBy? classId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) =>
      Input_ClassesPersonsOrderBy._({
        if ($class != null) r'class': $class,
        if (classId != null) r'classId': classId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_ClassesPersonsOrderBy._(this._$data);

  factory Input_ClassesPersonsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('class')) {
      final l$$class = data['class'];
      result$data['class'] = l$$class == null
          ? null
          : Input_ClassesOrderBy.fromJson((l$$class as Map<String, dynamic>));
    }
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : fromJson_Enum_OrderBy((l$classId as String));
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_ClassesPersonsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesOrderBy? get $class =>
      (_$data['class'] as Input_ClassesOrderBy?);

  Enum_OrderBy? get classId => (_$data['classId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('class')) {
      final l$$class = $class;
      result$data['class'] = l$$class?.toJson();
    }
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] =
          l$classId == null ? null : toJson_Enum_OrderBy(l$classId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsOrderBy<Input_ClassesPersonsOrderBy>
      get copyWith => CopyWith_Input_ClassesPersonsOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (_$data.containsKey('class') != other._$data.containsKey('class')) {
      return false;
    }
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$class = $class;
    final l$classId = classId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsOrderBy(
    Input_ClassesPersonsOrderBy instance,
    TRes Function(Input_ClassesPersonsOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsOrderBy;

  factory CopyWith_Input_ClassesPersonsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsOrderBy;

  TRes call({
    Input_ClassesOrderBy? $class,
    Enum_OrderBy? classId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  });
  CopyWith_Input_ClassesOrderBy<TRes> get $class;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_ClassesPersonsOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsOrderBy _instance;

  final TRes Function(Input_ClassesPersonsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $class = _undefined,
    Object? classId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_ClassesPersonsOrderBy._({
        ..._instance._$data,
        if ($class != _undefined) 'class': ($class as Input_ClassesOrderBy?),
        if (classId != _undefined) 'classId': (classId as Enum_OrderBy?),
        if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));

  CopyWith_Input_ClassesOrderBy<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Input_ClassesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesOrderBy(local$$class, (e) => call($class: e));
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_ClassesPersonsOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsOrderBy(this._res);

  TRes _res;

  call({
    Input_ClassesOrderBy? $class,
    Enum_OrderBy? classId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) =>
      _res;

  CopyWith_Input_ClassesOrderBy<TRes> get $class =>
      CopyWith_Input_ClassesOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_ClassesPersonsStreamCursorInput {
  factory Input_ClassesPersonsStreamCursorInput({
    required Input_ClassesPersonsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_ClassesPersonsStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_ClassesPersonsStreamCursorInput._(this._$data);

  factory Input_ClassesPersonsStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_ClassesPersonsStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ClassesPersonsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesPersonsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ClassesPersonsStreamCursorValueInput);

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

  CopyWith_Input_ClassesPersonsStreamCursorInput<
          Input_ClassesPersonsStreamCursorInput>
      get copyWith => CopyWith_Input_ClassesPersonsStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsStreamCursorInput ||
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

abstract class CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  factory CopyWith_Input_ClassesPersonsStreamCursorInput(
    Input_ClassesPersonsStreamCursorInput instance,
    TRes Function(Input_ClassesPersonsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ClassesPersonsStreamCursorInput;

  factory CopyWith_Input_ClassesPersonsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput;

  TRes call({
    Input_ClassesPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ClassesPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ClassesPersonsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsStreamCursorInput _instance;

  final TRes Function(Input_ClassesPersonsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_ClassesPersonsStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue':
              (initialValue as Input_ClassesPersonsStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ClassesPersonsStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ClassesPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ClassesPersonsStreamCursorValueInput.stub(_res);
}

class Input_ClassesPersonsStreamCursorValueInput {
  factory Input_ClassesPersonsStreamCursorValueInput({
    UuidValue? classId,
    UuidValue? personId,
  }) =>
      Input_ClassesPersonsStreamCursorValueInput._({
        if (classId != null) r'classId': classId,
        if (personId != null) r'personId': personId,
      });

  Input_ClassesPersonsStreamCursorValueInput._(this._$data);

  factory Input_ClassesPersonsStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] =
          l$classId == null ? null : stringToUuid(l$classId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    return Input_ClassesPersonsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get classId => (_$data['classId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] =
          l$classId == null ? null : uuidToString(l$classId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<
          Input_ClassesPersonsStreamCursorValueInput>
      get copyWith => CopyWith_Input_ClassesPersonsStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ClassesPersonsStreamCursorValueInput(
    Input_ClassesPersonsStreamCursorValueInput instance,
    TRes Function(Input_ClassesPersonsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ClassesPersonsStreamCursorValueInput;

  factory CopyWith_Input_ClassesPersonsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput;

  TRes call({
    UuidValue? classId,
    UuidValue? personId,
  });
}

class _CopyWithImpl_Input_ClassesPersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ClassesPersonsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsStreamCursorValueInput _instance;

  final TRes Function(Input_ClassesPersonsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_ClassesPersonsStreamCursorValueInput._({
        ..._instance._$data,
        if (classId != _undefined) 'classId': (classId as UuidValue?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));
}

class _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? classId,
    UuidValue? personId,
  }) =>
      _res;
}

class Input_ClassesPkColumnsInput {
  factory Input_ClassesPkColumnsInput({required UuidValue id}) =>
      Input_ClassesPkColumnsInput._({
        r'id': id,
      });

  Input_ClassesPkColumnsInput._(this._$data);

  factory Input_ClassesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ClassesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ClassesPkColumnsInput<Input_ClassesPkColumnsInput>
      get copyWith => CopyWith_Input_ClassesPkColumnsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPkColumnsInput ||
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

abstract class CopyWith_Input_ClassesPkColumnsInput<TRes> {
  factory CopyWith_Input_ClassesPkColumnsInput(
    Input_ClassesPkColumnsInput instance,
    TRes Function(Input_ClassesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_ClassesPkColumnsInput;

  factory CopyWith_Input_ClassesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_ClassesPkColumnsInput<TRes>
    implements CopyWith_Input_ClassesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_ClassesPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_ClassesPkColumnsInput _instance;

  final TRes Function(Input_ClassesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input_ClassesPkColumnsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Input_ClassesPkColumnsInput<TRes>
    implements CopyWith_Input_ClassesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ClassesSetInput {
  factory Input_ClassesSetInput({
    String? blurhash,
    int? color,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) =>
      Input_ClassesSetInput._({
        if (blurhash != null) r'blurhash': blurhash,
        if (color != null) r'color': color,
        if (name != null) r'name': name,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesSetInput._(this._$data);

  factory Input_ClassesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
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
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] =
          l$serviceId == null ? null : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_ClassesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

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
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_ClassesSetInput<Input_ClassesSetInput> get copyWith =>
      CopyWith_Input_ClassesSetInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesSetInput || runtimeType != other.runtimeType) {
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$blurhash = blurhash;
    final l$color = color;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesSetInput<TRes> {
  factory CopyWith_Input_ClassesSetInput(
    Input_ClassesSetInput instance,
    TRes Function(Input_ClassesSetInput) then,
  ) = _CopyWithImpl_Input_ClassesSetInput;

  factory CopyWith_Input_ClassesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesSetInput;

  TRes call({
    String? blurhash,
    int? color,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesSetInput<TRes>
    implements CopyWith_Input_ClassesSetInput<TRes> {
  _CopyWithImpl_Input_ClassesSetInput(
    this._instance,
    this._then,
  );

  final Input_ClassesSetInput _instance;

  final TRes Function(Input_ClassesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesSetInput._({
        ..._instance._$data,
        if (blurhash != _undefined) 'blurhash': (blurhash as String?),
        if (color != _undefined) 'color': (color as int?),
        if (name != _undefined) 'name': (name as String?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as DateTime?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as bool?),
        if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as int?),
      }));
}

class _CopyWithStubImpl_Input_ClassesSetInput<TRes>
    implements CopyWith_Input_ClassesSetInput<TRes> {
  _CopyWithStubImpl_Input_ClassesSetInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    int? color,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesStddevOrderBy {
  factory Input_ClassesStddevOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_ClassesStddevOrderBy._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesStddevOrderBy._(this._$data);

  factory Input_ClassesStddevOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesStddevOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesStddevOrderBy<Input_ClassesStddevOrderBy>
      get copyWith => CopyWith_Input_ClassesStddevOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStddevOrderBy ||
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesStddevOrderBy<TRes> {
  factory CopyWith_Input_ClassesStddevOrderBy(
    Input_ClassesStddevOrderBy instance,
    TRes Function(Input_ClassesStddevOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesStddevOrderBy;

  factory CopyWith_Input_ClassesStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStddevOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesStddevOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesStddevOrderBy _instance;

  final TRes Function(Input_ClassesStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesStddevOrderBy._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesStddevOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesStddevPopOrderBy {
  factory Input_ClassesStddevPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_ClassesStddevPopOrderBy._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesStddevPopOrderBy._(this._$data);

  factory Input_ClassesStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesStddevPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesStddevPopOrderBy<Input_ClassesStddevPopOrderBy>
      get copyWith => CopyWith_Input_ClassesStddevPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStddevPopOrderBy ||
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  factory CopyWith_Input_ClassesStddevPopOrderBy(
    Input_ClassesStddevPopOrderBy instance,
    TRes Function(Input_ClassesStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesStddevPopOrderBy;

  factory CopyWith_Input_ClassesStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStddevPopOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesStddevPopOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesStddevPopOrderBy _instance;

  final TRes Function(Input_ClassesStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesStddevPopOrderBy._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesStddevPopOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesStddevSampOrderBy {
  factory Input_ClassesStddevSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_ClassesStddevSampOrderBy._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesStddevSampOrderBy._(this._$data);

  factory Input_ClassesStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesStddevSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesStddevSampOrderBy<Input_ClassesStddevSampOrderBy>
      get copyWith => CopyWith_Input_ClassesStddevSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStddevSampOrderBy ||
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  factory CopyWith_Input_ClassesStddevSampOrderBy(
    Input_ClassesStddevSampOrderBy instance,
    TRes Function(Input_ClassesStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesStddevSampOrderBy;

  factory CopyWith_Input_ClassesStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStddevSampOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesStddevSampOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesStddevSampOrderBy _instance;

  final TRes Function(Input_ClassesStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesStddevSampOrderBy._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesStddevSampOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesStreamCursorInput {
  factory Input_ClassesStreamCursorInput({
    required Input_ClassesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_ClassesStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_ClassesStreamCursorInput._(this._$data);

  factory Input_ClassesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_ClassesStreamCursorValueInput.fromJson(
        (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ClassesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ClassesStreamCursorValueInput);

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

  CopyWith_Input_ClassesStreamCursorInput<Input_ClassesStreamCursorInput>
      get copyWith => CopyWith_Input_ClassesStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStreamCursorInput ||
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

abstract class CopyWith_Input_ClassesStreamCursorInput<TRes> {
  factory CopyWith_Input_ClassesStreamCursorInput(
    Input_ClassesStreamCursorInput instance,
    TRes Function(Input_ClassesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ClassesStreamCursorInput;

  factory CopyWith_Input_ClassesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStreamCursorInput;

  TRes call({
    Input_ClassesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ClassesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ClassesStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ClassesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_ClassesStreamCursorInput _instance;

  final TRes Function(Input_ClassesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_ClassesStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue': (initialValue as Input_ClassesStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_ClassesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ClassesStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_ClassesStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ClassesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ClassesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_ClassesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ClassesStreamCursorValueInput.stub(_res);
}

class Input_ClassesStreamCursorValueInput {
  factory Input_ClassesStreamCursorValueInput({
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) =>
      Input_ClassesStreamCursorValueInput._({
        if (blurhash != null) r'blurhash': blurhash,
        if (color != null) r'color': color,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesStreamCursorValueInput._(this._$data);

  factory Input_ClassesStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
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
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] =
          l$serviceId == null ? null : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_ClassesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

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
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_ClassesStreamCursorValueInput<
          Input_ClassesStreamCursorValueInput>
      get copyWith => CopyWith_Input_ClassesStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStreamCursorValueInput ||
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ClassesStreamCursorValueInput(
    Input_ClassesStreamCursorValueInput instance,
    TRes Function(Input_ClassesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ClassesStreamCursorValueInput;

  factory CopyWith_Input_ClassesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStreamCursorValueInput;

  TRes call({
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ClassesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ClassesStreamCursorValueInput _instance;

  final TRes Function(Input_ClassesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesStreamCursorValueInput._({
        ..._instance._$data,
        if (blurhash != _undefined) 'blurhash': (blurhash as String?),
        if (color != _undefined) 'color': (color as int?),
        if (id != _undefined) 'id': (id as UuidValue?),
        if (name != _undefined) 'name': (name as String?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as DateTime?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as bool?),
        if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as int?),
      }));
}

class _CopyWithStubImpl_Input_ClassesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ClassesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesSumOrderBy {
  factory Input_ClassesSumOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_ClassesSumOrderBy._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesSumOrderBy._(this._$data);

  factory Input_ClassesSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesSumOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesSumOrderBy<Input_ClassesSumOrderBy> get copyWith =>
      CopyWith_Input_ClassesSumOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesSumOrderBy || runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesSumOrderBy<TRes> {
  factory CopyWith_Input_ClassesSumOrderBy(
    Input_ClassesSumOrderBy instance,
    TRes Function(Input_ClassesSumOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesSumOrderBy;

  factory CopyWith_Input_ClassesSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesSumOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesSumOrderBy<TRes>
    implements CopyWith_Input_ClassesSumOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesSumOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesSumOrderBy _instance;

  final TRes Function(Input_ClassesSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesSumOrderBy._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesSumOrderBy<TRes>
    implements CopyWith_Input_ClassesSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesSumOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesUpdates {
  factory Input_ClassesUpdates({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    required Input_ClassesBoolExp where,
  }) =>
      Input_ClassesUpdates._({
        if ($_inc != null) r'_inc': $_inc,
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_ClassesUpdates._(this._$data);

  factory Input_ClassesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_ClassesIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_ClassesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input_ClassesBoolExp.fromJson((l$where as Map<String, dynamic>));
    return Input_ClassesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesIncInput? get $_inc =>
      (_$data['_inc'] as Input_ClassesIncInput?);

  Input_ClassesSetInput? get $_set =>
      (_$data['_set'] as Input_ClassesSetInput?);

  Input_ClassesBoolExp get where => (_$data['where'] as Input_ClassesBoolExp);

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

  CopyWith_Input_ClassesUpdates<Input_ClassesUpdates> get copyWith =>
      CopyWith_Input_ClassesUpdates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassesUpdates<TRes> {
  factory CopyWith_Input_ClassesUpdates(
    Input_ClassesUpdates instance,
    TRes Function(Input_ClassesUpdates) then,
  ) = _CopyWithImpl_Input_ClassesUpdates;

  factory CopyWith_Input_ClassesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesUpdates;

  TRes call({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    Input_ClassesBoolExp? where,
  });
  CopyWith_Input_ClassesIncInput<TRes> get $_inc;
  CopyWith_Input_ClassesSetInput<TRes> get $_set;
  CopyWith_Input_ClassesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ClassesUpdates<TRes>
    implements CopyWith_Input_ClassesUpdates<TRes> {
  _CopyWithImpl_Input_ClassesUpdates(
    this._instance,
    this._then,
  );

  final Input_ClassesUpdates _instance;

  final TRes Function(Input_ClassesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_ClassesUpdates._({
        ..._instance._$data,
        if ($_inc != _undefined) '_inc': ($_inc as Input_ClassesIncInput?),
        if ($_set != _undefined) '_set': ($_set as Input_ClassesSetInput?),
        if (where != _undefined && where != null)
          'where': (where as Input_ClassesBoolExp),
      }));

  CopyWith_Input_ClassesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_ClassesIncInput.stub(_then(_instance))
        : CopyWith_Input_ClassesIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_ClassesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_ClassesSetInput.stub(_then(_instance))
        : CopyWith_Input_ClassesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_ClassesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ClassesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ClassesUpdates<TRes>
    implements CopyWith_Input_ClassesUpdates<TRes> {
  _CopyWithStubImpl_Input_ClassesUpdates(this._res);

  TRes _res;

  call({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    Input_ClassesBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_ClassesIncInput<TRes> get $_inc =>
      CopyWith_Input_ClassesIncInput.stub(_res);

  CopyWith_Input_ClassesSetInput<TRes> get $_set =>
      CopyWith_Input_ClassesSetInput.stub(_res);

  CopyWith_Input_ClassesBoolExp<TRes> get where =>
      CopyWith_Input_ClassesBoolExp.stub(_res);
}

class Input_ClassesVarPopOrderBy {
  factory Input_ClassesVarPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_ClassesVarPopOrderBy._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesVarPopOrderBy._(this._$data);

  factory Input_ClassesVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesVarPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesVarPopOrderBy<Input_ClassesVarPopOrderBy>
      get copyWith => CopyWith_Input_ClassesVarPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesVarPopOrderBy ||
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  factory CopyWith_Input_ClassesVarPopOrderBy(
    Input_ClassesVarPopOrderBy instance,
    TRes Function(Input_ClassesVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesVarPopOrderBy;

  factory CopyWith_Input_ClassesVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesVarPopOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesVarPopOrderBy<TRes>
    implements CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesVarPopOrderBy _instance;

  final TRes Function(Input_ClassesVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_ClassesVarPopOrderBy._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_ClassesVarPopOrderBy<TRes>
    implements CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_ClassesVarSampOrderBy {
  factory Input_ClassesVarSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_ClassesVarSampOrderBy._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesVarSampOrderBy._(this._$data);

  factory Input_ClassesVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesVarSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesVarSampOrderBy<Input_ClassesVarSampOrderBy>
      get copyWith => CopyWith_Input_ClassesVarSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesVarSampOrderBy ||
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}
