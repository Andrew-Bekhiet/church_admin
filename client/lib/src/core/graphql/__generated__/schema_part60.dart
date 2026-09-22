// Part 60 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_UsersPreferencesUpdates<TRes> {
  factory CopyWith_Input_UsersPreferencesUpdates(
    Input_UsersPreferencesUpdates instance,
    TRes Function(Input_UsersPreferencesUpdates) then,
  ) = _CopyWithImpl_Input_UsersPreferencesUpdates;

  factory CopyWith_Input_UsersPreferencesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesUpdates;

  TRes call({
    Input_UsersPreferencesAppendInput? $_append,
    Input_UsersPreferencesDeleteAtPathInput? $_deleteAtPath,
    Input_UsersPreferencesDeleteElemInput? $_deleteElem,
    Input_UsersPreferencesDeleteKeyInput? $_deleteKey,
    Input_UsersPreferencesPrependInput? $_prepend,
    Input_UsersPreferencesSetInput? $_set,
    Input_UsersPreferencesBoolExp? where,
  });
  CopyWith_Input_UsersPreferencesAppendInput<TRes> get $_append;
  CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> get $_deleteAtPath;
  CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> get $_deleteElem;
  CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> get $_deleteKey;
  CopyWith_Input_UsersPreferencesPrependInput<TRes> get $_prepend;
  CopyWith_Input_UsersPreferencesSetInput<TRes> get $_set;
  CopyWith_Input_UsersPreferencesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_UsersPreferencesUpdates<TRes>
    implements CopyWith_Input_UsersPreferencesUpdates<TRes> {
  _CopyWithImpl_Input_UsersPreferencesUpdates(this._instance, this._then);

  final Input_UsersPreferencesUpdates _instance;

  final TRes Function(Input_UsersPreferencesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_append = _undefined,
    Object? $_deleteAtPath = _undefined,
    Object? $_deleteElem = _undefined,
    Object? $_deleteKey = _undefined,
    Object? $_prepend = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_UsersPreferencesUpdates._({
      ..._instance._$data,
      if ($_append != _undefined)
        '_append': ($_append as Input_UsersPreferencesAppendInput?),
      if ($_deleteAtPath != _undefined)
        '_deleteAtPath':
            ($_deleteAtPath as Input_UsersPreferencesDeleteAtPathInput?),
      if ($_deleteElem != _undefined)
        '_deleteElem': ($_deleteElem as Input_UsersPreferencesDeleteElemInput?),
      if ($_deleteKey != _undefined)
        '_deleteKey': ($_deleteKey as Input_UsersPreferencesDeleteKeyInput?),
      if ($_prepend != _undefined)
        '_prepend': ($_prepend as Input_UsersPreferencesPrependInput?),
      if ($_set != _undefined)
        '_set': ($_set as Input_UsersPreferencesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_UsersPreferencesBoolExp),
    }),
  );

  CopyWith_Input_UsersPreferencesAppendInput<TRes> get $_append {
    final local$$_append = _instance.$_append;
    return local$$_append == null
        ? CopyWith_Input_UsersPreferencesAppendInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesAppendInput(
            local$$_append,
            (e) => call($_append: e),
          );
  }

  CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> get $_deleteAtPath {
    final local$$_deleteAtPath = _instance.$_deleteAtPath;
    return local$$_deleteAtPath == null
        ? CopyWith_Input_UsersPreferencesDeleteAtPathInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_UsersPreferencesDeleteAtPathInput(
            local$$_deleteAtPath,
            (e) => call($_deleteAtPath: e),
          );
  }

  CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> get $_deleteElem {
    final local$$_deleteElem = _instance.$_deleteElem;
    return local$$_deleteElem == null
        ? CopyWith_Input_UsersPreferencesDeleteElemInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesDeleteElemInput(
            local$$_deleteElem,
            (e) => call($_deleteElem: e),
          );
  }

  CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> get $_deleteKey {
    final local$$_deleteKey = _instance.$_deleteKey;
    return local$$_deleteKey == null
        ? CopyWith_Input_UsersPreferencesDeleteKeyInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesDeleteKeyInput(
            local$$_deleteKey,
            (e) => call($_deleteKey: e),
          );
  }

  CopyWith_Input_UsersPreferencesPrependInput<TRes> get $_prepend {
    final local$$_prepend = _instance.$_prepend;
    return local$$_prepend == null
        ? CopyWith_Input_UsersPreferencesPrependInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesPrependInput(
            local$$_prepend,
            (e) => call($_prepend: e),
          );
  }

  CopyWith_Input_UsersPreferencesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_UsersPreferencesSetInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_UsersPreferencesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_UsersPreferencesUpdates<TRes>
    implements CopyWith_Input_UsersPreferencesUpdates<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesUpdates(this._res);

  TRes _res;

  call({
    Input_UsersPreferencesAppendInput? $_append,
    Input_UsersPreferencesDeleteAtPathInput? $_deleteAtPath,
    Input_UsersPreferencesDeleteElemInput? $_deleteElem,
    Input_UsersPreferencesDeleteKeyInput? $_deleteKey,
    Input_UsersPreferencesPrependInput? $_prepend,
    Input_UsersPreferencesSetInput? $_set,
    Input_UsersPreferencesBoolExp? where,
  }) => _res;

  CopyWith_Input_UsersPreferencesAppendInput<TRes> get $_append =>
      CopyWith_Input_UsersPreferencesAppendInput.stub(_res);

  CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> get $_deleteAtPath =>
      CopyWith_Input_UsersPreferencesDeleteAtPathInput.stub(_res);

  CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> get $_deleteElem =>
      CopyWith_Input_UsersPreferencesDeleteElemInput.stub(_res);

  CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> get $_deleteKey =>
      CopyWith_Input_UsersPreferencesDeleteKeyInput.stub(_res);

  CopyWith_Input_UsersPreferencesPrependInput<TRes> get $_prepend =>
      CopyWith_Input_UsersPreferencesPrependInput.stub(_res);

  CopyWith_Input_UsersPreferencesSetInput<TRes> get $_set =>
      CopyWith_Input_UsersPreferencesSetInput.stub(_res);

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get where =>
      CopyWith_Input_UsersPreferencesBoolExp.stub(_res);
}

class Input_UuidComparisonExp {
  factory Input_UuidComparisonExp({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  }) => Input_UuidComparisonExp._({
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

  Input_UuidComparisonExp._(this._$data);

  factory Input_UuidComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : stringToUuid(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : stringToUuid(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null ? null : stringToUuid(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : stringToUuid(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null ? null : stringToUuid(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null ? null : stringToUuid(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    return Input_UuidComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get $_eq => (_$data['_eq'] as UuidValue?);

  UuidValue? get $_gt => (_$data['_gt'] as UuidValue?);

  UuidValue? get $_gte => (_$data['_gte'] as UuidValue?);

  List<UuidValue>? get $_in => (_$data['_in'] as List<UuidValue>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  UuidValue? get $_lt => (_$data['_lt'] as UuidValue?);

  UuidValue? get $_lte => (_$data['_lte'] as UuidValue?);

  UuidValue? get $_neq => (_$data['_neq'] as UuidValue?);

  List<UuidValue>? get $_nin => (_$data['_nin'] as List<UuidValue>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : uuidToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : uuidToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : uuidToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : uuidToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : uuidToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : uuidToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => uuidToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_UuidComparisonExp<Input_UuidComparisonExp> get copyWith =>
      CopyWith_Input_UuidComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UuidComparisonExp || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_UuidComparisonExp<TRes> {
  factory CopyWith_Input_UuidComparisonExp(
    Input_UuidComparisonExp instance,
    TRes Function(Input_UuidComparisonExp) then,
  ) = _CopyWithImpl_Input_UuidComparisonExp;

  factory CopyWith_Input_UuidComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_UuidComparisonExp;

  TRes call({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  });
}

class _CopyWithImpl_Input_UuidComparisonExp<TRes>
    implements CopyWith_Input_UuidComparisonExp<TRes> {
  _CopyWithImpl_Input_UuidComparisonExp(this._instance, this._then);

  final Input_UuidComparisonExp _instance;

  final TRes Function(Input_UuidComparisonExp) _then;

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
    Input_UuidComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as UuidValue?),
      if ($_gt != _undefined) '_gt': ($_gt as UuidValue?),
      if ($_gte != _undefined) '_gte': ($_gte as UuidValue?),
      if ($_in != _undefined) '_in': ($_in as List<UuidValue>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as UuidValue?),
      if ($_lte != _undefined) '_lte': ($_lte as UuidValue?),
      if ($_neq != _undefined) '_neq': ($_neq as UuidValue?),
      if ($_nin != _undefined) '_nin': ($_nin as List<UuidValue>?),
    }),
  );
}

class _CopyWithStubImpl_Input_UuidComparisonExp<TRes>
    implements CopyWith_Input_UuidComparisonExp<TRes> {
  _CopyWithStubImpl_Input_UuidComparisonExp(this._res);

  TRes _res;

  call({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  }) => _res;
}

class Input_classesAggregateBoolExpBool_and {
  factory Input_classesAggregateBoolExpBool_and({
    required Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_classesAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpBool_and._(this._$data);

  factory Input_classesAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpBool_and._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpBool_and<
    Input_classesAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_classesAggregateBoolExpBool_and(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpBool_and(
    Input_classesAggregateBoolExpBool_and instance,
    TRes Function(Input_classesAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpBool_and;

  factory CopyWith_Input_classesAggregateBoolExpBool_and.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and;

  TRes call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_classesAggregateBoolExpBool_and _instance;

  final TRes Function(Input_classesAggregateBoolExpBool_and) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and(this._res);

  TRes _res;

  call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_classesAggregateBoolExpBool_or {
  factory Input_classesAggregateBoolExpBool_or({
    required Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_classesAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpBool_or._(this._$data);

  factory Input_classesAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpBool_or<
    Input_classesAggregateBoolExpBool_or
  >
  get copyWith => CopyWith_Input_classesAggregateBoolExpBool_or(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpBool_or ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpBool_or(
    Input_classesAggregateBoolExpBool_or instance,
    TRes Function(Input_classesAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpBool_or;

  factory CopyWith_Input_classesAggregateBoolExpBool_or.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or;

  TRes call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_classesAggregateBoolExpBool_or _instance;

  final TRes Function(Input_classesAggregateBoolExpBool_or) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or(this._res);

  TRes _res;

  call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_classesAggregateBoolExpCount {
  factory Input_classesAggregateBoolExpCount({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_classesAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpCount._(this._$data);

  factory Input_classesAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_ClassesSelectColumn((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_ClassesSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_ClassesSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_ClassesSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpCount<
    Input_classesAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_classesAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpCount(
    Input_classesAggregateBoolExpCount instance,
    TRes Function(Input_classesAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpCount;

  factory CopyWith_Input_classesAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpCount;

  TRes call({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpCount(this._instance, this._then);

  final Input_classesAggregateBoolExpCount _instance;

  final TRes Function(Input_classesAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_ClassesSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_groupsAggregateBoolExpCount {
  factory Input_groupsAggregateBoolExpCount({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_groupsAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_groupsAggregateBoolExpCount._(this._$data);

  factory Input_groupsAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_GroupsSelectColumn((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_groupsAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_GroupsSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_GroupsSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_GroupsBoolExp? get filter => (_$data['filter'] as Input_GroupsBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_GroupsSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_groupsAggregateBoolExpCount<Input_groupsAggregateBoolExpCount>
  get copyWith => CopyWith_Input_groupsAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_groupsAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_groupsAggregateBoolExpCount(
    Input_groupsAggregateBoolExpCount instance,
    TRes Function(Input_groupsAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_groupsAggregateBoolExpCount;

  factory CopyWith_Input_groupsAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_groupsAggregateBoolExpCount;

  TRes call({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_GroupsBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_groupsAggregateBoolExpCount<TRes>
    implements CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_groupsAggregateBoolExpCount(this._instance, this._then);

  final Input_groupsAggregateBoolExpCount _instance;

  final TRes Function(Input_groupsAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_groupsAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_GroupsSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_GroupsBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_GroupsBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_groupsAggregateBoolExpCount<TRes>
    implements CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_groupsAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_GroupsBoolExp<TRes> get filter =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyAttendanceHistoryAggregateBoolExpBool_and {
  factory Input_historyAttendanceHistoryAggregateBoolExpBool_and({
    required Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyAttendanceHistoryAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyAttendanceHistoryAggregateBoolExpBool_and._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyAttendanceHistoryAggregateBoolExpBool_and._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<
    Input_historyAttendanceHistoryAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyAttendanceHistoryAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<
  TRes
> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
    Input_historyAttendanceHistoryAggregateBoolExpBool_and instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and;

  TRes call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceHistoryAggregateBoolExpBool_and _instance;

  final TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_and)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyAttendanceHistoryAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and<
  TRes
>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
    this._res,
  );

  TRes _res;

  call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyAttendanceHistoryAggregateBoolExpBool_or {
  factory Input_historyAttendanceHistoryAggregateBoolExpBool_or({
    required Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyAttendanceHistoryAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyAttendanceHistoryAggregateBoolExpBool_or._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyAttendanceHistoryAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
    Input_historyAttendanceHistoryAggregateBoolExpBool_or
  >
  get copyWith =>
      CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyAttendanceHistoryAggregateBoolExpBool_or ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
  TRes
> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    Input_historyAttendanceHistoryAggregateBoolExpBool_or instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or;

  TRes call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceHistoryAggregateBoolExpBool_or _instance;

  final TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_or)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyAttendanceHistoryAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
  TRes
>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    this._res,
  );

  TRes _res;

  call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyAttendanceHistoryAggregateBoolExpCount {
  factory Input_historyAttendanceHistoryAggregateBoolExpCount({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyAttendanceHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyAttendanceHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryAttendanceHistorySelectColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyAttendanceHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryAttendanceHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryAttendanceHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryAttendanceHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<
    Input_historyAttendanceHistoryAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyAttendanceHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<
  TRes
> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
    Input_historyAttendanceHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyAttendanceHistoryAggregateBoolExpCount)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyAttendanceHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments':
            (arguments as List<Enum_HistoryAttendanceHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount<
  TRes
>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount(
    this._res,
  );

  TRes _res;

  call({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyCallHistoryAggregateBoolExpCount {
  factory Input_historyCallHistoryAggregateBoolExpCount({
    List<Enum_HistoryCallHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryCallHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyCallHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyCallHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyCallHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryCallHistorySelectColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyCallHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryCallHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryCallHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryCallHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryCallHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryCallHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyCallHistoryAggregateBoolExpCount<
    Input_historyCallHistoryAggregateBoolExpCount
  >
  get copyWith =>
      CopyWith_Input_historyCallHistoryAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyCallHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_historyCallHistoryAggregateBoolExpCount(
    Input_historyCallHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyCallHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyCallHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyCallHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryCallHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryCallHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyCallHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyCallHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyCallHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyCallHistoryAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyCallHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_HistoryCallHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryCallHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryCallHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_HistoryCallHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryCallHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryCallHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyConfessionHistoryAggregateBoolExpCount {
  factory Input_historyConfessionHistoryAggregateBoolExpCount({
    List<Enum_HistoryConfessionHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryConfessionHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyConfessionHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyConfessionHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyConfessionHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryConfessionHistorySelectColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyConfessionHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryConfessionHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryConfessionHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryConfessionHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryConfessionHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryConfessionHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<
    Input_historyConfessionHistoryAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyConfessionHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}
