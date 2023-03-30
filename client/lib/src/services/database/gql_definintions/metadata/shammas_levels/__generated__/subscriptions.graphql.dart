import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllShammasLevels {
  factory Variables$Subscription$watchAllShammasLevels({
    List<Input$ShammasLevelsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllShammasLevels._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllShammasLevels._(this._$data);

  factory Variables$Subscription$watchAllShammasLevels.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$ShammasLevelsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$watchAllShammasLevels._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ShammasLevelsBoolExp>? get where =>
      (_$data['where'] as List<Input$ShammasLevelsBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllShammasLevels<
          Variables$Subscription$watchAllShammasLevels>
      get copyWith => CopyWith$Variables$Subscription$watchAllShammasLevels(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllShammasLevels) ||
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

abstract class CopyWith$Variables$Subscription$watchAllShammasLevels<TRes> {
  factory CopyWith$Variables$Subscription$watchAllShammasLevels(
    Variables$Subscription$watchAllShammasLevels instance,
    TRes Function(Variables$Subscription$watchAllShammasLevels) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllShammasLevels;

  factory CopyWith$Variables$Subscription$watchAllShammasLevels.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllShammasLevels;

  TRes call({
    List<Input$ShammasLevelsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllShammasLevels<TRes>
    implements CopyWith$Variables$Subscription$watchAllShammasLevels<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllShammasLevels(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllShammasLevels _instance;

  final TRes Function(Variables$Subscription$watchAllShammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllShammasLevels._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$ShammasLevelsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllShammasLevels<TRes>
    implements CopyWith$Variables$Subscription$watchAllShammasLevels<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllShammasLevels(this._res);

  TRes _res;

  call({
    List<Input$ShammasLevelsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllShammasLevels {
  Subscription$watchAllShammasLevels({required this.shammasLevels});

  factory Subscription$watchAllShammasLevels.fromJson(
      Map<String, dynamic> json) {
    final l$shammasLevels = json['shammasLevels'];
    return Subscription$watchAllShammasLevels(
        shammasLevels: (l$shammasLevels as List<dynamic>)
            .map((e) =>
                Subscription$watchAllShammasLevels$shammasLevels.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllShammasLevels$shammasLevels> shammasLevels;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shammasLevels = shammasLevels;
    _resultData['shammasLevels'] =
        l$shammasLevels.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shammasLevels = shammasLevels;
    return Object.hashAll([Object.hashAll(l$shammasLevels.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllShammasLevels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shammasLevels = shammasLevels;
    final lOther$shammasLevels = other.shammasLevels;
    if (l$shammasLevels.length != lOther$shammasLevels.length) {
      return false;
    }
    for (int i = 0; i < l$shammasLevels.length; i++) {
      final l$shammasLevels$entry = l$shammasLevels[i];
      final lOther$shammasLevels$entry = lOther$shammasLevels[i];
      if (l$shammasLevels$entry != lOther$shammasLevels$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllShammasLevels
    on Subscription$watchAllShammasLevels {
  CopyWith$Subscription$watchAllShammasLevels<
          Subscription$watchAllShammasLevels>
      get copyWith => CopyWith$Subscription$watchAllShammasLevels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllShammasLevels<TRes> {
  factory CopyWith$Subscription$watchAllShammasLevels(
    Subscription$watchAllShammasLevels instance,
    TRes Function(Subscription$watchAllShammasLevels) then,
  ) = _CopyWithImpl$Subscription$watchAllShammasLevels;

  factory CopyWith$Subscription$watchAllShammasLevels.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllShammasLevels;

  TRes call(
      {List<Subscription$watchAllShammasLevels$shammasLevels>? shammasLevels});
  TRes shammasLevels(
      Iterable<Subscription$watchAllShammasLevels$shammasLevels> Function(
              Iterable<
                  CopyWith$Subscription$watchAllShammasLevels$shammasLevels<
                      Subscription$watchAllShammasLevels$shammasLevels>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllShammasLevels<TRes>
    implements CopyWith$Subscription$watchAllShammasLevels<TRes> {
  _CopyWithImpl$Subscription$watchAllShammasLevels(
    this._instance,
    this._then,
  );

  final Subscription$watchAllShammasLevels _instance;

  final TRes Function(Subscription$watchAllShammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? shammasLevels = _undefined}) =>
      _then(Subscription$watchAllShammasLevels(
          shammasLevels: shammasLevels == _undefined || shammasLevels == null
              ? _instance.shammasLevels
              : (shammasLevels
                  as List<Subscription$watchAllShammasLevels$shammasLevels>)));
  TRes shammasLevels(
          Iterable<Subscription$watchAllShammasLevels$shammasLevels> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllShammasLevels$shammasLevels<
                          Subscription$watchAllShammasLevels$shammasLevels>>)
              _fn) =>
      call(
          shammasLevels: _fn(_instance.shammasLevels.map(
              (e) => CopyWith$Subscription$watchAllShammasLevels$shammasLevels(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllShammasLevels<TRes>
    implements CopyWith$Subscription$watchAllShammasLevels<TRes> {
  _CopyWithStubImpl$Subscription$watchAllShammasLevels(this._res);

  TRes _res;

  call(
          {List<Subscription$watchAllShammasLevels$shammasLevels>?
              shammasLevels}) =>
      _res;
  shammasLevels(_fn) => _res;
}

const documentNodeSubscriptionwatchAllShammasLevels =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllShammasLevels'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ShammasLevelsBoolExp'),
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
        defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'shammasLevels'),
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
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'order'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'order'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
]);

class Subscription$watchAllShammasLevels$shammasLevels {
  Subscription$watchAllShammasLevels$shammasLevels({
    required this.id,
    required this.order,
    required this.name,
    this.$__typename = 'ShammasLevels',
  });

  factory Subscription$watchAllShammasLevels$shammasLevels.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllShammasLevels$shammasLevels(
      id: stringToUuid(l$id),
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllShammasLevels$shammasLevels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllShammasLevels$shammasLevels
    on Subscription$watchAllShammasLevels$shammasLevels {
  CopyWith$Subscription$watchAllShammasLevels$shammasLevels<
          Subscription$watchAllShammasLevels$shammasLevels>
      get copyWith => CopyWith$Subscription$watchAllShammasLevels$shammasLevels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllShammasLevels$shammasLevels<TRes> {
  factory CopyWith$Subscription$watchAllShammasLevels$shammasLevels(
    Subscription$watchAllShammasLevels$shammasLevels instance,
    TRes Function(Subscription$watchAllShammasLevels$shammasLevels) then,
  ) = _CopyWithImpl$Subscription$watchAllShammasLevels$shammasLevels;

  factory CopyWith$Subscription$watchAllShammasLevels$shammasLevels.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchAllShammasLevels$shammasLevels;

  TRes call({
    UuidValue? id,
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllShammasLevels$shammasLevels<TRes>
    implements CopyWith$Subscription$watchAllShammasLevels$shammasLevels<TRes> {
  _CopyWithImpl$Subscription$watchAllShammasLevels$shammasLevels(
    this._instance,
    this._then,
  );

  final Subscription$watchAllShammasLevels$shammasLevels _instance;

  final TRes Function(Subscription$watchAllShammasLevels$shammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllShammasLevels$shammasLevels(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllShammasLevels$shammasLevels<TRes>
    implements CopyWith$Subscription$watchAllShammasLevels$shammasLevels<TRes> {
  _CopyWithStubImpl$Subscription$watchAllShammasLevels$shammasLevels(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
