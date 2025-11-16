// Part 14 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_CollegesMinOrderBy<TRes> {
  factory CopyWith_Input_CollegesMinOrderBy(
    Input_CollegesMinOrderBy instance,
    TRes Function(Input_CollegesMinOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesMinOrderBy;

  factory CopyWith_Input_CollegesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesMinOrderBy;

  TRes call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? universityId});
}

class _CopyWithImpl_Input_CollegesMinOrderBy<TRes>
    implements CopyWith_Input_CollegesMinOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesMinOrderBy(this._instance, this._then);

  final Input_CollegesMinOrderBy _instance;

  final TRes Function(Input_CollegesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesMinOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (universityId != _undefined)
        'universityId': (universityId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesMinOrderBy<TRes>
    implements CopyWith_Input_CollegesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? universityId}) =>
      _res;
}

class Input_CollegesObjRelInsertInput {
  factory Input_CollegesObjRelInsertInput({
    required Input_CollegesInsertInput data,
    Input_CollegesOnConflict? onConflict,
  }) => Input_CollegesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_CollegesObjRelInsertInput._(this._$data);

  factory Input_CollegesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_CollegesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_CollegesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_CollegesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesInsertInput get data =>
      (_$data['data'] as Input_CollegesInsertInput);

  Input_CollegesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_CollegesOnConflict?);

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

  CopyWith_Input_CollegesObjRelInsertInput<Input_CollegesObjRelInsertInput>
  get copyWith => CopyWith_Input_CollegesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesObjRelInsertInput ||
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

abstract class CopyWith_Input_CollegesObjRelInsertInput<TRes> {
  factory CopyWith_Input_CollegesObjRelInsertInput(
    Input_CollegesObjRelInsertInput instance,
    TRes Function(Input_CollegesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_CollegesObjRelInsertInput;

  factory CopyWith_Input_CollegesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesObjRelInsertInput;

  TRes call({
    Input_CollegesInsertInput? data,
    Input_CollegesOnConflict? onConflict,
  });
  CopyWith_Input_CollegesInsertInput<TRes> get data;
  CopyWith_Input_CollegesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_CollegesObjRelInsertInput<TRes>
    implements CopyWith_Input_CollegesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_CollegesObjRelInsertInput(this._instance, this._then);

  final Input_CollegesObjRelInsertInput _instance;

  final TRes Function(Input_CollegesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_CollegesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_CollegesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_CollegesOnConflict?),
        }),
      );

  CopyWith_Input_CollegesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_CollegesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_CollegesOnConflict.stub(_then(_instance))
        : CopyWith_Input_CollegesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesObjRelInsertInput<TRes>
    implements CopyWith_Input_CollegesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_CollegesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_CollegesInsertInput? data,
    Input_CollegesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_CollegesInsertInput<TRes> get data =>
      CopyWith_Input_CollegesInsertInput.stub(_res);

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict =>
      CopyWith_Input_CollegesOnConflict.stub(_res);
}

class Input_CollegesOnConflict {
  factory Input_CollegesOnConflict({
    required Enum_CollegesConstraint constraint,
    List<Enum_CollegesUpdateColumn>? updateColumns,
    Input_CollegesBoolExp? where,
  }) => Input_CollegesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_CollegesOnConflict._(this._$data);

  factory Input_CollegesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_CollegesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_CollegesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_CollegesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_CollegesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_CollegesConstraint get constraint =>
      (_$data['constraint'] as Enum_CollegesConstraint);

  List<Enum_CollegesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_CollegesUpdateColumn>?);

  Input_CollegesBoolExp? get where =>
      (_$data['where'] as Input_CollegesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_CollegesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_CollegesUpdateColumn>)
              .map((e) => toJson_Enum_CollegesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CollegesOnConflict<Input_CollegesOnConflict> get copyWith =>
      CopyWith_Input_CollegesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesOnConflict ||
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

abstract class CopyWith_Input_CollegesOnConflict<TRes> {
  factory CopyWith_Input_CollegesOnConflict(
    Input_CollegesOnConflict instance,
    TRes Function(Input_CollegesOnConflict) then,
  ) = _CopyWithImpl_Input_CollegesOnConflict;

  factory CopyWith_Input_CollegesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesOnConflict;

  TRes call({
    Enum_CollegesConstraint? constraint,
    List<Enum_CollegesUpdateColumn>? updateColumns,
    Input_CollegesBoolExp? where,
  });
  CopyWith_Input_CollegesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_CollegesOnConflict<TRes>
    implements CopyWith_Input_CollegesOnConflict<TRes> {
  _CopyWithImpl_Input_CollegesOnConflict(this._instance, this._then);

  final Input_CollegesOnConflict _instance;

  final TRes Function(Input_CollegesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_CollegesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_CollegesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_CollegesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_CollegesBoolExp?),
    }),
  );

  CopyWith_Input_CollegesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_CollegesBoolExp.stub(_then(_instance))
        : CopyWith_Input_CollegesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_CollegesOnConflict<TRes>
    implements CopyWith_Input_CollegesOnConflict<TRes> {
  _CopyWithStubImpl_Input_CollegesOnConflict(this._res);

  TRes _res;

  call({
    Enum_CollegesConstraint? constraint,
    List<Enum_CollegesUpdateColumn>? updateColumns,
    Input_CollegesBoolExp? where,
  }) => _res;

  CopyWith_Input_CollegesBoolExp<TRes> get where =>
      CopyWith_Input_CollegesBoolExp.stub(_res);
}

class Input_CollegesOrderBy {
  factory Input_CollegesOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Input_UniversitiesOrderBy? university,
    Enum_OrderBy? universityId,
  }) => Input_CollegesOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (university != null) r'university': university,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesOrderBy._(this._$data);

  factory Input_CollegesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('university')) {
      final l$university = data['university'];
      result$data['university'] = l$university == null
          ? null
          : Input_UniversitiesOrderBy.fromJson(
              (l$university as Map<String, dynamic>),
            );
    }
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : fromJson_Enum_OrderBy((l$universityId as String));
    }
    return Input_CollegesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Input_UniversitiesOrderBy? get university =>
      (_$data['university'] as Input_UniversitiesOrderBy?);

  Enum_OrderBy? get universityId => (_$data['universityId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('university')) {
      final l$university = university;
      result$data['university'] = l$university?.toJson();
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : toJson_Enum_OrderBy(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesOrderBy<Input_CollegesOrderBy> get copyWith =>
      CopyWith_Input_CollegesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesOrderBy || runtimeType != other.runtimeType) {
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    final l$university = university;
    final lOther$university = other.university;
    if (_$data.containsKey('university') !=
        other._$data.containsKey('university')) {
      return false;
    }
    if (l$university != lOther$university) {
      return false;
    }
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    final l$university = university;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('university') ? l$university : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesOrderBy<TRes> {
  factory CopyWith_Input_CollegesOrderBy(
    Input_CollegesOrderBy instance,
    TRes Function(Input_CollegesOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesOrderBy;

  factory CopyWith_Input_CollegesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesOrderBy;

  TRes call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Input_UniversitiesOrderBy? university,
    Enum_OrderBy? universityId,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
  CopyWith_Input_UniversitiesOrderBy<TRes> get university;
}

class _CopyWithImpl_Input_CollegesOrderBy<TRes>
    implements CopyWith_Input_CollegesOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesOrderBy(this._instance, this._then);

  final Input_CollegesOrderBy _instance;

  final TRes Function(Input_CollegesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
    Object? university = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
      if (university != _undefined)
        'university': (university as Input_UniversitiesOrderBy?),
      if (universityId != _undefined)
        'universityId': (universityId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }

  CopyWith_Input_UniversitiesOrderBy<TRes> get university {
    final local$university = _instance.university;
    return local$university == null
        ? CopyWith_Input_UniversitiesOrderBy.stub(_then(_instance))
        : CopyWith_Input_UniversitiesOrderBy(
            local$university,
            (e) => call(university: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesOrderBy<TRes>
    implements CopyWith_Input_CollegesOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Input_UniversitiesOrderBy? university,
    Enum_OrderBy? universityId,
  }) => _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_UniversitiesOrderBy<TRes> get university =>
      CopyWith_Input_UniversitiesOrderBy.stub(_res);
}

class Input_CollegesPkColumnsInput {
  factory Input_CollegesPkColumnsInput({required UuidValue id}) =>
      Input_CollegesPkColumnsInput._({r'id': id});

  Input_CollegesPkColumnsInput._(this._$data);

  factory Input_CollegesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_CollegesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_CollegesPkColumnsInput<Input_CollegesPkColumnsInput>
  get copyWith => CopyWith_Input_CollegesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesPkColumnsInput ||
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

abstract class CopyWith_Input_CollegesPkColumnsInput<TRes> {
  factory CopyWith_Input_CollegesPkColumnsInput(
    Input_CollegesPkColumnsInput instance,
    TRes Function(Input_CollegesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_CollegesPkColumnsInput;

  factory CopyWith_Input_CollegesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_CollegesPkColumnsInput<TRes>
    implements CopyWith_Input_CollegesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_CollegesPkColumnsInput(this._instance, this._then);

  final Input_CollegesPkColumnsInput _instance;

  final TRes Function(Input_CollegesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_CollegesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesPkColumnsInput<TRes>
    implements CopyWith_Input_CollegesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_CollegesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_CollegesSetInput {
  factory Input_CollegesSetInput({String? name}) =>
      Input_CollegesSetInput._({if (name != null) r'name': name});

  Input_CollegesSetInput._(this._$data);

  factory Input_CollegesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_CollegesSetInput._(result$data);
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

  CopyWith_Input_CollegesSetInput<Input_CollegesSetInput> get copyWith =>
      CopyWith_Input_CollegesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesSetInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_CollegesSetInput<TRes> {
  factory CopyWith_Input_CollegesSetInput(
    Input_CollegesSetInput instance,
    TRes Function(Input_CollegesSetInput) then,
  ) = _CopyWithImpl_Input_CollegesSetInput;

  factory CopyWith_Input_CollegesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_CollegesSetInput<TRes>
    implements CopyWith_Input_CollegesSetInput<TRes> {
  _CopyWithImpl_Input_CollegesSetInput(this._instance, this._then);

  final Input_CollegesSetInput _instance;

  final TRes Function(Input_CollegesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_CollegesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesSetInput<TRes>
    implements CopyWith_Input_CollegesSetInput<TRes> {
  _CopyWithStubImpl_Input_CollegesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_CollegesStreamCursorInput {
  factory Input_CollegesStreamCursorInput({
    required Input_CollegesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_CollegesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_CollegesStreamCursorInput._(this._$data);

  factory Input_CollegesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_CollegesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_CollegesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_CollegesStreamCursorValueInput);

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

  CopyWith_Input_CollegesStreamCursorInput<Input_CollegesStreamCursorInput>
  get copyWith => CopyWith_Input_CollegesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesStreamCursorInput ||
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

abstract class CopyWith_Input_CollegesStreamCursorInput<TRes> {
  factory CopyWith_Input_CollegesStreamCursorInput(
    Input_CollegesStreamCursorInput instance,
    TRes Function(Input_CollegesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_CollegesStreamCursorInput;

  factory CopyWith_Input_CollegesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesStreamCursorInput;

  TRes call({
    Input_CollegesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_CollegesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_CollegesStreamCursorInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_CollegesStreamCursorInput(this._instance, this._then);

  final Input_CollegesStreamCursorInput _instance;

  final TRes Function(Input_CollegesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_CollegesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_CollegesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_CollegesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_CollegesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_CollegesStreamCursorInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_CollegesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_CollegesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_CollegesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_CollegesStreamCursorValueInput.stub(_res);
}

class Input_CollegesStreamCursorValueInput {
  factory Input_CollegesStreamCursorValueInput({
    UuidValue? id,
    String? name,
    UuidValue? universityId,
  }) => Input_CollegesStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesStreamCursorValueInput._(this._$data);

  factory Input_CollegesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : stringToUuid(l$universityId);
    }
    return Input_CollegesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  UuidValue? get universityId => (_$data['universityId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : uuidToString(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesStreamCursorValueInput<
    Input_CollegesStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_CollegesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_CollegesStreamCursorValueInput(
    Input_CollegesStreamCursorValueInput instance,
    TRes Function(Input_CollegesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_CollegesStreamCursorValueInput;

  factory CopyWith_Input_CollegesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesStreamCursorValueInput;

  TRes call({UuidValue? id, String? name, UuidValue? universityId});
}

class _CopyWithImpl_Input_CollegesStreamCursorValueInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_CollegesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_CollegesStreamCursorValueInput _instance;

  final TRes Function(Input_CollegesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (universityId != _undefined)
        'universityId': (universityId as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesStreamCursorValueInput<TRes>
    implements CopyWith_Input_CollegesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_CollegesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name, UuidValue? universityId}) => _res;
}

class Input_CollegesUpdates {
  factory Input_CollegesUpdates({
    Input_CollegesSetInput? $_set,
    required Input_CollegesBoolExp where,
  }) => Input_CollegesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_CollegesUpdates._(this._$data);

  factory Input_CollegesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_CollegesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_CollegesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_CollegesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesSetInput? get $_set =>
      (_$data['_set'] as Input_CollegesSetInput?);

  Input_CollegesBoolExp get where => (_$data['where'] as Input_CollegesBoolExp);

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

  CopyWith_Input_CollegesUpdates<Input_CollegesUpdates> get copyWith =>
      CopyWith_Input_CollegesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_CollegesUpdates<TRes> {
  factory CopyWith_Input_CollegesUpdates(
    Input_CollegesUpdates instance,
    TRes Function(Input_CollegesUpdates) then,
  ) = _CopyWithImpl_Input_CollegesUpdates;

  factory CopyWith_Input_CollegesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesUpdates;

  TRes call({Input_CollegesSetInput? $_set, Input_CollegesBoolExp? where});
  CopyWith_Input_CollegesSetInput<TRes> get $_set;
  CopyWith_Input_CollegesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_CollegesUpdates<TRes>
    implements CopyWith_Input_CollegesUpdates<TRes> {
  _CopyWithImpl_Input_CollegesUpdates(this._instance, this._then);

  final Input_CollegesUpdates _instance;

  final TRes Function(Input_CollegesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_CollegesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_CollegesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_CollegesBoolExp),
    }),
  );

  CopyWith_Input_CollegesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_CollegesSetInput.stub(_then(_instance))
        : CopyWith_Input_CollegesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_CollegesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_CollegesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_CollegesUpdates<TRes>
    implements CopyWith_Input_CollegesUpdates<TRes> {
  _CopyWithStubImpl_Input_CollegesUpdates(this._res);

  TRes _res;

  call({Input_CollegesSetInput? $_set, Input_CollegesBoolExp? where}) => _res;

  CopyWith_Input_CollegesSetInput<TRes> get $_set =>
      CopyWith_Input_CollegesSetInput.stub(_res);

  CopyWith_Input_CollegesBoolExp<TRes> get where =>
      CopyWith_Input_CollegesBoolExp.stub(_res);
}

class Input_DateComparisonExp {
  factory Input_DateComparisonExp({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => Input_DateComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
  });

  Input_DateComparisonExp._(this._$data);

  factory Input_DateComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : dateFromString(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : dateFromString(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null ? null : dateFromString(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => dateFromString(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : dateFromString(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null ? null : dateFromString(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null ? null : dateFromString(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => dateFromString(e))
          .toList();
    }
    return Input_DateComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get $_eq => (_$data['_eq'] as DateTime?);

  DateTime? get $_gt => (_$data['_gt'] as DateTime?);

  DateTime? get $_gte => (_$data['_gte'] as DateTime?);

  List<DateTime>? get $_in => (_$data['_in'] as List<DateTime>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  DateTime? get $_lt => (_$data['_lt'] as DateTime?);

  DateTime? get $_lte => (_$data['_lte'] as DateTime?);

  DateTime? get $_neq => (_$data['_neq'] as DateTime?);

  List<DateTime>? get $_nin => (_$data['_nin'] as List<DateTime>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : dateToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : dateToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : dateToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => dateToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : dateToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : dateToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : dateToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => dateToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_DateComparisonExp<Input_DateComparisonExp> get copyWith =>
      CopyWith_Input_DateComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DateComparisonExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_isNull = $_isNull;
    final lOther$$_isNull = other.$_isNull;
    if (_$data.containsKey('_isNull') != other._$data.containsKey('_isNull')) {
      return false;
    }
    if (l$$_isNull != lOther$$_isNull) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_DateComparisonExp<TRes> {
  factory CopyWith_Input_DateComparisonExp(
    Input_DateComparisonExp instance,
    TRes Function(Input_DateComparisonExp) then,
  ) = _CopyWithImpl_Input_DateComparisonExp;

  factory CopyWith_Input_DateComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DateComparisonExp;

  TRes call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  });
}

class _CopyWithImpl_Input_DateComparisonExp<TRes>
    implements CopyWith_Input_DateComparisonExp<TRes> {
  _CopyWithImpl_Input_DateComparisonExp(this._instance, this._then);

  final Input_DateComparisonExp _instance;

  final TRes Function(Input_DateComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) => _then(
    Input_DateComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as DateTime?),
      if ($_gt != _undefined) '_gt': ($_gt as DateTime?),
      if ($_gte != _undefined) '_gte': ($_gte as DateTime?),
      if ($_in != _undefined) '_in': ($_in as List<DateTime>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as DateTime?),
      if ($_lte != _undefined) '_lte': ($_lte as DateTime?),
      if ($_neq != _undefined) '_neq': ($_neq as DateTime?),
      if ($_nin != _undefined) '_nin': ($_nin as List<DateTime>?),
    }),
  );
}

class _CopyWithStubImpl_Input_DateComparisonExp<TRes>
    implements CopyWith_Input_DateComparisonExp<TRes> {
  _CopyWithStubImpl_Input_DateComparisonExp(this._res);

  TRes _res;

  call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => _res;
}

class Input_DaterangeComparisonExp {
  factory Input_DaterangeComparisonExp({
    DateTimeRange? $_eq,
    DateTimeRange? $_gt,
    DateTimeRange? $_gte,
    List<DateTimeRange>? $_in,
    bool? $_isNull,
    DateTimeRange? $_lt,
    DateTimeRange? $_lte,
    DateTimeRange? $_neq,
    List<DateTimeRange>? $_nin,
  }) => Input_DaterangeComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
  });

  Input_DaterangeComparisonExp._(this._$data);

  factory Input_DaterangeComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : dateRangeFromString(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : dateRangeFromString(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null
          ? null
          : dateRangeFromString(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => dateRangeFromString(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : dateRangeFromString(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null
          ? null
          : dateRangeFromString(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null
          ? null
          : dateRangeFromString(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => dateRangeFromString(e))
          .toList();
    }
    return Input_DaterangeComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTimeRange? get $_eq => (_$data['_eq'] as DateTimeRange?);

  DateTimeRange? get $_gt => (_$data['_gt'] as DateTimeRange?);

  DateTimeRange? get $_gte => (_$data['_gte'] as DateTimeRange?);

  List<DateTimeRange>? get $_in => (_$data['_in'] as List<DateTimeRange>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  DateTimeRange? get $_lt => (_$data['_lt'] as DateTimeRange?);

  DateTimeRange? get $_lte => (_$data['_lte'] as DateTimeRange?);

  DateTimeRange? get $_neq => (_$data['_neq'] as DateTimeRange?);

  List<DateTimeRange>? get $_nin => (_$data['_nin'] as List<DateTimeRange>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : dateRangeToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : dateRangeToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : dateRangeToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => dateRangeToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : dateRangeToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : dateRangeToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : dateRangeToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => dateRangeToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_DaterangeComparisonExp<Input_DaterangeComparisonExp>
  get copyWith => CopyWith_Input_DaterangeComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DaterangeComparisonExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_isNull = $_isNull;
    final lOther$$_isNull = other.$_isNull;
    if (_$data.containsKey('_isNull') != other._$data.containsKey('_isNull')) {
      return false;
    }
    if (l$$_isNull != lOther$$_isNull) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_DaterangeComparisonExp<TRes> {
  factory CopyWith_Input_DaterangeComparisonExp(
    Input_DaterangeComparisonExp instance,
    TRes Function(Input_DaterangeComparisonExp) then,
  ) = _CopyWithImpl_Input_DaterangeComparisonExp;

  factory CopyWith_Input_DaterangeComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DaterangeComparisonExp;

  TRes call({
    DateTimeRange? $_eq,
    DateTimeRange? $_gt,
    DateTimeRange? $_gte,
    List<DateTimeRange>? $_in,
    bool? $_isNull,
    DateTimeRange? $_lt,
    DateTimeRange? $_lte,
    DateTimeRange? $_neq,
    List<DateTimeRange>? $_nin,
  });
}

class _CopyWithImpl_Input_DaterangeComparisonExp<TRes>
    implements CopyWith_Input_DaterangeComparisonExp<TRes> {
  _CopyWithImpl_Input_DaterangeComparisonExp(this._instance, this._then);

  final Input_DaterangeComparisonExp _instance;

  final TRes Function(Input_DaterangeComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) => _then(
    Input_DaterangeComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as DateTimeRange?),
      if ($_gt != _undefined) '_gt': ($_gt as DateTimeRange?),
      if ($_gte != _undefined) '_gte': ($_gte as DateTimeRange?),
      if ($_in != _undefined) '_in': ($_in as List<DateTimeRange>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as DateTimeRange?),
      if ($_lte != _undefined) '_lte': ($_lte as DateTimeRange?),
      if ($_neq != _undefined) '_neq': ($_neq as DateTimeRange?),
      if ($_nin != _undefined) '_nin': ($_nin as List<DateTimeRange>?),
    }),
  );
}

class _CopyWithStubImpl_Input_DaterangeComparisonExp<TRes>
    implements CopyWith_Input_DaterangeComparisonExp<TRes> {
  _CopyWithStubImpl_Input_DaterangeComparisonExp(this._res);

  TRes _res;

  call({
    DateTimeRange? $_eq,
    DateTimeRange? $_gt,
    DateTimeRange? $_gte,
    List<DateTimeRange>? $_in,
    bool? $_isNull,
    DateTimeRange? $_lt,
    DateTimeRange? $_lte,
    DateTimeRange? $_neq,
    List<DateTimeRange>? $_nin,
  }) => _res;
}

class Input_DistrictsBoolExp {
  factory Input_DistrictsBoolExp({
    List<Input_DistrictsBoolExp>? $_and,
    Input_DistrictsBoolExp? $_not,
    List<Input_DistrictsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  }) => Input_DistrictsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_DistrictsBoolExp._(this._$data);

  factory Input_DistrictsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_DistrictsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_DistrictsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_DistrictsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
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
    return Input_DistrictsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DistrictsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_DistrictsBoolExp>?);

  Input_DistrictsBoolExp? get $_not =>
      (_$data['_not'] as Input_DistrictsBoolExp?);

  List<Input_DistrictsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_DistrictsBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp> get copyWith =>
      CopyWith_Input_DistrictsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsBoolExp || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_DistrictsBoolExp<TRes> {
  factory CopyWith_Input_DistrictsBoolExp(
    Input_DistrictsBoolExp instance,
    TRes Function(Input_DistrictsBoolExp) then,
  ) = _CopyWithImpl_Input_DistrictsBoolExp;

  factory CopyWith_Input_DistrictsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsBoolExp;

  TRes call({
    List<Input_DistrictsBoolExp>? $_and,
    Input_DistrictsBoolExp? $_not,
    List<Input_DistrictsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  });
  TRes $_and(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_DistrictsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
}

class _CopyWithImpl_Input_DistrictsBoolExp<TRes>
    implements CopyWith_Input_DistrictsBoolExp<TRes> {
  _CopyWithImpl_Input_DistrictsBoolExp(this._instance, this._then);

  final Input_DistrictsBoolExp _instance;

  final TRes Function(Input_DistrictsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_DistrictsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_DistrictsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_DistrictsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_DistrictsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_DistrictsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_DistrictsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_DistrictsBoolExp.stub(_then(_instance))
        : CopyWith_Input_DistrictsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_DistrictsBoolExp(e, (i) => i)),
    )?.toList(),
  );

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
}

class _CopyWithStubImpl_Input_DistrictsBoolExp<TRes>
    implements CopyWith_Input_DistrictsBoolExp<TRes> {
  _CopyWithStubImpl_Input_DistrictsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_DistrictsBoolExp>? $_and,
    Input_DistrictsBoolExp? $_not,
    List<Input_DistrictsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_DistrictsBoolExp<TRes> get $_not =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_DistrictsInsertInput {
  factory Input_DistrictsInsertInput({String? name}) =>
      Input_DistrictsInsertInput._({if (name != null) r'name': name});

  Input_DistrictsInsertInput._(this._$data);

  factory Input_DistrictsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_DistrictsInsertInput._(result$data);
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

  CopyWith_Input_DistrictsInsertInput<Input_DistrictsInsertInput>
  get copyWith => CopyWith_Input_DistrictsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsInsertInput ||
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

abstract class CopyWith_Input_DistrictsInsertInput<TRes> {
  factory CopyWith_Input_DistrictsInsertInput(
    Input_DistrictsInsertInput instance,
    TRes Function(Input_DistrictsInsertInput) then,
  ) = _CopyWithImpl_Input_DistrictsInsertInput;

  factory CopyWith_Input_DistrictsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsInsertInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_DistrictsInsertInput<TRes>
    implements CopyWith_Input_DistrictsInsertInput<TRes> {
  _CopyWithImpl_Input_DistrictsInsertInput(this._instance, this._then);

  final Input_DistrictsInsertInput _instance;

  final TRes Function(Input_DistrictsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_DistrictsInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsInsertInput<TRes>
    implements CopyWith_Input_DistrictsInsertInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsInsertInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_DistrictsObjRelInsertInput {
  factory Input_DistrictsObjRelInsertInput({
    required Input_DistrictsInsertInput data,
    Input_DistrictsOnConflict? onConflict,
  }) => Input_DistrictsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_DistrictsObjRelInsertInput._(this._$data);

  factory Input_DistrictsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_DistrictsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_DistrictsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_DistrictsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsInsertInput get data =>
      (_$data['data'] as Input_DistrictsInsertInput);

  Input_DistrictsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_DistrictsOnConflict?);

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

  CopyWith_Input_DistrictsObjRelInsertInput<Input_DistrictsObjRelInsertInput>
  get copyWith => CopyWith_Input_DistrictsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsObjRelInsertInput ||
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
