// Part 47 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsMainContactsBoolExp<TRes> {
  factory CopyWith_Input_PersonsMainContactsBoolExp(
    Input_PersonsMainContactsBoolExp instance,
    TRes Function(Input_PersonsMainContactsBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsMainContactsBoolExp;

  factory CopyWith_Input_PersonsMainContactsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMainContactsBoolExp;

  TRes call({
    List<Input_PersonsMainContactsBoolExp>? $_and,
    Input_PersonsMainContactsBoolExp? $_not,
    List<Input_PersonsMainContactsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? label,
    Input_UuidComparisonExp? personId,
    Input_StringComparisonExp? phone,
  });
  TRes $_and(
    Iterable<Input_PersonsMainContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsMainContactsBoolExp<
          Input_PersonsMainContactsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsMainContactsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsMainContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsMainContactsBoolExp<
          Input_PersonsMainContactsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get label;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_StringComparisonExp<TRes> get phone;
}

class _CopyWithImpl_Input_PersonsMainContactsBoolExp<TRes>
    implements CopyWith_Input_PersonsMainContactsBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsMainContactsBoolExp(this._instance, this._then);

  final Input_PersonsMainContactsBoolExp _instance;

  final TRes Function(Input_PersonsMainContactsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? phone = _undefined,
  }) => _then(
    Input_PersonsMainContactsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsMainContactsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_PersonsMainContactsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_PersonsMainContactsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (label != _undefined) 'label': (label as Input_StringComparisonExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (phone != _undefined) 'phone': (phone as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsMainContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsMainContactsBoolExp<
          Input_PersonsMainContactsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsMainContactsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsMainContactsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsMainContactsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsMainContactsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_PersonsMainContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsMainContactsBoolExp<
          Input_PersonsMainContactsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsMainContactsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
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

  CopyWith_Input_UuidComparisonExp<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personId,
            (e) => call(personId: e),
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
}

class _CopyWithStubImpl_Input_PersonsMainContactsBoolExp<TRes>
    implements CopyWith_Input_PersonsMainContactsBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsMainContactsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsMainContactsBoolExp>? $_and,
    Input_PersonsMainContactsBoolExp? $_not,
    List<Input_PersonsMainContactsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? label,
    Input_UuidComparisonExp? personId,
    Input_StringComparisonExp? phone,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsMainContactsBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsMainContactsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get label =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get phone =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_PersonsMainContactsOrderBy {
  factory Input_PersonsMainContactsOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? phone,
  }) => Input_PersonsMainContactsOrderBy._({
    if (id != null) r'id': id,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (phone != null) r'phone': phone,
  });

  Input_PersonsMainContactsOrderBy._(this._$data);

  factory Input_PersonsMainContactsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : fromJson_Enum_OrderBy((l$phone as String));
    }
    return Input_PersonsMainContactsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get label => (_$data['label'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get phone => (_$data['phone'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone == null
          ? null
          : toJson_Enum_OrderBy(l$phone);
    }
    return result$data;
  }

  CopyWith_Input_PersonsMainContactsOrderBy<Input_PersonsMainContactsOrderBy>
  get copyWith => CopyWith_Input_PersonsMainContactsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMainContactsOrderBy ||
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
    final l$id = id;
    final l$label = label;
    final l$personId = personId;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMainContactsOrderBy<TRes> {
  factory CopyWith_Input_PersonsMainContactsOrderBy(
    Input_PersonsMainContactsOrderBy instance,
    TRes Function(Input_PersonsMainContactsOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMainContactsOrderBy;

  factory CopyWith_Input_PersonsMainContactsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMainContactsOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? phone,
  });
}

class _CopyWithImpl_Input_PersonsMainContactsOrderBy<TRes>
    implements CopyWith_Input_PersonsMainContactsOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMainContactsOrderBy(this._instance, this._then);

  final Input_PersonsMainContactsOrderBy _instance;

  final TRes Function(Input_PersonsMainContactsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? phone = _undefined,
  }) => _then(
    Input_PersonsMainContactsOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (label != _undefined) 'label': (label as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (phone != _undefined) 'phone': (phone as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsMainContactsOrderBy<TRes>
    implements CopyWith_Input_PersonsMainContactsOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMainContactsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? phone,
  }) => _res;
}

class Input_PersonsMainContactsStreamCursorInput {
  factory Input_PersonsMainContactsStreamCursorInput({
    required Input_PersonsMainContactsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonsMainContactsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonsMainContactsStreamCursorInput._(this._$data);

  factory Input_PersonsMainContactsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonsMainContactsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsMainContactsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsMainContactsStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_PersonsMainContactsStreamCursorValueInput);

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

  CopyWith_Input_PersonsMainContactsStreamCursorInput<
    Input_PersonsMainContactsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_PersonsMainContactsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMainContactsStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsMainContactsStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsMainContactsStreamCursorInput(
    Input_PersonsMainContactsStreamCursorInput instance,
    TRes Function(Input_PersonsMainContactsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsMainContactsStreamCursorInput;

  factory CopyWith_Input_PersonsMainContactsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMainContactsStreamCursorInput;

  TRes call({
    Input_PersonsMainContactsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsMainContactsStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_PersonsMainContactsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsMainContactsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsMainContactsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_PersonsMainContactsStreamCursorInput _instance;

  final TRes Function(Input_PersonsMainContactsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonsMainContactsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonsMainContactsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonsMainContactsStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsMainContactsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsMainContactsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsMainContactsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsMainContactsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsMainContactsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonsMainContactsStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_PersonsMainContactsStreamCursorValueInput.stub(_res);
}

class Input_PersonsMainContactsStreamCursorValueInput {
  factory Input_PersonsMainContactsStreamCursorValueInput({
    UuidValue? id,
    String? label,
    UuidValue? personId,
    String? phone,
  }) => Input_PersonsMainContactsStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (phone != null) r'phone': phone,
  });

  Input_PersonsMainContactsStreamCursorValueInput._(this._$data);

  factory Input_PersonsMainContactsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input_PersonsMainContactsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get label => (_$data['label'] as String?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith_Input_PersonsMainContactsStreamCursorValueInput<
    Input_PersonsMainContactsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonsMainContactsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMainContactsStreamCursorValueInput ||
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
    final l$id = id;
    final l$label = label;
    final l$personId = personId;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMainContactsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsMainContactsStreamCursorValueInput(
    Input_PersonsMainContactsStreamCursorValueInput instance,
    TRes Function(Input_PersonsMainContactsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsMainContactsStreamCursorValueInput;

  factory CopyWith_Input_PersonsMainContactsStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_PersonsMainContactsStreamCursorValueInput;

  TRes call({UuidValue? id, String? label, UuidValue? personId, String? phone});
}

class _CopyWithImpl_Input_PersonsMainContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsMainContactsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsMainContactsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsMainContactsStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsMainContactsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? phone = _undefined,
  }) => _then(
    Input_PersonsMainContactsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (label != _undefined) 'label': (label as String?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (phone != _undefined) 'phone': (phone as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsMainContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsMainContactsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsMainContactsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? label, UuidValue? personId, String? phone}) =>
      _res;
}

class Input_PersonsMaxOrderBy {
  factory Input_PersonsMaxOrderBy({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => Input_PersonsMaxOrderBy._({
    if (birthdate != null) r'birthdate': birthdate,
    if (blurhash != null) r'blurhash': blurhash,
    if (churchId != null) r'churchId': churchId,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (familyId != null) r'familyId': familyId,
    if (fatherId != null) r'fatherId': fatherId,
    if (id != null) r'id': id,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (stateId != null) r'stateId': stateId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (uid != null) r'uid': uid,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsMaxOrderBy._(this._$data);

  factory Input_PersonsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : fromJson_Enum_OrderBy((l$birthdate as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : fromJson_Enum_OrderBy((l$collegeId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : fromJson_Enum_OrderBy((l$fatherId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : fromJson_Enum_OrderBy((l$jobDescription as String));
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null
          ? null
          : fromJson_Enum_OrderBy((l$jobId as String));
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$martialStatus as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : fromJson_Enum_OrderBy((l$qualificationId as String));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : fromJson_Enum_OrderBy((l$schoolId as String));
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = l$serviceType == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceType as String));
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : fromJson_Enum_OrderBy((l$servingChurchId as String));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : fromJson_Enum_OrderBy((l$shammasLevelId as String));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : fromJson_Enum_OrderBy((l$stateId as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = l$workStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$workStatus as String));
    }
    return Input_PersonsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get birthdate => (_$data['birthdate'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get collegeId => (_$data['collegeId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get fatherId => (_$data['fatherId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get jobDescription =>
      (_$data['jobDescription'] as Enum_OrderBy?);

  Enum_OrderBy? get jobId => (_$data['jobId'] as Enum_OrderBy?);

  Enum_OrderBy? get martialStatus => (_$data['martialStatus'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get qualificationId =>
      (_$data['qualificationId'] as Enum_OrderBy?);

  Enum_OrderBy? get schoolId => (_$data['schoolId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceType => (_$data['serviceType'] as Enum_OrderBy?);

  Enum_OrderBy? get servingChurchId =>
      (_$data['servingChurchId'] as Enum_OrderBy?);

  Enum_OrderBy? get shammasLevelId =>
      (_$data['shammasLevelId'] as Enum_OrderBy?);

  Enum_OrderBy? get stateId => (_$data['stateId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Enum_OrderBy? get workStatus => (_$data['workStatus'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : toJson_Enum_OrderBy(l$birthdate);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : toJson_Enum_OrderBy(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : toJson_Enum_OrderBy(l$fatherId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : toJson_Enum_OrderBy(l$jobDescription);
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null
          ? null
          : toJson_Enum_OrderBy(l$jobId);
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : toJson_Enum_OrderBy(l$martialStatus);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes == null
          ? null
          : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : toJson_Enum_OrderBy(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : toJson_Enum_OrderBy(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType == null
          ? null
          : toJson_Enum_OrderBy(l$serviceType);
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : toJson_Enum_OrderBy(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : toJson_Enum_OrderBy(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : toJson_Enum_OrderBy(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus == null
          ? null
          : toJson_Enum_OrderBy(l$workStatus);
    }
    return result$data;
  }

  CopyWith_Input_PersonsMaxOrderBy<Input_PersonsMaxOrderBy> get copyWith =>
      CopyWith_Input_PersonsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMaxOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
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
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$servingChurchId = servingChurchId;
    final lOther$servingChurchId = other.servingChurchId;
    if (_$data.containsKey('servingChurchId') !=
        other._$data.containsKey('servingChurchId')) {
      return false;
    }
    if (l$servingChurchId != lOther$servingChurchId) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (_$data.containsKey('workStatus') !=
        other._$data.containsKey('workStatus')) {
      return false;
    }
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$birthdate = birthdate;
    final l$blurhash = blurhash;
    final l$churchId = churchId;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$familyId = familyId;
    final l$fatherId = fatherId;
    final l$id = id;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualificationId = qualificationId;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevelId = shammasLevelId;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$uid = uid;
    final l$workStatus = workStatus;
    return Object.hashAll([
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsMaxOrderBy(
    Input_PersonsMaxOrderBy instance,
    TRes Function(Input_PersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMaxOrderBy;

  factory CopyWith_Input_PersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMaxOrderBy;

  TRes call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  });
}

class _CopyWithImpl_Input_PersonsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMaxOrderBy(this._instance, this._then);

  final Input_PersonsMaxOrderBy _instance;

  final TRes Function(Input_PersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? id = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualificationId = _undefined,
    Object? schoolId = _undefined,
    Object? serviceType = _undefined,
    Object? servingChurchId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? stateId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? uid = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsMaxOrderBy._({
      ..._instance._$data,
      if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
      if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Enum_OrderBy?),
      if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as Enum_OrderBy?),
      if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Enum_OrderBy?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as Enum_OrderBy?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
      if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (workStatus != _undefined) 'workStatus': (workStatus as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => _res;
}

class Input_PersonsMinOrderBy {
  factory Input_PersonsMinOrderBy({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => Input_PersonsMinOrderBy._({
    if (birthdate != null) r'birthdate': birthdate,
    if (blurhash != null) r'blurhash': blurhash,
    if (churchId != null) r'churchId': churchId,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (familyId != null) r'familyId': familyId,
    if (fatherId != null) r'fatherId': fatherId,
    if (id != null) r'id': id,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (stateId != null) r'stateId': stateId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (uid != null) r'uid': uid,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsMinOrderBy._(this._$data);

  factory Input_PersonsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : fromJson_Enum_OrderBy((l$birthdate as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : fromJson_Enum_OrderBy((l$collegeId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : fromJson_Enum_OrderBy((l$fatherId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : fromJson_Enum_OrderBy((l$jobDescription as String));
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null
          ? null
          : fromJson_Enum_OrderBy((l$jobId as String));
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$martialStatus as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : fromJson_Enum_OrderBy((l$qualificationId as String));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : fromJson_Enum_OrderBy((l$schoolId as String));
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = l$serviceType == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceType as String));
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : fromJson_Enum_OrderBy((l$servingChurchId as String));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : fromJson_Enum_OrderBy((l$shammasLevelId as String));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : fromJson_Enum_OrderBy((l$stateId as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = l$workStatus == null
          ? null
          : fromJson_Enum_OrderBy((l$workStatus as String));
    }
    return Input_PersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get birthdate => (_$data['birthdate'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get collegeId => (_$data['collegeId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get fatherId => (_$data['fatherId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get jobDescription =>
      (_$data['jobDescription'] as Enum_OrderBy?);

  Enum_OrderBy? get jobId => (_$data['jobId'] as Enum_OrderBy?);

  Enum_OrderBy? get martialStatus => (_$data['martialStatus'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get qualificationId =>
      (_$data['qualificationId'] as Enum_OrderBy?);

  Enum_OrderBy? get schoolId => (_$data['schoolId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceType => (_$data['serviceType'] as Enum_OrderBy?);

  Enum_OrderBy? get servingChurchId =>
      (_$data['servingChurchId'] as Enum_OrderBy?);

  Enum_OrderBy? get shammasLevelId =>
      (_$data['shammasLevelId'] as Enum_OrderBy?);

  Enum_OrderBy? get stateId => (_$data['stateId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Enum_OrderBy? get workStatus => (_$data['workStatus'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : toJson_Enum_OrderBy(l$birthdate);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : toJson_Enum_OrderBy(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : toJson_Enum_OrderBy(l$fatherId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : toJson_Enum_OrderBy(l$jobDescription);
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null
          ? null
          : toJson_Enum_OrderBy(l$jobId);
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus == null
          ? null
          : toJson_Enum_OrderBy(l$martialStatus);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes == null
          ? null
          : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : toJson_Enum_OrderBy(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : toJson_Enum_OrderBy(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType == null
          ? null
          : toJson_Enum_OrderBy(l$serviceType);
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : toJson_Enum_OrderBy(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : toJson_Enum_OrderBy(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : toJson_Enum_OrderBy(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus == null
          ? null
          : toJson_Enum_OrderBy(l$workStatus);
    }
    return result$data;
  }

  CopyWith_Input_PersonsMinOrderBy<Input_PersonsMinOrderBy> get copyWith =>
      CopyWith_Input_PersonsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMinOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
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
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$servingChurchId = servingChurchId;
    final lOther$servingChurchId = other.servingChurchId;
    if (_$data.containsKey('servingChurchId') !=
        other._$data.containsKey('servingChurchId')) {
      return false;
    }
    if (l$servingChurchId != lOther$servingChurchId) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (_$data.containsKey('workStatus') !=
        other._$data.containsKey('workStatus')) {
      return false;
    }
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$birthdate = birthdate;
    final l$blurhash = blurhash;
    final l$churchId = churchId;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$familyId = familyId;
    final l$fatherId = fatherId;
    final l$id = id;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualificationId = qualificationId;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevelId = shammasLevelId;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$uid = uid;
    final l$workStatus = workStatus;
    return Object.hashAll([
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsMinOrderBy(
    Input_PersonsMinOrderBy instance,
    TRes Function(Input_PersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMinOrderBy;

  factory CopyWith_Input_PersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMinOrderBy;

  TRes call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  });
}

class _CopyWithImpl_Input_PersonsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMinOrderBy(this._instance, this._then);

  final Input_PersonsMinOrderBy _instance;

  final TRes Function(Input_PersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? id = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualificationId = _undefined,
    Object? schoolId = _undefined,
    Object? serviceType = _undefined,
    Object? servingChurchId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? stateId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? uid = _undefined,
    Object? workStatus = _undefined,
  }) => _then(
    Input_PersonsMinOrderBy._({
      ..._instance._$data,
      if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
      if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as Enum_OrderBy?),
      if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as Enum_OrderBy?),
      if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
      if (serviceType != _undefined)
        'serviceType': (serviceType as Enum_OrderBy?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as Enum_OrderBy?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
      if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (workStatus != _undefined) 'workStatus': (workStatus as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? martialStatus,
    Enum_OrderBy? name,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? serviceType,
    Enum_OrderBy? servingChurchId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
    Enum_OrderBy? workStatus,
  }) => _res;
}

class Input_PersonsObjRelInsertInput {
  factory Input_PersonsObjRelInsertInput({
    required Input_PersonsInsertInput data,
    Input_PersonsOnConflict? onConflict,
  }) => Input_PersonsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsObjRelInsertInput._(this._$data);

  factory Input_PersonsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_PersonsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsInsertInput get data =>
      (_$data['data'] as Input_PersonsInsertInput);

  Input_PersonsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsOnConflict?);

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

  CopyWith_Input_PersonsObjRelInsertInput<Input_PersonsObjRelInsertInput>
  get copyWith => CopyWith_Input_PersonsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsObjRelInsertInput ||
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
