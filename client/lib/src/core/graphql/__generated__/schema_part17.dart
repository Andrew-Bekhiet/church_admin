// Part 17 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_FamiliesFamiliesBoolExp<TRes> {
  factory CopyWith_Input_FamiliesFamiliesBoolExp(
    Input_FamiliesFamiliesBoolExp instance,
    TRes Function(Input_FamiliesFamiliesBoolExp) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesBoolExp;

  factory CopyWith_Input_FamiliesFamiliesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesBoolExp;

  TRes call({
    List<Input_FamiliesFamiliesBoolExp>? $_and,
    Input_FamiliesFamiliesBoolExp? $_not,
    List<Input_FamiliesFamiliesBoolExp>? $_or,
    Input_FamiliesBoolExp? child,
    Input_UuidComparisonExp? childFamilyId,
    Input_FamiliesBoolExp? parent,
    Input_UuidComparisonExp? parentFamilyId,
  });
  TRes $_and(
    Iterable<Input_FamiliesFamiliesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesFamiliesBoolExp<Input_FamiliesFamiliesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_FamiliesFamiliesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesFamiliesBoolExp<Input_FamiliesFamiliesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamiliesBoolExp<TRes> get child;
  CopyWith_Input_UuidComparisonExp<TRes> get childFamilyId;
  CopyWith_Input_FamiliesBoolExp<TRes> get parent;
  CopyWith_Input_UuidComparisonExp<TRes> get parentFamilyId;
}

class _CopyWithImpl_Input_FamiliesFamiliesBoolExp<TRes>
    implements CopyWith_Input_FamiliesFamiliesBoolExp<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesBoolExp(this._instance, this._then);

  final Input_FamiliesFamiliesBoolExp _instance;

  final TRes Function(Input_FamiliesFamiliesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? child = _undefined,
    Object? childFamilyId = _undefined,
    Object? parent = _undefined,
    Object? parentFamilyId = _undefined,
  }) => _then(
    Input_FamiliesFamiliesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_FamiliesFamiliesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_FamiliesFamiliesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_FamiliesFamiliesBoolExp>?),
      if (child != _undefined) 'child': (child as Input_FamiliesBoolExp?),
      if (childFamilyId != _undefined)
        'childFamilyId': (childFamilyId as Input_UuidComparisonExp?),
      if (parent != _undefined) 'parent': (parent as Input_FamiliesBoolExp?),
      if (parentFamilyId != _undefined)
        'parentFamilyId': (parentFamilyId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_FamiliesFamiliesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesFamiliesBoolExp<Input_FamiliesFamiliesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_FamiliesFamiliesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_FamiliesFamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_FamiliesFamiliesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesFamiliesBoolExp<Input_FamiliesFamiliesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_FamiliesFamiliesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamiliesBoolExp<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$child, (e) => call(child: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get childFamilyId {
    final local$childFamilyId = _instance.childFamilyId;
    return local$childFamilyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$childFamilyId,
            (e) => call(childFamilyId: e),
          );
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$parent, (e) => call(parent: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get parentFamilyId {
    final local$parentFamilyId = _instance.parentFamilyId;
    return local$parentFamilyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$parentFamilyId,
            (e) => call(parentFamilyId: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesBoolExp<TRes>
    implements CopyWith_Input_FamiliesFamiliesBoolExp<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_FamiliesFamiliesBoolExp>? $_and,
    Input_FamiliesFamiliesBoolExp? $_not,
    List<Input_FamiliesFamiliesBoolExp>? $_or,
    Input_FamiliesBoolExp? child,
    Input_UuidComparisonExp? childFamilyId,
    Input_FamiliesBoolExp? parent,
    Input_UuidComparisonExp? parentFamilyId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get $_not =>
      CopyWith_Input_FamiliesFamiliesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_FamiliesBoolExp<TRes> get child =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get childFamilyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get parent =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get parentFamilyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_FamiliesFamiliesInsertInput {
  factory Input_FamiliesFamiliesInsertInput({
    Input_FamiliesObjRelInsertInput? child,
    UuidValue? childFamilyId,
    Input_FamiliesObjRelInsertInput? parent,
    UuidValue? parentFamilyId,
  }) => Input_FamiliesFamiliesInsertInput._({
    if (child != null) r'child': child,
    if (childFamilyId != null) r'childFamilyId': childFamilyId,
    if (parent != null) r'parent': parent,
    if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
  });

  Input_FamiliesFamiliesInsertInput._(this._$data);

  factory Input_FamiliesFamiliesInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('child')) {
      final l$child = data['child'];
      result$data['child'] = l$child == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$child as Map<String, dynamic>),
            );
    }
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : stringToUuid(l$childFamilyId);
    }
    if (data.containsKey('parent')) {
      final l$parent = data['parent'];
      result$data['parent'] = l$parent == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$parent as Map<String, dynamic>),
            );
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : stringToUuid(l$parentFamilyId);
    }
    return Input_FamiliesFamiliesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesObjRelInsertInput? get child =>
      (_$data['child'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get childFamilyId => (_$data['childFamilyId'] as UuidValue?);

  Input_FamiliesObjRelInsertInput? get parent =>
      (_$data['parent'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get parentFamilyId => (_$data['parentFamilyId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('child')) {
      final l$child = child;
      result$data['child'] = l$child?.toJson();
    }
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : uuidToString(l$childFamilyId);
    }
    if (_$data.containsKey('parent')) {
      final l$parent = parent;
      result$data['parent'] = l$parent?.toJson();
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : uuidToString(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesInsertInput<Input_FamiliesFamiliesInsertInput>
  get copyWith => CopyWith_Input_FamiliesFamiliesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (_$data.containsKey('child') != other._$data.containsKey('child')) {
      return false;
    }
    if (l$child != lOther$child) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (_$data.containsKey('parent') != other._$data.containsKey('parent')) {
      return false;
    }
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$child = child;
    final l$childFamilyId = childFamilyId;
    final l$parent = parent;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('child') ? l$child : const {},
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parent') ? l$parent : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesInsertInput<TRes> {
  factory CopyWith_Input_FamiliesFamiliesInsertInput(
    Input_FamiliesFamiliesInsertInput instance,
    TRes Function(Input_FamiliesFamiliesInsertInput) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesInsertInput;

  factory CopyWith_Input_FamiliesFamiliesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesInsertInput;

  TRes call({
    Input_FamiliesObjRelInsertInput? child,
    UuidValue? childFamilyId,
    Input_FamiliesObjRelInsertInput? parent,
    UuidValue? parentFamilyId,
  });
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get child;
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get parent;
}

class _CopyWithImpl_Input_FamiliesFamiliesInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesInsertInput<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesInsertInput(this._instance, this._then);

  final Input_FamiliesFamiliesInsertInput _instance;

  final TRes Function(Input_FamiliesFamiliesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? child = _undefined,
    Object? childFamilyId = _undefined,
    Object? parent = _undefined,
    Object? parentFamilyId = _undefined,
  }) => _then(
    Input_FamiliesFamiliesInsertInput._({
      ..._instance._$data,
      if (child != _undefined)
        'child': (child as Input_FamiliesObjRelInsertInput?),
      if (childFamilyId != _undefined)
        'childFamilyId': (childFamilyId as UuidValue?),
      if (parent != _undefined)
        'parent': (parent as Input_FamiliesObjRelInsertInput?),
      if (parentFamilyId != _undefined)
        'parentFamilyId': (parentFamilyId as UuidValue?),
    }),
  );

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$child,
            (e) => call(child: e),
          );
  }

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$parent,
            (e) => call(parent: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesInsertInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesInsertInput(this._res);

  TRes _res;

  call({
    Input_FamiliesObjRelInsertInput? child,
    UuidValue? childFamilyId,
    Input_FamiliesObjRelInsertInput? parent,
    UuidValue? parentFamilyId,
  }) => _res;

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get child =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get parent =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);
}

class Input_FamiliesFamiliesMaxOrderBy {
  factory Input_FamiliesFamiliesMaxOrderBy({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  }) => Input_FamiliesFamiliesMaxOrderBy._({
    if (childFamilyId != null) r'childFamilyId': childFamilyId,
    if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
  });

  Input_FamiliesFamiliesMaxOrderBy._(this._$data);

  factory Input_FamiliesFamiliesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$childFamilyId as String));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$parentFamilyId as String));
    }
    return Input_FamiliesFamiliesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get childFamilyId => (_$data['childFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get parentFamilyId =>
      (_$data['parentFamilyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$childFamilyId);
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesMaxOrderBy<Input_FamiliesFamiliesMaxOrderBy>
  get copyWith => CopyWith_Input_FamiliesFamiliesMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childFamilyId = childFamilyId;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesMaxOrderBy(
    Input_FamiliesFamiliesMaxOrderBy instance,
    TRes Function(Input_FamiliesFamiliesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesMaxOrderBy;

  factory CopyWith_Input_FamiliesFamiliesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesMaxOrderBy;

  TRes call({Enum_OrderBy? childFamilyId, Enum_OrderBy? parentFamilyId});
}

class _CopyWithImpl_Input_FamiliesFamiliesMaxOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesMaxOrderBy(this._instance, this._then);

  final Input_FamiliesFamiliesMaxOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? childFamilyId = _undefined,
    Object? parentFamilyId = _undefined,
  }) => _then(
    Input_FamiliesFamiliesMaxOrderBy._({
      ..._instance._$data,
      if (childFamilyId != _undefined)
        'childFamilyId': (childFamilyId as Enum_OrderBy?),
      if (parentFamilyId != _undefined)
        'parentFamilyId': (parentFamilyId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesFamiliesMaxOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? childFamilyId, Enum_OrderBy? parentFamilyId}) => _res;
}

class Input_FamiliesFamiliesMinOrderBy {
  factory Input_FamiliesFamiliesMinOrderBy({
    Enum_OrderBy? childFamilyId,
    Enum_OrderBy? parentFamilyId,
  }) => Input_FamiliesFamiliesMinOrderBy._({
    if (childFamilyId != null) r'childFamilyId': childFamilyId,
    if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
  });

  Input_FamiliesFamiliesMinOrderBy._(this._$data);

  factory Input_FamiliesFamiliesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$childFamilyId as String));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$parentFamilyId as String));
    }
    return Input_FamiliesFamiliesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get childFamilyId => (_$data['childFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get parentFamilyId =>
      (_$data['parentFamilyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$childFamilyId);
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesMinOrderBy<Input_FamiliesFamiliesMinOrderBy>
  get copyWith => CopyWith_Input_FamiliesFamiliesMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childFamilyId = childFamilyId;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesMinOrderBy(
    Input_FamiliesFamiliesMinOrderBy instance,
    TRes Function(Input_FamiliesFamiliesMinOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesMinOrderBy;

  factory CopyWith_Input_FamiliesFamiliesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesMinOrderBy;

  TRes call({Enum_OrderBy? childFamilyId, Enum_OrderBy? parentFamilyId});
}

class _CopyWithImpl_Input_FamiliesFamiliesMinOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesMinOrderBy(this._instance, this._then);

  final Input_FamiliesFamiliesMinOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? childFamilyId = _undefined,
    Object? parentFamilyId = _undefined,
  }) => _then(
    Input_FamiliesFamiliesMinOrderBy._({
      ..._instance._$data,
      if (childFamilyId != _undefined)
        'childFamilyId': (childFamilyId as Enum_OrderBy?),
      if (parentFamilyId != _undefined)
        'parentFamilyId': (parentFamilyId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesFamiliesMinOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? childFamilyId, Enum_OrderBy? parentFamilyId}) => _res;
}

class Input_FamiliesFamiliesOnConflict {
  factory Input_FamiliesFamiliesOnConflict({
    required Enum_FamiliesFamiliesConstraint constraint,
    List<Enum_FamiliesFamiliesUpdateColumn>? updateColumns,
    Input_FamiliesFamiliesBoolExp? where,
  }) => Input_FamiliesFamiliesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_FamiliesFamiliesOnConflict._(this._$data);

  factory Input_FamiliesFamiliesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_FamiliesFamiliesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_FamiliesFamiliesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_FamiliesFamiliesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_FamiliesFamiliesConstraint get constraint =>
      (_$data['constraint'] as Enum_FamiliesFamiliesConstraint);

  List<Enum_FamiliesFamiliesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_FamiliesFamiliesUpdateColumn>?);

  Input_FamiliesFamiliesBoolExp? get where =>
      (_$data['where'] as Input_FamiliesFamiliesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_FamiliesFamiliesConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_FamiliesFamiliesUpdateColumn>)
              .map((e) => toJson_Enum_FamiliesFamiliesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesOnConflict<Input_FamiliesFamiliesOnConflict>
  get copyWith => CopyWith_Input_FamiliesFamiliesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesOnConflict ||
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

abstract class CopyWith_Input_FamiliesFamiliesOnConflict<TRes> {
  factory CopyWith_Input_FamiliesFamiliesOnConflict(
    Input_FamiliesFamiliesOnConflict instance,
    TRes Function(Input_FamiliesFamiliesOnConflict) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesOnConflict;

  factory CopyWith_Input_FamiliesFamiliesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesOnConflict;

  TRes call({
    Enum_FamiliesFamiliesConstraint? constraint,
    List<Enum_FamiliesFamiliesUpdateColumn>? updateColumns,
    Input_FamiliesFamiliesBoolExp? where,
  });
  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_FamiliesFamiliesOnConflict<TRes>
    implements CopyWith_Input_FamiliesFamiliesOnConflict<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesOnConflict(this._instance, this._then);

  final Input_FamiliesFamiliesOnConflict _instance;

  final TRes Function(Input_FamiliesFamiliesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_FamiliesFamiliesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_FamiliesFamiliesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_FamiliesFamiliesUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_FamiliesFamiliesBoolExp?),
    }),
  );

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_FamiliesFamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesOnConflict<TRes>
    implements CopyWith_Input_FamiliesFamiliesOnConflict<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesOnConflict(this._res);

  TRes _res;

  call({
    Enum_FamiliesFamiliesConstraint? constraint,
    List<Enum_FamiliesFamiliesUpdateColumn>? updateColumns,
    Input_FamiliesFamiliesBoolExp? where,
  }) => _res;

  CopyWith_Input_FamiliesFamiliesBoolExp<TRes> get where =>
      CopyWith_Input_FamiliesFamiliesBoolExp.stub(_res);
}

class Input_FamiliesFamiliesOrderBy {
  factory Input_FamiliesFamiliesOrderBy({
    Input_FamiliesOrderBy? child,
    Enum_OrderBy? childFamilyId,
    Input_FamiliesOrderBy? parent,
    Enum_OrderBy? parentFamilyId,
  }) => Input_FamiliesFamiliesOrderBy._({
    if (child != null) r'child': child,
    if (childFamilyId != null) r'childFamilyId': childFamilyId,
    if (parent != null) r'parent': parent,
    if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
  });

  Input_FamiliesFamiliesOrderBy._(this._$data);

  factory Input_FamiliesFamiliesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('child')) {
      final l$child = data['child'];
      result$data['child'] = l$child == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$child as Map<String, dynamic>));
    }
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$childFamilyId as String));
    }
    if (data.containsKey('parent')) {
      final l$parent = data['parent'];
      result$data['parent'] = l$parent == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$parent as Map<String, dynamic>));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$parentFamilyId as String));
    }
    return Input_FamiliesFamiliesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesOrderBy? get child =>
      (_$data['child'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get childFamilyId => (_$data['childFamilyId'] as Enum_OrderBy?);

  Input_FamiliesOrderBy? get parent =>
      (_$data['parent'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get parentFamilyId =>
      (_$data['parentFamilyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('child')) {
      final l$child = child;
      result$data['child'] = l$child?.toJson();
    }
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$childFamilyId);
    }
    if (_$data.containsKey('parent')) {
      final l$parent = parent;
      result$data['parent'] = l$parent?.toJson();
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesOrderBy<Input_FamiliesFamiliesOrderBy>
  get copyWith => CopyWith_Input_FamiliesFamiliesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (_$data.containsKey('child') != other._$data.containsKey('child')) {
      return false;
    }
    if (l$child != lOther$child) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (_$data.containsKey('parent') != other._$data.containsKey('parent')) {
      return false;
    }
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$child = child;
    final l$childFamilyId = childFamilyId;
    final l$parent = parent;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('child') ? l$child : const {},
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parent') ? l$parent : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesOrderBy(
    Input_FamiliesFamiliesOrderBy instance,
    TRes Function(Input_FamiliesFamiliesOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesOrderBy;

  factory CopyWith_Input_FamiliesFamiliesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesOrderBy;

  TRes call({
    Input_FamiliesOrderBy? child,
    Enum_OrderBy? childFamilyId,
    Input_FamiliesOrderBy? parent,
    Enum_OrderBy? parentFamilyId,
  });
  CopyWith_Input_FamiliesOrderBy<TRes> get child;
  CopyWith_Input_FamiliesOrderBy<TRes> get parent;
}

class _CopyWithImpl_Input_FamiliesFamiliesOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesOrderBy(this._instance, this._then);

  final Input_FamiliesFamiliesOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? child = _undefined,
    Object? childFamilyId = _undefined,
    Object? parent = _undefined,
    Object? parentFamilyId = _undefined,
  }) => _then(
    Input_FamiliesFamiliesOrderBy._({
      ..._instance._$data,
      if (child != _undefined) 'child': (child as Input_FamiliesOrderBy?),
      if (childFamilyId != _undefined)
        'childFamilyId': (childFamilyId as Enum_OrderBy?),
      if (parent != _undefined) 'parent': (parent as Input_FamiliesOrderBy?),
      if (parentFamilyId != _undefined)
        'parentFamilyId': (parentFamilyId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_FamiliesOrderBy<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$child, (e) => call(child: e));
  }

  CopyWith_Input_FamiliesOrderBy<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$parent, (e) => call(parent: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesOrderBy(this._res);

  TRes _res;

  call({
    Input_FamiliesOrderBy? child,
    Enum_OrderBy? childFamilyId,
    Input_FamiliesOrderBy? parent,
    Enum_OrderBy? parentFamilyId,
  }) => _res;

  CopyWith_Input_FamiliesOrderBy<TRes> get child =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);

  CopyWith_Input_FamiliesOrderBy<TRes> get parent =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);
}

class Input_FamiliesFamiliesStreamCursorInput {
  factory Input_FamiliesFamiliesStreamCursorInput({
    required Input_FamiliesFamiliesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_FamiliesFamiliesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_FamiliesFamiliesStreamCursorInput._(this._$data);

  factory Input_FamiliesFamiliesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_FamiliesFamiliesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_FamiliesFamiliesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesFamiliesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_FamiliesFamiliesStreamCursorValueInput);

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

  CopyWith_Input_FamiliesFamiliesStreamCursorInput<
    Input_FamiliesFamiliesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_FamiliesFamiliesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesStreamCursorInput ||
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

abstract class CopyWith_Input_FamiliesFamiliesStreamCursorInput<TRes> {
  factory CopyWith_Input_FamiliesFamiliesStreamCursorInput(
    Input_FamiliesFamiliesStreamCursorInput instance,
    TRes Function(Input_FamiliesFamiliesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesStreamCursorInput;

  factory CopyWith_Input_FamiliesFamiliesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesStreamCursorInput;

  TRes call({
    Input_FamiliesFamiliesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_FamiliesFamiliesStreamCursorInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesStreamCursorInput _instance;

  final TRes Function(Input_FamiliesFamiliesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_FamiliesFamiliesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_FamiliesFamiliesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_FamiliesFamiliesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesStreamCursorInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_FamiliesFamiliesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_FamiliesFamiliesStreamCursorValueInput.stub(_res);
}

class Input_FamiliesFamiliesStreamCursorValueInput {
  factory Input_FamiliesFamiliesStreamCursorValueInput({
    UuidValue? childFamilyId,
    UuidValue? parentFamilyId,
  }) => Input_FamiliesFamiliesStreamCursorValueInput._({
    if (childFamilyId != null) r'childFamilyId': childFamilyId,
    if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
  });

  Input_FamiliesFamiliesStreamCursorValueInput._(this._$data);

  factory Input_FamiliesFamiliesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : stringToUuid(l$childFamilyId);
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : stringToUuid(l$parentFamilyId);
    }
    return Input_FamiliesFamiliesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get childFamilyId => (_$data['childFamilyId'] as UuidValue?);

  UuidValue? get parentFamilyId => (_$data['parentFamilyId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : uuidToString(l$childFamilyId);
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : uuidToString(l$parentFamilyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<
    Input_FamiliesFamiliesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_FamiliesFamiliesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childFamilyId = childFamilyId;
    final lOther$childFamilyId = other.childFamilyId;
    if (_$data.containsKey('childFamilyId') !=
        other._$data.containsKey('childFamilyId')) {
      return false;
    }
    if (l$childFamilyId != lOther$childFamilyId) {
      return false;
    }
    final l$parentFamilyId = parentFamilyId;
    final lOther$parentFamilyId = other.parentFamilyId;
    if (_$data.containsKey('parentFamilyId') !=
        other._$data.containsKey('parentFamilyId')) {
      return false;
    }
    if (l$parentFamilyId != lOther$parentFamilyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childFamilyId = childFamilyId;
    final l$parentFamilyId = parentFamilyId;
    return Object.hashAll([
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_FamiliesFamiliesStreamCursorValueInput(
    Input_FamiliesFamiliesStreamCursorValueInput instance,
    TRes Function(Input_FamiliesFamiliesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesStreamCursorValueInput;

  factory CopyWith_Input_FamiliesFamiliesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesStreamCursorValueInput;

  TRes call({UuidValue? childFamilyId, UuidValue? parentFamilyId});
}

class _CopyWithImpl_Input_FamiliesFamiliesStreamCursorValueInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesStreamCursorValueInput _instance;

  final TRes Function(Input_FamiliesFamiliesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? childFamilyId = _undefined,
    Object? parentFamilyId = _undefined,
  }) => _then(
    Input_FamiliesFamiliesStreamCursorValueInput._({
      ..._instance._$data,
      if (childFamilyId != _undefined)
        'childFamilyId': (childFamilyId as UuidValue?),
      if (parentFamilyId != _undefined)
        'parentFamilyId': (parentFamilyId as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesFamiliesStreamCursorValueInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? childFamilyId, UuidValue? parentFamilyId}) => _res;
}

class Input_FamiliesIncInput {
  factory Input_FamiliesIncInput({int? color}) =>
      Input_FamiliesIncInput._({if (color != null) r'color': color});

  Input_FamiliesIncInput._(this._$data);

  factory Input_FamiliesIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_FamiliesIncInput._(result$data);
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

  CopyWith_Input_FamiliesIncInput<Input_FamiliesIncInput> get copyWith =>
      CopyWith_Input_FamiliesIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesIncInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_FamiliesIncInput<TRes> {
  factory CopyWith_Input_FamiliesIncInput(
    Input_FamiliesIncInput instance,
    TRes Function(Input_FamiliesIncInput) then,
  ) = _CopyWithImpl_Input_FamiliesIncInput;

  factory CopyWith_Input_FamiliesIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_FamiliesIncInput<TRes>
    implements CopyWith_Input_FamiliesIncInput<TRes> {
  _CopyWithImpl_Input_FamiliesIncInput(this._instance, this._then);

  final Input_FamiliesIncInput _instance;

  final TRes Function(Input_FamiliesIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_FamiliesIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesIncInput<TRes>
    implements CopyWith_Input_FamiliesIncInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_FamiliesInsertInput {
  factory Input_FamiliesInsertInput({
    Input_AddressesObjRelInsertInput? address,
    Input_FamiliesFamiliesArrRelInsertInput? children,
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    int? color,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? name,
    String? notes,
    Input_FamiliesFamiliesArrRelInsertInput? parents,
    Input_PersonsArrRelInsertInput? persons,
    String? status,
    Input_StoresArrRelInsertInput? stores,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
  }) => Input_FamiliesInsertInput._({
    if (address != null) r'address': address,
    if (children != null) r'children': children,
    if (church != null) r'church': church,
    if (churchId != null) r'churchId': churchId,
    if (color != null) r'color': color,
    if (deceasedSpouseName != null) r'deceasedSpouseName': deceasedSpouseName,
    if (marriageDate != null) r'marriageDate': marriageDate,
    if (name != null) r'name': name,
    if (notes != null) r'notes': notes,
    if (parents != null) r'parents': parents,
    if (persons != null) r'persons': persons,
    if (status != null) r'status': status,
    if (stores != null) r'stores': stores,
    if (visitHistory != null) r'visitHistory': visitHistory,
  });

  Input_FamiliesInsertInput._(this._$data);

  factory Input_FamiliesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesObjRelInsertInput.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = l$children == null
          ? null
          : Input_FamiliesFamiliesArrRelInsertInput.fromJson(
              (l$children as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesObjRelInsertInput.fromJson(
              (l$church as Map<String, dynamic>),
            );
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : stringToUuid(l$churchId);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = data['deceasedSpouseName'];
      result$data['deceasedSpouseName'] = (l$deceasedSpouseName as String?);
    }
    if (data.containsKey('marriageDate')) {
      final l$marriageDate = data['marriageDate'];
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : dateFromString(l$marriageDate);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('parents')) {
      final l$parents = data['parents'];
      result$data['parents'] = l$parents == null
          ? null
          : Input_FamiliesFamiliesArrRelInsertInput.fromJson(
              (l$parents as Map<String, dynamic>),
            );
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    if (data.containsKey('stores')) {
      final l$stores = data['stores'];
      result$data['stores'] = l$stores == null
          ? null
          : Input_StoresArrRelInsertInput.fromJson(
              (l$stores as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visitHistory')) {
      final l$visitHistory = data['visitHistory'];
      result$data['visitHistory'] = l$visitHistory == null
          ? null
          : Input_HistoryVisitHistoryArrRelInsertInput.fromJson(
              (l$visitHistory as Map<String, dynamic>),
            );
    }
    return Input_FamiliesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesObjRelInsertInput? get address =>
      (_$data['address'] as Input_AddressesObjRelInsertInput?);

  Input_FamiliesFamiliesArrRelInsertInput? get children =>
      (_$data['children'] as Input_FamiliesFamiliesArrRelInsertInput?);

  Input_ChurchesObjRelInsertInput? get church =>
      (_$data['church'] as Input_ChurchesObjRelInsertInput?);

  UuidValue? get churchId => (_$data['churchId'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  String? get deceasedSpouseName => (_$data['deceasedSpouseName'] as String?);

  DateTime? get marriageDate => (_$data['marriageDate'] as DateTime?);

  String? get name => (_$data['name'] as String?);

  String? get notes => (_$data['notes'] as String?);

  Input_FamiliesFamiliesArrRelInsertInput? get parents =>
      (_$data['parents'] as Input_FamiliesFamiliesArrRelInsertInput?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  String? get status => (_$data['status'] as String?);

  Input_StoresArrRelInsertInput? get stores =>
      (_$data['stores'] as Input_StoresArrRelInsertInput?);

  Input_HistoryVisitHistoryArrRelInsertInput? get visitHistory =>
      (_$data['visitHistory'] as Input_HistoryVisitHistoryArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : uuidToString(l$churchId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = deceasedSpouseName;
      result$data['deceasedSpouseName'] = l$deceasedSpouseName;
    }
    if (_$data.containsKey('marriageDate')) {
      final l$marriageDate = marriageDate;
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : dateToString(l$marriageDate);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('parents')) {
      final l$parents = parents;
      result$data['parents'] = l$parents?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('stores')) {
      final l$stores = stores;
      result$data['stores'] = l$stores?.toJson();
    }
    if (_$data.containsKey('visitHistory')) {
      final l$visitHistory = visitHistory;
      result$data['visitHistory'] = l$visitHistory?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesInsertInput<Input_FamiliesInsertInput> get copyWith =>
      CopyWith_Input_FamiliesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$children = children;
    final lOther$children = other.children;
    if (_$data.containsKey('children') !=
        other._$data.containsKey('children')) {
      return false;
    }
    if (l$children != lOther$children) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (_$data.containsKey('deceasedSpouseName') !=
        other._$data.containsKey('deceasedSpouseName')) {
      return false;
    }
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (_$data.containsKey('marriageDate') !=
        other._$data.containsKey('marriageDate')) {
      return false;
    }
    if (l$marriageDate != lOther$marriageDate) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (_$data.containsKey('parents') != other._$data.containsKey('parents')) {
      return false;
    }
    if (l$parents != lOther$parents) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (_$data.containsKey('stores') != other._$data.containsKey('stores')) {
      return false;
    }
    if (l$stores != lOther$stores) {
      return false;
    }
    final l$visitHistory = visitHistory;
    final lOther$visitHistory = other.visitHistory;
    if (_$data.containsKey('visitHistory') !=
        other._$data.containsKey('visitHistory')) {
      return false;
    }
    if (l$visitHistory != lOther$visitHistory) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$children = children;
    final l$church = church;
    final l$churchId = churchId;
    final l$color = color;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$name = name;
    final l$notes = notes;
    final l$parents = parents;
    final l$persons = persons;
    final l$status = status;
    final l$stores = stores;
    final l$visitHistory = visitHistory;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('children') ? l$children : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('deceasedSpouseName')
          ? l$deceasedSpouseName
          : const {},
      _$data.containsKey('marriageDate') ? l$marriageDate : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('parents') ? l$parents : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('stores') ? l$stores : const {},
      _$data.containsKey('visitHistory') ? l$visitHistory : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesInsertInput<TRes> {
  factory CopyWith_Input_FamiliesInsertInput(
    Input_FamiliesInsertInput instance,
    TRes Function(Input_FamiliesInsertInput) then,
  ) = _CopyWithImpl_Input_FamiliesInsertInput;

  factory CopyWith_Input_FamiliesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesInsertInput;

  TRes call({
    Input_AddressesObjRelInsertInput? address,
    Input_FamiliesFamiliesArrRelInsertInput? children,
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    int? color,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? name,
    String? notes,
    Input_FamiliesFamiliesArrRelInsertInput? parents,
    Input_PersonsArrRelInsertInput? persons,
    String? status,
    Input_StoresArrRelInsertInput? stores,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
  });
  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address;
  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> get children;
  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church;
  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> get parents;
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
  CopyWith_Input_StoresArrRelInsertInput<TRes> get stores;
  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory;
}

class _CopyWithImpl_Input_FamiliesInsertInput<TRes>
    implements CopyWith_Input_FamiliesInsertInput<TRes> {
  _CopyWithImpl_Input_FamiliesInsertInput(this._instance, this._then);

  final Input_FamiliesInsertInput _instance;

  final TRes Function(Input_FamiliesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? children = _undefined,
    Object? church = _undefined,
    Object? churchId = _undefined,
    Object? color = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? parents = _undefined,
    Object? persons = _undefined,
    Object? status = _undefined,
    Object? stores = _undefined,
    Object? visitHistory = _undefined,
  }) => _then(
    Input_FamiliesInsertInput._({
      ..._instance._$data,
      if (address != _undefined)
        'address': (address as Input_AddressesObjRelInsertInput?),
      if (children != _undefined)
        'children': (children as Input_FamiliesFamiliesArrRelInsertInput?),
      if (church != _undefined)
        'church': (church as Input_ChurchesObjRelInsertInput?),
      if (churchId != _undefined) 'churchId': (churchId as UuidValue?),
      if (color != _undefined) 'color': (color as int?),
      if (deceasedSpouseName != _undefined)
        'deceasedSpouseName': (deceasedSpouseName as String?),
      if (marriageDate != _undefined)
        'marriageDate': (marriageDate as DateTime?),
      if (name != _undefined) 'name': (name as String?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (parents != _undefined)
        'parents': (parents as Input_FamiliesFamiliesArrRelInsertInput?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
      if (status != _undefined) 'status': (status as String?),
      if (stores != _undefined)
        'stores': (stores as Input_StoresArrRelInsertInput?),
      if (visitHistory != _undefined)
        'visitHistory':
            (visitHistory as Input_HistoryVisitHistoryArrRelInsertInput?),
    }),
  );

  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AddressesObjRelInsertInput(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> get children {
    final local$children = _instance.children;
    return local$children == null
        ? CopyWith_Input_FamiliesFamiliesArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamiliesFamiliesArrRelInsertInput(
            local$children,
            (e) => call(children: e),
          );
  }

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ChurchesObjRelInsertInput(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> get parents {
    final local$parents = _instance.parents;
    return local$parents == null
        ? CopyWith_Input_FamiliesFamiliesArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamiliesFamiliesArrRelInsertInput(
            local$parents,
            (e) => call(parents: e),
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

  CopyWith_Input_StoresArrRelInsertInput<TRes> get stores {
    final local$stores = _instance.stores;
    return local$stores == null
        ? CopyWith_Input_StoresArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StoresArrRelInsertInput(
            local$stores,
            (e) => call(stores: e),
          );
  }

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory {
    final local$visitHistory = _instance.visitHistory;
    return local$visitHistory == null
        ? CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryVisitHistoryArrRelInsertInput(
            local$visitHistory,
            (e) => call(visitHistory: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesInsertInput<TRes>
    implements CopyWith_Input_FamiliesInsertInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesInsertInput(this._res);

  TRes _res;

  call({
    Input_AddressesObjRelInsertInput? address,
    Input_FamiliesFamiliesArrRelInsertInput? children,
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    int? color,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? name,
    String? notes,
    Input_FamiliesFamiliesArrRelInsertInput? parents,
    Input_PersonsArrRelInsertInput? persons,
    String? status,
    Input_StoresArrRelInsertInput? stores,
    Input_HistoryVisitHistoryArrRelInsertInput? visitHistory,
  }) => _res;

  CopyWith_Input_AddressesObjRelInsertInput<TRes> get address =>
      CopyWith_Input_AddressesObjRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> get children =>
      CopyWith_Input_FamiliesFamiliesArrRelInsertInput.stub(_res);

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church =>
      CopyWith_Input_ChurchesObjRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> get parents =>
      CopyWith_Input_FamiliesFamiliesArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);

  CopyWith_Input_StoresArrRelInsertInput<TRes> get stores =>
      CopyWith_Input_StoresArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryVisitHistoryArrRelInsertInput<TRes> get visitHistory =>
      CopyWith_Input_HistoryVisitHistoryArrRelInsertInput.stub(_res);
}

class Input_FamiliesObjRelInsertInput {
  factory Input_FamiliesObjRelInsertInput({
    required Input_FamiliesInsertInput data,
    Input_FamiliesOnConflict? onConflict,
  }) => Input_FamiliesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_FamiliesObjRelInsertInput._(this._$data);

  factory Input_FamiliesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_FamiliesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_FamiliesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_FamiliesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesInsertInput get data =>
      (_$data['data'] as Input_FamiliesInsertInput);

  Input_FamiliesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_FamiliesOnConflict?);

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

  CopyWith_Input_FamiliesObjRelInsertInput<Input_FamiliesObjRelInsertInput>
  get copyWith => CopyWith_Input_FamiliesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesObjRelInsertInput ||
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

abstract class CopyWith_Input_FamiliesObjRelInsertInput<TRes> {
  factory CopyWith_Input_FamiliesObjRelInsertInput(
    Input_FamiliesObjRelInsertInput instance,
    TRes Function(Input_FamiliesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_FamiliesObjRelInsertInput;

  factory CopyWith_Input_FamiliesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesObjRelInsertInput;

  TRes call({
    Input_FamiliesInsertInput? data,
    Input_FamiliesOnConflict? onConflict,
  });
  CopyWith_Input_FamiliesInsertInput<TRes> get data;
  CopyWith_Input_FamiliesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_FamiliesObjRelInsertInput<TRes>
    implements CopyWith_Input_FamiliesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_FamiliesObjRelInsertInput(this._instance, this._then);

  final Input_FamiliesObjRelInsertInput _instance;

  final TRes Function(Input_FamiliesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_FamiliesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_FamiliesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_FamiliesOnConflict?),
        }),
      );

  CopyWith_Input_FamiliesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_FamiliesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_FamiliesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_FamiliesOnConflict.stub(_then(_instance))
        : CopyWith_Input_FamiliesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesObjRelInsertInput<TRes>
    implements CopyWith_Input_FamiliesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_FamiliesInsertInput? data,
    Input_FamiliesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_FamiliesInsertInput<TRes> get data =>
      CopyWith_Input_FamiliesInsertInput.stub(_res);

  CopyWith_Input_FamiliesOnConflict<TRes> get onConflict =>
      CopyWith_Input_FamiliesOnConflict.stub(_res);
}

class Input_FamiliesOnConflict {
  factory Input_FamiliesOnConflict({
    required Enum_FamiliesConstraint constraint,
    List<Enum_FamiliesUpdateColumn>? updateColumns,
    Input_FamiliesBoolExp? where,
  }) => Input_FamiliesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_FamiliesOnConflict._(this._$data);

  factory Input_FamiliesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_FamiliesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_FamiliesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_FamiliesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_FamiliesConstraint get constraint =>
      (_$data['constraint'] as Enum_FamiliesConstraint);

  List<Enum_FamiliesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_FamiliesUpdateColumn>?);

  Input_FamiliesBoolExp? get where =>
      (_$data['where'] as Input_FamiliesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_FamiliesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_FamiliesUpdateColumn>)
              .map((e) => toJson_Enum_FamiliesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesOnConflict<Input_FamiliesOnConflict> get copyWith =>
      CopyWith_Input_FamiliesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesOnConflict ||
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

abstract class CopyWith_Input_FamiliesOnConflict<TRes> {
  factory CopyWith_Input_FamiliesOnConflict(
    Input_FamiliesOnConflict instance,
    TRes Function(Input_FamiliesOnConflict) then,
  ) = _CopyWithImpl_Input_FamiliesOnConflict;

  factory CopyWith_Input_FamiliesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesOnConflict;

  TRes call({
    Enum_FamiliesConstraint? constraint,
    List<Enum_FamiliesUpdateColumn>? updateColumns,
    Input_FamiliesBoolExp? where,
  });
  CopyWith_Input_FamiliesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_FamiliesOnConflict<TRes>
    implements CopyWith_Input_FamiliesOnConflict<TRes> {
  _CopyWithImpl_Input_FamiliesOnConflict(this._instance, this._then);

  final Input_FamiliesOnConflict _instance;

  final TRes Function(Input_FamiliesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_FamiliesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_FamiliesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_FamiliesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_FamiliesBoolExp?),
    }),
  );

  CopyWith_Input_FamiliesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesOnConflict<TRes>
    implements CopyWith_Input_FamiliesOnConflict<TRes> {
  _CopyWithStubImpl_Input_FamiliesOnConflict(this._res);

  TRes _res;

  call({
    Enum_FamiliesConstraint? constraint,
    List<Enum_FamiliesUpdateColumn>? updateColumns,
    Input_FamiliesBoolExp? where,
  }) => _res;

  CopyWith_Input_FamiliesBoolExp<TRes> get where =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);
}

class Input_FamiliesOrderBy {
  factory Input_FamiliesOrderBy({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? blurhash,
    Input_FamiliesFamiliesAggregateOrderBy? childrenAggregate,
    Input_ChurchesOrderBy? church,
    Enum_OrderBy? churchId,
    Enum_OrderBy? color,
    Enum_OrderBy? deceasedSpouseName,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesAdminsPhonesOrderBy? familyAdminsPhones,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestFatherVisitsOrderBy? lastFatherVisit,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? marriageDate,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Input_FamiliesFamiliesAggregateOrderBy? parentsAggregate,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? status,
    Input_StoresAggregateOrderBy? storesAggregate,
    Enum_OrderBy? userCanEdit,
    Input_HistoryVisitHistoryAggregateOrderBy? visitHistoryAggregate,
  }) => Input_FamiliesOrderBy._({
    if (address != null) r'address': address,
    if (blurhash != null) r'blurhash': blurhash,
    if (childrenAggregate != null) r'childrenAggregate': childrenAggregate,
    if (church != null) r'church': church,
    if (churchId != null) r'churchId': churchId,
    if (color != null) r'color': color,
    if (deceasedSpouseName != null) r'deceasedSpouseName': deceasedSpouseName,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (familyAdminsPhones != null) r'familyAdminsPhones': familyAdminsPhones,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastFatherVisit != null) r'lastFatherVisit': lastFatherVisit,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (marriageDate != null) r'marriageDate': marriageDate,
    if (name != null) r'name': name,
    if (notes != null) r'notes': notes,
    if (parentsAggregate != null) r'parentsAggregate': parentsAggregate,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (status != null) r'status': status,
    if (storesAggregate != null) r'storesAggregate': storesAggregate,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
    if (visitHistoryAggregate != null)
      r'visitHistoryAggregate': visitHistoryAggregate,
  });

  Input_FamiliesOrderBy._(this._$data);

  factory Input_FamiliesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesOrderBy.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('childrenAggregate')) {
      final l$childrenAggregate = data['childrenAggregate'];
      result$data['childrenAggregate'] = l$childrenAggregate == null
          ? null
          : Input_FamiliesFamiliesAggregateOrderBy.fromJson(
              (l$childrenAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesOrderBy.fromJson((l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = data['deceasedSpouseName'];
      result$data['deceasedSpouseName'] = l$deceasedSpouseName == null
          ? null
          : fromJson_Enum_OrderBy((l$deceasedSpouseName as String));
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateOrderBy.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyAdminsPhones')) {
      final l$familyAdminsPhones = data['familyAdminsPhones'];
      result$data['familyAdminsPhones'] = l$familyAdminsPhones == null
          ? null
          : Input_FamiliesAdminsPhonesOrderBy.fromJson(
              (l$familyAdminsPhones as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = data['lastFatherVisit'];
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : Input_HistoryLatestFatherVisitsOrderBy.fromJson(
              (l$lastFatherVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_HistoryLatestVisitsOrderBy.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('marriageDate')) {
      final l$marriageDate = data['marriageDate'];
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : fromJson_Enum_OrderBy((l$marriageDate as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('parentsAggregate')) {
      final l$parentsAggregate = data['parentsAggregate'];
      result$data['parentsAggregate'] = l$parentsAggregate == null
          ? null
          : Input_FamiliesFamiliesAggregateOrderBy.fromJson(
              (l$parentsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson_Enum_OrderBy((l$status as String));
    }
    if (data.containsKey('storesAggregate')) {
      final l$storesAggregate = data['storesAggregate'];
      result$data['storesAggregate'] = l$storesAggregate == null
          ? null
          : Input_StoresAggregateOrderBy.fromJson(
              (l$storesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : fromJson_Enum_OrderBy((l$userCanEdit as String));
    }
    if (data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = data['visitHistoryAggregate'];
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate == null
          ? null
          : Input_HistoryVisitHistoryAggregateOrderBy.fromJson(
              (l$visitHistoryAggregate as Map<String, dynamic>),
            );
    }
    return Input_FamiliesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesOrderBy? get address =>
      (_$data['address'] as Input_AddressesOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Input_FamiliesFamiliesAggregateOrderBy? get childrenAggregate =>
      (_$data['childrenAggregate'] as Input_FamiliesFamiliesAggregateOrderBy?);

  Input_ChurchesOrderBy? get church =>
      (_$data['church'] as Input_ChurchesOrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get deceasedSpouseName =>
      (_$data['deceasedSpouseName'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Input_FamiliesAdminsPhonesOrderBy? get familyAdminsPhones =>
      (_$data['familyAdminsPhones'] as Input_FamiliesAdminsPhonesOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Input_HistoryLatestFatherVisitsOrderBy? get lastFatherVisit =>
      (_$data['lastFatherVisit'] as Input_HistoryLatestFatherVisitsOrderBy?);

  Input_HistoryLatestVisitsOrderBy? get lastVisit =>
      (_$data['lastVisit'] as Input_HistoryLatestVisitsOrderBy?);

  Enum_OrderBy? get marriageDate => (_$data['marriageDate'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Input_FamiliesFamiliesAggregateOrderBy? get parentsAggregate =>
      (_$data['parentsAggregate'] as Input_FamiliesFamiliesAggregateOrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get status => (_$data['status'] as Enum_OrderBy?);

  Input_StoresAggregateOrderBy? get storesAggregate =>
      (_$data['storesAggregate'] as Input_StoresAggregateOrderBy?);

  Enum_OrderBy? get userCanEdit => (_$data['userCanEdit'] as Enum_OrderBy?);

  Input_HistoryVisitHistoryAggregateOrderBy? get visitHistoryAggregate =>
      (_$data['visitHistoryAggregate']
          as Input_HistoryVisitHistoryAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('childrenAggregate')) {
      final l$childrenAggregate = childrenAggregate;
      result$data['childrenAggregate'] = l$childrenAggregate?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = deceasedSpouseName;
      result$data['deceasedSpouseName'] = l$deceasedSpouseName == null
          ? null
          : toJson_Enum_OrderBy(l$deceasedSpouseName);
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('familyAdminsPhones')) {
      final l$familyAdminsPhones = familyAdminsPhones;
      result$data['familyAdminsPhones'] = l$familyAdminsPhones?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = lastFatherVisit;
      result$data['lastFatherVisit'] = l$lastFatherVisit?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('marriageDate')) {
      final l$marriageDate = marriageDate;
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : toJson_Enum_OrderBy(l$marriageDate);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes == null
          ? null
          : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('parentsAggregate')) {
      final l$parentsAggregate = parentsAggregate;
      result$data['parentsAggregate'] = l$parentsAggregate?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status == null
          ? null
          : toJson_Enum_OrderBy(l$status);
    }
    if (_$data.containsKey('storesAggregate')) {
      final l$storesAggregate = storesAggregate;
      result$data['storesAggregate'] = l$storesAggregate?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : toJson_Enum_OrderBy(l$userCanEdit);
    }
    if (_$data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = visitHistoryAggregate;
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesOrderBy<Input_FamiliesOrderBy> get copyWith =>
      CopyWith_Input_FamiliesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesOrderBy || runtimeType != other.runtimeType) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$childrenAggregate = childrenAggregate;
    final lOther$childrenAggregate = other.childrenAggregate;
    if (_$data.containsKey('childrenAggregate') !=
        other._$data.containsKey('childrenAggregate')) {
      return false;
    }
    if (l$childrenAggregate != lOther$childrenAggregate) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (_$data.containsKey('deceasedSpouseName') !=
        other._$data.containsKey('deceasedSpouseName')) {
      return false;
    }
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
      return false;
    }
    final l$familyAdminsPhones = familyAdminsPhones;
    final lOther$familyAdminsPhones = other.familyAdminsPhones;
    if (_$data.containsKey('familyAdminsPhones') !=
        other._$data.containsKey('familyAdminsPhones')) {
      return false;
    }
    if (l$familyAdminsPhones != lOther$familyAdminsPhones) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastFatherVisit = lastFatherVisit;
    final lOther$lastFatherVisit = other.lastFatherVisit;
    if (_$data.containsKey('lastFatherVisit') !=
        other._$data.containsKey('lastFatherVisit')) {
      return false;
    }
    if (l$lastFatherVisit != lOther$lastFatherVisit) {
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
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (_$data.containsKey('marriageDate') !=
        other._$data.containsKey('marriageDate')) {
      return false;
    }
    if (l$marriageDate != lOther$marriageDate) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$parentsAggregate = parentsAggregate;
    final lOther$parentsAggregate = other.parentsAggregate;
    if (_$data.containsKey('parentsAggregate') !=
        other._$data.containsKey('parentsAggregate')) {
      return false;
    }
    if (l$parentsAggregate != lOther$parentsAggregate) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$storesAggregate = storesAggregate;
    final lOther$storesAggregate = other.storesAggregate;
    if (_$data.containsKey('storesAggregate') !=
        other._$data.containsKey('storesAggregate')) {
      return false;
    }
    if (l$storesAggregate != lOther$storesAggregate) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final lOther$visitHistoryAggregate = other.visitHistoryAggregate;
    if (_$data.containsKey('visitHistoryAggregate') !=
        other._$data.containsKey('visitHistoryAggregate')) {
      return false;
    }
    if (l$visitHistoryAggregate != lOther$visitHistoryAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$blurhash = blurhash;
    final l$childrenAggregate = childrenAggregate;
    final l$church = church;
    final l$churchId = churchId;
    final l$color = color;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$familyAdminsPhones = familyAdminsPhones;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$lastFatherVisit = lastFatherVisit;
    final l$lastVisit = lastVisit;
    final l$marriageDate = marriageDate;
    final l$name = name;
    final l$notes = notes;
    final l$parentsAggregate = parentsAggregate;
    final l$personsAggregate = personsAggregate;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$status = status;
    final l$storesAggregate = storesAggregate;
    final l$userCanEdit = userCanEdit;
    final l$visitHistoryAggregate = visitHistoryAggregate;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('childrenAggregate') ? l$childrenAggregate : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('deceasedSpouseName')
          ? l$deceasedSpouseName
          : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('familyAdminsPhones')
          ? l$familyAdminsPhones
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastFatherVisit') ? l$lastFatherVisit : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('marriageDate') ? l$marriageDate : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('parentsAggregate') ? l$parentsAggregate : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('storesAggregate') ? l$storesAggregate : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
      _$data.containsKey('visitHistoryAggregate')
          ? l$visitHistoryAggregate
          : const {},
    ]);
  }
}
