// Part 17 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> {
  factory CopyWith_Input_FamiliesFamiliesAggregateOrderBy(
    Input_FamiliesFamiliesAggregateOrderBy instance,
    TRes Function(Input_FamiliesFamiliesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesAggregateOrderBy;

  factory CopyWith_Input_FamiliesFamiliesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_FamiliesFamiliesMaxOrderBy? max,
    Input_FamiliesFamiliesMinOrderBy? min,
  });
  CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> get max;
  CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_FamiliesFamiliesAggregateOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesAggregateOrderBy _instance;

  final TRes Function(Input_FamiliesFamiliesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_FamiliesFamiliesAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_FamiliesFamiliesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_FamiliesFamiliesMinOrderBy?),
    }),
  );

  CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_FamiliesFamiliesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_FamiliesFamiliesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesAggregateOrderBy<TRes>
    implements CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_FamiliesFamiliesMaxOrderBy? max,
    Input_FamiliesFamiliesMinOrderBy? min,
  }) => _res;

  CopyWith_Input_FamiliesFamiliesMaxOrderBy<TRes> get max =>
      CopyWith_Input_FamiliesFamiliesMaxOrderBy.stub(_res);

  CopyWith_Input_FamiliesFamiliesMinOrderBy<TRes> get min =>
      CopyWith_Input_FamiliesFamiliesMinOrderBy.stub(_res);
}

class Input_FamiliesFamiliesArrRelInsertInput {
  factory Input_FamiliesFamiliesArrRelInsertInput({
    required List<Input_FamiliesFamiliesInsertInput> data,
    Input_FamiliesFamiliesOnConflict? onConflict,
  }) => Input_FamiliesFamiliesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_FamiliesFamiliesArrRelInsertInput._(this._$data);

  factory Input_FamiliesFamiliesArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_FamiliesFamiliesInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_FamiliesFamiliesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_FamiliesFamiliesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesFamiliesInsertInput> get data =>
      (_$data['data'] as List<Input_FamiliesFamiliesInsertInput>);

  Input_FamiliesFamiliesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_FamiliesFamiliesOnConflict?);

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

  CopyWith_Input_FamiliesFamiliesArrRelInsertInput<
    Input_FamiliesFamiliesArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_FamiliesFamiliesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesArrRelInsertInput ||
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

abstract class CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> {
  factory CopyWith_Input_FamiliesFamiliesArrRelInsertInput(
    Input_FamiliesFamiliesArrRelInsertInput instance,
    TRes Function(Input_FamiliesFamiliesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_FamiliesFamiliesArrRelInsertInput;

  factory CopyWith_Input_FamiliesFamiliesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesFamiliesArrRelInsertInput;

  TRes call({
    List<Input_FamiliesFamiliesInsertInput>? data,
    Input_FamiliesFamiliesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_FamiliesFamiliesInsertInput> Function(
      Iterable<
        CopyWith_Input_FamiliesFamiliesInsertInput<
          Input_FamiliesFamiliesInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_FamiliesFamiliesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_FamiliesFamiliesArrRelInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_FamiliesFamiliesArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesFamiliesArrRelInsertInput _instance;

  final TRes Function(Input_FamiliesFamiliesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_FamiliesFamiliesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_FamiliesFamiliesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_FamiliesFamiliesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_FamiliesFamiliesInsertInput> Function(
      Iterable<
        CopyWith_Input_FamiliesFamiliesInsertInput<
          Input_FamiliesFamiliesInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_FamiliesFamiliesInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_FamiliesFamiliesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_FamiliesFamiliesOnConflict.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesFamiliesArrRelInsertInput<TRes>
    implements CopyWith_Input_FamiliesFamiliesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesFamiliesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_FamiliesFamiliesInsertInput>? data,
    Input_FamiliesFamiliesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_FamiliesFamiliesOnConflict<TRes> get onConflict =>
      CopyWith_Input_FamiliesFamiliesOnConflict.stub(_res);
}

class Input_FamiliesFamiliesBoolExp {
  factory Input_FamiliesFamiliesBoolExp({
    List<Input_FamiliesFamiliesBoolExp>? $_and,
    Input_FamiliesFamiliesBoolExp? $_not,
    List<Input_FamiliesFamiliesBoolExp>? $_or,
    Input_FamiliesBoolExp? child,
    Input_UuidComparisonExp? childFamilyId,
    Input_FamiliesBoolExp? parent,
    Input_UuidComparisonExp? parentFamilyId,
  }) => Input_FamiliesFamiliesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (child != null) r'child': child,
    if (childFamilyId != null) r'childFamilyId': childFamilyId,
    if (parent != null) r'parent': parent,
    if (parentFamilyId != null) r'parentFamilyId': parentFamilyId,
  });

  Input_FamiliesFamiliesBoolExp._(this._$data);

  factory Input_FamiliesFamiliesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesFamiliesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FamiliesFamiliesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesFamiliesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('child')) {
      final l$child = data['child'];
      result$data['child'] = l$child == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$child as Map<String, dynamic>));
    }
    if (data.containsKey('childFamilyId')) {
      final l$childFamilyId = data['childFamilyId'];
      result$data['childFamilyId'] = l$childFamilyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$childFamilyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('parent')) {
      final l$parent = data['parent'];
      result$data['parent'] = l$parent == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$parent as Map<String, dynamic>));
    }
    if (data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = data['parentFamilyId'];
      result$data['parentFamilyId'] = l$parentFamilyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$parentFamilyId as Map<String, dynamic>),
            );
    }
    return Input_FamiliesFamiliesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesFamiliesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FamiliesFamiliesBoolExp>?);

  Input_FamiliesFamiliesBoolExp? get $_not =>
      (_$data['_not'] as Input_FamiliesFamiliesBoolExp?);

  List<Input_FamiliesFamiliesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FamiliesFamiliesBoolExp>?);

  Input_FamiliesBoolExp? get child =>
      (_$data['child'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get childFamilyId =>
      (_$data['childFamilyId'] as Input_UuidComparisonExp?);

  Input_FamiliesBoolExp? get parent =>
      (_$data['parent'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get parentFamilyId =>
      (_$data['parentFamilyId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('child')) {
      final l$child = child;
      result$data['child'] = l$child?.toJson();
    }
    if (_$data.containsKey('childFamilyId')) {
      final l$childFamilyId = childFamilyId;
      result$data['childFamilyId'] = l$childFamilyId?.toJson();
    }
    if (_$data.containsKey('parent')) {
      final l$parent = parent;
      result$data['parent'] = l$parent?.toJson();
    }
    if (_$data.containsKey('parentFamilyId')) {
      final l$parentFamilyId = parentFamilyId;
      result$data['parentFamilyId'] = l$parentFamilyId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesFamiliesBoolExp<Input_FamiliesFamiliesBoolExp>
  get copyWith => CopyWith_Input_FamiliesFamiliesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesFamiliesBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$child = child;
    final l$childFamilyId = childFamilyId;
    final l$parent = parent;
    final l$parentFamilyId = parentFamilyId;
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
      _$data.containsKey('child') ? l$child : const {},
      _$data.containsKey('childFamilyId') ? l$childFamilyId : const {},
      _$data.containsKey('parent') ? l$parent : const {},
      _$data.containsKey('parentFamilyId') ? l$parentFamilyId : const {},
    ]);
  }
}

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
