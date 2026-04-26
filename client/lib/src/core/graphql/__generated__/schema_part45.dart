// Part 45 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_PersonsTagsBoolExp<TRes> {
  factory CopyWith_Input_PersonsTagsBoolExp(
    Input_PersonsTagsBoolExp instance,
    TRes Function(Input_PersonsTagsBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsTagsBoolExp;

  factory CopyWith_Input_PersonsTagsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsBoolExp;

  TRes call({
    List<Input_PersonsTagsBoolExp>? $_and,
    Input_PersonsTagsBoolExp? $_not,
    List<Input_PersonsTagsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TagsBoolExp? tag,
    Input_UuidComparisonExp? tagId,
  });
  TRes $_and(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonsTagsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_TagsBoolExp<TRes> get tag;
  CopyWith_Input_UuidComparisonExp<TRes> get tagId;
}

class _CopyWithImpl_Input_PersonsTagsBoolExp<TRes>
    implements CopyWith_Input_PersonsTagsBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsTagsBoolExp(this._instance, this._then);

  final Input_PersonsTagsBoolExp _instance;

  final TRes Function(Input_PersonsTagsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? tag = _undefined,
    Object? tagId = _undefined,
  }) => _then(
    Input_PersonsTagsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsTagsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonsTagsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_PersonsTagsBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (tag != _undefined) 'tag': (tag as Input_TagsBoolExp?),
      if (tagId != _undefined) 'tagId': (tagId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsTagsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsTagsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsTagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsTagsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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

  CopyWith_Input_TagsBoolExp<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith_Input_TagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_TagsBoolExp(local$tag, (e) => call(tag: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get tagId {
    final local$tagId = _instance.tagId;
    return local$tagId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$tagId, (e) => call(tagId: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsBoolExp<TRes>
    implements CopyWith_Input_PersonsTagsBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsTagsBoolExp>? $_and,
    Input_PersonsTagsBoolExp? $_not,
    List<Input_PersonsTagsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TagsBoolExp? tag,
    Input_UuidComparisonExp? tagId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsTagsBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TagsBoolExp<TRes> get tag =>
      CopyWith_Input_TagsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get tagId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsTagsInsertInput {
  factory Input_PersonsTagsInsertInput({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_TagsObjRelInsertInput? tag,
    UuidValue? tagId,
  }) => Input_PersonsTagsInsertInput._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (tag != null) r'tag': tag,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsInsertInput._(this._$data);

  factory Input_PersonsTagsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('tag')) {
      final l$tag = data['tag'];
      result$data['tag'] = l$tag == null
          ? null
          : Input_TagsObjRelInsertInput.fromJson(
              (l$tag as Map<String, dynamic>),
            );
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null ? null : stringToUuid(l$tagId);
    }
    return Input_PersonsTagsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Input_TagsObjRelInsertInput? get tag =>
      (_$data['tag'] as Input_TagsObjRelInsertInput?);

  UuidValue? get tagId => (_$data['tagId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('tag')) {
      final l$tag = tag;
      result$data['tag'] = l$tag?.toJson();
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null ? null : uuidToString(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsInsertInput<Input_PersonsTagsInsertInput>
  get copyWith => CopyWith_Input_PersonsTagsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$person = person;
    final l$personId = personId;
    final l$tag = tag;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tag') ? l$tag : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsInsertInput<TRes> {
  factory CopyWith_Input_PersonsTagsInsertInput(
    Input_PersonsTagsInsertInput instance,
    TRes Function(Input_PersonsTagsInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsInsertInput;

  factory CopyWith_Input_PersonsTagsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsInsertInput;

  TRes call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_TagsObjRelInsertInput? tag,
    UuidValue? tagId,
  });
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
  CopyWith_Input_TagsObjRelInsertInput<TRes> get tag;
}

class _CopyWithImpl_Input_PersonsTagsInsertInput<TRes>
    implements CopyWith_Input_PersonsTagsInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsInsertInput(this._instance, this._then);

  final Input_PersonsTagsInsertInput _instance;

  final TRes Function(Input_PersonsTagsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? tag = _undefined,
    Object? tagId = _undefined,
  }) => _then(
    Input_PersonsTagsInsertInput._({
      ..._instance._$data,
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (tag != _undefined) 'tag': (tag as Input_TagsObjRelInsertInput?),
      if (tagId != _undefined) 'tagId': (tagId as UuidValue?),
    }),
  );

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Input_TagsObjRelInsertInput<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith_Input_TagsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_TagsObjRelInsertInput(local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsInsertInput<TRes>
    implements CopyWith_Input_PersonsTagsInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_TagsObjRelInsertInput? tag,
    UuidValue? tagId,
  }) => _res;

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);

  CopyWith_Input_TagsObjRelInsertInput<TRes> get tag =>
      CopyWith_Input_TagsObjRelInsertInput.stub(_res);
}

class Input_PersonsTagsMaxOrderBy {
  factory Input_PersonsTagsMaxOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? tagId,
  }) => Input_PersonsTagsMaxOrderBy._({
    if (personId != null) r'personId': personId,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsMaxOrderBy._(this._$data);

  factory Input_PersonsTagsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : fromJson_Enum_OrderBy((l$tagId as String));
    }
    return Input_PersonsTagsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get tagId => (_$data['tagId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null
          ? null
          : toJson_Enum_OrderBy(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsMaxOrderBy<Input_PersonsTagsMaxOrderBy>
  get copyWith => CopyWith_Input_PersonsTagsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$personId = personId;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsMaxOrderBy(
    Input_PersonsTagsMaxOrderBy instance,
    TRes Function(Input_PersonsTagsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsMaxOrderBy;

  factory CopyWith_Input_PersonsTagsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsMaxOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? tagId});
}

class _CopyWithImpl_Input_PersonsTagsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsMaxOrderBy(this._instance, this._then);

  final Input_PersonsTagsMaxOrderBy _instance;

  final TRes Function(Input_PersonsTagsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? tagId = _undefined}) =>
      _then(
        Input_PersonsTagsMaxOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (tagId != _undefined) 'tagId': (tagId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsTagsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? tagId}) => _res;
}

class Input_PersonsTagsMinOrderBy {
  factory Input_PersonsTagsMinOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? tagId,
  }) => Input_PersonsTagsMinOrderBy._({
    if (personId != null) r'personId': personId,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsMinOrderBy._(this._$data);

  factory Input_PersonsTagsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : fromJson_Enum_OrderBy((l$tagId as String));
    }
    return Input_PersonsTagsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get tagId => (_$data['tagId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null
          ? null
          : toJson_Enum_OrderBy(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsMinOrderBy<Input_PersonsTagsMinOrderBy>
  get copyWith => CopyWith_Input_PersonsTagsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$personId = personId;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsMinOrderBy(
    Input_PersonsTagsMinOrderBy instance,
    TRes Function(Input_PersonsTagsMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsMinOrderBy;

  factory CopyWith_Input_PersonsTagsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsMinOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? tagId});
}

class _CopyWithImpl_Input_PersonsTagsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsMinOrderBy(this._instance, this._then);

  final Input_PersonsTagsMinOrderBy _instance;

  final TRes Function(Input_PersonsTagsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? tagId = _undefined}) =>
      _then(
        Input_PersonsTagsMinOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (tagId != _undefined) 'tagId': (tagId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsTagsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? tagId}) => _res;
}

class Input_PersonsTagsOnConflict {
  factory Input_PersonsTagsOnConflict({
    required Enum_PersonsTagsConstraint constraint,
    List<Enum_PersonsTagsUpdateColumn>? updateColumns,
    Input_PersonsTagsBoolExp? where,
  }) => Input_PersonsTagsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonsTagsOnConflict._(this._$data);

  factory Input_PersonsTagsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonsTagsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsTagsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsTagsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonsTagsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsTagsConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsTagsConstraint);

  List<Enum_PersonsTagsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsTagsUpdateColumn>?);

  Input_PersonsTagsBoolExp? get where =>
      (_$data['where'] as Input_PersonsTagsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsTagsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsTagsUpdateColumn>)
              .map((e) => toJson_Enum_PersonsTagsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsOnConflict<Input_PersonsTagsOnConflict>
  get copyWith => CopyWith_Input_PersonsTagsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsOnConflict ||
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

abstract class CopyWith_Input_PersonsTagsOnConflict<TRes> {
  factory CopyWith_Input_PersonsTagsOnConflict(
    Input_PersonsTagsOnConflict instance,
    TRes Function(Input_PersonsTagsOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsTagsOnConflict;

  factory CopyWith_Input_PersonsTagsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsOnConflict;

  TRes call({
    Enum_PersonsTagsConstraint? constraint,
    List<Enum_PersonsTagsUpdateColumn>? updateColumns,
    Input_PersonsTagsBoolExp? where,
  });
  CopyWith_Input_PersonsTagsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsTagsOnConflict<TRes>
    implements CopyWith_Input_PersonsTagsOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsTagsOnConflict(this._instance, this._then);

  final Input_PersonsTagsOnConflict _instance;

  final TRes Function(Input_PersonsTagsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonsTagsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_PersonsTagsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_PersonsTagsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_PersonsTagsBoolExp?),
    }),
  );

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsTagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsOnConflict<TRes>
    implements CopyWith_Input_PersonsTagsOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsTagsConstraint? constraint,
    List<Enum_PersonsTagsUpdateColumn>? updateColumns,
    Input_PersonsTagsBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);
}

class Input_PersonsTagsOrderBy {
  factory Input_PersonsTagsOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_TagsOrderBy? tag,
    Enum_OrderBy? tagId,
  }) => Input_PersonsTagsOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (tag != null) r'tag': tag,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsOrderBy._(this._$data);

  factory Input_PersonsTagsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('tag')) {
      final l$tag = data['tag'];
      result$data['tag'] = l$tag == null
          ? null
          : Input_TagsOrderBy.fromJson((l$tag as Map<String, dynamic>));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : fromJson_Enum_OrderBy((l$tagId as String));
    }
    return Input_PersonsTagsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Input_TagsOrderBy? get tag => (_$data['tag'] as Input_TagsOrderBy?);

  Enum_OrderBy? get tagId => (_$data['tagId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('tag')) {
      final l$tag = tag;
      result$data['tag'] = l$tag?.toJson();
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null
          ? null
          : toJson_Enum_OrderBy(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsOrderBy<Input_PersonsTagsOrderBy> get copyWith =>
      CopyWith_Input_PersonsTagsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$person = person;
    final l$personId = personId;
    final l$tag = tag;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tag') ? l$tag : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsOrderBy(
    Input_PersonsTagsOrderBy instance,
    TRes Function(Input_PersonsTagsOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsOrderBy;

  factory CopyWith_Input_PersonsTagsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsOrderBy;

  TRes call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_TagsOrderBy? tag,
    Enum_OrderBy? tagId,
  });
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_TagsOrderBy<TRes> get tag;
}

class _CopyWithImpl_Input_PersonsTagsOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsOrderBy(this._instance, this._then);

  final Input_PersonsTagsOrderBy _instance;

  final TRes Function(Input_PersonsTagsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? tag = _undefined,
    Object? tagId = _undefined,
  }) => _then(
    Input_PersonsTagsOrderBy._({
      ..._instance._$data,
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (tag != _undefined) 'tag': (tag as Input_TagsOrderBy?),
      if (tagId != _undefined) 'tagId': (tagId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_TagsOrderBy<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith_Input_TagsOrderBy.stub(_then(_instance))
        : CopyWith_Input_TagsOrderBy(local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsOrderBy(this._res);

  TRes _res;

  call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_TagsOrderBy? tag,
    Enum_OrderBy? tagId,
  }) => _res;

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_TagsOrderBy<TRes> get tag =>
      CopyWith_Input_TagsOrderBy.stub(_res);
}

class Input_PersonsTagsStreamCursorInput {
  factory Input_PersonsTagsStreamCursorInput({
    required Input_PersonsTagsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonsTagsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonsTagsStreamCursorInput._(this._$data);

  factory Input_PersonsTagsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonsTagsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsTagsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsTagsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonsTagsStreamCursorValueInput);

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

  CopyWith_Input_PersonsTagsStreamCursorInput<
    Input_PersonsTagsStreamCursorInput
  >
  get copyWith => CopyWith_Input_PersonsTagsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsTagsStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsTagsStreamCursorInput(
    Input_PersonsTagsStreamCursorInput instance,
    TRes Function(Input_PersonsTagsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsStreamCursorInput;

  factory CopyWith_Input_PersonsTagsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsStreamCursorInput;

  TRes call({
    Input_PersonsTagsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsTagsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsStreamCursorInput(this._instance, this._then);

  final Input_PersonsTagsStreamCursorInput _instance;

  final TRes Function(Input_PersonsTagsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonsTagsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonsTagsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsTagsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsTagsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsTagsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsTagsStreamCursorValueInput.stub(_res);
}

class Input_PersonsTagsStreamCursorValueInput {
  factory Input_PersonsTagsStreamCursorValueInput({
    UuidValue? personId,
    UuidValue? tagId,
  }) => Input_PersonsTagsStreamCursorValueInput._({
    if (personId != null) r'personId': personId,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsStreamCursorValueInput._(this._$data);

  factory Input_PersonsTagsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null ? null : stringToUuid(l$tagId);
    }
    return Input_PersonsTagsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get tagId => (_$data['tagId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null ? null : uuidToString(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsStreamCursorValueInput<
    Input_PersonsTagsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonsTagsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$personId = personId;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsTagsStreamCursorValueInput(
    Input_PersonsTagsStreamCursorValueInput instance,
    TRes Function(Input_PersonsTagsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsStreamCursorValueInput;

  factory CopyWith_Input_PersonsTagsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsStreamCursorValueInput;

  TRes call({UuidValue? personId, UuidValue? tagId});
}

class _CopyWithImpl_Input_PersonsTagsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsTagsStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsTagsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? tagId = _undefined}) =>
      _then(
        Input_PersonsTagsStreamCursorValueInput._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as UuidValue?),
          if (tagId != _undefined) 'tagId': (tagId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsTagsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? personId, UuidValue? tagId}) => _res;
}

class Input_PersonsTagsUpdates {
  factory Input_PersonsTagsUpdates({required Input_PersonsTagsBoolExp where}) =>
      Input_PersonsTagsUpdates._({r'where': where});

  Input_PersonsTagsUpdates._(this._$data);

  factory Input_PersonsTagsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input_PersonsTagsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonsTagsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsTagsBoolExp get where =>
      (_$data['where'] as Input_PersonsTagsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_PersonsTagsUpdates<Input_PersonsTagsUpdates> get copyWith =>
      CopyWith_Input_PersonsTagsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsUpdates ||
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

abstract class CopyWith_Input_PersonsTagsUpdates<TRes> {
  factory CopyWith_Input_PersonsTagsUpdates(
    Input_PersonsTagsUpdates instance,
    TRes Function(Input_PersonsTagsUpdates) then,
  ) = _CopyWithImpl_Input_PersonsTagsUpdates;

  factory CopyWith_Input_PersonsTagsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsUpdates;

  TRes call({Input_PersonsTagsBoolExp? where});
  CopyWith_Input_PersonsTagsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsTagsUpdates<TRes>
    implements CopyWith_Input_PersonsTagsUpdates<TRes> {
  _CopyWithImpl_Input_PersonsTagsUpdates(this._instance, this._then);

  final Input_PersonsTagsUpdates _instance;

  final TRes Function(Input_PersonsTagsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(
    Input_PersonsTagsUpdates._({
      ..._instance._$data,
      if (where != _undefined && where != null)
        'where': (where as Input_PersonsTagsBoolExp),
    }),
  );

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonsTagsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsTagsUpdates<TRes>
    implements CopyWith_Input_PersonsTagsUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsUpdates(this._res);

  TRes _res;

  call({Input_PersonsTagsBoolExp? where}) => _res;

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);
}

class Input_PersonsUpdates {
  factory Input_PersonsUpdates({
    Input_PersonsAppendInput? $_append,
    Input_PersonsDeleteAtPathInput? $_deleteAtPath,
    Input_PersonsDeleteElemInput? $_deleteElem,
    Input_PersonsDeleteKeyInput? $_deleteKey,
    Input_PersonsIncInput? $_inc,
    Input_PersonsPrependInput? $_prepend,
    Input_PersonsSetInput? $_set,
    required Input_PersonsBoolExp where,
  }) => Input_PersonsUpdates._({
    if ($_append != null) r'_append': $_append,
    if ($_deleteAtPath != null) r'_deleteAtPath': $_deleteAtPath,
    if ($_deleteElem != null) r'_deleteElem': $_deleteElem,
    if ($_deleteKey != null) r'_deleteKey': $_deleteKey,
    if ($_inc != null) r'_inc': $_inc,
    if ($_prepend != null) r'_prepend': $_prepend,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_PersonsUpdates._(this._$data);

  factory Input_PersonsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_append')) {
      final l$$_append = data['_append'];
      result$data['_append'] = l$$_append == null
          ? null
          : Input_PersonsAppendInput.fromJson(
              (l$$_append as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_deleteAtPath')) {
      final l$$_deleteAtPath = data['_deleteAtPath'];
      result$data['_deleteAtPath'] = l$$_deleteAtPath == null
          ? null
          : Input_PersonsDeleteAtPathInput.fromJson(
              (l$$_deleteAtPath as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_deleteElem')) {
      final l$$_deleteElem = data['_deleteElem'];
      result$data['_deleteElem'] = l$$_deleteElem == null
          ? null
          : Input_PersonsDeleteElemInput.fromJson(
              (l$$_deleteElem as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_deleteKey')) {
      final l$$_deleteKey = data['_deleteKey'];
      result$data['_deleteKey'] = l$$_deleteKey == null
          ? null
          : Input_PersonsDeleteKeyInput.fromJson(
              (l$$_deleteKey as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_PersonsIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_prepend')) {
      final l$$_prepend = data['_prepend'];
      result$data['_prepend'] = l$$_prepend == null
          ? null
          : Input_PersonsPrependInput.fromJson(
              (l$$_prepend as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_PersonsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_PersonsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsAppendInput? get $_append =>
      (_$data['_append'] as Input_PersonsAppendInput?);

  Input_PersonsDeleteAtPathInput? get $_deleteAtPath =>
      (_$data['_deleteAtPath'] as Input_PersonsDeleteAtPathInput?);

  Input_PersonsDeleteElemInput? get $_deleteElem =>
      (_$data['_deleteElem'] as Input_PersonsDeleteElemInput?);

  Input_PersonsDeleteKeyInput? get $_deleteKey =>
      (_$data['_deleteKey'] as Input_PersonsDeleteKeyInput?);

  Input_PersonsIncInput? get $_inc =>
      (_$data['_inc'] as Input_PersonsIncInput?);

  Input_PersonsPrependInput? get $_prepend =>
      (_$data['_prepend'] as Input_PersonsPrependInput?);

  Input_PersonsSetInput? get $_set =>
      (_$data['_set'] as Input_PersonsSetInput?);

  Input_PersonsBoolExp get where => (_$data['where'] as Input_PersonsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_append')) {
      final l$$_append = $_append;
      result$data['_append'] = l$$_append?.toJson();
    }
    if (_$data.containsKey('_deleteAtPath')) {
      final l$$_deleteAtPath = $_deleteAtPath;
      result$data['_deleteAtPath'] = l$$_deleteAtPath?.toJson();
    }
    if (_$data.containsKey('_deleteElem')) {
      final l$$_deleteElem = $_deleteElem;
      result$data['_deleteElem'] = l$$_deleteElem?.toJson();
    }
    if (_$data.containsKey('_deleteKey')) {
      final l$$_deleteKey = $_deleteKey;
      result$data['_deleteKey'] = l$$_deleteKey?.toJson();
    }
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_prepend')) {
      final l$$_prepend = $_prepend;
      result$data['_prepend'] = l$$_prepend?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_PersonsUpdates<Input_PersonsUpdates> get copyWith =>
      CopyWith_Input_PersonsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsUpdates || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_append = $_append;
    final lOther$$_append = other.$_append;
    if (_$data.containsKey('_append') != other._$data.containsKey('_append')) {
      return false;
    }
    if (l$$_append != lOther$$_append) {
      return false;
    }
    final l$$_deleteAtPath = $_deleteAtPath;
    final lOther$$_deleteAtPath = other.$_deleteAtPath;
    if (_$data.containsKey('_deleteAtPath') !=
        other._$data.containsKey('_deleteAtPath')) {
      return false;
    }
    if (l$$_deleteAtPath != lOther$$_deleteAtPath) {
      return false;
    }
    final l$$_deleteElem = $_deleteElem;
    final lOther$$_deleteElem = other.$_deleteElem;
    if (_$data.containsKey('_deleteElem') !=
        other._$data.containsKey('_deleteElem')) {
      return false;
    }
    if (l$$_deleteElem != lOther$$_deleteElem) {
      return false;
    }
    final l$$_deleteKey = $_deleteKey;
    final lOther$$_deleteKey = other.$_deleteKey;
    if (_$data.containsKey('_deleteKey') !=
        other._$data.containsKey('_deleteKey')) {
      return false;
    }
    if (l$$_deleteKey != lOther$$_deleteKey) {
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
    final l$$_prepend = $_prepend;
    final lOther$$_prepend = other.$_prepend;
    if (_$data.containsKey('_prepend') !=
        other._$data.containsKey('_prepend')) {
      return false;
    }
    if (l$$_prepend != lOther$$_prepend) {
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
    final l$$_append = $_append;
    final l$$_deleteAtPath = $_deleteAtPath;
    final l$$_deleteElem = $_deleteElem;
    final l$$_deleteKey = $_deleteKey;
    final l$$_inc = $_inc;
    final l$$_prepend = $_prepend;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_append') ? l$$_append : const {},
      _$data.containsKey('_deleteAtPath') ? l$$_deleteAtPath : const {},
      _$data.containsKey('_deleteElem') ? l$$_deleteElem : const {},
      _$data.containsKey('_deleteKey') ? l$$_deleteKey : const {},
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_prepend') ? l$$_prepend : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}
