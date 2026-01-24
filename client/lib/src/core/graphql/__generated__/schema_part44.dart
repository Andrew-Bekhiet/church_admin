// Part 44 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_PersonsPkColumnsInput<TRes> {
  factory CopyWith_Input_PersonsPkColumnsInput(
    Input_PersonsPkColumnsInput instance,
    TRes Function(Input_PersonsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_PersonsPkColumnsInput;

  factory CopyWith_Input_PersonsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_PersonsPkColumnsInput<TRes>
    implements CopyWith_Input_PersonsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_PersonsPkColumnsInput(this._instance, this._then);

  final Input_PersonsPkColumnsInput _instance;

  final TRes Function(Input_PersonsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_PersonsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsPkColumnsInput<TRes>
    implements CopyWith_Input_PersonsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_PersonsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_PersonsPrependInput {
  factory Input_PersonsPrependInput({Json? otherPhones}) =>
      Input_PersonsPrependInput._({
        if (otherPhones != null) r'otherPhones': otherPhones,
      });

  Input_PersonsPrependInput._(this._$data);

  factory Input_PersonsPrependInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as Json?);
    }
    return Input_PersonsPrependInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get otherPhones => (_$data['otherPhones'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    return result$data;
  }

  CopyWith_Input_PersonsPrependInput<Input_PersonsPrependInput> get copyWith =>
      CopyWith_Input_PersonsPrependInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsPrependInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otherPhones = otherPhones;
    return Object.hashAll([
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsPrependInput<TRes> {
  factory CopyWith_Input_PersonsPrependInput(
    Input_PersonsPrependInput instance,
    TRes Function(Input_PersonsPrependInput) then,
  ) = _CopyWithImpl_Input_PersonsPrependInput;

  factory CopyWith_Input_PersonsPrependInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsPrependInput;

  TRes call({Json? otherPhones});
}

class _CopyWithImpl_Input_PersonsPrependInput<TRes>
    implements CopyWith_Input_PersonsPrependInput<TRes> {
  _CopyWithImpl_Input_PersonsPrependInput(this._instance, this._then);

  final Input_PersonsPrependInput _instance;

  final TRes Function(Input_PersonsPrependInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? otherPhones = _undefined}) => _then(
    Input_PersonsPrependInput._({
      ..._instance._$data,
      if (otherPhones != _undefined) 'otherPhones': (otherPhones as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_PersonsPrependInput<TRes>
    implements CopyWith_Input_PersonsPrependInput<TRes> {
  _CopyWithStubImpl_Input_PersonsPrependInput(this._res);

  TRes _res;

  call({Json? otherPhones}) => _res;
}

class Input_PersonsServicesAggregateOrderBy {
  factory Input_PersonsServicesAggregateOrderBy({
    Enum_OrderBy? count,
    Input_PersonsServicesMaxOrderBy? max,
    Input_PersonsServicesMinOrderBy? min,
  }) => Input_PersonsServicesAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_PersonsServicesAggregateOrderBy._(this._$data);

  factory Input_PersonsServicesAggregateOrderBy.fromJson(
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
          : Input_PersonsServicesMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_PersonsServicesMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_PersonsServicesMaxOrderBy? get max =>
      (_$data['max'] as Input_PersonsServicesMaxOrderBy?);

  Input_PersonsServicesMinOrderBy? get min =>
      (_$data['min'] as Input_PersonsServicesMinOrderBy?);

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

  CopyWith_Input_PersonsServicesAggregateOrderBy<
    Input_PersonsServicesAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_PersonsServicesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesAggregateOrderBy ||
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

abstract class CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesAggregateOrderBy(
    Input_PersonsServicesAggregateOrderBy instance,
    TRes Function(Input_PersonsServicesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesAggregateOrderBy;

  factory CopyWith_Input_PersonsServicesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_PersonsServicesMaxOrderBy? max,
    Input_PersonsServicesMinOrderBy? min,
  });
  CopyWith_Input_PersonsServicesMaxOrderBy<TRes> get max;
  CopyWith_Input_PersonsServicesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_PersonsServicesAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsServicesAggregateOrderBy _instance;

  final TRes Function(Input_PersonsServicesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_PersonsServicesAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_PersonsServicesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_PersonsServicesMinOrderBy?),
    }),
  );

  CopyWith_Input_PersonsServicesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_PersonsServicesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_PersonsServicesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_PersonsServicesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesAggregateOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_PersonsServicesMaxOrderBy? max,
    Input_PersonsServicesMinOrderBy? min,
  }) => _res;

  CopyWith_Input_PersonsServicesMaxOrderBy<TRes> get max =>
      CopyWith_Input_PersonsServicesMaxOrderBy.stub(_res);

  CopyWith_Input_PersonsServicesMinOrderBy<TRes> get min =>
      CopyWith_Input_PersonsServicesMinOrderBy.stub(_res);
}

class Input_PersonsServicesArrRelInsertInput {
  factory Input_PersonsServicesArrRelInsertInput({
    required List<Input_PersonsServicesInsertInput> data,
    Input_PersonsServicesOnConflict? onConflict,
  }) => Input_PersonsServicesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_PersonsServicesArrRelInsertInput._(this._$data);

  factory Input_PersonsServicesArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_PersonsServicesInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsServicesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsServicesInsertInput> get data =>
      (_$data['data'] as List<Input_PersonsServicesInsertInput>);

  Input_PersonsServicesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsServicesOnConflict?);

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

  CopyWith_Input_PersonsServicesArrRelInsertInput<
    Input_PersonsServicesArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_PersonsServicesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesArrRelInsertInput ||
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

abstract class CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsServicesArrRelInsertInput(
    Input_PersonsServicesArrRelInsertInput instance,
    TRes Function(Input_PersonsServicesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesArrRelInsertInput;

  factory CopyWith_Input_PersonsServicesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesArrRelInsertInput;

  TRes call({
    List<Input_PersonsServicesInsertInput>? data,
    Input_PersonsServicesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_PersonsServicesInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsServicesInsertInput<
          Input_PersonsServicesInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_PersonsServicesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsServicesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsServicesArrRelInsertInput _instance;

  final TRes Function(Input_PersonsServicesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_PersonsServicesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_PersonsServicesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_PersonsServicesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_PersonsServicesInsertInput> Function(
      Iterable<
        CopyWith_Input_PersonsServicesInsertInput<
          Input_PersonsServicesInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_PersonsServicesInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_PersonsServicesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsServicesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesArrRelInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_PersonsServicesInsertInput>? data,
    Input_PersonsServicesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_PersonsServicesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsServicesOnConflict.stub(_res);
}

class Input_PersonsServicesBoolExp {
  factory Input_PersonsServicesBoolExp({
    List<Input_PersonsServicesBoolExp>? $_and,
    Input_PersonsServicesBoolExp? $_not,
    List<Input_PersonsServicesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
  }) => Input_PersonsServicesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesBoolExp._(this._$data);

  factory Input_PersonsServicesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsServicesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonsServicesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_PersonsServicesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsServicesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonsServicesBoolExp>?);

  Input_PersonsServicesBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonsServicesBoolExp?);

  List<Input_PersonsServicesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonsServicesBoolExp>?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
  get copyWith => CopyWith_Input_PersonsServicesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesBoolExp ||
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$person = person;
    final l$personId = personId;
    final l$service = service;
    final l$serviceId = serviceId;
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
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesBoolExp<TRes> {
  factory CopyWith_Input_PersonsServicesBoolExp(
    Input_PersonsServicesBoolExp instance,
    TRes Function(Input_PersonsServicesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonsServicesBoolExp;

  factory CopyWith_Input_PersonsServicesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesBoolExp;

  TRes call({
    List<Input_PersonsServicesBoolExp>? $_and,
    Input_PersonsServicesBoolExp? $_not,
    List<Input_PersonsServicesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
  });
  TRes $_and(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsServicesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
}

class _CopyWithImpl_Input_PersonsServicesBoolExp<TRes>
    implements CopyWith_Input_PersonsServicesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonsServicesBoolExp(this._instance, this._then);

  final Input_PersonsServicesBoolExp _instance;

  final TRes Function(Input_PersonsServicesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_PersonsServicesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_PersonsServicesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_PersonsServicesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_PersonsServicesBoolExp>?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_PersonsServicesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_PersonsServicesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonsServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_PersonsServicesBoolExp>? Function(
      Iterable<
        CopyWith_Input_PersonsServicesBoolExp<Input_PersonsServicesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_PersonsServicesBoolExp(e, (i) => i),
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

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service,
            (e) => call(service: e),
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
}

class _CopyWithStubImpl_Input_PersonsServicesBoolExp<TRes>
    implements CopyWith_Input_PersonsServicesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonsServicesBoolExp>? $_and,
    Input_PersonsServicesBoolExp? $_not,
    List<Input_PersonsServicesBoolExp>? $_or,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonsServicesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonsServicesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_PersonsServicesInsertInput {
  factory Input_PersonsServicesInsertInput({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
  }) => Input_PersonsServicesInsertInput._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesInsertInput._(this._$data);

  factory Input_PersonsServicesInsertInput.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    return Input_PersonsServicesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

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
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesInsertInput<Input_PersonsServicesInsertInput>
  get copyWith => CopyWith_Input_PersonsServicesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesInsertInput ||
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$personId = personId;
    final l$service = service;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesInsertInput<TRes> {
  factory CopyWith_Input_PersonsServicesInsertInput(
    Input_PersonsServicesInsertInput instance,
    TRes Function(Input_PersonsServicesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesInsertInput;

  factory CopyWith_Input_PersonsServicesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesInsertInput;

  TRes call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
  });
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
}

class _CopyWithImpl_Input_PersonsServicesInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesInsertInput(this._instance, this._then);

  final Input_PersonsServicesInsertInput _instance;

  final TRes Function(Input_PersonsServicesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_PersonsServicesInsertInput._({
      ..._instance._$data,
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
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

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesInsertInput<TRes>
    implements CopyWith_Input_PersonsServicesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
  }) => _res;

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);
}

class Input_PersonsServicesMaxOrderBy {
  factory Input_PersonsServicesMaxOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? serviceId,
  }) => Input_PersonsServicesMaxOrderBy._({
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesMaxOrderBy._(this._$data);

  factory Input_PersonsServicesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_PersonsServicesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesMaxOrderBy<Input_PersonsServicesMaxOrderBy>
  get copyWith => CopyWith_Input_PersonsServicesMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesMaxOrderBy ||
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesMaxOrderBy(
    Input_PersonsServicesMaxOrderBy instance,
    TRes Function(Input_PersonsServicesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesMaxOrderBy;

  factory CopyWith_Input_PersonsServicesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesMaxOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? serviceId});
}

class _CopyWithImpl_Input_PersonsServicesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesMaxOrderBy(this._instance, this._then);

  final Input_PersonsServicesMaxOrderBy _instance;

  final TRes Function(Input_PersonsServicesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? serviceId = _undefined}) =>
      _then(
        Input_PersonsServicesMaxOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (serviceId != _undefined)
            'serviceId': (serviceId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsServicesMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? serviceId}) => _res;
}

class Input_PersonsServicesMinOrderBy {
  factory Input_PersonsServicesMinOrderBy({
    Enum_OrderBy? personId,
    Enum_OrderBy? serviceId,
  }) => Input_PersonsServicesMinOrderBy._({
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesMinOrderBy._(this._$data);

  factory Input_PersonsServicesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_PersonsServicesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesMinOrderBy<Input_PersonsServicesMinOrderBy>
  get copyWith => CopyWith_Input_PersonsServicesMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesMinOrderBy ||
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesMinOrderBy(
    Input_PersonsServicesMinOrderBy instance,
    TRes Function(Input_PersonsServicesMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesMinOrderBy;

  factory CopyWith_Input_PersonsServicesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesMinOrderBy;

  TRes call({Enum_OrderBy? personId, Enum_OrderBy? serviceId});
}

class _CopyWithImpl_Input_PersonsServicesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesMinOrderBy(this._instance, this._then);

  final Input_PersonsServicesMinOrderBy _instance;

  final TRes Function(Input_PersonsServicesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? serviceId = _undefined}) =>
      _then(
        Input_PersonsServicesMinOrderBy._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
          if (serviceId != _undefined)
            'serviceId': (serviceId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsServicesMinOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? personId, Enum_OrderBy? serviceId}) => _res;
}

class Input_PersonsServicesOnConflict {
  factory Input_PersonsServicesOnConflict({
    required Enum_PersonsServicesConstraint constraint,
    List<Enum_PersonsServicesUpdateColumn>? updateColumns,
    Input_PersonsServicesBoolExp? where,
  }) => Input_PersonsServicesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_PersonsServicesOnConflict._(this._$data);

  factory Input_PersonsServicesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_PersonsServicesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsServicesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsServicesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_PersonsServicesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsServicesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsServicesConstraint);

  List<Enum_PersonsServicesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsServicesUpdateColumn>?);

  Input_PersonsServicesBoolExp? get where =>
      (_$data['where'] as Input_PersonsServicesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsServicesConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsServicesUpdateColumn>)
              .map((e) => toJson_Enum_PersonsServicesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesOnConflict<Input_PersonsServicesOnConflict>
  get copyWith => CopyWith_Input_PersonsServicesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesOnConflict ||
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

abstract class CopyWith_Input_PersonsServicesOnConflict<TRes> {
  factory CopyWith_Input_PersonsServicesOnConflict(
    Input_PersonsServicesOnConflict instance,
    TRes Function(Input_PersonsServicesOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsServicesOnConflict;

  factory CopyWith_Input_PersonsServicesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesOnConflict;

  TRes call({
    Enum_PersonsServicesConstraint? constraint,
    List<Enum_PersonsServicesUpdateColumn>? updateColumns,
    Input_PersonsServicesBoolExp? where,
  });
  CopyWith_Input_PersonsServicesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsServicesOnConflict<TRes>
    implements CopyWith_Input_PersonsServicesOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsServicesOnConflict(this._instance, this._then);

  final Input_PersonsServicesOnConflict _instance;

  final TRes Function(Input_PersonsServicesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_PersonsServicesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_PersonsServicesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_PersonsServicesUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_PersonsServicesBoolExp?),
    }),
  );

  CopyWith_Input_PersonsServicesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesOnConflict<TRes>
    implements CopyWith_Input_PersonsServicesOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsServicesConstraint? constraint,
    List<Enum_PersonsServicesUpdateColumn>? updateColumns,
    Input_PersonsServicesBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonsServicesBoolExp<TRes> get where =>
      CopyWith_Input_PersonsServicesBoolExp.stub(_res);
}

class Input_PersonsServicesOrderBy {
  factory Input_PersonsServicesOrderBy({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
  }) => Input_PersonsServicesOrderBy._({
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesOrderBy._(this._$data);

  factory Input_PersonsServicesOrderBy.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesOrderBy.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_PersonsServicesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

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
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesOrderBy<Input_PersonsServicesOrderBy>
  get copyWith => CopyWith_Input_PersonsServicesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesOrderBy ||
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$personId = personId;
    final l$service = service;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesOrderBy<TRes> {
  factory CopyWith_Input_PersonsServicesOrderBy(
    Input_PersonsServicesOrderBy instance,
    TRes Function(Input_PersonsServicesOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsServicesOrderBy;

  factory CopyWith_Input_PersonsServicesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesOrderBy;

  TRes call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
  });
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
}

class _CopyWithImpl_Input_PersonsServicesOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsServicesOrderBy(this._instance, this._then);

  final Input_PersonsServicesOrderBy _instance;

  final TRes Function(Input_PersonsServicesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_PersonsServicesOrderBy._({
      ..._instance._$data,
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
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
}

class _CopyWithStubImpl_Input_PersonsServicesOrderBy<TRes>
    implements CopyWith_Input_PersonsServicesOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesOrderBy(this._res);

  TRes _res;

  call({
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
  }) => _res;

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);
}

class Input_PersonsServicesSetInput {
  factory Input_PersonsServicesSetInput({
    UuidValue? personId,
    UuidValue? serviceId,
  }) => Input_PersonsServicesSetInput._({
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesSetInput._(this._$data);

  factory Input_PersonsServicesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    return Input_PersonsServicesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesSetInput<Input_PersonsServicesSetInput>
  get copyWith => CopyWith_Input_PersonsServicesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesSetInput ||
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesSetInput<TRes> {
  factory CopyWith_Input_PersonsServicesSetInput(
    Input_PersonsServicesSetInput instance,
    TRes Function(Input_PersonsServicesSetInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesSetInput;

  factory CopyWith_Input_PersonsServicesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesSetInput;

  TRes call({UuidValue? personId, UuidValue? serviceId});
}

class _CopyWithImpl_Input_PersonsServicesSetInput<TRes>
    implements CopyWith_Input_PersonsServicesSetInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesSetInput(this._instance, this._then);

  final Input_PersonsServicesSetInput _instance;

  final TRes Function(Input_PersonsServicesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? serviceId = _undefined}) =>
      _then(
        Input_PersonsServicesSetInput._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as UuidValue?),
          if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsServicesSetInput<TRes>
    implements CopyWith_Input_PersonsServicesSetInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesSetInput(this._res);

  TRes _res;

  call({UuidValue? personId, UuidValue? serviceId}) => _res;
}

class Input_PersonsServicesStreamCursorInput {
  factory Input_PersonsServicesStreamCursorInput({
    required Input_PersonsServicesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_PersonsServicesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_PersonsServicesStreamCursorInput._(this._$data);

  factory Input_PersonsServicesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonsServicesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonsServicesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsServicesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonsServicesStreamCursorValueInput);

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

  CopyWith_Input_PersonsServicesStreamCursorInput<
    Input_PersonsServicesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_PersonsServicesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesStreamCursorInput ||
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

abstract class CopyWith_Input_PersonsServicesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonsServicesStreamCursorInput(
    Input_PersonsServicesStreamCursorInput instance,
    TRes Function(Input_PersonsServicesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesStreamCursorInput;

  factory CopyWith_Input_PersonsServicesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesStreamCursorInput;

  TRes call({
    Input_PersonsServicesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonsServicesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonsServicesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsServicesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_PersonsServicesStreamCursorInput _instance;

  final TRes Function(Input_PersonsServicesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_PersonsServicesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_PersonsServicesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_PersonsServicesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonsServicesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonsServicesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonsServicesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_PersonsServicesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonsServicesStreamCursorValueInput.stub(_res);
}

class Input_PersonsServicesStreamCursorValueInput {
  factory Input_PersonsServicesStreamCursorValueInput({
    UuidValue? personId,
    UuidValue? serviceId,
  }) => Input_PersonsServicesStreamCursorValueInput._({
    if (personId != null) r'personId': personId,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_PersonsServicesStreamCursorValueInput._(this._$data);

  factory Input_PersonsServicesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    return Input_PersonsServicesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_PersonsServicesStreamCursorValueInput<
    Input_PersonsServicesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_PersonsServicesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesStreamCursorValueInput ||
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsServicesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonsServicesStreamCursorValueInput(
    Input_PersonsServicesStreamCursorValueInput instance,
    TRes Function(Input_PersonsServicesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonsServicesStreamCursorValueInput;

  factory CopyWith_Input_PersonsServicesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesStreamCursorValueInput;

  TRes call({UuidValue? personId, UuidValue? serviceId});
}

class _CopyWithImpl_Input_PersonsServicesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsServicesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonsServicesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonsServicesStreamCursorValueInput _instance;

  final TRes Function(Input_PersonsServicesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? serviceId = _undefined}) =>
      _then(
        Input_PersonsServicesStreamCursorValueInput._({
          ..._instance._$data,
          if (personId != _undefined) 'personId': (personId as UuidValue?),
          if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_PersonsServicesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonsServicesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? personId, UuidValue? serviceId}) => _res;
}

class Input_PersonsServicesUpdates {
  factory Input_PersonsServicesUpdates({
    Input_PersonsServicesSetInput? $_set,
    required Input_PersonsServicesBoolExp where,
  }) => Input_PersonsServicesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_PersonsServicesUpdates._(this._$data);

  factory Input_PersonsServicesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_PersonsServicesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_PersonsServicesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_PersonsServicesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsServicesSetInput? get $_set =>
      (_$data['_set'] as Input_PersonsServicesSetInput?);

  Input_PersonsServicesBoolExp get where =>
      (_$data['where'] as Input_PersonsServicesBoolExp);

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

  CopyWith_Input_PersonsServicesUpdates<Input_PersonsServicesUpdates>
  get copyWith => CopyWith_Input_PersonsServicesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsServicesUpdates ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_PersonsServicesUpdates<TRes> {
  factory CopyWith_Input_PersonsServicesUpdates(
    Input_PersonsServicesUpdates instance,
    TRes Function(Input_PersonsServicesUpdates) then,
  ) = _CopyWithImpl_Input_PersonsServicesUpdates;

  factory CopyWith_Input_PersonsServicesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsServicesUpdates;

  TRes call({
    Input_PersonsServicesSetInput? $_set,
    Input_PersonsServicesBoolExp? where,
  });
  CopyWith_Input_PersonsServicesSetInput<TRes> get $_set;
  CopyWith_Input_PersonsServicesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsServicesUpdates<TRes>
    implements CopyWith_Input_PersonsServicesUpdates<TRes> {
  _CopyWithImpl_Input_PersonsServicesUpdates(this._instance, this._then);

  final Input_PersonsServicesUpdates _instance;

  final TRes Function(Input_PersonsServicesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_PersonsServicesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_PersonsServicesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_PersonsServicesBoolExp),
    }),
  );

  CopyWith_Input_PersonsServicesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_PersonsServicesSetInput.stub(_then(_instance))
        : CopyWith_Input_PersonsServicesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_PersonsServicesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_PersonsServicesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_PersonsServicesUpdates<TRes>
    implements CopyWith_Input_PersonsServicesUpdates<TRes> {
  _CopyWithStubImpl_Input_PersonsServicesUpdates(this._res);

  TRes _res;

  call({
    Input_PersonsServicesSetInput? $_set,
    Input_PersonsServicesBoolExp? where,
  }) => _res;

  CopyWith_Input_PersonsServicesSetInput<TRes> get $_set =>
      CopyWith_Input_PersonsServicesSetInput.stub(_res);

  CopyWith_Input_PersonsServicesBoolExp<TRes> get where =>
      CopyWith_Input_PersonsServicesBoolExp.stub(_res);
}

class Input_PersonsSetInput {
  factory Input_PersonsSetInput({
    String? addressText,
    DateTime? birthdate,
    UuidValue? churchId,
    UuidValue? collegeId,
    int? color,
    UuidValue? familyId,
    UuidValue? fatherId,
    bool? gender,
    Map<String, dynamic>? geolocation,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    String? jobDescription,
    UuidValue? jobId,
    String? mainPhone,
    String? martialStatus,
    String? name,
    int? nationalId,
    String? notes,
    Json? otherPhones,
    UuidValue? personTypeId,
    UuidValue? qualificationId,
    UuidValue? schoolId,
    String? serviceType,
    UuidValue? servingChurchId,
    UuidValue? shammasLevelId,
    UuidValue? stateId,
    UuidValue? storeId,
    int? studyYearId,
    String? workStatus,
  }) => Input_PersonsSetInput._({
    if (addressText != null) r'addressText': addressText,
    if (birthdate != null) r'birthdate': birthdate,
    if (churchId != null) r'churchId': churchId,
    if (collegeId != null) r'collegeId': collegeId,
    if (color != null) r'color': color,
    if (familyId != null) r'familyId': familyId,
    if (fatherId != null) r'fatherId': fatherId,
    if (gender != null) r'gender': gender,
    if (geolocation != null) r'geolocation': geolocation,
    if (isServant != null) r'isServant': isServant,
    if (isShammas != null) r'isShammas': isShammas,
    if (isStudent != null) r'isStudent': isStudent,
    if (jobDescription != null) r'jobDescription': jobDescription,
    if (jobId != null) r'jobId': jobId,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (martialStatus != null) r'martialStatus': martialStatus,
    if (name != null) r'name': name,
    if (nationalId != null) r'nationalId': nationalId,
    if (notes != null) r'notes': notes,
    if (otherPhones != null) r'otherPhones': otherPhones,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (qualificationId != null) r'qualificationId': qualificationId,
    if (schoolId != null) r'schoolId': schoolId,
    if (serviceType != null) r'serviceType': serviceType,
    if (servingChurchId != null) r'servingChurchId': servingChurchId,
    if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
    if (stateId != null) r'stateId': stateId,
    if (storeId != null) r'storeId': storeId,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (workStatus != null) r'workStatus': workStatus,
  });

  Input_PersonsSetInput._(this._$data);

  factory Input_PersonsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = (l$addressText as String?);
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateFromString(l$birthdate);
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : stringToUuid(l$churchId);
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : stringToUuid(l$collegeId);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : stringToUuid(l$fatherId);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = (l$isServant as bool?);
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = (l$isShammas as bool?);
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = (l$isStudent as bool?);
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = l$jobId == null ? null : stringToUuid(l$jobId);
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = (l$mainPhone as String?);
    }
    if (data.containsKey('martialStatus')) {
      final l$martialStatus = data['martialStatus'];
      result$data['martialStatus'] = (l$martialStatus as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nationalId')) {
      final l$nationalId = data['nationalId'];
      result$data['nationalId'] = (l$nationalId as int?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = (l$otherPhones as Json?);
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId);
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : stringToUuid(l$qualificationId);
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : stringToUuid(l$schoolId);
    }
    if (data.containsKey('serviceType')) {
      final l$serviceType = data['serviceType'];
      result$data['serviceType'] = (l$serviceType as String?);
    }
    if (data.containsKey('servingChurchId')) {
      final l$servingChurchId = data['servingChurchId'];
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : stringToUuid(l$servingChurchId);
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : stringToUuid(l$shammasLevelId);
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : stringToUuid(l$stateId);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : stringToUuid(l$storeId);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('workStatus')) {
      final l$workStatus = data['workStatus'];
      result$data['workStatus'] = (l$workStatus as String?);
    }
    return Input_PersonsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get addressText => (_$data['addressText'] as String?);

  DateTime? get birthdate => (_$data['birthdate'] as DateTime?);

  UuidValue? get churchId => (_$data['churchId'] as UuidValue?);

  UuidValue? get collegeId => (_$data['collegeId'] as UuidValue?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  UuidValue? get fatherId => (_$data['fatherId'] as UuidValue?);

  bool? get gender => (_$data['gender'] as bool?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  bool? get isServant => (_$data['isServant'] as bool?);

  bool? get isShammas => (_$data['isShammas'] as bool?);

  bool? get isStudent => (_$data['isStudent'] as bool?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  UuidValue? get jobId => (_$data['jobId'] as UuidValue?);

  String? get mainPhone => (_$data['mainPhone'] as String?);

  String? get martialStatus => (_$data['martialStatus'] as String?);

  String? get name => (_$data['name'] as String?);

  int? get nationalId => (_$data['nationalId'] as int?);

  String? get notes => (_$data['notes'] as String?);

  Json? get otherPhones => (_$data['otherPhones'] as Json?);

  UuidValue? get personTypeId => (_$data['personTypeId'] as UuidValue?);

  UuidValue? get qualificationId => (_$data['qualificationId'] as UuidValue?);

  UuidValue? get schoolId => (_$data['schoolId'] as UuidValue?);

  String? get serviceType => (_$data['serviceType'] as String?);

  UuidValue? get servingChurchId => (_$data['servingChurchId'] as UuidValue?);

  UuidValue? get shammasLevelId => (_$data['shammasLevelId'] as UuidValue?);

  UuidValue? get stateId => (_$data['stateId'] as UuidValue?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  String? get workStatus => (_$data['workStatus'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] = l$addressText;
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate == null
          ? null
          : dateToString(l$birthdate);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId == null
          ? null
          : uuidToString(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] = l$collegeId == null
          ? null
          : uuidToString(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] = l$fatherId == null
          ? null
          : uuidToString(l$fatherId);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] = l$isServant;
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] = l$isShammas;
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] = l$isStudent;
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId == null ? null : uuidToString(l$jobId);
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone;
    }
    if (_$data.containsKey('martialStatus')) {
      final l$martialStatus = martialStatus;
      result$data['martialStatus'] = l$martialStatus;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nationalId')) {
      final l$nationalId = nationalId;
      result$data['nationalId'] = l$nationalId;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] = l$otherPhones;
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : uuidToString(l$personTypeId);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : uuidToString(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] = l$schoolId == null
          ? null
          : uuidToString(l$schoolId);
    }
    if (_$data.containsKey('serviceType')) {
      final l$serviceType = serviceType;
      result$data['serviceType'] = l$serviceType;
    }
    if (_$data.containsKey('servingChurchId')) {
      final l$servingChurchId = servingChurchId;
      result$data['servingChurchId'] = l$servingChurchId == null
          ? null
          : uuidToString(l$servingChurchId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : uuidToString(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] = l$stateId == null
          ? null
          : uuidToString(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : uuidToString(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('workStatus')) {
      final l$workStatus = workStatus;
      result$data['workStatus'] = l$workStatus;
    }
    return result$data;
  }

  CopyWith_Input_PersonsSetInput<Input_PersonsSetInput> get copyWith =>
      CopyWith_Input_PersonsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsSetInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressText = addressText;
    final lOther$addressText = other.addressText;
    if (_$data.containsKey('addressText') !=
        other._$data.containsKey('addressText')) {
      return false;
    }
    if (l$addressText != lOther$addressText) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
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
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (_$data.containsKey('isShammas') !=
        other._$data.containsKey('isShammas')) {
      return false;
    }
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (_$data.containsKey('martialStatus') !=
        other._$data.containsKey('martialStatus')) {
      return false;
    }
    if (l$martialStatus != lOther$martialStatus) {
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
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (_$data.containsKey('nationalId') !=
        other._$data.containsKey('nationalId')) {
      return false;
    }
    if (l$nationalId != lOther$nationalId) {
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
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (_$data.containsKey('serviceType') !=
        other._$data.containsKey('serviceType')) {
      return false;
    }
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$servingChurchId = servingChurchId;
    final lOther$servingChurchId = other.servingChurchId;
    if (_$data.containsKey('servingChurchId') !=
        other._$data.containsKey('servingChurchId')) {
      return false;
    }
    if (l$servingChurchId != lOther$servingChurchId) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (_$data.containsKey('workStatus') !=
        other._$data.containsKey('workStatus')) {
      return false;
    }
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressText = addressText;
    final l$birthdate = birthdate;
    final l$churchId = churchId;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$familyId = familyId;
    final l$fatherId = fatherId;
    final l$gender = gender;
    final l$geolocation = geolocation;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$mainPhone = mainPhone;
    final l$martialStatus = martialStatus;
    final l$name = name;
    final l$nationalId = nationalId;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personTypeId = personTypeId;
    final l$qualificationId = qualificationId;
    final l$schoolId = schoolId;
    final l$serviceType = serviceType;
    final l$servingChurchId = servingChurchId;
    final l$shammasLevelId = shammasLevelId;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$workStatus = workStatus;
    return Object.hashAll([
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('martialStatus') ? l$martialStatus : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nationalId') ? l$nationalId : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('serviceType') ? l$serviceType : const {},
      _$data.containsKey('servingChurchId') ? l$servingChurchId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('workStatus') ? l$workStatus : const {},
    ]);
  }
}
