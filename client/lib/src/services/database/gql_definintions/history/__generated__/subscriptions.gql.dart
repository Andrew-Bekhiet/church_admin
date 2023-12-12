import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_editHistory {
  factory Variables_Subscription_editHistory({
    List<Input_HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_editHistory._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_editHistory._(this._$data);

  factory Variables_Subscription_editHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_HistoryEditHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_editHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryEditHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryEditHistoryBoolExp>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_editHistory<
          Variables_Subscription_editHistory>
      get copyWith => CopyWith_Variables_Subscription_editHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_editHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_editHistory<TRes> {
  factory CopyWith_Variables_Subscription_editHistory(
    Variables_Subscription_editHistory instance,
    TRes Function(Variables_Subscription_editHistory) then,
  ) = _CopyWithImpl_Variables_Subscription_editHistory;

  factory CopyWith_Variables_Subscription_editHistory.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_editHistory;

  TRes call({
    List<Input_HistoryEditHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_editHistory<TRes>
    implements CopyWith_Variables_Subscription_editHistory<TRes> {
  _CopyWithImpl_Variables_Subscription_editHistory(
    this._instance,
    this._then,
  );

  final Variables_Subscription_editHistory _instance;

  final TRes Function(Variables_Subscription_editHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_editHistory._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_HistoryEditHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_editHistory<TRes>
    implements CopyWith_Variables_Subscription_editHistory<TRes> {
  _CopyWithStubImpl_Variables_Subscription_editHistory(this._res);

  TRes _res;

  call({
    List<Input_HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_editHistory {
  Subscription_editHistory({required this.historyEditHistory});

  factory Subscription_editHistory.fromJson(Map<String, dynamic> json) {
    final l$historyEditHistory = json['historyEditHistory'];
    return Subscription_editHistory(
        historyEditHistory: (l$historyEditHistory as List<dynamic>)
            .map((e) =>
                Fragment_EditHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_EditHistory> historyEditHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyEditHistory = historyEditHistory;
    _resultData['historyEditHistory'] =
        l$historyEditHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyEditHistory = historyEditHistory;
    return Object.hashAll([Object.hashAll(l$historyEditHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_editHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyEditHistory = historyEditHistory;
    final lOther$historyEditHistory = other.historyEditHistory;
    if (l$historyEditHistory.length != lOther$historyEditHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyEditHistory.length; i++) {
      final l$historyEditHistory$entry = l$historyEditHistory[i];
      final lOther$historyEditHistory$entry = lOther$historyEditHistory[i];
      if (l$historyEditHistory$entry != lOther$historyEditHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_editHistory
    on Subscription_editHistory {
  CopyWith_Subscription_editHistory<Subscription_editHistory> get copyWith =>
      CopyWith_Subscription_editHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_editHistory<TRes> {
  factory CopyWith_Subscription_editHistory(
    Subscription_editHistory instance,
    TRes Function(Subscription_editHistory) then,
  ) = _CopyWithImpl_Subscription_editHistory;

  factory CopyWith_Subscription_editHistory.stub(TRes res) =
      _CopyWithStubImpl_Subscription_editHistory;

  TRes call({List<Fragment_EditHistory>? historyEditHistory});
  TRes historyEditHistory(
      Iterable<Fragment_EditHistory> Function(
              Iterable<CopyWith_Fragment_EditHistory<Fragment_EditHistory>>)
          _fn);
}

class _CopyWithImpl_Subscription_editHistory<TRes>
    implements CopyWith_Subscription_editHistory<TRes> {
  _CopyWithImpl_Subscription_editHistory(
    this._instance,
    this._then,
  );

  final Subscription_editHistory _instance;

  final TRes Function(Subscription_editHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyEditHistory = _undefined}) =>
      _then(Subscription_editHistory(
          historyEditHistory:
              historyEditHistory == _undefined || historyEditHistory == null
                  ? _instance.historyEditHistory
                  : (historyEditHistory as List<Fragment_EditHistory>)));

  TRes historyEditHistory(
          Iterable<Fragment_EditHistory> Function(
                  Iterable<CopyWith_Fragment_EditHistory<Fragment_EditHistory>>)
              _fn) =>
      call(
          historyEditHistory: _fn(_instance.historyEditHistory
              .map((e) => CopyWith_Fragment_EditHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_editHistory<TRes>
    implements CopyWith_Subscription_editHistory<TRes> {
  _CopyWithStubImpl_Subscription_editHistory(this._res);

  TRes _res;

  call({List<Fragment_EditHistory>? historyEditHistory}) => _res;

  historyEditHistory(_fn) => _res;
}

const documentNodeSubscriptioneditHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'editHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryEditHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyEditHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'EditHistory'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionEditHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Variables_Subscription_personCallHistory {
  factory Variables_Subscription_personCallHistory({
    required UuidValue personId,
    List<Input_HistoryCallHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_personCallHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_personCallHistory._(this._$data);

  factory Variables_Subscription_personCallHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_personCallHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  List<Input_HistoryCallHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryCallHistoryBoolExp>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_personCallHistory<
          Variables_Subscription_personCallHistory>
      get copyWith => CopyWith_Variables_Subscription_personCallHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_personCallHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_personCallHistory<TRes> {
  factory CopyWith_Variables_Subscription_personCallHistory(
    Variables_Subscription_personCallHistory instance,
    TRes Function(Variables_Subscription_personCallHistory) then,
  ) = _CopyWithImpl_Variables_Subscription_personCallHistory;

  factory CopyWith_Variables_Subscription_personCallHistory.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_personCallHistory;

  TRes call({
    UuidValue? personId,
    List<Input_HistoryCallHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_personCallHistory<TRes>
    implements CopyWith_Variables_Subscription_personCallHistory<TRes> {
  _CopyWithImpl_Variables_Subscription_personCallHistory(
    this._instance,
    this._then,
  );

  final Variables_Subscription_personCallHistory _instance;

  final TRes Function(Variables_Subscription_personCallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_personCallHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input_HistoryCallHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_personCallHistory<TRes>
    implements CopyWith_Variables_Subscription_personCallHistory<TRes> {
  _CopyWithStubImpl_Variables_Subscription_personCallHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input_HistoryCallHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_personCallHistory {
  Subscription_personCallHistory({required this.historyCallHistory});

  factory Subscription_personCallHistory.fromJson(Map<String, dynamic> json) {
    final l$historyCallHistory = json['historyCallHistory'];
    return Subscription_personCallHistory(
        historyCallHistory: (l$historyCallHistory as List<dynamic>)
            .map((e) =>
                Fragment_CallHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_CallHistory> historyCallHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyCallHistory = historyCallHistory;
    _resultData['historyCallHistory'] =
        l$historyCallHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyCallHistory = historyCallHistory;
    return Object.hashAll([Object.hashAll(l$historyCallHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_personCallHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyCallHistory = historyCallHistory;
    final lOther$historyCallHistory = other.historyCallHistory;
    if (l$historyCallHistory.length != lOther$historyCallHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyCallHistory.length; i++) {
      final l$historyCallHistory$entry = l$historyCallHistory[i];
      final lOther$historyCallHistory$entry = lOther$historyCallHistory[i];
      if (l$historyCallHistory$entry != lOther$historyCallHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_personCallHistory
    on Subscription_personCallHistory {
  CopyWith_Subscription_personCallHistory<Subscription_personCallHistory>
      get copyWith => CopyWith_Subscription_personCallHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_personCallHistory<TRes> {
  factory CopyWith_Subscription_personCallHistory(
    Subscription_personCallHistory instance,
    TRes Function(Subscription_personCallHistory) then,
  ) = _CopyWithImpl_Subscription_personCallHistory;

  factory CopyWith_Subscription_personCallHistory.stub(TRes res) =
      _CopyWithStubImpl_Subscription_personCallHistory;

  TRes call({List<Fragment_CallHistory>? historyCallHistory});
  TRes historyCallHistory(
      Iterable<Fragment_CallHistory> Function(
              Iterable<CopyWith_Fragment_CallHistory<Fragment_CallHistory>>)
          _fn);
}

class _CopyWithImpl_Subscription_personCallHistory<TRes>
    implements CopyWith_Subscription_personCallHistory<TRes> {
  _CopyWithImpl_Subscription_personCallHistory(
    this._instance,
    this._then,
  );

  final Subscription_personCallHistory _instance;

  final TRes Function(Subscription_personCallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyCallHistory = _undefined}) =>
      _then(Subscription_personCallHistory(
          historyCallHistory:
              historyCallHistory == _undefined || historyCallHistory == null
                  ? _instance.historyCallHistory
                  : (historyCallHistory as List<Fragment_CallHistory>)));

  TRes historyCallHistory(
          Iterable<Fragment_CallHistory> Function(
                  Iterable<CopyWith_Fragment_CallHistory<Fragment_CallHistory>>)
              _fn) =>
      call(
          historyCallHistory: _fn(_instance.historyCallHistory
              .map((e) => CopyWith_Fragment_CallHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_personCallHistory<TRes>
    implements CopyWith_Subscription_personCallHistory<TRes> {
  _CopyWithStubImpl_Subscription_personCallHistory(this._res);

  TRes _res;

  call({List<Fragment_CallHistory>? historyCallHistory}) => _res;

  historyCallHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonCallHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personCallHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryCallHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyCallHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CallHistory'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionCallHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Variables_Subscription_personVisitHistory {
  factory Variables_Subscription_personVisitHistory({
    required UuidValue personId,
    List<Input_HistoryVisitHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_personVisitHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_personVisitHistory._(this._$data);

  factory Variables_Subscription_personVisitHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_personVisitHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  List<Input_HistoryVisitHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryVisitHistoryBoolExp>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_personVisitHistory<
          Variables_Subscription_personVisitHistory>
      get copyWith => CopyWith_Variables_Subscription_personVisitHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_personVisitHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_personVisitHistory<TRes> {
  factory CopyWith_Variables_Subscription_personVisitHistory(
    Variables_Subscription_personVisitHistory instance,
    TRes Function(Variables_Subscription_personVisitHistory) then,
  ) = _CopyWithImpl_Variables_Subscription_personVisitHistory;

  factory CopyWith_Variables_Subscription_personVisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_personVisitHistory;

  TRes call({
    UuidValue? personId,
    List<Input_HistoryVisitHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_personVisitHistory<TRes>
    implements CopyWith_Variables_Subscription_personVisitHistory<TRes> {
  _CopyWithImpl_Variables_Subscription_personVisitHistory(
    this._instance,
    this._then,
  );

  final Variables_Subscription_personVisitHistory _instance;

  final TRes Function(Variables_Subscription_personVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_personVisitHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input_HistoryVisitHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_personVisitHistory<TRes>
    implements CopyWith_Variables_Subscription_personVisitHistory<TRes> {
  _CopyWithStubImpl_Variables_Subscription_personVisitHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input_HistoryVisitHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_personVisitHistory {
  Subscription_personVisitHistory({required this.historyVisitHistory});

  factory Subscription_personVisitHistory.fromJson(Map<String, dynamic> json) {
    final l$historyVisitHistory = json['historyVisitHistory'];
    return Subscription_personVisitHistory(
        historyVisitHistory: (l$historyVisitHistory as List<dynamic>)
            .map((e) =>
                Fragment_VisitHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_VisitHistory> historyVisitHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyVisitHistory = historyVisitHistory;
    _resultData['historyVisitHistory'] =
        l$historyVisitHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyVisitHistory = historyVisitHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyVisitHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_personVisitHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyVisitHistory = historyVisitHistory;
    final lOther$historyVisitHistory = other.historyVisitHistory;
    if (l$historyVisitHistory.length != lOther$historyVisitHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyVisitHistory.length; i++) {
      final l$historyVisitHistory$entry = l$historyVisitHistory[i];
      final lOther$historyVisitHistory$entry = lOther$historyVisitHistory[i];
      if (l$historyVisitHistory$entry != lOther$historyVisitHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_personVisitHistory
    on Subscription_personVisitHistory {
  CopyWith_Subscription_personVisitHistory<Subscription_personVisitHistory>
      get copyWith => CopyWith_Subscription_personVisitHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_personVisitHistory<TRes> {
  factory CopyWith_Subscription_personVisitHistory(
    Subscription_personVisitHistory instance,
    TRes Function(Subscription_personVisitHistory) then,
  ) = _CopyWithImpl_Subscription_personVisitHistory;

  factory CopyWith_Subscription_personVisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Subscription_personVisitHistory;

  TRes call({List<Fragment_VisitHistory>? historyVisitHistory});
  TRes historyVisitHistory(
      Iterable<Fragment_VisitHistory> Function(
              Iterable<CopyWith_Fragment_VisitHistory<Fragment_VisitHistory>>)
          _fn);
}

class _CopyWithImpl_Subscription_personVisitHistory<TRes>
    implements CopyWith_Subscription_personVisitHistory<TRes> {
  _CopyWithImpl_Subscription_personVisitHistory(
    this._instance,
    this._then,
  );

  final Subscription_personVisitHistory _instance;

  final TRes Function(Subscription_personVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyVisitHistory = _undefined}) =>
      _then(Subscription_personVisitHistory(
          historyVisitHistory:
              historyVisitHistory == _undefined || historyVisitHistory == null
                  ? _instance.historyVisitHistory
                  : (historyVisitHistory as List<Fragment_VisitHistory>)));

  TRes historyVisitHistory(
          Iterable<Fragment_VisitHistory> Function(
                  Iterable<
                      CopyWith_Fragment_VisitHistory<Fragment_VisitHistory>>)
              _fn) =>
      call(
          historyVisitHistory: _fn(_instance.historyVisitHistory
              .map((e) => CopyWith_Fragment_VisitHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_personVisitHistory<TRes>
    implements CopyWith_Subscription_personVisitHistory<TRes> {
  _CopyWithStubImpl_Subscription_personVisitHistory(this._res);

  TRes _res;

  call({List<Fragment_VisitHistory>? historyVisitHistory}) => _res;

  historyVisitHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonVisitHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personVisitHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryVisitHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyVisitHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: StringValueNode(
                            value: 'persons',
                            isBlock: false,
                          ),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VisitHistory'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionVisitHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Variables_Subscription_personConfessionHistory {
  factory Variables_Subscription_personConfessionHistory({
    required UuidValue personId,
    List<Input_HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_personConfessionHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_personConfessionHistory._(this._$data);

  factory Variables_Subscription_personConfessionHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_HistoryConfessionHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_personConfessionHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  List<Input_HistoryConfessionHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryConfessionHistoryBoolExp>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_personConfessionHistory<
          Variables_Subscription_personConfessionHistory>
      get copyWith => CopyWith_Variables_Subscription_personConfessionHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_personConfessionHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_personConfessionHistory<TRes> {
  factory CopyWith_Variables_Subscription_personConfessionHistory(
    Variables_Subscription_personConfessionHistory instance,
    TRes Function(Variables_Subscription_personConfessionHistory) then,
  ) = _CopyWithImpl_Variables_Subscription_personConfessionHistory;

  factory CopyWith_Variables_Subscription_personConfessionHistory.stub(
          TRes res) =
      _CopyWithStubImpl_Variables_Subscription_personConfessionHistory;

  TRes call({
    UuidValue? personId,
    List<Input_HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_personConfessionHistory<TRes>
    implements CopyWith_Variables_Subscription_personConfessionHistory<TRes> {
  _CopyWithImpl_Variables_Subscription_personConfessionHistory(
    this._instance,
    this._then,
  );

  final Variables_Subscription_personConfessionHistory _instance;

  final TRes Function(Variables_Subscription_personConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_personConfessionHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input_HistoryConfessionHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_personConfessionHistory<TRes>
    implements CopyWith_Variables_Subscription_personConfessionHistory<TRes> {
  _CopyWithStubImpl_Variables_Subscription_personConfessionHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input_HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_personConfessionHistory {
  Subscription_personConfessionHistory(
      {required this.historyConfessionHistory});

  factory Subscription_personConfessionHistory.fromJson(
      Map<String, dynamic> json) {
    final l$historyConfessionHistory = json['historyConfessionHistory'];
    return Subscription_personConfessionHistory(
        historyConfessionHistory: (l$historyConfessionHistory as List<dynamic>)
            .map((e) => Fragment_ConfessionHistory.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_ConfessionHistory> historyConfessionHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyConfessionHistory = historyConfessionHistory;
    _resultData['historyConfessionHistory'] =
        l$historyConfessionHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyConfessionHistory = historyConfessionHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyConfessionHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_personConfessionHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyConfessionHistory = historyConfessionHistory;
    final lOther$historyConfessionHistory = other.historyConfessionHistory;
    if (l$historyConfessionHistory.length !=
        lOther$historyConfessionHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyConfessionHistory.length; i++) {
      final l$historyConfessionHistory$entry = l$historyConfessionHistory[i];
      final lOther$historyConfessionHistory$entry =
          lOther$historyConfessionHistory[i];
      if (l$historyConfessionHistory$entry !=
          lOther$historyConfessionHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_personConfessionHistory
    on Subscription_personConfessionHistory {
  CopyWith_Subscription_personConfessionHistory<
          Subscription_personConfessionHistory>
      get copyWith => CopyWith_Subscription_personConfessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_personConfessionHistory<TRes> {
  factory CopyWith_Subscription_personConfessionHistory(
    Subscription_personConfessionHistory instance,
    TRes Function(Subscription_personConfessionHistory) then,
  ) = _CopyWithImpl_Subscription_personConfessionHistory;

  factory CopyWith_Subscription_personConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl_Subscription_personConfessionHistory;

  TRes call({List<Fragment_ConfessionHistory>? historyConfessionHistory});
  TRes historyConfessionHistory(
      Iterable<Fragment_ConfessionHistory> Function(
              Iterable<
                  CopyWith_Fragment_ConfessionHistory<
                      Fragment_ConfessionHistory>>)
          _fn);
}

class _CopyWithImpl_Subscription_personConfessionHistory<TRes>
    implements CopyWith_Subscription_personConfessionHistory<TRes> {
  _CopyWithImpl_Subscription_personConfessionHistory(
    this._instance,
    this._then,
  );

  final Subscription_personConfessionHistory _instance;

  final TRes Function(Subscription_personConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyConfessionHistory = _undefined}) =>
      _then(Subscription_personConfessionHistory(
          historyConfessionHistory: historyConfessionHistory == _undefined ||
                  historyConfessionHistory == null
              ? _instance.historyConfessionHistory
              : (historyConfessionHistory
                  as List<Fragment_ConfessionHistory>)));

  TRes historyConfessionHistory(
          Iterable<Fragment_ConfessionHistory> Function(
                  Iterable<
                      CopyWith_Fragment_ConfessionHistory<
                          Fragment_ConfessionHistory>>)
              _fn) =>
      call(
          historyConfessionHistory: _fn(_instance.historyConfessionHistory
              .map((e) => CopyWith_Fragment_ConfessionHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_personConfessionHistory<TRes>
    implements CopyWith_Subscription_personConfessionHistory<TRes> {
  _CopyWithStubImpl_Subscription_personConfessionHistory(this._res);

  TRes _res;

  call({List<Fragment_ConfessionHistory>? historyConfessionHistory}) => _res;

  historyConfessionHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonConfessionHistory =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personConfessionHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryConfessionHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyConfessionHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ConfessionHistory'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionConfessionHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Variables_Subscription_personKodasHistory {
  factory Variables_Subscription_personKodasHistory({
    required UuidValue personId,
    List<Input_HistoryKodasHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_personKodasHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_personKodasHistory._(this._$data);

  factory Variables_Subscription_personKodasHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_HistoryKodasHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_personKodasHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  List<Input_HistoryKodasHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryKodasHistoryBoolExp>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_personKodasHistory<
          Variables_Subscription_personKodasHistory>
      get copyWith => CopyWith_Variables_Subscription_personKodasHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_personKodasHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_personKodasHistory<TRes> {
  factory CopyWith_Variables_Subscription_personKodasHistory(
    Variables_Subscription_personKodasHistory instance,
    TRes Function(Variables_Subscription_personKodasHistory) then,
  ) = _CopyWithImpl_Variables_Subscription_personKodasHistory;

  factory CopyWith_Variables_Subscription_personKodasHistory.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_personKodasHistory;

  TRes call({
    UuidValue? personId,
    List<Input_HistoryKodasHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_personKodasHistory<TRes>
    implements CopyWith_Variables_Subscription_personKodasHistory<TRes> {
  _CopyWithImpl_Variables_Subscription_personKodasHistory(
    this._instance,
    this._then,
  );

  final Variables_Subscription_personKodasHistory _instance;

  final TRes Function(Variables_Subscription_personKodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_personKodasHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input_HistoryKodasHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_personKodasHistory<TRes>
    implements CopyWith_Variables_Subscription_personKodasHistory<TRes> {
  _CopyWithStubImpl_Variables_Subscription_personKodasHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input_HistoryKodasHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_personKodasHistory {
  Subscription_personKodasHistory({required this.historyKodasHistory});

  factory Subscription_personKodasHistory.fromJson(Map<String, dynamic> json) {
    final l$historyKodasHistory = json['historyKodasHistory'];
    return Subscription_personKodasHistory(
        historyKodasHistory: (l$historyKodasHistory as List<dynamic>)
            .map((e) =>
                Fragment_KodasHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_KodasHistory> historyKodasHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyKodasHistory = historyKodasHistory;
    _resultData['historyKodasHistory'] =
        l$historyKodasHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyKodasHistory = historyKodasHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyKodasHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_personKodasHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyKodasHistory = historyKodasHistory;
    final lOther$historyKodasHistory = other.historyKodasHistory;
    if (l$historyKodasHistory.length != lOther$historyKodasHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyKodasHistory.length; i++) {
      final l$historyKodasHistory$entry = l$historyKodasHistory[i];
      final lOther$historyKodasHistory$entry = lOther$historyKodasHistory[i];
      if (l$historyKodasHistory$entry != lOther$historyKodasHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_personKodasHistory
    on Subscription_personKodasHistory {
  CopyWith_Subscription_personKodasHistory<Subscription_personKodasHistory>
      get copyWith => CopyWith_Subscription_personKodasHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_personKodasHistory<TRes> {
  factory CopyWith_Subscription_personKodasHistory(
    Subscription_personKodasHistory instance,
    TRes Function(Subscription_personKodasHistory) then,
  ) = _CopyWithImpl_Subscription_personKodasHistory;

  factory CopyWith_Subscription_personKodasHistory.stub(TRes res) =
      _CopyWithStubImpl_Subscription_personKodasHistory;

  TRes call({List<Fragment_KodasHistory>? historyKodasHistory});
  TRes historyKodasHistory(
      Iterable<Fragment_KodasHistory> Function(
              Iterable<CopyWith_Fragment_KodasHistory<Fragment_KodasHistory>>)
          _fn);
}

class _CopyWithImpl_Subscription_personKodasHistory<TRes>
    implements CopyWith_Subscription_personKodasHistory<TRes> {
  _CopyWithImpl_Subscription_personKodasHistory(
    this._instance,
    this._then,
  );

  final Subscription_personKodasHistory _instance;

  final TRes Function(Subscription_personKodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyKodasHistory = _undefined}) =>
      _then(Subscription_personKodasHistory(
          historyKodasHistory:
              historyKodasHistory == _undefined || historyKodasHistory == null
                  ? _instance.historyKodasHistory
                  : (historyKodasHistory as List<Fragment_KodasHistory>)));

  TRes historyKodasHistory(
          Iterable<Fragment_KodasHistory> Function(
                  Iterable<
                      CopyWith_Fragment_KodasHistory<Fragment_KodasHistory>>)
              _fn) =>
      call(
          historyKodasHistory: _fn(_instance.historyKodasHistory
              .map((e) => CopyWith_Fragment_KodasHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_personKodasHistory<TRes>
    implements CopyWith_Subscription_personKodasHistory<TRes> {
  _CopyWithStubImpl_Subscription_personKodasHistory(this._res);

  TRes _res;

  call({List<Fragment_KodasHistory>? historyKodasHistory}) => _res;

  historyKodasHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonKodasHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personKodasHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryKodasHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyKodasHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'KodasHistory'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionKodasHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);
