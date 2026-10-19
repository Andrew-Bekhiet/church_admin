import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../classes/__generated__/fragments.graphql.dart';
import '../../groups/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_services {
  factory Variables_Query_services({
    Input_ServiceFilterInput? filter,
    List<Input_ServiceSortInput?>? sort,
    int? first,
    String? after,
    Input_ClassFilterInput? classesFilter,
    List<Input_ClassSortInput?>? classesSort,
    Input_GroupFilterInput? groupsFilter,
  }) => Variables_Query_services._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
    if (classesFilter != null) r'classesFilter': classesFilter,
    if (classesSort != null) r'classesSort': classesSort,
    if (groupsFilter != null) r'groupsFilter': groupsFilter,
  });

  Variables_Query_services._(this._$data);

  factory Variables_Query_services.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ServiceFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_ServiceSortInput.fromJson((e as Map<String, dynamic>)),
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
    if (data.containsKey('classesFilter')) {
      final l$classesFilter = data['classesFilter'];
      result$data['classesFilter'] = l$classesFilter == null
          ? null
          : Input_ClassFilterInput.fromJson(
              (l$classesFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classesSort')) {
      final l$classesSort = data['classesSort'];
      result$data['classesSort'] = (l$classesSort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_ClassSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('groupsFilter')) {
      final l$groupsFilter = data['groupsFilter'];
      result$data['groupsFilter'] = l$groupsFilter == null
          ? null
          : Input_GroupFilterInput.fromJson(
              (l$groupsFilter as Map<String, dynamic>),
            );
    }
    return Variables_Query_services._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ServiceFilterInput? get filter =>
      (_$data['filter'] as Input_ServiceFilterInput?);

  List<Input_ServiceSortInput?>? get sort =>
      (_$data['sort'] as List<Input_ServiceSortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Input_ClassFilterInput? get classesFilter =>
      (_$data['classesFilter'] as Input_ClassFilterInput?);

  List<Input_ClassSortInput?>? get classesSort =>
      (_$data['classesSort'] as List<Input_ClassSortInput?>?);

  Input_GroupFilterInput? get groupsFilter =>
      (_$data['groupsFilter'] as Input_GroupFilterInput?);

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
    if (_$data.containsKey('classesFilter')) {
      final l$classesFilter = classesFilter;
      result$data['classesFilter'] = l$classesFilter?.toJson();
    }
    if (_$data.containsKey('classesSort')) {
      final l$classesSort = classesSort;
      result$data['classesSort'] = l$classesSort
          ?.map((e) => e?.toJson())
          .toList();
    }
    if (_$data.containsKey('groupsFilter')) {
      final l$groupsFilter = groupsFilter;
      result$data['groupsFilter'] = l$groupsFilter?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Query_services<Variables_Query_services> get copyWith =>
      CopyWith_Variables_Query_services(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_services ||
        runtimeType != other.runtimeType) {
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
    final l$classesFilter = classesFilter;
    final lOther$classesFilter = other.classesFilter;
    if (_$data.containsKey('classesFilter') !=
        other._$data.containsKey('classesFilter')) {
      return false;
    }
    if (l$classesFilter != lOther$classesFilter) {
      return false;
    }
    final l$classesSort = classesSort;
    final lOther$classesSort = other.classesSort;
    if (_$data.containsKey('classesSort') !=
        other._$data.containsKey('classesSort')) {
      return false;
    }
    if (l$classesSort != null && lOther$classesSort != null) {
      if (l$classesSort.length != lOther$classesSort.length) {
        return false;
      }
      for (int i = 0; i < l$classesSort.length; i++) {
        final l$classesSort$entry = l$classesSort[i];
        final lOther$classesSort$entry = lOther$classesSort[i];
        if (l$classesSort$entry != lOther$classesSort$entry) {
          return false;
        }
      }
    } else if (l$classesSort != lOther$classesSort) {
      return false;
    }
    final l$groupsFilter = groupsFilter;
    final lOther$groupsFilter = other.groupsFilter;
    if (_$data.containsKey('groupsFilter') !=
        other._$data.containsKey('groupsFilter')) {
      return false;
    }
    if (l$groupsFilter != lOther$groupsFilter) {
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
    final l$classesFilter = classesFilter;
    final l$classesSort = classesSort;
    final l$groupsFilter = groupsFilter;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('classesFilter') ? l$classesFilter : const {},
      _$data.containsKey('classesSort')
          ? l$classesSort == null
                ? null
                : Object.hashAll(l$classesSort.map((v) => v))
          : const {},
      _$data.containsKey('groupsFilter') ? l$groupsFilter : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_services<TRes> {
  factory CopyWith_Variables_Query_services(
    Variables_Query_services instance,
    TRes Function(Variables_Query_services) then,
  ) = _CopyWithImpl_Variables_Query_services;

  factory CopyWith_Variables_Query_services.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_services;

  TRes call({
    Input_ServiceFilterInput? filter,
    List<Input_ServiceSortInput?>? sort,
    int? first,
    String? after,
    Input_ClassFilterInput? classesFilter,
    List<Input_ClassSortInput?>? classesSort,
    Input_GroupFilterInput? groupsFilter,
  });
}

class _CopyWithImpl_Variables_Query_services<TRes>
    implements CopyWith_Variables_Query_services<TRes> {
  _CopyWithImpl_Variables_Query_services(this._instance, this._then);

  final Variables_Query_services _instance;

  final TRes Function(Variables_Query_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? classesFilter = _undefined,
    Object? classesSort = _undefined,
    Object? groupsFilter = _undefined,
  }) => _then(
    Variables_Query_services._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_ServiceFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_ServiceSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
      if (classesFilter != _undefined)
        'classesFilter': (classesFilter as Input_ClassFilterInput?),
      if (classesSort != _undefined)
        'classesSort': (classesSort as List<Input_ClassSortInput?>?),
      if (groupsFilter != _undefined)
        'groupsFilter': (groupsFilter as Input_GroupFilterInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_services<TRes>
    implements CopyWith_Variables_Query_services<TRes> {
  _CopyWithStubImpl_Variables_Query_services(this._res);

  TRes _res;

  call({
    Input_ServiceFilterInput? filter,
    List<Input_ServiceSortInput?>? sort,
    int? first,
    String? after,
    Input_ClassFilterInput? classesFilter,
    List<Input_ClassSortInput?>? classesSort,
    Input_GroupFilterInput? groupsFilter,
  }) => _res;
}

class Query_services {
  Query_services({this.services, this.$__typename = 'RootQueryType'});

  factory Query_services.fromJson(Map<String, dynamic> json) {
    final l$services = json['services'];
    final l$$__typename = json['__typename'];
    return Query_services(
      services: l$services == null
          ? null
          : Query_services_services.fromJson(
              (l$services as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_services_services? services;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$services = services;
    _resultData['services'] = l$services?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$services = services;
    final l$$__typename = $__typename;
    return Object.hashAll([l$services, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_services || runtimeType != other.runtimeType) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services != lOther$services) {
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

extension UtilityExtension_Query_services on Query_services {
  CopyWith_Query_services<Query_services> get copyWith =>
      CopyWith_Query_services(this, (i) => i);
}

abstract class CopyWith_Query_services<TRes> {
  factory CopyWith_Query_services(
    Query_services instance,
    TRes Function(Query_services) then,
  ) = _CopyWithImpl_Query_services;

  factory CopyWith_Query_services.stub(TRes res) =
      _CopyWithStubImpl_Query_services;

  TRes call({Query_services_services? services, String? $__typename});
  CopyWith_Query_services_services<TRes> get services;
}

class _CopyWithImpl_Query_services<TRes>
    implements CopyWith_Query_services<TRes> {
  _CopyWithImpl_Query_services(this._instance, this._then);

  final Query_services _instance;

  final TRes Function(Query_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? services = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_services(
      services: services == _undefined
          ? _instance.services
          : (services as Query_services_services?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_services_services<TRes> get services {
    final local$services = _instance.services;
    return local$services == null
        ? CopyWith_Query_services_services.stub(_then(_instance))
        : CopyWith_Query_services_services(
            local$services,
            (e) => call(services: e),
          );
  }
}

class _CopyWithStubImpl_Query_services<TRes>
    implements CopyWith_Query_services<TRes> {
  _CopyWithStubImpl_Query_services(this._res);

  TRes _res;

  call({Query_services_services? services, String? $__typename}) => _res;

  CopyWith_Query_services_services<TRes> get services =>
      CopyWith_Query_services_services.stub(_res);
}

const documentNodeQueryservices = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'services'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ServiceFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ServiceSortInput'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'classesFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ClassFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'classesSort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ClassSortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupsFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'GroupFilterInput'),
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
            name: NameNode(value: 'services'),
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
                        name: NameNode(value: 'ServiceWithStudyYears'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'classes'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'filter'),
                            value: VariableNode(
                              name: NameNode(value: 'classesFilter'),
                            ),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'sort'),
                            value: VariableNode(
                              name: NameNode(value: 'classesSort'),
                            ),
                          ),
                        ],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'ClassWithStudyYears'),
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
                        name: NameNode(value: 'groups'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'filter'),
                            value: VariableNode(
                              name: NameNode(value: 'groupsFilter'),
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
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Query_services_services {
  Query_services_services({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfService',
  });

  factory Query_services_services.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_services_services(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_services_services_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_services_services_results>? results;

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
    if (other is! Query_services_services || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_services_services on Query_services_services {
  CopyWith_Query_services_services<Query_services_services> get copyWith =>
      CopyWith_Query_services_services(this, (i) => i);
}

abstract class CopyWith_Query_services_services<TRes> {
  factory CopyWith_Query_services_services(
    Query_services_services instance,
    TRes Function(Query_services_services) then,
  ) = _CopyWithImpl_Query_services_services;

  factory CopyWith_Query_services_services.stub(TRes res) =
      _CopyWithStubImpl_Query_services_services;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_services_services_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_services_services_results>? Function(
      Iterable<
        CopyWith_Query_services_services_results<
          Query_services_services_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_services_services<TRes>
    implements CopyWith_Query_services_services<TRes> {
  _CopyWithImpl_Query_services_services(this._instance, this._then);

  final Query_services_services _instance;

  final TRes Function(Query_services_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_services_services(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_services_services_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_services_services_results>? Function(
      Iterable<
        CopyWith_Query_services_services_results<
          Query_services_services_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_services_services_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_services_services<TRes>
    implements CopyWith_Query_services_services<TRes> {
  _CopyWithStubImpl_Query_services_services(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_services_services_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_services_services_results
    implements
        Fragment_ServiceWithStudyYears,
        Fragment_Service,
        Fragment_ServiceNoPhoto {
  Query_services_services_results({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Service',
    this.photoUpdatedAt,
    this.blurhash,
    this.studyYearFromId,
    this.studyYearToId,
    this.studyYearFrom,
    this.studyYearTo,
    required this.classes,
    required this.groups,
  });

  factory Query_services_services_results.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$studyYearFromId = json['studyYearFromId'];
    final l$studyYearToId = json['studyYearToId'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    return Query_services_services_results(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      studyYearFromId: (l$studyYearFromId as int?),
      studyYearToId: (l$studyYearToId as int?),
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
      classes: (l$classes as List<dynamic>)
          .map(
            (e) => Fragment_ClassWithStudyYears.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment_Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final int? studyYearFromId;

  final int? studyYearToId;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  final List<Fragment_ClassWithStudyYears> classes;

  final List<Fragment_Group> groups;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$studyYearFromId = studyYearFromId;
    _resultData['studyYearFromId'] = l$studyYearFromId;
    final l$studyYearToId = studyYearToId;
    _resultData['studyYearToId'] = l$studyYearToId;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
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
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearToId = studyYearToId;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$classes = classes;
    final l$groups = groups;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$studyYearFromId,
      l$studyYearToId,
      l$studyYearFrom,
      l$studyYearTo,
      Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_services_services_results ||
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
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (l$studyYearToId != lOther$studyYearToId) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
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

extension UtilityExtension_Query_services_services_results
    on Query_services_services_results {
  CopyWith_Query_services_services_results<Query_services_services_results>
  get copyWith => CopyWith_Query_services_services_results(this, (i) => i);
}

abstract class CopyWith_Query_services_services_results<TRes> {
  factory CopyWith_Query_services_services_results(
    Query_services_services_results instance,
    TRes Function(Query_services_services_results) then,
  ) = _CopyWithImpl_Query_services_services_results;

  factory CopyWith_Query_services_services_results.stub(TRes res) =
      _CopyWithStubImpl_Query_services_services_results;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    int? studyYearFromId,
    int? studyYearToId,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
    List<Fragment_ClassWithStudyYears>? classes,
    List<Fragment_Group>? groups,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
  TRes classes(
    Iterable<Fragment_ClassWithStudyYears> Function(
      Iterable<
        CopyWith_Fragment_ClassWithStudyYears<Fragment_ClassWithStudyYears>
      >,
    )
    _fn,
  );
  TRes groups(
    Iterable<Fragment_Group> Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_services_services_results<TRes>
    implements CopyWith_Query_services_services_results<TRes> {
  _CopyWithImpl_Query_services_services_results(this._instance, this._then);

  final Query_services_services_results _instance;

  final TRes Function(Query_services_services_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearToId = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
  }) => _then(
    Query_services_services_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      studyYearFromId: studyYearFromId == _undefined
          ? _instance.studyYearFromId
          : (studyYearFromId as int?),
      studyYearToId: studyYearToId == _undefined
          ? _instance.studyYearToId
          : (studyYearToId as int?),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Fragment_ClassWithStudyYears>),
      groups: groups == _undefined || groups == null
          ? _instance.groups
          : (groups as List<Fragment_Group>),
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

  TRes classes(
    Iterable<Fragment_ClassWithStudyYears> Function(
      Iterable<
        CopyWith_Fragment_ClassWithStudyYears<Fragment_ClassWithStudyYears>
      >,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map(
        (e) => CopyWith_Fragment_ClassWithStudyYears(e, (i) => i),
      ),
    ).toList(),
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

class _CopyWithStubImpl_Query_services_services_results<TRes>
    implements CopyWith_Query_services_services_results<TRes> {
  _CopyWithStubImpl_Query_services_services_results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    int? studyYearFromId,
    int? studyYearToId,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
    List<Fragment_ClassWithStudyYears>? classes,
    List<Fragment_Group>? groups,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);

  classes(_fn) => _res;

  groups(_fn) => _res;
}

class Variables_Query_service {
  factory Variables_Query_service({required String id}) =>
      Variables_Query_service._({r'id': id});

  Variables_Query_service._(this._$data);

  factory Variables_Query_service.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_service._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_service<Variables_Query_service> get copyWith =>
      CopyWith_Variables_Query_service(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_service || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_service<TRes> {
  factory CopyWith_Variables_Query_service(
    Variables_Query_service instance,
    TRes Function(Variables_Query_service) then,
  ) = _CopyWithImpl_Variables_Query_service;

  factory CopyWith_Variables_Query_service.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_service;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_service<TRes>
    implements CopyWith_Variables_Query_service<TRes> {
  _CopyWithImpl_Variables_Query_service(this._instance, this._then);

  final Variables_Query_service _instance;

  final TRes Function(Variables_Query_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_service._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_service<TRes>
    implements CopyWith_Variables_Query_service<TRes> {
  _CopyWithStubImpl_Variables_Query_service(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_service {
  Query_service({this.service, this.$__typename = 'RootQueryType'});

  factory Query_service.fromJson(Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query_service(
      service: l$service == null
          ? null
          : Fragment_ServiceDetails.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ServiceDetails? service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([l$service, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_service || runtimeType != other.runtimeType) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Query_service on Query_service {
  CopyWith_Query_service<Query_service> get copyWith =>
      CopyWith_Query_service(this, (i) => i);
}

abstract class CopyWith_Query_service<TRes> {
  factory CopyWith_Query_service(
    Query_service instance,
    TRes Function(Query_service) then,
  ) = _CopyWithImpl_Query_service;

  factory CopyWith_Query_service.stub(TRes res) =
      _CopyWithStubImpl_Query_service;

  TRes call({Fragment_ServiceDetails? service, String? $__typename});
  CopyWith_Fragment_ServiceDetails<TRes> get service;
}

class _CopyWithImpl_Query_service<TRes>
    implements CopyWith_Query_service<TRes> {
  _CopyWithImpl_Query_service(this._instance, this._then);

  final Query_service _instance;

  final TRes Function(Query_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? service = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_service(
          service: service == _undefined
              ? _instance.service
              : (service as Fragment_ServiceDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ServiceDetails<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceDetails.stub(_then(_instance))
        : CopyWith_Fragment_ServiceDetails(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Query_service<TRes>
    implements CopyWith_Query_service<TRes> {
  _CopyWithStubImpl_Query_service(this._res);

  TRes _res;

  call({Fragment_ServiceDetails? service, String? $__typename}) => _res;

  CopyWith_Fragment_ServiceDetails<TRes> get service =>
      CopyWith_Fragment_ServiceDetails.stub(_res);
}

const documentNodeQueryservice = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'service'),
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
            name: NameNode(value: 'service'),
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
                  name: NameNode(value: 'ServiceDetails'),
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
    fragmentDefinitionServiceDetails,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);
