import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.graphql.dart';
import '../../classes/__generated__/fragments.graphql.dart';
import '../../contacts/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../groups/__generated__/fragments.graphql.dart';
import '../../metadata/churches/__generated__/fragments.graphql.dart';
import '../../metadata/colleges/__generated__/fragments.graphql.dart';
import '../../metadata/districts/__generated__/fragments.graphql.dart';
import '../../metadata/fathers/__generated__/fragments.graphql.dart';
import '../../metadata/hobbies/__generated__/fragments.graphql.dart';
import '../../metadata/jobs/__generated__/fragments.graphql.dart';
import '../../metadata/person_states/__generated__/fragments.graphql.dart';
import '../../metadata/person_types/__generated__/fragments.graphql.dart';
import '../../metadata/qualifications/__generated__/fragments.graphql.dart';
import '../../metadata/schools/__generated__/fragments.graphql.dart';
import '../../metadata/shammas_levels/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../metadata/tags/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import '../../stores/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_persons {
  factory Variables_Query_persons({
    Input_PersonFilterInput? filter,
    List<Input_PersonSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_persons._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_persons._(this._$data);

  factory Variables_Query_persons.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_PersonFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_PersonSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_persons._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonFilterInput? get filter =>
      (_$data['filter'] as Input_PersonFilterInput?);

  List<Input_PersonSortInput?>? get sort =>
      (_$data['sort'] as List<Input_PersonSortInput?>?);

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

  CopyWith_Variables_Query_persons<Variables_Query_persons> get copyWith =>
      CopyWith_Variables_Query_persons(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_persons || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_persons<TRes> {
  factory CopyWith_Variables_Query_persons(
    Variables_Query_persons instance,
    TRes Function(Variables_Query_persons) then,
  ) = _CopyWithImpl_Variables_Query_persons;

  factory CopyWith_Variables_Query_persons.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_persons;

  TRes call({
    Input_PersonFilterInput? filter,
    List<Input_PersonSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_persons<TRes>
    implements CopyWith_Variables_Query_persons<TRes> {
  _CopyWithImpl_Variables_Query_persons(this._instance, this._then);

  final Variables_Query_persons _instance;

  final TRes Function(Variables_Query_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_persons._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_PersonFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_PersonSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_persons<TRes>
    implements CopyWith_Variables_Query_persons<TRes> {
  _CopyWithStubImpl_Variables_Query_persons(this._res);

  TRes _res;

  call({
    Input_PersonFilterInput? filter,
    List<Input_PersonSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_persons {
  Query_persons({this.persons, this.$__typename = 'RootQueryType'});

  factory Query_persons.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query_persons(
      persons: l$persons == null
          ? null
          : Query_persons_persons.fromJson((l$persons as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_persons_persons? persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([l$persons, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_persons || runtimeType != other.runtimeType) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons != lOther$persons) {
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

extension UtilityExtension_Query_persons on Query_persons {
  CopyWith_Query_persons<Query_persons> get copyWith =>
      CopyWith_Query_persons(this, (i) => i);
}

abstract class CopyWith_Query_persons<TRes> {
  factory CopyWith_Query_persons(
    Query_persons instance,
    TRes Function(Query_persons) then,
  ) = _CopyWithImpl_Query_persons;

  factory CopyWith_Query_persons.stub(TRes res) =
      _CopyWithStubImpl_Query_persons;

  TRes call({Query_persons_persons? persons, String? $__typename});
  CopyWith_Query_persons_persons<TRes> get persons;
}

class _CopyWithImpl_Query_persons<TRes>
    implements CopyWith_Query_persons<TRes> {
  _CopyWithImpl_Query_persons(this._instance, this._then);

  final Query_persons _instance;

  final TRes Function(Query_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? persons = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_persons(
          persons: persons == _undefined
              ? _instance.persons
              : (persons as Query_persons_persons?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_persons_persons<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Query_persons_persons.stub(_then(_instance))
        : CopyWith_Query_persons_persons(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Query_persons<TRes>
    implements CopyWith_Query_persons<TRes> {
  _CopyWithStubImpl_Query_persons(this._res);

  TRes _res;

  call({Query_persons_persons? persons, String? $__typename}) => _res;

  CopyWith_Query_persons_persons<TRes> get persons =>
      CopyWith_Query_persons_persons.stub(_res);
}

const documentNodeQuerypersons = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'persons'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'PersonFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'PersonSortInput'),
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
            name: NameNode(value: 'persons'),
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
                        name: NameNode(value: 'Person'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionDataCheck,
  ],
);

class Query_persons_persons {
  Query_persons_persons({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfPerson',
  });

  factory Query_persons_persons.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_persons_persons(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Person.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Person>? results;

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
    if (other is! Query_persons_persons || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_persons_persons on Query_persons_persons {
  CopyWith_Query_persons_persons<Query_persons_persons> get copyWith =>
      CopyWith_Query_persons_persons(this, (i) => i);
}

abstract class CopyWith_Query_persons_persons<TRes> {
  factory CopyWith_Query_persons_persons(
    Query_persons_persons instance,
    TRes Function(Query_persons_persons) then,
  ) = _CopyWithImpl_Query_persons_persons;

  factory CopyWith_Query_persons_persons.stub(TRes res) =
      _CopyWithStubImpl_Query_persons_persons;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Person>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Person>? Function(
      Iterable<CopyWith_Fragment_Person<Fragment_Person>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_persons_persons<TRes>
    implements CopyWith_Query_persons_persons<TRes> {
  _CopyWithImpl_Query_persons_persons(this._instance, this._then);

  final Query_persons_persons _instance;

  final TRes Function(Query_persons_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_persons_persons(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Person>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Person>? Function(
      Iterable<CopyWith_Fragment_Person<Fragment_Person>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Person(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_persons_persons<TRes>
    implements CopyWith_Query_persons_persons<TRes> {
  _CopyWithStubImpl_Query_persons_persons(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Person>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_person {
  factory Variables_Query_person({
    required String id,
    Input_FamilyContactFilterInput? familyContactsFilter,
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  }) => Variables_Query_person._({
    r'id': id,
    if (familyContactsFilter != null)
      r'familyContactsFilter': familyContactsFilter,
    if (classesLimit != null) r'classesLimit': classesLimit,
    if (groupsLimit != null) r'groupsLimit': groupsLimit,
    if (servicesLimit != null) r'servicesLimit': servicesLimit,
  });

  Variables_Query_person._(this._$data);

  factory Variables_Query_person.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('familyContactsFilter')) {
      final l$familyContactsFilter = data['familyContactsFilter'];
      result$data['familyContactsFilter'] = l$familyContactsFilter == null
          ? null
          : Input_FamilyContactFilterInput.fromJson(
              (l$familyContactsFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classesLimit')) {
      final l$classesLimit = data['classesLimit'];
      result$data['classesLimit'] = (l$classesLimit as int?);
    }
    if (data.containsKey('groupsLimit')) {
      final l$groupsLimit = data['groupsLimit'];
      result$data['groupsLimit'] = (l$groupsLimit as int?);
    }
    if (data.containsKey('servicesLimit')) {
      final l$servicesLimit = data['servicesLimit'];
      result$data['servicesLimit'] = (l$servicesLimit as int?);
    }
    return Variables_Query_person._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_FamilyContactFilterInput? get familyContactsFilter =>
      (_$data['familyContactsFilter'] as Input_FamilyContactFilterInput?);

  int? get classesLimit => (_$data['classesLimit'] as int?);

  int? get groupsLimit => (_$data['groupsLimit'] as int?);

  int? get servicesLimit => (_$data['servicesLimit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('familyContactsFilter')) {
      final l$familyContactsFilter = familyContactsFilter;
      result$data['familyContactsFilter'] = l$familyContactsFilter?.toJson();
    }
    if (_$data.containsKey('classesLimit')) {
      final l$classesLimit = classesLimit;
      result$data['classesLimit'] = l$classesLimit;
    }
    if (_$data.containsKey('groupsLimit')) {
      final l$groupsLimit = groupsLimit;
      result$data['groupsLimit'] = l$groupsLimit;
    }
    if (_$data.containsKey('servicesLimit')) {
      final l$servicesLimit = servicesLimit;
      result$data['servicesLimit'] = l$servicesLimit;
    }
    return result$data;
  }

  CopyWith_Variables_Query_person<Variables_Query_person> get copyWith =>
      CopyWith_Variables_Query_person(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_person || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$familyContactsFilter = familyContactsFilter;
    final lOther$familyContactsFilter = other.familyContactsFilter;
    if (_$data.containsKey('familyContactsFilter') !=
        other._$data.containsKey('familyContactsFilter')) {
      return false;
    }
    if (l$familyContactsFilter != lOther$familyContactsFilter) {
      return false;
    }
    final l$classesLimit = classesLimit;
    final lOther$classesLimit = other.classesLimit;
    if (_$data.containsKey('classesLimit') !=
        other._$data.containsKey('classesLimit')) {
      return false;
    }
    if (l$classesLimit != lOther$classesLimit) {
      return false;
    }
    final l$groupsLimit = groupsLimit;
    final lOther$groupsLimit = other.groupsLimit;
    if (_$data.containsKey('groupsLimit') !=
        other._$data.containsKey('groupsLimit')) {
      return false;
    }
    if (l$groupsLimit != lOther$groupsLimit) {
      return false;
    }
    final l$servicesLimit = servicesLimit;
    final lOther$servicesLimit = other.servicesLimit;
    if (_$data.containsKey('servicesLimit') !=
        other._$data.containsKey('servicesLimit')) {
      return false;
    }
    if (l$servicesLimit != lOther$servicesLimit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$familyContactsFilter = familyContactsFilter;
    final l$classesLimit = classesLimit;
    final l$groupsLimit = groupsLimit;
    final l$servicesLimit = servicesLimit;
    return Object.hashAll([
      l$id,
      _$data.containsKey('familyContactsFilter')
          ? l$familyContactsFilter
          : const {},
      _$data.containsKey('classesLimit') ? l$classesLimit : const {},
      _$data.containsKey('groupsLimit') ? l$groupsLimit : const {},
      _$data.containsKey('servicesLimit') ? l$servicesLimit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_person<TRes> {
  factory CopyWith_Variables_Query_person(
    Variables_Query_person instance,
    TRes Function(Variables_Query_person) then,
  ) = _CopyWithImpl_Variables_Query_person;

  factory CopyWith_Variables_Query_person.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_person;

  TRes call({
    String? id,
    Input_FamilyContactFilterInput? familyContactsFilter,
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  });
}

class _CopyWithImpl_Variables_Query_person<TRes>
    implements CopyWith_Variables_Query_person<TRes> {
  _CopyWithImpl_Variables_Query_person(this._instance, this._then);

  final Variables_Query_person _instance;

  final TRes Function(Variables_Query_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? familyContactsFilter = _undefined,
    Object? classesLimit = _undefined,
    Object? groupsLimit = _undefined,
    Object? servicesLimit = _undefined,
  }) => _then(
    Variables_Query_person._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (familyContactsFilter != _undefined)
        'familyContactsFilter':
            (familyContactsFilter as Input_FamilyContactFilterInput?),
      if (classesLimit != _undefined) 'classesLimit': (classesLimit as int?),
      if (groupsLimit != _undefined) 'groupsLimit': (groupsLimit as int?),
      if (servicesLimit != _undefined) 'servicesLimit': (servicesLimit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_person<TRes>
    implements CopyWith_Variables_Query_person<TRes> {
  _CopyWithStubImpl_Variables_Query_person(this._res);

  TRes _res;

  call({
    String? id,
    Input_FamilyContactFilterInput? familyContactsFilter,
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  }) => _res;
}

class Query_person {
  Query_person({this.person, this.$__typename = 'RootQueryType'});

  factory Query_person.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query_person(
      person: l$person == null
          ? null
          : Query_person_person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_person_person? person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([l$person, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_person || runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Query_person on Query_person {
  CopyWith_Query_person<Query_person> get copyWith =>
      CopyWith_Query_person(this, (i) => i);
}

abstract class CopyWith_Query_person<TRes> {
  factory CopyWith_Query_person(
    Query_person instance,
    TRes Function(Query_person) then,
  ) = _CopyWithImpl_Query_person;

  factory CopyWith_Query_person.stub(TRes res) = _CopyWithStubImpl_Query_person;

  TRes call({Query_person_person? person, String? $__typename});
  CopyWith_Query_person_person<TRes> get person;
}

class _CopyWithImpl_Query_person<TRes> implements CopyWith_Query_person<TRes> {
  _CopyWithImpl_Query_person(this._instance, this._then);

  final Query_person _instance;

  final TRes Function(Query_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? person = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_person(
          person: person == _undefined
              ? _instance.person
              : (person as Query_person_person?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_person_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Query_person_person.stub(_then(_instance))
        : CopyWith_Query_person_person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Query_person<TRes>
    implements CopyWith_Query_person<TRes> {
  _CopyWithStubImpl_Query_person(this._res);

  TRes _res;

  call({Query_person_person? person, String? $__typename}) => _res;

  CopyWith_Query_person_person<TRes> get person =>
      CopyWith_Query_person_person.stub(_res);
}

const documentNodeQueryperson = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'person'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'familyContactsFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamilyContactFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'classesLimit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupsLimit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'servicesLimit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'person'),
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
                  name: NameNode(value: 'PersonDetails'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'familyContacts'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'filter'),
                      value: VariableNode(
                        name: NameNode(value: 'familyContactsFilter'),
                      ),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'sort'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'field'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'PERSON_TYPE_ORDER'),
                                ),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: 'order'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'ASC'),
                                ),
                              ),
                            ],
                          ),
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'field'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'IS_MAIN_PHONE'),
                                ),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: 'order'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'DESC'),
                                ),
                              ),
                            ],
                          ),
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'field'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'CREATED_AT'),
                                ),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: 'order'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'ASC'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'FamilyContact'),
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
    fragmentDefinitionPersonDetails,
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionDataCheck,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionDistrict,
    fragmentDefinitionStreet,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionChurch,
    fragmentDefinitionContact,
    fragmentDefinitionCollege,
    fragmentDefinitionPersonFamily,
    fragmentDefinitionFather,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionJob,
    fragmentDefinitionLatestCall,
    fragmentDefinitionUser,
    fragmentDefinitionLatestConfession,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionLatestKodas,
    fragmentDefinitionLatestVisit,
    fragmentDefinitionPersonType,
    fragmentDefinitionQualification,
    fragmentDefinitionSchool,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionShammasLevel,
    fragmentDefinitionPersonState,
    fragmentDefinitionHobby,
    fragmentDefinitionTag,
    fragmentDefinitionFamilyContact,
  ],
);

class Query_person_person
    implements Fragment_PersonDetails, Fragment_Person, Fragment_PersonNoPhoto {
  Query_person_person({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Person',
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.address,
    this.birthdate,
    required this.classMemberships,
    this.church,
    required this.contacts,
    this.college,
    this.family,
    this.father,
    required this.gender,
    required this.groupMemberships,
    required this.isServant,
    this.servingChurch,
    this.serviceType,
    required this.isShammas,
    this.workStatus,
    this.job,
    this.jobDescription,
    this.latestCall,
    this.latestConfession,
    this.latestEdit,
    this.latestKodas,
    this.latestVisit,
    this.notes,
    required this.martialStatus,
    this.personType,
    this.qualification,
    this.school,
    required this.serviceMemberships,
    this.shammasLevel,
    this.state,
    this.studyYear,
    required this.hobbies,
    required this.tags,
    this.uid,
    this.user,
    required this.familyContacts,
  });

  factory Query_person_person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$classMemberships = json['classMemberships'];
    final l$church = json['church'];
    final l$contacts = json['contacts'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$groupMemberships = json['groupMemberships'];
    final l$isServant = json['isServant'];
    final l$servingChurch = json['servingChurch'];
    final l$serviceType = json['serviceType'];
    final l$isShammas = json['isShammas'];
    final l$workStatus = json['workStatus'];
    final l$job = json['job'];
    final l$jobDescription = json['jobDescription'];
    final l$latestCall = json['latestCall'];
    final l$latestConfession = json['latestConfession'];
    final l$latestEdit = json['latestEdit'];
    final l$latestKodas = json['latestKodas'];
    final l$latestVisit = json['latestVisit'];
    final l$notes = json['notes'];
    final l$martialStatus = json['martialStatus'];
    final l$personType = json['personType'];
    final l$qualification = json['qualification'];
    final l$school = json['school'];
    final l$serviceMemberships = json['serviceMemberships'];
    final l$shammasLevel = json['shammasLevel'];
    final l$state = json['state'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    final l$familyContacts = json['familyContacts'];
    return Query_person_person(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      address: l$address == null
          ? null
          : Fragment_Address.fromJson((l$address as Map<String, dynamic>)),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      classMemberships: (l$classMemberships as List<dynamic>)
          .map(
            (e) => Query_person_person_classMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      church: l$church == null
          ? null
          : Fragment_Church.fromJson((l$church as Map<String, dynamic>)),
      contacts: (l$contacts as List<dynamic>)
          .map((e) => Fragment_Contact.fromJson((e as Map<String, dynamic>)))
          .toList(),
      college: l$college == null
          ? null
          : Fragment_College.fromJson((l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment_PersonFamily.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Query_person_person_father.fromJson(
              (l$father as Map<String, dynamic>),
            ),
      gender: (l$gender as bool),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map(
            (e) => Query_person_person_groupMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      isServant: (l$isServant as bool),
      servingChurch: l$servingChurch == null
          ? null
          : Fragment_Church.fromJson((l$servingChurch as Map<String, dynamic>)),
      serviceType: (l$serviceType as String?),
      isShammas: (l$isShammas as bool),
      workStatus: (l$workStatus as String?),
      job: l$job == null
          ? null
          : Fragment_Job.fromJson((l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      latestCall: l$latestCall == null
          ? null
          : Fragment_LatestCall.fromJson(
              (l$latestCall as Map<String, dynamic>),
            ),
      latestConfession: l$latestConfession == null
          ? null
          : Fragment_LatestConfession.fromJson(
              (l$latestConfession as Map<String, dynamic>),
            ),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_LatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      latestKodas: l$latestKodas == null
          ? null
          : Fragment_LatestKodas.fromJson(
              (l$latestKodas as Map<String, dynamic>),
            ),
      latestVisit: l$latestVisit == null
          ? null
          : Fragment_LatestVisit.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            ),
      notes: (l$notes as String?),
      martialStatus: (l$martialStatus as String),
      personType: l$personType == null
          ? null
          : Fragment_PersonType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      qualification: l$qualification == null
          ? null
          : Fragment_Qualification.fromJson(
              (l$qualification as Map<String, dynamic>),
            ),
      school: l$school == null
          ? null
          : Fragment_School.fromJson((l$school as Map<String, dynamic>)),
      serviceMemberships: (l$serviceMemberships as List<dynamic>)
          .map(
            (e) => Query_person_person_serviceMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment_ShammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>),
            ),
      state: l$state == null
          ? null
          : Fragment_PersonState.fromJson((l$state as Map<String, dynamic>)),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Fragment_Hobby.fromJson((e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Fragment_Tag.fromJson((e as Map<String, dynamic>)))
          .toList(),
      uid: (l$uid as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      familyContacts: (l$familyContacts as List<dynamic>)
          .map(
            (e) => Fragment_FamilyContact.fromJson((e as Map<String, dynamic>)),
          )
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

  final Fragment_DataCheck? dataCheck;

  final Fragment_Address? address;

  final DateTime? birthdate;

  final List<Query_person_person_classMemberships> classMemberships;

  final Fragment_Church? church;

  final List<Fragment_Contact> contacts;

  final Fragment_College? college;

  final Fragment_PersonFamily? family;

  final Query_person_person_father? father;

  final bool gender;

  final List<Query_person_person_groupMemberships> groupMemberships;

  final bool isServant;

  final Fragment_Church? servingChurch;

  final String? serviceType;

  final bool isShammas;

  final String? workStatus;

  final Fragment_Job? job;

  final String? jobDescription;

  final Fragment_LatestCall? latestCall;

  final Fragment_LatestConfession? latestConfession;

  final Fragment_LatestEdit? latestEdit;

  final Fragment_LatestKodas? latestKodas;

  final Fragment_LatestVisit? latestVisit;

  final String? notes;

  final String martialStatus;

  final Fragment_PersonType? personType;

  final Fragment_Qualification? qualification;

  final Fragment_School? school;

  final List<Query_person_person_serviceMemberships> serviceMemberships;

  final Fragment_ShammasLevel? shammasLevel;

  final Fragment_PersonState? state;

  final Fragment_StudyYear? studyYear;

  final List<Fragment_Hobby> hobbies;

  final List<Fragment_Tag> tags;

  final String? uid;

  final Fragment_User? user;

  final List<Fragment_FamilyContact> familyContacts;

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
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$birthdate = birthdate;
    _resultData['birthdate'] = l$birthdate == null
        ? null
        : dateToString(l$birthdate);
    final l$classMemberships = classMemberships;
    _resultData['classMemberships'] = l$classMemberships
        .map((e) => e.toJson())
        .toList();
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    final l$college = college;
    _resultData['college'] = l$college?.toJson();
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$father = father;
    _resultData['father'] = l$father?.toJson();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] = l$groupMemberships
        .map((e) => e.toJson())
        .toList();
    final l$isServant = isServant;
    _resultData['isServant'] = l$isServant;
    final l$servingChurch = servingChurch;
    _resultData['servingChurch'] = l$servingChurch?.toJson();
    final l$serviceType = serviceType;
    _resultData['serviceType'] = l$serviceType;
    final l$isShammas = isShammas;
    _resultData['isShammas'] = l$isShammas;
    final l$workStatus = workStatus;
    _resultData['workStatus'] = l$workStatus;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$jobDescription = jobDescription;
    _resultData['jobDescription'] = l$jobDescription;
    final l$latestCall = latestCall;
    _resultData['latestCall'] = l$latestCall?.toJson();
    final l$latestConfession = latestConfession;
    _resultData['latestConfession'] = l$latestConfession?.toJson();
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$latestKodas = latestKodas;
    _resultData['latestKodas'] = l$latestKodas?.toJson();
    final l$latestVisit = latestVisit;
    _resultData['latestVisit'] = l$latestVisit?.toJson();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$martialStatus = martialStatus;
    _resultData['martialStatus'] = l$martialStatus;
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
    final l$qualification = qualification;
    _resultData['qualification'] = l$qualification?.toJson();
    final l$school = school;
    _resultData['school'] = l$school?.toJson();
    final l$serviceMemberships = serviceMemberships;
    _resultData['serviceMemberships'] = l$serviceMemberships
        .map((e) => e.toJson())
        .toList();
    final l$shammasLevel = shammasLevel;
    _resultData['shammasLevel'] = l$shammasLevel?.toJson();
    final l$state = state;
    _resultData['state'] = l$state?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$hobbies = hobbies;
    _resultData['hobbies'] = l$hobbies.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$familyContacts = familyContacts;
    _resultData['familyContacts'] = l$familyContacts
        .map((e) => e.toJson())
        .toList();
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
    final l$dataCheck = dataCheck;
    final l$address = address;
    final l$birthdate = birthdate;
    final l$classMemberships = classMemberships;
    final l$church = church;
    final l$contacts = contacts;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$groupMemberships = groupMemberships;
    final l$isServant = isServant;
    final l$servingChurch = servingChurch;
    final l$serviceType = serviceType;
    final l$isShammas = isShammas;
    final l$workStatus = workStatus;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$latestCall = latestCall;
    final l$latestConfession = latestConfession;
    final l$latestEdit = latestEdit;
    final l$latestKodas = latestKodas;
    final l$latestVisit = latestVisit;
    final l$notes = notes;
    final l$martialStatus = martialStatus;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$serviceMemberships = serviceMemberships;
    final l$shammasLevel = shammasLevel;
    final l$state = state;
    final l$studyYear = studyYear;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    final l$familyContacts = familyContacts;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$address,
      l$birthdate,
      Object.hashAll(l$classMemberships.map((v) => v)),
      l$church,
      Object.hashAll(l$contacts.map((v) => v)),
      l$college,
      l$family,
      l$father,
      l$gender,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$isServant,
      l$servingChurch,
      l$serviceType,
      l$isShammas,
      l$workStatus,
      l$job,
      l$jobDescription,
      l$latestCall,
      l$latestConfession,
      l$latestEdit,
      l$latestKodas,
      l$latestVisit,
      l$notes,
      l$martialStatus,
      l$personType,
      l$qualification,
      l$school,
      Object.hashAll(l$serviceMemberships.map((v) => v)),
      l$shammasLevel,
      l$state,
      l$studyYear,
      Object.hashAll(l$hobbies.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$uid,
      l$user,
      Object.hashAll(l$familyContacts.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_person_person || runtimeType != other.runtimeType) {
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$classMemberships = classMemberships;
    final lOther$classMemberships = other.classMemberships;
    if (l$classMemberships.length != lOther$classMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$classMemberships.length; i++) {
      final l$classMemberships$entry = l$classMemberships[i];
      final lOther$classMemberships$entry = lOther$classMemberships[i];
      if (l$classMemberships$entry != lOther$classMemberships$entry) {
        return false;
      }
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (l$contacts.length != lOther$contacts.length) {
      return false;
    }
    for (int i = 0; i < l$contacts.length; i++) {
      final l$contacts$entry = l$contacts[i];
      final lOther$contacts$entry = lOther$contacts[i];
      if (l$contacts$entry != lOther$contacts$entry) {
        return false;
      }
    }
    final l$college = college;
    final lOther$college = other.college;
    if (l$college != lOther$college) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$father = father;
    final lOther$father = other.father;
    if (l$father != lOther$father) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (l$groupMemberships.length != lOther$groupMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$groupMemberships.length; i++) {
      final l$groupMemberships$entry = l$groupMemberships[i];
      final lOther$groupMemberships$entry = lOther$groupMemberships[i];
      if (l$groupMemberships$entry != lOther$groupMemberships$entry) {
        return false;
      }
    }
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$servingChurch = servingChurch;
    final lOther$servingChurch = other.servingChurch;
    if (l$servingChurch != lOther$servingChurch) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (l$job != lOther$job) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$latestCall = latestCall;
    final lOther$latestCall = other.latestCall;
    if (l$latestCall != lOther$latestCall) {
      return false;
    }
    final l$latestConfession = latestConfession;
    final lOther$latestConfession = other.latestConfession;
    if (l$latestConfession != lOther$latestConfession) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$latestKodas = latestKodas;
    final lOther$latestKodas = other.latestKodas;
    if (l$latestKodas != lOther$latestKodas) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (l$martialStatus != lOther$martialStatus) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (l$school != lOther$school) {
      return false;
    }
    final l$serviceMemberships = serviceMemberships;
    final lOther$serviceMemberships = other.serviceMemberships;
    if (l$serviceMemberships.length != lOther$serviceMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$serviceMemberships.length; i++) {
      final l$serviceMemberships$entry = l$serviceMemberships[i];
      final lOther$serviceMemberships$entry = lOther$serviceMemberships[i];
      if (l$serviceMemberships$entry != lOther$serviceMemberships$entry) {
        return false;
      }
    }
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (l$hobbies.length != lOther$hobbies.length) {
      return false;
    }
    for (int i = 0; i < l$hobbies.length; i++) {
      final l$hobbies$entry = l$hobbies[i];
      final lOther$hobbies$entry = lOther$hobbies[i];
      if (l$hobbies$entry != lOther$hobbies$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$familyContacts = familyContacts;
    final lOther$familyContacts = other.familyContacts;
    if (l$familyContacts.length != lOther$familyContacts.length) {
      return false;
    }
    for (int i = 0; i < l$familyContacts.length; i++) {
      final l$familyContacts$entry = l$familyContacts[i];
      final lOther$familyContacts$entry = lOther$familyContacts[i];
      if (l$familyContacts$entry != lOther$familyContacts$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_person_person on Query_person_person {
  CopyWith_Query_person_person<Query_person_person> get copyWith =>
      CopyWith_Query_person_person(this, (i) => i);
}

abstract class CopyWith_Query_person_person<TRes> {
  factory CopyWith_Query_person_person(
    Query_person_person instance,
    TRes Function(Query_person_person) then,
  ) = _CopyWithImpl_Query_person_person;

  factory CopyWith_Query_person_person.stub(TRes res) =
      _CopyWithStubImpl_Query_person_person;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    Fragment_Address? address,
    DateTime? birthdate,
    List<Query_person_person_classMemberships>? classMemberships,
    Fragment_Church? church,
    List<Fragment_Contact>? contacts,
    Fragment_College? college,
    Fragment_PersonFamily? family,
    Query_person_person_father? father,
    bool? gender,
    List<Query_person_person_groupMemberships>? groupMemberships,
    bool? isServant,
    Fragment_Church? servingChurch,
    String? serviceType,
    bool? isShammas,
    String? workStatus,
    Fragment_Job? job,
    String? jobDescription,
    Fragment_LatestCall? latestCall,
    Fragment_LatestConfession? latestConfession,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestKodas? latestKodas,
    Fragment_LatestVisit? latestVisit,
    String? notes,
    String? martialStatus,
    Fragment_PersonType? personType,
    Fragment_Qualification? qualification,
    Fragment_School? school,
    List<Query_person_person_serviceMemberships>? serviceMemberships,
    Fragment_ShammasLevel? shammasLevel,
    Fragment_PersonState? state,
    Fragment_StudyYear? studyYear,
    List<Fragment_Hobby>? hobbies,
    List<Fragment_Tag>? tags,
    String? uid,
    Fragment_User? user,
    List<Fragment_FamilyContact>? familyContacts,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_Address<TRes> get address;
  TRes classMemberships(
    Iterable<Query_person_person_classMemberships> Function(
      Iterable<
        CopyWith_Query_person_person_classMemberships<
          Query_person_person_classMemberships
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_Church<TRes> get church;
  TRes contacts(
    Iterable<Fragment_Contact> Function(
      Iterable<CopyWith_Fragment_Contact<Fragment_Contact>>,
    )
    _fn,
  );
  CopyWith_Fragment_College<TRes> get college;
  CopyWith_Fragment_PersonFamily<TRes> get family;
  CopyWith_Query_person_person_father<TRes> get father;
  TRes groupMemberships(
    Iterable<Query_person_person_groupMemberships> Function(
      Iterable<
        CopyWith_Query_person_person_groupMemberships<
          Query_person_person_groupMemberships
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_Church<TRes> get servingChurch;
  CopyWith_Fragment_Job<TRes> get job;
  CopyWith_Fragment_LatestCall<TRes> get latestCall;
  CopyWith_Fragment_LatestConfession<TRes> get latestConfession;
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_LatestKodas<TRes> get latestKodas;
  CopyWith_Fragment_LatestVisit<TRes> get latestVisit;
  CopyWith_Fragment_PersonType<TRes> get personType;
  CopyWith_Fragment_Qualification<TRes> get qualification;
  CopyWith_Fragment_School<TRes> get school;
  TRes serviceMemberships(
    Iterable<Query_person_person_serviceMemberships> Function(
      Iterable<
        CopyWith_Query_person_person_serviceMemberships<
          Query_person_person_serviceMemberships
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_ShammasLevel<TRes> get shammasLevel;
  CopyWith_Fragment_PersonState<TRes> get state;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  TRes hobbies(
    Iterable<Fragment_Hobby> Function(
      Iterable<CopyWith_Fragment_Hobby<Fragment_Hobby>>,
    )
    _fn,
  );
  TRes tags(
    Iterable<Fragment_Tag> Function(
      Iterable<CopyWith_Fragment_Tag<Fragment_Tag>>,
    )
    _fn,
  );
  CopyWith_Fragment_User<TRes> get user;
  TRes familyContacts(
    Iterable<Fragment_FamilyContact> Function(
      Iterable<CopyWith_Fragment_FamilyContact<Fragment_FamilyContact>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_person_person<TRes>
    implements CopyWith_Query_person_person<TRes> {
  _CopyWithImpl_Query_person_person(this._instance, this._then);

  final Query_person_person _instance;

  final TRes Function(Query_person_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? classMemberships = _undefined,
    Object? church = _undefined,
    Object? contacts = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? groupMemberships = _undefined,
    Object? isServant = _undefined,
    Object? servingChurch = _undefined,
    Object? serviceType = _undefined,
    Object? isShammas = _undefined,
    Object? workStatus = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? latestCall = _undefined,
    Object? latestConfession = _undefined,
    Object? latestEdit = _undefined,
    Object? latestKodas = _undefined,
    Object? latestVisit = _undefined,
    Object? notes = _undefined,
    Object? martialStatus = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? serviceMemberships = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
    Object? familyContacts = _undefined,
  }) => _then(
    Query_person_person(
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
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_Address?),
      birthdate: birthdate == _undefined
          ? _instance.birthdate
          : (birthdate as DateTime?),
      classMemberships:
          classMemberships == _undefined || classMemberships == null
          ? _instance.classMemberships
          : (classMemberships as List<Query_person_person_classMemberships>),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_Church?),
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts as List<Fragment_Contact>),
      college: college == _undefined
          ? _instance.college
          : (college as Fragment_College?),
      family: family == _undefined
          ? _instance.family
          : (family as Fragment_PersonFamily?),
      father: father == _undefined
          ? _instance.father
          : (father as Query_person_person_father?),
      gender: gender == _undefined || gender == null
          ? _instance.gender
          : (gender as bool),
      groupMemberships:
          groupMemberships == _undefined || groupMemberships == null
          ? _instance.groupMemberships
          : (groupMemberships as List<Query_person_person_groupMemberships>),
      isServant: isServant == _undefined || isServant == null
          ? _instance.isServant
          : (isServant as bool),
      servingChurch: servingChurch == _undefined
          ? _instance.servingChurch
          : (servingChurch as Fragment_Church?),
      serviceType: serviceType == _undefined
          ? _instance.serviceType
          : (serviceType as String?),
      isShammas: isShammas == _undefined || isShammas == null
          ? _instance.isShammas
          : (isShammas as bool),
      workStatus: workStatus == _undefined
          ? _instance.workStatus
          : (workStatus as String?),
      job: job == _undefined ? _instance.job : (job as Fragment_Job?),
      jobDescription: jobDescription == _undefined
          ? _instance.jobDescription
          : (jobDescription as String?),
      latestCall: latestCall == _undefined
          ? _instance.latestCall
          : (latestCall as Fragment_LatestCall?),
      latestConfession: latestConfession == _undefined
          ? _instance.latestConfession
          : (latestConfession as Fragment_LatestConfession?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_LatestEdit?),
      latestKodas: latestKodas == _undefined
          ? _instance.latestKodas
          : (latestKodas as Fragment_LatestKodas?),
      latestVisit: latestVisit == _undefined
          ? _instance.latestVisit
          : (latestVisit as Fragment_LatestVisit?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      martialStatus: martialStatus == _undefined || martialStatus == null
          ? _instance.martialStatus
          : (martialStatus as String),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_PersonType?),
      qualification: qualification == _undefined
          ? _instance.qualification
          : (qualification as Fragment_Qualification?),
      school: school == _undefined
          ? _instance.school
          : (school as Fragment_School?),
      serviceMemberships:
          serviceMemberships == _undefined || serviceMemberships == null
          ? _instance.serviceMemberships
          : (serviceMemberships
                as List<Query_person_person_serviceMemberships>),
      shammasLevel: shammasLevel == _undefined
          ? _instance.shammasLevel
          : (shammasLevel as Fragment_ShammasLevel?),
      state: state == _undefined
          ? _instance.state
          : (state as Fragment_PersonState?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      hobbies: hobbies == _undefined || hobbies == null
          ? _instance.hobbies
          : (hobbies as List<Fragment_Hobby>),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<Fragment_Tag>),
      uid: uid == _undefined ? _instance.uid : (uid as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      familyContacts: familyContacts == _undefined || familyContacts == null
          ? _instance.familyContacts
          : (familyContacts as List<Fragment_FamilyContact>),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Fragment_Address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(local$address, (e) => call(address: e));
  }

  TRes classMemberships(
    Iterable<Query_person_person_classMemberships> Function(
      Iterable<
        CopyWith_Query_person_person_classMemberships<
          Query_person_person_classMemberships
        >
      >,
    )
    _fn,
  ) => call(
    classMemberships: _fn(
      _instance.classMemberships.map(
        (e) => CopyWith_Query_person_person_classMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_Church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(local$church, (e) => call(church: e));
  }

  TRes contacts(
    Iterable<Fragment_Contact> Function(
      Iterable<CopyWith_Fragment_Contact<Fragment_Contact>>,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map((e) => CopyWith_Fragment_Contact(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Fragment_College<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Fragment_College.stub(_then(_instance))
        : CopyWith_Fragment_College(local$college, (e) => call(college: e));
  }

  CopyWith_Fragment_PersonFamily<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Fragment_PersonFamily.stub(_then(_instance))
        : CopyWith_Fragment_PersonFamily(local$family, (e) => call(family: e));
  }

  CopyWith_Query_person_person_father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Query_person_person_father.stub(_then(_instance))
        : CopyWith_Query_person_person_father(
            local$father,
            (e) => call(father: e),
          );
  }

  TRes groupMemberships(
    Iterable<Query_person_person_groupMemberships> Function(
      Iterable<
        CopyWith_Query_person_person_groupMemberships<
          Query_person_person_groupMemberships
        >
      >,
    )
    _fn,
  ) => call(
    groupMemberships: _fn(
      _instance.groupMemberships.map(
        (e) => CopyWith_Query_person_person_groupMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_Church<TRes> get servingChurch {
    final local$servingChurch = _instance.servingChurch;
    return local$servingChurch == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(
            local$servingChurch,
            (e) => call(servingChurch: e),
          );
  }

  CopyWith_Fragment_Job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Fragment_Job.stub(_then(_instance))
        : CopyWith_Fragment_Job(local$job, (e) => call(job: e));
  }

  CopyWith_Fragment_LatestCall<TRes> get latestCall {
    final local$latestCall = _instance.latestCall;
    return local$latestCall == null
        ? CopyWith_Fragment_LatestCall.stub(_then(_instance))
        : CopyWith_Fragment_LatestCall(
            local$latestCall,
            (e) => call(latestCall: e),
          );
  }

  CopyWith_Fragment_LatestConfession<TRes> get latestConfession {
    final local$latestConfession = _instance.latestConfession;
    return local$latestConfession == null
        ? CopyWith_Fragment_LatestConfession.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfession(
            local$latestConfession,
            (e) => call(latestConfession: e),
          );
  }

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_LatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_LatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Fragment_LatestKodas<TRes> get latestKodas {
    final local$latestKodas = _instance.latestKodas;
    return local$latestKodas == null
        ? CopyWith_Fragment_LatestKodas.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodas(
            local$latestKodas,
            (e) => call(latestKodas: e),
          );
  }

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Fragment_LatestVisit.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisit(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Fragment_PersonType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_PersonType.stub(_then(_instance))
        : CopyWith_Fragment_PersonType(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Fragment_Qualification<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Fragment_Qualification.stub(_then(_instance))
        : CopyWith_Fragment_Qualification(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Fragment_School<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Fragment_School.stub(_then(_instance))
        : CopyWith_Fragment_School(local$school, (e) => call(school: e));
  }

  TRes serviceMemberships(
    Iterable<Query_person_person_serviceMemberships> Function(
      Iterable<
        CopyWith_Query_person_person_serviceMemberships<
          Query_person_person_serviceMemberships
        >
      >,
    )
    _fn,
  ) => call(
    serviceMemberships: _fn(
      _instance.serviceMemberships.map(
        (e) => CopyWith_Query_person_person_serviceMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_ShammasLevel<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Fragment_ShammasLevel.stub(_then(_instance))
        : CopyWith_Fragment_ShammasLevel(
            local$shammasLevel,
            (e) => call(shammasLevel: e),
          );
  }

  CopyWith_Fragment_PersonState<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Fragment_PersonState.stub(_then(_instance))
        : CopyWith_Fragment_PersonState(local$state, (e) => call(state: e));
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

  TRes hobbies(
    Iterable<Fragment_Hobby> Function(
      Iterable<CopyWith_Fragment_Hobby<Fragment_Hobby>>,
    )
    _fn,
  ) => call(
    hobbies: _fn(
      _instance.hobbies.map((e) => CopyWith_Fragment_Hobby(e, (i) => i)),
    ).toList(),
  );

  TRes tags(
    Iterable<Fragment_Tag> Function(
      Iterable<CopyWith_Fragment_Tag<Fragment_Tag>>,
    )
    _fn,
  ) => call(
    tags: _fn(_instance.tags.map((e) => CopyWith_Fragment_Tag(e, (i) => i)))
        .toList(),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }

  TRes familyContacts(
    Iterable<Fragment_FamilyContact> Function(
      Iterable<CopyWith_Fragment_FamilyContact<Fragment_FamilyContact>>,
    )
    _fn,
  ) => call(
    familyContacts: _fn(
      _instance.familyContacts.map(
        (e) => CopyWith_Fragment_FamilyContact(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_person_person<TRes>
    implements CopyWith_Query_person_person<TRes> {
  _CopyWithStubImpl_Query_person_person(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    Fragment_Address? address,
    DateTime? birthdate,
    List<Query_person_person_classMemberships>? classMemberships,
    Fragment_Church? church,
    List<Fragment_Contact>? contacts,
    Fragment_College? college,
    Fragment_PersonFamily? family,
    Query_person_person_father? father,
    bool? gender,
    List<Query_person_person_groupMemberships>? groupMemberships,
    bool? isServant,
    Fragment_Church? servingChurch,
    String? serviceType,
    bool? isShammas,
    String? workStatus,
    Fragment_Job? job,
    String? jobDescription,
    Fragment_LatestCall? latestCall,
    Fragment_LatestConfession? latestConfession,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestKodas? latestKodas,
    Fragment_LatestVisit? latestVisit,
    String? notes,
    String? martialStatus,
    Fragment_PersonType? personType,
    Fragment_Qualification? qualification,
    Fragment_School? school,
    List<Query_person_person_serviceMemberships>? serviceMemberships,
    Fragment_ShammasLevel? shammasLevel,
    Fragment_PersonState? state,
    Fragment_StudyYear? studyYear,
    List<Fragment_Hobby>? hobbies,
    List<Fragment_Tag>? tags,
    String? uid,
    Fragment_User? user,
    List<Fragment_FamilyContact>? familyContacts,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_Address<TRes> get address =>
      CopyWith_Fragment_Address.stub(_res);

  classMemberships(_fn) => _res;

  CopyWith_Fragment_Church<TRes> get church =>
      CopyWith_Fragment_Church.stub(_res);

  contacts(_fn) => _res;

  CopyWith_Fragment_College<TRes> get college =>
      CopyWith_Fragment_College.stub(_res);

  CopyWith_Fragment_PersonFamily<TRes> get family =>
      CopyWith_Fragment_PersonFamily.stub(_res);

  CopyWith_Query_person_person_father<TRes> get father =>
      CopyWith_Query_person_person_father.stub(_res);

  groupMemberships(_fn) => _res;

  CopyWith_Fragment_Church<TRes> get servingChurch =>
      CopyWith_Fragment_Church.stub(_res);

  CopyWith_Fragment_Job<TRes> get job => CopyWith_Fragment_Job.stub(_res);

  CopyWith_Fragment_LatestCall<TRes> get latestCall =>
      CopyWith_Fragment_LatestCall.stub(_res);

  CopyWith_Fragment_LatestConfession<TRes> get latestConfession =>
      CopyWith_Fragment_LatestConfession.stub(_res);

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

  CopyWith_Fragment_LatestKodas<TRes> get latestKodas =>
      CopyWith_Fragment_LatestKodas.stub(_res);

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit =>
      CopyWith_Fragment_LatestVisit.stub(_res);

  CopyWith_Fragment_PersonType<TRes> get personType =>
      CopyWith_Fragment_PersonType.stub(_res);

  CopyWith_Fragment_Qualification<TRes> get qualification =>
      CopyWith_Fragment_Qualification.stub(_res);

  CopyWith_Fragment_School<TRes> get school =>
      CopyWith_Fragment_School.stub(_res);

  serviceMemberships(_fn) => _res;

  CopyWith_Fragment_ShammasLevel<TRes> get shammasLevel =>
      CopyWith_Fragment_ShammasLevel.stub(_res);

  CopyWith_Fragment_PersonState<TRes> get state =>
      CopyWith_Fragment_PersonState.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  hobbies(_fn) => _res;

  tags(_fn) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);

  familyContacts(_fn) => _res;
}

class Query_person_person_classMemberships
    implements Fragment_PersonDetails_classMemberships {
  Query_person_person_classMemberships({
    required this.id,
    this.$class,
    this.$__typename = 'ClassMembership',
  });

  factory Query_person_person_classMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query_person_person_classMemberships(
      id: (l$id as String),
      $class: l$$class == null
          ? null
          : Fragment_Class.fromJson((l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment_Class? $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$class = $class;
    _resultData['class'] = l$$class?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_person_person_classMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
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

extension UtilityExtension_Query_person_person_classMemberships
    on Query_person_person_classMemberships {
  CopyWith_Query_person_person_classMemberships<
    Query_person_person_classMemberships
  >
  get copyWith => CopyWith_Query_person_person_classMemberships(this, (i) => i);
}

abstract class CopyWith_Query_person_person_classMemberships<TRes> {
  factory CopyWith_Query_person_person_classMemberships(
    Query_person_person_classMemberships instance,
    TRes Function(Query_person_person_classMemberships) then,
  ) = _CopyWithImpl_Query_person_person_classMemberships;

  factory CopyWith_Query_person_person_classMemberships.stub(TRes res) =
      _CopyWithStubImpl_Query_person_person_classMemberships;

  TRes call({String? id, Fragment_Class? $class, String? $__typename});
  CopyWith_Fragment_Class<TRes> get $class;
}

class _CopyWithImpl_Query_person_person_classMemberships<TRes>
    implements CopyWith_Query_person_person_classMemberships<TRes> {
  _CopyWithImpl_Query_person_person_classMemberships(
    this._instance,
    this._then,
  );

  final Query_person_person_classMemberships _instance;

  final TRes Function(Query_person_person_classMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_person_person_classMemberships(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $class: $class == _undefined
          ? _instance.$class
          : ($class as Fragment_Class?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Class<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Fragment_Class.stub(_then(_instance))
        : CopyWith_Fragment_Class(local$$class, (e) => call($class: e));
  }
}

class _CopyWithStubImpl_Query_person_person_classMemberships<TRes>
    implements CopyWith_Query_person_person_classMemberships<TRes> {
  _CopyWithStubImpl_Query_person_person_classMemberships(this._res);

  TRes _res;

  call({String? id, Fragment_Class? $class, String? $__typename}) => _res;

  CopyWith_Fragment_Class<TRes> get $class =>
      CopyWith_Fragment_Class.stub(_res);
}

class Query_person_person_father
    implements Fragment_PersonDetails_father, Fragment_Father {
  Query_person_person_father({
    required this.id,
    required this.name,
    this.churchId,
    required this.isHidden,
    this.$__typename = 'Father',
    this.church,
  });

  factory Query_person_person_father.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$churchId = json['churchId'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    final l$church = json['church'];
    return Query_person_person_father(
      id: (l$id as String),
      name: (l$name as String),
      churchId: (l$churchId as String?),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
      church: l$church == null
          ? null
          : Fragment_Church.fromJson((l$church as Map<String, dynamic>)),
    );
  }

  final String id;

  final String name;

  final String? churchId;

  final bool isHidden;

  final String $__typename;

  final Fragment_Church? church;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$churchId = churchId;
    _resultData['churchId'] = l$churchId;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$churchId = churchId;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    final l$church = church;
    return Object.hashAll([
      l$id,
      l$name,
      l$churchId,
      l$isHidden,
      l$$__typename,
      l$church,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_person_person_father ||
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_person_person_father
    on Query_person_person_father {
  CopyWith_Query_person_person_father<Query_person_person_father>
  get copyWith => CopyWith_Query_person_person_father(this, (i) => i);
}

abstract class CopyWith_Query_person_person_father<TRes> {
  factory CopyWith_Query_person_person_father(
    Query_person_person_father instance,
    TRes Function(Query_person_person_father) then,
  ) = _CopyWithImpl_Query_person_person_father;

  factory CopyWith_Query_person_person_father.stub(TRes res) =
      _CopyWithStubImpl_Query_person_person_father;

  TRes call({
    String? id,
    String? name,
    String? churchId,
    bool? isHidden,
    String? $__typename,
    Fragment_Church? church,
  });
  CopyWith_Fragment_Church<TRes> get church;
}

class _CopyWithImpl_Query_person_person_father<TRes>
    implements CopyWith_Query_person_person_father<TRes> {
  _CopyWithImpl_Query_person_person_father(this._instance, this._then);

  final Query_person_person_father _instance;

  final TRes Function(Query_person_person_father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? churchId = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
    Object? church = _undefined,
  }) => _then(
    Query_person_person_father(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      churchId: churchId == _undefined
          ? _instance.churchId
          : (churchId as String?),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_Church?),
    ),
  );

  CopyWith_Fragment_Church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl_Query_person_person_father<TRes>
    implements CopyWith_Query_person_person_father<TRes> {
  _CopyWithStubImpl_Query_person_person_father(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? churchId,
    bool? isHidden,
    String? $__typename,
    Fragment_Church? church,
  }) => _res;

  CopyWith_Fragment_Church<TRes> get church =>
      CopyWith_Fragment_Church.stub(_res);
}

class Query_person_person_groupMemberships
    implements Fragment_PersonDetails_groupMemberships {
  Query_person_person_groupMemberships({
    required this.groupId,
    this.group,
    this.$__typename = 'GroupMembership',
  });

  factory Query_person_person_groupMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$groupId = json['groupId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query_person_person_groupMemberships(
      groupId: (l$groupId as String),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupId;

  final Fragment_Group? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([l$groupId, l$group, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_person_person_groupMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
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

extension UtilityExtension_Query_person_person_groupMemberships
    on Query_person_person_groupMemberships {
  CopyWith_Query_person_person_groupMemberships<
    Query_person_person_groupMemberships
  >
  get copyWith => CopyWith_Query_person_person_groupMemberships(this, (i) => i);
}

abstract class CopyWith_Query_person_person_groupMemberships<TRes> {
  factory CopyWith_Query_person_person_groupMemberships(
    Query_person_person_groupMemberships instance,
    TRes Function(Query_person_person_groupMemberships) then,
  ) = _CopyWithImpl_Query_person_person_groupMemberships;

  factory CopyWith_Query_person_person_groupMemberships.stub(TRes res) =
      _CopyWithStubImpl_Query_person_person_groupMemberships;

  TRes call({String? groupId, Fragment_Group? group, String? $__typename});
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Query_person_person_groupMemberships<TRes>
    implements CopyWith_Query_person_person_groupMemberships<TRes> {
  _CopyWithImpl_Query_person_person_groupMemberships(
    this._instance,
    this._then,
  );

  final Query_person_person_groupMemberships _instance;

  final TRes Function(Query_person_person_groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_person_person_groupMemberships(
      groupId: groupId == _undefined || groupId == null
          ? _instance.groupId
          : (groupId as String),
      group: group == _undefined ? _instance.group : (group as Fragment_Group?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Query_person_person_groupMemberships<TRes>
    implements CopyWith_Query_person_person_groupMemberships<TRes> {
  _CopyWithStubImpl_Query_person_person_groupMemberships(this._res);

  TRes _res;

  call({String? groupId, Fragment_Group? group, String? $__typename}) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Query_person_person_serviceMemberships
    implements Fragment_PersonDetails_serviceMemberships {
  Query_person_person_serviceMemberships({
    required this.serviceId,
    this.service,
    this.$__typename = 'ServiceMembership',
  });

  factory Query_person_person_serviceMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$serviceId = json['serviceId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query_person_person_serviceMemberships(
      serviceId: (l$serviceId as String),
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String serviceId;

  final Fragment_ServiceWithStudyYears? service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([l$serviceId, l$service, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_person_person_serviceMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
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

extension UtilityExtension_Query_person_person_serviceMemberships
    on Query_person_person_serviceMemberships {
  CopyWith_Query_person_person_serviceMemberships<
    Query_person_person_serviceMemberships
  >
  get copyWith =>
      CopyWith_Query_person_person_serviceMemberships(this, (i) => i);
}

abstract class CopyWith_Query_person_person_serviceMemberships<TRes> {
  factory CopyWith_Query_person_person_serviceMemberships(
    Query_person_person_serviceMemberships instance,
    TRes Function(Query_person_person_serviceMemberships) then,
  ) = _CopyWithImpl_Query_person_person_serviceMemberships;

  factory CopyWith_Query_person_person_serviceMemberships.stub(TRes res) =
      _CopyWithStubImpl_Query_person_person_serviceMemberships;

  TRes call({
    String? serviceId,
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Query_person_person_serviceMemberships<TRes>
    implements CopyWith_Query_person_person_serviceMemberships<TRes> {
  _CopyWithImpl_Query_person_person_serviceMemberships(
    this._instance,
    this._then,
  );

  final Query_person_person_serviceMemberships _instance;

  final TRes Function(Query_person_person_serviceMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_person_person_serviceMemberships(
      serviceId: serviceId == _undefined || serviceId == null
          ? _instance.serviceId
          : (serviceId as String),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Query_person_person_serviceMemberships<TRes>
    implements CopyWith_Query_person_person_serviceMemberships<TRes> {
  _CopyWithStubImpl_Query_person_person_serviceMemberships(this._res);

  TRes _res;

  call({
    String? serviceId,
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}

class Variables_Query_personMemberships {
  factory Variables_Query_personMemberships({required String id}) =>
      Variables_Query_personMemberships._({r'id': id});

  Variables_Query_personMemberships._(this._$data);

  factory Variables_Query_personMemberships.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_personMemberships._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_personMemberships<Variables_Query_personMemberships>
  get copyWith => CopyWith_Variables_Query_personMemberships(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_personMemberships ||
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

abstract class CopyWith_Variables_Query_personMemberships<TRes> {
  factory CopyWith_Variables_Query_personMemberships(
    Variables_Query_personMemberships instance,
    TRes Function(Variables_Query_personMemberships) then,
  ) = _CopyWithImpl_Variables_Query_personMemberships;

  factory CopyWith_Variables_Query_personMemberships.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personMemberships;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_personMemberships<TRes>
    implements CopyWith_Variables_Query_personMemberships<TRes> {
  _CopyWithImpl_Variables_Query_personMemberships(this._instance, this._then);

  final Variables_Query_personMemberships _instance;

  final TRes Function(Variables_Query_personMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_personMemberships._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_personMemberships<TRes>
    implements CopyWith_Variables_Query_personMemberships<TRes> {
  _CopyWithStubImpl_Variables_Query_personMemberships(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_personMemberships {
  Query_personMemberships({this.person, this.$__typename = 'RootQueryType'});

  factory Query_personMemberships.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query_personMemberships(
      person: l$person == null
          ? null
          : Fragment_PersonMemberships.fromJson(
              (l$person as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_PersonMemberships? person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([l$person, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personMemberships || runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Query_personMemberships on Query_personMemberships {
  CopyWith_Query_personMemberships<Query_personMemberships> get copyWith =>
      CopyWith_Query_personMemberships(this, (i) => i);
}

abstract class CopyWith_Query_personMemberships<TRes> {
  factory CopyWith_Query_personMemberships(
    Query_personMemberships instance,
    TRes Function(Query_personMemberships) then,
  ) = _CopyWithImpl_Query_personMemberships;

  factory CopyWith_Query_personMemberships.stub(TRes res) =
      _CopyWithStubImpl_Query_personMemberships;

  TRes call({Fragment_PersonMemberships? person, String? $__typename});
  CopyWith_Fragment_PersonMemberships<TRes> get person;
}

class _CopyWithImpl_Query_personMemberships<TRes>
    implements CopyWith_Query_personMemberships<TRes> {
  _CopyWithImpl_Query_personMemberships(this._instance, this._then);

  final Query_personMemberships _instance;

  final TRes Function(Query_personMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? person = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_personMemberships(
          person: person == _undefined
              ? _instance.person
              : (person as Fragment_PersonMemberships?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_PersonMemberships<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_PersonMemberships.stub(_then(_instance))
        : CopyWith_Fragment_PersonMemberships(
            local$person,
            (e) => call(person: e),
          );
  }
}

class _CopyWithStubImpl_Query_personMemberships<TRes>
    implements CopyWith_Query_personMemberships<TRes> {
  _CopyWithStubImpl_Query_personMemberships(this._res);

  TRes _res;

  call({Fragment_PersonMemberships? person, String? $__typename}) => _res;

  CopyWith_Fragment_PersonMemberships<TRes> get person =>
      CopyWith_Fragment_PersonMemberships.stub(_res);
}

const documentNodeQuerypersonMemberships = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'personMemberships'),
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
            name: NameNode(value: 'person'),
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
                  name: NameNode(value: 'PersonMemberships'),
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
    fragmentDefinitionPersonMemberships,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Query_personHistoryAnalysis {
  factory Variables_Query_personHistoryAnalysis({
    required String id,
    Input_CallFilterInput? callsFilter,
    Input_VisitFilterInput? visitsFilter,
    Input_EditFilterInput? editsFilter,
    Input_KodasFilterInput? kodasesFilter,
    Input_ConfessionFilterInput? confessionsFilter,
    bool? callHistory,
    bool? visitHistory,
    bool? editHistory,
    bool? confessionHistory,
    bool? kodasHistory,
  }) => Variables_Query_personHistoryAnalysis._({
    r'id': id,
    if (callsFilter != null) r'callsFilter': callsFilter,
    if (visitsFilter != null) r'visitsFilter': visitsFilter,
    if (editsFilter != null) r'editsFilter': editsFilter,
    if (kodasesFilter != null) r'kodasesFilter': kodasesFilter,
    if (confessionsFilter != null) r'confessionsFilter': confessionsFilter,
    if (callHistory != null) r'callHistory': callHistory,
    if (visitHistory != null) r'visitHistory': visitHistory,
    if (editHistory != null) r'editHistory': editHistory,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
  });

  Variables_Query_personHistoryAnalysis._(this._$data);

  factory Variables_Query_personHistoryAnalysis.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('callsFilter')) {
      final l$callsFilter = data['callsFilter'];
      result$data['callsFilter'] = l$callsFilter == null
          ? null
          : Input_CallFilterInput.fromJson(
              (l$callsFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visitsFilter')) {
      final l$visitsFilter = data['visitsFilter'];
      result$data['visitsFilter'] = l$visitsFilter == null
          ? null
          : Input_VisitFilterInput.fromJson(
              (l$visitsFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editsFilter')) {
      final l$editsFilter = data['editsFilter'];
      result$data['editsFilter'] = l$editsFilter == null
          ? null
          : Input_EditFilterInput.fromJson(
              (l$editsFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('kodasesFilter')) {
      final l$kodasesFilter = data['kodasesFilter'];
      result$data['kodasesFilter'] = l$kodasesFilter == null
          ? null
          : Input_KodasFilterInput.fromJson(
              (l$kodasesFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionsFilter')) {
      final l$confessionsFilter = data['confessionsFilter'];
      result$data['confessionsFilter'] = l$confessionsFilter == null
          ? null
          : Input_ConfessionFilterInput.fromJson(
              (l$confessionsFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('callHistory')) {
      final l$callHistory = data['callHistory'];
      result$data['callHistory'] = (l$callHistory as bool);
    }
    if (data.containsKey('visitHistory')) {
      final l$visitHistory = data['visitHistory'];
      result$data['visitHistory'] = (l$visitHistory as bool);
    }
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = (l$editHistory as bool);
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = (l$confessionHistory as bool);
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = (l$kodasHistory as bool);
    }
    return Variables_Query_personHistoryAnalysis._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_CallFilterInput? get callsFilter =>
      (_$data['callsFilter'] as Input_CallFilterInput?);

  Input_VisitFilterInput? get visitsFilter =>
      (_$data['visitsFilter'] as Input_VisitFilterInput?);

  Input_EditFilterInput? get editsFilter =>
      (_$data['editsFilter'] as Input_EditFilterInput?);

  Input_KodasFilterInput? get kodasesFilter =>
      (_$data['kodasesFilter'] as Input_KodasFilterInput?);

  Input_ConfessionFilterInput? get confessionsFilter =>
      (_$data['confessionsFilter'] as Input_ConfessionFilterInput?);

  bool? get callHistory => (_$data['callHistory'] as bool?);

  bool? get visitHistory => (_$data['visitHistory'] as bool?);

  bool? get editHistory => (_$data['editHistory'] as bool?);

  bool? get confessionHistory => (_$data['confessionHistory'] as bool?);

  bool? get kodasHistory => (_$data['kodasHistory'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('callsFilter')) {
      final l$callsFilter = callsFilter;
      result$data['callsFilter'] = l$callsFilter?.toJson();
    }
    if (_$data.containsKey('visitsFilter')) {
      final l$visitsFilter = visitsFilter;
      result$data['visitsFilter'] = l$visitsFilter?.toJson();
    }
    if (_$data.containsKey('editsFilter')) {
      final l$editsFilter = editsFilter;
      result$data['editsFilter'] = l$editsFilter?.toJson();
    }
    if (_$data.containsKey('kodasesFilter')) {
      final l$kodasesFilter = kodasesFilter;
      result$data['kodasesFilter'] = l$kodasesFilter?.toJson();
    }
    if (_$data.containsKey('confessionsFilter')) {
      final l$confessionsFilter = confessionsFilter;
      result$data['confessionsFilter'] = l$confessionsFilter?.toJson();
    }
    if (_$data.containsKey('callHistory')) {
      final l$callHistory = callHistory;
      result$data['callHistory'] = (l$callHistory as bool);
    }
    if (_$data.containsKey('visitHistory')) {
      final l$visitHistory = visitHistory;
      result$data['visitHistory'] = (l$visitHistory as bool);
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = (l$editHistory as bool);
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = (l$confessionHistory as bool);
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = (l$kodasHistory as bool);
    }
    return result$data;
  }

  CopyWith_Variables_Query_personHistoryAnalysis<
    Variables_Query_personHistoryAnalysis
  >
  get copyWith =>
      CopyWith_Variables_Query_personHistoryAnalysis(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_personHistoryAnalysis ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$callsFilter = callsFilter;
    final lOther$callsFilter = other.callsFilter;
    if (_$data.containsKey('callsFilter') !=
        other._$data.containsKey('callsFilter')) {
      return false;
    }
    if (l$callsFilter != lOther$callsFilter) {
      return false;
    }
    final l$visitsFilter = visitsFilter;
    final lOther$visitsFilter = other.visitsFilter;
    if (_$data.containsKey('visitsFilter') !=
        other._$data.containsKey('visitsFilter')) {
      return false;
    }
    if (l$visitsFilter != lOther$visitsFilter) {
      return false;
    }
    final l$editsFilter = editsFilter;
    final lOther$editsFilter = other.editsFilter;
    if (_$data.containsKey('editsFilter') !=
        other._$data.containsKey('editsFilter')) {
      return false;
    }
    if (l$editsFilter != lOther$editsFilter) {
      return false;
    }
    final l$kodasesFilter = kodasesFilter;
    final lOther$kodasesFilter = other.kodasesFilter;
    if (_$data.containsKey('kodasesFilter') !=
        other._$data.containsKey('kodasesFilter')) {
      return false;
    }
    if (l$kodasesFilter != lOther$kodasesFilter) {
      return false;
    }
    final l$confessionsFilter = confessionsFilter;
    final lOther$confessionsFilter = other.confessionsFilter;
    if (_$data.containsKey('confessionsFilter') !=
        other._$data.containsKey('confessionsFilter')) {
      return false;
    }
    if (l$confessionsFilter != lOther$confessionsFilter) {
      return false;
    }
    final l$callHistory = callHistory;
    final lOther$callHistory = other.callHistory;
    if (_$data.containsKey('callHistory') !=
        other._$data.containsKey('callHistory')) {
      return false;
    }
    if (l$callHistory != lOther$callHistory) {
      return false;
    }
    final l$visitHistory = visitHistory;
    final lOther$visitHistory = other.visitHistory;
    if (_$data.containsKey('visitHistory') !=
        other._$data.containsKey('visitHistory')) {
      return false;
    }
    if (l$visitHistory != lOther$visitHistory) {
      return false;
    }
    final l$editHistory = editHistory;
    final lOther$editHistory = other.editHistory;
    if (_$data.containsKey('editHistory') !=
        other._$data.containsKey('editHistory')) {
      return false;
    }
    if (l$editHistory != lOther$editHistory) {
      return false;
    }
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$callsFilter = callsFilter;
    final l$visitsFilter = visitsFilter;
    final l$editsFilter = editsFilter;
    final l$kodasesFilter = kodasesFilter;
    final l$confessionsFilter = confessionsFilter;
    final l$callHistory = callHistory;
    final l$visitHistory = visitHistory;
    final l$editHistory = editHistory;
    final l$confessionHistory = confessionHistory;
    final l$kodasHistory = kodasHistory;
    return Object.hashAll([
      l$id,
      _$data.containsKey('callsFilter') ? l$callsFilter : const {},
      _$data.containsKey('visitsFilter') ? l$visitsFilter : const {},
      _$data.containsKey('editsFilter') ? l$editsFilter : const {},
      _$data.containsKey('kodasesFilter') ? l$kodasesFilter : const {},
      _$data.containsKey('confessionsFilter') ? l$confessionsFilter : const {},
      _$data.containsKey('callHistory') ? l$callHistory : const {},
      _$data.containsKey('visitHistory') ? l$visitHistory : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_personHistoryAnalysis<TRes> {
  factory CopyWith_Variables_Query_personHistoryAnalysis(
    Variables_Query_personHistoryAnalysis instance,
    TRes Function(Variables_Query_personHistoryAnalysis) then,
  ) = _CopyWithImpl_Variables_Query_personHistoryAnalysis;

  factory CopyWith_Variables_Query_personHistoryAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personHistoryAnalysis;

  TRes call({
    String? id,
    Input_CallFilterInput? callsFilter,
    Input_VisitFilterInput? visitsFilter,
    Input_EditFilterInput? editsFilter,
    Input_KodasFilterInput? kodasesFilter,
    Input_ConfessionFilterInput? confessionsFilter,
    bool? callHistory,
    bool? visitHistory,
    bool? editHistory,
    bool? confessionHistory,
    bool? kodasHistory,
  });
}

class _CopyWithImpl_Variables_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Variables_Query_personHistoryAnalysis<TRes> {
  _CopyWithImpl_Variables_Query_personHistoryAnalysis(
    this._instance,
    this._then,
  );

  final Variables_Query_personHistoryAnalysis _instance;

  final TRes Function(Variables_Query_personHistoryAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? callsFilter = _undefined,
    Object? visitsFilter = _undefined,
    Object? editsFilter = _undefined,
    Object? kodasesFilter = _undefined,
    Object? confessionsFilter = _undefined,
    Object? callHistory = _undefined,
    Object? visitHistory = _undefined,
    Object? editHistory = _undefined,
    Object? confessionHistory = _undefined,
    Object? kodasHistory = _undefined,
  }) => _then(
    Variables_Query_personHistoryAnalysis._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (callsFilter != _undefined)
        'callsFilter': (callsFilter as Input_CallFilterInput?),
      if (visitsFilter != _undefined)
        'visitsFilter': (visitsFilter as Input_VisitFilterInput?),
      if (editsFilter != _undefined)
        'editsFilter': (editsFilter as Input_EditFilterInput?),
      if (kodasesFilter != _undefined)
        'kodasesFilter': (kodasesFilter as Input_KodasFilterInput?),
      if (confessionsFilter != _undefined)
        'confessionsFilter':
            (confessionsFilter as Input_ConfessionFilterInput?),
      if (callHistory != _undefined && callHistory != null)
        'callHistory': (callHistory as bool),
      if (visitHistory != _undefined && visitHistory != null)
        'visitHistory': (visitHistory as bool),
      if (editHistory != _undefined && editHistory != null)
        'editHistory': (editHistory as bool),
      if (confessionHistory != _undefined && confessionHistory != null)
        'confessionHistory': (confessionHistory as bool),
      if (kodasHistory != _undefined && kodasHistory != null)
        'kodasHistory': (kodasHistory as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Variables_Query_personHistoryAnalysis<TRes> {
  _CopyWithStubImpl_Variables_Query_personHistoryAnalysis(this._res);

  TRes _res;

  call({
    String? id,
    Input_CallFilterInput? callsFilter,
    Input_VisitFilterInput? visitsFilter,
    Input_EditFilterInput? editsFilter,
    Input_KodasFilterInput? kodasesFilter,
    Input_ConfessionFilterInput? confessionsFilter,
    bool? callHistory,
    bool? visitHistory,
    bool? editHistory,
    bool? confessionHistory,
    bool? kodasHistory,
  }) => _res;
}

class Query_personHistoryAnalysis {
  Query_personHistoryAnalysis({
    this.person,
    this.$__typename = 'RootQueryType',
  });

  factory Query_personHistoryAnalysis.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis(
      person: l$person == null
          ? null
          : Query_personHistoryAnalysis_person.fromJson(
              (l$person as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_person? person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([l$person, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personHistoryAnalysis ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Query_personHistoryAnalysis
    on Query_personHistoryAnalysis {
  CopyWith_Query_personHistoryAnalysis<Query_personHistoryAnalysis>
  get copyWith => CopyWith_Query_personHistoryAnalysis(this, (i) => i);
}

abstract class CopyWith_Query_personHistoryAnalysis<TRes> {
  factory CopyWith_Query_personHistoryAnalysis(
    Query_personHistoryAnalysis instance,
    TRes Function(Query_personHistoryAnalysis) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis;

  factory CopyWith_Query_personHistoryAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis;

  TRes call({Query_personHistoryAnalysis_person? person, String? $__typename});
  CopyWith_Query_personHistoryAnalysis_person<TRes> get person;
}

class _CopyWithImpl_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Query_personHistoryAnalysis<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis(this._instance, this._then);

  final Query_personHistoryAnalysis _instance;

  final TRes Function(Query_personHistoryAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? person = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_personHistoryAnalysis(
          person: person == _undefined
              ? _instance.person
              : (person as Query_personHistoryAnalysis_person?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_personHistoryAnalysis_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Query_personHistoryAnalysis_person.stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_person(
            local$person,
            (e) => call(person: e),
          );
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Query_personHistoryAnalysis<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis(this._res);

  TRes _res;

  call({Query_personHistoryAnalysis_person? person, String? $__typename}) =>
      _res;

  CopyWith_Query_personHistoryAnalysis_person<TRes> get person =>
      CopyWith_Query_personHistoryAnalysis_person.stub(_res);
}

const documentNodeQuerypersonHistoryAnalysis = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'personHistoryAnalysis'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'callsFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'CallFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'visitsFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'VisitFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'editsFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'EditFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'kodasesFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'KodasFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'confessionsFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ConfessionFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'callHistory')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'visitHistory')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'editHistory')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'confessionHistory')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'kodasHistory')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'person'),
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
                FieldNode(
                  name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'userCanEdit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'calls'),
                  alias: NameNode(value: 'callHistoryAggregate'),
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'filter'),
                      value: VariableNode(name: NameNode(value: 'callsFilter')),
                    ),
                  ],
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'callHistory'),
                          ),
                        ),
                      ],
                    ),
                  ],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'time'),
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
                  name: NameNode(value: 'visits'),
                  alias: NameNode(value: 'visitHistoryAggregate'),
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'filter'),
                      value: VariableNode(
                        name: NameNode(value: 'visitsFilter'),
                      ),
                    ),
                  ],
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'visitHistory'),
                          ),
                        ),
                      ],
                    ),
                  ],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'time'),
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
                  name: NameNode(value: 'edits'),
                  alias: NameNode(value: 'editHistoryAggregate'),
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'filter'),
                      value: VariableNode(name: NameNode(value: 'editsFilter')),
                    ),
                  ],
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'editHistory'),
                          ),
                        ),
                      ],
                    ),
                  ],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'time'),
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
                  name: NameNode(value: 'kodases'),
                  alias: NameNode(value: 'kodasHistoryAggregate'),
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'filter'),
                      value: VariableNode(
                        name: NameNode(value: 'kodasesFilter'),
                      ),
                    ),
                  ],
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'kodasHistory'),
                          ),
                        ),
                      ],
                    ),
                  ],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'time'),
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
                  name: NameNode(value: 'confessions'),
                  alias: NameNode(value: 'confessionHistoryAggregate'),
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'filter'),
                      value: VariableNode(
                        name: NameNode(value: 'confessionsFilter'),
                      ),
                    ),
                  ],
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'confessionHistory'),
                          ),
                        ),
                      ],
                    ),
                  ],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'time'),
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
);

class Query_personHistoryAnalysis_person {
  Query_personHistoryAnalysis_person({
    required this.id,
    required this.name,
    required this.userCanEdit,
    this.callHistoryAggregate,
    this.visitHistoryAggregate,
    this.editHistoryAggregate,
    this.kodasHistoryAggregate,
    this.confessionHistoryAggregate,
    this.$__typename = 'Person',
  });

  factory Query_personHistoryAnalysis_person.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$userCanEdit = json['userCanEdit'];
    final l$callHistoryAggregate = json['callHistoryAggregate'];
    final l$visitHistoryAggregate = json['visitHistoryAggregate'];
    final l$editHistoryAggregate = json['editHistoryAggregate'];
    final l$kodasHistoryAggregate = json['kodasHistoryAggregate'];
    final l$confessionHistoryAggregate = json['confessionHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_person(
      id: (l$id as String),
      name: (l$name as String),
      userCanEdit: (l$userCanEdit as bool),
      callHistoryAggregate: (l$callHistoryAggregate as List<dynamic>?)
          ?.map(
            (e) =>
                Query_personHistoryAnalysis_person_callHistoryAggregate.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      visitHistoryAggregate: (l$visitHistoryAggregate as List<dynamic>?)
          ?.map(
            (e) =>
                Query_personHistoryAnalysis_person_visitHistoryAggregate.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      editHistoryAggregate: (l$editHistoryAggregate as List<dynamic>?)
          ?.map(
            (e) =>
                Query_personHistoryAnalysis_person_editHistoryAggregate.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      kodasHistoryAggregate: (l$kodasHistoryAggregate as List<dynamic>?)
          ?.map(
            (e) =>
                Query_personHistoryAnalysis_person_kodasHistoryAggregate.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      confessionHistoryAggregate: (l$confessionHistoryAggregate as List<dynamic>?)
          ?.map(
            (e) =>
                Query_personHistoryAnalysis_person_confessionHistoryAggregate.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool userCanEdit;

  final List<Query_personHistoryAnalysis_person_callHistoryAggregate>?
  callHistoryAggregate;

  final List<Query_personHistoryAnalysis_person_visitHistoryAggregate>?
  visitHistoryAggregate;

  final List<Query_personHistoryAnalysis_person_editHistoryAggregate>?
  editHistoryAggregate;

  final List<Query_personHistoryAnalysis_person_kodasHistoryAggregate>?
  kodasHistoryAggregate;

  final List<Query_personHistoryAnalysis_person_confessionHistoryAggregate>?
  confessionHistoryAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$callHistoryAggregate = callHistoryAggregate;
    _resultData['callHistoryAggregate'] = l$callHistoryAggregate
        ?.map((e) => e.toJson())
        .toList();
    final l$visitHistoryAggregate = visitHistoryAggregate;
    _resultData['visitHistoryAggregate'] = l$visitHistoryAggregate
        ?.map((e) => e.toJson())
        .toList();
    final l$editHistoryAggregate = editHistoryAggregate;
    _resultData['editHistoryAggregate'] = l$editHistoryAggregate
        ?.map((e) => e.toJson())
        .toList();
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    _resultData['kodasHistoryAggregate'] = l$kodasHistoryAggregate
        ?.map((e) => e.toJson())
        .toList();
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    _resultData['confessionHistoryAggregate'] = l$confessionHistoryAggregate
        ?.map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$userCanEdit = userCanEdit;
    final l$callHistoryAggregate = callHistoryAggregate;
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$userCanEdit,
      l$callHistoryAggregate == null
          ? null
          : Object.hashAll(l$callHistoryAggregate.map((v) => v)),
      l$visitHistoryAggregate == null
          ? null
          : Object.hashAll(l$visitHistoryAggregate.map((v) => v)),
      l$editHistoryAggregate == null
          ? null
          : Object.hashAll(l$editHistoryAggregate.map((v) => v)),
      l$kodasHistoryAggregate == null
          ? null
          : Object.hashAll(l$kodasHistoryAggregate.map((v) => v)),
      l$confessionHistoryAggregate == null
          ? null
          : Object.hashAll(l$confessionHistoryAggregate.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personHistoryAnalysis_person ||
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$callHistoryAggregate = callHistoryAggregate;
    final lOther$callHistoryAggregate = other.callHistoryAggregate;
    if (l$callHistoryAggregate != null && lOther$callHistoryAggregate != null) {
      if (l$callHistoryAggregate.length != lOther$callHistoryAggregate.length) {
        return false;
      }
      for (int i = 0; i < l$callHistoryAggregate.length; i++) {
        final l$callHistoryAggregate$entry = l$callHistoryAggregate[i];
        final lOther$callHistoryAggregate$entry =
            lOther$callHistoryAggregate[i];
        if (l$callHistoryAggregate$entry != lOther$callHistoryAggregate$entry) {
          return false;
        }
      }
    } else if (l$callHistoryAggregate != lOther$callHistoryAggregate) {
      return false;
    }
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final lOther$visitHistoryAggregate = other.visitHistoryAggregate;
    if (l$visitHistoryAggregate != null &&
        lOther$visitHistoryAggregate != null) {
      if (l$visitHistoryAggregate.length !=
          lOther$visitHistoryAggregate.length) {
        return false;
      }
      for (int i = 0; i < l$visitHistoryAggregate.length; i++) {
        final l$visitHistoryAggregate$entry = l$visitHistoryAggregate[i];
        final lOther$visitHistoryAggregate$entry =
            lOther$visitHistoryAggregate[i];
        if (l$visitHistoryAggregate$entry !=
            lOther$visitHistoryAggregate$entry) {
          return false;
        }
      }
    } else if (l$visitHistoryAggregate != lOther$visitHistoryAggregate) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (l$editHistoryAggregate != null && lOther$editHistoryAggregate != null) {
      if (l$editHistoryAggregate.length != lOther$editHistoryAggregate.length) {
        return false;
      }
      for (int i = 0; i < l$editHistoryAggregate.length; i++) {
        final l$editHistoryAggregate$entry = l$editHistoryAggregate[i];
        final lOther$editHistoryAggregate$entry =
            lOther$editHistoryAggregate[i];
        if (l$editHistoryAggregate$entry != lOther$editHistoryAggregate$entry) {
          return false;
        }
      }
    } else if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (l$kodasHistoryAggregate != null &&
        lOther$kodasHistoryAggregate != null) {
      if (l$kodasHistoryAggregate.length !=
          lOther$kodasHistoryAggregate.length) {
        return false;
      }
      for (int i = 0; i < l$kodasHistoryAggregate.length; i++) {
        final l$kodasHistoryAggregate$entry = l$kodasHistoryAggregate[i];
        final lOther$kodasHistoryAggregate$entry =
            lOther$kodasHistoryAggregate[i];
        if (l$kodasHistoryAggregate$entry !=
            lOther$kodasHistoryAggregate$entry) {
          return false;
        }
      }
    } else if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (l$confessionHistoryAggregate != null &&
        lOther$confessionHistoryAggregate != null) {
      if (l$confessionHistoryAggregate.length !=
          lOther$confessionHistoryAggregate.length) {
        return false;
      }
      for (int i = 0; i < l$confessionHistoryAggregate.length; i++) {
        final l$confessionHistoryAggregate$entry =
            l$confessionHistoryAggregate[i];
        final lOther$confessionHistoryAggregate$entry =
            lOther$confessionHistoryAggregate[i];
        if (l$confessionHistoryAggregate$entry !=
            lOther$confessionHistoryAggregate$entry) {
          return false;
        }
      }
    } else if (l$confessionHistoryAggregate !=
        lOther$confessionHistoryAggregate) {
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

extension UtilityExtension_Query_personHistoryAnalysis_person
    on Query_personHistoryAnalysis_person {
  CopyWith_Query_personHistoryAnalysis_person<
    Query_personHistoryAnalysis_person
  >
  get copyWith => CopyWith_Query_personHistoryAnalysis_person(this, (i) => i);
}

abstract class CopyWith_Query_personHistoryAnalysis_person<TRes> {
  factory CopyWith_Query_personHistoryAnalysis_person(
    Query_personHistoryAnalysis_person instance,
    TRes Function(Query_personHistoryAnalysis_person) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_person;

  factory CopyWith_Query_personHistoryAnalysis_person.stub(TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_person;

  TRes call({
    String? id,
    String? name,
    bool? userCanEdit,
    List<Query_personHistoryAnalysis_person_callHistoryAggregate>?
    callHistoryAggregate,
    List<Query_personHistoryAnalysis_person_visitHistoryAggregate>?
    visitHistoryAggregate,
    List<Query_personHistoryAnalysis_person_editHistoryAggregate>?
    editHistoryAggregate,
    List<Query_personHistoryAnalysis_person_kodasHistoryAggregate>?
    kodasHistoryAggregate,
    List<Query_personHistoryAnalysis_person_confessionHistoryAggregate>?
    confessionHistoryAggregate,
    String? $__typename,
  });
  TRes callHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_callHistoryAggregate>? Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate<
          Query_personHistoryAnalysis_person_callHistoryAggregate
        >
      >?,
    )
    _fn,
  );
  TRes visitHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_visitHistoryAggregate>?
    Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate<
          Query_personHistoryAnalysis_person_visitHistoryAggregate
        >
      >?,
    )
    _fn,
  );
  TRes editHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_editHistoryAggregate>? Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate<
          Query_personHistoryAnalysis_person_editHistoryAggregate
        >
      >?,
    )
    _fn,
  );
  TRes kodasHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_kodasHistoryAggregate>?
    Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
          Query_personHistoryAnalysis_person_kodasHistoryAggregate
        >
      >?,
    )
    _fn,
  );
  TRes confessionHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_confessionHistoryAggregate>?
    Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
          Query_personHistoryAnalysis_person_confessionHistoryAggregate
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_personHistoryAnalysis_person<TRes>
    implements CopyWith_Query_personHistoryAnalysis_person<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_person(this._instance, this._then);

  final Query_personHistoryAnalysis_person _instance;

  final TRes Function(Query_personHistoryAnalysis_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? userCanEdit = _undefined,
    Object? callHistoryAggregate = _undefined,
    Object? visitHistoryAggregate = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? kodasHistoryAggregate = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personHistoryAnalysis_person(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      callHistoryAggregate: callHistoryAggregate == _undefined
          ? _instance.callHistoryAggregate
          : (callHistoryAggregate
                as List<
                  Query_personHistoryAnalysis_person_callHistoryAggregate
                >?),
      visitHistoryAggregate: visitHistoryAggregate == _undefined
          ? _instance.visitHistoryAggregate
          : (visitHistoryAggregate
                as List<
                  Query_personHistoryAnalysis_person_visitHistoryAggregate
                >?),
      editHistoryAggregate: editHistoryAggregate == _undefined
          ? _instance.editHistoryAggregate
          : (editHistoryAggregate
                as List<
                  Query_personHistoryAnalysis_person_editHistoryAggregate
                >?),
      kodasHistoryAggregate: kodasHistoryAggregate == _undefined
          ? _instance.kodasHistoryAggregate
          : (kodasHistoryAggregate
                as List<
                  Query_personHistoryAnalysis_person_kodasHistoryAggregate
                >?),
      confessionHistoryAggregate: confessionHistoryAggregate == _undefined
          ? _instance.confessionHistoryAggregate
          : (confessionHistoryAggregate
                as List<
                  Query_personHistoryAnalysis_person_confessionHistoryAggregate
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes callHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_callHistoryAggregate>? Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate<
          Query_personHistoryAnalysis_person_callHistoryAggregate
        >
      >?,
    )
    _fn,
  ) => call(
    callHistoryAggregate: _fn(
      _instance.callHistoryAggregate?.map(
        (e) => CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes visitHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_visitHistoryAggregate>?
    Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate<
          Query_personHistoryAnalysis_person_visitHistoryAggregate
        >
      >?,
    )
    _fn,
  ) => call(
    visitHistoryAggregate: _fn(
      _instance.visitHistoryAggregate?.map(
        (e) =>
            CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );

  TRes editHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_editHistoryAggregate>? Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate<
          Query_personHistoryAnalysis_person_editHistoryAggregate
        >
      >?,
    )
    _fn,
  ) => call(
    editHistoryAggregate: _fn(
      _instance.editHistoryAggregate?.map(
        (e) => CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes kodasHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_kodasHistoryAggregate>?
    Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
          Query_personHistoryAnalysis_person_kodasHistoryAggregate
        >
      >?,
    )
    _fn,
  ) => call(
    kodasHistoryAggregate: _fn(
      _instance.kodasHistoryAggregate?.map(
        (e) =>
            CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );

  TRes confessionHistoryAggregate(
    Iterable<Query_personHistoryAnalysis_person_confessionHistoryAggregate>?
    Function(
      Iterable<
        CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
          Query_personHistoryAnalysis_person_confessionHistoryAggregate
        >
      >?,
    )
    _fn,
  ) => call(
    confessionHistoryAggregate: _fn(
      _instance.confessionHistoryAggregate?.map(
        (e) =>
            CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_person<TRes>
    implements CopyWith_Query_personHistoryAnalysis_person<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_person(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? userCanEdit,
    List<Query_personHistoryAnalysis_person_callHistoryAggregate>?
    callHistoryAggregate,
    List<Query_personHistoryAnalysis_person_visitHistoryAggregate>?
    visitHistoryAggregate,
    List<Query_personHistoryAnalysis_person_editHistoryAggregate>?
    editHistoryAggregate,
    List<Query_personHistoryAnalysis_person_kodasHistoryAggregate>?
    kodasHistoryAggregate,
    List<Query_personHistoryAnalysis_person_confessionHistoryAggregate>?
    confessionHistoryAggregate,
    String? $__typename,
  }) => _res;

  callHistoryAggregate(_fn) => _res;

  visitHistoryAggregate(_fn) => _res;

  editHistoryAggregate(_fn) => _res;

  kodasHistoryAggregate(_fn) => _res;

  confessionHistoryAggregate(_fn) => _res;
}

class Query_personHistoryAnalysis_person_callHistoryAggregate {
  Query_personHistoryAnalysis_person_callHistoryAggregate({
    required this.id,
    required this.time,
    this.$__typename = 'Call',
  });

  factory Query_personHistoryAnalysis_person_callHistoryAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_person_callHistoryAggregate(
      id: (l$id as String),
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personHistoryAnalysis_person_callHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Query_personHistoryAnalysis_person_callHistoryAggregate
    on Query_personHistoryAnalysis_person_callHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate<
    Query_personHistoryAnalysis_person_callHistoryAggregate
  >
  get copyWith =>
      CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate<
  TRes
> {
  factory CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate(
    Query_personHistoryAnalysis_person_callHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_person_callHistoryAggregate) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_person_callHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_personHistoryAnalysis_person_callHistoryAggregate;

  TRes call({String? id, DateTime? time, String? $__typename});
}

class _CopyWithImpl_Query_personHistoryAnalysis_person_callHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_person_callHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_person_callHistoryAggregate _instance;

  final TRes Function(Query_personHistoryAnalysis_person_callHistoryAggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personHistoryAnalysis_person_callHistoryAggregate(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_person_callHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_callHistoryAggregate<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_person_callHistoryAggregate(
    this._res,
  );

  TRes _res;

  call({String? id, DateTime? time, String? $__typename}) => _res;
}

class Query_personHistoryAnalysis_person_visitHistoryAggregate {
  Query_personHistoryAnalysis_person_visitHistoryAggregate({
    required this.id,
    required this.time,
    this.$__typename = 'Visit',
  });

  factory Query_personHistoryAnalysis_person_visitHistoryAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_person_visitHistoryAggregate(
      id: (l$id as String),
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personHistoryAnalysis_person_visitHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Query_personHistoryAnalysis_person_visitHistoryAggregate
    on Query_personHistoryAnalysis_person_visitHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate<
    Query_personHistoryAnalysis_person_visitHistoryAggregate
  >
  get copyWith =>
      CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate<
  TRes
> {
  factory CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate(
    Query_personHistoryAnalysis_person_visitHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_person_visitHistoryAggregate)
    then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_person_visitHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_personHistoryAnalysis_person_visitHistoryAggregate;

  TRes call({String? id, DateTime? time, String? $__typename});
}

class _CopyWithImpl_Query_personHistoryAnalysis_person_visitHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate<
          TRes
        > {
  _CopyWithImpl_Query_personHistoryAnalysis_person_visitHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_person_visitHistoryAggregate _instance;

  final TRes Function(Query_personHistoryAnalysis_person_visitHistoryAggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personHistoryAnalysis_person_visitHistoryAggregate(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_person_visitHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_visitHistoryAggregate<
          TRes
        > {
  _CopyWithStubImpl_Query_personHistoryAnalysis_person_visitHistoryAggregate(
    this._res,
  );

  TRes _res;

  call({String? id, DateTime? time, String? $__typename}) => _res;
}

class Query_personHistoryAnalysis_person_editHistoryAggregate {
  Query_personHistoryAnalysis_person_editHistoryAggregate({
    required this.time,
    this.$__typename = 'Edit',
  });

  factory Query_personHistoryAnalysis_person_editHistoryAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_person_editHistoryAggregate(
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personHistoryAnalysis_person_editHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Query_personHistoryAnalysis_person_editHistoryAggregate
    on Query_personHistoryAnalysis_person_editHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate<
    Query_personHistoryAnalysis_person_editHistoryAggregate
  >
  get copyWith =>
      CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate<
  TRes
> {
  factory CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate(
    Query_personHistoryAnalysis_person_editHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_person_editHistoryAggregate) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_person_editHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_personHistoryAnalysis_person_editHistoryAggregate;

  TRes call({DateTime? time, String? $__typename});
}

class _CopyWithImpl_Query_personHistoryAnalysis_person_editHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_person_editHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_person_editHistoryAggregate _instance;

  final TRes Function(Query_personHistoryAnalysis_person_editHistoryAggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? time = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_personHistoryAnalysis_person_editHistoryAggregate(
          time: time == _undefined || time == null
              ? _instance.time
              : (time as DateTime),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_person_editHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_editHistoryAggregate<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_person_editHistoryAggregate(
    this._res,
  );

  TRes _res;

  call({DateTime? time, String? $__typename}) => _res;
}

class Query_personHistoryAnalysis_person_kodasHistoryAggregate {
  Query_personHistoryAnalysis_person_kodasHistoryAggregate({
    required this.id,
    this.time,
    this.$__typename = 'Kodas',
  });

  factory Query_personHistoryAnalysis_person_kodasHistoryAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_person_kodasHistoryAggregate(
      id: (l$id as String),
      time: l$time == null ? null : dateFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personHistoryAnalysis_person_kodasHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Query_personHistoryAnalysis_person_kodasHistoryAggregate
    on Query_personHistoryAnalysis_person_kodasHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
    Query_personHistoryAnalysis_person_kodasHistoryAggregate
  >
  get copyWith =>
      CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
  TRes
> {
  factory CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate(
    Query_personHistoryAnalysis_person_kodasHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_person_kodasHistoryAggregate)
    then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_person_kodasHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_personHistoryAnalysis_person_kodasHistoryAggregate;

  TRes call({String? id, DateTime? time, String? $__typename});
}

class _CopyWithImpl_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
          TRes
        > {
  _CopyWithImpl_Query_personHistoryAnalysis_person_kodasHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_person_kodasHistoryAggregate _instance;

  final TRes Function(Query_personHistoryAnalysis_person_kodasHistoryAggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personHistoryAnalysis_person_kodasHistoryAggregate(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_kodasHistoryAggregate<
          TRes
        > {
  _CopyWithStubImpl_Query_personHistoryAnalysis_person_kodasHistoryAggregate(
    this._res,
  );

  TRes _res;

  call({String? id, DateTime? time, String? $__typename}) => _res;
}

class Query_personHistoryAnalysis_person_confessionHistoryAggregate {
  Query_personHistoryAnalysis_person_confessionHistoryAggregate({
    required this.id,
    this.time,
    this.$__typename = 'Confession',
  });

  factory Query_personHistoryAnalysis_person_confessionHistoryAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_person_confessionHistoryAggregate(
      id: (l$id as String),
      time: l$time == null ? null : dateFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_personHistoryAnalysis_person_confessionHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Query_personHistoryAnalysis_person_confessionHistoryAggregate
    on Query_personHistoryAnalysis_person_confessionHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
    Query_personHistoryAnalysis_person_confessionHistoryAggregate
  >
  get copyWith =>
      CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
  TRes
> {
  factory CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate(
    Query_personHistoryAnalysis_person_confessionHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_person_confessionHistoryAggregate)
    then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_person_confessionHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_personHistoryAnalysis_person_confessionHistoryAggregate;

  TRes call({String? id, DateTime? time, String? $__typename});
}

class _CopyWithImpl_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
          TRes
        > {
  _CopyWithImpl_Query_personHistoryAnalysis_person_confessionHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_person_confessionHistoryAggregate _instance;

  final TRes Function(
    Query_personHistoryAnalysis_person_confessionHistoryAggregate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personHistoryAnalysis_person_confessionHistoryAggregate(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
  TRes
>
    implements
        CopyWith_Query_personHistoryAnalysis_person_confessionHistoryAggregate<
          TRes
        > {
  _CopyWithStubImpl_Query_personHistoryAnalysis_person_confessionHistoryAggregate(
    this._res,
  );

  TRes _res;

  call({String? id, DateTime? time, String? $__typename}) => _res;
}

class Variables_Query_familyUnclaimedContacts {
  factory Variables_Query_familyUnclaimedContacts({
    Input_FamilyContactFilterInput? filter,
    int? first,
  }) => Variables_Query_familyUnclaimedContacts._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
  });

  Variables_Query_familyUnclaimedContacts._(this._$data);

  factory Variables_Query_familyUnclaimedContacts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_FamilyContactFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    return Variables_Query_familyUnclaimedContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamilyContactFilterInput? get filter =>
      (_$data['filter'] as Input_FamilyContactFilterInput?);

  int? get first => (_$data['first'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    return result$data;
  }

  CopyWith_Variables_Query_familyUnclaimedContacts<
    Variables_Query_familyUnclaimedContacts
  >
  get copyWith =>
      CopyWith_Variables_Query_familyUnclaimedContacts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_familyUnclaimedContacts ||
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
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$first = first;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_familyUnclaimedContacts<TRes> {
  factory CopyWith_Variables_Query_familyUnclaimedContacts(
    Variables_Query_familyUnclaimedContacts instance,
    TRes Function(Variables_Query_familyUnclaimedContacts) then,
  ) = _CopyWithImpl_Variables_Query_familyUnclaimedContacts;

  factory CopyWith_Variables_Query_familyUnclaimedContacts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_familyUnclaimedContacts;

  TRes call({Input_FamilyContactFilterInput? filter, int? first});
}

class _CopyWithImpl_Variables_Query_familyUnclaimedContacts<TRes>
    implements CopyWith_Variables_Query_familyUnclaimedContacts<TRes> {
  _CopyWithImpl_Variables_Query_familyUnclaimedContacts(
    this._instance,
    this._then,
  );

  final Variables_Query_familyUnclaimedContacts _instance;

  final TRes Function(Variables_Query_familyUnclaimedContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined, Object? first = _undefined}) => _then(
    Variables_Query_familyUnclaimedContacts._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_FamilyContactFilterInput?),
      if (first != _undefined) 'first': (first as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_familyUnclaimedContacts<TRes>
    implements CopyWith_Variables_Query_familyUnclaimedContacts<TRes> {
  _CopyWithStubImpl_Variables_Query_familyUnclaimedContacts(this._res);

  TRes _res;

  call({Input_FamilyContactFilterInput? filter, int? first}) => _res;
}

class Query_familyUnclaimedContacts {
  Query_familyUnclaimedContacts({
    this.familyContacts,
    this.$__typename = 'RootQueryType',
  });

  factory Query_familyUnclaimedContacts.fromJson(Map<String, dynamic> json) {
    final l$familyContacts = json['familyContacts'];
    final l$$__typename = json['__typename'];
    return Query_familyUnclaimedContacts(
      familyContacts: l$familyContacts == null
          ? null
          : Query_familyUnclaimedContacts_familyContacts.fromJson(
              (l$familyContacts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_familyUnclaimedContacts_familyContacts? familyContacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familyContacts = familyContacts;
    _resultData['familyContacts'] = l$familyContacts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familyContacts = familyContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$familyContacts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyUnclaimedContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyContacts = familyContacts;
    final lOther$familyContacts = other.familyContacts;
    if (l$familyContacts != lOther$familyContacts) {
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

extension UtilityExtension_Query_familyUnclaimedContacts
    on Query_familyUnclaimedContacts {
  CopyWith_Query_familyUnclaimedContacts<Query_familyUnclaimedContacts>
  get copyWith => CopyWith_Query_familyUnclaimedContacts(this, (i) => i);
}

abstract class CopyWith_Query_familyUnclaimedContacts<TRes> {
  factory CopyWith_Query_familyUnclaimedContacts(
    Query_familyUnclaimedContacts instance,
    TRes Function(Query_familyUnclaimedContacts) then,
  ) = _CopyWithImpl_Query_familyUnclaimedContacts;

  factory CopyWith_Query_familyUnclaimedContacts.stub(TRes res) =
      _CopyWithStubImpl_Query_familyUnclaimedContacts;

  TRes call({
    Query_familyUnclaimedContacts_familyContacts? familyContacts,
    String? $__typename,
  });
  CopyWith_Query_familyUnclaimedContacts_familyContacts<TRes>
  get familyContacts;
}

class _CopyWithImpl_Query_familyUnclaimedContacts<TRes>
    implements CopyWith_Query_familyUnclaimedContacts<TRes> {
  _CopyWithImpl_Query_familyUnclaimedContacts(this._instance, this._then);

  final Query_familyUnclaimedContacts _instance;

  final TRes Function(Query_familyUnclaimedContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyContacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_familyUnclaimedContacts(
      familyContacts: familyContacts == _undefined
          ? _instance.familyContacts
          : (familyContacts as Query_familyUnclaimedContacts_familyContacts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_familyUnclaimedContacts_familyContacts<TRes>
  get familyContacts {
    final local$familyContacts = _instance.familyContacts;
    return local$familyContacts == null
        ? CopyWith_Query_familyUnclaimedContacts_familyContacts.stub(
            _then(_instance),
          )
        : CopyWith_Query_familyUnclaimedContacts_familyContacts(
            local$familyContacts,
            (e) => call(familyContacts: e),
          );
  }
}

class _CopyWithStubImpl_Query_familyUnclaimedContacts<TRes>
    implements CopyWith_Query_familyUnclaimedContacts<TRes> {
  _CopyWithStubImpl_Query_familyUnclaimedContacts(this._res);

  TRes _res;

  call({
    Query_familyUnclaimedContacts_familyContacts? familyContacts,
    String? $__typename,
  }) => _res;

  CopyWith_Query_familyUnclaimedContacts_familyContacts<TRes>
  get familyContacts =>
      CopyWith_Query_familyUnclaimedContacts_familyContacts.stub(_res);
}

const documentNodeQueryfamilyUnclaimedContacts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'familyUnclaimedContacts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamilyContactFilterInput'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'familyContacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'FamilyContact'),
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
    fragmentDefinitionFamilyContact,
    fragmentDefinitionPersonType,
  ],
);

class Query_familyUnclaimedContacts_familyContacts {
  Query_familyUnclaimedContacts_familyContacts({
    this.results,
    this.$__typename = 'KeysetPageOfFamilyContact',
  });

  factory Query_familyUnclaimedContacts_familyContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_familyUnclaimedContacts_familyContacts(
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_FamilyContact.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_FamilyContact>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyUnclaimedContacts_familyContacts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_familyUnclaimedContacts_familyContacts
    on Query_familyUnclaimedContacts_familyContacts {
  CopyWith_Query_familyUnclaimedContacts_familyContacts<
    Query_familyUnclaimedContacts_familyContacts
  >
  get copyWith =>
      CopyWith_Query_familyUnclaimedContacts_familyContacts(this, (i) => i);
}

abstract class CopyWith_Query_familyUnclaimedContacts_familyContacts<TRes> {
  factory CopyWith_Query_familyUnclaimedContacts_familyContacts(
    Query_familyUnclaimedContacts_familyContacts instance,
    TRes Function(Query_familyUnclaimedContacts_familyContacts) then,
  ) = _CopyWithImpl_Query_familyUnclaimedContacts_familyContacts;

  factory CopyWith_Query_familyUnclaimedContacts_familyContacts.stub(TRes res) =
      _CopyWithStubImpl_Query_familyUnclaimedContacts_familyContacts;

  TRes call({List<Fragment_FamilyContact>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_FamilyContact>? Function(
      Iterable<CopyWith_Fragment_FamilyContact<Fragment_FamilyContact>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_familyUnclaimedContacts_familyContacts<TRes>
    implements CopyWith_Query_familyUnclaimedContacts_familyContacts<TRes> {
  _CopyWithImpl_Query_familyUnclaimedContacts_familyContacts(
    this._instance,
    this._then,
  );

  final Query_familyUnclaimedContacts_familyContacts _instance;

  final TRes Function(Query_familyUnclaimedContacts_familyContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_familyUnclaimedContacts_familyContacts(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_FamilyContact>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_FamilyContact>? Function(
      Iterable<CopyWith_Fragment_FamilyContact<Fragment_FamilyContact>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_FamilyContact(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_familyUnclaimedContacts_familyContacts<TRes>
    implements CopyWith_Query_familyUnclaimedContacts_familyContacts<TRes> {
  _CopyWithStubImpl_Query_familyUnclaimedContacts_familyContacts(this._res);

  TRes _res;

  call({List<Fragment_FamilyContact>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Variables_Query_geolocatedAreas {
  factory Variables_Query_geolocatedAreas({
    Input_AreaFilterInput? filter,
    int? first,
    String? after,
  }) => Variables_Query_geolocatedAreas._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_geolocatedAreas._(this._$data);

  factory Variables_Query_geolocatedAreas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_AreaFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_geolocatedAreas._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreaFilterInput? get filter =>
      (_$data['filter'] as Input_AreaFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
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

  CopyWith_Variables_Query_geolocatedAreas<Variables_Query_geolocatedAreas>
  get copyWith => CopyWith_Variables_Query_geolocatedAreas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_geolocatedAreas ||
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
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_geolocatedAreas<TRes> {
  factory CopyWith_Variables_Query_geolocatedAreas(
    Variables_Query_geolocatedAreas instance,
    TRes Function(Variables_Query_geolocatedAreas) then,
  ) = _CopyWithImpl_Variables_Query_geolocatedAreas;

  factory CopyWith_Variables_Query_geolocatedAreas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_geolocatedAreas;

  TRes call({Input_AreaFilterInput? filter, int? first, String? after});
}

class _CopyWithImpl_Variables_Query_geolocatedAreas<TRes>
    implements CopyWith_Variables_Query_geolocatedAreas<TRes> {
  _CopyWithImpl_Variables_Query_geolocatedAreas(this._instance, this._then);

  final Variables_Query_geolocatedAreas _instance;

  final TRes Function(Variables_Query_geolocatedAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_geolocatedAreas._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_AreaFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_geolocatedAreas<TRes>
    implements CopyWith_Variables_Query_geolocatedAreas<TRes> {
  _CopyWithStubImpl_Variables_Query_geolocatedAreas(this._res);

  TRes _res;

  call({Input_AreaFilterInput? filter, int? first, String? after}) => _res;
}

class Query_geolocatedAreas {
  Query_geolocatedAreas({this.areas, this.$__typename = 'RootQueryType'});

  factory Query_geolocatedAreas.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedAreas(
      areas: l$areas == null
          ? null
          : Query_geolocatedAreas_areas.fromJson(
              (l$areas as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_geolocatedAreas_areas? areas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areas = areas;
    _resultData['areas'] = l$areas?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areas = areas;
    final l$$__typename = $__typename;
    return Object.hashAll([l$areas, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedAreas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != lOther$areas) {
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

extension UtilityExtension_Query_geolocatedAreas on Query_geolocatedAreas {
  CopyWith_Query_geolocatedAreas<Query_geolocatedAreas> get copyWith =>
      CopyWith_Query_geolocatedAreas(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedAreas<TRes> {
  factory CopyWith_Query_geolocatedAreas(
    Query_geolocatedAreas instance,
    TRes Function(Query_geolocatedAreas) then,
  ) = _CopyWithImpl_Query_geolocatedAreas;

  factory CopyWith_Query_geolocatedAreas.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedAreas;

  TRes call({Query_geolocatedAreas_areas? areas, String? $__typename});
  CopyWith_Query_geolocatedAreas_areas<TRes> get areas;
}

class _CopyWithImpl_Query_geolocatedAreas<TRes>
    implements CopyWith_Query_geolocatedAreas<TRes> {
  _CopyWithImpl_Query_geolocatedAreas(this._instance, this._then);

  final Query_geolocatedAreas _instance;

  final TRes Function(Query_geolocatedAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areas = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_geolocatedAreas(
          areas: areas == _undefined
              ? _instance.areas
              : (areas as Query_geolocatedAreas_areas?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_geolocatedAreas_areas<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Query_geolocatedAreas_areas.stub(_then(_instance))
        : CopyWith_Query_geolocatedAreas_areas(
            local$areas,
            (e) => call(areas: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedAreas<TRes>
    implements CopyWith_Query_geolocatedAreas<TRes> {
  _CopyWithStubImpl_Query_geolocatedAreas(this._res);

  TRes _res;

  call({Query_geolocatedAreas_areas? areas, String? $__typename}) => _res;

  CopyWith_Query_geolocatedAreas_areas<TRes> get areas =>
      CopyWith_Query_geolocatedAreas_areas.stub(_res);
}

const documentNodeQuerygeolocatedAreas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'geolocatedAreas'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'AreaFilterInput'),
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
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(value: 'AreaWithBounds'),
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
    fragmentDefinitionAreaWithBounds,
    fragmentDefinitionArea,
  ],
);

class Query_geolocatedAreas_areas {
  Query_geolocatedAreas_areas({
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfArea',
  });

  factory Query_geolocatedAreas_areas.fromJson(Map<String, dynamic> json) {
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedAreas_areas(
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment_AreaWithBounds.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endKeyset;

  final List<Fragment_AreaWithBounds>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query_geolocatedAreas_areas ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_geolocatedAreas_areas
    on Query_geolocatedAreas_areas {
  CopyWith_Query_geolocatedAreas_areas<Query_geolocatedAreas_areas>
  get copyWith => CopyWith_Query_geolocatedAreas_areas(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedAreas_areas<TRes> {
  factory CopyWith_Query_geolocatedAreas_areas(
    Query_geolocatedAreas_areas instance,
    TRes Function(Query_geolocatedAreas_areas) then,
  ) = _CopyWithImpl_Query_geolocatedAreas_areas;

  factory CopyWith_Query_geolocatedAreas_areas.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedAreas_areas;

  TRes call({
    String? endKeyset,
    List<Fragment_AreaWithBounds>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_AreaWithBounds>? Function(
      Iterable<CopyWith_Fragment_AreaWithBounds<Fragment_AreaWithBounds>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_geolocatedAreas_areas<TRes>
    implements CopyWith_Query_geolocatedAreas_areas<TRes> {
  _CopyWithImpl_Query_geolocatedAreas_areas(this._instance, this._then);

  final Query_geolocatedAreas_areas _instance;

  final TRes Function(Query_geolocatedAreas_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedAreas_areas(
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_AreaWithBounds>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_AreaWithBounds>? Function(
      Iterable<CopyWith_Fragment_AreaWithBounds<Fragment_AreaWithBounds>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_AreaWithBounds(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_geolocatedAreas_areas<TRes>
    implements CopyWith_Query_geolocatedAreas_areas<TRes> {
  _CopyWithStubImpl_Query_geolocatedAreas_areas(this._res);

  TRes _res;

  call({
    String? endKeyset,
    List<Fragment_AreaWithBounds>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_geolocatedStreets {
  factory Variables_Query_geolocatedStreets({
    Input_StreetFilterInput? filter,
    int? first,
    String? after,
  }) => Variables_Query_geolocatedStreets._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_geolocatedStreets._(this._$data);

  factory Variables_Query_geolocatedStreets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_StreetFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_geolocatedStreets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetFilterInput? get filter =>
      (_$data['filter'] as Input_StreetFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
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

  CopyWith_Variables_Query_geolocatedStreets<Variables_Query_geolocatedStreets>
  get copyWith => CopyWith_Variables_Query_geolocatedStreets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_geolocatedStreets ||
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
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_geolocatedStreets<TRes> {
  factory CopyWith_Variables_Query_geolocatedStreets(
    Variables_Query_geolocatedStreets instance,
    TRes Function(Variables_Query_geolocatedStreets) then,
  ) = _CopyWithImpl_Variables_Query_geolocatedStreets;

  factory CopyWith_Variables_Query_geolocatedStreets.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_geolocatedStreets;

  TRes call({Input_StreetFilterInput? filter, int? first, String? after});
}

class _CopyWithImpl_Variables_Query_geolocatedStreets<TRes>
    implements CopyWith_Variables_Query_geolocatedStreets<TRes> {
  _CopyWithImpl_Variables_Query_geolocatedStreets(this._instance, this._then);

  final Variables_Query_geolocatedStreets _instance;

  final TRes Function(Variables_Query_geolocatedStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_geolocatedStreets._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_StreetFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_geolocatedStreets<TRes>
    implements CopyWith_Variables_Query_geolocatedStreets<TRes> {
  _CopyWithStubImpl_Variables_Query_geolocatedStreets(this._res);

  TRes _res;

  call({Input_StreetFilterInput? filter, int? first, String? after}) => _res;
}

class Query_geolocatedStreets {
  Query_geolocatedStreets({this.streets, this.$__typename = 'RootQueryType'});

  factory Query_geolocatedStreets.fromJson(Map<String, dynamic> json) {
    final l$streets = json['streets'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedStreets(
      streets: l$streets == null
          ? null
          : Query_geolocatedStreets_streets.fromJson(
              (l$streets as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_geolocatedStreets_streets? streets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$streets = streets;
    _resultData['streets'] = l$streets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$streets = streets;
    final l$$__typename = $__typename;
    return Object.hashAll([l$streets, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedStreets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != lOther$streets) {
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

extension UtilityExtension_Query_geolocatedStreets on Query_geolocatedStreets {
  CopyWith_Query_geolocatedStreets<Query_geolocatedStreets> get copyWith =>
      CopyWith_Query_geolocatedStreets(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedStreets<TRes> {
  factory CopyWith_Query_geolocatedStreets(
    Query_geolocatedStreets instance,
    TRes Function(Query_geolocatedStreets) then,
  ) = _CopyWithImpl_Query_geolocatedStreets;

  factory CopyWith_Query_geolocatedStreets.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedStreets;

  TRes call({Query_geolocatedStreets_streets? streets, String? $__typename});
  CopyWith_Query_geolocatedStreets_streets<TRes> get streets;
}

class _CopyWithImpl_Query_geolocatedStreets<TRes>
    implements CopyWith_Query_geolocatedStreets<TRes> {
  _CopyWithImpl_Query_geolocatedStreets(this._instance, this._then);

  final Query_geolocatedStreets _instance;

  final TRes Function(Query_geolocatedStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streets = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_geolocatedStreets(
          streets: streets == _undefined
              ? _instance.streets
              : (streets as Query_geolocatedStreets_streets?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_geolocatedStreets_streets<TRes> get streets {
    final local$streets = _instance.streets;
    return local$streets == null
        ? CopyWith_Query_geolocatedStreets_streets.stub(_then(_instance))
        : CopyWith_Query_geolocatedStreets_streets(
            local$streets,
            (e) => call(streets: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedStreets<TRes>
    implements CopyWith_Query_geolocatedStreets<TRes> {
  _CopyWithStubImpl_Query_geolocatedStreets(this._res);

  TRes _res;

  call({Query_geolocatedStreets_streets? streets, String? $__typename}) => _res;

  CopyWith_Query_geolocatedStreets_streets<TRes> get streets =>
      CopyWith_Query_geolocatedStreets_streets.stub(_res);
}

const documentNodeQuerygeolocatedStreets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'geolocatedStreets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'StreetFilterInput'),
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
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(value: 'StreetWithLine'),
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
    fragmentDefinitionStreetWithLine,
    fragmentDefinitionStreet,
  ],
);

class Query_geolocatedStreets_streets {
  Query_geolocatedStreets_streets({
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfStreet',
  });

  factory Query_geolocatedStreets_streets.fromJson(Map<String, dynamic> json) {
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedStreets_streets(
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment_StreetWithLine.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endKeyset;

  final List<Fragment_StreetWithLine>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query_geolocatedStreets_streets ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_geolocatedStreets_streets
    on Query_geolocatedStreets_streets {
  CopyWith_Query_geolocatedStreets_streets<Query_geolocatedStreets_streets>
  get copyWith => CopyWith_Query_geolocatedStreets_streets(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedStreets_streets<TRes> {
  factory CopyWith_Query_geolocatedStreets_streets(
    Query_geolocatedStreets_streets instance,
    TRes Function(Query_geolocatedStreets_streets) then,
  ) = _CopyWithImpl_Query_geolocatedStreets_streets;

  factory CopyWith_Query_geolocatedStreets_streets.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedStreets_streets;

  TRes call({
    String? endKeyset,
    List<Fragment_StreetWithLine>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_StreetWithLine>? Function(
      Iterable<CopyWith_Fragment_StreetWithLine<Fragment_StreetWithLine>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_geolocatedStreets_streets<TRes>
    implements CopyWith_Query_geolocatedStreets_streets<TRes> {
  _CopyWithImpl_Query_geolocatedStreets_streets(this._instance, this._then);

  final Query_geolocatedStreets_streets _instance;

  final TRes Function(Query_geolocatedStreets_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedStreets_streets(
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_StreetWithLine>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_StreetWithLine>? Function(
      Iterable<CopyWith_Fragment_StreetWithLine<Fragment_StreetWithLine>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_StreetWithLine(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_geolocatedStreets_streets<TRes>
    implements CopyWith_Query_geolocatedStreets_streets<TRes> {
  _CopyWithStubImpl_Query_geolocatedStreets_streets(this._res);

  TRes _res;

  call({
    String? endKeyset,
    List<Fragment_StreetWithLine>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_geolocatedFamilies {
  factory Variables_Query_geolocatedFamilies({
    Input_FamilyFilterInput? filter,
    int? first,
    String? after,
  }) => Variables_Query_geolocatedFamilies._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_geolocatedFamilies._(this._$data);

  factory Variables_Query_geolocatedFamilies.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_geolocatedFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamilyFilterInput? get filter =>
      (_$data['filter'] as Input_FamilyFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
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

  CopyWith_Variables_Query_geolocatedFamilies<
    Variables_Query_geolocatedFamilies
  >
  get copyWith => CopyWith_Variables_Query_geolocatedFamilies(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_geolocatedFamilies ||
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
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_geolocatedFamilies<TRes> {
  factory CopyWith_Variables_Query_geolocatedFamilies(
    Variables_Query_geolocatedFamilies instance,
    TRes Function(Variables_Query_geolocatedFamilies) then,
  ) = _CopyWithImpl_Variables_Query_geolocatedFamilies;

  factory CopyWith_Variables_Query_geolocatedFamilies.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_geolocatedFamilies;

  TRes call({Input_FamilyFilterInput? filter, int? first, String? after});
}

class _CopyWithImpl_Variables_Query_geolocatedFamilies<TRes>
    implements CopyWith_Variables_Query_geolocatedFamilies<TRes> {
  _CopyWithImpl_Variables_Query_geolocatedFamilies(this._instance, this._then);

  final Variables_Query_geolocatedFamilies _instance;

  final TRes Function(Variables_Query_geolocatedFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_geolocatedFamilies._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_FamilyFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_geolocatedFamilies<TRes>
    implements CopyWith_Variables_Query_geolocatedFamilies<TRes> {
  _CopyWithStubImpl_Variables_Query_geolocatedFamilies(this._res);

  TRes _res;

  call({Input_FamilyFilterInput? filter, int? first, String? after}) => _res;
}

class Query_geolocatedFamilies {
  Query_geolocatedFamilies({this.families, this.$__typename = 'RootQueryType'});

  factory Query_geolocatedFamilies.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedFamilies(
      families: l$families == null
          ? null
          : Query_geolocatedFamilies_families.fromJson(
              (l$families as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_geolocatedFamilies_families? families;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$families = families;
    _resultData['families'] = l$families?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$families = families;
    final l$$__typename = $__typename;
    return Object.hashAll([l$families, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedFamilies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families != lOther$families) {
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

extension UtilityExtension_Query_geolocatedFamilies
    on Query_geolocatedFamilies {
  CopyWith_Query_geolocatedFamilies<Query_geolocatedFamilies> get copyWith =>
      CopyWith_Query_geolocatedFamilies(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedFamilies<TRes> {
  factory CopyWith_Query_geolocatedFamilies(
    Query_geolocatedFamilies instance,
    TRes Function(Query_geolocatedFamilies) then,
  ) = _CopyWithImpl_Query_geolocatedFamilies;

  factory CopyWith_Query_geolocatedFamilies.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedFamilies;

  TRes call({Query_geolocatedFamilies_families? families, String? $__typename});
  CopyWith_Query_geolocatedFamilies_families<TRes> get families;
}

class _CopyWithImpl_Query_geolocatedFamilies<TRes>
    implements CopyWith_Query_geolocatedFamilies<TRes> {
  _CopyWithImpl_Query_geolocatedFamilies(this._instance, this._then);

  final Query_geolocatedFamilies _instance;

  final TRes Function(Query_geolocatedFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? families = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedFamilies(
      families: families == _undefined
          ? _instance.families
          : (families as Query_geolocatedFamilies_families?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_geolocatedFamilies_families<TRes> get families {
    final local$families = _instance.families;
    return local$families == null
        ? CopyWith_Query_geolocatedFamilies_families.stub(_then(_instance))
        : CopyWith_Query_geolocatedFamilies_families(
            local$families,
            (e) => call(families: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedFamilies<TRes>
    implements CopyWith_Query_geolocatedFamilies<TRes> {
  _CopyWithStubImpl_Query_geolocatedFamilies(this._res);

  TRes _res;

  call({Query_geolocatedFamilies_families? families, String? $__typename}) =>
      _res;

  CopyWith_Query_geolocatedFamilies_families<TRes> get families =>
      CopyWith_Query_geolocatedFamilies_families.stub(_res);
}

const documentNodeQuerygeolocatedFamilies = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'geolocatedFamilies'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamilyFilterInput'),
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
            name: NameNode(value: 'families'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(value: 'PersonFamily'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'address'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'geolocation'),
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
    fragmentDefinitionPersonFamily,
    fragmentDefinitionDataCheck,
  ],
);

class Query_geolocatedFamilies_families {
  Query_geolocatedFamilies_families({
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfFamily',
  });

  factory Query_geolocatedFamilies_families.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedFamilies_families(
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_geolocatedFamilies_families_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endKeyset;

  final List<Query_geolocatedFamilies_families_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query_geolocatedFamilies_families ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_geolocatedFamilies_families
    on Query_geolocatedFamilies_families {
  CopyWith_Query_geolocatedFamilies_families<Query_geolocatedFamilies_families>
  get copyWith => CopyWith_Query_geolocatedFamilies_families(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedFamilies_families<TRes> {
  factory CopyWith_Query_geolocatedFamilies_families(
    Query_geolocatedFamilies_families instance,
    TRes Function(Query_geolocatedFamilies_families) then,
  ) = _CopyWithImpl_Query_geolocatedFamilies_families;

  factory CopyWith_Query_geolocatedFamilies_families.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedFamilies_families;

  TRes call({
    String? endKeyset,
    List<Query_geolocatedFamilies_families_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_geolocatedFamilies_families_results>? Function(
      Iterable<
        CopyWith_Query_geolocatedFamilies_families_results<
          Query_geolocatedFamilies_families_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_geolocatedFamilies_families<TRes>
    implements CopyWith_Query_geolocatedFamilies_families<TRes> {
  _CopyWithImpl_Query_geolocatedFamilies_families(this._instance, this._then);

  final Query_geolocatedFamilies_families _instance;

  final TRes Function(Query_geolocatedFamilies_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedFamilies_families(
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_geolocatedFamilies_families_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_geolocatedFamilies_families_results>? Function(
      Iterable<
        CopyWith_Query_geolocatedFamilies_families_results<
          Query_geolocatedFamilies_families_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_geolocatedFamilies_families_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_geolocatedFamilies_families<TRes>
    implements CopyWith_Query_geolocatedFamilies_families<TRes> {
  _CopyWithStubImpl_Query_geolocatedFamilies_families(this._res);

  TRes _res;

  call({
    String? endKeyset,
    List<Query_geolocatedFamilies_families_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_geolocatedFamilies_families_results
    implements Fragment_PersonFamily {
  Query_geolocatedFamilies_families_results({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
    this.address,
  });

  factory Query_geolocatedFamilies_families_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    final l$address = json['address'];
    return Query_geolocatedFamilies_families_results(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      address: l$address == null
          ? null
          : Query_geolocatedFamilies_families_results_address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final String $__typename;

  final Query_geolocatedFamilies_families_results_address? address;

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
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
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
    final l$dataCheck = dataCheck;
    final l$$__typename = $__typename;
    final l$address = address;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
      l$address,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedFamilies_families_results ||
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_geolocatedFamilies_families_results
    on Query_geolocatedFamilies_families_results {
  CopyWith_Query_geolocatedFamilies_families_results<
    Query_geolocatedFamilies_families_results
  >
  get copyWith =>
      CopyWith_Query_geolocatedFamilies_families_results(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedFamilies_families_results<TRes> {
  factory CopyWith_Query_geolocatedFamilies_families_results(
    Query_geolocatedFamilies_families_results instance,
    TRes Function(Query_geolocatedFamilies_families_results) then,
  ) = _CopyWithImpl_Query_geolocatedFamilies_families_results;

  factory CopyWith_Query_geolocatedFamilies_families_results.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedFamilies_families_results;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    Query_geolocatedFamilies_families_results_address? address,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Query_geolocatedFamilies_families_results_address<TRes> get address;
}

class _CopyWithImpl_Query_geolocatedFamilies_families_results<TRes>
    implements CopyWith_Query_geolocatedFamilies_families_results<TRes> {
  _CopyWithImpl_Query_geolocatedFamilies_families_results(
    this._instance,
    this._then,
  );

  final Query_geolocatedFamilies_families_results _instance;

  final TRes Function(Query_geolocatedFamilies_families_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? $__typename = _undefined,
    Object? address = _undefined,
  }) => _then(
    Query_geolocatedFamilies_families_results(
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
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      address: address == _undefined
          ? _instance.address
          : (address as Query_geolocatedFamilies_families_results_address?),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Query_geolocatedFamilies_families_results_address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Query_geolocatedFamilies_families_results_address.stub(
            _then(_instance),
          )
        : CopyWith_Query_geolocatedFamilies_families_results_address(
            local$address,
            (e) => call(address: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedFamilies_families_results<TRes>
    implements CopyWith_Query_geolocatedFamilies_families_results<TRes> {
  _CopyWithStubImpl_Query_geolocatedFamilies_families_results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    Query_geolocatedFamilies_families_results_address? address,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Query_geolocatedFamilies_families_results_address<TRes>
  get address =>
      CopyWith_Query_geolocatedFamilies_families_results_address.stub(_res);
}

class Query_geolocatedFamilies_families_results_address {
  Query_geolocatedFamilies_families_results_address({
    required this.id,
    this.geolocation,
    this.$__typename = 'Address',
  });

  factory Query_geolocatedFamilies_families_results_address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$geolocation = json['geolocation'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedFamilies_families_results_address(
      id: (l$id as String),
      geolocation: (l$geolocation as Json?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Json? geolocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$geolocation = geolocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$geolocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedFamilies_families_results_address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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

extension UtilityExtension_Query_geolocatedFamilies_families_results_address
    on Query_geolocatedFamilies_families_results_address {
  CopyWith_Query_geolocatedFamilies_families_results_address<
    Query_geolocatedFamilies_families_results_address
  >
  get copyWith => CopyWith_Query_geolocatedFamilies_families_results_address(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Query_geolocatedFamilies_families_results_address<
  TRes
> {
  factory CopyWith_Query_geolocatedFamilies_families_results_address(
    Query_geolocatedFamilies_families_results_address instance,
    TRes Function(Query_geolocatedFamilies_families_results_address) then,
  ) = _CopyWithImpl_Query_geolocatedFamilies_families_results_address;

  factory CopyWith_Query_geolocatedFamilies_families_results_address.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_geolocatedFamilies_families_results_address;

  TRes call({String? id, Json? geolocation, String? $__typename});
}

class _CopyWithImpl_Query_geolocatedFamilies_families_results_address<TRes>
    implements
        CopyWith_Query_geolocatedFamilies_families_results_address<TRes> {
  _CopyWithImpl_Query_geolocatedFamilies_families_results_address(
    this._instance,
    this._then,
  );

  final Query_geolocatedFamilies_families_results_address _instance;

  final TRes Function(Query_geolocatedFamilies_families_results_address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? geolocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedFamilies_families_results_address(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      geolocation: geolocation == _undefined
          ? _instance.geolocation
          : (geolocation as Json?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_geolocatedFamilies_families_results_address<TRes>
    implements
        CopyWith_Query_geolocatedFamilies_families_results_address<TRes> {
  _CopyWithStubImpl_Query_geolocatedFamilies_families_results_address(
    this._res,
  );

  TRes _res;

  call({String? id, Json? geolocation, String? $__typename}) => _res;
}

class Variables_Query_geolocatedStores {
  factory Variables_Query_geolocatedStores({
    Input_StoreFilterInput? filter,
    int? first,
    String? after,
  }) => Variables_Query_geolocatedStores._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_geolocatedStores._(this._$data);

  factory Variables_Query_geolocatedStores.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_StoreFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_geolocatedStores._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoreFilterInput? get filter =>
      (_$data['filter'] as Input_StoreFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
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

  CopyWith_Variables_Query_geolocatedStores<Variables_Query_geolocatedStores>
  get copyWith => CopyWith_Variables_Query_geolocatedStores(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_geolocatedStores ||
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
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_geolocatedStores<TRes> {
  factory CopyWith_Variables_Query_geolocatedStores(
    Variables_Query_geolocatedStores instance,
    TRes Function(Variables_Query_geolocatedStores) then,
  ) = _CopyWithImpl_Variables_Query_geolocatedStores;

  factory CopyWith_Variables_Query_geolocatedStores.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_geolocatedStores;

  TRes call({Input_StoreFilterInput? filter, int? first, String? after});
}

class _CopyWithImpl_Variables_Query_geolocatedStores<TRes>
    implements CopyWith_Variables_Query_geolocatedStores<TRes> {
  _CopyWithImpl_Variables_Query_geolocatedStores(this._instance, this._then);

  final Variables_Query_geolocatedStores _instance;

  final TRes Function(Variables_Query_geolocatedStores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_geolocatedStores._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_StoreFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_geolocatedStores<TRes>
    implements CopyWith_Variables_Query_geolocatedStores<TRes> {
  _CopyWithStubImpl_Variables_Query_geolocatedStores(this._res);

  TRes _res;

  call({Input_StoreFilterInput? filter, int? first, String? after}) => _res;
}

class Query_geolocatedStores {
  Query_geolocatedStores({this.stores, this.$__typename = 'RootQueryType'});

  factory Query_geolocatedStores.fromJson(Map<String, dynamic> json) {
    final l$stores = json['stores'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedStores(
      stores: l$stores == null
          ? null
          : Query_geolocatedStores_stores.fromJson(
              (l$stores as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_geolocatedStores_stores? stores;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stores = stores;
    _resultData['stores'] = l$stores?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stores = stores;
    final l$$__typename = $__typename;
    return Object.hashAll([l$stores, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedStores || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (l$stores != lOther$stores) {
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

extension UtilityExtension_Query_geolocatedStores on Query_geolocatedStores {
  CopyWith_Query_geolocatedStores<Query_geolocatedStores> get copyWith =>
      CopyWith_Query_geolocatedStores(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedStores<TRes> {
  factory CopyWith_Query_geolocatedStores(
    Query_geolocatedStores instance,
    TRes Function(Query_geolocatedStores) then,
  ) = _CopyWithImpl_Query_geolocatedStores;

  factory CopyWith_Query_geolocatedStores.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedStores;

  TRes call({Query_geolocatedStores_stores? stores, String? $__typename});
  CopyWith_Query_geolocatedStores_stores<TRes> get stores;
}

class _CopyWithImpl_Query_geolocatedStores<TRes>
    implements CopyWith_Query_geolocatedStores<TRes> {
  _CopyWithImpl_Query_geolocatedStores(this._instance, this._then);

  final Query_geolocatedStores _instance;

  final TRes Function(Query_geolocatedStores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? stores = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_geolocatedStores(
          stores: stores == _undefined
              ? _instance.stores
              : (stores as Query_geolocatedStores_stores?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_geolocatedStores_stores<TRes> get stores {
    final local$stores = _instance.stores;
    return local$stores == null
        ? CopyWith_Query_geolocatedStores_stores.stub(_then(_instance))
        : CopyWith_Query_geolocatedStores_stores(
            local$stores,
            (e) => call(stores: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedStores<TRes>
    implements CopyWith_Query_geolocatedStores<TRes> {
  _CopyWithStubImpl_Query_geolocatedStores(this._res);

  TRes _res;

  call({Query_geolocatedStores_stores? stores, String? $__typename}) => _res;

  CopyWith_Query_geolocatedStores_stores<TRes> get stores =>
      CopyWith_Query_geolocatedStores_stores.stub(_res);
}

const documentNodeQuerygeolocatedStores = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'geolocatedStores'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'StoreFilterInput'),
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
            name: NameNode(value: 'stores'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(value: 'Store'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'address'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'geolocation'),
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
    fragmentDefinitionStore,
  ],
);

class Query_geolocatedStores_stores {
  Query_geolocatedStores_stores({
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfStore',
  });

  factory Query_geolocatedStores_stores.fromJson(Map<String, dynamic> json) {
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedStores_stores(
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_geolocatedStores_stores_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endKeyset;

  final List<Query_geolocatedStores_stores_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query_geolocatedStores_stores ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_geolocatedStores_stores
    on Query_geolocatedStores_stores {
  CopyWith_Query_geolocatedStores_stores<Query_geolocatedStores_stores>
  get copyWith => CopyWith_Query_geolocatedStores_stores(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedStores_stores<TRes> {
  factory CopyWith_Query_geolocatedStores_stores(
    Query_geolocatedStores_stores instance,
    TRes Function(Query_geolocatedStores_stores) then,
  ) = _CopyWithImpl_Query_geolocatedStores_stores;

  factory CopyWith_Query_geolocatedStores_stores.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedStores_stores;

  TRes call({
    String? endKeyset,
    List<Query_geolocatedStores_stores_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_geolocatedStores_stores_results>? Function(
      Iterable<
        CopyWith_Query_geolocatedStores_stores_results<
          Query_geolocatedStores_stores_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_geolocatedStores_stores<TRes>
    implements CopyWith_Query_geolocatedStores_stores<TRes> {
  _CopyWithImpl_Query_geolocatedStores_stores(this._instance, this._then);

  final Query_geolocatedStores_stores _instance;

  final TRes Function(Query_geolocatedStores_stores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedStores_stores(
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_geolocatedStores_stores_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_geolocatedStores_stores_results>? Function(
      Iterable<
        CopyWith_Query_geolocatedStores_stores_results<
          Query_geolocatedStores_stores_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_geolocatedStores_stores_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_geolocatedStores_stores<TRes>
    implements CopyWith_Query_geolocatedStores_stores<TRes> {
  _CopyWithStubImpl_Query_geolocatedStores_stores(this._res);

  TRes _res;

  call({
    String? endKeyset,
    List<Query_geolocatedStores_stores_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_geolocatedStores_stores_results implements Fragment_Store {
  Query_geolocatedStores_stores_results({
    required this.id,
    required this.name,
    this.color,
    this.adminFamilyId,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Store',
    this.address,
  });

  factory Query_geolocatedStores_stores_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$adminFamilyId = json['adminFamilyId'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$address = json['address'];
    return Query_geolocatedStores_stores_results(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      adminFamilyId: (l$adminFamilyId as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      address: l$address == null
          ? null
          : Query_geolocatedStores_stores_results_address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final String? adminFamilyId;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  final Query_geolocatedStores_stores_results_address? address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$adminFamilyId = adminFamilyId;
    _resultData['adminFamilyId'] = l$adminFamilyId;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$adminFamilyId = adminFamilyId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$address = address;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$adminFamilyId,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
      l$address,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedStores_stores_results ||
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
    final l$adminFamilyId = adminFamilyId;
    final lOther$adminFamilyId = other.adminFamilyId;
    if (l$adminFamilyId != lOther$adminFamilyId) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_geolocatedStores_stores_results
    on Query_geolocatedStores_stores_results {
  CopyWith_Query_geolocatedStores_stores_results<
    Query_geolocatedStores_stores_results
  >
  get copyWith =>
      CopyWith_Query_geolocatedStores_stores_results(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedStores_stores_results<TRes> {
  factory CopyWith_Query_geolocatedStores_stores_results(
    Query_geolocatedStores_stores_results instance,
    TRes Function(Query_geolocatedStores_stores_results) then,
  ) = _CopyWithImpl_Query_geolocatedStores_stores_results;

  factory CopyWith_Query_geolocatedStores_stores_results.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedStores_stores_results;

  TRes call({
    String? id,
    String? name,
    int? color,
    String? adminFamilyId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Query_geolocatedStores_stores_results_address? address,
  });
  CopyWith_Query_geolocatedStores_stores_results_address<TRes> get address;
}

class _CopyWithImpl_Query_geolocatedStores_stores_results<TRes>
    implements CopyWith_Query_geolocatedStores_stores_results<TRes> {
  _CopyWithImpl_Query_geolocatedStores_stores_results(
    this._instance,
    this._then,
  );

  final Query_geolocatedStores_stores_results _instance;

  final TRes Function(Query_geolocatedStores_stores_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? adminFamilyId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? address = _undefined,
  }) => _then(
    Query_geolocatedStores_stores_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      adminFamilyId: adminFamilyId == _undefined
          ? _instance.adminFamilyId
          : (adminFamilyId as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      address: address == _undefined
          ? _instance.address
          : (address as Query_geolocatedStores_stores_results_address?),
    ),
  );

  CopyWith_Query_geolocatedStores_stores_results_address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Query_geolocatedStores_stores_results_address.stub(
            _then(_instance),
          )
        : CopyWith_Query_geolocatedStores_stores_results_address(
            local$address,
            (e) => call(address: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedStores_stores_results<TRes>
    implements CopyWith_Query_geolocatedStores_stores_results<TRes> {
  _CopyWithStubImpl_Query_geolocatedStores_stores_results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    String? adminFamilyId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Query_geolocatedStores_stores_results_address? address,
  }) => _res;

  CopyWith_Query_geolocatedStores_stores_results_address<TRes> get address =>
      CopyWith_Query_geolocatedStores_stores_results_address.stub(_res);
}

class Query_geolocatedStores_stores_results_address {
  Query_geolocatedStores_stores_results_address({
    required this.id,
    this.geolocation,
    this.$__typename = 'Address',
  });

  factory Query_geolocatedStores_stores_results_address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$geolocation = json['geolocation'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedStores_stores_results_address(
      id: (l$id as String),
      geolocation: (l$geolocation as Json?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Json? geolocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$geolocation = geolocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$geolocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedStores_stores_results_address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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

extension UtilityExtension_Query_geolocatedStores_stores_results_address
    on Query_geolocatedStores_stores_results_address {
  CopyWith_Query_geolocatedStores_stores_results_address<
    Query_geolocatedStores_stores_results_address
  >
  get copyWith =>
      CopyWith_Query_geolocatedStores_stores_results_address(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedStores_stores_results_address<TRes> {
  factory CopyWith_Query_geolocatedStores_stores_results_address(
    Query_geolocatedStores_stores_results_address instance,
    TRes Function(Query_geolocatedStores_stores_results_address) then,
  ) = _CopyWithImpl_Query_geolocatedStores_stores_results_address;

  factory CopyWith_Query_geolocatedStores_stores_results_address.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_geolocatedStores_stores_results_address;

  TRes call({String? id, Json? geolocation, String? $__typename});
}

class _CopyWithImpl_Query_geolocatedStores_stores_results_address<TRes>
    implements CopyWith_Query_geolocatedStores_stores_results_address<TRes> {
  _CopyWithImpl_Query_geolocatedStores_stores_results_address(
    this._instance,
    this._then,
  );

  final Query_geolocatedStores_stores_results_address _instance;

  final TRes Function(Query_geolocatedStores_stores_results_address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? geolocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedStores_stores_results_address(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      geolocation: geolocation == _undefined
          ? _instance.geolocation
          : (geolocation as Json?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_geolocatedStores_stores_results_address<TRes>
    implements CopyWith_Query_geolocatedStores_stores_results_address<TRes> {
  _CopyWithStubImpl_Query_geolocatedStores_stores_results_address(this._res);

  TRes _res;

  call({String? id, Json? geolocation, String? $__typename}) => _res;
}

class Variables_Query_geolocatedPersons {
  factory Variables_Query_geolocatedPersons({
    Input_PersonFilterInput? filter,
    int? first,
    String? after,
  }) => Variables_Query_geolocatedPersons._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_geolocatedPersons._(this._$data);

  factory Variables_Query_geolocatedPersons.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_PersonFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_geolocatedPersons._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonFilterInput? get filter =>
      (_$data['filter'] as Input_PersonFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
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

  CopyWith_Variables_Query_geolocatedPersons<Variables_Query_geolocatedPersons>
  get copyWith => CopyWith_Variables_Query_geolocatedPersons(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_geolocatedPersons ||
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
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_geolocatedPersons<TRes> {
  factory CopyWith_Variables_Query_geolocatedPersons(
    Variables_Query_geolocatedPersons instance,
    TRes Function(Variables_Query_geolocatedPersons) then,
  ) = _CopyWithImpl_Variables_Query_geolocatedPersons;

  factory CopyWith_Variables_Query_geolocatedPersons.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_geolocatedPersons;

  TRes call({Input_PersonFilterInput? filter, int? first, String? after});
}

class _CopyWithImpl_Variables_Query_geolocatedPersons<TRes>
    implements CopyWith_Variables_Query_geolocatedPersons<TRes> {
  _CopyWithImpl_Variables_Query_geolocatedPersons(this._instance, this._then);

  final Variables_Query_geolocatedPersons _instance;

  final TRes Function(Variables_Query_geolocatedPersons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_geolocatedPersons._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_PersonFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_geolocatedPersons<TRes>
    implements CopyWith_Variables_Query_geolocatedPersons<TRes> {
  _CopyWithStubImpl_Variables_Query_geolocatedPersons(this._res);

  TRes _res;

  call({Input_PersonFilterInput? filter, int? first, String? after}) => _res;
}

class Query_geolocatedPersons {
  Query_geolocatedPersons({this.persons, this.$__typename = 'RootQueryType'});

  factory Query_geolocatedPersons.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedPersons(
      persons: l$persons == null
          ? null
          : Query_geolocatedPersons_persons.fromJson(
              (l$persons as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_geolocatedPersons_persons? persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([l$persons, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedPersons || runtimeType != other.runtimeType) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons != lOther$persons) {
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

extension UtilityExtension_Query_geolocatedPersons on Query_geolocatedPersons {
  CopyWith_Query_geolocatedPersons<Query_geolocatedPersons> get copyWith =>
      CopyWith_Query_geolocatedPersons(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedPersons<TRes> {
  factory CopyWith_Query_geolocatedPersons(
    Query_geolocatedPersons instance,
    TRes Function(Query_geolocatedPersons) then,
  ) = _CopyWithImpl_Query_geolocatedPersons;

  factory CopyWith_Query_geolocatedPersons.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedPersons;

  TRes call({Query_geolocatedPersons_persons? persons, String? $__typename});
  CopyWith_Query_geolocatedPersons_persons<TRes> get persons;
}

class _CopyWithImpl_Query_geolocatedPersons<TRes>
    implements CopyWith_Query_geolocatedPersons<TRes> {
  _CopyWithImpl_Query_geolocatedPersons(this._instance, this._then);

  final Query_geolocatedPersons _instance;

  final TRes Function(Query_geolocatedPersons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? persons = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_geolocatedPersons(
          persons: persons == _undefined
              ? _instance.persons
              : (persons as Query_geolocatedPersons_persons?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_geolocatedPersons_persons<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Query_geolocatedPersons_persons.stub(_then(_instance))
        : CopyWith_Query_geolocatedPersons_persons(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedPersons<TRes>
    implements CopyWith_Query_geolocatedPersons<TRes> {
  _CopyWithStubImpl_Query_geolocatedPersons(this._res);

  TRes _res;

  call({Query_geolocatedPersons_persons? persons, String? $__typename}) => _res;

  CopyWith_Query_geolocatedPersons_persons<TRes> get persons =>
      CopyWith_Query_geolocatedPersons_persons.stub(_res);
}

const documentNodeQuerygeolocatedPersons = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'geolocatedPersons'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'PersonFilterInput'),
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
            name: NameNode(value: 'persons'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(value: 'PersonNoPhoto'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'address'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'geolocation'),
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
    fragmentDefinitionPersonNoPhoto,
  ],
);

class Query_geolocatedPersons_persons {
  Query_geolocatedPersons_persons({
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfPerson',
  });

  factory Query_geolocatedPersons_persons.fromJson(Map<String, dynamic> json) {
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedPersons_persons(
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_geolocatedPersons_persons_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endKeyset;

  final List<Query_geolocatedPersons_persons_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query_geolocatedPersons_persons ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_geolocatedPersons_persons
    on Query_geolocatedPersons_persons {
  CopyWith_Query_geolocatedPersons_persons<Query_geolocatedPersons_persons>
  get copyWith => CopyWith_Query_geolocatedPersons_persons(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedPersons_persons<TRes> {
  factory CopyWith_Query_geolocatedPersons_persons(
    Query_geolocatedPersons_persons instance,
    TRes Function(Query_geolocatedPersons_persons) then,
  ) = _CopyWithImpl_Query_geolocatedPersons_persons;

  factory CopyWith_Query_geolocatedPersons_persons.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedPersons_persons;

  TRes call({
    String? endKeyset,
    List<Query_geolocatedPersons_persons_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_geolocatedPersons_persons_results>? Function(
      Iterable<
        CopyWith_Query_geolocatedPersons_persons_results<
          Query_geolocatedPersons_persons_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_geolocatedPersons_persons<TRes>
    implements CopyWith_Query_geolocatedPersons_persons<TRes> {
  _CopyWithImpl_Query_geolocatedPersons_persons(this._instance, this._then);

  final Query_geolocatedPersons_persons _instance;

  final TRes Function(Query_geolocatedPersons_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedPersons_persons(
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_geolocatedPersons_persons_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_geolocatedPersons_persons_results>? Function(
      Iterable<
        CopyWith_Query_geolocatedPersons_persons_results<
          Query_geolocatedPersons_persons_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_geolocatedPersons_persons_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_geolocatedPersons_persons<TRes>
    implements CopyWith_Query_geolocatedPersons_persons<TRes> {
  _CopyWithStubImpl_Query_geolocatedPersons_persons(this._res);

  TRes _res;

  call({
    String? endKeyset,
    List<Query_geolocatedPersons_persons_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_geolocatedPersons_persons_results
    implements Fragment_PersonNoPhoto {
  Query_geolocatedPersons_persons_results({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Person',
    this.address,
  });

  factory Query_geolocatedPersons_persons_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$address = json['address'];
    return Query_geolocatedPersons_persons_results(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      address: l$address == null
          ? null
          : Query_geolocatedPersons_persons_results_address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final Query_geolocatedPersons_persons_results_address? address;

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
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$address = address;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$address,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedPersons_persons_results ||
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_geolocatedPersons_persons_results
    on Query_geolocatedPersons_persons_results {
  CopyWith_Query_geolocatedPersons_persons_results<
    Query_geolocatedPersons_persons_results
  >
  get copyWith =>
      CopyWith_Query_geolocatedPersons_persons_results(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedPersons_persons_results<TRes> {
  factory CopyWith_Query_geolocatedPersons_persons_results(
    Query_geolocatedPersons_persons_results instance,
    TRes Function(Query_geolocatedPersons_persons_results) then,
  ) = _CopyWithImpl_Query_geolocatedPersons_persons_results;

  factory CopyWith_Query_geolocatedPersons_persons_results.stub(TRes res) =
      _CopyWithStubImpl_Query_geolocatedPersons_persons_results;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    Query_geolocatedPersons_persons_results_address? address,
  });
  CopyWith_Query_geolocatedPersons_persons_results_address<TRes> get address;
}

class _CopyWithImpl_Query_geolocatedPersons_persons_results<TRes>
    implements CopyWith_Query_geolocatedPersons_persons_results<TRes> {
  _CopyWithImpl_Query_geolocatedPersons_persons_results(
    this._instance,
    this._then,
  );

  final Query_geolocatedPersons_persons_results _instance;

  final TRes Function(Query_geolocatedPersons_persons_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? address = _undefined,
  }) => _then(
    Query_geolocatedPersons_persons_results(
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
      address: address == _undefined
          ? _instance.address
          : (address as Query_geolocatedPersons_persons_results_address?),
    ),
  );

  CopyWith_Query_geolocatedPersons_persons_results_address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Query_geolocatedPersons_persons_results_address.stub(
            _then(_instance),
          )
        : CopyWith_Query_geolocatedPersons_persons_results_address(
            local$address,
            (e) => call(address: e),
          );
  }
}

class _CopyWithStubImpl_Query_geolocatedPersons_persons_results<TRes>
    implements CopyWith_Query_geolocatedPersons_persons_results<TRes> {
  _CopyWithStubImpl_Query_geolocatedPersons_persons_results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    Query_geolocatedPersons_persons_results_address? address,
  }) => _res;

  CopyWith_Query_geolocatedPersons_persons_results_address<TRes> get address =>
      CopyWith_Query_geolocatedPersons_persons_results_address.stub(_res);
}

class Query_geolocatedPersons_persons_results_address {
  Query_geolocatedPersons_persons_results_address({
    required this.id,
    this.geolocation,
    this.$__typename = 'Address',
  });

  factory Query_geolocatedPersons_persons_results_address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$geolocation = json['geolocation'];
    final l$$__typename = json['__typename'];
    return Query_geolocatedPersons_persons_results_address(
      id: (l$id as String),
      geolocation: (l$geolocation as Json?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Json? geolocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$geolocation = geolocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$geolocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_geolocatedPersons_persons_results_address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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

extension UtilityExtension_Query_geolocatedPersons_persons_results_address
    on Query_geolocatedPersons_persons_results_address {
  CopyWith_Query_geolocatedPersons_persons_results_address<
    Query_geolocatedPersons_persons_results_address
  >
  get copyWith =>
      CopyWith_Query_geolocatedPersons_persons_results_address(this, (i) => i);
}

abstract class CopyWith_Query_geolocatedPersons_persons_results_address<TRes> {
  factory CopyWith_Query_geolocatedPersons_persons_results_address(
    Query_geolocatedPersons_persons_results_address instance,
    TRes Function(Query_geolocatedPersons_persons_results_address) then,
  ) = _CopyWithImpl_Query_geolocatedPersons_persons_results_address;

  factory CopyWith_Query_geolocatedPersons_persons_results_address.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_geolocatedPersons_persons_results_address;

  TRes call({String? id, Json? geolocation, String? $__typename});
}

class _CopyWithImpl_Query_geolocatedPersons_persons_results_address<TRes>
    implements CopyWith_Query_geolocatedPersons_persons_results_address<TRes> {
  _CopyWithImpl_Query_geolocatedPersons_persons_results_address(
    this._instance,
    this._then,
  );

  final Query_geolocatedPersons_persons_results_address _instance;

  final TRes Function(Query_geolocatedPersons_persons_results_address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? geolocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_geolocatedPersons_persons_results_address(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      geolocation: geolocation == _undefined
          ? _instance.geolocation
          : (geolocation as Json?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_geolocatedPersons_persons_results_address<TRes>
    implements CopyWith_Query_geolocatedPersons_persons_results_address<TRes> {
  _CopyWithStubImpl_Query_geolocatedPersons_persons_results_address(this._res);

  TRes _res;

  call({String? id, Json? geolocation, String? $__typename}) => _res;
}
