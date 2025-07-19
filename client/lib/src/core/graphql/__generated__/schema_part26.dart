// Part 26 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput(
    Input_HistoryAttendanceHistoryPkColumnsInput instance,
    TRes Function(Input_HistoryAttendanceHistoryPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryPkColumnsInput;

  factory CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryPkColumnsInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryPkColumnsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_HistoryAttendanceHistorySetInput {
  factory Input_HistoryAttendanceHistorySetInput({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? personId,
    UuidValue? serviceId,
    DateTime? time,
  }) =>
      Input_HistoryAttendanceHistorySetInput._({
        if (dayId != null) r'dayId': dayId,
        if (groupId != null) r'groupId': groupId,
        if (personId != null) r'personId': personId,
        if (serviceId != null) r'serviceId': serviceId,
        if (time != null) r'time': time,
      });

  Input_HistoryAttendanceHistorySetInput._(this._$data);

  factory Input_HistoryAttendanceHistorySetInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] =
          l$groupId == null ? null : stringToUuid(l$groupId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] =
          l$serviceId == null ? null : stringToUuid(l$serviceId);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryAttendanceHistorySetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : uuidToString(l$groupId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistorySetInput<
          Input_HistoryAttendanceHistorySetInput>
      get copyWith => CopyWith_Input_HistoryAttendanceHistorySetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistorySetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$personId = personId;
    final l$serviceId = serviceId;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistorySetInput(
    Input_HistoryAttendanceHistorySetInput instance,
    TRes Function(Input_HistoryAttendanceHistorySetInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistorySetInput;

  factory CopyWith_Input_HistoryAttendanceHistorySetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput;

  TRes call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? personId,
    UuidValue? serviceId,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistorySetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistorySetInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistorySetInput _instance;

  final TRes Function(Input_HistoryAttendanceHistorySetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? personId = _undefined,
    Object? serviceId = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input_HistoryAttendanceHistorySetInput._({
        ..._instance._$data,
        if (dayId != _undefined) 'dayId': (dayId as DateTime?),
        if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
        if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        if (time != _undefined) 'time': (time as DateTime?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput(this._res);

  TRes _res;

  call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? personId,
    UuidValue? serviceId,
    DateTime? time,
  }) =>
      _res;
}

class Input_HistoryAttendanceHistoryStddevOrderBy {
  factory Input_HistoryAttendanceHistoryStddevOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryStddevOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryStddevOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryStddevOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryStddevOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<
          Input_HistoryAttendanceHistoryStddevOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStddevOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy(
    Input_HistoryAttendanceHistoryStddevOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStddevOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStddevOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStddevOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryStddevOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryStddevPopOrderBy {
  factory Input_HistoryAttendanceHistoryStddevPopOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryStddevPopOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryStddevPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryStddevPopOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryStddevPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<
          Input_HistoryAttendanceHistoryStddevPopOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStddevPopOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy(
    Input_HistoryAttendanceHistoryStddevPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryStddevPopOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryStddevSampOrderBy {
  factory Input_HistoryAttendanceHistoryStddevSampOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryStddevSampOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryStddevSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryStddevSampOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryStddevSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<
          Input_HistoryAttendanceHistoryStddevSampOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStddevSampOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy(
    Input_HistoryAttendanceHistoryStddevSampOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStddevSampOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryStddevSampOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryStreamCursorInput {
  factory Input_HistoryAttendanceHistoryStreamCursorInput({
    required Input_HistoryAttendanceHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_HistoryAttendanceHistoryStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_HistoryAttendanceHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceHistoryStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceHistoryStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryAttendanceHistoryStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryAttendanceHistoryStreamCursorValueInput);

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

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<
          Input_HistoryAttendanceHistoryStreamCursorInput>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput(
    Input_HistoryAttendanceHistoryStreamCursorInput instance,
    TRes Function(Input_HistoryAttendanceHistoryStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorInput;

  factory CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorInput;

  TRes call({
    Input_HistoryAttendanceHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes>
      get initialValue;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStreamCursorInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_HistoryAttendanceHistoryStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue': (initialValue
              as Input_HistoryAttendanceHistoryStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes>
      get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes>
      get initialValue =>
          CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput.stub(
              _res);
}

class Input_HistoryAttendanceHistoryStreamCursorValueInput {
  factory Input_HistoryAttendanceHistoryStreamCursorValueInput({
    bool? asAdmin,
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    DateTime? time,
  }) =>
      Input_HistoryAttendanceHistoryStreamCursorValueInput._({
        if (asAdmin != null) r'asAdmin': asAdmin,
        if (dayId != null) r'dayId': dayId,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (personId != null) r'personId': personId,
        if (recordedBy != null) r'recordedBy': recordedBy,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (time != null) r'time': time,
      });

  Input_HistoryAttendanceHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryAttendanceHistoryStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asAdmin')) {
      final l$asAdmin = data['asAdmin'];
      result$data['asAdmin'] = (l$asAdmin as bool?);
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] =
          l$groupId == null ? null : stringToUuid(l$groupId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] =
          l$recordedBy == null ? null : stringToUuid(l$recordedBy);
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryAttendanceHistoryStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get asAdmin => (_$data['asAdmin'] as bool?);

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get recordedBy => (_$data['recordedBy'] as UuidValue?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asAdmin')) {
      final l$asAdmin = asAdmin;
      result$data['asAdmin'] = l$asAdmin;
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : uuidToString(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] =
          l$recordedBy == null ? null : uuidToString(l$recordedBy);
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<
          Input_HistoryAttendanceHistoryStreamCursorValueInput>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$asAdmin = asAdmin;
    final lOther$asAdmin = other.asAdmin;
    if (_$data.containsKey('asAdmin') != other._$data.containsKey('asAdmin')) {
      return false;
    }
    if (l$asAdmin != lOther$asAdmin) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
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
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asAdmin = asAdmin;
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('asAdmin') ? l$asAdmin : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput(
    Input_HistoryAttendanceHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput;

  TRes call({
    bool? asAdmin,
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryStreamCursorValueInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asAdmin = _undefined,
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input_HistoryAttendanceHistoryStreamCursorValueInput._({
        ..._instance._$data,
        if (asAdmin != _undefined) 'asAdmin': (asAdmin as bool?),
        if (dayId != _undefined) 'dayId': (dayId as DateTime?),
        if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
        if (id != _undefined) 'id': (id as UuidValue?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
        if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as bool?),
        if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as int?),
        if (time != _undefined) 'time': (time as DateTime?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput(
      this._res);

  TRes _res;

  call({
    bool? asAdmin,
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    UuidValue? personId,
    UuidValue? recordedBy,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    DateTime? time,
  }) =>
      _res;
}

class Input_HistoryAttendanceHistorySumOrderBy {
  factory Input_HistoryAttendanceHistorySumOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistorySumOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistorySumOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistorySumOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistorySumOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistorySumOrderBy<
          Input_HistoryAttendanceHistorySumOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistorySumOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistorySumOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistorySumOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistorySumOrderBy(
    Input_HistoryAttendanceHistorySumOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistorySumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistorySumOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistorySumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistorySumOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistorySumOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistorySumOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistorySumOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistorySumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistorySumOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistorySumOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistorySumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryUpdates {
  factory Input_HistoryAttendanceHistoryUpdates({
    Input_HistoryAttendanceHistorySetInput? $_set,
    required Input_HistoryAttendanceHistoryBoolExp where,
  }) =>
      Input_HistoryAttendanceHistoryUpdates._({
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_HistoryAttendanceHistoryUpdates._(this._$data);

  factory Input_HistoryAttendanceHistoryUpdates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryAttendanceHistorySetInput.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryAttendanceHistoryBoolExp.fromJson(
        (l$where as Map<String, dynamic>));
    return Input_HistoryAttendanceHistoryUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistorySetInput? get $_set =>
      (_$data['_set'] as Input_HistoryAttendanceHistorySetInput?);

  Input_HistoryAttendanceHistoryBoolExp get where =>
      (_$data['where'] as Input_HistoryAttendanceHistoryBoolExp);

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

  CopyWith_Input_HistoryAttendanceHistoryUpdates<
          Input_HistoryAttendanceHistoryUpdates>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryUpdates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryUpdates ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryUpdates<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryUpdates(
    Input_HistoryAttendanceHistoryUpdates instance,
    TRes Function(Input_HistoryAttendanceHistoryUpdates) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryUpdates;

  factory CopyWith_Input_HistoryAttendanceHistoryUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryUpdates;

  TRes call({
    Input_HistoryAttendanceHistorySetInput? $_set,
    Input_HistoryAttendanceHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> get $_set;
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryUpdates<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryUpdates(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryUpdates _instance;

  final TRes Function(Input_HistoryAttendanceHistoryUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_HistoryAttendanceHistoryUpdates._({
        ..._instance._$data,
        if ($_set != _undefined)
          '_set': ($_set as Input_HistoryAttendanceHistorySetInput?),
        if (where != _undefined && where != null)
          'where': (where as Input_HistoryAttendanceHistoryBoolExp),
      }));

  CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryAttendanceHistorySetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistorySetInput(
            local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryAttendanceHistoryBoolExp(
        local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistorySetInput? $_set,
    Input_HistoryAttendanceHistoryBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> get $_set =>
      CopyWith_Input_HistoryAttendanceHistorySetInput.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryVarPopOrderBy {
  factory Input_HistoryAttendanceHistoryVarPopOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryVarPopOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryVarPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryVarPopOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryVarPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<
          Input_HistoryAttendanceHistoryVarPopOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryVarPopOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy(
    Input_HistoryAttendanceHistoryVarPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryVarPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryVarPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryVarPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryVarPopOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryVarSampOrderBy {
  factory Input_HistoryAttendanceHistoryVarSampOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryVarSampOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryVarSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryVarSampOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryVarSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<
          Input_HistoryAttendanceHistoryVarSampOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryVarSampOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy(
    Input_HistoryAttendanceHistoryVarSampOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryVarSampOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryVarSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryVarSampOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryVarSampOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceHistoryVarianceOrderBy {
  factory Input_HistoryAttendanceHistoryVarianceOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceHistoryVarianceOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceHistoryVarianceOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryVarianceOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceHistoryVarianceOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<
          Input_HistoryAttendanceHistoryVarianceOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryVarianceOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy(
    Input_HistoryAttendanceHistoryVarianceOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryVarianceOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarianceOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryVarianceOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceHistoryVarianceOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryCallHistoryAggregateBoolExp {
  factory Input_HistoryCallHistoryAggregateBoolExp(
          {Input_historyCallHistoryAggregateBoolExpCount? count}) =>
      Input_HistoryCallHistoryAggregateBoolExp._({
        if (count != null) r'count': count,
      });

  Input_HistoryCallHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryCallHistoryAggregateBoolExp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyCallHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>));
    }
    return Input_HistoryCallHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyCallHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyCallHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryAggregateBoolExp<
          Input_HistoryCallHistoryAggregateBoolExp>
      get copyWith => CopyWith_Input_HistoryCallHistoryAggregateBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryAggregateBoolExp ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith_Input_HistoryCallHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryCallHistoryAggregateBoolExp(
    Input_HistoryCallHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryCallHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryCallHistoryAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryAggregateBoolExp;

  TRes call({Input_historyCallHistoryAggregateBoolExpCount? count});
  CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryCallHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryCallHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryCallHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryCallHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) =>
      _then(Input_HistoryCallHistoryAggregateBoolExp._({
        ..._instance._$data,
        if (count != _undefined)
          'count': (count as Input_historyCallHistoryAggregateBoolExpCount?),
      }));

  CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyCallHistoryAggregateBoolExpCount.stub(
            _then(_instance))
        : CopyWith_Input_historyCallHistoryAggregateBoolExpCount(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryCallHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyCallHistoryAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyCallHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryCallHistoryAggregateOrderBy {
  factory Input_HistoryCallHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryCallHistoryMaxOrderBy? max,
    Input_HistoryCallHistoryMinOrderBy? min,
  }) =>
      Input_HistoryCallHistoryAggregateOrderBy._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input_HistoryCallHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryCallHistoryAggregateOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_HistoryCallHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryCallHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input_HistoryCallHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryCallHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryCallHistoryMaxOrderBy?);

  Input_HistoryCallHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryCallHistoryMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson_Enum_OrderBy(l$count);
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

  CopyWith_Input_HistoryCallHistoryAggregateOrderBy<
          Input_HistoryCallHistoryAggregateOrderBy>
      get copyWith => CopyWith_Input_HistoryCallHistoryAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryCallHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryCallHistoryAggregateOrderBy(
    Input_HistoryCallHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryCallHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryCallHistoryAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryCallHistoryMaxOrderBy? max,
    Input_HistoryCallHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryCallHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryCallHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryCallHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input_HistoryCallHistoryAggregateOrderBy._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined)
          'max': (max as Input_HistoryCallHistoryMaxOrderBy?),
        if (min != _undefined)
          'min': (min as Input_HistoryCallHistoryMinOrderBy?),
      }));

  CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryCallHistoryMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryMaxOrderBy(
            local$max, (e) => call(max: e));
  }

  CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryCallHistoryMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryMinOrderBy(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryCallHistoryMaxOrderBy? max,
    Input_HistoryCallHistoryMinOrderBy? min,
  }) =>
      _res;

  CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryCallHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryCallHistoryMinOrderBy.stub(_res);
}

class Input_HistoryCallHistoryArrRelInsertInput {
  factory Input_HistoryCallHistoryArrRelInsertInput({
    required List<Input_HistoryCallHistoryInsertInput> data,
    Input_HistoryCallHistoryOnConflict? onConflict,
  }) =>
      Input_HistoryCallHistoryArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_HistoryCallHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryCallHistoryArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input_HistoryCallHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryCallHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_HistoryCallHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryCallHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryCallHistoryInsertInput>);

  Input_HistoryCallHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryCallHistoryOnConflict?);

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

  CopyWith_Input_HistoryCallHistoryArrRelInsertInput<
          Input_HistoryCallHistoryArrRelInsertInput>
      get copyWith => CopyWith_Input_HistoryCallHistoryArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryCallHistoryArrRelInsertInput(
    Input_HistoryCallHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryCallHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryCallHistoryArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryCallHistoryInsertInput>? data,
    Input_HistoryCallHistoryOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_HistoryCallHistoryInsertInput> Function(
              Iterable<
                  CopyWith_Input_HistoryCallHistoryInsertInput<
                      Input_HistoryCallHistoryInsertInput>>)
          _fn);
  CopyWith_Input_HistoryCallHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryCallHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryCallHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryCallHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_HistoryCallHistoryArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_HistoryCallHistoryInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_HistoryCallHistoryOnConflict?),
      }));

  TRes data(
          Iterable<Input_HistoryCallHistoryInsertInput> Function(
                  Iterable<
                      CopyWith_Input_HistoryCallHistoryInsertInput<
                          Input_HistoryCallHistoryInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_HistoryCallHistoryInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_HistoryCallHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryCallHistoryOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryCallHistoryInsertInput>? data,
    Input_HistoryCallHistoryOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryCallHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryCallHistoryOnConflict.stub(_res);
}

class Input_HistoryCallHistoryBoolExp {
  factory Input_HistoryCallHistoryBoolExp({
    List<Input_HistoryCallHistoryBoolExp>? $_and,
    Input_HistoryCallHistoryBoolExp? $_not,
    List<Input_HistoryCallHistoryBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) =>
      Input_HistoryCallHistoryBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
        if (recordedBy != null) r'recordedBy': recordedBy,
        if (time != null) r'time': time,
        if (user != null) r'user': user,
      });

  Input_HistoryCallHistoryBoolExp._(this._$data);

  factory Input_HistoryCallHistoryBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
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
              (l$personId as Map<String, dynamic>));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$time as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>));
    }
    return Input_HistoryCallHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryCallHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryCallHistoryBoolExp>?);

  Input_HistoryCallHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryCallHistoryBoolExp?);

  List<Input_HistoryCallHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryCallHistoryBoolExp>?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_TimestamptzComparisonExp? get time =>
      (_$data['time'] as Input_TimestamptzComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryBoolExp<Input_HistoryCallHistoryBoolExp>
      get copyWith => CopyWith_Input_HistoryCallHistoryBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryBoolExp ||
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
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
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$user = user;
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
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}
