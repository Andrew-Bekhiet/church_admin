// Part 18 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_DataCheckOverridesUpdates<TRes> {
  factory CopyWith_Input_DataCheckOverridesUpdates(
    Input_DataCheckOverridesUpdates instance,
    TRes Function(Input_DataCheckOverridesUpdates) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesUpdates;

  factory CopyWith_Input_DataCheckOverridesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesUpdates;

  TRes call({
    Input_DataCheckOverridesSetInput? $_set,
    Input_DataCheckOverridesBoolExp? where,
  });
  CopyWith_Input_DataCheckOverridesSetInput<TRes> get $_set;
  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DataCheckOverridesUpdates<TRes>
    implements CopyWith_Input_DataCheckOverridesUpdates<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesUpdates(this._instance, this._then);

  final Input_DataCheckOverridesUpdates _instance;

  final TRes Function(Input_DataCheckOverridesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_DataCheckOverridesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_DataCheckOverridesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_DataCheckOverridesBoolExp),
    }),
  );

  CopyWith_Input_DataCheckOverridesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_DataCheckOverridesSetInput.stub(_then(_instance))
        : CopyWith_Input_DataCheckOverridesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_DataCheckOverridesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesUpdates<TRes>
    implements CopyWith_Input_DataCheckOverridesUpdates<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesUpdates(this._res);

  TRes _res;

  call({
    Input_DataCheckOverridesSetInput? $_set,
    Input_DataCheckOverridesBoolExp? where,
  }) => _res;

  CopyWith_Input_DataCheckOverridesSetInput<TRes> get $_set =>
      CopyWith_Input_DataCheckOverridesSetInput.stub(_res);

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where =>
      CopyWith_Input_DataCheckOverridesBoolExp.stub(_res);
}

class Input_DataChecksBoolExp {
  factory Input_DataChecksBoolExp({
    List<Input_DataChecksBoolExp>? $_and,
    Input_DataChecksBoolExp? $_not,
    List<Input_DataChecksBoolExp>? $_or,
    Input_BooleanComparisonExp? addressCheck,
    Input_IntComparisonExp? completenessPercent,
    Input_JsonbComparisonExp? details,
    Input_BooleanComparisonExp? familyCheck,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_BooleanComparisonExp? userOverride,
  }) => Input_DataChecksBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (addressCheck != null) r'addressCheck': addressCheck,
    if (completenessPercent != null)
      r'completenessPercent': completenessPercent,
    if (details != null) r'details': details,
    if (familyCheck != null) r'familyCheck': familyCheck,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (userOverride != null) r'userOverride': userOverride,
  });

  Input_DataChecksBoolExp._(this._$data);

  factory Input_DataChecksBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DataChecksBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_DataChecksBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DataChecksBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('addressCheck')) {
      final l$addressCheck = data['addressCheck'];
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$addressCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('completenessPercent')) {
      final l$completenessPercent = data['completenessPercent'];
      result$data['completenessPercent'] = l$completenessPercent == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$completenessPercent as Map<String, dynamic>),
            );
    }
    if (data.containsKey('details')) {
      final l$details = data['details'];
      result$data['details'] = l$details == null
          ? null
          : Input_JsonbComparisonExp.fromJson(
              (l$details as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyCheck')) {
      final l$familyCheck = data['familyCheck'];
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$familyCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isComplete as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userOverride')) {
      final l$userOverride = data['userOverride'];
      result$data['userOverride'] = l$userOverride == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userOverride as Map<String, dynamic>),
            );
    }
    return Input_DataChecksBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DataChecksBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_DataChecksBoolExp>?);

  Input_DataChecksBoolExp? get $_not =>
      (_$data['_not'] as Input_DataChecksBoolExp?);

  List<Input_DataChecksBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_DataChecksBoolExp>?);

  Input_BooleanComparisonExp? get addressCheck =>
      (_$data['addressCheck'] as Input_BooleanComparisonExp?);

  Input_IntComparisonExp? get completenessPercent =>
      (_$data['completenessPercent'] as Input_IntComparisonExp?);

  Input_JsonbComparisonExp? get details =>
      (_$data['details'] as Input_JsonbComparisonExp?);

  Input_BooleanComparisonExp? get familyCheck =>
      (_$data['familyCheck'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isComplete =>
      (_$data['isComplete'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get userOverride =>
      (_$data['userOverride'] as Input_BooleanComparisonExp?);

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
    if (_$data.containsKey('addressCheck')) {
      final l$addressCheck = addressCheck;
      result$data['addressCheck'] = l$addressCheck?.toJson();
    }
    if (_$data.containsKey('completenessPercent')) {
      final l$completenessPercent = completenessPercent;
      result$data['completenessPercent'] = l$completenessPercent?.toJson();
    }
    if (_$data.containsKey('details')) {
      final l$details = details;
      result$data['details'] = l$details?.toJson();
    }
    if (_$data.containsKey('familyCheck')) {
      final l$familyCheck = familyCheck;
      result$data['familyCheck'] = l$familyCheck?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete?.toJson();
    }
    if (_$data.containsKey('userOverride')) {
      final l$userOverride = userOverride;
      result$data['userOverride'] = l$userOverride?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp> get copyWith =>
      CopyWith_Input_DataChecksBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataChecksBoolExp || runtimeType != other.runtimeType) {
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
    final l$addressCheck = addressCheck;
    final lOther$addressCheck = other.addressCheck;
    if (_$data.containsKey('addressCheck') !=
        other._$data.containsKey('addressCheck')) {
      return false;
    }
    if (l$addressCheck != lOther$addressCheck) {
      return false;
    }
    final l$completenessPercent = completenessPercent;
    final lOther$completenessPercent = other.completenessPercent;
    if (_$data.containsKey('completenessPercent') !=
        other._$data.containsKey('completenessPercent')) {
      return false;
    }
    if (l$completenessPercent != lOther$completenessPercent) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (_$data.containsKey('details') != other._$data.containsKey('details')) {
      return false;
    }
    if (l$details != lOther$details) {
      return false;
    }
    final l$familyCheck = familyCheck;
    final lOther$familyCheck = other.familyCheck;
    if (_$data.containsKey('familyCheck') !=
        other._$data.containsKey('familyCheck')) {
      return false;
    }
    if (l$familyCheck != lOther$familyCheck) {
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
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$userOverride = userOverride;
    final lOther$userOverride = other.userOverride;
    if (_$data.containsKey('userOverride') !=
        other._$data.containsKey('userOverride')) {
      return false;
    }
    if (l$userOverride != lOther$userOverride) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$addressCheck = addressCheck;
    final l$completenessPercent = completenessPercent;
    final l$details = details;
    final l$familyCheck = familyCheck;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$userOverride = userOverride;
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
      _$data.containsKey('addressCheck') ? l$addressCheck : const {},
      _$data.containsKey('completenessPercent')
          ? l$completenessPercent
          : const {},
      _$data.containsKey('details') ? l$details : const {},
      _$data.containsKey('familyCheck') ? l$familyCheck : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('userOverride') ? l$userOverride : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataChecksBoolExp<TRes> {
  factory CopyWith_Input_DataChecksBoolExp(
    Input_DataChecksBoolExp instance,
    TRes Function(Input_DataChecksBoolExp) then,
  ) = _CopyWithImpl_Input_DataChecksBoolExp;

  factory CopyWith_Input_DataChecksBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DataChecksBoolExp;

  TRes call({
    List<Input_DataChecksBoolExp>? $_and,
    Input_DataChecksBoolExp? $_not,
    List<Input_DataChecksBoolExp>? $_or,
    Input_BooleanComparisonExp? addressCheck,
    Input_IntComparisonExp? completenessPercent,
    Input_JsonbComparisonExp? details,
    Input_BooleanComparisonExp? familyCheck,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_BooleanComparisonExp? userOverride,
  });
  TRes $_and(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_DataChecksBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_BooleanComparisonExp<TRes> get addressCheck;
  CopyWith_Input_IntComparisonExp<TRes> get completenessPercent;
  CopyWith_Input_JsonbComparisonExp<TRes> get details;
  CopyWith_Input_BooleanComparisonExp<TRes> get familyCheck;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete;
  CopyWith_Input_BooleanComparisonExp<TRes> get userOverride;
}

class _CopyWithImpl_Input_DataChecksBoolExp<TRes>
    implements CopyWith_Input_DataChecksBoolExp<TRes> {
  _CopyWithImpl_Input_DataChecksBoolExp(this._instance, this._then);

  final Input_DataChecksBoolExp _instance;

  final TRes Function(Input_DataChecksBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? addressCheck = _undefined,
    Object? completenessPercent = _undefined,
    Object? details = _undefined,
    Object? familyCheck = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? userOverride = _undefined,
  }) => _then(
    Input_DataChecksBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_DataChecksBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_DataChecksBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_DataChecksBoolExp>?),
      if (addressCheck != _undefined)
        'addressCheck': (addressCheck as Input_BooleanComparisonExp?),
      if (completenessPercent != _undefined)
        'completenessPercent': (completenessPercent as Input_IntComparisonExp?),
      if (details != _undefined)
        'details': (details as Input_JsonbComparisonExp?),
      if (familyCheck != _undefined)
        'familyCheck': (familyCheck as Input_BooleanComparisonExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (isComplete != _undefined)
        'isComplete': (isComplete as Input_BooleanComparisonExp?),
      if (userOverride != _undefined)
        'userOverride': (userOverride as Input_BooleanComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_DataChecksBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DataChecksBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_DataChecksBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataChecksBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_DataChecksBoolExp>? Function(
      Iterable<CopyWith_Input_DataChecksBoolExp<Input_DataChecksBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_DataChecksBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_BooleanComparisonExp<TRes> get addressCheck {
    final local$addressCheck = _instance.addressCheck;
    return local$addressCheck == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$addressCheck,
            (e) => call(addressCheck: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get completenessPercent {
    final local$completenessPercent = _instance.completenessPercent;
    return local$completenessPercent == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$completenessPercent,
            (e) => call(completenessPercent: e),
          );
  }

  CopyWith_Input_JsonbComparisonExp<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith_Input_JsonbComparisonExp.stub(_then(_instance))
        : CopyWith_Input_JsonbComparisonExp(
            local$details,
            (e) => call(details: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get familyCheck {
    final local$familyCheck = _instance.familyCheck;
    return local$familyCheck == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$familyCheck,
            (e) => call(familyCheck: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete {
    final local$isComplete = _instance.isComplete;
    return local$isComplete == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isComplete,
            (e) => call(isComplete: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get userOverride {
    final local$userOverride = _instance.userOverride;
    return local$userOverride == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$userOverride,
            (e) => call(userOverride: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataChecksBoolExp<TRes>
    implements CopyWith_Input_DataChecksBoolExp<TRes> {
  _CopyWithStubImpl_Input_DataChecksBoolExp(this._res);

  TRes _res;

  call({
    List<Input_DataChecksBoolExp>? $_and,
    Input_DataChecksBoolExp? $_not,
    List<Input_DataChecksBoolExp>? $_or,
    Input_BooleanComparisonExp? addressCheck,
    Input_IntComparisonExp? completenessPercent,
    Input_JsonbComparisonExp? details,
    Input_BooleanComparisonExp? familyCheck,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_BooleanComparisonExp? userOverride,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_DataChecksBoolExp<TRes> get $_not =>
      CopyWith_Input_DataChecksBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BooleanComparisonExp<TRes> get addressCheck =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get completenessPercent =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_JsonbComparisonExp<TRes> get details =>
      CopyWith_Input_JsonbComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get familyCheck =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get userOverride =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_DataChecksOrderBy {
  factory Input_DataChecksOrderBy({
    Enum_OrderBy? addressCheck,
    Enum_OrderBy? completenessPercent,
    Enum_OrderBy? details,
    Enum_OrderBy? familyCheck,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? userOverride,
  }) => Input_DataChecksOrderBy._({
    if (addressCheck != null) r'addressCheck': addressCheck,
    if (completenessPercent != null)
      r'completenessPercent': completenessPercent,
    if (details != null) r'details': details,
    if (familyCheck != null) r'familyCheck': familyCheck,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (userOverride != null) r'userOverride': userOverride,
  });

  Input_DataChecksOrderBy._(this._$data);

  factory Input_DataChecksOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressCheck')) {
      final l$addressCheck = data['addressCheck'];
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : fromJson_Enum_OrderBy((l$addressCheck as String));
    }
    if (data.containsKey('completenessPercent')) {
      final l$completenessPercent = data['completenessPercent'];
      result$data['completenessPercent'] = l$completenessPercent == null
          ? null
          : fromJson_Enum_OrderBy((l$completenessPercent as String));
    }
    if (data.containsKey('details')) {
      final l$details = data['details'];
      result$data['details'] = l$details == null
          ? null
          : fromJson_Enum_OrderBy((l$details as String));
    }
    if (data.containsKey('familyCheck')) {
      final l$familyCheck = data['familyCheck'];
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : fromJson_Enum_OrderBy((l$familyCheck as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : fromJson_Enum_OrderBy((l$isComplete as String));
    }
    if (data.containsKey('userOverride')) {
      final l$userOverride = data['userOverride'];
      result$data['userOverride'] = l$userOverride == null
          ? null
          : fromJson_Enum_OrderBy((l$userOverride as String));
    }
    return Input_DataChecksOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get addressCheck => (_$data['addressCheck'] as Enum_OrderBy?);

  Enum_OrderBy? get completenessPercent =>
      (_$data['completenessPercent'] as Enum_OrderBy?);

  Enum_OrderBy? get details => (_$data['details'] as Enum_OrderBy?);

  Enum_OrderBy? get familyCheck => (_$data['familyCheck'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get isComplete => (_$data['isComplete'] as Enum_OrderBy?);

  Enum_OrderBy? get userOverride => (_$data['userOverride'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressCheck')) {
      final l$addressCheck = addressCheck;
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : toJson_Enum_OrderBy(l$addressCheck);
    }
    if (_$data.containsKey('completenessPercent')) {
      final l$completenessPercent = completenessPercent;
      result$data['completenessPercent'] = l$completenessPercent == null
          ? null
          : toJson_Enum_OrderBy(l$completenessPercent);
    }
    if (_$data.containsKey('details')) {
      final l$details = details;
      result$data['details'] = l$details == null
          ? null
          : toJson_Enum_OrderBy(l$details);
    }
    if (_$data.containsKey('familyCheck')) {
      final l$familyCheck = familyCheck;
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : toJson_Enum_OrderBy(l$familyCheck);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete == null
          ? null
          : toJson_Enum_OrderBy(l$isComplete);
    }
    if (_$data.containsKey('userOverride')) {
      final l$userOverride = userOverride;
      result$data['userOverride'] = l$userOverride == null
          ? null
          : toJson_Enum_OrderBy(l$userOverride);
    }
    return result$data;
  }

  CopyWith_Input_DataChecksOrderBy<Input_DataChecksOrderBy> get copyWith =>
      CopyWith_Input_DataChecksOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataChecksOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressCheck = addressCheck;
    final lOther$addressCheck = other.addressCheck;
    if (_$data.containsKey('addressCheck') !=
        other._$data.containsKey('addressCheck')) {
      return false;
    }
    if (l$addressCheck != lOther$addressCheck) {
      return false;
    }
    final l$completenessPercent = completenessPercent;
    final lOther$completenessPercent = other.completenessPercent;
    if (_$data.containsKey('completenessPercent') !=
        other._$data.containsKey('completenessPercent')) {
      return false;
    }
    if (l$completenessPercent != lOther$completenessPercent) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (_$data.containsKey('details') != other._$data.containsKey('details')) {
      return false;
    }
    if (l$details != lOther$details) {
      return false;
    }
    final l$familyCheck = familyCheck;
    final lOther$familyCheck = other.familyCheck;
    if (_$data.containsKey('familyCheck') !=
        other._$data.containsKey('familyCheck')) {
      return false;
    }
    if (l$familyCheck != lOther$familyCheck) {
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
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$userOverride = userOverride;
    final lOther$userOverride = other.userOverride;
    if (_$data.containsKey('userOverride') !=
        other._$data.containsKey('userOverride')) {
      return false;
    }
    if (l$userOverride != lOther$userOverride) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressCheck = addressCheck;
    final l$completenessPercent = completenessPercent;
    final l$details = details;
    final l$familyCheck = familyCheck;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$userOverride = userOverride;
    return Object.hashAll([
      _$data.containsKey('addressCheck') ? l$addressCheck : const {},
      _$data.containsKey('completenessPercent')
          ? l$completenessPercent
          : const {},
      _$data.containsKey('details') ? l$details : const {},
      _$data.containsKey('familyCheck') ? l$familyCheck : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('userOverride') ? l$userOverride : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataChecksOrderBy<TRes> {
  factory CopyWith_Input_DataChecksOrderBy(
    Input_DataChecksOrderBy instance,
    TRes Function(Input_DataChecksOrderBy) then,
  ) = _CopyWithImpl_Input_DataChecksOrderBy;

  factory CopyWith_Input_DataChecksOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_DataChecksOrderBy;

  TRes call({
    Enum_OrderBy? addressCheck,
    Enum_OrderBy? completenessPercent,
    Enum_OrderBy? details,
    Enum_OrderBy? familyCheck,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? userOverride,
  });
}

class _CopyWithImpl_Input_DataChecksOrderBy<TRes>
    implements CopyWith_Input_DataChecksOrderBy<TRes> {
  _CopyWithImpl_Input_DataChecksOrderBy(this._instance, this._then);

  final Input_DataChecksOrderBy _instance;

  final TRes Function(Input_DataChecksOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressCheck = _undefined,
    Object? completenessPercent = _undefined,
    Object? details = _undefined,
    Object? familyCheck = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? userOverride = _undefined,
  }) => _then(
    Input_DataChecksOrderBy._({
      ..._instance._$data,
      if (addressCheck != _undefined)
        'addressCheck': (addressCheck as Enum_OrderBy?),
      if (completenessPercent != _undefined)
        'completenessPercent': (completenessPercent as Enum_OrderBy?),
      if (details != _undefined) 'details': (details as Enum_OrderBy?),
      if (familyCheck != _undefined)
        'familyCheck': (familyCheck as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (isComplete != _undefined) 'isComplete': (isComplete as Enum_OrderBy?),
      if (userOverride != _undefined)
        'userOverride': (userOverride as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_DataChecksOrderBy<TRes>
    implements CopyWith_Input_DataChecksOrderBy<TRes> {
  _CopyWithStubImpl_Input_DataChecksOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? addressCheck,
    Enum_OrderBy? completenessPercent,
    Enum_OrderBy? details,
    Enum_OrderBy? familyCheck,
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? userOverride,
  }) => _res;
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

abstract class CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  factory CopyWith_Input_DistrictsObjRelInsertInput(
    Input_DistrictsObjRelInsertInput instance,
    TRes Function(Input_DistrictsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_DistrictsObjRelInsertInput;

  factory CopyWith_Input_DistrictsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsObjRelInsertInput;

  TRes call({
    Input_DistrictsInsertInput? data,
    Input_DistrictsOnConflict? onConflict,
  });
  CopyWith_Input_DistrictsInsertInput<TRes> get data;
  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_DistrictsObjRelInsertInput<TRes>
    implements CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_DistrictsObjRelInsertInput(this._instance, this._then);

  final Input_DistrictsObjRelInsertInput _instance;

  final TRes Function(Input_DistrictsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_DistrictsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_DistrictsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_DistrictsOnConflict?),
        }),
      );

  CopyWith_Input_DistrictsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_DistrictsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_DistrictsOnConflict.stub(_then(_instance))
        : CopyWith_Input_DistrictsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_DistrictsObjRelInsertInput<TRes>
    implements CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_DistrictsInsertInput? data,
    Input_DistrictsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_DistrictsInsertInput<TRes> get data =>
      CopyWith_Input_DistrictsInsertInput.stub(_res);

  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict =>
      CopyWith_Input_DistrictsOnConflict.stub(_res);
}

class Input_DistrictsOnConflict {
  factory Input_DistrictsOnConflict({
    required Enum_DistrictsConstraint constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  }) => Input_DistrictsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_DistrictsOnConflict._(this._$data);

  factory Input_DistrictsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_DistrictsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_DistrictsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_DistrictsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_DistrictsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_DistrictsConstraint get constraint =>
      (_$data['constraint'] as Enum_DistrictsConstraint);

  List<Enum_DistrictsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_DistrictsUpdateColumn>?);

  Input_DistrictsBoolExp? get where =>
      (_$data['where'] as Input_DistrictsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_DistrictsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_DistrictsUpdateColumn>)
              .map((e) => toJson_Enum_DistrictsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DistrictsOnConflict<Input_DistrictsOnConflict> get copyWith =>
      CopyWith_Input_DistrictsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsOnConflict ||
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

abstract class CopyWith_Input_DistrictsOnConflict<TRes> {
  factory CopyWith_Input_DistrictsOnConflict(
    Input_DistrictsOnConflict instance,
    TRes Function(Input_DistrictsOnConflict) then,
  ) = _CopyWithImpl_Input_DistrictsOnConflict;

  factory CopyWith_Input_DistrictsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsOnConflict;

  TRes call({
    Enum_DistrictsConstraint? constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  });
  CopyWith_Input_DistrictsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DistrictsOnConflict<TRes>
    implements CopyWith_Input_DistrictsOnConflict<TRes> {
  _CopyWithImpl_Input_DistrictsOnConflict(this._instance, this._then);

  final Input_DistrictsOnConflict _instance;

  final TRes Function(Input_DistrictsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_DistrictsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_DistrictsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_DistrictsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_DistrictsBoolExp?),
    }),
  );

  CopyWith_Input_DistrictsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_DistrictsBoolExp.stub(_then(_instance))
        : CopyWith_Input_DistrictsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_DistrictsOnConflict<TRes>
    implements CopyWith_Input_DistrictsOnConflict<TRes> {
  _CopyWithStubImpl_Input_DistrictsOnConflict(this._res);

  TRes _res;

  call({
    Enum_DistrictsConstraint? constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  }) => _res;

  CopyWith_Input_DistrictsBoolExp<TRes> get where =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);
}

class Input_DistrictsOrderBy {
  factory Input_DistrictsOrderBy({Enum_OrderBy? id, Enum_OrderBy? name}) =>
      Input_DistrictsOrderBy._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_DistrictsOrderBy._(this._$data);

  factory Input_DistrictsOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_DistrictsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

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
    return result$data;
  }

  CopyWith_Input_DistrictsOrderBy<Input_DistrictsOrderBy> get copyWith =>
      CopyWith_Input_DistrictsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsOrderBy || runtimeType != other.runtimeType) {
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
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}
