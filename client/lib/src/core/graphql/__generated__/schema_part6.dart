// Part 6 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonHobbyFilterPersonId<TRes> {
  factory CopyWith_Input_PersonHobbyFilterPersonId(
    Input_PersonHobbyFilterPersonId instance,
    TRes Function(Input_PersonHobbyFilterPersonId) then,
  ) = _CopyWithImpl_Input_PersonHobbyFilterPersonId;

  factory CopyWith_Input_PersonHobbyFilterPersonId.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonHobbyFilterPersonId;

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

class _CopyWithImpl_Input_PersonHobbyFilterPersonId<TRes>
    implements CopyWith_Input_PersonHobbyFilterPersonId<TRes> {
  _CopyWithImpl_Input_PersonHobbyFilterPersonId(this._instance, this._then);

  final Input_PersonHobbyFilterPersonId _instance;

  final TRes Function(Input_PersonHobbyFilterPersonId) _then;

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
    Input_PersonHobbyFilterPersonId._({
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

class _CopyWithStubImpl_Input_PersonHobbyFilterPersonId<TRes>
    implements CopyWith_Input_PersonHobbyFilterPersonId<TRes> {
  _CopyWithStubImpl_Input_PersonHobbyFilterPersonId(this._res);

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

class Input_PersonHobbyFilterInput {
  factory Input_PersonHobbyFilterInput({
    List<Input_PersonHobbyFilterInput>? and,
    List<Input_PersonHobbyFilterInput>? or,
    List<Input_PersonHobbyFilterInput>? not,
    Input_PersonHobbyFilterPersonId? personId,
    Input_PersonHobbyFilterHobbyId? hobbyId,
    Input_PersonFilterInput? person,
    Input_PersonHobbyFilterHobbyName? hobbyName,
  }) => Input_PersonHobbyFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (personId != null) r'personId': personId,
    if (hobbyId != null) r'hobbyId': hobbyId,
    if (person != null) r'person': person,
    if (hobbyName != null) r'hobbyName': hobbyName,
  });

  Input_PersonHobbyFilterInput._(this._$data);

  factory Input_PersonHobbyFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonHobbyFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonHobbyFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_PersonHobbyFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_PersonHobbyFilterPersonId.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : Input_PersonHobbyFilterHobbyId.fromJson(
              (l$hobbyId as Map<String, dynamic>),
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
    if (data.containsKey('hobbyName')) {
      final l$hobbyName = data['hobbyName'];
      result$data['hobbyName'] = l$hobbyName == null
          ? null
          : Input_PersonHobbyFilterHobbyName.fromJson(
              (l$hobbyName as Map<String, dynamic>),
            );
    }
    return Input_PersonHobbyFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonHobbyFilterInput>? get and =>
      (_$data['and'] as List<Input_PersonHobbyFilterInput>?);

  List<Input_PersonHobbyFilterInput>? get or =>
      (_$data['or'] as List<Input_PersonHobbyFilterInput>?);

  List<Input_PersonHobbyFilterInput>? get not =>
      (_$data['not'] as List<Input_PersonHobbyFilterInput>?);

  Input_PersonHobbyFilterPersonId? get personId =>
      (_$data['personId'] as Input_PersonHobbyFilterPersonId?);

  Input_PersonHobbyFilterHobbyId? get hobbyId =>
      (_$data['hobbyId'] as Input_PersonHobbyFilterHobbyId?);

  Input_PersonFilterInput? get person =>
      (_$data['person'] as Input_PersonFilterInput?);

  Input_PersonHobbyFilterHobbyName? get hobbyName =>
      (_$data['hobbyName'] as Input_PersonHobbyFilterHobbyName?);

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
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] = l$hobbyId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('hobbyName')) {
      final l$hobbyName = hobbyName;
      result$data['hobbyName'] = l$hobbyName?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
  get copyWith => CopyWith_Input_PersonHobbyFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonHobbyFilterInput ||
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
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$hobbyId = hobbyId;
    final lOther$hobbyId = other.hobbyId;
    if (_$data.containsKey('hobbyId') != other._$data.containsKey('hobbyId')) {
      return false;
    }
    if (l$hobbyId != lOther$hobbyId) {
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
    final l$hobbyName = hobbyName;
    final lOther$hobbyName = other.hobbyName;
    if (_$data.containsKey('hobbyName') !=
        other._$data.containsKey('hobbyName')) {
      return false;
    }
    if (l$hobbyName != lOther$hobbyName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$personId = personId;
    final l$hobbyId = hobbyId;
    final l$person = person;
    final l$hobbyName = hobbyName;
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
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('hobbyName') ? l$hobbyName : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonHobbyFilterInput<TRes> {
  factory CopyWith_Input_PersonHobbyFilterInput(
    Input_PersonHobbyFilterInput instance,
    TRes Function(Input_PersonHobbyFilterInput) then,
  ) = _CopyWithImpl_Input_PersonHobbyFilterInput;

  factory CopyWith_Input_PersonHobbyFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonHobbyFilterInput;

  TRes call({
    List<Input_PersonHobbyFilterInput>? and,
    List<Input_PersonHobbyFilterInput>? or,
    List<Input_PersonHobbyFilterInput>? not,
    Input_PersonHobbyFilterPersonId? personId,
    Input_PersonHobbyFilterHobbyId? hobbyId,
    Input_PersonFilterInput? person,
    Input_PersonHobbyFilterHobbyName? hobbyName,
  });
  TRes and(
    Iterable<Input_PersonHobbyFilterInput>? Function(
      Iterable<
        CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_PersonHobbyFilterInput>? Function(
      Iterable<
        CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_PersonHobbyFilterInput>? Function(
      Iterable<
        CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonHobbyFilterPersonId<TRes> get personId;
  CopyWith_Input_PersonHobbyFilterHobbyId<TRes> get hobbyId;
  CopyWith_Input_PersonFilterInput<TRes> get person;
  CopyWith_Input_PersonHobbyFilterHobbyName<TRes> get hobbyName;
}

class _CopyWithImpl_Input_PersonHobbyFilterInput<TRes>
    implements CopyWith_Input_PersonHobbyFilterInput<TRes> {
  _CopyWithImpl_Input_PersonHobbyFilterInput(this._instance, this._then);

  final Input_PersonHobbyFilterInput _instance;

  final TRes Function(Input_PersonHobbyFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? personId = _undefined,
    Object? hobbyId = _undefined,
    Object? person = _undefined,
    Object? hobbyName = _undefined,
  }) => _then(
    Input_PersonHobbyFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input_PersonHobbyFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_PersonHobbyFilterInput>?),
      if (not != _undefined)
        'not': (not as List<Input_PersonHobbyFilterInput>?),
      if (personId != _undefined)
        'personId': (personId as Input_PersonHobbyFilterPersonId?),
      if (hobbyId != _undefined)
        'hobbyId': (hobbyId as Input_PersonHobbyFilterHobbyId?),
      if (person != _undefined) 'person': (person as Input_PersonFilterInput?),
      if (hobbyName != _undefined)
        'hobbyName': (hobbyName as Input_PersonHobbyFilterHobbyName?),
    }),
  );

  TRes and(
    Iterable<Input_PersonHobbyFilterInput>? Function(
      Iterable<
        CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_PersonHobbyFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_PersonHobbyFilterInput>? Function(
      Iterable<
        CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_PersonHobbyFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_PersonHobbyFilterInput>? Function(
      Iterable<
        CopyWith_Input_PersonHobbyFilterInput<Input_PersonHobbyFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_PersonHobbyFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonHobbyFilterPersonId<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_PersonHobbyFilterPersonId.stub(_then(_instance))
        : CopyWith_Input_PersonHobbyFilterPersonId(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_PersonHobbyFilterHobbyId<TRes> get hobbyId {
    final local$hobbyId = _instance.hobbyId;
    return local$hobbyId == null
        ? CopyWith_Input_PersonHobbyFilterHobbyId.stub(_then(_instance))
        : CopyWith_Input_PersonHobbyFilterHobbyId(
            local$hobbyId,
            (e) => call(hobbyId: e),
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

  CopyWith_Input_PersonHobbyFilterHobbyName<TRes> get hobbyName {
    final local$hobbyName = _instance.hobbyName;
    return local$hobbyName == null
        ? CopyWith_Input_PersonHobbyFilterHobbyName.stub(_then(_instance))
        : CopyWith_Input_PersonHobbyFilterHobbyName(
            local$hobbyName,
            (e) => call(hobbyName: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonHobbyFilterInput<TRes>
    implements CopyWith_Input_PersonHobbyFilterInput<TRes> {
  _CopyWithStubImpl_Input_PersonHobbyFilterInput(this._res);

  TRes _res;

  call({
    List<Input_PersonHobbyFilterInput>? and,
    List<Input_PersonHobbyFilterInput>? or,
    List<Input_PersonHobbyFilterInput>? not,
    Input_PersonHobbyFilterPersonId? personId,
    Input_PersonHobbyFilterHobbyId? hobbyId,
    Input_PersonFilterInput? person,
    Input_PersonHobbyFilterHobbyName? hobbyName,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_PersonHobbyFilterPersonId<TRes> get personId =>
      CopyWith_Input_PersonHobbyFilterPersonId.stub(_res);

  CopyWith_Input_PersonHobbyFilterHobbyId<TRes> get hobbyId =>
      CopyWith_Input_PersonHobbyFilterHobbyId.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get person =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_PersonHobbyFilterHobbyName<TRes> get hobbyName =>
      CopyWith_Input_PersonHobbyFilterHobbyName.stub(_res);
}

class Input_PersonHobbySortInput {
  factory Input_PersonHobbySortInput({
    Enum_SortOrder? order,
    required Enum_PersonHobbySortField field,
  }) => Input_PersonHobbySortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_PersonHobbySortInput._(this._$data);

  factory Input_PersonHobbySortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_PersonHobbySortField(
      (l$field as String),
    );
    return Input_PersonHobbySortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_PersonHobbySortField get field =>
      (_$data['field'] as Enum_PersonHobbySortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_PersonHobbySortField(l$field);
    return result$data;
  }

  CopyWith_Input_PersonHobbySortInput<Input_PersonHobbySortInput>
  get copyWith => CopyWith_Input_PersonHobbySortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonHobbySortInput ||
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

abstract class CopyWith_Input_PersonHobbySortInput<TRes> {
  factory CopyWith_Input_PersonHobbySortInput(
    Input_PersonHobbySortInput instance,
    TRes Function(Input_PersonHobbySortInput) then,
  ) = _CopyWithImpl_Input_PersonHobbySortInput;

  factory CopyWith_Input_PersonHobbySortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonHobbySortInput;

  TRes call({Enum_SortOrder? order, Enum_PersonHobbySortField? field});
}

class _CopyWithImpl_Input_PersonHobbySortInput<TRes>
    implements CopyWith_Input_PersonHobbySortInput<TRes> {
  _CopyWithImpl_Input_PersonHobbySortInput(this._instance, this._then);

  final Input_PersonHobbySortInput _instance;

  final TRes Function(Input_PersonHobbySortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_PersonHobbySortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_PersonHobbySortField),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonHobbySortInput<TRes>
    implements CopyWith_Input_PersonHobbySortInput<TRes> {
  _CopyWithStubImpl_Input_PersonHobbySortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_PersonHobbySortField? field}) => _res;
}

class Input_RecordPersonSpiritualDaysInput {
  factory Input_RecordPersonSpiritualDaysInput({
    required DateTime confessionDay,
    required DateTime kodasDay,
  }) => Input_RecordPersonSpiritualDaysInput._({
    r'confessionDay': confessionDay,
    r'kodasDay': kodasDay,
  });

  Input_RecordPersonSpiritualDaysInput._(this._$data);

  factory Input_RecordPersonSpiritualDaysInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$confessionDay = data['confessionDay'];
    result$data['confessionDay'] = dateFromString(l$confessionDay);
    final l$kodasDay = data['kodasDay'];
    result$data['kodasDay'] = dateFromString(l$kodasDay);
    return Input_RecordPersonSpiritualDaysInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get confessionDay => (_$data['confessionDay'] as DateTime);

  DateTime get kodasDay => (_$data['kodasDay'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$confessionDay = confessionDay;
    result$data['confessionDay'] = dateToString(l$confessionDay);
    final l$kodasDay = kodasDay;
    result$data['kodasDay'] = dateToString(l$kodasDay);
    return result$data;
  }

  CopyWith_Input_RecordPersonSpiritualDaysInput<
    Input_RecordPersonSpiritualDaysInput
  >
  get copyWith => CopyWith_Input_RecordPersonSpiritualDaysInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_RecordPersonSpiritualDaysInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$confessionDay = confessionDay;
    final lOther$confessionDay = other.confessionDay;
    if (l$confessionDay != lOther$confessionDay) {
      return false;
    }
    final l$kodasDay = kodasDay;
    final lOther$kodasDay = other.kodasDay;
    if (l$kodasDay != lOther$kodasDay) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$confessionDay = confessionDay;
    final l$kodasDay = kodasDay;
    return Object.hashAll([l$confessionDay, l$kodasDay]);
  }
}

abstract class CopyWith_Input_RecordPersonSpiritualDaysInput<TRes> {
  factory CopyWith_Input_RecordPersonSpiritualDaysInput(
    Input_RecordPersonSpiritualDaysInput instance,
    TRes Function(Input_RecordPersonSpiritualDaysInput) then,
  ) = _CopyWithImpl_Input_RecordPersonSpiritualDaysInput;

  factory CopyWith_Input_RecordPersonSpiritualDaysInput.stub(TRes res) =
      _CopyWithStubImpl_Input_RecordPersonSpiritualDaysInput;

  TRes call({DateTime? confessionDay, DateTime? kodasDay});
}

class _CopyWithImpl_Input_RecordPersonSpiritualDaysInput<TRes>
    implements CopyWith_Input_RecordPersonSpiritualDaysInput<TRes> {
  _CopyWithImpl_Input_RecordPersonSpiritualDaysInput(
    this._instance,
    this._then,
  );

  final Input_RecordPersonSpiritualDaysInput _instance;

  final TRes Function(Input_RecordPersonSpiritualDaysInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? confessionDay = _undefined,
    Object? kodasDay = _undefined,
  }) => _then(
    Input_RecordPersonSpiritualDaysInput._({
      ..._instance._$data,
      if (confessionDay != _undefined && confessionDay != null)
        'confessionDay': (confessionDay as DateTime),
      if (kodasDay != _undefined && kodasDay != null)
        'kodasDay': (kodasDay as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Input_RecordPersonSpiritualDaysInput<TRes>
    implements CopyWith_Input_RecordPersonSpiritualDaysInput<TRes> {
  _CopyWithStubImpl_Input_RecordPersonSpiritualDaysInput(this._res);

  TRes _res;

  call({DateTime? confessionDay, DateTime? kodasDay}) => _res;
}

class Input_UpdatePersonInput {
  factory Input_UpdatePersonInput({
    String? name,
    DateTime? birthdate,
    bool? gender,
    bool? isShammas,
    String? shammasLevelId,
    String? schoolId,
    String? collegeId,
    String? churchId,
    String? fatherId,
    bool? isStudent,
    String? jobId,
    String? jobDescription,
    String? qualificationId,
    String? personTypeId,
    String? stateId,
    bool? isServant,
    String? notes,
    String? uid,
    String? familyId,
    String? storeId,
    int? studyYearId,
    int? color,
    String? workStatus,
    String? martialStatus,
    String? servingChurchId,
    String? serviceType,
    List<String>? services,
    List<String>? groups,
    List<String>? tags,
    List<String>? hobbies,
    List<Input_ContactInput>? contacts,
    List<Input_FamilyContactInput>? familyContacts,
    Input_AddressInput? address,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  }) => Input_UpdatePersonInput._({
    if (name != null) r'name': name,
    if (birthdate != null) r'birthdate': birthdate,
    if (gender != null) r'gender': gender,
    if (isShammas != null) r'isShammas': isShammas,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (schoolId != null) r'schoolId': schoolId,
    if (collegeId != null) r'collegeId': collegeId,
    if (churchId != null) r'churchId': churchId,
    if (fatherId != null) r'fatherId': fatherId,
    if (isStudent != null) r'isStudent': isStudent,
    if (jobId != null) r'jobId': jobId,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (stateId != null) r'stateId': stateId,
    if (isServant != null) r'isServant': isServant,
    if (notes != null) r'notes': notes,
    if (uid != null) r'uid': uid,
    if (familyId != null) r'familyId': familyId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (color != null) r'color': color,
    if (workStatus != null) r'workStatus': workStatus,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (serviceType != null) r'serviceType': serviceType,
    if (services != null) r'services': services,
    if (groups != null) r'groups': groups,
    if (tags != null) r'tags': tags,
    if (hobbies != null) r'hobbies': hobbies,
    if (contacts != null) r'contacts': contacts,
    if (familyContacts != null) r'familyContacts': familyContacts,
    if (address != null) r'address': address,
    if (lastConfession != null) r'lastConfession': lastConfession,
    if (lastKodas != null) r'lastKodas': lastKodas,
    if (lastCall != null) r'lastCall': lastCall,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_UpdatePersonInput._(this._$data);

  factory Input_UpdatePersonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateFromString(l$birthdate);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = (l$isShammas as bool?);
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = (l$shammasLevelId as String?);
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = (l$schoolId as String?);
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = (l$collegeId as String?);
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = (l$churchId as String?);
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = (l$fatherId as String?);
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = (l$isStudent as bool?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = (l$jobId as String?);
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = (l$qualificationId as String?);
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = (l$personTypeId as String?);
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = (l$stateId as String?);
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = (l$isServant as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = (l$uid as String?);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = (l$familyId as String?);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = (l$storeId as String?);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = (l$workStatus as String?);
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = (l$martialStatus as String?);
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = (l$servingChurchId as String?);
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = (l$serviceType as String?);
    }
    if (data.containsKey('services')) {
      final l$services = data['services'];
      result$data['services'] = (l$services as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = (l$groups as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = (l$tags as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('hobbies')) {
      final l$hobbies = data['hobbies'];
      result$data['hobbies'] = (l$hobbies as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = (l$contacts as List<dynamic>?)
          ?.map((e) => Input_ContactInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('familyContacts')) {
      final l$familyContacts = data['familyContacts'];
      result$data['familyContacts'] = (l$familyContacts as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyContactInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressInput.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('lastConfession')) {
      final l$lastConfession = data['lastConfession'];
      result$data['lastConfession'] = l$lastConfession == null
          ? null
          : dateFromString(l$lastConfession);
    }
    if (data.containsKey('lastKodas')) {
      final l$lastKodas = data['lastKodas'];
      result$data['lastKodas'] = l$lastKodas == null
          ? null
          : dateFromString(l$lastKodas);
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] = l$lastCall == null
          ? null
          : tstzFromString(l$lastCall);
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_UpdatePersonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  DateTime? get birthdate => (_$data['birthdate'] as DateTime?);

  bool? get gender => (_$data['gender'] as bool?);

  bool? get isShammas => (_$data['isShammas'] as bool?);

  String? get shammasLevelId => (_$data['shammasLevelId'] as String?);

  String? get schoolId => (_$data['schoolId'] as String?);

  String? get collegeId => (_$data['collegeId'] as String?);

  String? get churchId => (_$data['churchId'] as String?);

  String? get fatherId => (_$data['fatherId'] as String?);

  bool? get isStudent => (_$data['isStudent'] as bool?);

  String? get jobId => (_$data['jobId'] as String?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  String? get qualificationId => (_$data['qualificationId'] as String?);

  String? get personTypeId => (_$data['personTypeId'] as String?);

  String? get stateId => (_$data['stateId'] as String?);

  bool? get isServant => (_$data['isServant'] as bool?);

  String? get notes => (_$data['notes'] as String?);

  String? get uid => (_$data['uid'] as String?);

  String? get familyId => (_$data['familyId'] as String?);

  String? get storeId => (_$data['storeId'] as String?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  int? get color => (_$data['color'] as int?);

  String? get workStatus => (_$data['workStatus'] as String?);

  String? get martialStatus => (_$data['martialStatus'] as String?);

  String? get servingChurchId => (_$data['servingChurchId'] as String?);

  String? get serviceType => (_$data['serviceType'] as String?);

  List<String>? get services => (_$data['services'] as List<String>?);

  List<String>? get groups => (_$data['groups'] as List<String>?);

  List<String>? get tags => (_$data['tags'] as List<String>?);

  List<String>? get hobbies => (_$data['hobbies'] as List<String>?);

  List<Input_ContactInput>? get contacts =>
      (_$data['contacts'] as List<Input_ContactInput>?);

  List<Input_FamilyContactInput>? get familyContacts =>
      (_$data['familyContacts'] as List<Input_FamilyContactInput>?);

  Input_AddressInput? get address => (_$data['address'] as Input_AddressInput?);

  DateTime? get lastConfession => (_$data['lastConfession'] as DateTime?);

  DateTime? get lastKodas => (_$data['lastKodas'] as DateTime?);

  DateTime? get lastCall => (_$data['lastCall'] as DateTime?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateToString(l$birthdate);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas;
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId;
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId;
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId;
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId;
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId;
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId;
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId;
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId;
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId;
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid;
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId;
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId;
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus;
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus;
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId;
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType;
    }
    if (_$data.containsKey('services')) {
      final l$services = services;
      result$data['services'] = l$services?.map((e) => e).toList();
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.map((e) => e).toList();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    if (_$data.containsKey('hobbies')) {
      final l$hobbies = hobbies;
      result$data['hobbies'] = l$hobbies?.map((e) => e).toList();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('familyContacts')) {
      final l$familyContacts = familyContacts;
      result$data['familyContacts'] = l$familyContacts
          ?.map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('lastConfession')) {
      final l$lastConfession = lastConfession;
      result$data['lastConfession'] = l$lastConfession == null
          ? null
          : dateToString(l$lastConfession);
    }
    if (_$data.containsKey('lastKodas')) {
      final l$lastKodas = lastKodas;
      result$data['lastKodas'] = l$lastKodas == null
          ? null
          : dateToString(l$lastKodas);
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] = l$lastCall == null
          ? null
          : tstzToString(l$lastCall);
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_UpdatePersonInput<Input_UpdatePersonInput> get copyWith =>
      CopyWith_Input_UpdatePersonInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdatePersonInput || runtimeType != other.runtimeType) {
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
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
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
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (_$data.containsKey('isShammas') !=
        other._$data.containsKey('isShammas')) {
      return false;
    }
    if (l$isShammas != lOther$isShammas) {
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
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
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
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
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
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
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
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (_$data.containsKey('services') !=
        other._$data.containsKey('services')) {
      return false;
    }
    if (l$services != null && lOther$services != null) {
      if (l$services.length != lOther$services.length) {
        return false;
      }
      for (int i = 0; i < l$services.length; i++) {
        final l$services$entry = l$services[i];
        final lOther$services$entry = lOther$services[i];
        if (l$services$entry != lOther$services$entry) {
          return false;
        }
      }
    } else if (l$services != lOther$services) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != null && lOther$groups != null) {
      if (l$groups.length != lOther$groups.length) {
        return false;
      }
      for (int i = 0; i < l$groups.length; i++) {
        final l$groups$entry = l$groups[i];
        final lOther$groups$entry = lOther$groups[i];
        if (l$groups$entry != lOther$groups$entry) {
          return false;
        }
      }
    } else if (l$groups != lOther$groups) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (_$data.containsKey('hobbies') != other._$data.containsKey('hobbies')) {
      return false;
    }
    if (l$hobbies != null && lOther$hobbies != null) {
      if (l$hobbies.length != lOther$hobbies.length) {
        return false;
      }
      for (int i = 0; i < l$hobbies.length; i++) {
        final l$hobbies$entry = l$hobbies[i];
        final lOther$hobbies$entry = lOther$hobbies[i];
        if (l$hobbies$entry != lOther$hobbies$entry) {
          return false;
        }
      }
    } else if (l$hobbies != lOther$hobbies) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != null && lOther$contacts != null) {
      if (l$contacts.length != lOther$contacts.length) {
        return false;
      }
      for (int i = 0; i < l$contacts.length; i++) {
        final l$contacts$entry = l$contacts[i];
        final lOther$contacts$entry = lOther$contacts[i];
        if (l$contacts$entry != lOther$contacts$entry) {
          return false;
        }
      }
    } else if (l$contacts != lOther$contacts) {
      return false;
    }
    final l$familyContacts = familyContacts;
    final lOther$familyContacts = other.familyContacts;
    if (_$data.containsKey('familyContacts') !=
        other._$data.containsKey('familyContacts')) {
      return false;
    }
    if (l$familyContacts != null && lOther$familyContacts != null) {
      if (l$familyContacts.length != lOther$familyContacts.length) {
        return false;
      }
      for (int i = 0; i < l$familyContacts.length; i++) {
        final l$familyContacts$entry = l$familyContacts[i];
        final lOther$familyContacts$entry = lOther$familyContacts[i];
        if (l$familyContacts$entry != lOther$familyContacts$entry) {
          return false;
        }
      }
    } else if (l$familyContacts != lOther$familyContacts) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (_$data.containsKey('lastConfession') !=
        other._$data.containsKey('lastConfession')) {
      return false;
    }
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (_$data.containsKey('lastKodas') !=
        other._$data.containsKey('lastKodas')) {
      return false;
    }
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (_$data.containsKey('lastCall') !=
        other._$data.containsKey('lastCall')) {
      return false;
    }
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$birthdate = birthdate;
    final l$gender = gender;
    final l$isShammas = isShammas;
    final l$shammasLevelId = shammasLevelId;
    final l$schoolId = schoolId;
    final l$collegeId = collegeId;
    final l$churchId = churchId;
    final l$fatherId = fatherId;
    final l$isStudent = isStudent;
    final l$jobId = jobId;
    final l$jobDescription = jobDescription;
    final l$qualificationId = qualificationId;
    final l$personTypeId = personTypeId;
    final l$stateId = stateId;
    final l$isServant = isServant;
    final l$notes = notes;
    final l$uid = uid;
    final l$familyId = familyId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$color = color;
    final l$workStatus = workStatus;
    final l$martialStatus = martialStatus;
    final l$servingChurchId = servingChurchId;
    final l$serviceType = serviceType;
    final l$services = services;
    final l$groups = groups;
    final l$tags = tags;
    final l$hobbies = hobbies;
    final l$contacts = contacts;
    final l$familyContacts = familyContacts;
    final l$address = address;
    final l$lastConfession = lastConfession;
    final l$lastKodas = lastKodas;
    final l$lastCall = lastCall;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('services')
          ? l$services == null
                ? null
                : Object.hashAll(l$services.map((v) => v))
          : const {},
      _$data.containsKey('groups')
          ? l$groups == null
                ? null
                : Object.hashAll(l$groups.map((v) => v))
          : const {},
      _$data.containsKey('tags')
          ? l$tags == null
                ? null
                : Object.hashAll(l$tags.map((v) => v))
          : const {},
      _$data.containsKey('hobbies')
          ? l$hobbies == null
                ? null
                : Object.hashAll(l$hobbies.map((v) => v))
          : const {},
      _$data.containsKey('contacts')
          ? l$contacts == null
                ? null
                : Object.hashAll(l$contacts.map((v) => v))
          : const {},
      _$data.containsKey('familyContacts')
          ? l$familyContacts == null
                ? null
                : Object.hashAll(l$familyContacts.map((v) => v))
          : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdatePersonInput<TRes> {
  factory CopyWith_Input_UpdatePersonInput(
    Input_UpdatePersonInput instance,
    TRes Function(Input_UpdatePersonInput) then,
  ) = _CopyWithImpl_Input_UpdatePersonInput;

  factory CopyWith_Input_UpdatePersonInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdatePersonInput;

  TRes call({
    String? name,
    DateTime? birthdate,
    bool? gender,
    bool? isShammas,
    String? shammasLevelId,
    String? schoolId,
    String? collegeId,
    String? churchId,
    String? fatherId,
    bool? isStudent,
    String? jobId,
    String? jobDescription,
    String? qualificationId,
    String? personTypeId,
    String? stateId,
    bool? isServant,
    String? notes,
    String? uid,
    String? familyId,
    String? storeId,
    int? studyYearId,
    int? color,
    String? workStatus,
    String? martialStatus,
    String? servingChurchId,
    String? serviceType,
    List<String>? services,
    List<String>? groups,
    List<String>? tags,
    List<String>? hobbies,
    List<Input_ContactInput>? contacts,
    List<Input_FamilyContactInput>? familyContacts,
    Input_AddressInput? address,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  });
  TRes contacts(
    Iterable<Input_ContactInput>? Function(
      Iterable<CopyWith_Input_ContactInput<Input_ContactInput>>?,
    )
    _fn,
  );
  TRes familyContacts(
    Iterable<Input_FamilyContactInput>? Function(
      Iterable<CopyWith_Input_FamilyContactInput<Input_FamilyContactInput>>?,
    )
    _fn,
  );
  CopyWith_Input_AddressInput<TRes> get address;
}

class _CopyWithImpl_Input_UpdatePersonInput<TRes>
    implements CopyWith_Input_UpdatePersonInput<TRes> {
  _CopyWithImpl_Input_UpdatePersonInput(this._instance, this._then);

  final Input_UpdatePersonInput _instance;

  final TRes Function(Input_UpdatePersonInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? birthdate = _undefined,
    Object? gender = _undefined,
    Object? isShammas = _undefined,
    Object? shammasLevelId = _undefined,
    Object? schoolId = _undefined,
    Object? collegeId = _undefined,
    Object? churchId = _undefined,
    Object? fatherId = _undefined,
    Object? isStudent = _undefined,
    Object? jobId = _undefined,
    Object? jobDescription = _undefined,
    Object? qualificationId = _undefined,
    Object? personTypeId = _undefined,
    Object? stateId = _undefined,
    Object? isServant = _undefined,
    Object? notes = _undefined,
    Object? uid = _undefined,
    Object? familyId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? color = _undefined,
    Object? workStatus = _undefined,
    Object? martialStatus = _undefined,
    Object? servingChurchId = _undefined,
    Object? serviceType = _undefined,
    Object? services = _undefined,
    Object? groups = _undefined,
    Object? tags = _undefined,
    Object? hobbies = _undefined,
    Object? contacts = _undefined,
    Object? familyContacts = _undefined,
    Object? address = _undefined,
    Object? lastConfession = _undefined,
    Object? lastKodas = _undefined,
    Object? lastCall = _undefined,
    Object? lastVisit = _undefined,
  }) => _then(
    Input_UpdatePersonInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (birthdate != _undefined) 'birthdate': (birthdate as DateTime?),
      if (gender != _undefined) 'gender': (gender as bool?),
      if (isShammas != _undefined) 'isShammas': (isShammas as bool?),
      if (shammasLevelId != _undefined)
        'shammasLevelId': (shammasLevelId as String?),
      if (schoolId != _undefined) 'schoolId': (schoolId as String?),
      if (collegeId != _undefined) 'collegeId': (collegeId as String?),
      if (churchId != _undefined) 'churchId': (churchId as String?),
      if (fatherId != _undefined) 'fatherId': (fatherId as String?),
      if (isStudent != _undefined) 'isStudent': (isStudent as bool?),
      if (jobId != _undefined) 'jobId': (jobId as String?),
      if (jobDescription != _undefined)
        'jobDescription': (jobDescription as String?),
      if (qualificationId != _undefined)
        'qualificationId': (qualificationId as String?),
      if (personTypeId != _undefined) 'personTypeId': (personTypeId as String?),
      if (stateId != _undefined) 'stateId': (stateId as String?),
      if (isServant != _undefined) 'isServant': (isServant as bool?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (uid != _undefined) 'uid': (uid as String?),
      if (familyId != _undefined) 'familyId': (familyId as String?),
      if (storeId != _undefined) 'storeId': (storeId as String?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      if (color != _undefined) 'color': (color as int?),
      if (workStatus != _undefined) 'workStatus': (workStatus as String?),
      if (martialStatus != _undefined)
        'martialStatus': (martialStatus as String?),
      if (servingChurchId != _undefined)
        'servingChurchId': (servingChurchId as String?),
      if (serviceType != _undefined) 'serviceType': (serviceType as String?),
      if (services != _undefined) 'services': (services as List<String>?),
      if (groups != _undefined) 'groups': (groups as List<String>?),
      if (tags != _undefined) 'tags': (tags as List<String>?),
      if (hobbies != _undefined) 'hobbies': (hobbies as List<String>?),
      if (contacts != _undefined)
        'contacts': (contacts as List<Input_ContactInput>?),
      if (familyContacts != _undefined)
        'familyContacts': (familyContacts as List<Input_FamilyContactInput>?),
      if (address != _undefined) 'address': (address as Input_AddressInput?),
      if (lastConfession != _undefined)
        'lastConfession': (lastConfession as DateTime?),
      if (lastKodas != _undefined) 'lastKodas': (lastKodas as DateTime?),
      if (lastCall != _undefined) 'lastCall': (lastCall as DateTime?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
    }),
  );

  TRes contacts(
    Iterable<Input_ContactInput>? Function(
      Iterable<CopyWith_Input_ContactInput<Input_ContactInput>>?,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts?.map((e) => CopyWith_Input_ContactInput(e, (i) => i)),
    )?.toList(),
  );

  TRes familyContacts(
    Iterable<Input_FamilyContactInput>? Function(
      Iterable<CopyWith_Input_FamilyContactInput<Input_FamilyContactInput>>?,
    )
    _fn,
  ) => call(
    familyContacts: _fn(
      _instance.familyContacts?.map(
        (e) => CopyWith_Input_FamilyContactInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AddressInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressInput.stub(_then(_instance))
        : CopyWith_Input_AddressInput(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl_Input_UpdatePersonInput<TRes>
    implements CopyWith_Input_UpdatePersonInput<TRes> {
  _CopyWithStubImpl_Input_UpdatePersonInput(this._res);

  TRes _res;

  call({
    String? name,
    DateTime? birthdate,
    bool? gender,
    bool? isShammas,
    String? shammasLevelId,
    String? schoolId,
    String? collegeId,
    String? churchId,
    String? fatherId,
    bool? isStudent,
    String? jobId,
    String? jobDescription,
    String? qualificationId,
    String? personTypeId,
    String? stateId,
    bool? isServant,
    String? notes,
    String? uid,
    String? familyId,
    String? storeId,
    int? studyYearId,
    int? color,
    String? workStatus,
    String? martialStatus,
    String? servingChurchId,
    String? serviceType,
    List<String>? services,
    List<String>? groups,
    List<String>? tags,
    List<String>? hobbies,
    List<Input_ContactInput>? contacts,
    List<Input_FamilyContactInput>? familyContacts,
    Input_AddressInput? address,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  }) => _res;

  contacts(_fn) => _res;

  familyContacts(_fn) => _res;

  CopyWith_Input_AddressInput<TRes> get address =>
      CopyWith_Input_AddressInput.stub(_res);
}

class Input_CreatePersonInput {
  factory Input_CreatePersonInput({
    required String name,
    DateTime? birthdate,
    bool? gender,
    bool? isShammas,
    String? shammasLevelId,
    String? schoolId,
    String? collegeId,
    String? churchId,
    String? fatherId,
    bool? isStudent,
    String? jobId,
    String? jobDescription,
    String? qualificationId,
    String? personTypeId,
    String? stateId,
    bool? isServant,
    String? notes,
    String? uid,
    String? familyId,
    String? storeId,
    int? studyYearId,
    int? color,
    String? workStatus,
    String? martialStatus,
    String? servingChurchId,
    String? serviceType,
    List<String>? services,
    List<String>? groups,
    List<String>? tags,
    List<String>? hobbies,
    List<Input_ContactInput>? contacts,
    List<Input_FamilyContactInput>? familyContacts,
    Input_AddressInput? address,
    String? newFamilyName,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  }) => Input_CreatePersonInput._({
    r'name': name,
    if (birthdate != null) r'birthdate': birthdate,
    if (gender != null) r'gender': gender,
    if (isShammas != null) r'isShammas': isShammas,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (schoolId != null) r'schoolId': schoolId,
    if (collegeId != null) r'collegeId': collegeId,
    if (churchId != null) r'churchId': churchId,
    if (fatherId != null) r'fatherId': fatherId,
    if (isStudent != null) r'isStudent': isStudent,
    if (jobId != null) r'jobId': jobId,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (stateId != null) r'stateId': stateId,
    if (isServant != null) r'isServant': isServant,
    if (notes != null) r'notes': notes,
    if (uid != null) r'uid': uid,
    if (familyId != null) r'familyId': familyId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (color != null) r'color': color,
    if (workStatus != null) r'workStatus': workStatus,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (serviceType != null) r'serviceType': serviceType,
    if (services != null) r'services': services,
    if (groups != null) r'groups': groups,
    if (tags != null) r'tags': tags,
    if (hobbies != null) r'hobbies': hobbies,
    if (contacts != null) r'contacts': contacts,
    if (familyContacts != null) r'familyContacts': familyContacts,
    if (address != null) r'address': address,
    if (newFamilyName != null) r'newFamilyName': newFamilyName,
    if (lastConfession != null) r'lastConfession': lastConfession,
    if (lastKodas != null) r'lastKodas': lastKodas,
    if (lastCall != null) r'lastCall': lastCall,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_CreatePersonInput._(this._$data);

  factory Input_CreatePersonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateFromString(l$birthdate);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = (l$isShammas as bool?);
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = (l$shammasLevelId as String?);
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = (l$schoolId as String?);
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = (l$collegeId as String?);
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = (l$churchId as String?);
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = (l$fatherId as String?);
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = (l$isStudent as bool?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = (l$jobId as String?);
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = (l$qualificationId as String?);
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = (l$personTypeId as String?);
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = (l$stateId as String?);
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = (l$isServant as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = (l$uid as String?);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = (l$familyId as String?);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = (l$storeId as String?);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = (l$workStatus as String?);
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = (l$martialStatus as String?);
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = (l$servingChurchId as String?);
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = (l$serviceType as String?);
    }
    if (data.containsKey('services')) {
      final l$services = data['services'];
      result$data['services'] = (l$services as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = (l$groups as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] = (l$tags as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('hobbies')) {
      final l$hobbies = data['hobbies'];
      result$data['hobbies'] = (l$hobbies as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = (l$contacts as List<dynamic>?)
          ?.map((e) => Input_ContactInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('familyContacts')) {
      final l$familyContacts = data['familyContacts'];
      result$data['familyContacts'] = (l$familyContacts as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyContactInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressInput.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('newFamilyName')) {
      final l$newFamilyName = data['newFamilyName'];
      result$data['newFamilyName'] = (l$newFamilyName as String?);
    }
    if (data.containsKey('lastConfession')) {
      final l$lastConfession = data['lastConfession'];
      result$data['lastConfession'] = l$lastConfession == null
          ? null
          : dateFromString(l$lastConfession);
    }
    if (data.containsKey('lastKodas')) {
      final l$lastKodas = data['lastKodas'];
      result$data['lastKodas'] = l$lastKodas == null
          ? null
          : dateFromString(l$lastKodas);
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] = l$lastCall == null
          ? null
          : tstzFromString(l$lastCall);
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_CreatePersonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  DateTime? get birthdate => (_$data['birthdate'] as DateTime?);

  bool? get gender => (_$data['gender'] as bool?);

  bool? get isShammas => (_$data['isShammas'] as bool?);

  String? get shammasLevelId => (_$data['shammasLevelId'] as String?);

  String? get schoolId => (_$data['schoolId'] as String?);

  String? get collegeId => (_$data['collegeId'] as String?);

  String? get churchId => (_$data['churchId'] as String?);

  String? get fatherId => (_$data['fatherId'] as String?);

  bool? get isStudent => (_$data['isStudent'] as bool?);

  String? get jobId => (_$data['jobId'] as String?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  String? get qualificationId => (_$data['qualificationId'] as String?);

  String? get personTypeId => (_$data['personTypeId'] as String?);

  String? get stateId => (_$data['stateId'] as String?);

  bool? get isServant => (_$data['isServant'] as bool?);

  String? get notes => (_$data['notes'] as String?);

  String? get uid => (_$data['uid'] as String?);

  String? get familyId => (_$data['familyId'] as String?);

  String? get storeId => (_$data['storeId'] as String?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  int? get color => (_$data['color'] as int?);

  String? get workStatus => (_$data['workStatus'] as String?);

  String? get martialStatus => (_$data['martialStatus'] as String?);

  String? get servingChurchId => (_$data['servingChurchId'] as String?);

  String? get serviceType => (_$data['serviceType'] as String?);

  List<String>? get services => (_$data['services'] as List<String>?);

  List<String>? get groups => (_$data['groups'] as List<String>?);

  List<String>? get tags => (_$data['tags'] as List<String>?);

  List<String>? get hobbies => (_$data['hobbies'] as List<String>?);

  List<Input_ContactInput>? get contacts =>
      (_$data['contacts'] as List<Input_ContactInput>?);

  List<Input_FamilyContactInput>? get familyContacts =>
      (_$data['familyContacts'] as List<Input_FamilyContactInput>?);

  Input_AddressInput? get address => (_$data['address'] as Input_AddressInput?);

  String? get newFamilyName => (_$data['newFamilyName'] as String?);

  DateTime? get lastConfession => (_$data['lastConfession'] as DateTime?);

  DateTime? get lastKodas => (_$data['lastKodas'] as DateTime?);

  DateTime? get lastCall => (_$data['lastCall'] as DateTime?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateToString(l$birthdate);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas;
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId;
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId;
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId;
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId;
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId;
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId;
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId;
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId;
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId;
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid;
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId;
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId;
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus;
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus;
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId;
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType;
    }
    if (_$data.containsKey('services')) {
      final l$services = services;
      result$data['services'] = l$services?.map((e) => e).toList();
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.map((e) => e).toList();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    if (_$data.containsKey('hobbies')) {
      final l$hobbies = hobbies;
      result$data['hobbies'] = l$hobbies?.map((e) => e).toList();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('familyContacts')) {
      final l$familyContacts = familyContacts;
      result$data['familyContacts'] = l$familyContacts
          ?.map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('newFamilyName')) {
      final l$newFamilyName = newFamilyName;
      result$data['newFamilyName'] = l$newFamilyName;
    }
    if (_$data.containsKey('lastConfession')) {
      final l$lastConfession = lastConfession;
      result$data['lastConfession'] = l$lastConfession == null
          ? null
          : dateToString(l$lastConfession);
    }
    if (_$data.containsKey('lastKodas')) {
      final l$lastKodas = lastKodas;
      result$data['lastKodas'] = l$lastKodas == null
          ? null
          : dateToString(l$lastKodas);
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] = l$lastCall == null
          ? null
          : tstzToString(l$lastCall);
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_CreatePersonInput<Input_CreatePersonInput> get copyWith =>
      CopyWith_Input_CreatePersonInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreatePersonInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
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
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
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
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
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
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
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
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
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
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
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
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (_$data.containsKey('services') !=
        other._$data.containsKey('services')) {
      return false;
    }
    if (l$services != null && lOther$services != null) {
      if (l$services.length != lOther$services.length) {
        return false;
      }
      for (int i = 0; i < l$services.length; i++) {
        final l$services$entry = l$services[i];
        final lOther$services$entry = lOther$services[i];
        if (l$services$entry != lOther$services$entry) {
          return false;
        }
      }
    } else if (l$services != lOther$services) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != null && lOther$groups != null) {
      if (l$groups.length != lOther$groups.length) {
        return false;
      }
      for (int i = 0; i < l$groups.length; i++) {
        final l$groups$entry = l$groups[i];
        final lOther$groups$entry = lOther$groups[i];
        if (l$groups$entry != lOther$groups$entry) {
          return false;
        }
      }
    } else if (l$groups != lOther$groups) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (_$data.containsKey('hobbies') != other._$data.containsKey('hobbies')) {
      return false;
    }
    if (l$hobbies != null && lOther$hobbies != null) {
      if (l$hobbies.length != lOther$hobbies.length) {
        return false;
      }
      for (int i = 0; i < l$hobbies.length; i++) {
        final l$hobbies$entry = l$hobbies[i];
        final lOther$hobbies$entry = lOther$hobbies[i];
        if (l$hobbies$entry != lOther$hobbies$entry) {
          return false;
        }
      }
    } else if (l$hobbies != lOther$hobbies) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != null && lOther$contacts != null) {
      if (l$contacts.length != lOther$contacts.length) {
        return false;
      }
      for (int i = 0; i < l$contacts.length; i++) {
        final l$contacts$entry = l$contacts[i];
        final lOther$contacts$entry = lOther$contacts[i];
        if (l$contacts$entry != lOther$contacts$entry) {
          return false;
        }
      }
    } else if (l$contacts != lOther$contacts) {
      return false;
    }
    final l$familyContacts = familyContacts;
    final lOther$familyContacts = other.familyContacts;
    if (_$data.containsKey('familyContacts') !=
        other._$data.containsKey('familyContacts')) {
      return false;
    }
    if (l$familyContacts != null && lOther$familyContacts != null) {
      if (l$familyContacts.length != lOther$familyContacts.length) {
        return false;
      }
      for (int i = 0; i < l$familyContacts.length; i++) {
        final l$familyContacts$entry = l$familyContacts[i];
        final lOther$familyContacts$entry = lOther$familyContacts[i];
        if (l$familyContacts$entry != lOther$familyContacts$entry) {
          return false;
        }
      }
    } else if (l$familyContacts != lOther$familyContacts) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$newFamilyName = newFamilyName;
    final lOther$newFamilyName = other.newFamilyName;
    if (_$data.containsKey('newFamilyName') !=
        other._$data.containsKey('newFamilyName')) {
      return false;
    }
    if (l$newFamilyName != lOther$newFamilyName) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (_$data.containsKey('lastConfession') !=
        other._$data.containsKey('lastConfession')) {
      return false;
    }
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (_$data.containsKey('lastKodas') !=
        other._$data.containsKey('lastKodas')) {
      return false;
    }
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (_$data.containsKey('lastCall') !=
        other._$data.containsKey('lastCall')) {
      return false;
    }
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$birthdate = birthdate;
    final l$gender = gender;
    final l$isShammas = isShammas;
    final l$shammasLevelId = shammasLevelId;
    final l$schoolId = schoolId;
    final l$collegeId = collegeId;
    final l$churchId = churchId;
    final l$fatherId = fatherId;
    final l$isStudent = isStudent;
    final l$jobId = jobId;
    final l$jobDescription = jobDescription;
    final l$qualificationId = qualificationId;
    final l$personTypeId = personTypeId;
    final l$stateId = stateId;
    final l$isServant = isServant;
    final l$notes = notes;
    final l$uid = uid;
    final l$familyId = familyId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$color = color;
    final l$workStatus = workStatus;
    final l$martialStatus = martialStatus;
    final l$servingChurchId = servingChurchId;
    final l$serviceType = serviceType;
    final l$services = services;
    final l$groups = groups;
    final l$tags = tags;
    final l$hobbies = hobbies;
    final l$contacts = contacts;
    final l$familyContacts = familyContacts;
    final l$address = address;
    final l$newFamilyName = newFamilyName;
    final l$lastConfession = lastConfession;
    final l$lastKodas = lastKodas;
    final l$lastCall = lastCall;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      l$name,
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('services')
          ? l$services == null
                ? null
                : Object.hashAll(l$services.map((v) => v))
          : const {},
      _$data.containsKey('groups')
          ? l$groups == null
                ? null
                : Object.hashAll(l$groups.map((v) => v))
          : const {},
      _$data.containsKey('tags')
          ? l$tags == null
                ? null
                : Object.hashAll(l$tags.map((v) => v))
          : const {},
      _$data.containsKey('hobbies')
          ? l$hobbies == null
                ? null
                : Object.hashAll(l$hobbies.map((v) => v))
          : const {},
      _$data.containsKey('contacts')
          ? l$contacts == null
                ? null
                : Object.hashAll(l$contacts.map((v) => v))
          : const {},
      _$data.containsKey('familyContacts')
          ? l$familyContacts == null
                ? null
                : Object.hashAll(l$familyContacts.map((v) => v))
          : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('newFamilyName') ? l$newFamilyName : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}
