import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$editHistory {
  factory Variables$Subscription$editHistory({
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$editHistory._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$editHistory._(this._$data);

  factory Variables$Subscription$editHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryEditHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$editHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$HistoryEditHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryEditHistoryBoolExp>?);
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

  CopyWith$Variables$Subscription$editHistory<
          Variables$Subscription$editHistory>
      get copyWith => CopyWith$Variables$Subscription$editHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$editHistory) ||
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

abstract class CopyWith$Variables$Subscription$editHistory<TRes> {
  factory CopyWith$Variables$Subscription$editHistory(
    Variables$Subscription$editHistory instance,
    TRes Function(Variables$Subscription$editHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$editHistory;

  factory CopyWith$Variables$Subscription$editHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$editHistory;

  TRes call({
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$editHistory<TRes>
    implements CopyWith$Variables$Subscription$editHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$editHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$editHistory _instance;

  final TRes Function(Variables$Subscription$editHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$editHistory._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$HistoryEditHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$editHistory<TRes>
    implements CopyWith$Variables$Subscription$editHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$editHistory(this._res);

  TRes _res;

  call({
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$editHistory {
  Subscription$editHistory({required this.historyEditHistory});

  factory Subscription$editHistory.fromJson(Map<String, dynamic> json) {
    final l$historyEditHistory = json['historyEditHistory'];
    return Subscription$editHistory(
        historyEditHistory: (l$historyEditHistory as List<dynamic>)
            .map((e) =>
                Fragment$EditHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$EditHistory> historyEditHistory;

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
    if (!(other is Subscription$editHistory) ||
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

extension UtilityExtension$Subscription$editHistory
    on Subscription$editHistory {
  CopyWith$Subscription$editHistory<Subscription$editHistory> get copyWith =>
      CopyWith$Subscription$editHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$editHistory<TRes> {
  factory CopyWith$Subscription$editHistory(
    Subscription$editHistory instance,
    TRes Function(Subscription$editHistory) then,
  ) = _CopyWithImpl$Subscription$editHistory;

  factory CopyWith$Subscription$editHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$editHistory;

  TRes call({List<Fragment$EditHistory>? historyEditHistory});
  TRes historyEditHistory(
      Iterable<Fragment$EditHistory> Function(
              Iterable<CopyWith$Fragment$EditHistory<Fragment$EditHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$editHistory<TRes>
    implements CopyWith$Subscription$editHistory<TRes> {
  _CopyWithImpl$Subscription$editHistory(
    this._instance,
    this._then,
  );

  final Subscription$editHistory _instance;

  final TRes Function(Subscription$editHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyEditHistory = _undefined}) =>
      _then(Subscription$editHistory(
          historyEditHistory:
              historyEditHistory == _undefined || historyEditHistory == null
                  ? _instance.historyEditHistory
                  : (historyEditHistory as List<Fragment$EditHistory>)));
  TRes historyEditHistory(
          Iterable<Fragment$EditHistory> Function(
                  Iterable<CopyWith$Fragment$EditHistory<Fragment$EditHistory>>)
              _fn) =>
      call(
          historyEditHistory: _fn(_instance.historyEditHistory
              .map((e) => CopyWith$Fragment$EditHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$editHistory<TRes>
    implements CopyWith$Subscription$editHistory<TRes> {
  _CopyWithStubImpl$Subscription$editHistory(this._res);

  TRes _res;

  call({List<Fragment$EditHistory>? historyEditHistory}) => _res;
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

class Variables$Subscription$personCallHistory {
  factory Variables$Subscription$personCallHistory({
    required UuidValue personId,
    List<Input$HistoryCallHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$personCallHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$personCallHistory._(this._$data);

  factory Variables$Subscription$personCallHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$personCallHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryCallHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryCallHistoryBoolExp>?);
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

  CopyWith$Variables$Subscription$personCallHistory<
          Variables$Subscription$personCallHistory>
      get copyWith => CopyWith$Variables$Subscription$personCallHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$personCallHistory) ||
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

abstract class CopyWith$Variables$Subscription$personCallHistory<TRes> {
  factory CopyWith$Variables$Subscription$personCallHistory(
    Variables$Subscription$personCallHistory instance,
    TRes Function(Variables$Subscription$personCallHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$personCallHistory;

  factory CopyWith$Variables$Subscription$personCallHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$personCallHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryCallHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$personCallHistory<TRes>
    implements CopyWith$Variables$Subscription$personCallHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$personCallHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$personCallHistory _instance;

  final TRes Function(Variables$Subscription$personCallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$personCallHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryCallHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$personCallHistory<TRes>
    implements CopyWith$Variables$Subscription$personCallHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$personCallHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryCallHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$personCallHistory {
  Subscription$personCallHistory({required this.historyCallHistory});

  factory Subscription$personCallHistory.fromJson(Map<String, dynamic> json) {
    final l$historyCallHistory = json['historyCallHistory'];
    return Subscription$personCallHistory(
        historyCallHistory: (l$historyCallHistory as List<dynamic>)
            .map((e) =>
                Fragment$CallHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$CallHistory> historyCallHistory;

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
    if (!(other is Subscription$personCallHistory) ||
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

extension UtilityExtension$Subscription$personCallHistory
    on Subscription$personCallHistory {
  CopyWith$Subscription$personCallHistory<Subscription$personCallHistory>
      get copyWith => CopyWith$Subscription$personCallHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personCallHistory<TRes> {
  factory CopyWith$Subscription$personCallHistory(
    Subscription$personCallHistory instance,
    TRes Function(Subscription$personCallHistory) then,
  ) = _CopyWithImpl$Subscription$personCallHistory;

  factory CopyWith$Subscription$personCallHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$personCallHistory;

  TRes call({List<Fragment$CallHistory>? historyCallHistory});
  TRes historyCallHistory(
      Iterable<Fragment$CallHistory> Function(
              Iterable<CopyWith$Fragment$CallHistory<Fragment$CallHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$personCallHistory<TRes>
    implements CopyWith$Subscription$personCallHistory<TRes> {
  _CopyWithImpl$Subscription$personCallHistory(
    this._instance,
    this._then,
  );

  final Subscription$personCallHistory _instance;

  final TRes Function(Subscription$personCallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyCallHistory = _undefined}) =>
      _then(Subscription$personCallHistory(
          historyCallHistory:
              historyCallHistory == _undefined || historyCallHistory == null
                  ? _instance.historyCallHistory
                  : (historyCallHistory as List<Fragment$CallHistory>)));
  TRes historyCallHistory(
          Iterable<Fragment$CallHistory> Function(
                  Iterable<CopyWith$Fragment$CallHistory<Fragment$CallHistory>>)
              _fn) =>
      call(
          historyCallHistory: _fn(_instance.historyCallHistory
              .map((e) => CopyWith$Fragment$CallHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$personCallHistory<TRes>
    implements CopyWith$Subscription$personCallHistory<TRes> {
  _CopyWithStubImpl$Subscription$personCallHistory(this._res);

  TRes _res;

  call({List<Fragment$CallHistory>? historyCallHistory}) => _res;
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
          name: NameNode(value: 'uuid'),
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

class Variables$Subscription$personVisitHistory {
  factory Variables$Subscription$personVisitHistory({
    required UuidValue personId,
    List<Input$HistoryVisitHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$personVisitHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$personVisitHistory._(this._$data);

  factory Variables$Subscription$personVisitHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$personVisitHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryVisitHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryVisitHistoryBoolExp>?);
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

  CopyWith$Variables$Subscription$personVisitHistory<
          Variables$Subscription$personVisitHistory>
      get copyWith => CopyWith$Variables$Subscription$personVisitHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$personVisitHistory) ||
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

abstract class CopyWith$Variables$Subscription$personVisitHistory<TRes> {
  factory CopyWith$Variables$Subscription$personVisitHistory(
    Variables$Subscription$personVisitHistory instance,
    TRes Function(Variables$Subscription$personVisitHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$personVisitHistory;

  factory CopyWith$Variables$Subscription$personVisitHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$personVisitHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryVisitHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$personVisitHistory<TRes>
    implements CopyWith$Variables$Subscription$personVisitHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$personVisitHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$personVisitHistory _instance;

  final TRes Function(Variables$Subscription$personVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$personVisitHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryVisitHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$personVisitHistory<TRes>
    implements CopyWith$Variables$Subscription$personVisitHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$personVisitHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryVisitHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$personVisitHistory {
  Subscription$personVisitHistory({required this.historyVisitHistory});

  factory Subscription$personVisitHistory.fromJson(Map<String, dynamic> json) {
    final l$historyVisitHistory = json['historyVisitHistory'];
    return Subscription$personVisitHistory(
        historyVisitHistory: (l$historyVisitHistory as List<dynamic>)
            .map((e) =>
                Fragment$VisitHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$VisitHistory> historyVisitHistory;

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
    if (!(other is Subscription$personVisitHistory) ||
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

extension UtilityExtension$Subscription$personVisitHistory
    on Subscription$personVisitHistory {
  CopyWith$Subscription$personVisitHistory<Subscription$personVisitHistory>
      get copyWith => CopyWith$Subscription$personVisitHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personVisitHistory<TRes> {
  factory CopyWith$Subscription$personVisitHistory(
    Subscription$personVisitHistory instance,
    TRes Function(Subscription$personVisitHistory) then,
  ) = _CopyWithImpl$Subscription$personVisitHistory;

  factory CopyWith$Subscription$personVisitHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$personVisitHistory;

  TRes call({List<Fragment$VisitHistory>? historyVisitHistory});
  TRes historyVisitHistory(
      Iterable<Fragment$VisitHistory> Function(
              Iterable<CopyWith$Fragment$VisitHistory<Fragment$VisitHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$personVisitHistory<TRes>
    implements CopyWith$Subscription$personVisitHistory<TRes> {
  _CopyWithImpl$Subscription$personVisitHistory(
    this._instance,
    this._then,
  );

  final Subscription$personVisitHistory _instance;

  final TRes Function(Subscription$personVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyVisitHistory = _undefined}) =>
      _then(Subscription$personVisitHistory(
          historyVisitHistory:
              historyVisitHistory == _undefined || historyVisitHistory == null
                  ? _instance.historyVisitHistory
                  : (historyVisitHistory as List<Fragment$VisitHistory>)));
  TRes historyVisitHistory(
          Iterable<Fragment$VisitHistory> Function(
                  Iterable<
                      CopyWith$Fragment$VisitHistory<Fragment$VisitHistory>>)
              _fn) =>
      call(
          historyVisitHistory: _fn(_instance.historyVisitHistory
              .map((e) => CopyWith$Fragment$VisitHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$personVisitHistory<TRes>
    implements CopyWith$Subscription$personVisitHistory<TRes> {
  _CopyWithStubImpl$Subscription$personVisitHistory(this._res);

  TRes _res;

  call({List<Fragment$VisitHistory>? historyVisitHistory}) => _res;
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
          name: NameNode(value: 'uuid'),
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

class Variables$Subscription$personConfessionHistory {
  factory Variables$Subscription$personConfessionHistory({
    required UuidValue personId,
    List<Input$HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$personConfessionHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$personConfessionHistory._(this._$data);

  factory Variables$Subscription$personConfessionHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryConfessionHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$personConfessionHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryConfessionHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryConfessionHistoryBoolExp>?);
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

  CopyWith$Variables$Subscription$personConfessionHistory<
          Variables$Subscription$personConfessionHistory>
      get copyWith => CopyWith$Variables$Subscription$personConfessionHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$personConfessionHistory) ||
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

abstract class CopyWith$Variables$Subscription$personConfessionHistory<TRes> {
  factory CopyWith$Variables$Subscription$personConfessionHistory(
    Variables$Subscription$personConfessionHistory instance,
    TRes Function(Variables$Subscription$personConfessionHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$personConfessionHistory;

  factory CopyWith$Variables$Subscription$personConfessionHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Subscription$personConfessionHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$personConfessionHistory<TRes>
    implements CopyWith$Variables$Subscription$personConfessionHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$personConfessionHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$personConfessionHistory _instance;

  final TRes Function(Variables$Subscription$personConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$personConfessionHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryConfessionHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$personConfessionHistory<TRes>
    implements CopyWith$Variables$Subscription$personConfessionHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$personConfessionHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$personConfessionHistory {
  Subscription$personConfessionHistory(
      {required this.historyConfessionHistory});

  factory Subscription$personConfessionHistory.fromJson(
      Map<String, dynamic> json) {
    final l$historyConfessionHistory = json['historyConfessionHistory'];
    return Subscription$personConfessionHistory(
        historyConfessionHistory: (l$historyConfessionHistory as List<dynamic>)
            .map((e) => Fragment$ConfessionHistory.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$ConfessionHistory> historyConfessionHistory;

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
    if (!(other is Subscription$personConfessionHistory) ||
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

extension UtilityExtension$Subscription$personConfessionHistory
    on Subscription$personConfessionHistory {
  CopyWith$Subscription$personConfessionHistory<
          Subscription$personConfessionHistory>
      get copyWith => CopyWith$Subscription$personConfessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personConfessionHistory<TRes> {
  factory CopyWith$Subscription$personConfessionHistory(
    Subscription$personConfessionHistory instance,
    TRes Function(Subscription$personConfessionHistory) then,
  ) = _CopyWithImpl$Subscription$personConfessionHistory;

  factory CopyWith$Subscription$personConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$personConfessionHistory;

  TRes call({List<Fragment$ConfessionHistory>? historyConfessionHistory});
  TRes historyConfessionHistory(
      Iterable<Fragment$ConfessionHistory> Function(
              Iterable<
                  CopyWith$Fragment$ConfessionHistory<
                      Fragment$ConfessionHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$personConfessionHistory<TRes>
    implements CopyWith$Subscription$personConfessionHistory<TRes> {
  _CopyWithImpl$Subscription$personConfessionHistory(
    this._instance,
    this._then,
  );

  final Subscription$personConfessionHistory _instance;

  final TRes Function(Subscription$personConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyConfessionHistory = _undefined}) =>
      _then(Subscription$personConfessionHistory(
          historyConfessionHistory: historyConfessionHistory == _undefined ||
                  historyConfessionHistory == null
              ? _instance.historyConfessionHistory
              : (historyConfessionHistory
                  as List<Fragment$ConfessionHistory>)));
  TRes historyConfessionHistory(
          Iterable<Fragment$ConfessionHistory> Function(
                  Iterable<
                      CopyWith$Fragment$ConfessionHistory<
                          Fragment$ConfessionHistory>>)
              _fn) =>
      call(
          historyConfessionHistory: _fn(_instance.historyConfessionHistory
              .map((e) => CopyWith$Fragment$ConfessionHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$personConfessionHistory<TRes>
    implements CopyWith$Subscription$personConfessionHistory<TRes> {
  _CopyWithStubImpl$Subscription$personConfessionHistory(this._res);

  TRes _res;

  call({List<Fragment$ConfessionHistory>? historyConfessionHistory}) => _res;
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
          name: NameNode(value: 'uuid'),
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

class Variables$Subscription$personKodasHistory {
  factory Variables$Subscription$personKodasHistory({
    required UuidValue personId,
    List<Input$HistoryKodasHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$personKodasHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$personKodasHistory._(this._$data);

  factory Variables$Subscription$personKodasHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryKodasHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$personKodasHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryKodasHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryKodasHistoryBoolExp>?);
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

  CopyWith$Variables$Subscription$personKodasHistory<
          Variables$Subscription$personKodasHistory>
      get copyWith => CopyWith$Variables$Subscription$personKodasHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$personKodasHistory) ||
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

abstract class CopyWith$Variables$Subscription$personKodasHistory<TRes> {
  factory CopyWith$Variables$Subscription$personKodasHistory(
    Variables$Subscription$personKodasHistory instance,
    TRes Function(Variables$Subscription$personKodasHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$personKodasHistory;

  factory CopyWith$Variables$Subscription$personKodasHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$personKodasHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryKodasHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$personKodasHistory<TRes>
    implements CopyWith$Variables$Subscription$personKodasHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$personKodasHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$personKodasHistory _instance;

  final TRes Function(Variables$Subscription$personKodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$personKodasHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryKodasHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$personKodasHistory<TRes>
    implements CopyWith$Variables$Subscription$personKodasHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$personKodasHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryKodasHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$personKodasHistory {
  Subscription$personKodasHistory({required this.historyKodasHistory});

  factory Subscription$personKodasHistory.fromJson(Map<String, dynamic> json) {
    final l$historyKodasHistory = json['historyKodasHistory'];
    return Subscription$personKodasHistory(
        historyKodasHistory: (l$historyKodasHistory as List<dynamic>)
            .map((e) =>
                Fragment$KodasHistory.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$KodasHistory> historyKodasHistory;

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
    if (!(other is Subscription$personKodasHistory) ||
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

extension UtilityExtension$Subscription$personKodasHistory
    on Subscription$personKodasHistory {
  CopyWith$Subscription$personKodasHistory<Subscription$personKodasHistory>
      get copyWith => CopyWith$Subscription$personKodasHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personKodasHistory<TRes> {
  factory CopyWith$Subscription$personKodasHistory(
    Subscription$personKodasHistory instance,
    TRes Function(Subscription$personKodasHistory) then,
  ) = _CopyWithImpl$Subscription$personKodasHistory;

  factory CopyWith$Subscription$personKodasHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$personKodasHistory;

  TRes call({List<Fragment$KodasHistory>? historyKodasHistory});
  TRes historyKodasHistory(
      Iterable<Fragment$KodasHistory> Function(
              Iterable<CopyWith$Fragment$KodasHistory<Fragment$KodasHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$personKodasHistory<TRes>
    implements CopyWith$Subscription$personKodasHistory<TRes> {
  _CopyWithImpl$Subscription$personKodasHistory(
    this._instance,
    this._then,
  );

  final Subscription$personKodasHistory _instance;

  final TRes Function(Subscription$personKodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyKodasHistory = _undefined}) =>
      _then(Subscription$personKodasHistory(
          historyKodasHistory:
              historyKodasHistory == _undefined || historyKodasHistory == null
                  ? _instance.historyKodasHistory
                  : (historyKodasHistory as List<Fragment$KodasHistory>)));
  TRes historyKodasHistory(
          Iterable<Fragment$KodasHistory> Function(
                  Iterable<
                      CopyWith$Fragment$KodasHistory<Fragment$KodasHistory>>)
              _fn) =>
      call(
          historyKodasHistory: _fn(_instance.historyKodasHistory
              .map((e) => CopyWith$Fragment$KodasHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$personKodasHistory<TRes>
    implements CopyWith$Subscription$personKodasHistory<TRes> {
  _CopyWithStubImpl$Subscription$personKodasHistory(this._res);

  TRes _res;

  call({List<Fragment$KodasHistory>? historyKodasHistory}) => _res;
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
          name: NameNode(value: 'uuid'),
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
