import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.graphql.dart';
import '../../fcm_tokens/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../invitations/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../users_preferences/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_users {
  factory Variables_Query_users({
    Input_UserFilterInput? filter,
    List<Input_UserSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_users._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_users._(this._$data);

  factory Variables_Query_users.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_UserFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_UserSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_users._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UserFilterInput? get filter =>
      (_$data['filter'] as Input_UserFilterInput?);

  List<Input_UserSortInput?>? get sort =>
      (_$data['sort'] as List<Input_UserSortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_users<Variables_Query_users> get copyWith =>
      CopyWith_Variables_Query_users(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_users || runtimeType != other.runtimeType) {
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
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_users<TRes> {
  factory CopyWith_Variables_Query_users(
    Variables_Query_users instance,
    TRes Function(Variables_Query_users) then,
  ) = _CopyWithImpl_Variables_Query_users;

  factory CopyWith_Variables_Query_users.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_users;

  TRes call({
    Input_UserFilterInput? filter,
    List<Input_UserSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_users<TRes>
    implements CopyWith_Variables_Query_users<TRes> {
  _CopyWithImpl_Variables_Query_users(this._instance, this._then);

  final Variables_Query_users _instance;

  final TRes Function(Variables_Query_users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_users._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_UserFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_UserSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_users<TRes>
    implements CopyWith_Variables_Query_users<TRes> {
  _CopyWithStubImpl_Variables_Query_users(this._res);

  TRes _res;

  call({
    Input_UserFilterInput? filter,
    List<Input_UserSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_users {
  Query_users({this.users, this.$__typename = 'RootQueryType'});

  factory Query_users.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query_users(
      users: l$users == null
          ? null
          : Query_users_users.fromJson((l$users as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_users_users? users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([l$users, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_users || runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) {
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

extension UtilityExtension_Query_users on Query_users {
  CopyWith_Query_users<Query_users> get copyWith =>
      CopyWith_Query_users(this, (i) => i);
}

abstract class CopyWith_Query_users<TRes> {
  factory CopyWith_Query_users(
    Query_users instance,
    TRes Function(Query_users) then,
  ) = _CopyWithImpl_Query_users;

  factory CopyWith_Query_users.stub(TRes res) = _CopyWithStubImpl_Query_users;

  TRes call({Query_users_users? users, String? $__typename});
  CopyWith_Query_users_users<TRes> get users;
}

class _CopyWithImpl_Query_users<TRes> implements CopyWith_Query_users<TRes> {
  _CopyWithImpl_Query_users(this._instance, this._then);

  final Query_users _instance;

  final TRes Function(Query_users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? users = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_users(
          users: users == _undefined
              ? _instance.users
              : (users as Query_users_users?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_users_users<TRes> get users {
    final local$users = _instance.users;
    return local$users == null
        ? CopyWith_Query_users_users.stub(_then(_instance))
        : CopyWith_Query_users_users(local$users, (e) => call(users: e));
  }
}

class _CopyWithStubImpl_Query_users<TRes>
    implements CopyWith_Query_users<TRes> {
  _CopyWithStubImpl_Query_users(this._res);

  TRes _res;

  call({Query_users_users? users, String? $__typename}) => _res;

  CopyWith_Query_users_users<TRes> get users =>
      CopyWith_Query_users_users.stub(_res);
}

const documentNodeQueryusers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'users'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'UserFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'UserSortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserOverview'),
                        directives: [],
                      ),
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserAdminScopes'),
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
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionInvitation,
    fragmentDefinitionUserPerson,
    fragmentDefinitionUserPersonDataCheck,
    fragmentDefinitionUserPersonLatestKodas,
    fragmentDefinitionUserPersonLatestConfession,
    fragmentDefinitionUserAdminScopes,
    fragmentDefinitionArea,
    fragmentDefinitionUserScopeService,
    fragmentDefinitionStudyYear,
  ],
);

class Query_users_users {
  Query_users_users({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfUser',
  });

  factory Query_users_users.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_users_users(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Query_users_users_results.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_users_users_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_users_users || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_users_users on Query_users_users {
  CopyWith_Query_users_users<Query_users_users> get copyWith =>
      CopyWith_Query_users_users(this, (i) => i);
}

abstract class CopyWith_Query_users_users<TRes> {
  factory CopyWith_Query_users_users(
    Query_users_users instance,
    TRes Function(Query_users_users) then,
  ) = _CopyWithImpl_Query_users_users;

  factory CopyWith_Query_users_users.stub(TRes res) =
      _CopyWithStubImpl_Query_users_users;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_users_users_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_users_users_results>? Function(
      Iterable<CopyWith_Query_users_users_results<Query_users_users_results>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_users_users<TRes>
    implements CopyWith_Query_users_users<TRes> {
  _CopyWithImpl_Query_users_users(this._instance, this._then);

  final Query_users_users _instance;

  final TRes Function(Query_users_users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_users_users(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_users_users_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_users_users_results>? Function(
      Iterable<CopyWith_Query_users_users_results<Query_users_users_results>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_users_users_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_users_users<TRes>
    implements CopyWith_Query_users_users<TRes> {
  _CopyWithStubImpl_Query_users_users(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_users_users_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_users_users_results
    implements Fragment_UserOverview, Fragment_User, Fragment_UserAdminScopes {
  Query_users_users_results({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
    required this.currentUserCanManageThisUser,
    this.authId,
    this.invitation,
    required this.permissions,
    this.person,
    required this.scopeGrants,
  });

  factory Query_users_users_results.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$currentUserCanManageThisUser = json['currentUserCanManageThisUser'];
    final l$authId = json['authId'];
    final l$invitation = json['invitation'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$scopeGrants = json['scopeGrants'];
    return Query_users_users_results(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      currentUserCanManageThisUser: (l$currentUserCanManageThisUser as bool),
      authId: (l$authId as String?),
      invitation: l$invitation == null
          ? null
          : Fragment_Invitation.fromJson(
              (l$invitation as Map<String, dynamic>),
            ),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Query_users_users_results_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserPerson.fromJson((l$person as Map<String, dynamic>)),
      scopeGrants: (l$scopeGrants as List<dynamic>)
          .map(
            (e) => Query_users_users_results_scopeGrants.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final bool currentUserCanManageThisUser;

  final String? authId;

  final Fragment_Invitation? invitation;

  final List<Query_users_users_results_permissions> permissions;

  final Fragment_UserPerson? person;

  final List<Query_users_users_results_scopeGrants> scopeGrants;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    _resultData['currentUserCanManageThisUser'] =
        l$currentUserCanManageThisUser;
    final l$authId = authId;
    _resultData['authId'] = l$authId;
    final l$invitation = invitation;
    _resultData['invitation'] = l$invitation?.toJson();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$scopeGrants = scopeGrants;
    _resultData['scopeGrants'] = l$scopeGrants.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$authId = authId;
    final l$invitation = invitation;
    final l$permissions = permissions;
    final l$person = person;
    final l$scopeGrants = scopeGrants;
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$currentUserCanManageThisUser,
      l$authId,
      l$invitation,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      Object.hashAll(l$scopeGrants.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_users_users_results ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (l$authId != lOther$authId) {
      return false;
    }
    final l$invitation = invitation;
    final lOther$invitation = other.invitation;
    if (l$invitation != lOther$invitation) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
      return false;
    }
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (l$scopeGrants.length != lOther$scopeGrants.length) {
      return false;
    }
    for (int i = 0; i < l$scopeGrants.length; i++) {
      final l$scopeGrants$entry = l$scopeGrants[i];
      final lOther$scopeGrants$entry = lOther$scopeGrants[i];
      if (l$scopeGrants$entry != lOther$scopeGrants$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_users_users_results
    on Query_users_users_results {
  CopyWith_Query_users_users_results<Query_users_users_results> get copyWith =>
      CopyWith_Query_users_users_results(this, (i) => i);
}

abstract class CopyWith_Query_users_users_results<TRes> {
  factory CopyWith_Query_users_users_results(
    Query_users_users_results instance,
    TRes Function(Query_users_users_results) then,
  ) = _CopyWithImpl_Query_users_users_results;

  factory CopyWith_Query_users_users_results.stub(TRes res) =
      _CopyWithStubImpl_Query_users_users_results;

  TRes call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Query_users_users_results_permissions>? permissions,
    Fragment_UserPerson? person,
    List<Query_users_users_results_scopeGrants>? scopeGrants,
  });
  CopyWith_Fragment_Invitation<TRes> get invitation;
  TRes permissions(
    Iterable<Query_users_users_results_permissions> Function(
      Iterable<
        CopyWith_Query_users_users_results_permissions<
          Query_users_users_results_permissions
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPerson<TRes> get person;
  TRes scopeGrants(
    Iterable<Query_users_users_results_scopeGrants> Function(
      Iterable<
        CopyWith_Query_users_users_results_scopeGrants<
          Query_users_users_results_scopeGrants
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_users_users_results<TRes>
    implements CopyWith_Query_users_users_results<TRes> {
  _CopyWithImpl_Query_users_users_results(this._instance, this._then);

  final Query_users_users_results _instance;

  final TRes Function(Query_users_users_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? authId = _undefined,
    Object? invitation = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? scopeGrants = _undefined,
  }) => _then(
    Query_users_users_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      currentUserCanManageThisUser:
          currentUserCanManageThisUser == _undefined ||
              currentUserCanManageThisUser == null
          ? _instance.currentUserCanManageThisUser
          : (currentUserCanManageThisUser as bool),
      authId: authId == _undefined ? _instance.authId : (authId as String?),
      invitation: invitation == _undefined
          ? _instance.invitation
          : (invitation as Fragment_Invitation?),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Query_users_users_results_permissions>),
      person: person == _undefined
          ? _instance.person
          : (person as Fragment_UserPerson?),
      scopeGrants: scopeGrants == _undefined || scopeGrants == null
          ? _instance.scopeGrants
          : (scopeGrants as List<Query_users_users_results_scopeGrants>),
    ),
  );

  CopyWith_Fragment_Invitation<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return local$invitation == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(
            local$invitation,
            (e) => call(invitation: e),
          );
  }

  TRes permissions(
    Iterable<Query_users_users_results_permissions> Function(
      Iterable<
        CopyWith_Query_users_users_results_permissions<
          Query_users_users_results_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Query_users_users_results_permissions(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_UserPerson<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserPerson.stub(_then(_instance))
        : CopyWith_Fragment_UserPerson(local$person, (e) => call(person: e));
  }

  TRes scopeGrants(
    Iterable<Query_users_users_results_scopeGrants> Function(
      Iterable<
        CopyWith_Query_users_users_results_scopeGrants<
          Query_users_users_results_scopeGrants
        >
      >,
    )
    _fn,
  ) => call(
    scopeGrants: _fn(
      _instance.scopeGrants.map(
        (e) => CopyWith_Query_users_users_results_scopeGrants(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_users_users_results<TRes>
    implements CopyWith_Query_users_users_results<TRes> {
  _CopyWithStubImpl_Query_users_users_results(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Query_users_users_results_permissions>? permissions,
    Fragment_UserPerson? person,
    List<Query_users_users_results_scopeGrants>? scopeGrants,
  }) => _res;

  CopyWith_Fragment_Invitation<TRes> get invitation =>
      CopyWith_Fragment_Invitation.stub(_res);

  permissions(_fn) => _res;

  CopyWith_Fragment_UserPerson<TRes> get person =>
      CopyWith_Fragment_UserPerson.stub(_res);

  scopeGrants(_fn) => _res;
}

class Query_users_users_results_permissions
    implements Fragment_UserOverview_permissions {
  Query_users_users_results_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Query_users_users_results_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Query_users_users_results_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_users_users_results_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (l$permission != lOther$permission) {
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

extension UtilityExtension_Query_users_users_results_permissions
    on Query_users_users_results_permissions {
  CopyWith_Query_users_users_results_permissions<
    Query_users_users_results_permissions
  >
  get copyWith =>
      CopyWith_Query_users_users_results_permissions(this, (i) => i);
}

abstract class CopyWith_Query_users_users_results_permissions<TRes> {
  factory CopyWith_Query_users_users_results_permissions(
    Query_users_users_results_permissions instance,
    TRes Function(Query_users_users_results_permissions) then,
  ) = _CopyWithImpl_Query_users_users_results_permissions;

  factory CopyWith_Query_users_users_results_permissions.stub(TRes res) =
      _CopyWithStubImpl_Query_users_users_results_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Query_users_users_results_permissions<TRes>
    implements CopyWith_Query_users_users_results_permissions<TRes> {
  _CopyWithImpl_Query_users_users_results_permissions(
    this._instance,
    this._then,
  );

  final Query_users_users_results_permissions _instance;

  final TRes Function(Query_users_users_results_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_users_users_results_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_users_users_results_permissions<TRes>
    implements CopyWith_Query_users_users_results_permissions<TRes> {
  _CopyWithStubImpl_Query_users_users_results_permissions(this._res);

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}

class Query_users_users_results_scopeGrants
    implements Fragment_UserAdminScopes_scopeGrants {
  Query_users_users_results_scopeGrants({
    required this.id,
    required this.permissionId,
    this.area,
    this.service,
    this.studyYear,
    this.$__typename = 'ScopeGrant',
  });

  factory Query_users_users_results_scopeGrants.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$$__typename = json['__typename'];
    return Query_users_users_results_scopeGrants(
      id: (l$id as String),
      permissionId: (l$permissionId as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment_UserScopeService.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permissionId;

  final Fragment_Area? area;

  final Fragment_UserScopeService? service;

  final Fragment_StudyYear? studyYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissionId = permissionId;
    _resultData['permissionId'] = l$permissionId;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissionId = permissionId;
    final l$area = area;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$permissionId,
      l$area,
      l$service,
      l$studyYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_users_users_results_scopeGrants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
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

extension UtilityExtension_Query_users_users_results_scopeGrants
    on Query_users_users_results_scopeGrants {
  CopyWith_Query_users_users_results_scopeGrants<
    Query_users_users_results_scopeGrants
  >
  get copyWith =>
      CopyWith_Query_users_users_results_scopeGrants(this, (i) => i);
}

abstract class CopyWith_Query_users_users_results_scopeGrants<TRes> {
  factory CopyWith_Query_users_users_results_scopeGrants(
    Query_users_users_results_scopeGrants instance,
    TRes Function(Query_users_users_results_scopeGrants) then,
  ) = _CopyWithImpl_Query_users_users_results_scopeGrants;

  factory CopyWith_Query_users_users_results_scopeGrants.stub(TRes res) =
      _CopyWithStubImpl_Query_users_users_results_scopeGrants;

  TRes call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    Fragment_UserScopeService? service,
    Fragment_StudyYear? studyYear,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserScopeService<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
}

class _CopyWithImpl_Query_users_users_results_scopeGrants<TRes>
    implements CopyWith_Query_users_users_results_scopeGrants<TRes> {
  _CopyWithImpl_Query_users_users_results_scopeGrants(
    this._instance,
    this._then,
  );

  final Query_users_users_results_scopeGrants _instance;

  final TRes Function(Query_users_users_results_scopeGrants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_users_users_results_scopeGrants(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_UserScopeService?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Fragment_UserScopeService<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserScopeService.stub(_then(_instance))
        : CopyWith_Fragment_UserScopeService(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Query_users_users_results_scopeGrants<TRes>
    implements CopyWith_Query_users_users_results_scopeGrants<TRes> {
  _CopyWithStubImpl_Query_users_users_results_scopeGrants(this._res);

  TRes _res;

  call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    Fragment_UserScopeService? service,
    Fragment_StudyYear? studyYear,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserScopeService<TRes> get service =>
      CopyWith_Fragment_UserScopeService.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

class Variables_Query_user {
  factory Variables_Query_user({required String id, bool? fullData}) =>
      Variables_Query_user._({
        r'id': id,
        if (fullData != null) r'fullData': fullData,
      });

  Variables_Query_user._(this._$data);

  factory Variables_Query_user.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('fullData')) {
      final l$fullData = data['fullData'];
      result$data['fullData'] = (l$fullData as bool?);
    }
    return Variables_Query_user._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool? get fullData => (_$data['fullData'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('fullData')) {
      final l$fullData = fullData;
      result$data['fullData'] = l$fullData;
    }
    return result$data;
  }

  CopyWith_Variables_Query_user<Variables_Query_user> get copyWith =>
      CopyWith_Variables_Query_user(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_user || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$fullData = fullData;
    final lOther$fullData = other.fullData;
    if (_$data.containsKey('fullData') !=
        other._$data.containsKey('fullData')) {
      return false;
    }
    if (l$fullData != lOther$fullData) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fullData = fullData;
    return Object.hashAll([
      l$id,
      _$data.containsKey('fullData') ? l$fullData : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_user<TRes> {
  factory CopyWith_Variables_Query_user(
    Variables_Query_user instance,
    TRes Function(Variables_Query_user) then,
  ) = _CopyWithImpl_Variables_Query_user;

  factory CopyWith_Variables_Query_user.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_user;

  TRes call({String? id, bool? fullData});
}

class _CopyWithImpl_Variables_Query_user<TRes>
    implements CopyWith_Variables_Query_user<TRes> {
  _CopyWithImpl_Variables_Query_user(this._instance, this._then);

  final Variables_Query_user _instance;

  final TRes Function(Variables_Query_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? fullData = _undefined}) => _then(
    Variables_Query_user._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (fullData != _undefined) 'fullData': (fullData as bool?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_user<TRes>
    implements CopyWith_Variables_Query_user<TRes> {
  _CopyWithStubImpl_Variables_Query_user(this._res);

  TRes _res;

  call({String? id, bool? fullData}) => _res;
}

class Query_user {
  Query_user({this.user, this.$__typename = 'RootQueryType'});

  factory Query_user.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query_user(
      user: l$user == null
          ? null
          : Query_user_user.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_user_user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
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
    if (other is! Query_user || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_user on Query_user {
  CopyWith_Query_user<Query_user> get copyWith =>
      CopyWith_Query_user(this, (i) => i);
}

abstract class CopyWith_Query_user<TRes> {
  factory CopyWith_Query_user(
    Query_user instance,
    TRes Function(Query_user) then,
  ) = _CopyWithImpl_Query_user;

  factory CopyWith_Query_user.stub(TRes res) = _CopyWithStubImpl_Query_user;

  TRes call({Query_user_user? user, String? $__typename});
  CopyWith_Query_user_user<TRes> get user;
}

class _CopyWithImpl_Query_user<TRes> implements CopyWith_Query_user<TRes> {
  _CopyWithImpl_Query_user(this._instance, this._then);

  final Query_user _instance;

  final TRes Function(Query_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_user(
          user: user == _undefined
              ? _instance.user
              : (user as Query_user_user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_user_user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Query_user_user.stub(_then(_instance))
        : CopyWith_Query_user_user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Query_user<TRes> implements CopyWith_Query_user<TRes> {
  _CopyWithStubImpl_Query_user(this._res);

  TRes _res;

  call({Query_user_user? user, String? $__typename}) => _res;

  CopyWith_Query_user_user<TRes> get user =>
      CopyWith_Query_user_user.stub(_res);
}

const documentNodeQueryuser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'user'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'fullData')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'user'),
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
                  name: NameNode(value: 'UserOverview'),
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'skip'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'fullData'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'UserDetails'),
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'fullData'),
                          ),
                        ),
                      ],
                    ),
                  ],
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
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionInvitation,
    fragmentDefinitionUserPerson,
    fragmentDefinitionUserPersonDataCheck,
    fragmentDefinitionUserPersonLatestKodas,
    fragmentDefinitionUserPersonLatestConfession,
    fragmentDefinitionUserDetails,
    fragmentDefinitionUserLatestEdit,
    fragmentDefinitionUserAdminOn,
    fragmentDefinitionArea,
    fragmentDefinitionUserScopeService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionUserScopeGroup,
    fragmentDefinitionUserPreferences,
    fragmentDefinitionDeviceToken,
  ],
);

class Query_user_user
    implements
        Fragment_UserOverview,
        Fragment_User,
        Fragment_UserDetails,
        Fragment_UserAdminOn {
  Query_user_user({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
    required this.currentUserCanManageThisUser,
    this.authId,
    this.invitation,
    required this.permissions,
    this.person,
    this.latestEdit,
    required this.scopeGrants,
    this.preferences,
    required this.deviceTokens,
  });

  factory Query_user_user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$currentUserCanManageThisUser = json['currentUserCanManageThisUser'];
    final l$authId = json['authId'];
    final l$invitation = json['invitation'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$latestEdit = json['latestEdit'];
    final l$scopeGrants = json['scopeGrants'];
    final l$preferences = json['preferences'];
    final l$deviceTokens = json['deviceTokens'];
    return Query_user_user(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      currentUserCanManageThisUser: (l$currentUserCanManageThisUser as bool),
      authId: (l$authId as String?),
      invitation: l$invitation == null
          ? null
          : Fragment_Invitation.fromJson(
              (l$invitation as Map<String, dynamic>),
            ),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Query_user_user_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserPerson.fromJson((l$person as Map<String, dynamic>)),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_UserLatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      scopeGrants: (l$scopeGrants as List<dynamic>)
          .map(
            (e) => Query_user_user_scopeGrants.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      preferences: l$preferences == null
          ? null
          : Fragment_UserPreferences.fromJson(
              (l$preferences as Map<String, dynamic>),
            ),
      deviceTokens: (l$deviceTokens as List<dynamic>)
          .map(
            (e) => Fragment_DeviceToken.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final bool currentUserCanManageThisUser;

  final String? authId;

  final Fragment_Invitation? invitation;

  final List<Query_user_user_permissions> permissions;

  final Fragment_UserPerson? person;

  final Fragment_UserLatestEdit? latestEdit;

  final List<Query_user_user_scopeGrants> scopeGrants;

  final Fragment_UserPreferences? preferences;

  final List<Fragment_DeviceToken> deviceTokens;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    _resultData['currentUserCanManageThisUser'] =
        l$currentUserCanManageThisUser;
    final l$authId = authId;
    _resultData['authId'] = l$authId;
    final l$invitation = invitation;
    _resultData['invitation'] = l$invitation?.toJson();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$scopeGrants = scopeGrants;
    _resultData['scopeGrants'] = l$scopeGrants.map((e) => e.toJson()).toList();
    final l$preferences = preferences;
    _resultData['preferences'] = l$preferences?.toJson();
    final l$deviceTokens = deviceTokens;
    _resultData['deviceTokens'] = l$deviceTokens
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$authId = authId;
    final l$invitation = invitation;
    final l$permissions = permissions;
    final l$person = person;
    final l$latestEdit = latestEdit;
    final l$scopeGrants = scopeGrants;
    final l$preferences = preferences;
    final l$deviceTokens = deviceTokens;
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$currentUserCanManageThisUser,
      l$authId,
      l$invitation,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      l$latestEdit,
      Object.hashAll(l$scopeGrants.map((v) => v)),
      l$preferences,
      Object.hashAll(l$deviceTokens.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_user_user || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (l$authId != lOther$authId) {
      return false;
    }
    final l$invitation = invitation;
    final lOther$invitation = other.invitation;
    if (l$invitation != lOther$invitation) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (l$scopeGrants.length != lOther$scopeGrants.length) {
      return false;
    }
    for (int i = 0; i < l$scopeGrants.length; i++) {
      final l$scopeGrants$entry = l$scopeGrants[i];
      final lOther$scopeGrants$entry = lOther$scopeGrants[i];
      if (l$scopeGrants$entry != lOther$scopeGrants$entry) {
        return false;
      }
    }
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (l$preferences != lOther$preferences) {
      return false;
    }
    final l$deviceTokens = deviceTokens;
    final lOther$deviceTokens = other.deviceTokens;
    if (l$deviceTokens.length != lOther$deviceTokens.length) {
      return false;
    }
    for (int i = 0; i < l$deviceTokens.length; i++) {
      final l$deviceTokens$entry = l$deviceTokens[i];
      final lOther$deviceTokens$entry = lOther$deviceTokens[i];
      if (l$deviceTokens$entry != lOther$deviceTokens$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_user_user on Query_user_user {
  CopyWith_Query_user_user<Query_user_user> get copyWith =>
      CopyWith_Query_user_user(this, (i) => i);
}

abstract class CopyWith_Query_user_user<TRes> {
  factory CopyWith_Query_user_user(
    Query_user_user instance,
    TRes Function(Query_user_user) then,
  ) = _CopyWithImpl_Query_user_user;

  factory CopyWith_Query_user_user.stub(TRes res) =
      _CopyWithStubImpl_Query_user_user;

  TRes call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Query_user_user_permissions>? permissions,
    Fragment_UserPerson? person,
    Fragment_UserLatestEdit? latestEdit,
    List<Query_user_user_scopeGrants>? scopeGrants,
    Fragment_UserPreferences? preferences,
    List<Fragment_DeviceToken>? deviceTokens,
  });
  CopyWith_Fragment_Invitation<TRes> get invitation;
  TRes permissions(
    Iterable<Query_user_user_permissions> Function(
      Iterable<
        CopyWith_Query_user_user_permissions<Query_user_user_permissions>
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPerson<TRes> get person;
  CopyWith_Fragment_UserLatestEdit<TRes> get latestEdit;
  TRes scopeGrants(
    Iterable<Query_user_user_scopeGrants> Function(
      Iterable<
        CopyWith_Query_user_user_scopeGrants<Query_user_user_scopeGrants>
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPreferences<TRes> get preferences;
  TRes deviceTokens(
    Iterable<Fragment_DeviceToken> Function(
      Iterable<CopyWith_Fragment_DeviceToken<Fragment_DeviceToken>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_user_user<TRes>
    implements CopyWith_Query_user_user<TRes> {
  _CopyWithImpl_Query_user_user(this._instance, this._then);

  final Query_user_user _instance;

  final TRes Function(Query_user_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? authId = _undefined,
    Object? invitation = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? latestEdit = _undefined,
    Object? scopeGrants = _undefined,
    Object? preferences = _undefined,
    Object? deviceTokens = _undefined,
  }) => _then(
    Query_user_user(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      currentUserCanManageThisUser:
          currentUserCanManageThisUser == _undefined ||
              currentUserCanManageThisUser == null
          ? _instance.currentUserCanManageThisUser
          : (currentUserCanManageThisUser as bool),
      authId: authId == _undefined ? _instance.authId : (authId as String?),
      invitation: invitation == _undefined
          ? _instance.invitation
          : (invitation as Fragment_Invitation?),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Query_user_user_permissions>),
      person: person == _undefined
          ? _instance.person
          : (person as Fragment_UserPerson?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_UserLatestEdit?),
      scopeGrants: scopeGrants == _undefined || scopeGrants == null
          ? _instance.scopeGrants
          : (scopeGrants as List<Query_user_user_scopeGrants>),
      preferences: preferences == _undefined
          ? _instance.preferences
          : (preferences as Fragment_UserPreferences?),
      deviceTokens: deviceTokens == _undefined || deviceTokens == null
          ? _instance.deviceTokens
          : (deviceTokens as List<Fragment_DeviceToken>),
    ),
  );

  CopyWith_Fragment_Invitation<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return local$invitation == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(
            local$invitation,
            (e) => call(invitation: e),
          );
  }

  TRes permissions(
    Iterable<Query_user_user_permissions> Function(
      Iterable<
        CopyWith_Query_user_user_permissions<Query_user_user_permissions>
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Query_user_user_permissions(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_UserPerson<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserPerson.stub(_then(_instance))
        : CopyWith_Fragment_UserPerson(local$person, (e) => call(person: e));
  }

  CopyWith_Fragment_UserLatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_UserLatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_UserLatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  TRes scopeGrants(
    Iterable<Query_user_user_scopeGrants> Function(
      Iterable<
        CopyWith_Query_user_user_scopeGrants<Query_user_user_scopeGrants>
      >,
    )
    _fn,
  ) => call(
    scopeGrants: _fn(
      _instance.scopeGrants.map(
        (e) => CopyWith_Query_user_user_scopeGrants(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_UserPreferences<TRes> get preferences {
    final local$preferences = _instance.preferences;
    return local$preferences == null
        ? CopyWith_Fragment_UserPreferences.stub(_then(_instance))
        : CopyWith_Fragment_UserPreferences(
            local$preferences,
            (e) => call(preferences: e),
          );
  }

  TRes deviceTokens(
    Iterable<Fragment_DeviceToken> Function(
      Iterable<CopyWith_Fragment_DeviceToken<Fragment_DeviceToken>>,
    )
    _fn,
  ) => call(
    deviceTokens: _fn(
      _instance.deviceTokens.map(
        (e) => CopyWith_Fragment_DeviceToken(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_user_user<TRes>
    implements CopyWith_Query_user_user<TRes> {
  _CopyWithStubImpl_Query_user_user(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Query_user_user_permissions>? permissions,
    Fragment_UserPerson? person,
    Fragment_UserLatestEdit? latestEdit,
    List<Query_user_user_scopeGrants>? scopeGrants,
    Fragment_UserPreferences? preferences,
    List<Fragment_DeviceToken>? deviceTokens,
  }) => _res;

  CopyWith_Fragment_Invitation<TRes> get invitation =>
      CopyWith_Fragment_Invitation.stub(_res);

  permissions(_fn) => _res;

  CopyWith_Fragment_UserPerson<TRes> get person =>
      CopyWith_Fragment_UserPerson.stub(_res);

  CopyWith_Fragment_UserLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_UserLatestEdit.stub(_res);

  scopeGrants(_fn) => _res;

  CopyWith_Fragment_UserPreferences<TRes> get preferences =>
      CopyWith_Fragment_UserPreferences.stub(_res);

  deviceTokens(_fn) => _res;
}

class Query_user_user_permissions
    implements
        Fragment_UserOverview_permissions,
        Fragment_UserDetails_permissions {
  Query_user_user_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Query_user_user_permissions.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Query_user_user_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_user_user_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (l$permission != lOther$permission) {
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

extension UtilityExtension_Query_user_user_permissions
    on Query_user_user_permissions {
  CopyWith_Query_user_user_permissions<Query_user_user_permissions>
  get copyWith => CopyWith_Query_user_user_permissions(this, (i) => i);
}

abstract class CopyWith_Query_user_user_permissions<TRes> {
  factory CopyWith_Query_user_user_permissions(
    Query_user_user_permissions instance,
    TRes Function(Query_user_user_permissions) then,
  ) = _CopyWithImpl_Query_user_user_permissions;

  factory CopyWith_Query_user_user_permissions.stub(TRes res) =
      _CopyWithStubImpl_Query_user_user_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Query_user_user_permissions<TRes>
    implements CopyWith_Query_user_user_permissions<TRes> {
  _CopyWithImpl_Query_user_user_permissions(this._instance, this._then);

  final Query_user_user_permissions _instance;

  final TRes Function(Query_user_user_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_user_user_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_user_user_permissions<TRes>
    implements CopyWith_Query_user_user_permissions<TRes> {
  _CopyWithStubImpl_Query_user_user_permissions(this._res);

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}

class Query_user_user_scopeGrants
    implements
        Fragment_UserDetails_scopeGrants,
        Fragment_UserAdminOn_scopeGrants {
  Query_user_user_scopeGrants({
    required this.id,
    required this.permissionId,
    this.area,
    this.areaAllowExport,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.studyYear,
    this.serviceGender,
    this.serviceAllowExport,
    this.serviceAllowEdit,
    this.serviceAllowRecordAttendance,
    this.serviceAllowRecordServantsAttendance,
    this.serviceAdminOnUsers,
    required this.serviceWriteRelatedFamilies,
    this.group,
    this.groupAllowExport,
    this.groupAllowEdit,
    this.groupAllowRecordAttendance,
    this.groupAllowRecordServantsAttendance,
    this.groupAdminOnUsers,
    required this.groupWriteRelatedFamilies,
    this.$__typename = 'ScopeGrant',
  });

  factory Query_user_user_scopeGrants.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowExport = json['areaAllowExport'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowExport = json['serviceAllowExport'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAllowRecordAttendance = json['serviceAllowRecordAttendance'];
    final l$serviceAllowRecordServantsAttendance =
        json['serviceAllowRecordServantsAttendance'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$serviceWriteRelatedFamilies = json['serviceWriteRelatedFamilies'];
    final l$group = json['group'];
    final l$groupAllowExport = json['groupAllowExport'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAllowRecordAttendance = json['groupAllowRecordAttendance'];
    final l$groupAllowRecordServantsAttendance =
        json['groupAllowRecordServantsAttendance'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$groupWriteRelatedFamilies = json['groupWriteRelatedFamilies'];
    final l$$__typename = json['__typename'];
    return Query_user_user_scopeGrants(
      id: (l$id as String),
      permissionId: (l$permissionId as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowExport: (l$areaAllowExport as bool?),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Query_user_user_scopeGrants_service.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowExport: (l$serviceAllowExport as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: (l$serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          (l$serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies: (l$serviceWriteRelatedFamilies as bool),
      group: l$group == null
          ? null
          : Fragment_UserScopeGroup.fromJson((l$group as Map<String, dynamic>)),
      groupAllowExport: (l$groupAllowExport as bool?),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAllowRecordAttendance: (l$groupAllowRecordAttendance as bool?),
      groupAllowRecordServantsAttendance:
          (l$groupAllowRecordServantsAttendance as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      groupWriteRelatedFamilies: (l$groupWriteRelatedFamilies as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permissionId;

  final Fragment_Area? area;

  final bool? areaAllowExport;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Query_user_user_scopeGrants_service? service;

  final Fragment_StudyYear? studyYear;

  final bool? serviceGender;

  final bool? serviceAllowExport;

  final bool? serviceAllowEdit;

  final bool? serviceAllowRecordAttendance;

  final bool? serviceAllowRecordServantsAttendance;

  final bool? serviceAdminOnUsers;

  final bool serviceWriteRelatedFamilies;

  final Fragment_UserScopeGroup? group;

  final bool? groupAllowExport;

  final bool? groupAllowEdit;

  final bool? groupAllowRecordAttendance;

  final bool? groupAllowRecordServantsAttendance;

  final bool? groupAdminOnUsers;

  final bool groupWriteRelatedFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissionId = permissionId;
    _resultData['permissionId'] = l$permissionId;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$areaAllowExport = areaAllowExport;
    _resultData['areaAllowExport'] = l$areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    _resultData['areaAllowEdit'] = l$areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    _resultData['areaAdminOnUsers'] = l$areaAdminOnUsers;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    _resultData['serviceAllowExport'] = l$serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    _resultData['serviceAllowEdit'] = l$serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    _resultData['serviceAllowRecordAttendance'] =
        l$serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    _resultData['serviceAllowRecordServantsAttendance'] =
        l$serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    _resultData['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    _resultData['serviceWriteRelatedFamilies'] = l$serviceWriteRelatedFamilies;
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$groupAllowExport = groupAllowExport;
    _resultData['groupAllowExport'] = l$groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    _resultData['groupAllowEdit'] = l$groupAllowEdit;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    _resultData['groupAllowRecordAttendance'] = l$groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    _resultData['groupAllowRecordServantsAttendance'] =
        l$groupAllowRecordServantsAttendance;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    _resultData['groupAdminOnUsers'] = l$groupAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    _resultData['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowExport = areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$serviceGender = serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$group = group;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$permissionId,
      l$area,
      l$areaAllowExport,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$studyYear,
      l$serviceGender,
      l$serviceAllowExport,
      l$serviceAllowEdit,
      l$serviceAllowRecordAttendance,
      l$serviceAllowRecordServantsAttendance,
      l$serviceAdminOnUsers,
      l$serviceWriteRelatedFamilies,
      l$group,
      l$groupAllowExport,
      l$groupAllowEdit,
      l$groupAllowRecordAttendance,
      l$groupAllowRecordServantsAttendance,
      l$groupAdminOnUsers,
      l$groupWriteRelatedFamilies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_user_user_scopeGrants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaAllowExport = areaAllowExport;
    final lOther$areaAllowExport = other.areaAllowExport;
    if (l$areaAllowExport != lOther$areaAllowExport) {
      return false;
    }
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
      return false;
    }
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
      return false;
    }
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final lOther$serviceAllowRecordAttendance =
        other.serviceAllowRecordAttendance;
    if (l$serviceAllowRecordAttendance != lOther$serviceAllowRecordAttendance) {
      return false;
    }
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final lOther$serviceAllowRecordServantsAttendance =
        other.serviceAllowRecordServantsAttendance;
    if (l$serviceAllowRecordServantsAttendance !=
        lOther$serviceAllowRecordServantsAttendance) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
      return false;
    }
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final lOther$serviceWriteRelatedFamilies =
        other.serviceWriteRelatedFamilies;
    if (l$serviceWriteRelatedFamilies != lOther$serviceWriteRelatedFamilies) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupAllowExport = groupAllowExport;
    final lOther$groupAllowExport = other.groupAllowExport;
    if (l$groupAllowExport != lOther$groupAllowExport) {
      return false;
    }
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final lOther$groupAllowRecordAttendance = other.groupAllowRecordAttendance;
    if (l$groupAllowRecordAttendance != lOther$groupAllowRecordAttendance) {
      return false;
    }
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final lOther$groupAllowRecordServantsAttendance =
        other.groupAllowRecordServantsAttendance;
    if (l$groupAllowRecordServantsAttendance !=
        lOther$groupAllowRecordServantsAttendance) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
      return false;
    }
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final lOther$groupWriteRelatedFamilies = other.groupWriteRelatedFamilies;
    if (l$groupWriteRelatedFamilies != lOther$groupWriteRelatedFamilies) {
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

extension UtilityExtension_Query_user_user_scopeGrants
    on Query_user_user_scopeGrants {
  CopyWith_Query_user_user_scopeGrants<Query_user_user_scopeGrants>
  get copyWith => CopyWith_Query_user_user_scopeGrants(this, (i) => i);
}

abstract class CopyWith_Query_user_user_scopeGrants<TRes> {
  factory CopyWith_Query_user_user_scopeGrants(
    Query_user_user_scopeGrants instance,
    TRes Function(Query_user_user_scopeGrants) then,
  ) = _CopyWithImpl_Query_user_user_scopeGrants;

  factory CopyWith_Query_user_user_scopeGrants.stub(TRes res) =
      _CopyWithStubImpl_Query_user_user_scopeGrants;

  TRes call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Query_user_user_scopeGrants_service? service,
    Fragment_StudyYear? studyYear,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    Fragment_UserScopeGroup? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Query_user_user_scopeGrants_service<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_UserScopeGroup<TRes> get group;
}

class _CopyWithImpl_Query_user_user_scopeGrants<TRes>
    implements CopyWith_Query_user_user_scopeGrants<TRes> {
  _CopyWithImpl_Query_user_user_scopeGrants(this._instance, this._then);

  final Query_user_user_scopeGrants _instance;

  final TRes Function(Query_user_user_scopeGrants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowExport = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? group = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_user_user_scopeGrants(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      areaAllowExport: areaAllowExport == _undefined
          ? _instance.areaAllowExport
          : (areaAllowExport as bool?),
      areaAllowEdit: areaAllowEdit == _undefined
          ? _instance.areaAllowEdit
          : (areaAllowEdit as bool?),
      areaAdminOnUsers: areaAdminOnUsers == _undefined
          ? _instance.areaAdminOnUsers
          : (areaAdminOnUsers as bool?),
      service: service == _undefined
          ? _instance.service
          : (service as Query_user_user_scopeGrants_service?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceAllowExport: serviceAllowExport == _undefined
          ? _instance.serviceAllowExport
          : (serviceAllowExport as bool?),
      serviceAllowEdit: serviceAllowEdit == _undefined
          ? _instance.serviceAllowEdit
          : (serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: serviceAllowRecordAttendance == _undefined
          ? _instance.serviceAllowRecordAttendance
          : (serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          serviceAllowRecordServantsAttendance == _undefined
          ? _instance.serviceAllowRecordServantsAttendance
          : (serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: serviceAdminOnUsers == _undefined
          ? _instance.serviceAdminOnUsers
          : (serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies:
          serviceWriteRelatedFamilies == _undefined ||
              serviceWriteRelatedFamilies == null
          ? _instance.serviceWriteRelatedFamilies
          : (serviceWriteRelatedFamilies as bool),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_UserScopeGroup?),
      groupAllowExport: groupAllowExport == _undefined
          ? _instance.groupAllowExport
          : (groupAllowExport as bool?),
      groupAllowEdit: groupAllowEdit == _undefined
          ? _instance.groupAllowEdit
          : (groupAllowEdit as bool?),
      groupAllowRecordAttendance: groupAllowRecordAttendance == _undefined
          ? _instance.groupAllowRecordAttendance
          : (groupAllowRecordAttendance as bool?),
      groupAllowRecordServantsAttendance:
          groupAllowRecordServantsAttendance == _undefined
          ? _instance.groupAllowRecordServantsAttendance
          : (groupAllowRecordServantsAttendance as bool?),
      groupAdminOnUsers: groupAdminOnUsers == _undefined
          ? _instance.groupAdminOnUsers
          : (groupAdminOnUsers as bool?),
      groupWriteRelatedFamilies:
          groupWriteRelatedFamilies == _undefined ||
              groupWriteRelatedFamilies == null
          ? _instance.groupWriteRelatedFamilies
          : (groupWriteRelatedFamilies as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Query_user_user_scopeGrants_service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Query_user_user_scopeGrants_service.stub(_then(_instance))
        : CopyWith_Query_user_user_scopeGrants_service(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Fragment_UserScopeGroup<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_UserScopeGroup.stub(_then(_instance))
        : CopyWith_Fragment_UserScopeGroup(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Query_user_user_scopeGrants<TRes>
    implements CopyWith_Query_user_user_scopeGrants<TRes> {
  _CopyWithStubImpl_Query_user_user_scopeGrants(this._res);

  TRes _res;

  call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Query_user_user_scopeGrants_service? service,
    Fragment_StudyYear? studyYear,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    Fragment_UserScopeGroup? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Query_user_user_scopeGrants_service<TRes> get service =>
      CopyWith_Query_user_user_scopeGrants_service.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_UserScopeGroup<TRes> get group =>
      CopyWith_Fragment_UserScopeGroup.stub(_res);
}

class Query_user_user_scopeGrants_service
    implements
        Fragment_UserDetails_scopeGrants_service,
        Fragment_UserAdminOn_scopeGrants_service,
        Fragment_UserScopeService {
  Query_user_user_scopeGrants_service({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'Service',
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Query_user_user_scopeGrants_service.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Query_user_user_scopeGrants_service(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_user_user_scopeGrants_service ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_user_user_scopeGrants_service
    on Query_user_user_scopeGrants_service {
  CopyWith_Query_user_user_scopeGrants_service<
    Query_user_user_scopeGrants_service
  >
  get copyWith => CopyWith_Query_user_user_scopeGrants_service(this, (i) => i);
}

abstract class CopyWith_Query_user_user_scopeGrants_service<TRes> {
  factory CopyWith_Query_user_user_scopeGrants_service(
    Query_user_user_scopeGrants_service instance,
    TRes Function(Query_user_user_scopeGrants_service) then,
  ) = _CopyWithImpl_Query_user_user_scopeGrants_service;

  factory CopyWith_Query_user_user_scopeGrants_service.stub(TRes res) =
      _CopyWithStubImpl_Query_user_user_scopeGrants_service;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
}

class _CopyWithImpl_Query_user_user_scopeGrants_service<TRes>
    implements CopyWith_Query_user_user_scopeGrants_service<TRes> {
  _CopyWithImpl_Query_user_user_scopeGrants_service(this._instance, this._then);

  final Query_user_user_scopeGrants_service _instance;

  final TRes Function(Query_user_user_scopeGrants_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Query_user_user_scopeGrants_service(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }
}

class _CopyWithStubImpl_Query_user_user_scopeGrants_service<TRes>
    implements CopyWith_Query_user_user_scopeGrants_service<TRes> {
  _CopyWithStubImpl_Query_user_user_scopeGrants_service(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);
}
