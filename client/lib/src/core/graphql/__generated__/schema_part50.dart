// Part 50 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsSetInput<TRes> {
  factory CopyWith_Input_PersonsSetInput(
    Input_PersonsSetInput instance,
    TRes Function(Input_PersonsSetInput) then,
  ) = _CopyWithImpl_Input_PersonsSetInput;

  factory CopyWith_Input_PersonsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsSetInput;

  TRes call({
    DateTime? birthdate,
    UuidValue? churchId,
    UuidValue? collegeId,
    int? color,
    UuidValue? familyId,
    UuidValue? fatherId,
    bool? gender,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    String? jobDescription,
    UuidValue? jobId,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    UuidValue? personTypeId,
    UuidValue? qualificationId,
    UuidValue? schoolId,
    String? serviceType,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    UuidValue? stateId,
    UuidValue? storeId,
    int? studyYearId,
    UuidValue? uid,
    String? workStatus,
  });
}

class _CopyWithImpl_Input_PersonsSetInput<TRes>
    implements CopyWith_Input_PersonsSetInput<TRes> {
  _CopyWithImpl_Input_PersonsSetInput(this._instance, this._then);

  final Input_PersonsSetInput _instance;

  final TRes Function(Input_PersonsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthdate = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? gender = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? mainPhone = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personTypeId = _undefined,
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
    Input_PersonsSetInput._({
      ..._instance._$data,
      if (birthdate != _undefined) 'birthdate': (birthdate as DateTime?),
      if (churchId != _undefined) 'churchId': (churchId as UuidValue?),
      if (collegeId != _undefined) 'collegeId': (collegeId as UuidValue?),
      if (color != _undefined) 'color': (color as int?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (fatherId != _undefined) 'fatherId': (fatherId as UuidValue?),
      if (gender != _undefined) 'gender': (gender as bool?),
      if (isServant != _undefined) 'isServant': (isServant as bool?),
      if (isShammas != _undefined) 'isShammas': (isShammas as bool?),
      if (isStudent != _undefined) 'isStudent': (isStudent as bool?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as String?),
      if (jobId != _undefined) 'jobId': (jobId as UuidValue?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as String?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as String?),
      if (name != _undefined) 'name': (name as String?),
      if (nationalId != _undefined) 'nationalId': (nationalId as int?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as Json?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as UuidValue?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as UuidValue?),
      if (schoolId != _undefined) 'schoolId': (schoolId as UuidValue?),
      if (serviceType != _undefined) 'serviceType': (serviceType as String?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as UuidValue?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as UuidValue?),
      if (stateId != _undefined) 'stateId': (stateId as UuidValue?),
      if (storeId != _undefined) 'storeId': (storeId as UuidValue?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
      if (workStatus != _undefined) 'workStatus': (workStatus as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsSetInput<TRes>
    implements CopyWith_Input_PersonsSetInput<TRes> {
  _CopyWithStubImpl_Input_PersonsSetInput(this._res);

  TRes _res;

  call({
    DateTime? birthdate,
    UuidValue? churchId,
    UuidValue? collegeId,
    int? color,
    UuidValue? familyId,
    UuidValue? fatherId,
    bool? gender,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    String? jobDescription,
    UuidValue? jobId,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    UuidValue? personTypeId,
    UuidValue? qualificationId,
    UuidValue? schoolId,
    String? serviceType,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    UuidValue? stateId,
    UuidValue? storeId,
    int? studyYearId,
    UuidValue? uid,
    String? workStatus,
  }) => _res;
}

class Input_PersonsStddevOrderBy {
  factory Input_PersonsStddevOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsStddevOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsStddevOrderBy._(this._$data);

  factory Input_PersonsStddevOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsStddevOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsStddevOrderBy<Input_PersonsStddevOrderBy>
  get copyWith => CopyWith_Input_PersonsStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsStddevOrderBy ||
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsStddevOrderBy<TRes> {
  factory CopyWith_Input_PersonsStddevOrderBy(
    Input_PersonsStddevOrderBy instance,
    TRes Function(Input_PersonsStddevOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsStddevOrderBy;

  factory CopyWith_Input_PersonsStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsStddevOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsStddevOrderBy<TRes>
    implements CopyWith_Input_PersonsStddevOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsStddevOrderBy(this._instance, this._then);

  final Input_PersonsStddevOrderBy _instance;

  final TRes Function(Input_PersonsStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsStddevOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsStddevOrderBy<TRes>
    implements CopyWith_Input_PersonsStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsStddevOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsStddevPopOrderBy {
  factory Input_PersonsStddevPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsStddevPopOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsStddevPopOrderBy._(this._$data);

  factory Input_PersonsStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsStddevPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsStddevPopOrderBy<Input_PersonsStddevPopOrderBy>
  get copyWith => CopyWith_Input_PersonsStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsStddevPopOrderBy ||
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsStddevPopOrderBy<TRes> {
  factory CopyWith_Input_PersonsStddevPopOrderBy(
    Input_PersonsStddevPopOrderBy instance,
    TRes Function(Input_PersonsStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsStddevPopOrderBy;

  factory CopyWith_Input_PersonsStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsStddevPopOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsStddevPopOrderBy<TRes>
    implements CopyWith_Input_PersonsStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsStddevPopOrderBy(this._instance, this._then);

  final Input_PersonsStddevPopOrderBy _instance;

  final TRes Function(Input_PersonsStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsStddevPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsStddevPopOrderBy<TRes>
    implements CopyWith_Input_PersonsStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsStddevPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsStddevSampOrderBy {
  factory Input_PersonsStddevSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsStddevSampOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsStddevSampOrderBy._(this._$data);

  factory Input_PersonsStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsStddevSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsStddevSampOrderBy<Input_PersonsStddevSampOrderBy>
  get copyWith => CopyWith_Input_PersonsStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsStddevSampOrderBy ||
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsStddevSampOrderBy<TRes> {
  factory CopyWith_Input_PersonsStddevSampOrderBy(
    Input_PersonsStddevSampOrderBy instance,
    TRes Function(Input_PersonsStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsStddevSampOrderBy;

  factory CopyWith_Input_PersonsStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsStddevSampOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsStddevSampOrderBy<TRes>
    implements CopyWith_Input_PersonsStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsStddevSampOrderBy(this._instance, this._then);

  final Input_PersonsStddevSampOrderBy _instance;

  final TRes Function(Input_PersonsStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsStddevSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsStddevSampOrderBy<TRes>
    implements CopyWith_Input_PersonsStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsStddevSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsStreamCursorInput {
  factory Input_PersonsStreamCursorInput({
    required Input_PersonsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonsStreamCursorInput._(this._$data);

  factory Input_PersonsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_PersonsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonsStreamCursorValueInput);

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

  CopyWith_Input_PersonsStreamCursorInput<Input_PersonsStreamCursorInput>
  get copyWith => CopyWith_Input_PersonsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsStreamCursorInput(
    Input_PersonsStreamCursorInput instance,
    TRes Function(Input_PersonsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsStreamCursorInput;

  factory CopyWith_Input_PersonsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsStreamCursorInput;

  TRes call({
    Input_PersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsStreamCursorInput(this._instance, this._then);

  final Input_PersonsStreamCursorInput _instance;

  final TRes Function(Input_PersonsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_PersonsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsStreamCursorValueInput.stub(_res);
}

class Input_PersonsStreamCursorValueInput {
  factory Input_PersonsStreamCursorValueInput({
    DateTime? birthdate,
    String? blurhash,
    UuidValue? churchId,
    UuidValue? collegeId,
    int? color,
    UuidValue? familyId,
    UuidValue? fatherId,
    bool? gender,
    UuidValue? id,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    String? jobDescription,
    UuidValue? jobId,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    UuidValue? personTypeId,
    DateTime? photoUpdatedAt,
    UuidValue? qualificationId,
    UuidValue? schoolId,
    String? serviceType,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    UuidValue? stateId,
    UuidValue? storeId,
    int? studyYearId,
    UuidValue? uid,
    String? workStatus,
  }) => Input_PersonsStreamCursorValueInput._({
    if (birthdate != null) r'birthdate': birthdate,
    if (blurhash != null) r'blurhash': blurhash,
    if (churchId != null) r'churchId': churchId,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (familyId != null) r'familyId': familyId,
    if (fatherId != null) r'fatherId': fatherId,
    if (gender != null) r'gender': gender,
    if (id != null) r'id': id,
    if (isServant != null) r'isServant': isServant,
    if (isShammas != null) r'isShammas': isShammas,
    if (isStudent != null) r'isStudent': isStudent,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (otherPhones != null) r'otherPhones': otherPhones,
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

  Input_PersonsStreamCursorValueInput._(this._$data);

  factory Input_PersonsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateFromString(l$birthdate);
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : stringToUuid(l$churchId);
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : stringToUuid(l$collegeId);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : stringToUuid(l$fatherId);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = (l$isServant as bool?);
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = (l$isShammas as bool?);
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = (l$isStudent as bool?);
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null ? null : stringToUuid(l$jobId);
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = (l$mainPhone as String?);
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = (l$martialStatus as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = (l$nationalId as int?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as Json?);
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt);
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : stringToUuid(l$qualificationId);
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : stringToUuid(l$schoolId);
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = (l$serviceType as String?);
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : stringToUuid(l$servingChurchId);
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : stringToUuid(l$shammasLevelId);
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : stringToUuid(l$stateId);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : stringToUuid(l$storeId);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = (l$workStatus as String?);
    }
    return Input_PersonsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get birthdate => (_$data['birthdate'] as DateTime?);

  String? get blurhash => (_$data['blurhash'] as String?);

  UuidValue? get churchId => (_$data['churchId'] as UuidValue?);

  UuidValue? get collegeId => (_$data['collegeId'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  UuidValue? get fatherId => (_$data['fatherId'] as UuidValue?);

  bool? get gender => (_$data['gender'] as bool?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isServant => (_$data['isServant'] as bool?);

  bool? get isShammas => (_$data['isShammas'] as bool?);

  bool? get isStudent => (_$data['isStudent'] as bool?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  UuidValue? get jobId => (_$data['jobId'] as UuidValue?);

  String? get mainPhone => (_$data['mainPhone'] as String?);

  String? get martialStatus => (_$data['martialStatus'] as String?);

  String? get name => (_$data['name'] as String?);

  int? get nationalId => (_$data['nationalId'] as int?);

  String? get notes => (_$data['notes'] as String?);

  Json? get otherPhones => (_$data['otherPhones'] as Json?);

  UuidValue? get personTypeId => (_$data['personTypeId'] as UuidValue?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  UuidValue? get qualificationId => (_$data['qualificationId'] as UuidValue?);

  UuidValue? get schoolId => (_$data['schoolId'] as UuidValue?);

  String? get serviceType => (_$data['serviceType'] as String?);

  UuidValue? get servingChurchId => (_$data['servingChurchId'] as UuidValue?);

  UuidValue? get shammasLevelId => (_$data['shammasLevelId'] as UuidValue?);

  UuidValue? get stateId => (_$data['stateId'] as UuidValue?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  String? get workStatus => (_$data['workStatus'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateToString(l$birthdate);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : uuidToString(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : uuidToString(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : uuidToString(l$fatherId);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant;
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas;
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent;
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null ? null : uuidToString(l$jobId);
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone;
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : uuidToString(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : uuidToString(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : uuidToString(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType;
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : uuidToString(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : uuidToString(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : uuidToString(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : uuidToString(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus;
    }
    return result$data;
  }

  CopyWith_Input_PersonsStreamCursorValueInput<
    Input_PersonsStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_PersonsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (_$data.containsKey('isShammas') !=
        other._$data.containsKey('isShammas')) {
      return false;
    }
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
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
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
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
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
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
    final l$gender = gender;
    final l$id = id;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$mainPhone = mainPhone;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
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
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
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

abstract class CopyWith_Input_PersonsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsStreamCursorValueInput(
    Input_PersonsStreamCursorValueInput instance,
    TRes Function(Input_PersonsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsStreamCursorValueInput;

  factory CopyWith_Input_PersonsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsStreamCursorValueInput;

  TRes call({
    DateTime? birthdate,
    String? blurhash,
    UuidValue? churchId,
    UuidValue? collegeId,
    int? color,
    UuidValue? familyId,
    UuidValue? fatherId,
    bool? gender,
    UuidValue? id,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    String? jobDescription,
    UuidValue? jobId,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    UuidValue? personTypeId,
    DateTime? photoUpdatedAt,
    UuidValue? qualificationId,
    UuidValue? schoolId,
    String? serviceType,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    UuidValue? stateId,
    UuidValue? storeId,
    int? studyYearId,
    UuidValue? uid,
    String? workStatus,
  });
}

class _CopyWithImpl_Input_PersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsStreamCursorValueInput(this._instance, this._then);

  final Input_PersonsStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? gender = _undefined,
    Object? id = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? mainPhone = _undefined,
    Object? martialStatus = _undefined,
    Object? name = _undefined,
    Object? nationalId = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
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
    Input_PersonsStreamCursorValueInput._({
      ..._instance._$data,
      if (birthdate != _undefined) 'birthdate': (birthdate as DateTime?),
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (churchId != _undefined) 'churchId': (churchId as UuidValue?),
      if (collegeId != _undefined) 'collegeId': (collegeId as UuidValue?),
      if (color != _undefined) 'color': (color as int?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (fatherId != _undefined) 'fatherId': (fatherId as UuidValue?),
      if (gender != _undefined) 'gender': (gender as bool?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isServant != _undefined) 'isServant': (isServant as bool?),
      if (isShammas != _undefined) 'isShammas': (isShammas as bool?),
      if (isStudent != _undefined) 'isStudent': (isStudent as bool?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as String?),
      if (jobId != _undefined) 'jobId': (jobId as UuidValue?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as String?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as String?),
      if (name != _undefined) 'name': (name as String?),
      if (nationalId != _undefined) 'nationalId': (nationalId as int?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as Json?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as UuidValue?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as UuidValue?),
      if (schoolId != _undefined) 'schoolId': (schoolId as UuidValue?),
      if (serviceType != _undefined) 'serviceType': (serviceType as String?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as UuidValue?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as UuidValue?),
      if (stateId != _undefined) 'stateId': (stateId as UuidValue?),
      if (storeId != _undefined) 'storeId': (storeId as UuidValue?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
      if (workStatus != _undefined) 'workStatus': (workStatus as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    DateTime? birthdate,
    String? blurhash,
    UuidValue? churchId,
    UuidValue? collegeId,
    int? color,
    UuidValue? familyId,
    UuidValue? fatherId,
    bool? gender,
    UuidValue? id,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    String? jobDescription,
    UuidValue? jobId,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    UuidValue? personTypeId,
    DateTime? photoUpdatedAt,
    UuidValue? qualificationId,
    UuidValue? schoolId,
    String? serviceType,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    UuidValue? stateId,
    UuidValue? storeId,
    int? studyYearId,
    UuidValue? uid,
    String? workStatus,
  }) => _res;
}

class Input_PersonsSumOrderBy {
  factory Input_PersonsSumOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsSumOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsSumOrderBy._(this._$data);

  factory Input_PersonsSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsSumOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsSumOrderBy<Input_PersonsSumOrderBy> get copyWith =>
      CopyWith_Input_PersonsSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsSumOrderBy || runtimeType != other.runtimeType) {
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsSumOrderBy<TRes> {
  factory CopyWith_Input_PersonsSumOrderBy(
    Input_PersonsSumOrderBy instance,
    TRes Function(Input_PersonsSumOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsSumOrderBy;

  factory CopyWith_Input_PersonsSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsSumOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsSumOrderBy<TRes>
    implements CopyWith_Input_PersonsSumOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsSumOrderBy(this._instance, this._then);

  final Input_PersonsSumOrderBy _instance;

  final TRes Function(Input_PersonsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsSumOrderBy<TRes>
    implements CopyWith_Input_PersonsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsSumOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsTagsAggregateOrderBy {
  factory Input_PersonsTagsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_PersonsTagsMaxOrderBy? max,
    Input_PersonsTagsMinOrderBy? min,
  }) => Input_PersonsTagsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_PersonsTagsAggregateOrderBy._(this._$data);

  factory Input_PersonsTagsAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
          : Input_PersonsTagsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_PersonsTagsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_PersonsTagsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_PersonsTagsMaxOrderBy? get max =>
      (_$data['max'] as Input_PersonsTagsMaxOrderBy?);

  Input_PersonsTagsMinOrderBy? get min =>
      (_$data['min'] as Input_PersonsTagsMinOrderBy?);

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

  CopyWith_Input_PersonsTagsAggregateOrderBy<Input_PersonsTagsAggregateOrderBy>
  get copyWith => CopyWith_Input_PersonsTagsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsAggregateOrderBy ||
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

abstract class CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsAggregateOrderBy(
    Input_PersonsTagsAggregateOrderBy instance,
    TRes Function(Input_PersonsTagsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsAggregateOrderBy;

  factory CopyWith_Input_PersonsTagsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_PersonsTagsMaxOrderBy? max,
    Input_PersonsTagsMinOrderBy? min,
  });
  CopyWith_Input_PersonsTagsMaxOrderBy<TRes> get max;
  CopyWith_Input_PersonsTagsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_PersonsTagsAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsAggregateOrderBy(this._instance, this._then);

  final Input_PersonsTagsAggregateOrderBy _instance;

  final TRes Function(Input_PersonsTagsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_PersonsTagsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_PersonsTagsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_PersonsTagsMinOrderBy?),
    }),
  );

  CopyWith_Input_PersonsTagsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_PersonsTagsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_PersonsTagsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_PersonsTagsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsMinOrderBy(local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_PersonsTagsMaxOrderBy? max,
    Input_PersonsTagsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_PersonsTagsMaxOrderBy<TRes> get max =>
      CopyWith_Input_PersonsTagsMaxOrderBy.stub(_res);

  CopyWith_Input_PersonsTagsMinOrderBy<TRes> get min =>
      CopyWith_Input_PersonsTagsMinOrderBy.stub(_res);
}

class Input_PersonsTagsArrRelInsertInput {
  factory Input_PersonsTagsArrRelInsertInput({
    required List<Input_PersonsTagsInsertInput> data,
    Input_PersonsTagsOnConflict? onConflict,
  }) => Input_PersonsTagsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsTagsArrRelInsertInput._(this._$data);

  factory Input_PersonsTagsArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_PersonsTagsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsTagsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsTagsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsTagsInsertInput> get data =>
      (_$data['data'] as List<Input_PersonsTagsInsertInput>);

  Input_PersonsTagsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsTagsOnConflict?);

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

  CopyWith_Input_PersonsTagsArrRelInsertInput<
    Input_PersonsTagsArrRelInsertInput
  >
  get copyWith => CopyWith_Input_PersonsTagsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsArrRelInsertInput ||
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

abstract class CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsTagsArrRelInsertInput(
    Input_PersonsTagsArrRelInsertInput instance,
    TRes Function(Input_PersonsTagsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsArrRelInsertInput;

  factory CopyWith_Input_PersonsTagsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsArrRelInsertInput;

  TRes call({
    List<Input_PersonsTagsInsertInput>? data,
    Input_PersonsTagsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_PersonsTagsInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsTagsInsertInput<Input_PersonsTagsInsertInput>
      >,
    )
    _fn,
  );
  CopyWith_Input_PersonsTagsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsTagsArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsArrRelInsertInput(this._instance, this._then);

  final Input_PersonsTagsArrRelInsertInput _instance;

  final TRes Function(Input_PersonsTagsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonsTagsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_PersonsTagsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonsTagsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_PersonsTagsInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsTagsInsertInput<Input_PersonsTagsInsertInput>
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_PersonsTagsInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_PersonsTagsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsTagsOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsTagsArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsTagsInsertInput>? data,
    Input_PersonsTagsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsTagsOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsTagsOnConflict.stub(_res);
}

class Input_PersonsTagsBoolExp {
  factory Input_PersonsTagsBoolExp({
    List<Input_PersonsTagsBoolExp>? $_and,
    Input_PersonsTagsBoolExp? $_not,
    List<Input_PersonsTagsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TagsBoolExp? tag,
    Input_UuidComparisonExp? tagId,
  }) => Input_PersonsTagsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (tag != null) r'tag': tag,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsBoolExp._(this._$data);

  factory Input_PersonsTagsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonsTagsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsTagsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_PersonsTagsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
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
    if (data.containsKey('tag')) {
      final l$tag = data['tag'];
      result$data['tag'] = l$tag == null
          ? null
          : Input_TagsBoolExp.fromJson((l$tag as Map<String, dynamic>));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$tagId as Map<String, dynamic>));
    }
    return Input_PersonsTagsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsTagsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsTagsBoolExp>?);

  Input_PersonsTagsBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsTagsBoolExp?);

  List<Input_PersonsTagsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsTagsBoolExp>?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_TagsBoolExp? get tag => (_$data['tag'] as Input_TagsBoolExp?);

  Input_UuidComparisonExp? get tagId =>
      (_$data['tagId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('tag')) {
      final l$tag = tag;
      result$data['tag'] = l$tag?.toJson();
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp> get copyWith =>
      CopyWith_Input_PersonsTagsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsBoolExp ||
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
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (_$data.containsKey('tag') != other._$data.containsKey('tag')) {
      return false;
    }
    if (l$tag != lOther$tag) {
      return false;
    }
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (_$data.containsKey('tagId') != other._$data.containsKey('tagId')) {
      return false;
    }
    if (l$tagId != lOther$tagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$person = person;
    final l$personId = personId;
    final l$tag = tag;
    final l$tagId = tagId;
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
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tag') ? l$tag : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}
