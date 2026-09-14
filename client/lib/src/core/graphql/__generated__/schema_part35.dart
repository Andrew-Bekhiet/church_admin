// Part 35 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsStreamCursorInput(
    Input_HistoryMeetingsStreamCursorInput instance,
    TRes Function(Input_HistoryMeetingsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput;

  factory CopyWith_Input_HistoryMeetingsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput;

  TRes call({
    Input_HistoryMeetingsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStreamCursorInput _instance;

  final TRes Function(Input_HistoryMeetingsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryMeetingsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryMeetingsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryMeetingsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_HistoryMeetingsStreamCursorValueInput.stub(_res);
}

class Input_HistoryMeetingsStreamCursorValueInput {
  factory Input_HistoryMeetingsStreamCursorValueInput({
    String? audience,
    int? color,
    UuidValue? groupId,
    UuidValue? id,
    bool? isArchived,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => Input_HistoryMeetingsStreamCursorValueInput._({
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStreamCursorValueInput._(this._$data);

  factory Input_HistoryMeetingsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
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
    return Input_HistoryMeetingsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get audience => (_$data['audience'] as String?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  String? get name => (_$data['name'] as String?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
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

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<
    Input_HistoryMeetingsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
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
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (_$data.containsKey('isArchived') !=
        other._$data.containsKey('isArchived')) {
      return false;
    }
    if (l$isArchived != lOther$isArchived) {
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
    final l$audience = audience;
    final l$color = color;
    final l$groupId = groupId;
    final l$id = id;
    final l$isArchived = isArchived;
    final l$name = name;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsStreamCursorValueInput(
    Input_HistoryMeetingsStreamCursorValueInput instance,
    TRes Function(Input_HistoryMeetingsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput;

  factory CopyWith_Input_HistoryMeetingsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput;

  TRes call({
    String? audience,
    int? color,
    UuidValue? groupId,
    UuidValue? id,
    bool? isArchived,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryMeetingsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsStreamCursorValueInput._({
      ..._instance._$data,
      if (audience != _undefined) 'audience': (audience as String?),
      if (color != _undefined) 'color': (color as int?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (name != _undefined) 'name': (name as String?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? audience,
    int? color,
    UuidValue? groupId,
    UuidValue? id,
    bool? isArchived,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsSumOrderBy {
  factory Input_HistoryMeetingsSumOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsSumOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsSumOrderBy._(this._$data);

  factory Input_HistoryMeetingsSumOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_HistoryMeetingsSumOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsSumOrderBy<Input_HistoryMeetingsSumOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsSumOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsSumOrderBy(
    Input_HistoryMeetingsSumOrderBy instance,
    TRes Function(Input_HistoryMeetingsSumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsSumOrderBy;

  factory CopyWith_Input_HistoryMeetingsSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsSumOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsSumOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsUpdates {
  factory Input_HistoryMeetingsUpdates({
    Input_HistoryMeetingsIncInput? $_inc,
    Input_HistoryMeetingsSetInput? $_set,
    required Input_HistoryMeetingsBoolExp where,
  }) => Input_HistoryMeetingsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HistoryMeetingsUpdates._(this._$data);

  factory Input_HistoryMeetingsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_HistoryMeetingsIncInput.fromJson(
              (l$$_inc as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryMeetingsSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryMeetingsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_HistoryMeetingsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsIncInput? get $_inc =>
      (_$data['_inc'] as Input_HistoryMeetingsIncInput?);

  Input_HistoryMeetingsSetInput? get $_set =>
      (_$data['_set'] as Input_HistoryMeetingsSetInput?);

  Input_HistoryMeetingsBoolExp get where =>
      (_$data['where'] as Input_HistoryMeetingsBoolExp);

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

  CopyWith_Input_HistoryMeetingsUpdates<Input_HistoryMeetingsUpdates>
  get copyWith => CopyWith_Input_HistoryMeetingsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsUpdates ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HistoryMeetingsUpdates<TRes> {
  factory CopyWith_Input_HistoryMeetingsUpdates(
    Input_HistoryMeetingsUpdates instance,
    TRes Function(Input_HistoryMeetingsUpdates) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsUpdates;

  factory CopyWith_Input_HistoryMeetingsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsUpdates;

  TRes call({
    Input_HistoryMeetingsIncInput? $_inc,
    Input_HistoryMeetingsSetInput? $_set,
    Input_HistoryMeetingsBoolExp? where,
  });
  CopyWith_Input_HistoryMeetingsIncInput<TRes> get $_inc;
  CopyWith_Input_HistoryMeetingsSetInput<TRes> get $_set;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryMeetingsUpdates<TRes>
    implements CopyWith_Input_HistoryMeetingsUpdates<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsUpdates(this._instance, this._then);

  final Input_HistoryMeetingsUpdates _instance;

  final TRes Function(Input_HistoryMeetingsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryMeetingsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined)
        '_inc': ($_inc as Input_HistoryMeetingsIncInput?),
      if ($_set != _undefined)
        '_set': ($_set as Input_HistoryMeetingsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_HistoryMeetingsBoolExp),
    }),
  );

  CopyWith_Input_HistoryMeetingsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_HistoryMeetingsIncInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsIncInput(
            local$$_inc,
            (e) => call($_inc: e),
          );
  }

  CopyWith_Input_HistoryMeetingsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryMeetingsSetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryMeetingsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsUpdates<TRes>
    implements CopyWith_Input_HistoryMeetingsUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsIncInput? $_inc,
    Input_HistoryMeetingsSetInput? $_set,
    Input_HistoryMeetingsBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryMeetingsIncInput<TRes> get $_inc =>
      CopyWith_Input_HistoryMeetingsIncInput.stub(_res);

  CopyWith_Input_HistoryMeetingsSetInput<TRes> get $_set =>
      CopyWith_Input_HistoryMeetingsSetInput.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);
}

class Input_HistoryMeetingsVarPopOrderBy {
  factory Input_HistoryMeetingsVarPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsVarPopOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsVarPopOrderBy._(this._$data);

  factory Input_HistoryMeetingsVarPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HistoryMeetingsVarPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsVarPopOrderBy<
    Input_HistoryMeetingsVarPopOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsVarPopOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsVarPopOrderBy(
    Input_HistoryMeetingsVarPopOrderBy instance,
    TRes Function(Input_HistoryMeetingsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsVarPopOrderBy;

  factory CopyWith_Input_HistoryMeetingsVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsVarPopOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsVarPopOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsVarPopOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsVarSampOrderBy {
  factory Input_HistoryMeetingsVarSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsVarSampOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsVarSampOrderBy._(this._$data);

  factory Input_HistoryMeetingsVarSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HistoryMeetingsVarSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsVarSampOrderBy<
    Input_HistoryMeetingsVarSampOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsVarSampOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsVarSampOrderBy(
    Input_HistoryMeetingsVarSampOrderBy instance,
    TRes Function(Input_HistoryMeetingsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsVarSampOrderBy;

  factory CopyWith_Input_HistoryMeetingsVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsVarSampOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsVarSampOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsVarSampOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsVarianceOrderBy {
  factory Input_HistoryMeetingsVarianceOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsVarianceOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsVarianceOrderBy._(this._$data);

  factory Input_HistoryMeetingsVarianceOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HistoryMeetingsVarianceOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsVarianceOrderBy<
    Input_HistoryMeetingsVarianceOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsVarianceOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsVarianceOrderBy(
    Input_HistoryMeetingsVarianceOrderBy instance,
    TRes Function(Input_HistoryMeetingsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsVarianceOrderBy;

  factory CopyWith_Input_HistoryMeetingsVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsVarianceOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsVarianceOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryVisitHistoryAggregateBoolExp {
  factory Input_HistoryVisitHistoryAggregateBoolExp({
    Input_historyVisitHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyVisitHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyVisitHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryVisitHistoryAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_HistoryVisitHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryVisitHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyVisitHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryVisitHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyVisitHistoryAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and']
          as Input_historyVisitHistoryAggregateBoolExpBool_and?);

  Input_historyVisitHistoryAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or'] as Input_historyVisitHistoryAggregateBoolExpBool_or?);

  Input_historyVisitHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyVisitHistoryAggregateBoolExpCount?);

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

  CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<
    Input_HistoryVisitHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryVisitHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryAggregateBoolExp(
    Input_HistoryVisitHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryVisitHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryVisitHistoryAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateBoolExp;

  TRes call({
    Input_historyVisitHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyVisitHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyVisitHistoryAggregateBoolExpCount? count,
  });
  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes> get bool_and;
  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes> get bool_or;
  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryVisitHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and':
            (bool_and as Input_historyVisitHistoryAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or':
            (bool_or as Input_historyVisitHistoryAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count': (count as Input_historyVisitHistoryAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes>
  get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes> get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyVisitHistoryAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyVisitHistoryAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_historyVisitHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyVisitHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyVisitHistoryAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes>
  get bool_and =>
      CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and.stub(_res);

  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes> get bool_or =>
      CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or.stub(_res);

  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyVisitHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryVisitHistoryAggregateOrderBy {
  factory Input_HistoryVisitHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryVisitHistoryMaxOrderBy? max,
    Input_HistoryVisitHistoryMinOrderBy? min,
  }) => Input_HistoryVisitHistoryAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryVisitHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryVisitHistoryAggregateOrderBy.fromJson(
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
          : Input_HistoryVisitHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryVisitHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryVisitHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryVisitHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryVisitHistoryMaxOrderBy?);

  Input_HistoryVisitHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryVisitHistoryMinOrderBy?);

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

  CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<
    Input_HistoryVisitHistoryAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryVisitHistoryAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryAggregateOrderBy(
    Input_HistoryVisitHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryVisitHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryVisitHistoryAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryVisitHistoryMaxOrderBy? max,
    Input_HistoryVisitHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryVisitHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryVisitHistoryMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryVisitHistoryMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryVisitHistoryMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryVisitHistoryMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryVisitHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryVisitHistoryMaxOrderBy? max,
    Input_HistoryVisitHistoryMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryVisitHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryVisitHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryVisitHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryVisitHistoryMinOrderBy.stub(_res);
}

class Input_HistoryVisitHistoryArrRelInsertInput {
  factory Input_HistoryVisitHistoryArrRelInsertInput({
    required List<Input_HistoryVisitHistoryInsertInput> data,
    Input_HistoryVisitHistoryOnConflict? onConflict,
  }) => Input_HistoryVisitHistoryArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryVisitHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryVisitHistoryArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryVisitHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryVisitHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryVisitHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryVisitHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryVisitHistoryInsertInput>);

  Input_HistoryVisitHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryVisitHistoryOnConflict?);

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

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<
    Input_HistoryVisitHistoryArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryVisitHistoryArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryArrRelInsertInput(
    Input_HistoryVisitHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryVisitHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryVisitHistoryInsertInput>? data,
    Input_HistoryVisitHistoryOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_HistoryVisitHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryVisitHistoryInsertInput<
          Input_HistoryVisitHistoryInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryVisitHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryVisitHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryVisitHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryVisitHistoryArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_HistoryVisitHistoryInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HistoryVisitHistoryOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_HistoryVisitHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryVisitHistoryInsertInput<
          Input_HistoryVisitHistoryInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryVisitHistoryInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryVisitHistoryOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryVisitHistoryInsertInput>? data,
    Input_HistoryVisitHistoryOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryVisitHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryVisitHistoryOnConflict.stub(_res);
}

class Input_HistoryVisitHistoryBoolExp {
  factory Input_HistoryVisitHistoryBoolExp({
    List<Input_HistoryVisitHistoryBoolExp>? $_and,
    Input_HistoryVisitHistoryBoolExp? $_not,
    List<Input_HistoryVisitHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? isFatherVisit,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) => Input_HistoryVisitHistoryBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (isFatherVisit != null) r'isFatherVisit': isFatherVisit,
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
    if (visitId != null) r'visitId': visitId,
  });

  Input_HistoryVisitHistoryBoolExp._(this._$data);

  factory Input_HistoryVisitHistoryBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = data['isFatherVisit'];
      result$data['isFatherVisit'] = l$isFatherVisit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isFatherVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordId as Map<String, dynamic>),
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
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = l$table == null
          ? null
          : Input_NameComparisonExp.fromJson((l$table as Map<String, dynamic>));
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
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = l$visitId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$visitId as Map<String, dynamic>),
            );
    }
    return Input_HistoryVisitHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryVisitHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryVisitHistoryBoolExp>?);

  Input_HistoryVisitHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryVisitHistoryBoolExp?);

  List<Input_HistoryVisitHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryVisitHistoryBoolExp>?);

  Input_BooleanComparisonExp? get isFatherVisit =>
      (_$data['isFatherVisit'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get recordId =>
      (_$data['recordId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_NameComparisonExp? get table =>
      (_$data['table'] as Input_NameComparisonExp?);

  Input_TimestamptzComparisonExp? get time =>
      (_$data['time'] as Input_TimestamptzComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

  Input_UuidComparisonExp? get visitId =>
      (_$data['visitId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = isFatherVisit;
      result$data['isFatherVisit'] = l$isFatherVisit?.toJson();
    }
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId?.toJson();
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table?.toJson();
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryBoolExp<Input_HistoryVisitHistoryBoolExp>
  get copyWith => CopyWith_Input_HistoryVisitHistoryBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryBoolExp ||
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
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (_$data.containsKey('isFatherVisit') !=
        other._$data.containsKey('isFatherVisit')) {
      return false;
    }
    if (l$isFatherVisit != lOther$isFatherVisit) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
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
    final l$table = table;
    final lOther$table = other.table;
    if (_$data.containsKey('table') != other._$data.containsKey('table')) {
      return false;
    }
    if (l$table != lOther$table) {
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
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (_$data.containsKey('visitId') != other._$data.containsKey('visitId')) {
      return false;
    }
    if (l$visitId != lOther$visitId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$isFatherVisit = isFatherVisit;
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$table = table;
    final l$time = time;
    final l$user = user;
    final l$visitId = visitId;
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
      _$data.containsKey('isFatherVisit') ? l$isFatherVisit : const {},
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryVisitHistoryBoolExp(
    Input_HistoryVisitHistoryBoolExp instance,
    TRes Function(Input_HistoryVisitHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryVisitHistoryBoolExp;

  factory CopyWith_Input_HistoryVisitHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryVisitHistoryBoolExp;

  TRes call({
    List<Input_HistoryVisitHistoryBoolExp>? $_and,
    Input_HistoryVisitHistoryBoolExp? $_not,
    List<Input_HistoryVisitHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? isFatherVisit,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  });
  TRes $_and(
    Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryVisitHistoryBoolExp<
          Input_HistoryVisitHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryVisitHistoryBoolExp<
          Input_HistoryVisitHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_BooleanComparisonExp<TRes> get isFatherVisit;
  CopyWith_Input_UuidComparisonExp<TRes> get recordId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_NameComparisonExp<TRes> get table;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
  CopyWith_Input_UuidComparisonExp<TRes> get visitId;
}

class _CopyWithImpl_Input_HistoryVisitHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryVisitHistoryBoolExp(this._instance, this._then);

  final Input_HistoryVisitHistoryBoolExp _instance;

  final TRes Function(Input_HistoryVisitHistoryBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? isFatherVisit = _undefined,
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryVisitHistoryBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryVisitHistoryBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryVisitHistoryBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryVisitHistoryBoolExp>?),
      if (isFatherVisit != _undefined)
        'isFatherVisit': (isFatherVisit as Input_BooleanComparisonExp?),
      if (recordId != _undefined)
        'recordId': (recordId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (table != _undefined) 'table': (table as Input_NameComparisonExp?),
      if (time != _undefined) 'time': (time as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
      if (visitId != _undefined)
        'visitId': (visitId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryVisitHistoryBoolExp<
          Input_HistoryVisitHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryVisitHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryVisitHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryVisitHistoryBoolExp<
          Input_HistoryVisitHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryVisitHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_BooleanComparisonExp<TRes> get isFatherVisit {
    final local$isFatherVisit = _instance.isFatherVisit;
    return local$isFatherVisit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isFatherVisit,
            (e) => call(isFatherVisit: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get recordId {
    final local$recordId = _instance.recordId;
    return local$recordId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordId,
            (e) => call(recordId: e),
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

  CopyWith_Input_NameComparisonExp<TRes> get table {
    final local$table = _instance.table;
    return local$table == null
        ? CopyWith_Input_NameComparisonExp.stub(_then(_instance))
        : CopyWith_Input_NameComparisonExp(local$table, (e) => call(table: e));
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

  CopyWith_Input_UuidComparisonExp<TRes> get visitId {
    final local$visitId = _instance.visitId;
    return local$visitId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$visitId,
            (e) => call(visitId: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryVisitHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryVisitHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryVisitHistoryBoolExp>? $_and,
    Input_HistoryVisitHistoryBoolExp? $_not,
    List<Input_HistoryVisitHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? isFatherVisit,
    Input_UuidComparisonExp? recordId,
    Input_UuidComparisonExp? recordedBy,
    Input_NameComparisonExp? table,
    Input_TimestamptzComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
    Input_UuidComparisonExp? visitId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BooleanComparisonExp<TRes> get isFatherVisit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_NameComparisonExp<TRes> get table =>
      CopyWith_Input_NameComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get time =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get visitId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_HistoryVisitHistoryInsertInput {
  factory Input_HistoryVisitHistoryInsertInput({
    bool? isFatherVisit,
    UuidValue? recordId,
    String? table,
    DateTime? time,
    Input_AuthUsersDataObjRelInsertInput? user,
  }) => Input_HistoryVisitHistoryInsertInput._({
    if (isFatherVisit != null) r'isFatherVisit': isFatherVisit,
    if (recordId != null) r'recordId': recordId,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryVisitHistoryInsertInput._(this._$data);

  factory Input_HistoryVisitHistoryInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = data['isFatherVisit'];
      result$data['isFatherVisit'] = (l$isFatherVisit as bool?);
    }
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : stringToUuid(l$recordId);
    }
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = (l$table as String?);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryVisitHistoryInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isFatherVisit => (_$data['isFatherVisit'] as bool?);

  UuidValue? get recordId => (_$data['recordId'] as UuidValue?);

  String? get table => (_$data['table'] as String?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Input_AuthUsersDataObjRelInsertInput? get user =>
      (_$data['user'] as Input_AuthUsersDataObjRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = isFatherVisit;
      result$data['isFatherVisit'] = l$isFatherVisit;
    }
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId == null
          ? null
          : uuidToString(l$recordId);
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table;
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryVisitHistoryInsertInput<
    Input_HistoryVisitHistoryInsertInput
  >
  get copyWith => CopyWith_Input_HistoryVisitHistoryInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryVisitHistoryInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (_$data.containsKey('isFatherVisit') !=
        other._$data.containsKey('isFatherVisit')) {
      return false;
    }
    if (l$isFatherVisit != lOther$isFatherVisit) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
      return false;
    }
    final l$table = table;
    final lOther$table = other.table;
    if (_$data.containsKey('table') != other._$data.containsKey('table')) {
      return false;
    }
    if (l$table != lOther$table) {
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
    final l$isFatherVisit = isFatherVisit;
    final l$recordId = recordId;
    final l$table = table;
    final l$time = time;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('isFatherVisit') ? l$isFatherVisit : const {},
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}
