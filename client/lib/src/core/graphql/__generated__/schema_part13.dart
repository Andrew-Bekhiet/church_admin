// Part 13 of the schema
part of "schema.graphql.dart";

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
  }) => _then(
    Input_ClassesPersonsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_ClassesPersonsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ClassesPersonsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ClassesPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ClassesPersonsStreamCursorValueInput.stub(_res);
}

class Input_ClassesPersonsStreamCursorValueInput {
  factory Input_ClassesPersonsStreamCursorValueInput({
    UuidValue? classId,
    UuidValue? personId,
  }) => Input_ClassesPersonsStreamCursorValueInput._({
    if (classId != null) r'classId': classId,
    if (personId != null) r'personId': personId,
  });

  Input_ClassesPersonsStreamCursorValueInput._(this._$data);

  factory Input_ClassesPersonsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : stringToUuid(l$classId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
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
      result$data['classId'] = l$classId == null
          ? null
          : uuidToString(l$classId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<
    Input_ClassesPersonsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_ClassesPersonsStreamCursorValueInput(this, (i) => i);

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

  TRes call({UuidValue? classId, UuidValue? personId});
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

  TRes call({Object? classId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_ClassesPersonsStreamCursorValueInput._({
          ..._instance._$data,
          if (classId != _undefined) 'classId': (classId as UuidValue?),
          if (personId != _undefined) 'personId': (personId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? classId, UuidValue? personId}) => _res;
}

class Input_ClassesPkColumnsInput {
  factory Input_ClassesPkColumnsInput({required UuidValue id}) =>
      Input_ClassesPkColumnsInput._({r'id': id});

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
  get copyWith => CopyWith_Input_ClassesPkColumnsInput(this, (i) => i);

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
  _CopyWithImpl_Input_ClassesPkColumnsInput(this._instance, this._then);

  final Input_ClassesPkColumnsInput _instance;

  final TRes Function(Input_ClassesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_ClassesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesPkColumnsInput<TRes>
    implements CopyWith_Input_ClassesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ClassesSetInput {
  factory Input_ClassesSetInput({
    int? color,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => Input_ClassesSetInput._({
    if (color != null) r'color': color,
    if (name != null) r'name': name,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesSetInput._(this._$data);

  factory Input_ClassesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_ClassesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

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
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_ClassesSetInput<Input_ClassesSetInput> get copyWith =>
      CopyWith_Input_ClassesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesSetInput || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final l$name = name;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
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
    int? color,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesSetInput<TRes>
    implements CopyWith_Input_ClassesSetInput<TRes> {
  _CopyWithImpl_Input_ClassesSetInput(this._instance, this._then);

  final Input_ClassesSetInput _instance;

  final TRes Function(Input_ClassesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? name = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesSetInput<TRes>
    implements CopyWith_Input_ClassesSetInput<TRes> {
  _CopyWithStubImpl_Input_ClassesSetInput(this._res);

  TRes _res;

  call({
    int? color,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => _res;
}

class Input_ClassesStddevOrderBy {
  factory Input_ClassesStddevOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesStddevOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesStddevOrderBy._(this._$data);

  factory Input_ClassesStddevOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
  get copyWith => CopyWith_Input_ClassesStddevOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesStddevOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevOrderBy(this._instance, this._then);

  final Input_ClassesStddevOrderBy _instance;

  final TRes Function(Input_ClassesStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesStddevOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesStddevOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesStddevPopOrderBy {
  factory Input_ClassesStddevPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesStddevPopOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesStddevPopOrderBy._(this._$data);

  factory Input_ClassesStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
  get copyWith => CopyWith_Input_ClassesStddevPopOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesStddevPopOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevPopOrderBy(this._instance, this._then);

  final Input_ClassesStddevPopOrderBy _instance;

  final TRes Function(Input_ClassesStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesStddevPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesStddevPopOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesStddevSampOrderBy {
  factory Input_ClassesStddevSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesStddevSampOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesStddevSampOrderBy._(this._$data);

  factory Input_ClassesStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
  get copyWith => CopyWith_Input_ClassesStddevSampOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesStddevSampOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevSampOrderBy(this._instance, this._then);

  final Input_ClassesStddevSampOrderBy _instance;

  final TRes Function(Input_ClassesStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesStddevSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesStddevSampOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesStreamCursorInput {
  factory Input_ClassesStreamCursorInput({
    required Input_ClassesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ClassesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ClassesStreamCursorInput._(this._$data);

  factory Input_ClassesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_ClassesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
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
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_ClassesStreamCursorInput<Input_ClassesStreamCursorInput>
  get copyWith => CopyWith_Input_ClassesStreamCursorInput(this, (i) => i);

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
  _CopyWithImpl_Input_ClassesStreamCursorInput(this._instance, this._then);

  final Input_ClassesStreamCursorInput _instance;

  final TRes Function(Input_ClassesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ClassesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_ClassesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ClassesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ClassesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ClassesStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ClassesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ClassesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

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
  }) => Input_ClassesStreamCursorValueInput._({
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
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
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
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_ClassesStreamCursorValueInput<
    Input_ClassesStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_ClassesStreamCursorValueInput(this, (i) => i);

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
  _CopyWithImpl_Input_ClassesStreamCursorValueInput(this._instance, this._then);

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
  }) => _then(
    Input_ClassesStreamCursorValueInput._({
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
    }),
  );
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
  }) => _res;
}

class Input_ClassesSumOrderBy {
  factory Input_ClassesSumOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesSumOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesSumOrderBy._(this._$data);

  factory Input_ClassesSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
      CopyWith_Input_ClassesSumOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesSumOrderBy<TRes>
    implements CopyWith_Input_ClassesSumOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesSumOrderBy(this._instance, this._then);

  final Input_ClassesSumOrderBy _instance;

  final TRes Function(Input_ClassesSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesSumOrderBy<TRes>
    implements CopyWith_Input_ClassesSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesUpdates {
  factory Input_ClassesUpdates({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    required Input_ClassesBoolExp where,
  }) => Input_ClassesUpdates._({
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
    result$data['where'] = Input_ClassesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
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
      CopyWith_Input_ClassesUpdates(this, (i) => i);

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
  _CopyWithImpl_Input_ClassesUpdates(this._instance, this._then);

  final Input_ClassesUpdates _instance;

  final TRes Function(Input_ClassesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_ClassesUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_ClassesIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_ClassesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_ClassesBoolExp),
    }),
  );

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
  }) => _res;

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
  }) => Input_ClassesVarPopOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesVarPopOrderBy._(this._$data);

  factory Input_ClassesVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
  get copyWith => CopyWith_Input_ClassesVarPopOrderBy(this, (i) => i);

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

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesVarPopOrderBy<TRes>
    implements CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarPopOrderBy(this._instance, this._then);

  final Input_ClassesVarPopOrderBy _instance;

  final TRes Function(Input_ClassesVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesVarPopOrderBy<TRes>
    implements CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesVarSampOrderBy {
  factory Input_ClassesVarSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesVarSampOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesVarSampOrderBy._(this._$data);

  factory Input_ClassesVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
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
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
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
  get copyWith => CopyWith_Input_ClassesVarSampOrderBy(this, (i) => i);

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

abstract class CopyWith_Input_ClassesVarSampOrderBy<TRes> {
  factory CopyWith_Input_ClassesVarSampOrderBy(
    Input_ClassesVarSampOrderBy instance,
    TRes Function(Input_ClassesVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesVarSampOrderBy;

  factory CopyWith_Input_ClassesVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesVarSampOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesVarSampOrderBy<TRes>
    implements CopyWith_Input_ClassesVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarSampOrderBy(this._instance, this._then);

  final Input_ClassesVarSampOrderBy _instance;

  final TRes Function(Input_ClassesVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesVarSampOrderBy<TRes>
    implements CopyWith_Input_ClassesVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesVarianceOrderBy {
  factory Input_ClassesVarianceOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesVarianceOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesVarianceOrderBy._(this._$data);

  factory Input_ClassesVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_ClassesVarianceOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_ClassesVarianceOrderBy<Input_ClassesVarianceOrderBy>
  get copyWith => CopyWith_Input_ClassesVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesVarianceOrderBy ||
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

abstract class CopyWith_Input_ClassesVarianceOrderBy<TRes> {
  factory CopyWith_Input_ClassesVarianceOrderBy(
    Input_ClassesVarianceOrderBy instance,
    TRes Function(Input_ClassesVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesVarianceOrderBy;

  factory CopyWith_Input_ClassesVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesVarianceOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesVarianceOrderBy<TRes>
    implements CopyWith_Input_ClassesVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarianceOrderBy(this._instance, this._then);

  final Input_ClassesVarianceOrderBy _instance;

  final TRes Function(Input_ClassesVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesVarianceOrderBy<TRes>
    implements CopyWith_Input_ClassesVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_CollegesAggregateOrderBy {
  factory Input_CollegesAggregateOrderBy({
    Enum_OrderBy? count,
    Input_CollegesMaxOrderBy? max,
    Input_CollegesMinOrderBy? min,
  }) => Input_CollegesAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_CollegesAggregateOrderBy._(this._$data);

  factory Input_CollegesAggregateOrderBy.fromJson(Map<String, dynamic> data) {
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
          : Input_CollegesMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_CollegesMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    return Input_CollegesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_CollegesMaxOrderBy? get max =>
      (_$data['max'] as Input_CollegesMaxOrderBy?);

  Input_CollegesMinOrderBy? get min =>
      (_$data['min'] as Input_CollegesMinOrderBy?);

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

  CopyWith_Input_CollegesAggregateOrderBy<Input_CollegesAggregateOrderBy>
  get copyWith => CopyWith_Input_CollegesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesAggregateOrderBy ||
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

abstract class CopyWith_Input_CollegesAggregateOrderBy<TRes> {
  factory CopyWith_Input_CollegesAggregateOrderBy(
    Input_CollegesAggregateOrderBy instance,
    TRes Function(Input_CollegesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesAggregateOrderBy;

  factory CopyWith_Input_CollegesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_CollegesMaxOrderBy? max,
    Input_CollegesMinOrderBy? min,
  });
  CopyWith_Input_CollegesMaxOrderBy<TRes> get max;
  CopyWith_Input_CollegesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_CollegesAggregateOrderBy<TRes>
    implements CopyWith_Input_CollegesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesAggregateOrderBy(this._instance, this._then);

  final Input_CollegesAggregateOrderBy _instance;

  final TRes Function(Input_CollegesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_CollegesAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_CollegesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_CollegesMinOrderBy?),
    }),
  );

  CopyWith_Input_CollegesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_CollegesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_CollegesMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_CollegesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_CollegesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_CollegesMinOrderBy(local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_CollegesAggregateOrderBy<TRes>
    implements CopyWith_Input_CollegesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_CollegesMaxOrderBy? max,
    Input_CollegesMinOrderBy? min,
  }) => _res;

  CopyWith_Input_CollegesMaxOrderBy<TRes> get max =>
      CopyWith_Input_CollegesMaxOrderBy.stub(_res);

  CopyWith_Input_CollegesMinOrderBy<TRes> get min =>
      CopyWith_Input_CollegesMinOrderBy.stub(_res);
}

class Input_CollegesArrRelInsertInput {
  factory Input_CollegesArrRelInsertInput({
    required List<Input_CollegesInsertInput> data,
    Input_CollegesOnConflict? onConflict,
  }) => Input_CollegesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_CollegesArrRelInsertInput._(this._$data);

  factory Input_CollegesArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) =>
              Input_CollegesInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_CollegesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_CollegesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_CollegesInsertInput> get data =>
      (_$data['data'] as List<Input_CollegesInsertInput>);

  Input_CollegesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_CollegesOnConflict?);

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

  CopyWith_Input_CollegesArrRelInsertInput<Input_CollegesArrRelInsertInput>
  get copyWith => CopyWith_Input_CollegesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesArrRelInsertInput ||
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

abstract class CopyWith_Input_CollegesArrRelInsertInput<TRes> {
  factory CopyWith_Input_CollegesArrRelInsertInput(
    Input_CollegesArrRelInsertInput instance,
    TRes Function(Input_CollegesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_CollegesArrRelInsertInput;

  factory CopyWith_Input_CollegesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesArrRelInsertInput;

  TRes call({
    List<Input_CollegesInsertInput>? data,
    Input_CollegesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_CollegesInsertInput> Function(
      Iterable<CopyWith_Input_CollegesInsertInput<Input_CollegesInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_CollegesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_CollegesArrRelInsertInput<TRes>
    implements CopyWith_Input_CollegesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_CollegesArrRelInsertInput(this._instance, this._then);

  final Input_CollegesArrRelInsertInput _instance;

  final TRes Function(Input_CollegesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_CollegesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_CollegesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_CollegesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_CollegesInsertInput> Function(
      Iterable<CopyWith_Input_CollegesInsertInput<Input_CollegesInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_CollegesInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_CollegesOnConflict.stub(_then(_instance))
        : CopyWith_Input_CollegesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesArrRelInsertInput<TRes>
    implements CopyWith_Input_CollegesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_CollegesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_CollegesInsertInput>? data,
    Input_CollegesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict =>
      CopyWith_Input_CollegesOnConflict.stub(_res);
}

class Input_CollegesBoolExp {
  factory Input_CollegesBoolExp({
    List<Input_CollegesBoolExp>? $_and,
    Input_CollegesBoolExp? $_not,
    List<Input_CollegesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
    Input_UniversitiesBoolExp? university,
    Input_UuidComparisonExp? universityId,
  }) => Input_CollegesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (university != null) r'university': university,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesBoolExp._(this._$data);

  factory Input_CollegesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_CollegesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_CollegesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_CollegesBoolExp.fromJson((e as Map<String, dynamic>)),
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
    if (data.containsKey('university')) {
      final l$university = data['university'];
      result$data['university'] = l$university == null
          ? null
          : Input_UniversitiesBoolExp.fromJson(
              (l$university as Map<String, dynamic>),
            );
    }
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$universityId as Map<String, dynamic>),
            );
    }
    return Input_CollegesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_CollegesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_CollegesBoolExp>?);

  Input_CollegesBoolExp? get $_not =>
      (_$data['_not'] as Input_CollegesBoolExp?);

  List<Input_CollegesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_CollegesBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

  Input_UniversitiesBoolExp? get university =>
      (_$data['university'] as Input_UniversitiesBoolExp?);

  Input_UuidComparisonExp? get universityId =>
      (_$data['universityId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('university')) {
      final l$university = university;
      result$data['university'] = l$university?.toJson();
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CollegesBoolExp<Input_CollegesBoolExp> get copyWith =>
      CopyWith_Input_CollegesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesBoolExp || runtimeType != other.runtimeType) {
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
    final l$university = university;
    final lOther$university = other.university;
    if (_$data.containsKey('university') !=
        other._$data.containsKey('university')) {
      return false;
    }
    if (l$university != lOther$university) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
    final l$university = university;
    final l$universityId = universityId;
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
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('university') ? l$university : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}
