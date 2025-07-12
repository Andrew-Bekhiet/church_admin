// Part 38 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_PersonsGroupsInsertInput<TRes> {
  factory CopyWith_Input_PersonsGroupsInsertInput(
    Input_PersonsGroupsInsertInput instance,
    TRes Function(Input_PersonsGroupsInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsGroupsInsertInput;

  factory CopyWith_Input_PersonsGroupsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsInsertInput;

  TRes call({
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  });
  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_PersonsGroupsInsertInput<TRes>
    implements CopyWith_Input_PersonsGroupsInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsGroupsInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsInsertInput _instance;

  final TRes Function(Input_PersonsGroupsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsGroupsInsertInput._({
        ..._instance._$data,
        if (group != _undefined)
          'group': (group as Input_GroupsObjRelInsertInput?),
        if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
        if (person != _undefined)
          'person': (person as Input_PersonsObjRelInsertInput?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group, (e) => call(group: e));
  }

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsInsertInput<TRes>
    implements CopyWith_Input_PersonsGroupsInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsInsertInput(this._res);

  TRes _res;

  call({
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) =>
      _res;

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group =>
      CopyWith_Input_GroupsObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_PersonsGroupsMaxOrderBy {
  factory Input_PersonsGroupsMaxOrderBy({
    Enum_OrderBy? groupId,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsGroupsMaxOrderBy._({
        if (groupId != null) r'groupId': groupId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsGroupsMaxOrderBy._(this._$data);

  factory Input_PersonsGroupsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsGroupsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsMaxOrderBy<Input_PersonsGroupsMaxOrderBy>
      get copyWith => CopyWith_Input_PersonsGroupsMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsGroupsMaxOrderBy(
    Input_PersonsGroupsMaxOrderBy instance,
    TRes Function(Input_PersonsGroupsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsGroupsMaxOrderBy;

  factory CopyWith_Input_PersonsGroupsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsMaxOrderBy;

  TRes call({
    Enum_OrderBy? groupId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_PersonsGroupsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsGroupsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsMaxOrderBy _instance;

  final TRes Function(Input_PersonsGroupsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsGroupsMaxOrderBy._({
        ..._instance._$data,
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsGroupsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? groupId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_PersonsGroupsMinOrderBy {
  factory Input_PersonsGroupsMinOrderBy({
    Enum_OrderBy? groupId,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsGroupsMinOrderBy._({
        if (groupId != null) r'groupId': groupId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsGroupsMinOrderBy._(this._$data);

  factory Input_PersonsGroupsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsGroupsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsMinOrderBy<Input_PersonsGroupsMinOrderBy>
      get copyWith => CopyWith_Input_PersonsGroupsMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsGroupsMinOrderBy(
    Input_PersonsGroupsMinOrderBy instance,
    TRes Function(Input_PersonsGroupsMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsGroupsMinOrderBy;

  factory CopyWith_Input_PersonsGroupsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsMinOrderBy;

  TRes call({
    Enum_OrderBy? groupId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_PersonsGroupsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsGroupsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsMinOrderBy _instance;

  final TRes Function(Input_PersonsGroupsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsGroupsMinOrderBy._({
        ..._instance._$data,
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsGroupsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? groupId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_PersonsGroupsOnConflict {
  factory Input_PersonsGroupsOnConflict({
    required Enum_PersonsGroupsConstraint constraint,
    List<Enum_PersonsGroupsUpdateColumn>? updateColumns,
    Input_PersonsGroupsBoolExp? where,
  }) =>
      Input_PersonsGroupsOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_PersonsGroupsOnConflict._(this._$data);

  factory Input_PersonsGroupsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_PersonsGroupsConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsGroupsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsGroupsBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_PersonsGroupsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsGroupsConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsGroupsConstraint);

  List<Enum_PersonsGroupsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsGroupsUpdateColumn>?);

  Input_PersonsGroupsBoolExp? get where =>
      (_$data['where'] as Input_PersonsGroupsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_PersonsGroupsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsGroupsUpdateColumn>)
              .map((e) => toJson_Enum_PersonsGroupsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsOnConflict<Input_PersonsGroupsOnConflict>
      get copyWith => CopyWith_Input_PersonsGroupsOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsOnConflict ||
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

abstract class CopyWith_Input_PersonsGroupsOnConflict<TRes> {
  factory CopyWith_Input_PersonsGroupsOnConflict(
    Input_PersonsGroupsOnConflict instance,
    TRes Function(Input_PersonsGroupsOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsGroupsOnConflict;

  factory CopyWith_Input_PersonsGroupsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsOnConflict;

  TRes call({
    Enum_PersonsGroupsConstraint? constraint,
    List<Enum_PersonsGroupsUpdateColumn>? updateColumns,
    Input_PersonsGroupsBoolExp? where,
  });
  CopyWith_Input_PersonsGroupsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsGroupsOnConflict<TRes>
    implements CopyWith_Input_PersonsGroupsOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsGroupsOnConflict(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsOnConflict _instance;

  final TRes Function(Input_PersonsGroupsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_PersonsGroupsOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_PersonsGroupsConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns':
              (updateColumns as List<Enum_PersonsGroupsUpdateColumn>),
        if (where != _undefined)
          'where': (where as Input_PersonsGroupsBoolExp?),
      }));

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsGroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsOnConflict<TRes>
    implements CopyWith_Input_PersonsGroupsOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsGroupsConstraint? constraint,
    List<Enum_PersonsGroupsUpdateColumn>? updateColumns,
    Input_PersonsGroupsBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsGroupsBoolExp.stub(_res);
}

class Input_PersonsGroupsOrderBy {
  factory Input_PersonsGroupsOrderBy({
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsGroupsOrderBy._({
        if (group != null) r'group': group,
        if (groupId != null) r'groupId': groupId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsGroupsOrderBy._(this._$data);

  factory Input_PersonsGroupsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    return Input_PersonsGroupsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsGroupsOrderBy<Input_PersonsGroupsOrderBy>
      get copyWith => CopyWith_Input_PersonsGroupsOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$group = group;
    final l$groupId = groupId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsOrderBy<TRes> {
  factory CopyWith_Input_PersonsGroupsOrderBy(
    Input_PersonsGroupsOrderBy instance,
    TRes Function(Input_PersonsGroupsOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsGroupsOrderBy;

  factory CopyWith_Input_PersonsGroupsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsOrderBy;

  TRes call({
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  });
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_PersonsGroupsOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsGroupsOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsOrderBy _instance;

  final TRes Function(Input_PersonsGroupsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsGroupsOrderBy._({
        ..._instance._$data,
        if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));

  CopyWith_Input_GroupsOrderBy<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsOrderBy(local$group, (e) => call(group: e));
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsOrderBy<TRes>
    implements CopyWith_Input_PersonsGroupsOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsOrderBy(this._res);

  TRes _res;

  call({
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) =>
      _res;

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_PersonsGroupsStreamCursorInput {
  factory Input_PersonsGroupsStreamCursorInput({
    required Input_PersonsGroupsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_PersonsGroupsStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_PersonsGroupsStreamCursorInput._(this._$data);

  factory Input_PersonsGroupsStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonsGroupsStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsGroupsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsGroupsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonsGroupsStreamCursorValueInput);

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

  CopyWith_Input_PersonsGroupsStreamCursorInput<
          Input_PersonsGroupsStreamCursorInput>
      get copyWith => CopyWith_Input_PersonsGroupsStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsGroupsStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsGroupsStreamCursorInput(
    Input_PersonsGroupsStreamCursorInput instance,
    TRes Function(Input_PersonsGroupsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsGroupsStreamCursorInput;

  factory CopyWith_Input_PersonsGroupsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsStreamCursorInput;

  TRes call({
    Input_PersonsGroupsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsGroupsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsGroupsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsGroupsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsGroupsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsStreamCursorInput _instance;

  final TRes Function(Input_PersonsGroupsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_PersonsGroupsStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue':
              (initialValue as Input_PersonsGroupsStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_PersonsGroupsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsGroupsStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_PersonsGroupsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsGroupsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsGroupsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_PersonsGroupsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsGroupsStreamCursorValueInput.stub(_res);
}

class Input_PersonsGroupsStreamCursorValueInput {
  factory Input_PersonsGroupsStreamCursorValueInput({
    UuidValue? groupId,
    UuidValue? personId,
  }) =>
      Input_PersonsGroupsStreamCursorValueInput._({
        if (groupId != null) r'groupId': groupId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsGroupsStreamCursorValueInput._(this._$data);

  factory Input_PersonsGroupsStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    return Input_PersonsGroupsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_PersonsGroupsStreamCursorValueInput<
          Input_PersonsGroupsStreamCursorValueInput>
      get copyWith => CopyWith_Input_PersonsGroupsStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsGroupsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsGroupsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsGroupsStreamCursorValueInput(
    Input_PersonsGroupsStreamCursorValueInput instance,
    TRes Function(Input_PersonsGroupsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsGroupsStreamCursorValueInput;

  factory CopyWith_Input_PersonsGroupsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsGroupsStreamCursorValueInput;

  TRes call({
    UuidValue? groupId,
    UuidValue? personId,
  });
}

class _CopyWithImpl_Input_PersonsGroupsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsGroupsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsGroupsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsGroupsStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsGroupsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsGroupsStreamCursorValueInput._({
        ..._instance._$data,
        if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));
}

class _CopyWithStubImpl_Input_PersonsGroupsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsGroupsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsGroupsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? groupId,
    UuidValue? personId,
  }) =>
      _res;
}

class Input_PersonsHobbiesAggregateOrderBy {
  factory Input_PersonsHobbiesAggregateOrderBy({
    Enum_OrderBy? count,
    Input_PersonsHobbiesMaxOrderBy? max,
    Input_PersonsHobbiesMinOrderBy? min,
  }) =>
      Input_PersonsHobbiesAggregateOrderBy._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input_PersonsHobbiesAggregateOrderBy._(this._$data);

  factory Input_PersonsHobbiesAggregateOrderBy.fromJson(
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
          : Input_PersonsHobbiesMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_PersonsHobbiesMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>));
    }
    return Input_PersonsHobbiesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_PersonsHobbiesMaxOrderBy? get max =>
      (_$data['max'] as Input_PersonsHobbiesMaxOrderBy?);

  Input_PersonsHobbiesMinOrderBy? get min =>
      (_$data['min'] as Input_PersonsHobbiesMinOrderBy?);

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

  CopyWith_Input_PersonsHobbiesAggregateOrderBy<
          Input_PersonsHobbiesAggregateOrderBy>
      get copyWith => CopyWith_Input_PersonsHobbiesAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesAggregateOrderBy ||
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

abstract class CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> {
  factory CopyWith_Input_PersonsHobbiesAggregateOrderBy(
    Input_PersonsHobbiesAggregateOrderBy instance,
    TRes Function(Input_PersonsHobbiesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesAggregateOrderBy;

  factory CopyWith_Input_PersonsHobbiesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_PersonsHobbiesMaxOrderBy? max,
    Input_PersonsHobbiesMinOrderBy? min,
  });
  CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> get max;
  CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_PersonsHobbiesAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesAggregateOrderBy _instance;

  final TRes Function(Input_PersonsHobbiesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input_PersonsHobbiesAggregateOrderBy._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined) 'max': (max as Input_PersonsHobbiesMaxOrderBy?),
        if (min != _undefined) 'min': (min as Input_PersonsHobbiesMinOrderBy?),
      }));

  CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_PersonsHobbiesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesMaxOrderBy(
            local$max, (e) => call(max: e));
  }

  CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_PersonsHobbiesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesMinOrderBy(
            local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_PersonsHobbiesMaxOrderBy? max,
    Input_PersonsHobbiesMinOrderBy? min,
  }) =>
      _res;

  CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> get max =>
      CopyWith_Input_PersonsHobbiesMaxOrderBy.stub(_res);

  CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> get min =>
      CopyWith_Input_PersonsHobbiesMinOrderBy.stub(_res);
}

class Input_PersonsHobbiesArrRelInsertInput {
  factory Input_PersonsHobbiesArrRelInsertInput({
    required List<Input_PersonsHobbiesInsertInput> data,
    Input_PersonsHobbiesOnConflict? onConflict,
  }) =>
      Input_PersonsHobbiesArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_PersonsHobbiesArrRelInsertInput._(this._$data);

  factory Input_PersonsHobbiesArrRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) => Input_PersonsHobbiesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsHobbiesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_PersonsHobbiesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsHobbiesInsertInput> get data =>
      (_$data['data'] as List<Input_PersonsHobbiesInsertInput>);

  Input_PersonsHobbiesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsHobbiesOnConflict?);

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

  CopyWith_Input_PersonsHobbiesArrRelInsertInput<
          Input_PersonsHobbiesArrRelInsertInput>
      get copyWith => CopyWith_Input_PersonsHobbiesArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesArrRelInsertInput ||
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

abstract class CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesArrRelInsertInput(
    Input_PersonsHobbiesArrRelInsertInput instance,
    TRes Function(Input_PersonsHobbiesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesArrRelInsertInput;

  factory CopyWith_Input_PersonsHobbiesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesArrRelInsertInput;

  TRes call({
    List<Input_PersonsHobbiesInsertInput>? data,
    Input_PersonsHobbiesOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_PersonsHobbiesInsertInput> Function(
              Iterable<
                  CopyWith_Input_PersonsHobbiesInsertInput<
                      Input_PersonsHobbiesInsertInput>>)
          _fn);
  CopyWith_Input_PersonsHobbiesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsHobbiesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesArrRelInsertInput _instance;

  final TRes Function(Input_PersonsHobbiesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_PersonsHobbiesArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_PersonsHobbiesInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_PersonsHobbiesOnConflict?),
      }));

  TRes data(
          Iterable<Input_PersonsHobbiesInsertInput> Function(
                  Iterable<
                      CopyWith_Input_PersonsHobbiesInsertInput<
                          Input_PersonsHobbiesInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_PersonsHobbiesInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_PersonsHobbiesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsHobbiesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsHobbiesInsertInput>? data,
    Input_PersonsHobbiesOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsHobbiesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsHobbiesOnConflict.stub(_res);
}

class Input_PersonsHobbiesBoolExp {
  factory Input_PersonsHobbiesBoolExp({
    List<Input_PersonsHobbiesBoolExp>? $_and,
    Input_PersonsHobbiesBoolExp? $_not,
    List<Input_PersonsHobbiesBoolExp>? $_or,
    Input_HobbiesBoolExp? hobby,
    Input_UuidComparisonExp? hobbyId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) =>
      Input_PersonsHobbiesBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (hobby != null) r'hobby': hobby,
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesBoolExp._(this._$data);

  factory Input_PersonsHobbiesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input_PersonsHobbiesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsHobbiesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input_PersonsHobbiesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hobby')) {
      final l$hobby = data['hobby'];
      result$data['hobby'] = l$hobby == null
          ? null
          : Input_HobbiesBoolExp.fromJson((l$hobby as Map<String, dynamic>));
    }
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$hobbyId as Map<String, dynamic>));
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
    return Input_PersonsHobbiesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsHobbiesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsHobbiesBoolExp>?);

  Input_PersonsHobbiesBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsHobbiesBoolExp?);

  List<Input_PersonsHobbiesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsHobbiesBoolExp>?);

  Input_HobbiesBoolExp? get hobby => (_$data['hobby'] as Input_HobbiesBoolExp?);

  Input_UuidComparisonExp? get hobbyId =>
      (_$data['hobbyId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('hobby')) {
      final l$hobby = hobby;
      result$data['hobby'] = l$hobby?.toJson();
    }
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] = l$hobbyId?.toJson();
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

  CopyWith_Input_PersonsHobbiesBoolExp<Input_PersonsHobbiesBoolExp>
      get copyWith => CopyWith_Input_PersonsHobbiesBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesBoolExp ||
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
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (_$data.containsKey('hobby') != other._$data.containsKey('hobby')) {
      return false;
    }
    if (l$hobby != lOther$hobby) {
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
    final l$hobby = hobby;
    final l$hobbyId = hobbyId;
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
      _$data.containsKey('hobby') ? l$hobby : const {},
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesBoolExp<TRes> {
  factory CopyWith_Input_PersonsHobbiesBoolExp(
    Input_PersonsHobbiesBoolExp instance,
    TRes Function(Input_PersonsHobbiesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesBoolExp;

  factory CopyWith_Input_PersonsHobbiesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesBoolExp;

  TRes call({
    List<Input_PersonsHobbiesBoolExp>? $_and,
    Input_PersonsHobbiesBoolExp? $_not,
    List<Input_PersonsHobbiesBoolExp>? $_or,
    Input_HobbiesBoolExp? hobby,
    Input_UuidComparisonExp? hobbyId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
      Iterable<Input_PersonsHobbiesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_PersonsHobbiesBoolExp<
                      Input_PersonsHobbiesBoolExp>>?)
          _fn);
  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_PersonsHobbiesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_PersonsHobbiesBoolExp<
                      Input_PersonsHobbiesBoolExp>>?)
          _fn);
  CopyWith_Input_HobbiesBoolExp<TRes> get hobby;
  CopyWith_Input_UuidComparisonExp<TRes> get hobbyId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_PersonsHobbiesBoolExp<TRes>
    implements CopyWith_Input_PersonsHobbiesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesBoolExp(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesBoolExp _instance;

  final TRes Function(Input_PersonsHobbiesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? hobby = _undefined,
    Object? hobbyId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_PersonsHobbiesBoolExp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input_PersonsHobbiesBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_PersonsHobbiesBoolExp>?),
        if (hobby != _undefined) 'hobby': (hobby as Input_HobbiesBoolExp?),
        if (hobbyId != _undefined)
          'hobbyId': (hobbyId as Input_UuidComparisonExp?),
        if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
        if (personId != _undefined)
          'personId': (personId as Input_UuidComparisonExp?),
      }));

  TRes $_and(
          Iterable<Input_PersonsHobbiesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_PersonsHobbiesBoolExp<
                          Input_PersonsHobbiesBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(
              _instance.$_and?.map((e) => CopyWith_Input_PersonsHobbiesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsHobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsHobbiesBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_PersonsHobbiesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_PersonsHobbiesBoolExp<
                          Input_PersonsHobbiesBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(
              _instance.$_or?.map((e) => CopyWith_Input_PersonsHobbiesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_HobbiesBoolExp<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return local$hobby == null
        ? CopyWith_Input_HobbiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_HobbiesBoolExp(local$hobby, (e) => call(hobby: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get hobbyId {
    final local$hobbyId = _instance.hobbyId;
    return local$hobbyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$hobbyId, (e) => call(hobbyId: e));
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
            local$personId, (e) => call(personId: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesBoolExp<TRes>
    implements CopyWith_Input_PersonsHobbiesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsHobbiesBoolExp>? $_and,
    Input_PersonsHobbiesBoolExp? $_not,
    List<Input_PersonsHobbiesBoolExp>? $_or,
    Input_HobbiesBoolExp? hobby,
    Input_UuidComparisonExp? hobbyId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsHobbiesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsHobbiesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HobbiesBoolExp<TRes> get hobby =>
      CopyWith_Input_HobbiesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get hobbyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsHobbiesInsertInput {
  factory Input_PersonsHobbiesInsertInput({
    Input_HobbiesObjRelInsertInput? hobby,
    UuidValue? hobbyId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) =>
      Input_PersonsHobbiesInsertInput._({
        if (hobby != null) r'hobby': hobby,
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (person != null) r'person': person,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesInsertInput._(this._$data);

  factory Input_PersonsHobbiesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobby')) {
      final l$hobby = data['hobby'];
      result$data['hobby'] = l$hobby == null
          ? null
          : Input_HobbiesObjRelInsertInput.fromJson(
              (l$hobby as Map<String, dynamic>));
    }
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] =
          l$hobbyId == null ? null : stringToUuid(l$hobbyId);
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsObjRelInsertInput.fromJson(
              (l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    return Input_PersonsHobbiesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesObjRelInsertInput? get hobby =>
      (_$data['hobby'] as Input_HobbiesObjRelInsertInput?);

  UuidValue? get hobbyId => (_$data['hobbyId'] as UuidValue?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobby')) {
      final l$hobby = hobby;
      result$data['hobby'] = l$hobby?.toJson();
    }
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : uuidToString(l$hobbyId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesInsertInput<Input_PersonsHobbiesInsertInput>
      get copyWith => CopyWith_Input_PersonsHobbiesInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (_$data.containsKey('hobby') != other._$data.containsKey('hobby')) {
      return false;
    }
    if (l$hobby != lOther$hobby) {
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
    final l$hobby = hobby;
    final l$hobbyId = hobbyId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobby') ? l$hobby : const {},
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesInsertInput<TRes> {
  factory CopyWith_Input_PersonsHobbiesInsertInput(
    Input_PersonsHobbiesInsertInput instance,
    TRes Function(Input_PersonsHobbiesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesInsertInput;

  factory CopyWith_Input_PersonsHobbiesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesInsertInput;

  TRes call({
    Input_HobbiesObjRelInsertInput? hobby,
    UuidValue? hobbyId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  });
  CopyWith_Input_HobbiesObjRelInsertInput<TRes> get hobby;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_PersonsHobbiesInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesInsertInput _instance;

  final TRes Function(Input_PersonsHobbiesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? hobbyId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesInsertInput._({
        ..._instance._$data,
        if (hobby != _undefined)
          'hobby': (hobby as Input_HobbiesObjRelInsertInput?),
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as UuidValue?),
        if (person != _undefined)
          'person': (person as Input_PersonsObjRelInsertInput?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));

  CopyWith_Input_HobbiesObjRelInsertInput<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return local$hobby == null
        ? CopyWith_Input_HobbiesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_HobbiesObjRelInsertInput(
            local$hobby, (e) => call(hobby: e));
  }

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_PersonsHobbiesInsertInput<TRes>
    implements CopyWith_Input_PersonsHobbiesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesInsertInput(this._res);

  TRes _res;

  call({
    Input_HobbiesObjRelInsertInput? hobby,
    UuidValue? hobbyId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) =>
      _res;

  CopyWith_Input_HobbiesObjRelInsertInput<TRes> get hobby =>
      CopyWith_Input_HobbiesObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_PersonsHobbiesMaxOrderBy {
  factory Input_PersonsHobbiesMaxOrderBy({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsHobbiesMaxOrderBy._({
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesMaxOrderBy._(this._$data);

  factory Input_PersonsHobbiesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : fromJson_Enum_OrderBy((l$hobbyId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsHobbiesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get hobbyId => (_$data['hobbyId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : toJson_Enum_OrderBy(l$hobbyId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesMaxOrderBy<Input_PersonsHobbiesMaxOrderBy>
      get copyWith => CopyWith_Input_PersonsHobbiesMaxOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$hobbyId = hobbyId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsHobbiesMaxOrderBy(
    Input_PersonsHobbiesMaxOrderBy instance,
    TRes Function(Input_PersonsHobbiesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesMaxOrderBy;

  factory CopyWith_Input_PersonsHobbiesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesMaxOrderBy;

  TRes call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_PersonsHobbiesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesMaxOrderBy _instance;

  final TRes Function(Input_PersonsHobbiesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobbyId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesMaxOrderBy._({
        ..._instance._$data,
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsHobbiesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_PersonsHobbiesMinOrderBy {
  factory Input_PersonsHobbiesMinOrderBy({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      Input_PersonsHobbiesMinOrderBy._({
        if (hobbyId != null) r'hobbyId': hobbyId,
        if (personId != null) r'personId': personId,
      });

  Input_PersonsHobbiesMinOrderBy._(this._$data);

  factory Input_PersonsHobbiesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('hobbyId')) {
      final l$hobbyId = data['hobbyId'];
      result$data['hobbyId'] = l$hobbyId == null
          ? null
          : fromJson_Enum_OrderBy((l$hobbyId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_PersonsHobbiesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get hobbyId => (_$data['hobbyId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('hobbyId')) {
      final l$hobbyId = hobbyId;
      result$data['hobbyId'] =
          l$hobbyId == null ? null : toJson_Enum_OrderBy(l$hobbyId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesMinOrderBy<Input_PersonsHobbiesMinOrderBy>
      get copyWith => CopyWith_Input_PersonsHobbiesMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$hobbyId = hobbyId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('hobbyId') ? l$hobbyId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsHobbiesMinOrderBy(
    Input_PersonsHobbiesMinOrderBy instance,
    TRes Function(Input_PersonsHobbiesMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsHobbiesMinOrderBy;

  factory CopyWith_Input_PersonsHobbiesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsHobbiesMinOrderBy;

  TRes call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  });
}

class _CopyWithImpl_Input_PersonsHobbiesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsHobbiesMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsHobbiesMinOrderBy _instance;

  final TRes Function(Input_PersonsHobbiesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobbyId = _undefined,
    Object? personId = _undefined,
  }) =>
      _then(Input_PersonsHobbiesMinOrderBy._({
        ..._instance._$data,
        if (hobbyId != _undefined) 'hobbyId': (hobbyId as Enum_OrderBy?),
        if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsHobbiesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsHobbiesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsHobbiesMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? hobbyId,
    Enum_OrderBy? personId,
  }) =>
      _res;
}

class Input_PersonsHobbiesOnConflict {
  factory Input_PersonsHobbiesOnConflict({
    required Enum_PersonsHobbiesConstraint constraint,
    List<Enum_PersonsHobbiesUpdateColumn>? updateColumns,
    Input_PersonsHobbiesBoolExp? where,
  }) =>
      Input_PersonsHobbiesOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_PersonsHobbiesOnConflict._(this._$data);

  factory Input_PersonsHobbiesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_PersonsHobbiesConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsHobbiesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsHobbiesBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_PersonsHobbiesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsHobbiesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsHobbiesConstraint);

  List<Enum_PersonsHobbiesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsHobbiesUpdateColumn>?);

  Input_PersonsHobbiesBoolExp? get where =>
      (_$data['where'] as Input_PersonsHobbiesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_PersonsHobbiesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsHobbiesUpdateColumn>)
              .map((e) => toJson_Enum_PersonsHobbiesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsHobbiesOnConflict<Input_PersonsHobbiesOnConflict>
      get copyWith => CopyWith_Input_PersonsHobbiesOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsHobbiesOnConflict ||
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
