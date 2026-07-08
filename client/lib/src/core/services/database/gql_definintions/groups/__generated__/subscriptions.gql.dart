import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllGroups {
  factory Variables_Subscription_watchAllGroups({
    int? limit,
    List<Input_GroupsOrderBy>? orderBy,
    List<Input_GroupsBoolExp>? where,
  }) => Variables_Subscription_watchAllGroups._({
    if (limit != null) r'limit': limit,
    if (orderBy != null) r'orderBy': orderBy,
    if (where != null) r'where': where,
  });

  Variables_Subscription_watchAllGroups._(this._$data);

  factory Variables_Subscription_watchAllGroups.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsOrderBy.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables_Subscription_watchAllGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  List<Input_GroupsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_GroupsOrderBy>?);

  List<Input_GroupsBoolExp>? get where =>
      (_$data['where'] as List<Input_GroupsBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAllGroups<
    Variables_Subscription_watchAllGroups
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchAllGroups(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllGroups ||
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

abstract class CopyWith_Variables_Subscription_watchAllGroups<TRes> {
  factory CopyWith_Variables_Subscription_watchAllGroups(
    Variables_Subscription_watchAllGroups instance,
    TRes Function(Variables_Subscription_watchAllGroups) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllGroups;

  factory CopyWith_Variables_Subscription_watchAllGroups.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllGroups;

  TRes call({
    int? limit,
    List<Input_GroupsOrderBy>? orderBy,
    List<Input_GroupsBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllGroups<TRes>
    implements CopyWith_Variables_Subscription_watchAllGroups<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllGroups(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllGroups _instance;

  final TRes Function(Variables_Subscription_watchAllGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) => _then(
    Variables_Subscription_watchAllGroups._({
      ..._instance._$data,
      if (limit != _undefined) 'limit': (limit as int?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_GroupsOrderBy>?),
      if (where != _undefined) 'where': (where as List<Input_GroupsBoolExp>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAllGroups<TRes>
    implements CopyWith_Variables_Subscription_watchAllGroups<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllGroups(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input_GroupsOrderBy>? orderBy,
    List<Input_GroupsBoolExp>? where,
  }) => _res;
}

class Subscription_watchAllGroups {
  Subscription_watchAllGroups({required this.groups});

  factory Subscription_watchAllGroups.fromJson(Map<String, dynamic> json) {
    final l$groups = json['groups'];
    return Subscription_watchAllGroups(
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment_Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final List<Fragment_Group> groups;

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
    if (other is! Subscription_watchAllGroups ||
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

extension UtilityExtension_Subscription_watchAllGroups
    on Subscription_watchAllGroups {
  CopyWith_Subscription_watchAllGroups<Subscription_watchAllGroups>
  get copyWith => CopyWith_Subscription_watchAllGroups(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllGroups<TRes> {
  factory CopyWith_Subscription_watchAllGroups(
    Subscription_watchAllGroups instance,
    TRes Function(Subscription_watchAllGroups) then,
  ) = _CopyWithImpl_Subscription_watchAllGroups;

  factory CopyWith_Subscription_watchAllGroups.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllGroups;

  TRes call({List<Fragment_Group>? groups});
  TRes groups(
    Iterable<Fragment_Group> Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchAllGroups<TRes>
    implements CopyWith_Subscription_watchAllGroups<TRes> {
  _CopyWithImpl_Subscription_watchAllGroups(this._instance, this._then);

  final Subscription_watchAllGroups _instance;

  final TRes Function(Subscription_watchAllGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groups = _undefined}) => _then(
    Subscription_watchAllGroups(
      groups: groups == _undefined || groups == null
          ? _instance.groups
          : (groups as List<Fragment_Group>),
    ),
  );

  TRes groups(
    Iterable<Fragment_Group> Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups.map((e) => CopyWith_Fragment_Group(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchAllGroups<TRes>
    implements CopyWith_Subscription_watchAllGroups<TRes> {
  _CopyWithStubImpl_Subscription_watchAllGroups(this._res);

  TRes _res;

  call({List<Fragment_Group>? groups}) => _res;

  groups(_fn) => _res;
}

const documentNodeSubscriptionwatchAllGroups = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchAllGroups'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                ),
              ],
            ),
          ),
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
      selectionSet: SelectionSetNode(
        selections: [
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
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Subscription_watchGroupsCount {
  factory Variables_Subscription_watchGroupsCount({
    List<Input_GroupsBoolExp>? where,
    int? limit,
  }) => Variables_Subscription_watchGroupsCount._({
    if (where != null) r'where': where,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchGroupsCount._(this._$data);

  factory Variables_Subscription_watchGroupsCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchGroupsCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_GroupsBoolExp>? get where =>
      (_$data['where'] as List<Input_GroupsBoolExp>?);

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

  CopyWith_Variables_Subscription_watchGroupsCount<
    Variables_Subscription_watchGroupsCount
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchGroupsCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchGroupsCount ||
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

abstract class CopyWith_Variables_Subscription_watchGroupsCount<TRes> {
  factory CopyWith_Variables_Subscription_watchGroupsCount(
    Variables_Subscription_watchGroupsCount instance,
    TRes Function(Variables_Subscription_watchGroupsCount) then,
  ) = _CopyWithImpl_Variables_Subscription_watchGroupsCount;

  factory CopyWith_Variables_Subscription_watchGroupsCount.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchGroupsCount;

  TRes call({List<Input_GroupsBoolExp>? where, int? limit});
}

class _CopyWithImpl_Variables_Subscription_watchGroupsCount<TRes>
    implements CopyWith_Variables_Subscription_watchGroupsCount<TRes> {
  _CopyWithImpl_Variables_Subscription_watchGroupsCount(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchGroupsCount _instance;

  final TRes Function(Variables_Subscription_watchGroupsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined, Object? limit = _undefined}) => _then(
    Variables_Subscription_watchGroupsCount._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as List<Input_GroupsBoolExp>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchGroupsCount<TRes>
    implements CopyWith_Variables_Subscription_watchGroupsCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchGroupsCount(this._res);

  TRes _res;

  call({List<Input_GroupsBoolExp>? where, int? limit}) => _res;
}

class Subscription_watchGroupsCount {
  Subscription_watchGroupsCount({required this.groupsAggregate});

  factory Subscription_watchGroupsCount.fromJson(Map<String, dynamic> json) {
    final l$groupsAggregate = json['groupsAggregate'];
    return Subscription_watchGroupsCount(
      groupsAggregate: Subscription_watchGroupsCount_groupsAggregate.fromJson(
        (l$groupsAggregate as Map<String, dynamic>),
      ),
    );
  }

  final Subscription_watchGroupsCount_groupsAggregate groupsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupsAggregate = groupsAggregate;
    _resultData['groupsAggregate'] = l$groupsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupsAggregate = groupsAggregate;
    return Object.hashAll([l$groupsAggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchGroupsCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupsAggregate = groupsAggregate;
    final lOther$groupsAggregate = other.groupsAggregate;
    if (l$groupsAggregate != lOther$groupsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchGroupsCount
    on Subscription_watchGroupsCount {
  CopyWith_Subscription_watchGroupsCount<Subscription_watchGroupsCount>
  get copyWith => CopyWith_Subscription_watchGroupsCount(this, (i) => i);
}

abstract class CopyWith_Subscription_watchGroupsCount<TRes> {
  factory CopyWith_Subscription_watchGroupsCount(
    Subscription_watchGroupsCount instance,
    TRes Function(Subscription_watchGroupsCount) then,
  ) = _CopyWithImpl_Subscription_watchGroupsCount;

  factory CopyWith_Subscription_watchGroupsCount.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchGroupsCount;

  TRes call({Subscription_watchGroupsCount_groupsAggregate? groupsAggregate});
  CopyWith_Subscription_watchGroupsCount_groupsAggregate<TRes>
  get groupsAggregate;
}

class _CopyWithImpl_Subscription_watchGroupsCount<TRes>
    implements CopyWith_Subscription_watchGroupsCount<TRes> {
  _CopyWithImpl_Subscription_watchGroupsCount(this._instance, this._then);

  final Subscription_watchGroupsCount _instance;

  final TRes Function(Subscription_watchGroupsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupsAggregate = _undefined}) => _then(
    Subscription_watchGroupsCount(
      groupsAggregate: groupsAggregate == _undefined || groupsAggregate == null
          ? _instance.groupsAggregate
          : (groupsAggregate as Subscription_watchGroupsCount_groupsAggregate),
    ),
  );

  CopyWith_Subscription_watchGroupsCount_groupsAggregate<TRes>
  get groupsAggregate {
    final local$groupsAggregate = _instance.groupsAggregate;
    return CopyWith_Subscription_watchGroupsCount_groupsAggregate(
      local$groupsAggregate,
      (e) => call(groupsAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchGroupsCount<TRes>
    implements CopyWith_Subscription_watchGroupsCount<TRes> {
  _CopyWithStubImpl_Subscription_watchGroupsCount(this._res);

  TRes _res;

  call({Subscription_watchGroupsCount_groupsAggregate? groupsAggregate}) =>
      _res;

  CopyWith_Subscription_watchGroupsCount_groupsAggregate<TRes>
  get groupsAggregate =>
      CopyWith_Subscription_watchGroupsCount_groupsAggregate.stub(_res);
}

const documentNodeSubscriptionwatchGroupsCount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchGroupsCount'),
      variableDefinitions: [
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'groupsAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);

class Subscription_watchGroupsCount_groupsAggregate {
  Subscription_watchGroupsCount_groupsAggregate({
    this.aggregate,
    this.$__typename = 'GroupsAggregate',
  });

  factory Subscription_watchGroupsCount_groupsAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchGroupsCount_groupsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchGroupsCount_groupsAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchGroupsCount_groupsAggregate_aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchGroupsCount_groupsAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchGroupsCount_groupsAggregate
    on Subscription_watchGroupsCount_groupsAggregate {
  CopyWith_Subscription_watchGroupsCount_groupsAggregate<
    Subscription_watchGroupsCount_groupsAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchGroupsCount_groupsAggregate(this, (i) => i);
}

abstract class CopyWith_Subscription_watchGroupsCount_groupsAggregate<TRes> {
  factory CopyWith_Subscription_watchGroupsCount_groupsAggregate(
    Subscription_watchGroupsCount_groupsAggregate instance,
    TRes Function(Subscription_watchGroupsCount_groupsAggregate) then,
  ) = _CopyWithImpl_Subscription_watchGroupsCount_groupsAggregate;

  factory CopyWith_Subscription_watchGroupsCount_groupsAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchGroupsCount_groupsAggregate;

  TRes call({
    Subscription_watchGroupsCount_groupsAggregate_aggregate? aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<TRes>
  get aggregate;
}

class _CopyWithImpl_Subscription_watchGroupsCount_groupsAggregate<TRes>
    implements CopyWith_Subscription_watchGroupsCount_groupsAggregate<TRes> {
  _CopyWithImpl_Subscription_watchGroupsCount_groupsAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchGroupsCount_groupsAggregate _instance;

  final TRes Function(Subscription_watchGroupsCount_groupsAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchGroupsCount_groupsAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchGroupsCount_groupsAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<TRes>
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchGroupsCount_groupsAggregate<TRes>
    implements CopyWith_Subscription_watchGroupsCount_groupsAggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchGroupsCount_groupsAggregate(this._res);

  TRes _res;

  call({
    Subscription_watchGroupsCount_groupsAggregate_aggregate? aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<TRes>
  get aggregate =>
      CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate.stub(
        _res,
      );
}

class Subscription_watchGroupsCount_groupsAggregate_aggregate {
  Subscription_watchGroupsCount_groupsAggregate_aggregate({
    required this.count,
    this.$__typename = 'GroupsAggregateFields',
  });

  factory Subscription_watchGroupsCount_groupsAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchGroupsCount_groupsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchGroupsCount_groupsAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Subscription_watchGroupsCount_groupsAggregate_aggregate
    on Subscription_watchGroupsCount_groupsAggregate_aggregate {
  CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<
    Subscription_watchGroupsCount_groupsAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate(
    Subscription_watchGroupsCount_groupsAggregate_aggregate instance,
    TRes Function(Subscription_watchGroupsCount_groupsAggregate_aggregate) then,
  ) = _CopyWithImpl_Subscription_watchGroupsCount_groupsAggregate_aggregate;

  factory CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchGroupsCount_groupsAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchGroupsCount_groupsAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<TRes> {
  _CopyWithImpl_Subscription_watchGroupsCount_groupsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchGroupsCount_groupsAggregate_aggregate _instance;

  final TRes Function(Subscription_watchGroupsCount_groupsAggregate_aggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchGroupsCount_groupsAggregate_aggregate(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Subscription_watchGroupsCount_groupsAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchGroupsCount_groupsAggregate_aggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchGroupsCount_groupsAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}

class Variables_Subscription_watchGroup {
  factory Variables_Subscription_watchGroup({required UuidValue id}) =>
      Variables_Subscription_watchGroup._({r'id': id});

  Variables_Subscription_watchGroup._(this._$data);

  factory Variables_Subscription_watchGroup.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchGroup<Variables_Subscription_watchGroup>
  get copyWith => CopyWith_Variables_Subscription_watchGroup(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Subscription_watchGroup<TRes> {
  factory CopyWith_Variables_Subscription_watchGroup(
    Variables_Subscription_watchGroup instance,
    TRes Function(Variables_Subscription_watchGroup) then,
  ) = _CopyWithImpl_Variables_Subscription_watchGroup;

  factory CopyWith_Variables_Subscription_watchGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchGroup;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchGroup<TRes>
    implements CopyWith_Variables_Subscription_watchGroup<TRes> {
  _CopyWithImpl_Variables_Subscription_watchGroup(this._instance, this._then);

  final Variables_Subscription_watchGroup _instance;

  final TRes Function(Variables_Subscription_watchGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Subscription_watchGroup._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchGroup<TRes>
    implements CopyWith_Variables_Subscription_watchGroup<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchGroup(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchGroup {
  Subscription_watchGroup({this.groupsByPk});

  factory Subscription_watchGroup.fromJson(Map<String, dynamic> json) {
    final l$groupsByPk = json['groupsByPk'];
    return Subscription_watchGroup(
      groupsByPk: l$groupsByPk == null
          ? null
          : Subscription_watchGroup_groupsByPk.fromJson(
              (l$groupsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Subscription_watchGroup_groupsByPk? groupsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupsByPk = groupsByPk;
    _resultData['groupsByPk'] = l$groupsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupsByPk = groupsByPk;
    return Object.hashAll([l$groupsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupsByPk = groupsByPk;
    final lOther$groupsByPk = other.groupsByPk;
    if (l$groupsByPk != lOther$groupsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchGroup on Subscription_watchGroup {
  CopyWith_Subscription_watchGroup<Subscription_watchGroup> get copyWith =>
      CopyWith_Subscription_watchGroup(this, (i) => i);
}

abstract class CopyWith_Subscription_watchGroup<TRes> {
  factory CopyWith_Subscription_watchGroup(
    Subscription_watchGroup instance,
    TRes Function(Subscription_watchGroup) then,
  ) = _CopyWithImpl_Subscription_watchGroup;

  factory CopyWith_Subscription_watchGroup.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchGroup;

  TRes call({Subscription_watchGroup_groupsByPk? groupsByPk});
  CopyWith_Subscription_watchGroup_groupsByPk<TRes> get groupsByPk;
}

class _CopyWithImpl_Subscription_watchGroup<TRes>
    implements CopyWith_Subscription_watchGroup<TRes> {
  _CopyWithImpl_Subscription_watchGroup(this._instance, this._then);

  final Subscription_watchGroup _instance;

  final TRes Function(Subscription_watchGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupsByPk = _undefined}) => _then(
    Subscription_watchGroup(
      groupsByPk: groupsByPk == _undefined
          ? _instance.groupsByPk
          : (groupsByPk as Subscription_watchGroup_groupsByPk?),
    ),
  );

  CopyWith_Subscription_watchGroup_groupsByPk<TRes> get groupsByPk {
    final local$groupsByPk = _instance.groupsByPk;
    return local$groupsByPk == null
        ? CopyWith_Subscription_watchGroup_groupsByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchGroup_groupsByPk(
            local$groupsByPk,
            (e) => call(groupsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchGroup<TRes>
    implements CopyWith_Subscription_watchGroup<TRes> {
  _CopyWithStubImpl_Subscription_watchGroup(this._res);

  TRes _res;

  call({Subscription_watchGroup_groupsByPk? groupsByPk}) => _res;

  CopyWith_Subscription_watchGroup_groupsByPk<TRes> get groupsByPk =>
      CopyWith_Subscription_watchGroup_groupsByPk.stub(_res);
}

const documentNodeSubscriptionwatchGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'groupsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Group'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'userCanEdit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'service'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'ServiceWithStudyYears'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'lastEdit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'LatestEditHistory'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'validity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'adminUsers'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'distinctOn'),
                      value: EnumValueNode(name: NameNode(value: 'uid')),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'user'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'User'),
                              directives: [],
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Subscription_watchGroup_groupsByPk
    implements Fragment_Group, Fragment_GroupNoPhoto {
  Subscription_watchGroup_groupsByPk({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    this.blurhash,
    required this.service,
    this.lastEdit,
    this.validity,
    required this.adminUsers,
  });

  factory Subscription_watchGroup_groupsByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$service = json['service'];
    final l$lastEdit = json['lastEdit'];
    final l$validity = json['validity'];
    final l$adminUsers = json['adminUsers'];
    return Subscription_watchGroup_groupsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      service: Fragment_ServiceWithStudyYears.fromJson(
        (l$service as Map<String, dynamic>),
      ),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            ),
      validity: l$validity == null ? null : dateRangeFromString(l$validity),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map(
            (e) => Subscription_watchGroup_groupsByPk_adminUsers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_ServiceWithStudyYears service;

  final Fragment_LatestEditHistory? lastEdit;

  final DateTimeRange? validity;

  final List<Subscription_watchGroup_groupsByPk_adminUsers> adminUsers;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$validity = validity;
    _resultData['validity'] = l$validity == null
        ? null
        : dateRangeToString(l$validity);
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$service = service;
    final l$lastEdit = lastEdit;
    final l$validity = validity;
    final l$adminUsers = adminUsers;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$service,
      l$lastEdit,
      l$validity,
      Object.hashAll(l$adminUsers.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchGroup_groupsByPk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (l$validity != lOther$validity) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (l$adminUsers.length != lOther$adminUsers.length) {
      return false;
    }
    for (int i = 0; i < l$adminUsers.length; i++) {
      final l$adminUsers$entry = l$adminUsers[i];
      final lOther$adminUsers$entry = lOther$adminUsers[i];
      if (l$adminUsers$entry != lOther$adminUsers$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchGroup_groupsByPk
    on Subscription_watchGroup_groupsByPk {
  CopyWith_Subscription_watchGroup_groupsByPk<
    Subscription_watchGroup_groupsByPk
  >
  get copyWith => CopyWith_Subscription_watchGroup_groupsByPk(this, (i) => i);
}

abstract class CopyWith_Subscription_watchGroup_groupsByPk<TRes> {
  factory CopyWith_Subscription_watchGroup_groupsByPk(
    Subscription_watchGroup_groupsByPk instance,
    TRes Function(Subscription_watchGroup_groupsByPk) then,
  ) = _CopyWithImpl_Subscription_watchGroup_groupsByPk;

  factory CopyWith_Subscription_watchGroup_groupsByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchGroup_groupsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_ServiceWithStudyYears? service,
    Fragment_LatestEditHistory? lastEdit,
    DateTimeRange? validity,
    List<Subscription_watchGroup_groupsByPk_adminUsers>? adminUsers,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  TRes adminUsers(
    Iterable<Subscription_watchGroup_groupsByPk_adminUsers> Function(
      Iterable<
        CopyWith_Subscription_watchGroup_groupsByPk_adminUsers<
          Subscription_watchGroup_groupsByPk_adminUsers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchGroup_groupsByPk<TRes>
    implements CopyWith_Subscription_watchGroup_groupsByPk<TRes> {
  _CopyWithImpl_Subscription_watchGroup_groupsByPk(this._instance, this._then);

  final Subscription_watchGroup_groupsByPk _instance;

  final TRes Function(Subscription_watchGroup_groupsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? service = _undefined,
    Object? lastEdit = _undefined,
    Object? validity = _undefined,
    Object? adminUsers = _undefined,
  }) => _then(
    Subscription_watchGroup_groupsByPk(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      service: service == _undefined || service == null
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears),
      lastEdit: lastEdit == _undefined
          ? _instance.lastEdit
          : (lastEdit as Fragment_LatestEditHistory?),
      validity: validity == _undefined
          ? _instance.validity
          : (validity as DateTimeRange?),
      adminUsers: adminUsers == _undefined || adminUsers == null
          ? _instance.adminUsers
          : (adminUsers as List<Subscription_watchGroup_groupsByPk_adminUsers>),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return CopyWith_Fragment_ServiceWithStudyYears(
      local$service,
      (e) => call(service: e),
    );
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  TRes adminUsers(
    Iterable<Subscription_watchGroup_groupsByPk_adminUsers> Function(
      Iterable<
        CopyWith_Subscription_watchGroup_groupsByPk_adminUsers<
          Subscription_watchGroup_groupsByPk_adminUsers
        >
      >,
    )
    _fn,
  ) => call(
    adminUsers: _fn(
      _instance.adminUsers.map(
        (e) =>
            CopyWith_Subscription_watchGroup_groupsByPk_adminUsers(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchGroup_groupsByPk<TRes>
    implements CopyWith_Subscription_watchGroup_groupsByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchGroup_groupsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_ServiceWithStudyYears? service,
    Fragment_LatestEditHistory? lastEdit,
    DateTimeRange? validity,
    List<Subscription_watchGroup_groupsByPk_adminUsers>? adminUsers,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  adminUsers(_fn) => _res;
}

class Subscription_watchGroup_groupsByPk_adminUsers {
  Subscription_watchGroup_groupsByPk_adminUsers({
    required this.user,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Subscription_watchGroup_groupsByPk_adminUsers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription_watchGroup_groupsByPk_adminUsers(
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchGroup_groupsByPk_adminUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Subscription_watchGroup_groupsByPk_adminUsers
    on Subscription_watchGroup_groupsByPk_adminUsers {
  CopyWith_Subscription_watchGroup_groupsByPk_adminUsers<
    Subscription_watchGroup_groupsByPk_adminUsers
  >
  get copyWith =>
      CopyWith_Subscription_watchGroup_groupsByPk_adminUsers(this, (i) => i);
}

abstract class CopyWith_Subscription_watchGroup_groupsByPk_adminUsers<TRes> {
  factory CopyWith_Subscription_watchGroup_groupsByPk_adminUsers(
    Subscription_watchGroup_groupsByPk_adminUsers instance,
    TRes Function(Subscription_watchGroup_groupsByPk_adminUsers) then,
  ) = _CopyWithImpl_Subscription_watchGroup_groupsByPk_adminUsers;

  factory CopyWith_Subscription_watchGroup_groupsByPk_adminUsers.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchGroup_groupsByPk_adminUsers;

  TRes call({Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Subscription_watchGroup_groupsByPk_adminUsers<TRes>
    implements CopyWith_Subscription_watchGroup_groupsByPk_adminUsers<TRes> {
  _CopyWithImpl_Subscription_watchGroup_groupsByPk_adminUsers(
    this._instance,
    this._then,
  );

  final Subscription_watchGroup_groupsByPk_adminUsers _instance;

  final TRes Function(Subscription_watchGroup_groupsByPk_adminUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchGroup_groupsByPk_adminUsers(
          user: user == _undefined || user == null
              ? _instance.user
              : (user as Fragment_User),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Subscription_watchGroup_groupsByPk_adminUsers<TRes>
    implements CopyWith_Subscription_watchGroup_groupsByPk_adminUsers<TRes> {
  _CopyWithStubImpl_Subscription_watchGroup_groupsByPk_adminUsers(this._res);

  TRes _res;

  call({Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}
