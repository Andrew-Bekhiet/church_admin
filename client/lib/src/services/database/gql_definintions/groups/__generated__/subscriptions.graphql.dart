import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllGroups {
  factory Variables$Subscription$watchAllGroups({
    int? limit,
    List<Input$GroupsOrderBy>? orderBy,
    List<Input$GroupsBoolExp>? where,
  }) =>
      Variables$Subscription$watchAllGroups._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$watchAllGroups._(this._$data);

  factory Variables$Subscription$watchAllGroups.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$GroupsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$GroupsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$watchAllGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$GroupsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$GroupsOrderBy>?);
  List<Input$GroupsBoolExp>? get where =>
      (_$data['where'] as List<Input$GroupsBoolExp>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$watchAllGroups<
          Variables$Subscription$watchAllGroups>
      get copyWith => CopyWith$Variables$Subscription$watchAllGroups(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllGroups) ||
        runtimeType != other.runtimeType) {
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
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$orderBy = orderBy;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$watchAllGroups<TRes> {
  factory CopyWith$Variables$Subscription$watchAllGroups(
    Variables$Subscription$watchAllGroups instance,
    TRes Function(Variables$Subscription$watchAllGroups) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllGroups;

  factory CopyWith$Variables$Subscription$watchAllGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllGroups;

  TRes call({
    int? limit,
    List<Input$GroupsOrderBy>? orderBy,
    List<Input$GroupsBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllGroups<TRes>
    implements CopyWith$Variables$Subscription$watchAllGroups<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllGroups(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllGroups _instance;

  final TRes Function(Variables$Subscription$watchAllGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllGroups._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$GroupsOrderBy>?),
        if (where != _undefined) 'where': (where as List<Input$GroupsBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllGroups<TRes>
    implements CopyWith$Variables$Subscription$watchAllGroups<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllGroups(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$GroupsOrderBy>? orderBy,
    List<Input$GroupsBoolExp>? where,
  }) =>
      _res;
}

class Subscription$watchAllGroups {
  Subscription$watchAllGroups({required this.groups});

  factory Subscription$watchAllGroups.fromJson(Map<String, dynamic> json) {
    final l$groups = json['groups'];
    return Subscription$watchAllGroups(
        groups: (l$groups as List<dynamic>)
            .map((e) => Fragment$Group.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Group> groups;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groups = groups;
    return Object.hashAll([Object.hashAll(l$groups.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups.length != lOther$groups.length) {
      return false;
    }
    for (int i = 0; i < l$groups.length; i++) {
      final l$groups$entry = l$groups[i];
      final lOther$groups$entry = lOther$groups[i];
      if (l$groups$entry != lOther$groups$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllGroups
    on Subscription$watchAllGroups {
  CopyWith$Subscription$watchAllGroups<Subscription$watchAllGroups>
      get copyWith => CopyWith$Subscription$watchAllGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllGroups<TRes> {
  factory CopyWith$Subscription$watchAllGroups(
    Subscription$watchAllGroups instance,
    TRes Function(Subscription$watchAllGroups) then,
  ) = _CopyWithImpl$Subscription$watchAllGroups;

  factory CopyWith$Subscription$watchAllGroups.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllGroups;

  TRes call({List<Fragment$Group>? groups});
  TRes groups(
      Iterable<Fragment$Group> Function(
              Iterable<CopyWith$Fragment$Group<Fragment$Group>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllGroups<TRes>
    implements CopyWith$Subscription$watchAllGroups<TRes> {
  _CopyWithImpl$Subscription$watchAllGroups(
    this._instance,
    this._then,
  );

  final Subscription$watchAllGroups _instance;

  final TRes Function(Subscription$watchAllGroups) _then;

  static const _undefined = {};

  TRes call({Object? groups = _undefined}) => _then(Subscription$watchAllGroups(
      groups: groups == _undefined || groups == null
          ? _instance.groups
          : (groups as List<Fragment$Group>)));
  TRes groups(
          Iterable<Fragment$Group> Function(
                  Iterable<CopyWith$Fragment$Group<Fragment$Group>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map((e) => CopyWith$Fragment$Group(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllGroups<TRes>
    implements CopyWith$Subscription$watchAllGroups<TRes> {
  _CopyWithStubImpl$Subscription$watchAllGroups(this._res);

  TRes _res;

  call({List<Fragment$Group>? groups}) => _res;
  groups(_fn) => _res;
}

const documentNodeSubscriptionwatchAllGroups = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllGroups'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'name'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          )
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'groups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Group'),
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
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);
