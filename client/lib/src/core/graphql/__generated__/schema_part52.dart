// Part 52 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_StudyYearsBoolExp<TRes> {
  factory CopyWith_Input_StudyYearsBoolExp(
    Input_StudyYearsBoolExp instance,
    TRes Function(Input_StudyYearsBoolExp) then,
  ) = _CopyWithImpl_Input_StudyYearsBoolExp;

  factory CopyWith_Input_StudyYearsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsBoolExp;

  TRes call({
    List<Input_StudyYearsBoolExp>? $_and,
    Input_StudyYearsBoolExp? $_not,
    List<Input_StudyYearsBoolExp>? $_or,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_StringComparisonExp? name,
    Input_SmallintComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_StudyYearsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate;
  CopyWith_Input_ClassesBoolExp<TRes> get classes;
  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_SmallintComparisonExp<TRes> get order;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_StudyYearsBoolExp<TRes>
    implements CopyWith_Input_StudyYearsBoolExp<TRes> {
  _CopyWithImpl_Input_StudyYearsBoolExp(this._instance, this._then);

  final Input_StudyYearsBoolExp _instance;

  final TRes Function(Input_StudyYearsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? attendanceDaysConstraints = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? classes = _undefined,
    Object? classesAggregate = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_StudyYearsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_StudyYearsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_StudyYearsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_StudyYearsBoolExp>?),
      if (attendanceDaysConstraints != _undefined)
        'attendanceDaysConstraints':
            (attendanceDaysConstraints
                as Input_HistoryAttendanceDaysConstraintsBoolExp?),
      if (attendanceDaysConstraintsAggregate != _undefined)
        'attendanceDaysConstraintsAggregate':
            (attendanceDaysConstraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?),
      if (classes != _undefined) 'classes': (classes as Input_ClassesBoolExp?),
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesAggregateBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (order != _undefined) 'order': (order as Input_SmallintComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_StudyYearsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_StudyYearsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_StudyYearsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e),
          );
  }

  CopyWith_Input_ClassesBoolExp<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$classes, (e) => call(classes: e));
  }

  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateBoolExp(
            local$classesAggregate,
            (e) => call(classesAggregate: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$order,
            (e) => call(order: e),
          );
  }

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsBoolExp<TRes>
    implements CopyWith_Input_StudyYearsBoolExp<TRes> {
  _CopyWithStubImpl_Input_StudyYearsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_StudyYearsBoolExp>? $_and,
    Input_StudyYearsBoolExp? $_not,
    List<Input_StudyYearsBoolExp>? $_or,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_StringComparisonExp? name,
    Input_SmallintComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_StudyYearsBoolExp<TRes> get $_not =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
        _res,
      );

  CopyWith_Input_ClassesBoolExp<TRes> get classes =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get order =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_StudyYearsInsertInput {
  factory Input_StudyYearsInsertInput({
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
    attendanceDaysConstraints,
    Input_ClassesArrRelInsertInput? classes,
    String? name,
    int? order,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_StudyYearsInsertInput._({
    if (attendanceDaysConstraints != null)
      r'attendanceDaysConstraints': attendanceDaysConstraints,
    if (classes != null) r'classes': classes,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (persons != null) r'persons': persons,
  });

  Input_StudyYearsInsertInput._(this._$data);

  factory Input_StudyYearsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = data['attendanceDaysConstraints'];
      result$data['attendanceDaysConstraints'] =
          l$attendanceDaysConstraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              (l$attendanceDaysConstraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesArrRelInsertInput.fromJson(
              (l$classes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_StudyYearsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
  get attendanceDaysConstraints =>
      (_$data['attendanceDaysConstraints']
          as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?);

  Input_ClassesArrRelInsertInput? get classes =>
      (_$data['classes'] as Input_ClassesArrRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  int? get order => (_$data['order'] as int?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = attendanceDaysConstraints;
      result$data['attendanceDaysConstraints'] = l$attendanceDaysConstraints
          ?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsInsertInput<Input_StudyYearsInsertInput>
  get copyWith => CopyWith_Input_StudyYearsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final lOther$attendanceDaysConstraints = other.attendanceDaysConstraints;
    if (_$data.containsKey('attendanceDaysConstraints') !=
        other._$data.containsKey('attendanceDaysConstraints')) {
      return false;
    }
    if (l$attendanceDaysConstraints != lOther$attendanceDaysConstraints) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final l$classes = classes;
    final l$name = name;
    final l$order = order;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('attendanceDaysConstraints')
          ? l$attendanceDaysConstraints
          : const {},
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_StudyYearsInsertInput<TRes> {
  factory CopyWith_Input_StudyYearsInsertInput(
    Input_StudyYearsInsertInput instance,
    TRes Function(Input_StudyYearsInsertInput) then,
  ) = _CopyWithImpl_Input_StudyYearsInsertInput;

  factory CopyWith_Input_StudyYearsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsInsertInput;

  TRes call({
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
    attendanceDaysConstraints,
    Input_ClassesArrRelInsertInput? classes,
    String? name,
    int? order,
    Input_PersonsArrRelInsertInput? persons,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get attendanceDaysConstraints;
  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes;
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_StudyYearsInsertInput<TRes>
    implements CopyWith_Input_StudyYearsInsertInput<TRes> {
  _CopyWithImpl_Input_StudyYearsInsertInput(this._instance, this._then);

  final Input_StudyYearsInsertInput _instance;

  final TRes Function(Input_StudyYearsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceDaysConstraints = _undefined,
    Object? classes = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_StudyYearsInsertInput._({
      ..._instance._$data,
      if (attendanceDaysConstraints != _undefined)
        'attendanceDaysConstraints':
            (attendanceDaysConstraints
                as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?),
      if (classes != _undefined)
        'classes': (classes as Input_ClassesArrRelInsertInput?),
      if (name != _undefined) 'name': (name as String?),
      if (order != _undefined) 'order': (order as int?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e),
          );
  }

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ClassesArrRelInsertInput(
            local$classes,
            (e) => call(classes: e),
          );
  }

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsInsertInput<TRes>
    implements CopyWith_Input_StudyYearsInsertInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
    attendanceDaysConstraints,
    Input_ClassesArrRelInsertInput? classes,
    String? name,
    int? order,
    Input_PersonsArrRelInsertInput? persons,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get attendanceDaysConstraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
        _res,
      );

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes =>
      CopyWith_Input_ClassesArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_StudyYearsObjRelInsertInput {
  factory Input_StudyYearsObjRelInsertInput({
    required Input_StudyYearsInsertInput data,
    Input_StudyYearsOnConflict? onConflict,
  }) => Input_StudyYearsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_StudyYearsObjRelInsertInput._(this._$data);

  factory Input_StudyYearsObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_StudyYearsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_StudyYearsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_StudyYearsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StudyYearsInsertInput get data =>
      (_$data['data'] as Input_StudyYearsInsertInput);

  Input_StudyYearsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_StudyYearsOnConflict?);

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

  CopyWith_Input_StudyYearsObjRelInsertInput<Input_StudyYearsObjRelInsertInput>
  get copyWith => CopyWith_Input_StudyYearsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsObjRelInsertInput ||
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

abstract class CopyWith_Input_StudyYearsObjRelInsertInput<TRes> {
  factory CopyWith_Input_StudyYearsObjRelInsertInput(
    Input_StudyYearsObjRelInsertInput instance,
    TRes Function(Input_StudyYearsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_StudyYearsObjRelInsertInput;

  factory CopyWith_Input_StudyYearsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsObjRelInsertInput;

  TRes call({
    Input_StudyYearsInsertInput? data,
    Input_StudyYearsOnConflict? onConflict,
  });
  CopyWith_Input_StudyYearsInsertInput<TRes> get data;
  CopyWith_Input_StudyYearsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_StudyYearsObjRelInsertInput<TRes>
    implements CopyWith_Input_StudyYearsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_StudyYearsObjRelInsertInput(this._instance, this._then);

  final Input_StudyYearsObjRelInsertInput _instance;

  final TRes Function(Input_StudyYearsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_StudyYearsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_StudyYearsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_StudyYearsOnConflict?),
        }),
      );

  CopyWith_Input_StudyYearsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_StudyYearsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_StudyYearsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_StudyYearsOnConflict.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsObjRelInsertInput<TRes>
    implements CopyWith_Input_StudyYearsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_StudyYearsInsertInput? data,
    Input_StudyYearsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_StudyYearsInsertInput<TRes> get data =>
      CopyWith_Input_StudyYearsInsertInput.stub(_res);

  CopyWith_Input_StudyYearsOnConflict<TRes> get onConflict =>
      CopyWith_Input_StudyYearsOnConflict.stub(_res);
}

class Input_StudyYearsOnConflict {
  factory Input_StudyYearsOnConflict({
    required Enum_StudyYearsConstraint constraint,
    List<Enum_StudyYearsUpdateColumn>? updateColumns,
    Input_StudyYearsBoolExp? where,
  }) => Input_StudyYearsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_StudyYearsOnConflict._(this._$data);

  factory Input_StudyYearsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_StudyYearsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_StudyYearsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_StudyYearsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_StudyYearsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_StudyYearsConstraint get constraint =>
      (_$data['constraint'] as Enum_StudyYearsConstraint);

  List<Enum_StudyYearsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_StudyYearsUpdateColumn>?);

  Input_StudyYearsBoolExp? get where =>
      (_$data['where'] as Input_StudyYearsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_StudyYearsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_StudyYearsUpdateColumn>)
              .map((e) => toJson_Enum_StudyYearsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsOnConflict<Input_StudyYearsOnConflict>
  get copyWith => CopyWith_Input_StudyYearsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsOnConflict ||
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

abstract class CopyWith_Input_StudyYearsOnConflict<TRes> {
  factory CopyWith_Input_StudyYearsOnConflict(
    Input_StudyYearsOnConflict instance,
    TRes Function(Input_StudyYearsOnConflict) then,
  ) = _CopyWithImpl_Input_StudyYearsOnConflict;

  factory CopyWith_Input_StudyYearsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsOnConflict;

  TRes call({
    Enum_StudyYearsConstraint? constraint,
    List<Enum_StudyYearsUpdateColumn>? updateColumns,
    Input_StudyYearsBoolExp? where,
  });
  CopyWith_Input_StudyYearsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StudyYearsOnConflict<TRes>
    implements CopyWith_Input_StudyYearsOnConflict<TRes> {
  _CopyWithImpl_Input_StudyYearsOnConflict(this._instance, this._then);

  final Input_StudyYearsOnConflict _instance;

  final TRes Function(Input_StudyYearsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_StudyYearsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_StudyYearsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_StudyYearsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_StudyYearsBoolExp?),
    }),
  );

  CopyWith_Input_StudyYearsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StudyYearsOnConflict<TRes>
    implements CopyWith_Input_StudyYearsOnConflict<TRes> {
  _CopyWithStubImpl_Input_StudyYearsOnConflict(this._res);

  TRes _res;

  call({
    Enum_StudyYearsConstraint? constraint,
    List<Enum_StudyYearsUpdateColumn>? updateColumns,
    Input_StudyYearsBoolExp? where,
  }) => _res;

  CopyWith_Input_StudyYearsBoolExp<TRes> get where =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_StudyYearsOrderBy {
  factory Input_StudyYearsOrderBy({
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_StudyYearsOrderBy._({
    if (attendanceDaysConstraintsAggregate != null)
      r'attendanceDaysConstraintsAggregate': attendanceDaysConstraintsAggregate,
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_StudyYearsOrderBy._(this._$data);

  factory Input_StudyYearsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          data['attendanceDaysConstraintsAggregate'];
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.fromJson(
              (l$attendanceDaysConstraintsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateOrderBy.fromJson(
              (l$classesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_OrderBy((l$order as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_StudyYearsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
  get attendanceDaysConstraintsAggregate =>
      (_$data['attendanceDaysConstraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?);

  Input_ClassesAggregateOrderBy? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get order => (_$data['order'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          attendanceDaysConstraintsAggregate;
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate?.toJson();
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_OrderBy(l$order);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsOrderBy<Input_StudyYearsOrderBy> get copyWith =>
      CopyWith_Input_StudyYearsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (_$data.containsKey('attendanceDaysConstraintsAggregate') !=
        other._$data.containsKey('attendanceDaysConstraintsAggregate')) {
      return false;
    }
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$classesAggregate = classesAggregate;
    final l$name = name;
    final l$order = order;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('attendanceDaysConstraintsAggregate')
          ? l$attendanceDaysConstraintsAggregate
          : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_StudyYearsOrderBy<TRes> {
  factory CopyWith_Input_StudyYearsOrderBy(
    Input_StudyYearsOrderBy instance,
    TRes Function(Input_StudyYearsOrderBy) then,
  ) = _CopyWithImpl_Input_StudyYearsOrderBy;

  factory CopyWith_Input_StudyYearsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsOrderBy;

  TRes call({
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate;
  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate;
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_StudyYearsOrderBy<TRes>
    implements CopyWith_Input_StudyYearsOrderBy<TRes> {
  _CopyWithImpl_Input_StudyYearsOrderBy(this._instance, this._then);

  final Input_StudyYearsOrderBy _instance;

  final TRes Function(Input_StudyYearsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? classesAggregate = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_StudyYearsOrderBy._({
      ..._instance._$data,
      if (attendanceDaysConstraintsAggregate != _undefined)
        'attendanceDaysConstraintsAggregate':
            (attendanceDaysConstraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?),
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesAggregateOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (order != _undefined) 'order': (order as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

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

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateOrderBy(
            local$classesAggregate,
            (e) => call(classesAggregate: e),
          );
  }

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsOrderBy<TRes>
    implements CopyWith_Input_StudyYearsOrderBy<TRes> {
  _CopyWithStubImpl_Input_StudyYearsOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
        _res,
      );

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_StudyYearsPkColumnsInput {
  factory Input_StudyYearsPkColumnsInput({required int order}) =>
      Input_StudyYearsPkColumnsInput._({r'order': order});

  Input_StudyYearsPkColumnsInput._(this._$data);

  factory Input_StudyYearsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$order = data['order'];
    result$data['order'] = (l$order as int);
    return Input_StudyYearsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get order => (_$data['order'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$order = order;
    result$data['order'] = l$order;
    return result$data;
  }

  CopyWith_Input_StudyYearsPkColumnsInput<Input_StudyYearsPkColumnsInput>
  get copyWith => CopyWith_Input_StudyYearsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    return Object.hashAll([l$order]);
  }
}

abstract class CopyWith_Input_StudyYearsPkColumnsInput<TRes> {
  factory CopyWith_Input_StudyYearsPkColumnsInput(
    Input_StudyYearsPkColumnsInput instance,
    TRes Function(Input_StudyYearsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_StudyYearsPkColumnsInput;

  factory CopyWith_Input_StudyYearsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsPkColumnsInput;

  TRes call({int? order});
}

class _CopyWithImpl_Input_StudyYearsPkColumnsInput<TRes>
    implements CopyWith_Input_StudyYearsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_StudyYearsPkColumnsInput(this._instance, this._then);

  final Input_StudyYearsPkColumnsInput _instance;

  final TRes Function(Input_StudyYearsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined}) => _then(
    Input_StudyYearsPkColumnsInput._({
      ..._instance._$data,
      if (order != _undefined && order != null) 'order': (order as int),
    }),
  );
}

class _CopyWithStubImpl_Input_StudyYearsPkColumnsInput<TRes>
    implements CopyWith_Input_StudyYearsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsPkColumnsInput(this._res);

  TRes _res;

  call({int? order}) => _res;
}

class Input_StudyYearsSetInput {
  factory Input_StudyYearsSetInput({String? name}) =>
      Input_StudyYearsSetInput._({if (name != null) r'name': name});

  Input_StudyYearsSetInput._(this._$data);

  factory Input_StudyYearsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_StudyYearsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsSetInput<Input_StudyYearsSetInput> get copyWith =>
      CopyWith_Input_StudyYearsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsSetInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith_Input_StudyYearsSetInput<TRes> {
  factory CopyWith_Input_StudyYearsSetInput(
    Input_StudyYearsSetInput instance,
    TRes Function(Input_StudyYearsSetInput) then,
  ) = _CopyWithImpl_Input_StudyYearsSetInput;

  factory CopyWith_Input_StudyYearsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_StudyYearsSetInput<TRes>
    implements CopyWith_Input_StudyYearsSetInput<TRes> {
  _CopyWithImpl_Input_StudyYearsSetInput(this._instance, this._then);

  final Input_StudyYearsSetInput _instance;

  final TRes Function(Input_StudyYearsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_StudyYearsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_StudyYearsSetInput<TRes>
    implements CopyWith_Input_StudyYearsSetInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_StudyYearsStreamCursorInput {
  factory Input_StudyYearsStreamCursorInput({
    required Input_StudyYearsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_StudyYearsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_StudyYearsStreamCursorInput._(this._$data);

  factory Input_StudyYearsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_StudyYearsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_StudyYearsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StudyYearsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_StudyYearsStreamCursorValueInput);

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

  CopyWith_Input_StudyYearsStreamCursorInput<Input_StudyYearsStreamCursorInput>
  get copyWith => CopyWith_Input_StudyYearsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsStreamCursorInput ||
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

abstract class CopyWith_Input_StudyYearsStreamCursorInput<TRes> {
  factory CopyWith_Input_StudyYearsStreamCursorInput(
    Input_StudyYearsStreamCursorInput instance,
    TRes Function(Input_StudyYearsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_StudyYearsStreamCursorInput;

  factory CopyWith_Input_StudyYearsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsStreamCursorInput;

  TRes call({
    Input_StudyYearsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_StudyYearsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_StudyYearsStreamCursorInput<TRes>
    implements CopyWith_Input_StudyYearsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_StudyYearsStreamCursorInput(this._instance, this._then);

  final Input_StudyYearsStreamCursorInput _instance;

  final TRes Function(Input_StudyYearsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_StudyYearsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_StudyYearsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_StudyYearsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_StudyYearsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_StudyYearsStreamCursorInput<TRes>
    implements CopyWith_Input_StudyYearsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_StudyYearsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_StudyYearsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_StudyYearsStreamCursorValueInput.stub(_res);
}

class Input_StudyYearsStreamCursorValueInput {
  factory Input_StudyYearsStreamCursorValueInput({String? name, int? order}) =>
      Input_StudyYearsStreamCursorValueInput._({
        if (name != null) r'name': name,
        if (order != null) r'order': order,
      });

  Input_StudyYearsStreamCursorValueInput._(this._$data);

  factory Input_StudyYearsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    return Input_StudyYearsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  int? get order => (_$data['order'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsStreamCursorValueInput<
    Input_StudyYearsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_StudyYearsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
    ]);
  }
}

abstract class CopyWith_Input_StudyYearsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_StudyYearsStreamCursorValueInput(
    Input_StudyYearsStreamCursorValueInput instance,
    TRes Function(Input_StudyYearsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_StudyYearsStreamCursorValueInput;

  factory CopyWith_Input_StudyYearsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsStreamCursorValueInput;

  TRes call({String? name, int? order});
}

class _CopyWithImpl_Input_StudyYearsStreamCursorValueInput<TRes>
    implements CopyWith_Input_StudyYearsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_StudyYearsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_StudyYearsStreamCursorValueInput _instance;

  final TRes Function(Input_StudyYearsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? order = _undefined}) => _then(
    Input_StudyYearsStreamCursorValueInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (order != _undefined) 'order': (order as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_StudyYearsStreamCursorValueInput<TRes>
    implements CopyWith_Input_StudyYearsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsStreamCursorValueInput(this._res);

  TRes _res;

  call({String? name, int? order}) => _res;
}

class Input_StudyYearsUpdates {
  factory Input_StudyYearsUpdates({
    Input_StudyYearsSetInput? $_set,
    required Input_StudyYearsBoolExp where,
  }) => Input_StudyYearsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_StudyYearsUpdates._(this._$data);

  factory Input_StudyYearsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_StudyYearsSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_StudyYearsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_StudyYearsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StudyYearsSetInput? get $_set =>
      (_$data['_set'] as Input_StudyYearsSetInput?);

  Input_StudyYearsBoolExp get where =>
      (_$data['where'] as Input_StudyYearsBoolExp);

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

  CopyWith_Input_StudyYearsUpdates<Input_StudyYearsUpdates> get copyWith =>
      CopyWith_Input_StudyYearsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StudyYearsUpdates<TRes> {
  factory CopyWith_Input_StudyYearsUpdates(
    Input_StudyYearsUpdates instance,
    TRes Function(Input_StudyYearsUpdates) then,
  ) = _CopyWithImpl_Input_StudyYearsUpdates;

  factory CopyWith_Input_StudyYearsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsUpdates;

  TRes call({Input_StudyYearsSetInput? $_set, Input_StudyYearsBoolExp? where});
  CopyWith_Input_StudyYearsSetInput<TRes> get $_set;
  CopyWith_Input_StudyYearsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StudyYearsUpdates<TRes>
    implements CopyWith_Input_StudyYearsUpdates<TRes> {
  _CopyWithImpl_Input_StudyYearsUpdates(this._instance, this._then);

  final Input_StudyYearsUpdates _instance;

  final TRes Function(Input_StudyYearsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_StudyYearsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_StudyYearsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_StudyYearsBoolExp),
    }),
  );

  CopyWith_Input_StudyYearsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_StudyYearsSetInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_StudyYearsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StudyYearsUpdates<TRes>
    implements CopyWith_Input_StudyYearsUpdates<TRes> {
  _CopyWithStubImpl_Input_StudyYearsUpdates(this._res);

  TRes _res;

  call({Input_StudyYearsSetInput? $_set, Input_StudyYearsBoolExp? where}) =>
      _res;

  CopyWith_Input_StudyYearsSetInput<TRes> get $_set =>
      CopyWith_Input_StudyYearsSetInput.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get where =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_TagsBoolExp {
  factory Input_TagsBoolExp({
    List<Input_TagsBoolExp>? $_and,
    Input_TagsBoolExp? $_not,
    List<Input_TagsBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsTagsBoolExp? persons,
  }) => Input_TagsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_TagsBoolExp._(this._$data);

  factory Input_TagsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_TagsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_TagsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_TagsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsTagsBoolExp.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_TagsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_TagsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_TagsBoolExp>?);

  Input_TagsBoolExp? get $_not => (_$data['_not'] as Input_TagsBoolExp?);

  List<Input_TagsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_TagsBoolExp>?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsTagsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsTagsBoolExp?);

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
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_TagsBoolExp<Input_TagsBoolExp> get copyWith =>
      CopyWith_Input_TagsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsBoolExp || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
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
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_TagsBoolExp<TRes> {
  factory CopyWith_Input_TagsBoolExp(
    Input_TagsBoolExp instance,
    TRes Function(Input_TagsBoolExp) then,
  ) = _CopyWithImpl_Input_TagsBoolExp;

  factory CopyWith_Input_TagsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsBoolExp;

  TRes call({
    List<Input_TagsBoolExp>? $_and,
    Input_TagsBoolExp? $_not,
    List<Input_TagsBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsTagsBoolExp? persons,
  });
  TRes $_and(
    Iterable<Input_TagsBoolExp>? Function(
      Iterable<CopyWith_Input_TagsBoolExp<Input_TagsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_TagsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_TagsBoolExp>? Function(
      Iterable<CopyWith_Input_TagsBoolExp<Input_TagsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsTagsBoolExp<TRes> get persons;
}

class _CopyWithImpl_Input_TagsBoolExp<TRes>
    implements CopyWith_Input_TagsBoolExp<TRes> {
  _CopyWithImpl_Input_TagsBoolExp(this._instance, this._then);

  final Input_TagsBoolExp _instance;

  final TRes Function(Input_TagsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_TagsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_TagsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_TagsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_TagsBoolExp>?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsTagsBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_TagsBoolExp>? Function(
      Iterable<CopyWith_Input_TagsBoolExp<Input_TagsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_TagsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_TagsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_TagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_TagsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_TagsBoolExp>? Function(
      Iterable<CopyWith_Input_TagsBoolExp<Input_TagsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_TagsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsTagsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsTagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsBoolExp(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_TagsBoolExp<TRes>
    implements CopyWith_Input_TagsBoolExp<TRes> {
  _CopyWithStubImpl_Input_TagsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_TagsBoolExp>? $_and,
    Input_TagsBoolExp? $_not,
    List<Input_TagsBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsTagsBoolExp? persons,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_TagsBoolExp<TRes> get $_not =>
      CopyWith_Input_TagsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsTagsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);
}

class Input_TagsIncInput {
  factory Input_TagsIncInput({int? color}) =>
      Input_TagsIncInput._({if (color != null) r'color': color});

  Input_TagsIncInput._(this._$data);

  factory Input_TagsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_TagsIncInput._(result$data);
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

  CopyWith_Input_TagsIncInput<Input_TagsIncInput> get copyWith =>
      CopyWith_Input_TagsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsIncInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_TagsIncInput<TRes> {
  factory CopyWith_Input_TagsIncInput(
    Input_TagsIncInput instance,
    TRes Function(Input_TagsIncInput) then,
  ) = _CopyWithImpl_Input_TagsIncInput;

  factory CopyWith_Input_TagsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_TagsIncInput<TRes>
    implements CopyWith_Input_TagsIncInput<TRes> {
  _CopyWithImpl_Input_TagsIncInput(this._instance, this._then);

  final Input_TagsIncInput _instance;

  final TRes Function(Input_TagsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_TagsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_TagsIncInput<TRes>
    implements CopyWith_Input_TagsIncInput<TRes> {
  _CopyWithStubImpl_Input_TagsIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_TagsInsertInput {
  factory Input_TagsInsertInput({
    int? color,
    String? name,
    Input_PersonsTagsArrRelInsertInput? persons,
  }) => Input_TagsInsertInput._({
    if (color != null) r'color': color,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_TagsInsertInput._(this._$data);

  factory Input_TagsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsTagsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_TagsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsTagsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsTagsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_TagsInsertInput<Input_TagsInsertInput> get copyWith =>
      CopyWith_Input_TagsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsInsertInput || runtimeType != other.runtimeType) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_TagsInsertInput<TRes> {
  factory CopyWith_Input_TagsInsertInput(
    Input_TagsInsertInput instance,
    TRes Function(Input_TagsInsertInput) then,
  ) = _CopyWithImpl_Input_TagsInsertInput;

  factory CopyWith_Input_TagsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_TagsInsertInput;

  TRes call({
    int? color,
    String? name,
    Input_PersonsTagsArrRelInsertInput? persons,
  });
  CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_TagsInsertInput<TRes>
    implements CopyWith_Input_TagsInsertInput<TRes> {
  _CopyWithImpl_Input_TagsInsertInput(this._instance, this._then);

  final Input_TagsInsertInput _instance;

  final TRes Function(Input_TagsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_TagsInsertInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsTagsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsTagsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_TagsInsertInput<TRes>
    implements CopyWith_Input_TagsInsertInput<TRes> {
  _CopyWithStubImpl_Input_TagsInsertInput(this._res);

  TRes _res;

  call({
    int? color,
    String? name,
    Input_PersonsTagsArrRelInsertInput? persons,
  }) => _res;

  CopyWith_Input_PersonsTagsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsTagsArrRelInsertInput.stub(_res);
}

class Input_TagsObjRelInsertInput {
  factory Input_TagsObjRelInsertInput({
    required Input_TagsInsertInput data,
    Input_TagsOnConflict? onConflict,
  }) => Input_TagsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_TagsObjRelInsertInput._(this._$data);

  factory Input_TagsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_TagsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_TagsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_TagsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_TagsInsertInput get data => (_$data['data'] as Input_TagsInsertInput);

  Input_TagsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_TagsOnConflict?);

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

  CopyWith_Input_TagsObjRelInsertInput<Input_TagsObjRelInsertInput>
  get copyWith => CopyWith_Input_TagsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_TagsObjRelInsertInput ||
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
