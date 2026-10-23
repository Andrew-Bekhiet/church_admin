// Part 67 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ConfessionFilterId<TRes> {
  factory CopyWith_Input_ConfessionFilterId(
    Input_ConfessionFilterId instance,
    TRes Function(Input_ConfessionFilterId) then,
  ) = _CopyWithImpl_Input_ConfessionFilterId;

  factory CopyWith_Input_ConfessionFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_ConfessionFilterId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_ConfessionFilterId<TRes>
    implements CopyWith_Input_ConfessionFilterId<TRes> {
  _CopyWithImpl_Input_ConfessionFilterId(this._instance, this._then);

  final Input_ConfessionFilterId _instance;

  final TRes Function(Input_ConfessionFilterId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_ConfessionFilterId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ConfessionFilterId<TRes>
    implements CopyWith_Input_ConfessionFilterId<TRes> {
  _CopyWithStubImpl_Input_ConfessionFilterId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_ConfessionFilterInput {
  factory Input_ConfessionFilterInput({
    List<Input_ConfessionFilterInput>? and,
    List<Input_ConfessionFilterInput>? or,
    List<Input_ConfessionFilterInput>? not,
    Input_ConfessionFilterId? id,
    Input_ConfessionFilterDayId? dayId,
    Input_ConfessionFilterPersonId? personId,
    Input_ConfessionFilterRecordedBy? recordedBy,
    Input_ConfessionFilterTime? time,
    Input_ActivityDayFilterInput? day,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? user,
  }) => Input_ConfessionFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (dayId != null) r'dayId': dayId,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (day != null) r'day': day,
    if (person != null) r'person': person,
    if (user != null) r'user': user,
  });

  Input_ConfessionFilterInput._(this._$data);

  factory Input_ConfessionFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_ConfessionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_ConfessionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_ConfessionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_ConfessionFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : Input_ConfessionFilterDayId.fromJson(
              (l$dayId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_ConfessionFilterPersonId.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_ConfessionFilterRecordedBy.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_ConfessionFilterTime.fromJson(
              (l$time as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_ActivityDayFilterInput.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonFilterInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_UserFilterInput.fromJson((l$user as Map<String, dynamic>));
    }
    return Input_ConfessionFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ConfessionFilterInput>? get and =>
      (_$data['and'] as List<Input_ConfessionFilterInput>?);

  List<Input_ConfessionFilterInput>? get or =>
      (_$data['or'] as List<Input_ConfessionFilterInput>?);

  List<Input_ConfessionFilterInput>? get not =>
      (_$data['not'] as List<Input_ConfessionFilterInput>?);

  Input_ConfessionFilterId? get id =>
      (_$data['id'] as Input_ConfessionFilterId?);

  Input_ConfessionFilterDayId? get dayId =>
      (_$data['dayId'] as Input_ConfessionFilterDayId?);

  Input_ConfessionFilterPersonId? get personId =>
      (_$data['personId'] as Input_ConfessionFilterPersonId?);

  Input_ConfessionFilterRecordedBy? get recordedBy =>
      (_$data['recordedBy'] as Input_ConfessionFilterRecordedBy?);

  Input_ConfessionFilterTime? get time =>
      (_$data['time'] as Input_ConfessionFilterTime?);

  Input_ActivityDayFilterInput? get day =>
      (_$data['day'] as Input_ActivityDayFilterInput?);

  Input_PersonFilterInput? get person =>
      (_$data['person'] as Input_PersonFilterInput?);

  Input_UserFilterInput? get user => (_$data['user'] as Input_UserFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId?.toJson();
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
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
  get copyWith => CopyWith_Input_ConfessionFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ConfessionFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
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
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$dayId = dayId;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$day = day;
    final l$person = person;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_ConfessionFilterInput<TRes> {
  factory CopyWith_Input_ConfessionFilterInput(
    Input_ConfessionFilterInput instance,
    TRes Function(Input_ConfessionFilterInput) then,
  ) = _CopyWithImpl_Input_ConfessionFilterInput;

  factory CopyWith_Input_ConfessionFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ConfessionFilterInput;

  TRes call({
    List<Input_ConfessionFilterInput>? and,
    List<Input_ConfessionFilterInput>? or,
    List<Input_ConfessionFilterInput>? not,
    Input_ConfessionFilterId? id,
    Input_ConfessionFilterDayId? dayId,
    Input_ConfessionFilterPersonId? personId,
    Input_ConfessionFilterRecordedBy? recordedBy,
    Input_ConfessionFilterTime? time,
    Input_ActivityDayFilterInput? day,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? user,
  });
  TRes and(
    Iterable<Input_ConfessionFilterInput>? Function(
      Iterable<
        CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_ConfessionFilterInput>? Function(
      Iterable<
        CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_ConfessionFilterInput>? Function(
      Iterable<
        CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ConfessionFilterId<TRes> get id;
  CopyWith_Input_ConfessionFilterDayId<TRes> get dayId;
  CopyWith_Input_ConfessionFilterPersonId<TRes> get personId;
  CopyWith_Input_ConfessionFilterRecordedBy<TRes> get recordedBy;
  CopyWith_Input_ConfessionFilterTime<TRes> get time;
  CopyWith_Input_ActivityDayFilterInput<TRes> get day;
  CopyWith_Input_PersonFilterInput<TRes> get person;
  CopyWith_Input_UserFilterInput<TRes> get user;
}

class _CopyWithImpl_Input_ConfessionFilterInput<TRes>
    implements CopyWith_Input_ConfessionFilterInput<TRes> {
  _CopyWithImpl_Input_ConfessionFilterInput(this._instance, this._then);

  final Input_ConfessionFilterInput _instance;

  final TRes Function(Input_ConfessionFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? dayId = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? day = _undefined,
    Object? person = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_ConfessionFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_ConfessionFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_ConfessionFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_ConfessionFilterInput>?),
      if (id != _undefined) 'id': (id as Input_ConfessionFilterId?),
      if (dayId != _undefined) 'dayId': (dayId as Input_ConfessionFilterDayId?),
      if (personId != _undefined)
        'personId': (personId as Input_ConfessionFilterPersonId?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_ConfessionFilterRecordedBy?),
      if (time != _undefined) 'time': (time as Input_ConfessionFilterTime?),
      if (day != _undefined) 'day': (day as Input_ActivityDayFilterInput?),
      if (person != _undefined) 'person': (person as Input_PersonFilterInput?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_ConfessionFilterInput>? Function(
      Iterable<
        CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_ConfessionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_ConfessionFilterInput>? Function(
      Iterable<
        CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_ConfessionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_ConfessionFilterInput>? Function(
      Iterable<
        CopyWith_Input_ConfessionFilterInput<Input_ConfessionFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_ConfessionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ConfessionFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_ConfessionFilterId.stub(_then(_instance))
        : CopyWith_Input_ConfessionFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_ConfessionFilterDayId<TRes> get dayId {
    final local$dayId = _instance.dayId;
    return local$dayId == null
        ? CopyWith_Input_ConfessionFilterDayId.stub(_then(_instance))
        : CopyWith_Input_ConfessionFilterDayId(
            local$dayId,
            (e) => call(dayId: e),
          );
  }

  CopyWith_Input_ConfessionFilterPersonId<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_ConfessionFilterPersonId.stub(_then(_instance))
        : CopyWith_Input_ConfessionFilterPersonId(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_ConfessionFilterRecordedBy<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_ConfessionFilterRecordedBy.stub(_then(_instance))
        : CopyWith_Input_ConfessionFilterRecordedBy(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_ConfessionFilterTime<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_ConfessionFilterTime.stub(_then(_instance))
        : CopyWith_Input_ConfessionFilterTime(local$time, (e) => call(time: e));
  }

  CopyWith_Input_ActivityDayFilterInput<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_ActivityDayFilterInput.stub(_then(_instance))
        : CopyWith_Input_ActivityDayFilterInput(local$day, (e) => call(day: e));
  }

  CopyWith_Input_PersonFilterInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonFilterInput(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_ConfessionFilterInput<TRes>
    implements CopyWith_Input_ConfessionFilterInput<TRes> {
  _CopyWithStubImpl_Input_ConfessionFilterInput(this._res);

  TRes _res;

  call({
    List<Input_ConfessionFilterInput>? and,
    List<Input_ConfessionFilterInput>? or,
    List<Input_ConfessionFilterInput>? not,
    Input_ConfessionFilterId? id,
    Input_ConfessionFilterDayId? dayId,
    Input_ConfessionFilterPersonId? personId,
    Input_ConfessionFilterRecordedBy? recordedBy,
    Input_ConfessionFilterTime? time,
    Input_ActivityDayFilterInput? day,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? user,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_ConfessionFilterId<TRes> get id =>
      CopyWith_Input_ConfessionFilterId.stub(_res);

  CopyWith_Input_ConfessionFilterDayId<TRes> get dayId =>
      CopyWith_Input_ConfessionFilterDayId.stub(_res);

  CopyWith_Input_ConfessionFilterPersonId<TRes> get personId =>
      CopyWith_Input_ConfessionFilterPersonId.stub(_res);

  CopyWith_Input_ConfessionFilterRecordedBy<TRes> get recordedBy =>
      CopyWith_Input_ConfessionFilterRecordedBy.stub(_res);

  CopyWith_Input_ConfessionFilterTime<TRes> get time =>
      CopyWith_Input_ConfessionFilterTime.stub(_res);

  CopyWith_Input_ActivityDayFilterInput<TRes> get day =>
      CopyWith_Input_ActivityDayFilterInput.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get person =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);
}

class Input_ConfessionSortInput {
  factory Input_ConfessionSortInput({
    Enum_SortOrder? order,
    required Enum_ConfessionSortField field,
  }) => Input_ConfessionSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_ConfessionSortInput._(this._$data);

  factory Input_ConfessionSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_ConfessionSortField(
      (l$field as String),
    );
    return Input_ConfessionSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_ConfessionSortField get field =>
      (_$data['field'] as Enum_ConfessionSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_ConfessionSortField(l$field);
    return result$data;
  }

  CopyWith_Input_ConfessionSortInput<Input_ConfessionSortInput> get copyWith =>
      CopyWith_Input_ConfessionSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ConfessionSortInput ||
        runtimeType != other.runtimeType) {
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
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_ConfessionSortInput<TRes> {
  factory CopyWith_Input_ConfessionSortInput(
    Input_ConfessionSortInput instance,
    TRes Function(Input_ConfessionSortInput) then,
  ) = _CopyWithImpl_Input_ConfessionSortInput;

  factory CopyWith_Input_ConfessionSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ConfessionSortInput;

  TRes call({Enum_SortOrder? order, Enum_ConfessionSortField? field});
}

class _CopyWithImpl_Input_ConfessionSortInput<TRes>
    implements CopyWith_Input_ConfessionSortInput<TRes> {
  _CopyWithImpl_Input_ConfessionSortInput(this._instance, this._then);

  final Input_ConfessionSortInput _instance;

  final TRes Function(Input_ConfessionSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_ConfessionSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_ConfessionSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_ConfessionSortInput<TRes>
    implements CopyWith_Input_ConfessionSortInput<TRes> {
  _CopyWithStubImpl_Input_ConfessionSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_ConfessionSortField? field}) => _res;
}

class Input_RecordCallInput {
  factory Input_RecordCallInput({DateTime? time, required String personId}) =>
      Input_RecordCallInput._({
        if (time != null) r'time': time,
        r'personId': personId,
      });

  Input_RecordCallInput._(this._$data);

  factory Input_RecordCallInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    final l$personId = data['personId'];
    result$data['personId'] = (l$personId as String);
    return Input_RecordCallInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get time => (_$data['time'] as DateTime?);

  String get personId => (_$data['personId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    final l$personId = personId;
    result$data['personId'] = l$personId;
    return result$data;
  }

  CopyWith_Input_RecordCallInput<Input_RecordCallInput> get copyWith =>
      CopyWith_Input_RecordCallInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_RecordCallInput || runtimeType != other.runtimeType) {
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
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('time') ? l$time : const {},
      l$personId,
    ]);
  }
}

abstract class CopyWith_Input_RecordCallInput<TRes> {
  factory CopyWith_Input_RecordCallInput(
    Input_RecordCallInput instance,
    TRes Function(Input_RecordCallInput) then,
  ) = _CopyWithImpl_Input_RecordCallInput;

  factory CopyWith_Input_RecordCallInput.stub(TRes res) =
      _CopyWithStubImpl_Input_RecordCallInput;

  TRes call({DateTime? time, String? personId});
}

class _CopyWithImpl_Input_RecordCallInput<TRes>
    implements CopyWith_Input_RecordCallInput<TRes> {
  _CopyWithImpl_Input_RecordCallInput(this._instance, this._then);

  final Input_RecordCallInput _instance;

  final TRes Function(Input_RecordCallInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? time = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_RecordCallInput._({
          ..._instance._$data,
          if (time != _undefined) 'time': (time as DateTime?),
          if (personId != _undefined && personId != null)
            'personId': (personId as String),
        }),
      );
}

class _CopyWithStubImpl_Input_RecordCallInput<TRes>
    implements CopyWith_Input_RecordCallInput<TRes> {
  _CopyWithStubImpl_Input_RecordCallInput(this._res);

  TRes _res;

  call({DateTime? time, String? personId}) => _res;
}

class Input_CallFilterRecordedBy {
  factory Input_CallFilterRecordedBy({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_CallFilterRecordedBy._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_CallFilterRecordedBy._(this._$data);

  factory Input_CallFilterRecordedBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_CallFilterRecordedBy._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_CallFilterRecordedBy<Input_CallFilterRecordedBy>
  get copyWith => CopyWith_Input_CallFilterRecordedBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CallFilterRecordedBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_CallFilterRecordedBy<TRes> {
  factory CopyWith_Input_CallFilterRecordedBy(
    Input_CallFilterRecordedBy instance,
    TRes Function(Input_CallFilterRecordedBy) then,
  ) = _CopyWithImpl_Input_CallFilterRecordedBy;

  factory CopyWith_Input_CallFilterRecordedBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CallFilterRecordedBy;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_CallFilterRecordedBy<TRes>
    implements CopyWith_Input_CallFilterRecordedBy<TRes> {
  _CopyWithImpl_Input_CallFilterRecordedBy(this._instance, this._then);

  final Input_CallFilterRecordedBy _instance;

  final TRes Function(Input_CallFilterRecordedBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_CallFilterRecordedBy._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_CallFilterRecordedBy<TRes>
    implements CopyWith_Input_CallFilterRecordedBy<TRes> {
  _CopyWithStubImpl_Input_CallFilterRecordedBy(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_CallFilterPersonId {
  factory Input_CallFilterPersonId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_CallFilterPersonId._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_CallFilterPersonId._(this._$data);

  factory Input_CallFilterPersonId.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_CallFilterPersonId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_CallFilterPersonId<Input_CallFilterPersonId> get copyWith =>
      CopyWith_Input_CallFilterPersonId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CallFilterPersonId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_CallFilterPersonId<TRes> {
  factory CopyWith_Input_CallFilterPersonId(
    Input_CallFilterPersonId instance,
    TRes Function(Input_CallFilterPersonId) then,
  ) = _CopyWithImpl_Input_CallFilterPersonId;

  factory CopyWith_Input_CallFilterPersonId.stub(TRes res) =
      _CopyWithStubImpl_Input_CallFilterPersonId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_CallFilterPersonId<TRes>
    implements CopyWith_Input_CallFilterPersonId<TRes> {
  _CopyWithImpl_Input_CallFilterPersonId(this._instance, this._then);

  final Input_CallFilterPersonId _instance;

  final TRes Function(Input_CallFilterPersonId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_CallFilterPersonId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_CallFilterPersonId<TRes>
    implements CopyWith_Input_CallFilterPersonId<TRes> {
  _CopyWithStubImpl_Input_CallFilterPersonId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_CallFilterTime {
  factory Input_CallFilterTime({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => Input_CallFilterTime._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_CallFilterTime._(this._$data);

  factory Input_CallFilterTime.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null ? null : tstzFromString(l$eq);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = l$notEq == null ? null : tstzFromString(l$notEq);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzFromString(l$lessThan);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzFromString(l$greaterThan);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzFromString(l$lessThanOrEqual);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzFromString(l$greaterThanOrEqual);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzFromString(l$isDistinctFrom);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzFromString(l$isNotDistinctFrom);
    }
    return Input_CallFilterTime._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get notEq => (_$data['notEq'] as DateTime?);

  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);

  DateTime? get lessThan => (_$data['lessThan'] as DateTime?);

  DateTime? get greaterThan => (_$data['greaterThan'] as DateTime?);

  DateTime? get lessThanOrEqual => (_$data['lessThanOrEqual'] as DateTime?);

  DateTime? get greaterThanOrEqual =>
      (_$data['greaterThanOrEqual'] as DateTime?);

  DateTime? get isDistinctFrom => (_$data['isDistinctFrom'] as DateTime?);

  DateTime? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : tstzToString(l$eq);
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq == null ? null : tstzToString(l$notEq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => tstzToString(e)).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzToString(l$lessThan);
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzToString(l$greaterThan);
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzToString(l$lessThanOrEqual);
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzToString(l$greaterThanOrEqual);
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzToString(l$isDistinctFrom);
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzToString(l$isNotDistinctFrom);
    }
    return result$data;
  }

  CopyWith_Input_CallFilterTime<Input_CallFilterTime> get copyWith =>
      CopyWith_Input_CallFilterTime(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CallFilterTime || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_CallFilterTime<TRes> {
  factory CopyWith_Input_CallFilterTime(
    Input_CallFilterTime instance,
    TRes Function(Input_CallFilterTime) then,
  ) = _CopyWithImpl_Input_CallFilterTime;

  factory CopyWith_Input_CallFilterTime.stub(TRes res) =
      _CopyWithStubImpl_Input_CallFilterTime;

  TRes call({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_CallFilterTime<TRes>
    implements CopyWith_Input_CallFilterTime<TRes> {
  _CopyWithImpl_Input_CallFilterTime(this._instance, this._then);

  final Input_CallFilterTime _instance;

  final TRes Function(Input_CallFilterTime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_CallFilterTime._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as DateTime?),
      if (notEq != _undefined) 'notEq': (notEq as DateTime?),
      if ($in != _undefined) 'in': ($in as List<DateTime>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as DateTime?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as DateTime?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as DateTime?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as DateTime?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as DateTime?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_CallFilterTime<TRes>
    implements CopyWith_Input_CallFilterTime<TRes> {
  _CopyWithStubImpl_Input_CallFilterTime(this._res);

  TRes _res;

  call({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => _res;
}

class Input_CallFilterInput {
  factory Input_CallFilterInput({
    List<Input_CallFilterInput>? and,
    List<Input_CallFilterInput>? or,
    List<Input_CallFilterInput>? not,
    Input_CallFilterTime? time,
    Input_CallFilterPersonId? personId,
    Input_CallFilterRecordedBy? recordedBy,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? user,
  }) => Input_CallFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (time != null) r'time': time,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (person != null) r'person': person,
    if (user != null) r'user': user,
  });

  Input_CallFilterInput._(this._$data);

  factory Input_CallFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_CallFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_CallFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_CallFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_CallFilterTime.fromJson((l$time as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_CallFilterPersonId.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_CallFilterRecordedBy.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonFilterInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_UserFilterInput.fromJson((l$user as Map<String, dynamic>));
    }
    return Input_CallFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_CallFilterInput>? get and =>
      (_$data['and'] as List<Input_CallFilterInput>?);

  List<Input_CallFilterInput>? get or =>
      (_$data['or'] as List<Input_CallFilterInput>?);

  List<Input_CallFilterInput>? get not =>
      (_$data['not'] as List<Input_CallFilterInput>?);

  Input_CallFilterTime? get time => (_$data['time'] as Input_CallFilterTime?);

  Input_CallFilterPersonId? get personId =>
      (_$data['personId'] as Input_CallFilterPersonId?);

  Input_CallFilterRecordedBy? get recordedBy =>
      (_$data['recordedBy'] as Input_CallFilterRecordedBy?);

  Input_PersonFilterInput? get person =>
      (_$data['person'] as Input_PersonFilterInput?);

  Input_UserFilterInput? get user => (_$data['user'] as Input_UserFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CallFilterInput<Input_CallFilterInput> get copyWith =>
      CopyWith_Input_CallFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CallFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
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
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$time = time;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$person = person;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_CallFilterInput<TRes> {
  factory CopyWith_Input_CallFilterInput(
    Input_CallFilterInput instance,
    TRes Function(Input_CallFilterInput) then,
  ) = _CopyWithImpl_Input_CallFilterInput;

  factory CopyWith_Input_CallFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CallFilterInput;

  TRes call({
    List<Input_CallFilterInput>? and,
    List<Input_CallFilterInput>? or,
    List<Input_CallFilterInput>? not,
    Input_CallFilterTime? time,
    Input_CallFilterPersonId? personId,
    Input_CallFilterRecordedBy? recordedBy,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? user,
  });
  TRes and(
    Iterable<Input_CallFilterInput>? Function(
      Iterable<CopyWith_Input_CallFilterInput<Input_CallFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_CallFilterInput>? Function(
      Iterable<CopyWith_Input_CallFilterInput<Input_CallFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_CallFilterInput>? Function(
      Iterable<CopyWith_Input_CallFilterInput<Input_CallFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_CallFilterTime<TRes> get time;
  CopyWith_Input_CallFilterPersonId<TRes> get personId;
  CopyWith_Input_CallFilterRecordedBy<TRes> get recordedBy;
  CopyWith_Input_PersonFilterInput<TRes> get person;
  CopyWith_Input_UserFilterInput<TRes> get user;
}

class _CopyWithImpl_Input_CallFilterInput<TRes>
    implements CopyWith_Input_CallFilterInput<TRes> {
  _CopyWithImpl_Input_CallFilterInput(this._instance, this._then);

  final Input_CallFilterInput _instance;

  final TRes Function(Input_CallFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? time = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? person = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_CallFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_CallFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_CallFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_CallFilterInput>?),
      if (time != _undefined) 'time': (time as Input_CallFilterTime?),
      if (personId != _undefined)
        'personId': (personId as Input_CallFilterPersonId?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_CallFilterRecordedBy?),
      if (person != _undefined) 'person': (person as Input_PersonFilterInput?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_CallFilterInput>? Function(
      Iterable<CopyWith_Input_CallFilterInput<Input_CallFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_CallFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_CallFilterInput>? Function(
      Iterable<CopyWith_Input_CallFilterInput<Input_CallFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_CallFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_CallFilterInput>? Function(
      Iterable<CopyWith_Input_CallFilterInput<Input_CallFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_CallFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_CallFilterTime<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_CallFilterTime.stub(_then(_instance))
        : CopyWith_Input_CallFilterTime(local$time, (e) => call(time: e));
  }

  CopyWith_Input_CallFilterPersonId<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_CallFilterPersonId.stub(_then(_instance))
        : CopyWith_Input_CallFilterPersonId(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_CallFilterRecordedBy<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_CallFilterRecordedBy.stub(_then(_instance))
        : CopyWith_Input_CallFilterRecordedBy(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_PersonFilterInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonFilterInput(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_CallFilterInput<TRes>
    implements CopyWith_Input_CallFilterInput<TRes> {
  _CopyWithStubImpl_Input_CallFilterInput(this._res);

  TRes _res;

  call({
    List<Input_CallFilterInput>? and,
    List<Input_CallFilterInput>? or,
    List<Input_CallFilterInput>? not,
    Input_CallFilterTime? time,
    Input_CallFilterPersonId? personId,
    Input_CallFilterRecordedBy? recordedBy,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? user,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_CallFilterTime<TRes> get time =>
      CopyWith_Input_CallFilterTime.stub(_res);

  CopyWith_Input_CallFilterPersonId<TRes> get personId =>
      CopyWith_Input_CallFilterPersonId.stub(_res);

  CopyWith_Input_CallFilterRecordedBy<TRes> get recordedBy =>
      CopyWith_Input_CallFilterRecordedBy.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get person =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);
}

class Input_CallSortInput {
  factory Input_CallSortInput({
    Enum_SortOrder? order,
    required Enum_CallSortField field,
  }) => Input_CallSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_CallSortInput._(this._$data);

  factory Input_CallSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_CallSortField((l$field as String));
    return Input_CallSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_CallSortField get field => (_$data['field'] as Enum_CallSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_CallSortField(l$field);
    return result$data;
  }

  CopyWith_Input_CallSortInput<Input_CallSortInput> get copyWith =>
      CopyWith_Input_CallSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CallSortInput || runtimeType != other.runtimeType) {
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
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}
