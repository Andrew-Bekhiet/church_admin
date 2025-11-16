// Part 24 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
    Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput)
    then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput;

  TRes call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
          TRes
        > {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput _instance;

  final TRes Function(
    Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
          TRes
        > {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
    this._res,
  );

  TRes _res;

  call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => _res;
}

class Input_HistoryAttendanceDaysConstraintsSumOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsSumOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceDaysConstraintsSumOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceDaysConstraintsSumOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsSumOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsSumOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<
    Input_HistoryAttendanceDaysConstraintsSumOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsSumOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy(
    Input_HistoryAttendanceDaysConstraintsSumOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsSumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsSumOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceDaysConstraintsSumOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsVarPopOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsVarPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsVarPopOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsVarPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsVarPopOrderBy)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
    this._res,
  );

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsVarSampOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsVarSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsVarSampOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsVarSampOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsVarSampOrderBy)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
    this._res,
  );

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsVarianceOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsVarianceOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsVarianceOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsVarianceOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsVarianceOrderBy)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
    this._res,
  );

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysInsertInput {
  factory Input_HistoryAttendanceDaysInsertInput({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? notes,
  }) => Input_HistoryAttendanceDaysInsertInput._({
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (constraints != null) r'constraints': constraints,
    if (day != null) r'day': day,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
    if (notes != null) r'notes': notes,
  });

  Input_HistoryAttendanceDaysInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryArrRelInsertInput.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('constraints')) {
      final l$constraints = data['constraints'];
      result$data['constraints'] = l$constraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              (l$constraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryArrRelInsertInput.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input_HistoryAttendanceDaysInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  Input_HistoryConfessionHistoryArrRelInsertInput? get confessionHistory =>
      (_$data['confessionHistory']
          as Input_HistoryConfessionHistoryArrRelInsertInput?);

  Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? get constraints =>
      (_$data['constraints']
          as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?);

  DateTime? get day => (_$data['day'] as DateTime?);

  Input_HistoryKodasHistoryArrRelInsertInput? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryArrRelInsertInput?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('constraints')) {
      final l$constraints = constraints;
      result$data['constraints'] = l$constraints?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysInsertInput<
    Input_HistoryAttendanceDaysInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (_$data.containsKey('attendanceHistory') !=
        other._$data.containsKey('attendanceHistory')) {
      return false;
    }
    if (l$attendanceHistory != lOther$attendanceHistory) {
      return false;
    }
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$constraints = constraints;
    final lOther$constraints = other.constraints;
    if (_$data.containsKey('constraints') !=
        other._$data.containsKey('constraints')) {
      return false;
    }
    if (l$constraints != lOther$constraints) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceHistory = attendanceHistory;
    final l$confessionHistory = confessionHistory;
    final l$constraints = constraints;
    final l$day = day;
    final l$kodasHistory = kodasHistory;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('constraints') ? l$constraints : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysInsertInput(
    Input_HistoryAttendanceDaysInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput;

  TRes call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? notes,
  });
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory;
  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory;
  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get constraints;
  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistory = _undefined,
    Object? confessionHistory = _undefined,
    Object? constraints = _undefined,
    Object? day = _undefined,
    Object? kodasHistory = _undefined,
    Object? notes = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysInsertInput._({
      ..._instance._$data,
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory
                as Input_HistoryAttendanceHistoryArrRelInsertInput?),
      if (confessionHistory != _undefined)
        'confessionHistory':
            (confessionHistory
                as Input_HistoryConfessionHistoryArrRelInsertInput?),
      if (constraints != _undefined)
        'constraints':
            (constraints
                as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?),
      if (day != _undefined) 'day': (day as DateTime?),
      if (kodasHistory != _undefined)
        'kodasHistory':
            (kodasHistory as Input_HistoryKodasHistoryArrRelInsertInput?),
      if (notes != _undefined) 'notes': (notes as String?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput(
            local$confessionHistory,
            (e) => call(confessionHistory: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get constraints {
    final local$constraints = _instance.constraints;
    return local$constraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
            local$constraints,
            (e) => call(constraints: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryArrRelInsertInput(
            local$kodasHistory,
            (e) => call(kodasHistory: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? notes,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory =>
      CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get constraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
        _res,
      );

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(_res);
}

class Input_HistoryAttendanceDaysObjRelInsertInput {
  factory Input_HistoryAttendanceDaysObjRelInsertInput({
    required Input_HistoryAttendanceDaysInsertInput data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  }) => Input_HistoryAttendanceDaysObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryAttendanceDaysObjRelInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_HistoryAttendanceDaysInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryAttendanceDaysOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysInsertInput get data =>
      (_$data['data'] as Input_HistoryAttendanceDaysInsertInput);

  Input_HistoryAttendanceDaysOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryAttendanceDaysOnConflict?);

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

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<
    Input_HistoryAttendanceDaysObjRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysObjRelInsertInput ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(
    Input_HistoryAttendanceDaysObjRelInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysObjRelInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysObjRelInsertInput;

  TRes call({
    Input_HistoryAttendanceDaysInsertInput? data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  });
  CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> get data;
  CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysObjRelInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryAttendanceDaysObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_HistoryAttendanceDaysInsertInput),
          if (onConflict != _undefined)
            'onConflict':
                (onConflict as Input_HistoryAttendanceDaysOnConflict?),
        }),
      );

  CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_HistoryAttendanceDaysInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysInsertInput? data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> get data =>
      CopyWith_Input_HistoryAttendanceDaysInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(_res);
}

class Input_HistoryAttendanceDaysOnConflict {
  factory Input_HistoryAttendanceDaysOnConflict({
    required Enum_HistoryAttendanceDaysConstraint constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) => Input_HistoryAttendanceDaysOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryAttendanceDaysOnConflict._(this._$data);

  factory Input_HistoryAttendanceDaysOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryAttendanceDaysConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) =>
                fromJson_Enum_HistoryAttendanceDaysUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceDaysConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryAttendanceDaysConstraint);

  List<Enum_HistoryAttendanceDaysUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryAttendanceDaysUpdateColumn>?);

  Input_HistoryAttendanceDaysBoolExp? get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryAttendanceDaysConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryAttendanceDaysUpdateColumn>)
              .map((e) => toJson_Enum_HistoryAttendanceDaysUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysOnConflict<
    Input_HistoryAttendanceDaysOnConflict
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysOnConflict ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysOnConflict(
    Input_HistoryAttendanceDaysOnConflict instance,
    TRes Function(Input_HistoryAttendanceDaysOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict;

  factory CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict;

  TRes call({
    Enum_HistoryAttendanceDaysConstraint? constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceDaysOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryAttendanceDaysConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryAttendanceDaysUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryAttendanceDaysBoolExp?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceDaysConstraint? constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysOrderBy {
  factory Input_HistoryAttendanceDaysOrderBy({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    constraintsAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Enum_OrderBy? notes,
  }) => Input_HistoryAttendanceDaysOrderBy._({
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (confessionHistoryAggregate != null)
      r'confessionHistoryAggregate': confessionHistoryAggregate,
    if (constraintsAggregate != null)
      r'constraintsAggregate': constraintsAggregate,
    if (day != null) r'day': day,
    if (kodasHistoryAggregate != null)
      r'kodasHistoryAggregate': kodasHistoryAggregate,
    if (notes != null) r'notes': notes,
  });

  Input_HistoryAttendanceDaysOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
          ? null
          : Input_HistoryConfessionHistoryAggregateOrderBy.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = data['constraintsAggregate'];
      result$data['constraintsAggregate'] = l$constraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.fromJson(
              (l$constraintsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : fromJson_Enum_OrderBy((l$day as String));
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateOrderBy.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson_Enum_OrderBy((l$notes as String));
    }
    return Input_HistoryAttendanceDaysOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Input_HistoryConfessionHistoryAggregateOrderBy?
  get confessionHistoryAggregate =>
      (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateOrderBy?);

  Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
  get constraintsAggregate =>
      (_$data['constraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?);

  Enum_OrderBy? get day => (_$data['day'] as Enum_OrderBy?);

  Input_HistoryKodasHistoryAggregateOrderBy? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateOrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] = l$confessionHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = constraintsAggregate;
      result$data['constraintsAggregate'] = l$constraintsAggregate?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : toJson_Enum_OrderBy(l$day);
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes == null
          ? null
          : toJson_Enum_OrderBy(l$notes);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysOrderBy<
    Input_HistoryAttendanceDaysOrderBy
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (_$data.containsKey('attendanceHistoryAggregate') !=
        other._$data.containsKey('attendanceHistoryAggregate')) {
      return false;
    }
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
      return false;
    }
    final l$constraintsAggregate = constraintsAggregate;
    final lOther$constraintsAggregate = other.constraintsAggregate;
    if (_$data.containsKey('constraintsAggregate') !=
        other._$data.containsKey('constraintsAggregate')) {
      return false;
    }
    if (l$constraintsAggregate != lOther$constraintsAggregate) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$constraintsAggregate = constraintsAggregate;
    final l$day = day;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('constraintsAggregate')
          ? l$constraintsAggregate
          : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysOrderBy(
    Input_HistoryAttendanceDaysOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy;

  TRes call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    constraintsAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Enum_OrderBy? notes,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get constraintsAggregate;
  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy(this._instance, this._then);

  final Input_HistoryAttendanceDaysOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistoryAggregate = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? constraintsAggregate = _undefined,
    Object? day = _undefined,
    Object? kodasHistoryAggregate = _undefined,
    Object? notes = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysOrderBy._({
      ..._instance._$data,
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (confessionHistoryAggregate != _undefined)
        'confessionHistoryAggregate':
            (confessionHistoryAggregate
                as Input_HistoryConfessionHistoryAggregateOrderBy?),
      if (constraintsAggregate != _undefined)
        'constraintsAggregate':
            (constraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?),
      if (day != _undefined) 'day': (day as Enum_OrderBy?),
      if (kodasHistoryAggregate != _undefined)
        'kodasHistoryAggregate':
            (kodasHistoryAggregate
                as Input_HistoryKodasHistoryAggregateOrderBy?),
      if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get constraintsAggregate {
    final local$constraintsAggregate = _instance.constraintsAggregate;
    return local$constraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
            local$constraintsAggregate,
            (e) => call(constraintsAggregate: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryAggregateOrderBy(
            local$kodasHistoryAggregate,
            (e) => call(kodasHistoryAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    constraintsAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Enum_OrderBy? notes,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate =>
      CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get constraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
        _res,
      );

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate =>
      CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(_res);
}

class Input_HistoryAttendanceDaysPkColumnsInput {
  factory Input_HistoryAttendanceDaysPkColumnsInput({required DateTime day}) =>
      Input_HistoryAttendanceDaysPkColumnsInput._({r'day': day});

  Input_HistoryAttendanceDaysPkColumnsInput._(this._$data);

  factory Input_HistoryAttendanceDaysPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$day = data['day'];
    result$data['day'] = dateFromString(l$day);
    return Input_HistoryAttendanceDaysPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get day => (_$data['day'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$day = day;
    result$data['day'] = dateToString(l$day);
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<
    Input_HistoryAttendanceDaysPkColumnsInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    return Object.hashAll([l$day]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysPkColumnsInput(
    Input_HistoryAttendanceDaysPkColumnsInput instance,
    TRes Function(Input_HistoryAttendanceDaysPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput;

  factory CopyWith_Input_HistoryAttendanceDaysPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput;

  TRes call({DateTime? day});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysPkColumnsInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined}) => _then(
    Input_HistoryAttendanceDaysPkColumnsInput._({
      ..._instance._$data,
      if (day != _undefined && day != null) 'day': (day as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput(this._res);

  TRes _res;

  call({DateTime? day}) => _res;
}

class Input_HistoryAttendanceDaysSetInput {
  factory Input_HistoryAttendanceDaysSetInput({DateTime? day, String? notes}) =>
      Input_HistoryAttendanceDaysSetInput._({
        if (day != null) r'day': day,
        if (notes != null) r'notes': notes,
      });

  Input_HistoryAttendanceDaysSetInput._(this._$data);

  factory Input_HistoryAttendanceDaysSetInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input_HistoryAttendanceDaysSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysSetInput<
    Input_HistoryAttendanceDaysSetInput
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysSetInput(
    Input_HistoryAttendanceDaysSetInput instance,
    TRes Function(Input_HistoryAttendanceDaysSetInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysSetInput;

  factory CopyWith_Input_HistoryAttendanceDaysSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput;

  TRes call({DateTime? day, String? notes});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysSetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysSetInput(this._instance, this._then);

  final Input_HistoryAttendanceDaysSetInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined, Object? notes = _undefined}) => _then(
    Input_HistoryAttendanceDaysSetInput._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as DateTime?),
      if (notes != _undefined) 'notes': (notes as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput(this._res);

  TRes _res;

  call({DateTime? day, String? notes}) => _res;
}

class Input_HistoryAttendanceDaysStreamCursorInput {
  factory Input_HistoryAttendanceDaysStreamCursorInput({
    required Input_HistoryAttendanceDaysStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryAttendanceDaysStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryAttendanceDaysStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceDaysStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceDaysStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryAttendanceDaysStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryAttendanceDaysStreamCursorValueInput);

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

  CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<
    Input_HistoryAttendanceDaysStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorInput(
    Input_HistoryAttendanceDaysStreamCursorInput instance,
    TRes Function(Input_HistoryAttendanceDaysStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput;

  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput;

  TRes call({
    Input_HistoryAttendanceDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysStreamCursorInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryAttendanceDaysStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput.stub(_res);
}

class Input_HistoryAttendanceDaysStreamCursorValueInput {
  factory Input_HistoryAttendanceDaysStreamCursorValueInput({
    DateTime? day,
    String? notes,
  }) => Input_HistoryAttendanceDaysStreamCursorValueInput._({
    if (day != null) r'day': day,
    if (notes != null) r'notes': notes,
  });

  Input_HistoryAttendanceDaysStreamCursorValueInput._(this._$data);

  factory Input_HistoryAttendanceDaysStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input_HistoryAttendanceDaysStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<
    Input_HistoryAttendanceDaysStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
    Input_HistoryAttendanceDaysStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceDaysStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput;

  TRes call({DateTime? day, String? notes});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined, Object? notes = _undefined}) => _then(
    Input_HistoryAttendanceDaysStreamCursorValueInput._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as DateTime?),
      if (notes != _undefined) 'notes': (notes as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this._res,
  );

  TRes _res;

  call({DateTime? day, String? notes}) => _res;
}

class Input_HistoryAttendanceDaysUpdates {
  factory Input_HistoryAttendanceDaysUpdates({
    Input_HistoryAttendanceDaysSetInput? $_set,
    required Input_HistoryAttendanceDaysBoolExp where,
  }) => Input_HistoryAttendanceDaysUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HistoryAttendanceDaysUpdates._(this._$data);

  factory Input_HistoryAttendanceDaysUpdates.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryAttendanceDaysSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryAttendanceDaysBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_HistoryAttendanceDaysUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysSetInput? get $_set =>
      (_$data['_set'] as Input_HistoryAttendanceDaysSetInput?);

  Input_HistoryAttendanceDaysBoolExp get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysBoolExp);

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

  CopyWith_Input_HistoryAttendanceDaysUpdates<
    Input_HistoryAttendanceDaysUpdates
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysUpdates ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysUpdates(
    Input_HistoryAttendanceDaysUpdates instance,
    TRes Function(Input_HistoryAttendanceDaysUpdates) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysUpdates;

  factory CopyWith_Input_HistoryAttendanceDaysUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates;

  TRes call({
    Input_HistoryAttendanceDaysSetInput? $_set,
    Input_HistoryAttendanceDaysBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set;
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysUpdates(this._instance, this._then);

  final Input_HistoryAttendanceDaysUpdates _instance;

  final TRes Function(Input_HistoryAttendanceDaysUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_HistoryAttendanceDaysUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_HistoryAttendanceDaysSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_HistoryAttendanceDaysBoolExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryAttendanceDaysSetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryAttendanceDaysBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysSetInput? $_set,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set =>
      CopyWith_Input_HistoryAttendanceDaysSetInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryAggregateBoolExp {
  factory Input_HistoryAttendanceHistoryAggregateBoolExp({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryAttendanceHistoryAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_HistoryAttendanceHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryAttendanceHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyAttendanceHistoryAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and']
          as Input_historyAttendanceHistoryAggregateBoolExpBool_and?);

  Input_historyAttendanceHistoryAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or']
          as Input_historyAttendanceHistoryAggregateBoolExpBool_or?);

  Input_historyAttendanceHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyAttendanceHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bool_and')) {
      final l$bool_and = bool_and;
      result$data['bool_and'] = l$bool_and?.toJson();
    }
    if (_$data.containsKey('bool_or')) {
      final l$bool_or = bool_or;
      result$data['bool_or'] = l$bool_or?.toJson();
    }
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<
    Input_HistoryAttendanceHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryAggregateBoolExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bool_and = bool_and;
    final lOther$bool_and = other.bool_and;
    if (_$data.containsKey('bool_and') !=
        other._$data.containsKey('bool_and')) {
      return false;
    }
    if (l$bool_and != lOther$bool_and) {
      return false;
    }
    final l$bool_or = bool_or;
    final lOther$bool_or = other.bool_or;
    if (_$data.containsKey('bool_or') != other._$data.containsKey('bool_or')) {
      return false;
    }
    if (l$bool_or != lOther$bool_or) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$bool_and = bool_and;
    final l$bool_or = bool_or;
    final l$count = count;
    return Object.hashAll([
      _$data.containsKey('bool_and') ? l$bool_and : const {},
      _$data.containsKey('bool_or') ? l$bool_or : const {},
      _$data.containsKey('count') ? l$count : const {},
    ]);
  }
}
