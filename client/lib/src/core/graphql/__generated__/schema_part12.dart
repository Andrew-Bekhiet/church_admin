// Part 12 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ClassesOrderBy<TRes> {
  factory CopyWith_Input_ClassesOrderBy(
    Input_ClassesOrderBy instance,
    TRes Function(Input_ClassesOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesOrderBy;

  factory CopyWith_Input_ClassesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesOrderBy;

  TRes call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_ClassesPersonsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? userCanEdit,
  });
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminUsersAggregate;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate;
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> get personsAggregate;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_ClassesOrderBy<TRes>
    implements CopyWith_Input_ClassesOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesOrderBy(this._instance, this._then);

  final Input_ClassesOrderBy _instance;

  final TRes Function(Input_ClassesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminUsersAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_ClassesOrderBy._({
      ..._instance._$data,
      if (adminUsersAggregate != _undefined)
        'adminUsersAggregate':
            (adminUsersAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
      if (attendanceDaysConstraintsAggregate != _undefined)
        'attendanceDaysConstraintsAggregate':
            (attendanceDaysConstraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_ClassesPersonsAggregateOrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsOrderBy?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
  get adminUsersAggregate {
    final local$adminUsersAggregate = _instance.adminUsersAggregate;
    return local$adminUsersAggregate == null
        ? CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
            local$adminUsersAggregate,
            (e) => call(adminUsersAggregate: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e),
          );
  }

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

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistoryAggregate,
            (e) => call(editHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_ClassesPersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsAggregateOrderBy(
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

class _CopyWithStubImpl_Input_ClassesOrderBy<TRes>
    implements CopyWith_Input_ClassesOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_ClassesPersonsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? userCanEdit,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
  get adminUsersAggregate =>
      CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_ClassesPersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_ClassesPersonsAggregateOrderBy {
  factory Input_ClassesPersonsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_ClassesPersonsMaxOrderBy? max,
    Input_ClassesPersonsMinOrderBy? min,
  }) => Input_ClassesPersonsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_ClassesPersonsAggregateOrderBy._(this._$data);

  factory Input_ClassesPersonsAggregateOrderBy.fromJson(
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
          : Input_ClassesPersonsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_ClassesPersonsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_ClassesPersonsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_ClassesPersonsMaxOrderBy? get max =>
      (_$data['max'] as Input_ClassesPersonsMaxOrderBy?);

  Input_ClassesPersonsMinOrderBy? get min =>
      (_$data['min'] as Input_ClassesPersonsMinOrderBy?);

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

  CopyWith_Input_ClassesPersonsAggregateOrderBy<
    Input_ClassesPersonsAggregateOrderBy
  >
  get copyWith => CopyWith_Input_ClassesPersonsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsAggregateOrderBy ||
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

abstract class CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsAggregateOrderBy(
    Input_ClassesPersonsAggregateOrderBy instance,
    TRes Function(Input_ClassesPersonsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsAggregateOrderBy;

  factory CopyWith_Input_ClassesPersonsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_ClassesPersonsMaxOrderBy? max,
    Input_ClassesPersonsMinOrderBy? min,
  });
  CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> get max;
  CopyWith_Input_ClassesPersonsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_ClassesPersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsAggregateOrderBy _instance;

  final TRes Function(Input_ClassesPersonsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_ClassesPersonsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_ClassesPersonsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_ClassesPersonsMinOrderBy?),
    }),
  );

  CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_ClassesPersonsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_ClassesPersonsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_ClassesPersonsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesPersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_ClassesPersonsMaxOrderBy? max,
    Input_ClassesPersonsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> get max =>
      CopyWith_Input_ClassesPersonsMaxOrderBy.stub(_res);

  CopyWith_Input_ClassesPersonsMinOrderBy<TRes> get min =>
      CopyWith_Input_ClassesPersonsMinOrderBy.stub(_res);
}

class Input_ClassesPersonsBoolExp {
  factory Input_ClassesPersonsBoolExp({
    List<Input_ClassesPersonsBoolExp>? $_and,
    Input_ClassesPersonsBoolExp? $_not,
    List<Input_ClassesPersonsBoolExp>? $_or,
    Input_ClassesBoolExp? $class,
    Input_UuidComparisonExp? classId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => Input_ClassesPersonsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if ($class != null) r'class': $class,
    if (classId != null) r'classId': classId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_ClassesPersonsBoolExp._(this._$data);

  factory Input_ClassesPersonsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ClassesPersonsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ClassesPersonsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ClassesPersonsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('class')) {
      final l$$class = data['class'];
      result$data['class'] = l$$class == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$$class as Map<String, dynamic>));
    }
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$classId as Map<String, dynamic>),
            );
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
    return Input_ClassesPersonsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ClassesPersonsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ClassesPersonsBoolExp>?);

  Input_ClassesPersonsBoolExp? get $_not =>
      (_$data['_not'] as Input_ClassesPersonsBoolExp?);

  List<Input_ClassesPersonsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ClassesPersonsBoolExp>?);

  Input_ClassesBoolExp? get $class =>
      (_$data['class'] as Input_ClassesBoolExp?);

  Input_UuidComparisonExp? get classId =>
      (_$data['classId'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('class')) {
      final l$$class = $class;
      result$data['class'] = l$$class?.toJson();
    }
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] = l$classId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsBoolExp<Input_ClassesPersonsBoolExp>
  get copyWith => CopyWith_Input_ClassesPersonsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsBoolExp ||
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
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (_$data.containsKey('class') != other._$data.containsKey('class')) {
      return false;
    }
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$$class = $class;
    final l$classId = classId;
    final l$person = person;
    final l$personId = personId;
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
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsBoolExp<TRes> {
  factory CopyWith_Input_ClassesPersonsBoolExp(
    Input_ClassesPersonsBoolExp instance,
    TRes Function(Input_ClassesPersonsBoolExp) then,
  ) = _CopyWithImpl_Input_ClassesPersonsBoolExp;

  factory CopyWith_Input_ClassesPersonsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsBoolExp;

  TRes call({
    List<Input_ClassesPersonsBoolExp>? $_and,
    Input_ClassesPersonsBoolExp? $_not,
    List<Input_ClassesPersonsBoolExp>? $_or,
    Input_ClassesBoolExp? $class,
    Input_UuidComparisonExp? classId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
    Iterable<Input_ClassesPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ClassesPersonsBoolExp<Input_ClassesPersonsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ClassesPersonsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_ClassesPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ClassesPersonsBoolExp<Input_ClassesPersonsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ClassesBoolExp<TRes> get $class;
  CopyWith_Input_UuidComparisonExp<TRes> get classId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_ClassesPersonsBoolExp<TRes>
    implements CopyWith_Input_ClassesPersonsBoolExp<TRes> {
  _CopyWithImpl_Input_ClassesPersonsBoolExp(this._instance, this._then);

  final Input_ClassesPersonsBoolExp _instance;

  final TRes Function(Input_ClassesPersonsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? $class = _undefined,
    Object? classId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_ClassesPersonsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_ClassesPersonsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_ClassesPersonsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_ClassesPersonsBoolExp>?),
      if ($class != _undefined) 'class': ($class as Input_ClassesBoolExp?),
      if (classId != _undefined)
        'classId': (classId as Input_UuidComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_ClassesPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ClassesPersonsBoolExp<Input_ClassesPersonsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_ClassesPersonsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ClassesPersonsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ClassesPersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_ClassesPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ClassesPersonsBoolExp<Input_ClassesPersonsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_ClassesPersonsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$$class, (e) => call($class: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get classId {
    final local$classId = _instance.classId;
    return local$classId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$classId,
            (e) => call(classId: e),
          );
  }

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
}

class _CopyWithStubImpl_Input_ClassesPersonsBoolExp<TRes>
    implements CopyWith_Input_ClassesPersonsBoolExp<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ClassesPersonsBoolExp>? $_and,
    Input_ClassesPersonsBoolExp? $_not,
    List<Input_ClassesPersonsBoolExp>? $_or,
    Input_ClassesBoolExp? $class,
    Input_UuidComparisonExp? classId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_ClassesPersonsBoolExp<TRes> get $_not =>
      CopyWith_Input_ClassesPersonsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get $class =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get classId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_ClassesPersonsMaxOrderBy {
  factory Input_ClassesPersonsMaxOrderBy({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  }) => Input_ClassesPersonsMaxOrderBy._({
    if (classId != null) r'classId': classId,
    if (personId != null) r'personId': personId,
  });

  Input_ClassesPersonsMaxOrderBy._(this._$data);

  factory Input_ClassesPersonsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : fromJson_Enum_OrderBy((l$classId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_ClassesPersonsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get classId => (_$data['classId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] = l$classId == null
          ? null
          : toJson_Enum_OrderBy(l$classId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsMaxOrderBy<Input_ClassesPersonsMaxOrderBy>
  get copyWith => CopyWith_Input_ClassesPersonsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsMaxOrderBy(
    Input_ClassesPersonsMaxOrderBy instance,
    TRes Function(Input_ClassesPersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsMaxOrderBy;

  factory CopyWith_Input_ClassesPersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsMaxOrderBy;

  TRes call({Enum_OrderBy? classId, Enum_OrderBy? personId});
}

class _CopyWithImpl_Input_ClassesPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsMaxOrderBy(this._instance, this._then);

  final Input_ClassesPersonsMaxOrderBy _instance;

  final TRes Function(Input_ClassesPersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_ClassesPersonsMaxOrderBy._({
          ..._instance._$data,
          if (classId != _undefined) 'classId': (classId as Enum_OrderBy?),
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_ClassesPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? classId, Enum_OrderBy? personId}) => _res;
}

class Input_ClassesPersonsMinOrderBy {
  factory Input_ClassesPersonsMinOrderBy({
    Enum_OrderBy? classId,
    Enum_OrderBy? personId,
  }) => Input_ClassesPersonsMinOrderBy._({
    if (classId != null) r'classId': classId,
    if (personId != null) r'personId': personId,
  });

  Input_ClassesPersonsMinOrderBy._(this._$data);

  factory Input_ClassesPersonsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : fromJson_Enum_OrderBy((l$classId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_ClassesPersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get classId => (_$data['classId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] = l$classId == null
          ? null
          : toJson_Enum_OrderBy(l$classId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsMinOrderBy<Input_ClassesPersonsMinOrderBy>
  get copyWith => CopyWith_Input_ClassesPersonsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsMinOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsMinOrderBy(
    Input_ClassesPersonsMinOrderBy instance,
    TRes Function(Input_ClassesPersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsMinOrderBy;

  factory CopyWith_Input_ClassesPersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsMinOrderBy;

  TRes call({Enum_OrderBy? classId, Enum_OrderBy? personId});
}

class _CopyWithImpl_Input_ClassesPersonsMinOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsMinOrderBy(this._instance, this._then);

  final Input_ClassesPersonsMinOrderBy _instance;

  final TRes Function(Input_ClassesPersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_ClassesPersonsMinOrderBy._({
          ..._instance._$data,
          if (classId != _undefined) 'classId': (classId as Enum_OrderBy?),
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_ClassesPersonsMinOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? classId, Enum_OrderBy? personId}) => _res;
}

class Input_ClassesPersonsOrderBy {
  factory Input_ClassesPersonsOrderBy({
    Input_ClassesOrderBy? $class,
    Enum_OrderBy? classId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) => Input_ClassesPersonsOrderBy._({
    if ($class != null) r'class': $class,
    if (classId != null) r'classId': classId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_ClassesPersonsOrderBy._(this._$data);

  factory Input_ClassesPersonsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('class')) {
      final l$$class = data['class'];
      result$data['class'] = l$$class == null
          ? null
          : Input_ClassesOrderBy.fromJson((l$$class as Map<String, dynamic>));
    }
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : fromJson_Enum_OrderBy((l$classId as String));
    }
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
    return Input_ClassesPersonsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesOrderBy? get $class =>
      (_$data['class'] as Input_ClassesOrderBy?);

  Enum_OrderBy? get classId => (_$data['classId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('class')) {
      final l$$class = $class;
      result$data['class'] = l$$class?.toJson();
    }
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] = l$classId == null
          ? null
          : toJson_Enum_OrderBy(l$classId);
    }
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
    return result$data;
  }

  CopyWith_Input_ClassesPersonsOrderBy<Input_ClassesPersonsOrderBy>
  get copyWith => CopyWith_Input_ClassesPersonsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (_$data.containsKey('class') != other._$data.containsKey('class')) {
      return false;
    }
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$class = $class;
    final l$classId = classId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsOrderBy<TRes> {
  factory CopyWith_Input_ClassesPersonsOrderBy(
    Input_ClassesPersonsOrderBy instance,
    TRes Function(Input_ClassesPersonsOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesPersonsOrderBy;

  factory CopyWith_Input_ClassesPersonsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsOrderBy;

  TRes call({
    Input_ClassesOrderBy? $class,
    Enum_OrderBy? classId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  });
  CopyWith_Input_ClassesOrderBy<TRes> get $class;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_ClassesPersonsOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesPersonsOrderBy(this._instance, this._then);

  final Input_ClassesPersonsOrderBy _instance;

  final TRes Function(Input_ClassesPersonsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $class = _undefined,
    Object? classId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_ClassesPersonsOrderBy._({
      ..._instance._$data,
      if ($class != _undefined) 'class': ($class as Input_ClassesOrderBy?),
      if (classId != _undefined) 'classId': (classId as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_ClassesOrderBy<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Input_ClassesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesOrderBy(local$$class, (e) => call($class: e));
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_ClassesPersonsOrderBy<TRes>
    implements CopyWith_Input_ClassesPersonsOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsOrderBy(this._res);

  TRes _res;

  call({
    Input_ClassesOrderBy? $class,
    Enum_OrderBy? classId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) => _res;

  CopyWith_Input_ClassesOrderBy<TRes> get $class =>
      CopyWith_Input_ClassesOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_ClassesPersonsStreamCursorInput {
  factory Input_ClassesPersonsStreamCursorInput({
    required Input_ClassesPersonsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ClassesPersonsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ClassesPersonsStreamCursorInput._(this._$data);

  factory Input_ClassesPersonsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_ClassesPersonsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ClassesPersonsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesPersonsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ClassesPersonsStreamCursorValueInput);

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

  CopyWith_Input_ClassesPersonsStreamCursorInput<
    Input_ClassesPersonsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_ClassesPersonsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsStreamCursorInput ||
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

abstract class CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  factory CopyWith_Input_ClassesPersonsStreamCursorInput(
    Input_ClassesPersonsStreamCursorInput instance,
    TRes Function(Input_ClassesPersonsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ClassesPersonsStreamCursorInput;

  factory CopyWith_Input_ClassesPersonsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput;

  TRes call({
    Input_ClassesPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ClassesPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ClassesPersonsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsStreamCursorInput _instance;

  final TRes Function(Input_ClassesPersonsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ClassesPersonsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_ClassesPersonsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ClassesPersonsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ClassesPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ClassesPersonsStreamCursorValueInput.stub(_res);
}

class Input_ClassesPersonsStreamCursorValueInput {
  factory Input_ClassesPersonsStreamCursorValueInput({
    UuidValue? classId,
    UuidValue? personId,
  }) => Input_ClassesPersonsStreamCursorValueInput._({
    if (classId != null) r'classId': classId,
    if (personId != null) r'personId': personId,
  });

  Input_ClassesPersonsStreamCursorValueInput._(this._$data);

  factory Input_ClassesPersonsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classId')) {
      final l$classId = data['classId'];
      result$data['classId'] = l$classId == null
          ? null
          : stringToUuid(l$classId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_ClassesPersonsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get classId => (_$data['classId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classId')) {
      final l$classId = classId;
      result$data['classId'] = l$classId == null
          ? null
          : uuidToString(l$classId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_ClassesPersonsStreamCursorValueInput<
    Input_ClassesPersonsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_ClassesPersonsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPersonsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (_$data.containsKey('classId') != other._$data.containsKey('classId')) {
      return false;
    }
    if (l$classId != lOther$classId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('classId') ? l$classId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ClassesPersonsStreamCursorValueInput(
    Input_ClassesPersonsStreamCursorValueInput instance,
    TRes Function(Input_ClassesPersonsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ClassesPersonsStreamCursorValueInput;

  factory CopyWith_Input_ClassesPersonsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput;

  TRes call({UuidValue? classId, UuidValue? personId});
}

class _CopyWithImpl_Input_ClassesPersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ClassesPersonsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ClassesPersonsStreamCursorValueInput _instance;

  final TRes Function(Input_ClassesPersonsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_ClassesPersonsStreamCursorValueInput._({
          ..._instance._$data,
          if (classId != _undefined) 'classId': (classId as UuidValue?),
          if (personId != _undefined) 'personId': (personId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ClassesPersonsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPersonsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? classId, UuidValue? personId}) => _res;
}

class Input_ClassesPkColumnsInput {
  factory Input_ClassesPkColumnsInput({required UuidValue id}) =>
      Input_ClassesPkColumnsInput._({r'id': id});

  Input_ClassesPkColumnsInput._(this._$data);

  factory Input_ClassesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ClassesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ClassesPkColumnsInput<Input_ClassesPkColumnsInput>
  get copyWith => CopyWith_Input_ClassesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesPkColumnsInput ||
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

abstract class CopyWith_Input_ClassesPkColumnsInput<TRes> {
  factory CopyWith_Input_ClassesPkColumnsInput(
    Input_ClassesPkColumnsInput instance,
    TRes Function(Input_ClassesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_ClassesPkColumnsInput;

  factory CopyWith_Input_ClassesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_ClassesPkColumnsInput<TRes>
    implements CopyWith_Input_ClassesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_ClassesPkColumnsInput(this._instance, this._then);

  final Input_ClassesPkColumnsInput _instance;

  final TRes Function(Input_ClassesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_ClassesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesPkColumnsInput<TRes>
    implements CopyWith_Input_ClassesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ClassesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ClassesSetInput {
  factory Input_ClassesSetInput({
    String? blurhash,
    int? color,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => Input_ClassesSetInput._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesSetInput._(this._$data);

  factory Input_ClassesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt);
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
    return Input_ClassesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
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

  CopyWith_Input_ClassesSetInput<Input_ClassesSetInput> get copyWith =>
      CopyWith_Input_ClassesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesSetInput || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    final l$blurhash = blurhash;
    final l$color = color;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesSetInput<TRes> {
  factory CopyWith_Input_ClassesSetInput(
    Input_ClassesSetInput instance,
    TRes Function(Input_ClassesSetInput) then,
  ) = _CopyWithImpl_Input_ClassesSetInput;

  factory CopyWith_Input_ClassesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesSetInput;

  TRes call({
    String? blurhash,
    int? color,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_ClassesSetInput<TRes>
    implements CopyWith_Input_ClassesSetInput<TRes> {
  _CopyWithImpl_Input_ClassesSetInput(this._instance, this._then);

  final Input_ClassesSetInput _instance;

  final TRes Function(Input_ClassesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesSetInput._({
      ..._instance._$data,
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesSetInput<TRes>
    implements CopyWith_Input_ClassesSetInput<TRes> {
  _CopyWithStubImpl_Input_ClassesSetInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    int? color,
    String? name,
    DateTime? photoUpdatedAt,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => _res;
}

class Input_ClassesStddevOrderBy {
  factory Input_ClassesStddevOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesStddevOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesStddevOrderBy._(this._$data);

  factory Input_ClassesStddevOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesStddevOrderBy._(result$data);
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

  CopyWith_Input_ClassesStddevOrderBy<Input_ClassesStddevOrderBy>
  get copyWith => CopyWith_Input_ClassesStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStddevOrderBy ||
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

abstract class CopyWith_Input_ClassesStddevOrderBy<TRes> {
  factory CopyWith_Input_ClassesStddevOrderBy(
    Input_ClassesStddevOrderBy instance,
    TRes Function(Input_ClassesStddevOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesStddevOrderBy;

  factory CopyWith_Input_ClassesStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStddevOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesStddevOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevOrderBy(this._instance, this._then);

  final Input_ClassesStddevOrderBy _instance;

  final TRes Function(Input_ClassesStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesStddevOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesStddevOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesStddevPopOrderBy {
  factory Input_ClassesStddevPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesStddevPopOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesStddevPopOrderBy._(this._$data);

  factory Input_ClassesStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesStddevPopOrderBy._(result$data);
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

  CopyWith_Input_ClassesStddevPopOrderBy<Input_ClassesStddevPopOrderBy>
  get copyWith => CopyWith_Input_ClassesStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStddevPopOrderBy ||
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

abstract class CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  factory CopyWith_Input_ClassesStddevPopOrderBy(
    Input_ClassesStddevPopOrderBy instance,
    TRes Function(Input_ClassesStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesStddevPopOrderBy;

  factory CopyWith_Input_ClassesStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStddevPopOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesStddevPopOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevPopOrderBy(this._instance, this._then);

  final Input_ClassesStddevPopOrderBy _instance;

  final TRes Function(Input_ClassesStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesStddevPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesStddevPopOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesStddevSampOrderBy {
  factory Input_ClassesStddevSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesStddevSampOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesStddevSampOrderBy._(this._$data);

  factory Input_ClassesStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesStddevSampOrderBy._(result$data);
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

  CopyWith_Input_ClassesStddevSampOrderBy<Input_ClassesStddevSampOrderBy>
  get copyWith => CopyWith_Input_ClassesStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStddevSampOrderBy ||
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

abstract class CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  factory CopyWith_Input_ClassesStddevSampOrderBy(
    Input_ClassesStddevSampOrderBy instance,
    TRes Function(Input_ClassesStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesStddevSampOrderBy;

  factory CopyWith_Input_ClassesStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesStddevSampOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesStddevSampOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesStddevSampOrderBy(this._instance, this._then);

  final Input_ClassesStddevSampOrderBy _instance;

  final TRes Function(Input_ClassesStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesStddevSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesStddevSampOrderBy<TRes>
    implements CopyWith_Input_ClassesStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesStreamCursorInput {
  factory Input_ClassesStreamCursorInput({
    required Input_ClassesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ClassesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ClassesStreamCursorInput._(this._$data);

  factory Input_ClassesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_ClassesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ClassesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ClassesStreamCursorValueInput);

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

  CopyWith_Input_ClassesStreamCursorInput<Input_ClassesStreamCursorInput>
  get copyWith => CopyWith_Input_ClassesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesStreamCursorInput ||
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
