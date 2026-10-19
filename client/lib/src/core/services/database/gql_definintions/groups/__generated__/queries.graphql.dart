import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_groups {
  factory Variables_Query_groups({
    Input_GroupFilterInput? filter,
    List<Input_GroupSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_groups._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_groups._(this._$data);

  factory Variables_Query_groups.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_GroupFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_GroupSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_groups._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupFilterInput? get filter =>
      (_$data['filter'] as Input_GroupFilterInput?);

  List<Input_GroupSortInput?>? get sort =>
      (_$data['sort'] as List<Input_GroupSortInput?>?);

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

  CopyWith_Variables_Query_groups<Variables_Query_groups> get copyWith =>
      CopyWith_Variables_Query_groups(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_groups || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_groups<TRes> {
  factory CopyWith_Variables_Query_groups(
    Variables_Query_groups instance,
    TRes Function(Variables_Query_groups) then,
  ) = _CopyWithImpl_Variables_Query_groups;

  factory CopyWith_Variables_Query_groups.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_groups;

  TRes call({
    Input_GroupFilterInput? filter,
    List<Input_GroupSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_groups<TRes>
    implements CopyWith_Variables_Query_groups<TRes> {
  _CopyWithImpl_Variables_Query_groups(this._instance, this._then);

  final Variables_Query_groups _instance;

  final TRes Function(Variables_Query_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_groups._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_GroupFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_GroupSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_groups<TRes>
    implements CopyWith_Variables_Query_groups<TRes> {
  _CopyWithStubImpl_Variables_Query_groups(this._res);

  TRes _res;

  call({
    Input_GroupFilterInput? filter,
    List<Input_GroupSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_groups {
  Query_groups({this.groups, this.$__typename = 'RootQueryType'});

  factory Query_groups.fromJson(Map<String, dynamic> json) {
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query_groups(
      groups: l$groups == null
          ? null
          : Query_groups_groups.fromJson((l$groups as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_groups_groups? groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groups = groups;
    _resultData['groups'] = l$groups?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([l$groups, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_groups || runtimeType != other.runtimeType) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != lOther$groups) {
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

extension UtilityExtension_Query_groups on Query_groups {
  CopyWith_Query_groups<Query_groups> get copyWith =>
      CopyWith_Query_groups(this, (i) => i);
}

abstract class CopyWith_Query_groups<TRes> {
  factory CopyWith_Query_groups(
    Query_groups instance,
    TRes Function(Query_groups) then,
  ) = _CopyWithImpl_Query_groups;

  factory CopyWith_Query_groups.stub(TRes res) = _CopyWithStubImpl_Query_groups;

  TRes call({Query_groups_groups? groups, String? $__typename});
  CopyWith_Query_groups_groups<TRes> get groups;
}

class _CopyWithImpl_Query_groups<TRes> implements CopyWith_Query_groups<TRes> {
  _CopyWithImpl_Query_groups(this._instance, this._then);

  final Query_groups _instance;

  final TRes Function(Query_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groups = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_groups(
          groups: groups == _undefined
              ? _instance.groups
              : (groups as Query_groups_groups?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_groups_groups<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Query_groups_groups.stub(_then(_instance))
        : CopyWith_Query_groups_groups(local$groups, (e) => call(groups: e));
  }
}

class _CopyWithStubImpl_Query_groups<TRes>
    implements CopyWith_Query_groups<TRes> {
  _CopyWithStubImpl_Query_groups(this._res);

  TRes _res;

  call({Query_groups_groups? groups, String? $__typename}) => _res;

  CopyWith_Query_groups_groups<TRes> get groups =>
      CopyWith_Query_groups_groups.stub(_res);
}

const documentNodeQuerygroups = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'groups'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'GroupFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'GroupSortInput'),
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
            name: NameNode(value: 'groups'),
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
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Query_groups_groups {
  Query_groups_groups({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfGroup',
  });

  factory Query_groups_groups.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_groups_groups(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Group>? results;

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
    if (other is! Query_groups_groups || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_groups_groups on Query_groups_groups {
  CopyWith_Query_groups_groups<Query_groups_groups> get copyWith =>
      CopyWith_Query_groups_groups(this, (i) => i);
}

abstract class CopyWith_Query_groups_groups<TRes> {
  factory CopyWith_Query_groups_groups(
    Query_groups_groups instance,
    TRes Function(Query_groups_groups) then,
  ) = _CopyWithImpl_Query_groups_groups;

  factory CopyWith_Query_groups_groups.stub(TRes res) =
      _CopyWithStubImpl_Query_groups_groups;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Group>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Group>? Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_groups_groups<TRes>
    implements CopyWith_Query_groups_groups<TRes> {
  _CopyWithImpl_Query_groups_groups(this._instance, this._then);

  final Query_groups_groups _instance;

  final TRes Function(Query_groups_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_groups_groups(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Group>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Group>? Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Group(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_groups_groups<TRes>
    implements CopyWith_Query_groups_groups<TRes> {
  _CopyWithStubImpl_Query_groups_groups(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Group>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_group {
  factory Variables_Query_group({required String id}) =>
      Variables_Query_group._({r'id': id});

  Variables_Query_group._(this._$data);

  factory Variables_Query_group.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_group._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_group<Variables_Query_group> get copyWith =>
      CopyWith_Variables_Query_group(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_group || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_group<TRes> {
  factory CopyWith_Variables_Query_group(
    Variables_Query_group instance,
    TRes Function(Variables_Query_group) then,
  ) = _CopyWithImpl_Variables_Query_group;

  factory CopyWith_Variables_Query_group.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_group;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_group<TRes>
    implements CopyWith_Variables_Query_group<TRes> {
  _CopyWithImpl_Variables_Query_group(this._instance, this._then);

  final Variables_Query_group _instance;

  final TRes Function(Variables_Query_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_group._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_group<TRes>
    implements CopyWith_Variables_Query_group<TRes> {
  _CopyWithStubImpl_Variables_Query_group(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_group {
  Query_group({this.group, this.$__typename = 'RootQueryType'});

  factory Query_group.fromJson(Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query_group(
      group: l$group == null
          ? null
          : Fragment_GroupDetails.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_GroupDetails? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([l$group, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_group || runtimeType != other.runtimeType) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
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

extension UtilityExtension_Query_group on Query_group {
  CopyWith_Query_group<Query_group> get copyWith =>
      CopyWith_Query_group(this, (i) => i);
}

abstract class CopyWith_Query_group<TRes> {
  factory CopyWith_Query_group(
    Query_group instance,
    TRes Function(Query_group) then,
  ) = _CopyWithImpl_Query_group;

  factory CopyWith_Query_group.stub(TRes res) = _CopyWithStubImpl_Query_group;

  TRes call({Fragment_GroupDetails? group, String? $__typename});
  CopyWith_Fragment_GroupDetails<TRes> get group;
}

class _CopyWithImpl_Query_group<TRes> implements CopyWith_Query_group<TRes> {
  _CopyWithImpl_Query_group(this._instance, this._then);

  final Query_group _instance;

  final TRes Function(Query_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? group = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_group(
          group: group == _undefined
              ? _instance.group
              : (group as Fragment_GroupDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_GroupDetails<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_GroupDetails.stub(_then(_instance))
        : CopyWith_Fragment_GroupDetails(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Query_group<TRes>
    implements CopyWith_Query_group<TRes> {
  _CopyWithStubImpl_Query_group(this._res);

  TRes _res;

  call({Fragment_GroupDetails? group, String? $__typename}) => _res;

  CopyWith_Fragment_GroupDetails<TRes> get group =>
      CopyWith_Fragment_GroupDetails.stub(_res);
}

const documentNodeQuerygroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'group'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'group'),
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
                  name: NameNode(value: 'GroupDetails'),
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
    fragmentDefinitionGroupDetails,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
  ],
);
