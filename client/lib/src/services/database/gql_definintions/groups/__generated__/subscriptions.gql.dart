import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
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

  static const _undefined = <dynamic, dynamic>{};

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

  static const _undefined = <dynamic, dynamic>{};

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

class Variables$Subscription$watchGroup {
  factory Variables$Subscription$watchGroup({required UuidValue id}) =>
      Variables$Subscription$watchGroup._({
        r'id': id,
      });

  Variables$Subscription$watchGroup._(this._$data);

  factory Variables$Subscription$watchGroup.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchGroup<Variables$Subscription$watchGroup>
      get copyWith => CopyWith$Variables$Subscription$watchGroup(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchGroup) ||
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

abstract class CopyWith$Variables$Subscription$watchGroup<TRes> {
  factory CopyWith$Variables$Subscription$watchGroup(
    Variables$Subscription$watchGroup instance,
    TRes Function(Variables$Subscription$watchGroup) then,
  ) = _CopyWithImpl$Variables$Subscription$watchGroup;

  factory CopyWith$Variables$Subscription$watchGroup.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchGroup;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchGroup<TRes>
    implements CopyWith$Variables$Subscription$watchGroup<TRes> {
  _CopyWithImpl$Variables$Subscription$watchGroup(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchGroup _instance;

  final TRes Function(Variables$Subscription$watchGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchGroup._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchGroup<TRes>
    implements CopyWith$Variables$Subscription$watchGroup<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchGroup(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchGroup {
  Subscription$watchGroup({this.groupsByPk});

  factory Subscription$watchGroup.fromJson(Map<String, dynamic> json) {
    final l$groupsByPk = json['groupsByPk'];
    return Subscription$watchGroup(
        groupsByPk: l$groupsByPk == null
            ? null
            : Subscription$watchGroup$groupsByPk.fromJson(
                (l$groupsByPk as Map<String, dynamic>)));
  }

  final Subscription$watchGroup$groupsByPk? groupsByPk;

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
    if (!(other is Subscription$watchGroup) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Subscription$watchGroup on Subscription$watchGroup {
  CopyWith$Subscription$watchGroup<Subscription$watchGroup> get copyWith =>
      CopyWith$Subscription$watchGroup(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchGroup<TRes> {
  factory CopyWith$Subscription$watchGroup(
    Subscription$watchGroup instance,
    TRes Function(Subscription$watchGroup) then,
  ) = _CopyWithImpl$Subscription$watchGroup;

  factory CopyWith$Subscription$watchGroup.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchGroup;

  TRes call({Subscription$watchGroup$groupsByPk? groupsByPk});
  CopyWith$Subscription$watchGroup$groupsByPk<TRes> get groupsByPk;
}

class _CopyWithImpl$Subscription$watchGroup<TRes>
    implements CopyWith$Subscription$watchGroup<TRes> {
  _CopyWithImpl$Subscription$watchGroup(
    this._instance,
    this._then,
  );

  final Subscription$watchGroup _instance;

  final TRes Function(Subscription$watchGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupsByPk = _undefined}) => _then(Subscription$watchGroup(
      groupsByPk: groupsByPk == _undefined
          ? _instance.groupsByPk
          : (groupsByPk as Subscription$watchGroup$groupsByPk?)));
  CopyWith$Subscription$watchGroup$groupsByPk<TRes> get groupsByPk {
    final local$groupsByPk = _instance.groupsByPk;
    return local$groupsByPk == null
        ? CopyWith$Subscription$watchGroup$groupsByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchGroup$groupsByPk(
            local$groupsByPk, (e) => call(groupsByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchGroup<TRes>
    implements CopyWith$Subscription$watchGroup<TRes> {
  _CopyWithStubImpl$Subscription$watchGroup(this._res);

  TRes _res;

  call({Subscription$watchGroup$groupsByPk? groupsByPk}) => _res;
  CopyWith$Subscription$watchGroup$groupsByPk<TRes> get groupsByPk =>
      CopyWith$Subscription$watchGroup$groupsByPk.stub(_res);
}

const documentNodeSubscriptionwatchGroup = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchGroup'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'groupsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Group'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'service'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Service'),
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
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Subscription$watchGroup$groupsByPk
    implements Fragment$Group, Fragment$GroupNoPhoto {
  Subscription$watchGroup$groupsByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    required this.service,
    this.lastEdit,
    this.validity,
    required this.adminUsers,
  });

  factory Subscription$watchGroup$groupsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    final l$lastEdit = json['lastEdit'];
    final l$validity = json['validity'];
    final l$adminUsers = json['adminUsers'];
    return Subscription$watchGroup$groupsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service: Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      lastEdit: (l$lastEdit as Json?),
      validity: l$validity == null ? null : dateRangeFromString(l$validity),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map((e) => Subscription$watchGroup$groupsByPk$adminUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$Service service;

  final Json? lastEdit;

  final DateTimeRange? validity;

  final List<Subscription$watchGroup$groupsByPk$adminUsers> adminUsers;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$validity = validity;
    _resultData['validity'] =
        l$validity == null ? null : dateRangeToString(l$validity);
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$lastEdit = lastEdit;
    final l$validity = validity;
    final l$adminUsers = adminUsers;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
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
    if (!(other is Subscription$watchGroup$groupsByPk) ||
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

extension UtilityExtension$Subscription$watchGroup$groupsByPk
    on Subscription$watchGroup$groupsByPk {
  CopyWith$Subscription$watchGroup$groupsByPk<
          Subscription$watchGroup$groupsByPk>
      get copyWith => CopyWith$Subscription$watchGroup$groupsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchGroup$groupsByPk<TRes> {
  factory CopyWith$Subscription$watchGroup$groupsByPk(
    Subscription$watchGroup$groupsByPk instance,
    TRes Function(Subscription$watchGroup$groupsByPk) then,
  ) = _CopyWithImpl$Subscription$watchGroup$groupsByPk;

  factory CopyWith$Subscription$watchGroup$groupsByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchGroup$groupsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$Service? service,
    Json? lastEdit,
    DateTimeRange? validity,
    List<Subscription$watchGroup$groupsByPk$adminUsers>? adminUsers,
  });
  CopyWith$Fragment$Service<TRes> get service;
  TRes adminUsers(
      Iterable<Subscription$watchGroup$groupsByPk$adminUsers> Function(
              Iterable<
                  CopyWith$Subscription$watchGroup$groupsByPk$adminUsers<
                      Subscription$watchGroup$groupsByPk$adminUsers>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchGroup$groupsByPk<TRes>
    implements CopyWith$Subscription$watchGroup$groupsByPk<TRes> {
  _CopyWithImpl$Subscription$watchGroup$groupsByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchGroup$groupsByPk _instance;

  final TRes Function(Subscription$watchGroup$groupsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? lastEdit = _undefined,
    Object? validity = _undefined,
    Object? adminUsers = _undefined,
  }) =>
      _then(Subscription$watchGroup$groupsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Fragment$Service),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        validity: validity == _undefined
            ? _instance.validity
            : (validity as DateTimeRange?),
        adminUsers: adminUsers == _undefined || adminUsers == null
            ? _instance.adminUsers
            : (adminUsers
                as List<Subscription$watchGroup$groupsByPk$adminUsers>),
      ));
  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Fragment$Service(local$service, (e) => call(service: e));
  }

  TRes adminUsers(
          Iterable<Subscription$watchGroup$groupsByPk$adminUsers> Function(
                  Iterable<
                      CopyWith$Subscription$watchGroup$groupsByPk$adminUsers<
                          Subscription$watchGroup$groupsByPk$adminUsers>>)
              _fn) =>
      call(
          adminUsers: _fn(_instance.adminUsers.map(
              (e) => CopyWith$Subscription$watchGroup$groupsByPk$adminUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchGroup$groupsByPk<TRes>
    implements CopyWith$Subscription$watchGroup$groupsByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchGroup$groupsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$Service? service,
    Json? lastEdit,
    DateTimeRange? validity,
    List<Subscription$watchGroup$groupsByPk$adminUsers>? adminUsers,
  }) =>
      _res;
  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);
  adminUsers(_fn) => _res;
}

class Subscription$watchGroup$groupsByPk$adminUsers {
  Subscription$watchGroup$groupsByPk$adminUsers({
    required this.user,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Subscription$watchGroup$groupsByPk$adminUsers.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$watchGroup$groupsByPk$adminUsers(
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User user;

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
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchGroup$groupsByPk$adminUsers) ||
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

extension UtilityExtension$Subscription$watchGroup$groupsByPk$adminUsers
    on Subscription$watchGroup$groupsByPk$adminUsers {
  CopyWith$Subscription$watchGroup$groupsByPk$adminUsers<
          Subscription$watchGroup$groupsByPk$adminUsers>
      get copyWith => CopyWith$Subscription$watchGroup$groupsByPk$adminUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchGroup$groupsByPk$adminUsers<TRes> {
  factory CopyWith$Subscription$watchGroup$groupsByPk$adminUsers(
    Subscription$watchGroup$groupsByPk$adminUsers instance,
    TRes Function(Subscription$watchGroup$groupsByPk$adminUsers) then,
  ) = _CopyWithImpl$Subscription$watchGroup$groupsByPk$adminUsers;

  factory CopyWith$Subscription$watchGroup$groupsByPk$adminUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchGroup$groupsByPk$adminUsers;

  TRes call({
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Subscription$watchGroup$groupsByPk$adminUsers<TRes>
    implements CopyWith$Subscription$watchGroup$groupsByPk$adminUsers<TRes> {
  _CopyWithImpl$Subscription$watchGroup$groupsByPk$adminUsers(
    this._instance,
    this._then,
  );

  final Subscription$watchGroup$groupsByPk$adminUsers _instance;

  final TRes Function(Subscription$watchGroup$groupsByPk$adminUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchGroup$groupsByPk$adminUsers(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$watchGroup$groupsByPk$adminUsers<TRes>
    implements CopyWith$Subscription$watchGroup$groupsByPk$adminUsers<TRes> {
  _CopyWithStubImpl$Subscription$watchGroup$groupsByPk$adminUsers(this._res);

  TRes _res;

  call({
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}
