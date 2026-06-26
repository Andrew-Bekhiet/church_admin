// Part 24 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryAttendanceHistoryOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryOrderBy(
    Input_HistoryAttendanceHistoryOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryOrderBy;

  TRes call({
    Enum_OrderBy? asServant,
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Input_AuthUsersDataOrderBy? recordedByUser,
  });
  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get recordedByUser;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asServant = _undefined,
    Object? datetime = _undefined,
    Object? id = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? recordedByUser = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryOrderBy._({
      ..._instance._$data,
      if (asServant != _undefined) 'asServant': (asServant as Enum_OrderBy?),
      if (datetime != _undefined) 'datetime': (datetime as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsOrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (recordedByUser != _undefined)
        'recordedByUser': (recordedByUser as Input_AuthUsersDataOrderBy?),
    }),
  );

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOrderBy(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get recordedByUser {
    final local$recordedByUser = _instance.recordedByUser;
    return local$recordedByUser == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(
            local$recordedByUser,
            (e) => call(recordedByUser: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? asServant,
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Input_AuthUsersDataOrderBy? recordedByUser,
  }) => _res;

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get recordedByUser =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryAttendanceHistoryPkColumnsInput {
  factory Input_HistoryAttendanceHistoryPkColumnsInput({
    required UuidValue id,
  }) => Input_HistoryAttendanceHistoryPkColumnsInput._({r'id': id});

  Input_HistoryAttendanceHistoryPkColumnsInput._(this._$data);

  factory Input_HistoryAttendanceHistoryPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_HistoryAttendanceHistoryPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<
    Input_HistoryAttendanceHistoryPkColumnsInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryPkColumnsInput ||
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

  TRes call({Object? id = _undefined}) => _then(
    Input_HistoryAttendanceHistoryPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_HistoryAttendanceHistorySetInput {
  factory Input_HistoryAttendanceHistorySetInput({DateTime? datetime}) =>
      Input_HistoryAttendanceHistorySetInput._({
        if (datetime != null) r'datetime': datetime,
      });

  Input_HistoryAttendanceHistorySetInput._(this._$data);

  factory Input_HistoryAttendanceHistorySetInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : tstzFromString(l$datetime);
    }
    return Input_HistoryAttendanceHistorySetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get datetime => (_$data['datetime'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : tstzToString(l$datetime);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistorySetInput<
    Input_HistoryAttendanceHistorySetInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistorySetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistorySetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$datetime = datetime;
    return Object.hashAll([
      _$data.containsKey('datetime') ? l$datetime : const {},
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

  TRes call({DateTime? datetime});
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

  TRes call({Object? datetime = _undefined}) => _then(
    Input_HistoryAttendanceHistorySetInput._({
      ..._instance._$data,
      if (datetime != _undefined) 'datetime': (datetime as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistorySetInput(this._res);

  TRes _res;

  call({DateTime? datetime}) => _res;
}

class Input_HistoryAttendanceHistoryStreamCursorInput {
  factory Input_HistoryAttendanceHistoryStreamCursorInput({
    required Input_HistoryAttendanceHistoryStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryAttendanceHistoryStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryAttendanceHistoryStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceHistoryStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceHistoryStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
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
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<
    Input_HistoryAttendanceHistoryStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput(this, (i) => i);

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
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorInput;

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
  }) => _then(
    Input_HistoryAttendanceHistoryStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue
                as Input_HistoryAttendanceHistoryStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput.stub(_res);
}

class Input_HistoryAttendanceHistoryStreamCursorValueInput {
  factory Input_HistoryAttendanceHistoryStreamCursorValueInput({
    bool? asServant,
    DateTime? datetime,
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    UuidValue? recordedBy,
  }) => Input_HistoryAttendanceHistoryStreamCursorValueInput._({
    if (asServant != null) r'asServant': asServant,
    if (datetime != null) r'datetime': datetime,
    if (id != null) r'id': id,
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
  });

  Input_HistoryAttendanceHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryAttendanceHistoryStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = (l$asServant as bool?);
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : tstzFromString(l$datetime);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : stringToUuid(l$meetingId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : stringToUuid(l$recordedBy);
    }
    return Input_HistoryAttendanceHistoryStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get asServant => (_$data['asServant'] as bool?);

  DateTime? get datetime => (_$data['datetime'] as DateTime?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  UuidValue? get meetingId => (_$data['meetingId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get recordedBy => (_$data['recordedBy'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant;
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : tstzToString(l$datetime);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : uuidToString(l$meetingId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : uuidToString(l$recordedBy);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<
    Input_HistoryAttendanceHistoryStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput(
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
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (_$data.containsKey('asServant') !=
        other._$data.containsKey('asServant')) {
      return false;
    }
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$asServant = asServant;
    final l$datetime = datetime;
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    return Object.hashAll([
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput(
    Input_HistoryAttendanceHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput;

  TRes call({
    bool? asServant,
    DateTime? datetime,
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    UuidValue? recordedBy,
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
    Object? asServant = _undefined,
    Object? datetime = _undefined,
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryStreamCursorValueInput._({
      ..._instance._$data,
      if (asServant != _undefined) 'asServant': (asServant as bool?),
      if (datetime != _undefined) 'datetime': (datetime as DateTime?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (meetingId != _undefined) 'meetingId': (meetingId as UuidValue?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput<
  TRes
>
    implements
        CopyWith_Input_HistoryAttendanceHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryStreamCursorValueInput(
    this._res,
  );

  TRes _res;

  call({
    bool? asServant,
    DateTime? datetime,
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    UuidValue? recordedBy,
  }) => _res;
}

class Input_HistoryAttendanceHistoryUpdates {
  factory Input_HistoryAttendanceHistoryUpdates({
    Input_HistoryAttendanceHistorySetInput? $_set,
    required Input_HistoryAttendanceHistoryBoolExp where,
  }) => Input_HistoryAttendanceHistoryUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HistoryAttendanceHistoryUpdates._(this._$data);

  factory Input_HistoryAttendanceHistoryUpdates.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryAttendanceHistorySetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryAttendanceHistoryBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
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
    Input_HistoryAttendanceHistoryUpdates
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryUpdates(this, (i) => i);

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

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_HistoryAttendanceHistoryUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_HistoryAttendanceHistorySetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_HistoryAttendanceHistoryBoolExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryAttendanceHistorySetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistorySetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryAttendanceHistoryBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistorySetInput? $_set,
    Input_HistoryAttendanceHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistorySetInput<TRes> get $_set =>
      CopyWith_Input_HistoryAttendanceHistorySetInput.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);
}

class Input_HistoryCallHistoryAggregateBoolExp {
  factory Input_HistoryCallHistoryAggregateBoolExp({
    Input_historyCallHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryCallHistoryAggregateBoolExp._({
    if (count != null) r'count': count,
  });

  Input_HistoryCallHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryCallHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyCallHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
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
    Input_HistoryCallHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryCallHistoryAggregateBoolExp(this, (i) => i);

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

  TRes call({Object? count = _undefined}) => _then(
    Input_HistoryCallHistoryAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_historyCallHistoryAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyCallHistoryAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyCallHistoryAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
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
  }) => Input_HistoryCallHistoryAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryCallHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryCallHistoryAggregateOrderBy.fromJson(
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
          : Input_HistoryCallHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryCallHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
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

  CopyWith_Input_HistoryCallHistoryAggregateOrderBy<
    Input_HistoryCallHistoryAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryCallHistoryAggregateOrderBy(this, (i) => i);

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
  }) => _then(
    Input_HistoryCallHistoryAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryCallHistoryMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryCallHistoryMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryCallHistoryMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryCallHistoryMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
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
  }) => _res;

  CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryCallHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryCallHistoryMinOrderBy.stub(_res);
}

class Input_HistoryCallHistoryArrRelInsertInput {
  factory Input_HistoryCallHistoryArrRelInsertInput({
    required List<Input_HistoryCallHistoryInsertInput> data,
    Input_HistoryCallHistoryOnConflict? onConflict,
  }) => Input_HistoryCallHistoryArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryCallHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryCallHistoryArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryCallHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryCallHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
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
    Input_HistoryCallHistoryArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryCallHistoryArrRelInsertInput(this, (i) => i);

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
          Input_HistoryCallHistoryInsertInput
        >
      >,
    )
    _fn,
  );
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

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryCallHistoryArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_HistoryCallHistoryInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HistoryCallHistoryOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_HistoryCallHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryCallHistoryInsertInput<
          Input_HistoryCallHistoryInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryCallHistoryInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryCallHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryCallHistoryOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryCallHistoryInsertInput>? data,
    Input_HistoryCallHistoryOnConflict? onConflict,
  }) => _res;

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
  }) => Input_HistoryCallHistoryBoolExp._({
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
          ?.map(
            (e) => Input_HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$time as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
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
  get copyWith => CopyWith_Input_HistoryCallHistoryBoolExp(this, (i) => i);

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

abstract class CopyWith_Input_HistoryCallHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryCallHistoryBoolExp(
    Input_HistoryCallHistoryBoolExp instance,
    TRes Function(Input_HistoryCallHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryBoolExp;

  factory CopyWith_Input_HistoryCallHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryBoolExp;

  TRes call({
    List<Input_HistoryCallHistoryBoolExp>? $_and,
    Input_HistoryCallHistoryBoolExp? $_not,
    List<Input_HistoryCallHistoryBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryCallHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryCallHistoryBoolExp<
          Input_HistoryCallHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryCallHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryCallHistoryBoolExp<
          Input_HistoryCallHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_HistoryCallHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryCallHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryBoolExp(this._instance, this._then);

  final Input_HistoryCallHistoryBoolExp _instance;

  final TRes Function(Input_HistoryCallHistoryBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryCallHistoryBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryCallHistoryBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryCallHistoryBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryCallHistoryBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (time != _undefined) 'time': (time as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryCallHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryCallHistoryBoolExp<
          Input_HistoryCallHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryCallHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryCallHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryCallHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryCallHistoryBoolExp<
          Input_HistoryCallHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryCallHistoryBoolExp(e, (i) => i),
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

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$time,
            (e) => call(time: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryCallHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryCallHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryCallHistoryBoolExp>? $_and,
    Input_HistoryCallHistoryBoolExp? $_not,
    List<Input_HistoryCallHistoryBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryCallHistoryBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get time =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_HistoryCallHistoryInsertInput {
  factory Input_HistoryCallHistoryInsertInput({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    DateTime? time,
  }) => Input_HistoryCallHistoryInsertInput._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (time != null) r'time': time,
  });

  Input_HistoryCallHistoryInsertInput._(this._$data);

  factory Input_HistoryCallHistoryInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryCallHistoryInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  DateTime? get time => (_$data['time'] as DateTime?);

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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryInsertInput<
    Input_HistoryCallHistoryInsertInput
  >
  get copyWith => CopyWith_Input_HistoryCallHistoryInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryInsertInput ||
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
    final l$person = person;
    final l$personId = personId;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryCallHistoryInsertInput<TRes> {
  factory CopyWith_Input_HistoryCallHistoryInsertInput(
    Input_HistoryCallHistoryInsertInput instance,
    TRes Function(Input_HistoryCallHistoryInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryInsertInput;

  factory CopyWith_Input_HistoryCallHistoryInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryInsertInput;

  TRes call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    DateTime? time,
  });
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_HistoryCallHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryInsertInput(this._instance, this._then);

  final Input_HistoryCallHistoryInsertInput _instance;

  final TRes Function(Input_HistoryCallHistoryInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryCallHistoryInsertInput._({
      ..._instance._$data,
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (time != _undefined) 'time': (time as DateTime?),
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
}

class _CopyWithStubImpl_Input_HistoryCallHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryCallHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    DateTime? time,
  }) => _res;

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_HistoryCallHistoryMaxOrderBy {
  factory Input_HistoryCallHistoryMaxOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryCallHistoryMaxOrderBy._({
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryCallHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryCallHistoryMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryCallHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryMaxOrderBy<
    Input_HistoryCallHistoryMaxOrderBy
  >
  get copyWith => CopyWith_Input_HistoryCallHistoryMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryMaxOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryCallHistoryMaxOrderBy(
    Input_HistoryCallHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryCallHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryCallHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryCallHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryMaxOrderBy(this._instance, this._then);

  final Input_HistoryCallHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryCallHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryCallHistoryMaxOrderBy._({
      ..._instance._$data,
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryCallHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryCallHistoryMinOrderBy {
  factory Input_HistoryCallHistoryMinOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryCallHistoryMinOrderBy._({
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryCallHistoryMinOrderBy._(this._$data);

  factory Input_HistoryCallHistoryMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryCallHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryMinOrderBy<
    Input_HistoryCallHistoryMinOrderBy
  >
  get copyWith => CopyWith_Input_HistoryCallHistoryMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryMinOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryCallHistoryMinOrderBy(
    Input_HistoryCallHistoryMinOrderBy instance,
    TRes Function(Input_HistoryCallHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryCallHistoryMinOrderBy;

  factory CopyWith_Input_HistoryCallHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryCallHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryCallHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryCallHistoryMinOrderBy(this._instance, this._then);

  final Input_HistoryCallHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryCallHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryCallHistoryMinOrderBy._({
      ..._instance._$data,
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryCallHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryCallHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryCallHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryCallHistoryOnConflict {
  factory Input_HistoryCallHistoryOnConflict({
    required Enum_HistoryCallHistoryConstraint constraint,
    List<Enum_HistoryCallHistoryUpdateColumn>? updateColumns,
    Input_HistoryCallHistoryBoolExp? where,
  }) => Input_HistoryCallHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryCallHistoryOnConflict._(this._$data);

  factory Input_HistoryCallHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryCallHistoryConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryCallHistoryUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryCallHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryCallHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryCallHistoryConstraint);

  List<Enum_HistoryCallHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryCallHistoryUpdateColumn>?);

  Input_HistoryCallHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryCallHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryCallHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryCallHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryCallHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryCallHistoryOnConflict<
    Input_HistoryCallHistoryOnConflict
  >
  get copyWith => CopyWith_Input_HistoryCallHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryCallHistoryOnConflict ||
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
