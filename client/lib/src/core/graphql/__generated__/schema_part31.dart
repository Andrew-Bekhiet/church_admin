// Part 31 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingsBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingsBoolExp(
    Input_HistoryMeetingsBoolExp instance,
    TRes Function(Input_HistoryMeetingsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsBoolExp;

  factory CopyWith_Input_HistoryMeetingsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsBoolExp;

  TRes call({
    List<Input_HistoryMeetingsBoolExp>? $_and,
    Input_HistoryMeetingsBoolExp? $_not,
    List<Input_HistoryMeetingsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_MeetingAudienceComparisonExp? audience,
    Input_BigintComparisonExp? color,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isArchived,
    Input_StringComparisonExp? name,
    Input_HistoryMeetingsPersonsBoolExp? persons,
    Input_HistoryMeetingsPersonsAggregateBoolExp? personsAggregate,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  });
  TRes $_and(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_MeetingAudienceComparisonExp<TRes> get audience;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_GroupsBoolExp<TRes> get group;
  CopyWith_Input_UuidComparisonExp<TRes> get groupId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isArchived;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get persons;
  CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
  get personsAggregate;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsBoolExp(this._instance, this._then);

  final Input_HistoryMeetingsBoolExp _instance;

  final TRes Function(Input_HistoryMeetingsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryMeetingsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_HistoryMeetingsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryMeetingsBoolExp>?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (audience != _undefined)
        'audience': (audience as Input_MeetingAudienceComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (group != _undefined) 'group': (group as Input_GroupsBoolExp?),
      if (groupId != _undefined)
        'groupId': (groupId as Input_UuidComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isArchived != _undefined)
        'isArchived': (isArchived as Input_BooleanComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined)
        'persons': (persons as Input_HistoryMeetingsPersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_HistoryMeetingsPersonsAggregateBoolExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Input_BooleanComparisonExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Input_IntComparisonExp?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryMeetingsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryMeetingsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_MeetingAudienceComparisonExp<TRes> get audience {
    final local$audience = _instance.audience;
    return local$audience == null
        ? CopyWith_Input_MeetingAudienceComparisonExp.stub(_then(_instance))
        : CopyWith_Input_MeetingAudienceComparisonExp(
            local$audience,
            (e) => call(audience: e),
          );
  }

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_GroupsBoolExp<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$group, (e) => call(group: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$groupId,
            (e) => call(groupId: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isArchived {
    final local$isArchived = _instance.isArchived;
    return local$isArchived == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isArchived,
            (e) => call(isArchived: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsBoolExp(
            local$persons,
            (e) => call(persons: e),
          );
  }

  CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
  get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingsBoolExp>? $_and,
    Input_HistoryMeetingsBoolExp? $_not,
    List<Input_HistoryMeetingsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_MeetingAudienceComparisonExp? audience,
    Input_BigintComparisonExp? color,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isArchived,
    Input_StringComparisonExp? name,
    Input_HistoryMeetingsPersonsBoolExp? persons,
    Input_HistoryMeetingsPersonsAggregateBoolExp? personsAggregate,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_MeetingAudienceComparisonExp<TRes> get audience =>
      CopyWith_Input_MeetingAudienceComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get group =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get groupId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isArchived =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get persons =>
      CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(_res);

  CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
  get personsAggregate =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_HistoryMeetingsIncInput {
  factory Input_HistoryMeetingsIncInput({int? color}) =>
      Input_HistoryMeetingsIncInput._({if (color != null) r'color': color});

  Input_HistoryMeetingsIncInput._(this._$data);

  factory Input_HistoryMeetingsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_HistoryMeetingsIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsIncInput<Input_HistoryMeetingsIncInput>
  get copyWith => CopyWith_Input_HistoryMeetingsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsIncInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsIncInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsIncInput(
    Input_HistoryMeetingsIncInput instance,
    TRes Function(Input_HistoryMeetingsIncInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsIncInput;

  factory CopyWith_Input_HistoryMeetingsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_HistoryMeetingsIncInput<TRes>
    implements CopyWith_Input_HistoryMeetingsIncInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsIncInput(this._instance, this._then);

  final Input_HistoryMeetingsIncInput _instance;

  final TRes Function(Input_HistoryMeetingsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_HistoryMeetingsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsIncInput<TRes>
    implements CopyWith_Input_HistoryMeetingsIncInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_HistoryMeetingsInsertInput {
  factory Input_HistoryMeetingsInsertInput({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    String? audience,
    int? color,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    bool? isArchived,
    String? name,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? studyYear,
  }) => Input_HistoryMeetingsInsertInput._({
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_HistoryMeetingsInsertInput._(this._$data);

  factory Input_HistoryMeetingsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsObjRelInsertInput.fromJson(
              (l$group as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
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
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  String? get audience => (_$data['audience'] as String?);

  int? get color => (_$data['color'] as int?);

  Input_GroupsObjRelInsertInput? get group =>
      (_$data['group'] as Input_GroupsObjRelInsertInput?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  String? get name => (_$data['name'] as String?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Input_StudyYearsObjRelInsertInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsObjRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
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
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsInsertInput<Input_HistoryMeetingsInsertInput>
  get copyWith => CopyWith_Input_HistoryMeetingsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsInsertInput ||
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
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceHistory = attendanceHistory;
    final l$audience = audience;
    final l$color = color;
    final l$group = group;
    final l$groupId = groupId;
    final l$isArchived = isArchived;
    final l$name = name;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsInsertInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsInsertInput(
    Input_HistoryMeetingsInsertInput instance,
    TRes Function(Input_HistoryMeetingsInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsInsertInput;

  factory CopyWith_Input_HistoryMeetingsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsInsertInput;

  TRes call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    String? audience,
    int? color,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    bool? isArchived,
    String? name,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? studyYear,
  });
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory;
  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingsInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsInsertInput(this._instance, this._then);

  final Input_HistoryMeetingsInsertInput _instance;

  final TRes Function(Input_HistoryMeetingsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistory = _undefined,
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsInsertInput._({
      ..._instance._$data,
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory
                as Input_HistoryAttendanceHistoryArrRelInsertInput?),
      if (audience != _undefined) 'audience': (audience as String?),
      if (color != _undefined) 'color': (color as int?),
      if (group != _undefined)
        'group': (group as Input_GroupsObjRelInsertInput?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (name != _undefined) 'name': (name as String?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsObjRelInsertInput?),
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

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group,
            (e) => call(group: e),
          );
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    String? audience,
    int? color,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    bool? isArchived,
    String? name,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? studyYear,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group =>
      CopyWith_Input_GroupsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);
}

class Input_HistoryMeetingsMaxOrderBy {
  factory Input_HistoryMeetingsMaxOrderBy({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsMaxOrderBy._({
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsMaxOrderBy._(this._$data);

  factory Input_HistoryMeetingsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_OrderBy((l$audience as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get audience => (_$data['audience'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_OrderBy(l$audience);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsMaxOrderBy<Input_HistoryMeetingsMaxOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsMaxOrderBy ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$name = name;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsMaxOrderBy(
    Input_HistoryMeetingsMaxOrderBy instance,
    TRes Function(Input_HistoryMeetingsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsMaxOrderBy;

  factory CopyWith_Input_HistoryMeetingsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsMaxOrderBy;

  TRes call({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsMaxOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsMaxOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsMaxOrderBy._({
      ..._instance._$data,
      if (audience != _undefined) 'audience': (audience as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsMinOrderBy {
  factory Input_HistoryMeetingsMinOrderBy({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsMinOrderBy._({
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsMinOrderBy._(this._$data);

  factory Input_HistoryMeetingsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_OrderBy((l$audience as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get audience => (_$data['audience'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_OrderBy(l$audience);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsMinOrderBy<Input_HistoryMeetingsMinOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsMinOrderBy ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$name = name;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsMinOrderBy(
    Input_HistoryMeetingsMinOrderBy instance,
    TRes Function(Input_HistoryMeetingsMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsMinOrderBy;

  factory CopyWith_Input_HistoryMeetingsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsMinOrderBy;

  TRes call({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsMinOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsMinOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsMinOrderBy._({
      ..._instance._$data,
      if (audience != _undefined) 'audience': (audience as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsObjRelInsertInput {
  factory Input_HistoryMeetingsObjRelInsertInput({
    required Input_HistoryMeetingsInsertInput data,
    Input_HistoryMeetingsOnConflict? onConflict,
  }) => Input_HistoryMeetingsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryMeetingsObjRelInsertInput._(this._$data);

  factory Input_HistoryMeetingsObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_HistoryMeetingsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryMeetingsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsInsertInput get data =>
      (_$data['data'] as Input_HistoryMeetingsInsertInput);

  Input_HistoryMeetingsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryMeetingsOnConflict?);

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

  CopyWith_Input_HistoryMeetingsObjRelInsertInput<
    Input_HistoryMeetingsObjRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsObjRelInsertInput ||
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

abstract class CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsObjRelInsertInput(
    Input_HistoryMeetingsObjRelInsertInput instance,
    TRes Function(Input_HistoryMeetingsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsObjRelInsertInput;

  factory CopyWith_Input_HistoryMeetingsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsObjRelInsertInput;

  TRes call({
    Input_HistoryMeetingsInsertInput? data,
    Input_HistoryMeetingsOnConflict? onConflict,
  });
  CopyWith_Input_HistoryMeetingsInsertInput<TRes> get data;
  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryMeetingsObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsObjRelInsertInput _instance;

  final TRes Function(Input_HistoryMeetingsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryMeetingsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_HistoryMeetingsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HistoryMeetingsOnConflict?),
        }),
      );

  CopyWith_Input_HistoryMeetingsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_HistoryMeetingsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryMeetingsOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsInsertInput? data,
    Input_HistoryMeetingsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_HistoryMeetingsInsertInput<TRes> get data =>
      CopyWith_Input_HistoryMeetingsInsertInput.stub(_res);

  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryMeetingsOnConflict.stub(_res);
}

class Input_HistoryMeetingsOnConflict {
  factory Input_HistoryMeetingsOnConflict({
    required Enum_HistoryMeetingsConstraint constraint,
    List<Enum_HistoryMeetingsUpdateColumn>? updateColumns,
    Input_HistoryMeetingsBoolExp? where,
  }) => Input_HistoryMeetingsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryMeetingsOnConflict._(this._$data);

  factory Input_HistoryMeetingsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryMeetingsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_HistoryMeetingsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryMeetingsConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryMeetingsConstraint);

  List<Enum_HistoryMeetingsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryMeetingsUpdateColumn>?);

  Input_HistoryMeetingsBoolExp? get where =>
      (_$data['where'] as Input_HistoryMeetingsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryMeetingsConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryMeetingsUpdateColumn>)
              .map((e) => toJson_Enum_HistoryMeetingsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsOnConflict<Input_HistoryMeetingsOnConflict>
  get copyWith => CopyWith_Input_HistoryMeetingsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsOnConflict ||
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

abstract class CopyWith_Input_HistoryMeetingsOnConflict<TRes> {
  factory CopyWith_Input_HistoryMeetingsOnConflict(
    Input_HistoryMeetingsOnConflict instance,
    TRes Function(Input_HistoryMeetingsOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsOnConflict;

  factory CopyWith_Input_HistoryMeetingsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsOnConflict;

  TRes call({
    Enum_HistoryMeetingsConstraint? constraint,
    List<Enum_HistoryMeetingsUpdateColumn>? updateColumns,
    Input_HistoryMeetingsBoolExp? where,
  });
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryMeetingsOnConflict<TRes>
    implements CopyWith_Input_HistoryMeetingsOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsOnConflict(this._instance, this._then);

  final Input_HistoryMeetingsOnConflict _instance;

  final TRes Function(Input_HistoryMeetingsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryMeetingsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryMeetingsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryMeetingsUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryMeetingsBoolExp?),
    }),
  );

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsOnConflict<TRes>
    implements CopyWith_Input_HistoryMeetingsOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryMeetingsConstraint? constraint,
    List<Enum_HistoryMeetingsUpdateColumn>? updateColumns,
    Input_HistoryMeetingsBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get where =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);
}

class Input_HistoryMeetingsOrderBy {
  factory Input_HistoryMeetingsOrderBy({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? isArchived,
    Enum_OrderBy? name,
    Input_HistoryMeetingsPersonsAggregateOrderBy? personsAggregate,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) => Input_HistoryMeetingsOrderBy._({
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_HistoryMeetingsOrderBy._(this._$data);

  factory Input_HistoryMeetingsOrderBy.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_OrderBy((l$audience as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsOrderBy.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = l$isArchived == null
          ? null
          : fromJson_Enum_OrderBy((l$isArchived as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_HistoryMeetingsPersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesOrderBy.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceGender as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get audience => (_$data['audience'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get isArchived => (_$data['isArchived'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_HistoryMeetingsPersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate']
          as Input_HistoryMeetingsPersonsAggregateOrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceGender => (_$data['serviceGender'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_OrderBy(l$audience);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived == null
          ? null
          : toJson_Enum_OrderBy(l$isArchived);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : toJson_Enum_OrderBy(l$serviceGender);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsOrderBy<Input_HistoryMeetingsOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsOrderBy ||
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
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$audience = audience;
    final l$color = color;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$isArchived = isArchived;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsOrderBy(
    Input_HistoryMeetingsOrderBy instance,
    TRes Function(Input_HistoryMeetingsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsOrderBy;

  factory CopyWith_Input_HistoryMeetingsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsOrderBy;

  TRes call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? isArchived,
    Enum_OrderBy? name,
    Input_HistoryMeetingsPersonsAggregateOrderBy? personsAggregate,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
  get personsAggregate;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistoryAggregate = _undefined,
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsOrderBy._({
      ..._instance._$data,
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (audience != _undefined) 'audience': (audience as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
      if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (isArchived != _undefined) 'isArchived': (isArchived as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_HistoryMeetingsPersonsAggregateOrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsOrderBy?),
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

  CopyWith_Input_GroupsOrderBy<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsOrderBy(local$group, (e) => call(group: e));
  }

  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
  get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }

  CopyWith_Input_ServicesOrderBy<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ServicesOrderBy(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? audience,
    Enum_OrderBy? color,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? isArchived,
    Enum_OrderBy? name,
    Input_HistoryMeetingsPersonsAggregateOrderBy? personsAggregate,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
  get personsAggregate =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryMeetingsPersonsAggregateBoolExp {
  factory Input_HistoryMeetingsPersonsAggregateBoolExp({
    Input_historyMeetingsPersonsAggregateBoolExpCount? count,
  }) => Input_HistoryMeetingsPersonsAggregateBoolExp._({
    if (count != null) r'count': count,
  });

  Input_HistoryMeetingsPersonsAggregateBoolExp._(this._$data);

  factory Input_HistoryMeetingsPersonsAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyMeetingsPersonsAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsPersonsAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyMeetingsPersonsAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyMeetingsPersonsAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<
    Input_HistoryMeetingsPersonsAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsAggregateBoolExp ||
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
