// Part 51 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsTagsBoolExp<TRes> {
  factory CopyWith_Input_PersonsTagsBoolExp(
    Input_PersonsTagsBoolExp instance,
    TRes Function(Input_PersonsTagsBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsTagsBoolExp;

  factory CopyWith_Input_PersonsTagsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsBoolExp;

  TRes call({
    List<Input_PersonsTagsBoolExp>? $_and,
    Input_PersonsTagsBoolExp? $_not,
    List<Input_PersonsTagsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TagsBoolExp? tag,
    Input_UuidComparisonExp? tagId,
  });
  TRes $_and(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonsTagsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_TagsBoolExp<TRes> get tag;
  CopyWith_Input_UuidComparisonExp<TRes> get tagId;
}

class _CopyWithImpl_Input_PersonsTagsBoolExp<TRes>
    implements CopyWith_Input_PersonsTagsBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsTagsBoolExp(this._instance, this._then);

  final Input_PersonsTagsBoolExp _instance;

  final TRes Function(Input_PersonsTagsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? tag = _undefined,
    Object? tagId = _undefined,
  }) => _then(
    Input_PersonsTagsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsTagsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonsTagsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_PersonsTagsBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (tag != _undefined) 'tag': (tag as Input_TagsBoolExp?),
      if (tagId != _undefined) 'tagId': (tagId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsTagsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsTagsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsTagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_PersonsTagsBoolExp>? Function(
      Iterable<CopyWith_Input_PersonsTagsBoolExp<Input_PersonsTagsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsTagsBoolExp(e, (i) => i),
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

  CopyWith_Input_TagsBoolExp<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith_Input_TagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_TagsBoolExp(local$tag, (e) => call(tag: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get tagId {
    final local$tagId = _instance.tagId;
    return local$tagId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$tagId, (e) => call(tagId: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsBoolExp<TRes>
    implements CopyWith_Input_PersonsTagsBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsTagsBoolExp>? $_and,
    Input_PersonsTagsBoolExp? $_not,
    List<Input_PersonsTagsBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TagsBoolExp? tag,
    Input_UuidComparisonExp? tagId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsTagsBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TagsBoolExp<TRes> get tag =>
      CopyWith_Input_TagsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get tagId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsTagsInsertInput {
  factory Input_PersonsTagsInsertInput({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_TagsObjRelInsertInput? tag,
    UuidValue? tagId,
  }) => Input_PersonsTagsInsertInput._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (tag != null) r'tag': tag,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsInsertInput._(this._$data);

  factory Input_PersonsTagsInsertInput.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('tag')) {
      final l$tag = data['tag'];
      result$data['tag'] = l$tag == null
          ? null
          : Input_TagsObjRelInsertInput.fromJson(
              (l$tag as Map<String, dynamic>),
            );
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null ? null : stringToUuid(l$tagId);
    }
    return Input_PersonsTagsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Input_TagsObjRelInsertInput? get tag =>
      (_$data['tag'] as Input_TagsObjRelInsertInput?);

  UuidValue? get tagId => (_$data['tagId'] as UuidValue?);

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
    if (_$data.containsKey('tag')) {
      final l$tag = tag;
      result$data['tag'] = l$tag?.toJson();
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null ? null : uuidToString(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsInsertInput<Input_PersonsTagsInsertInput>
  get copyWith => CopyWith_Input_PersonsTagsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsInsertInput ||
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
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (_$data.containsKey('tag') != other._$data.containsKey('tag')) {
      return false;
    }
    if (l$tag != lOther$tag) {
      return false;
    }
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (_$data.containsKey('tagId') != other._$data.containsKey('tagId')) {
      return false;
    }
    if (l$tagId != lOther$tagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$personId = personId;
    final l$tag = tag;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tag') ? l$tag : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsInsertInput<TRes> {
  factory CopyWith_Input_PersonsTagsInsertInput(
    Input_PersonsTagsInsertInput instance,
    TRes Function(Input_PersonsTagsInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsInsertInput;

  factory CopyWith_Input_PersonsTagsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsInsertInput;

  TRes call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_TagsObjRelInsertInput? tag,
    UuidValue? tagId,
  });
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
  CopyWith_Input_TagsObjRelInsertInput<TRes> get tag;
}

class _CopyWithImpl_Input_PersonsTagsInsertInput<TRes>
    implements CopyWith_Input_PersonsTagsInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsInsertInput(this._instance, this._then);

  final Input_PersonsTagsInsertInput _instance;

  final TRes Function(Input_PersonsTagsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? tag = _undefined,
    Object? tagId = _undefined,
  }) => _then(
    Input_PersonsTagsInsertInput._({
      ..._instance._$data,
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (tag != _undefined) 'tag': (tag as Input_TagsObjRelInsertInput?),
      if (tagId != _undefined) 'tagId': (tagId as UuidValue?),
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

  CopyWith_Input_TagsObjRelInsertInput<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith_Input_TagsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_TagsObjRelInsertInput(local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsInsertInput<TRes>
    implements CopyWith_Input_PersonsTagsInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_TagsObjRelInsertInput? tag,
    UuidValue? tagId,
  }) => _res;

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);

  CopyWith_Input_TagsObjRelInsertInput<TRes> get tag =>
      CopyWith_Input_TagsObjRelInsertInput.stub(_res);
}

class Input_PersonsTagsMaxOrderBy {
  factory Input_PersonsTagsMaxOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? tagId,
  }) => Input_PersonsTagsMaxOrderBy._({
    if (personId != null) r'personId': personId,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsMaxOrderBy._(this._$data);

  factory Input_PersonsTagsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : fromJson_Enum_OrderBy((l$tagId as String));
    }
    return Input_PersonsTagsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get tagId => (_$data['tagId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null
          ? null
          : toJson_Enum_OrderBy(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsMaxOrderBy<Input_PersonsTagsMaxOrderBy>
  get copyWith => CopyWith_Input_PersonsTagsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsMaxOrderBy ||
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
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (_$data.containsKey('tagId') != other._$data.containsKey('tagId')) {
      return false;
    }
    if (l$tagId != lOther$tagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsMaxOrderBy(
    Input_PersonsTagsMaxOrderBy instance,
    TRes Function(Input_PersonsTagsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsMaxOrderBy;

  factory CopyWith_Input_PersonsTagsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsMaxOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? tagId});
}

class _CopyWithImpl_Input_PersonsTagsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsMaxOrderBy(this._instance, this._then);

  final Input_PersonsTagsMaxOrderBy _instance;

  final TRes Function(Input_PersonsTagsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? tagId = _undefined}) =>
      _then(
        Input_PersonsTagsMaxOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (tagId != _undefined) 'tagId': (tagId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsTagsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? tagId}) => _res;
}

class Input_PersonsTagsMinOrderBy {
  factory Input_PersonsTagsMinOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? tagId,
  }) => Input_PersonsTagsMinOrderBy._({
    if (personId != null) r'personId': personId,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsMinOrderBy._(this._$data);

  factory Input_PersonsTagsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : fromJson_Enum_OrderBy((l$tagId as String));
    }
    return Input_PersonsTagsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get tagId => (_$data['tagId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null
          ? null
          : toJson_Enum_OrderBy(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsMinOrderBy<Input_PersonsTagsMinOrderBy>
  get copyWith => CopyWith_Input_PersonsTagsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsMinOrderBy ||
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
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (_$data.containsKey('tagId') != other._$data.containsKey('tagId')) {
      return false;
    }
    if (l$tagId != lOther$tagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsMinOrderBy(
    Input_PersonsTagsMinOrderBy instance,
    TRes Function(Input_PersonsTagsMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsMinOrderBy;

  factory CopyWith_Input_PersonsTagsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsMinOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? tagId});
}

class _CopyWithImpl_Input_PersonsTagsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsMinOrderBy(this._instance, this._then);

  final Input_PersonsTagsMinOrderBy _instance;

  final TRes Function(Input_PersonsTagsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? tagId = _undefined}) =>
      _then(
        Input_PersonsTagsMinOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (tagId != _undefined) 'tagId': (tagId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsTagsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? tagId}) => _res;
}

class Input_PersonsTagsOnConflict {
  factory Input_PersonsTagsOnConflict({
    required Enum_PersonsTagsConstraint constraint,
    List<Enum_PersonsTagsUpdateColumn>? updateColumns,
    Input_PersonsTagsBoolExp? where,
  }) => Input_PersonsTagsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonsTagsOnConflict._(this._$data);

  factory Input_PersonsTagsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonsTagsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsTagsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsTagsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonsTagsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsTagsConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsTagsConstraint);

  List<Enum_PersonsTagsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsTagsUpdateColumn>?);

  Input_PersonsTagsBoolExp? get where =>
      (_$data['where'] as Input_PersonsTagsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsTagsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsTagsUpdateColumn>)
              .map((e) => toJson_Enum_PersonsTagsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsOnConflict<Input_PersonsTagsOnConflict>
  get copyWith => CopyWith_Input_PersonsTagsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsOnConflict ||
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

abstract class CopyWith_Input_PersonsTagsOnConflict<TRes> {
  factory CopyWith_Input_PersonsTagsOnConflict(
    Input_PersonsTagsOnConflict instance,
    TRes Function(Input_PersonsTagsOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsTagsOnConflict;

  factory CopyWith_Input_PersonsTagsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsOnConflict;

  TRes call({
    Enum_PersonsTagsConstraint? constraint,
    List<Enum_PersonsTagsUpdateColumn>? updateColumns,
    Input_PersonsTagsBoolExp? where,
  });
  CopyWith_Input_PersonsTagsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsTagsOnConflict<TRes>
    implements CopyWith_Input_PersonsTagsOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsTagsOnConflict(this._instance, this._then);

  final Input_PersonsTagsOnConflict _instance;

  final TRes Function(Input_PersonsTagsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonsTagsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_PersonsTagsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_PersonsTagsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_PersonsTagsBoolExp?),
    }),
  );

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsTagsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsTagsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsOnConflict<TRes>
    implements CopyWith_Input_PersonsTagsOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsTagsConstraint? constraint,
    List<Enum_PersonsTagsUpdateColumn>? updateColumns,
    Input_PersonsTagsBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);
}

class Input_PersonsTagsOrderBy {
  factory Input_PersonsTagsOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_TagsOrderBy? tag,
    Enum_OrderBy? tagId,
  }) => Input_PersonsTagsOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (tag != null) r'tag': tag,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsOrderBy._(this._$data);

  factory Input_PersonsTagsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('tag')) {
      final l$tag = data['tag'];
      result$data['tag'] = l$tag == null
          ? null
          : Input_TagsOrderBy.fromJson((l$tag as Map<String, dynamic>));
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null
          ? null
          : fromJson_Enum_OrderBy((l$tagId as String));
    }
    return Input_PersonsTagsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Input_TagsOrderBy? get tag => (_$data['tag'] as Input_TagsOrderBy?);

  Enum_OrderBy? get tagId => (_$data['tagId'] as Enum_OrderBy?);

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
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('tag')) {
      final l$tag = tag;
      result$data['tag'] = l$tag?.toJson();
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null
          ? null
          : toJson_Enum_OrderBy(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsOrderBy<Input_PersonsTagsOrderBy> get copyWith =>
      CopyWith_Input_PersonsTagsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsOrderBy ||
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
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (_$data.containsKey('tag') != other._$data.containsKey('tag')) {
      return false;
    }
    if (l$tag != lOther$tag) {
      return false;
    }
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (_$data.containsKey('tagId') != other._$data.containsKey('tagId')) {
      return false;
    }
    if (l$tagId != lOther$tagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$personId = personId;
    final l$tag = tag;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tag') ? l$tag : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsOrderBy<TRes> {
  factory CopyWith_Input_PersonsTagsOrderBy(
    Input_PersonsTagsOrderBy instance,
    TRes Function(Input_PersonsTagsOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsTagsOrderBy;

  factory CopyWith_Input_PersonsTagsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsOrderBy;

  TRes call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_TagsOrderBy? tag,
    Enum_OrderBy? tagId,
  });
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_TagsOrderBy<TRes> get tag;
}

class _CopyWithImpl_Input_PersonsTagsOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsTagsOrderBy(this._instance, this._then);

  final Input_PersonsTagsOrderBy _instance;

  final TRes Function(Input_PersonsTagsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? tag = _undefined,
    Object? tagId = _undefined,
  }) => _then(
    Input_PersonsTagsOrderBy._({
      ..._instance._$data,
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (tag != _undefined) 'tag': (tag as Input_TagsOrderBy?),
      if (tagId != _undefined) 'tagId': (tagId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_TagsOrderBy<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith_Input_TagsOrderBy.stub(_then(_instance))
        : CopyWith_Input_TagsOrderBy(local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Input_PersonsTagsOrderBy<TRes>
    implements CopyWith_Input_PersonsTagsOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsOrderBy(this._res);

  TRes _res;

  call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_TagsOrderBy? tag,
    Enum_OrderBy? tagId,
  }) => _res;

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_TagsOrderBy<TRes> get tag =>
      CopyWith_Input_TagsOrderBy.stub(_res);
}

class Input_PersonsTagsStreamCursorInput {
  factory Input_PersonsTagsStreamCursorInput({
    required Input_PersonsTagsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonsTagsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonsTagsStreamCursorInput._(this._$data);

  factory Input_PersonsTagsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonsTagsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsTagsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsTagsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonsTagsStreamCursorValueInput);

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

  CopyWith_Input_PersonsTagsStreamCursorInput<
    Input_PersonsTagsStreamCursorInput
  >
  get copyWith => CopyWith_Input_PersonsTagsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsTagsStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsTagsStreamCursorInput(
    Input_PersonsTagsStreamCursorInput instance,
    TRes Function(Input_PersonsTagsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsStreamCursorInput;

  factory CopyWith_Input_PersonsTagsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsStreamCursorInput;

  TRes call({
    Input_PersonsTagsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsTagsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsStreamCursorInput(this._instance, this._then);

  final Input_PersonsTagsStreamCursorInput _instance;

  final TRes Function(Input_PersonsTagsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonsTagsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonsTagsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsTagsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsTagsStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsTagsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsTagsStreamCursorValueInput.stub(_res);
}

class Input_PersonsTagsStreamCursorValueInput {
  factory Input_PersonsTagsStreamCursorValueInput({
    UuidValue? personId,
    UuidValue? tagId,
  }) => Input_PersonsTagsStreamCursorValueInput._({
    if (personId != null) r'personId': personId,
    if (tagId != null) r'tagId': tagId,
  });

  Input_PersonsTagsStreamCursorValueInput._(this._$data);

  factory Input_PersonsTagsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('tagId')) {
      final l$tagId = data['tagId'];
      result$data['tagId'] = l$tagId == null ? null : stringToUuid(l$tagId);
    }
    return Input_PersonsTagsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get tagId => (_$data['tagId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('tagId')) {
      final l$tagId = tagId;
      result$data['tagId'] = l$tagId == null ? null : uuidToString(l$tagId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsTagsStreamCursorValueInput<
    Input_PersonsTagsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonsTagsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsStreamCursorValueInput ||
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
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (_$data.containsKey('tagId') != other._$data.containsKey('tagId')) {
      return false;
    }
    if (l$tagId != lOther$tagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$tagId = tagId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('tagId') ? l$tagId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsTagsStreamCursorValueInput(
    Input_PersonsTagsStreamCursorValueInput instance,
    TRes Function(Input_PersonsTagsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsTagsStreamCursorValueInput;

  factory CopyWith_Input_PersonsTagsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsStreamCursorValueInput;

  TRes call({UuidValue? personId, UuidValue? tagId});
}

class _CopyWithImpl_Input_PersonsTagsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsTagsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsTagsStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsTagsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? tagId = _undefined}) =>
      _then(
        Input_PersonsTagsStreamCursorValueInput._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as UuidValue?),
          if (tagId != _undefined) 'tagId': (tagId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsTagsStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsTagsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? personId, UuidValue? tagId}) => _res;
}

class Input_PersonsTagsUpdates {
  factory Input_PersonsTagsUpdates({required Input_PersonsTagsBoolExp where}) =>
      Input_PersonsTagsUpdates._({r'where': where});

  Input_PersonsTagsUpdates._(this._$data);

  factory Input_PersonsTagsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input_PersonsTagsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonsTagsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsTagsBoolExp get where =>
      (_$data['where'] as Input_PersonsTagsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_PersonsTagsUpdates<Input_PersonsTagsUpdates> get copyWith =>
      CopyWith_Input_PersonsTagsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsTagsUpdates ||
        runtimeType != other.runtimeType) {
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
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith_Input_PersonsTagsUpdates<TRes> {
  factory CopyWith_Input_PersonsTagsUpdates(
    Input_PersonsTagsUpdates instance,
    TRes Function(Input_PersonsTagsUpdates) then,
  ) = _CopyWithImpl_Input_PersonsTagsUpdates;

  factory CopyWith_Input_PersonsTagsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsTagsUpdates;

  TRes call({Input_PersonsTagsBoolExp? where});
  CopyWith_Input_PersonsTagsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsTagsUpdates<TRes>
    implements CopyWith_Input_PersonsTagsUpdates<TRes> {
  _CopyWithImpl_Input_PersonsTagsUpdates(this._instance, this._then);

  final Input_PersonsTagsUpdates _instance;

  final TRes Function(Input_PersonsTagsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(
    Input_PersonsTagsUpdates._({
      ..._instance._$data,
      if (where != _undefined && where != null)
        'where': (where as Input_PersonsTagsBoolExp),
    }),
  );

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonsTagsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsTagsUpdates<TRes>
    implements CopyWith_Input_PersonsTagsUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonsTagsUpdates(this._res);

  TRes _res;

  call({Input_PersonsTagsBoolExp? where}) => _res;

  CopyWith_Input_PersonsTagsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsTagsBoolExp.stub(_res);
}

class Input_PersonsUpdates {
  factory Input_PersonsUpdates({
    Input_PersonsIncInput? $_inc,
    Input_PersonsSetInput? $_set,
    required Input_PersonsBoolExp where,
  }) => Input_PersonsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_PersonsUpdates._(this._$data);

  factory Input_PersonsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_PersonsIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_PersonsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_PersonsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsIncInput? get $_inc =>
      (_$data['_inc'] as Input_PersonsIncInput?);

  Input_PersonsSetInput? get $_set =>
      (_$data['_set'] as Input_PersonsSetInput?);

  Input_PersonsBoolExp get where => (_$data['where'] as Input_PersonsBoolExp);

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

  CopyWith_Input_PersonsUpdates<Input_PersonsUpdates> get copyWith =>
      CopyWith_Input_PersonsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_PersonsUpdates<TRes> {
  factory CopyWith_Input_PersonsUpdates(
    Input_PersonsUpdates instance,
    TRes Function(Input_PersonsUpdates) then,
  ) = _CopyWithImpl_Input_PersonsUpdates;

  factory CopyWith_Input_PersonsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsUpdates;

  TRes call({
    Input_PersonsIncInput? $_inc,
    Input_PersonsSetInput? $_set,
    Input_PersonsBoolExp? where,
  });
  CopyWith_Input_PersonsIncInput<TRes> get $_inc;
  CopyWith_Input_PersonsSetInput<TRes> get $_set;
  CopyWith_Input_PersonsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsUpdates<TRes>
    implements CopyWith_Input_PersonsUpdates<TRes> {
  _CopyWithImpl_Input_PersonsUpdates(this._instance, this._then);

  final Input_PersonsUpdates _instance;

  final TRes Function(Input_PersonsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_PersonsIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_PersonsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_PersonsBoolExp),
    }),
  );

  CopyWith_Input_PersonsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_PersonsIncInput.stub(_then(_instance))
        : CopyWith_Input_PersonsIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_PersonsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_PersonsSetInput.stub(_then(_instance))
        : CopyWith_Input_PersonsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsUpdates<TRes>
    implements CopyWith_Input_PersonsUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonsUpdates(this._res);

  TRes _res;

  call({
    Input_PersonsIncInput? $_inc,
    Input_PersonsSetInput? $_set,
    Input_PersonsBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonsIncInput<TRes> get $_inc =>
      CopyWith_Input_PersonsIncInput.stub(_res);

  CopyWith_Input_PersonsSetInput<TRes> get $_set =>
      CopyWith_Input_PersonsSetInput.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsBoolExp.stub(_res);
}

class Input_PersonsVarPopOrderBy {
  factory Input_PersonsVarPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsVarPopOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsVarPopOrderBy._(this._$data);

  factory Input_PersonsVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsVarPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsVarPopOrderBy<Input_PersonsVarPopOrderBy>
  get copyWith => CopyWith_Input_PersonsVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsVarPopOrderBy ||
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsVarPopOrderBy<TRes> {
  factory CopyWith_Input_PersonsVarPopOrderBy(
    Input_PersonsVarPopOrderBy instance,
    TRes Function(Input_PersonsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsVarPopOrderBy;

  factory CopyWith_Input_PersonsVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsVarPopOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsVarPopOrderBy<TRes>
    implements CopyWith_Input_PersonsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsVarPopOrderBy(this._instance, this._then);

  final Input_PersonsVarPopOrderBy _instance;

  final TRes Function(Input_PersonsVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsVarPopOrderBy<TRes>
    implements CopyWith_Input_PersonsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsVarPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsVarSampOrderBy {
  factory Input_PersonsVarSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsVarSampOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsVarSampOrderBy._(this._$data);

  factory Input_PersonsVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsVarSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsVarSampOrderBy<Input_PersonsVarSampOrderBy>
  get copyWith => CopyWith_Input_PersonsVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsVarSampOrderBy ||
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsVarSampOrderBy<TRes> {
  factory CopyWith_Input_PersonsVarSampOrderBy(
    Input_PersonsVarSampOrderBy instance,
    TRes Function(Input_PersonsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsVarSampOrderBy;

  factory CopyWith_Input_PersonsVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsVarSampOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsVarSampOrderBy<TRes>
    implements CopyWith_Input_PersonsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsVarSampOrderBy(this._instance, this._then);

  final Input_PersonsVarSampOrderBy _instance;

  final TRes Function(Input_PersonsVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsVarSampOrderBy<TRes>
    implements CopyWith_Input_PersonsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsVarSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_PersonsVarianceOrderBy {
  factory Input_PersonsVarianceOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => Input_PersonsVarianceOrderBy._({
    if (color != null) r'color': color,
    if (nationalId != null) r'nationalId': nationalId,
    if (studyYearId != null) r'studyYearId': studyYearId,
  });

  Input_PersonsVarianceOrderBy._(this._$data);

  factory Input_PersonsVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = l$nationalId == null
          ? null
          : fromJson_Enum_OrderBy((l$nationalId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    return Input_PersonsVarianceOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get nationalId => (_$data['nationalId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId == null
          ? null
          : toJson_Enum_OrderBy(l$nationalId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsVarianceOrderBy<Input_PersonsVarianceOrderBy>
  get copyWith => CopyWith_Input_PersonsVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsVarianceOrderBy ||
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$nationalId = nationalId;
    final l$studyYearId = studyYearId;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsVarianceOrderBy<TRes> {
  factory CopyWith_Input_PersonsVarianceOrderBy(
    Input_PersonsVarianceOrderBy instance,
    TRes Function(Input_PersonsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsVarianceOrderBy;

  factory CopyWith_Input_PersonsVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsVarianceOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  });
}

class _CopyWithImpl_Input_PersonsVarianceOrderBy<TRes>
    implements CopyWith_Input_PersonsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsVarianceOrderBy(this._instance, this._then);

  final Input_PersonsVarianceOrderBy _instance;

  final TRes Function(Input_PersonsVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? nationalId = _undefined,
    Object? studyYearId = _undefined,
  }) => _then(
    Input_PersonsVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (nationalId != _undefined) 'nationalId': (nationalId as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsVarianceOrderBy<TRes>
    implements CopyWith_Input_PersonsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsVarianceOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? nationalId,
    Enum_OrderBy? studyYearId,
  }) => _res;
}

class Input_QualificationsBoolExp {
  factory Input_QualificationsBoolExp({
    List<Input_QualificationsBoolExp>? $_and,
    Input_QualificationsBoolExp? $_not,
    List<Input_QualificationsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_QualificationsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_QualificationsBoolExp._(this._$data);

  factory Input_QualificationsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_QualificationsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_QualificationsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_QualificationsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
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
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateBoolExp.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_QualificationsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_QualificationsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_QualificationsBoolExp>?);

  Input_QualificationsBoolExp? get $_not =>
      (_$data['_not'] as Input_QualificationsBoolExp?);

  List<Input_QualificationsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_QualificationsBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

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
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
  get copyWith => CopyWith_Input_QualificationsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_QualificationsBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_QualificationsBoolExp<TRes> {
  factory CopyWith_Input_QualificationsBoolExp(
    Input_QualificationsBoolExp instance,
    TRes Function(Input_QualificationsBoolExp) then,
  ) = _CopyWithImpl_Input_QualificationsBoolExp;

  factory CopyWith_Input_QualificationsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_QualificationsBoolExp;

  TRes call({
    List<Input_QualificationsBoolExp>? $_and,
    Input_QualificationsBoolExp? $_not,
    List<Input_QualificationsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_QualificationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_QualificationsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_QualificationsBoolExp>? Function(
      Iterable<
        CopyWith_Input_QualificationsBoolExp<Input_QualificationsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}
