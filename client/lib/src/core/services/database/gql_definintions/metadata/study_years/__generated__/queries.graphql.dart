import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_studyYears {
  factory Variables_Query_studyYears({
    Input_StudyYearFilterInput? filter,
    List<Input_StudyYearSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_studyYears._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_studyYears._(this._$data);

  factory Variables_Query_studyYears.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_StudyYearSortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
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
    return Variables_Query_studyYears._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StudyYearFilterInput? get filter =>
      (_$data['filter'] as Input_StudyYearFilterInput?);

  List<Input_StudyYearSortInput?>? get sort =>
      (_$data['sort'] as List<Input_StudyYearSortInput?>?);

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

  CopyWith_Variables_Query_studyYears<Variables_Query_studyYears>
  get copyWith => CopyWith_Variables_Query_studyYears(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_studyYears ||
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

abstract class CopyWith_Variables_Query_studyYears<TRes> {
  factory CopyWith_Variables_Query_studyYears(
    Variables_Query_studyYears instance,
    TRes Function(Variables_Query_studyYears) then,
  ) = _CopyWithImpl_Variables_Query_studyYears;

  factory CopyWith_Variables_Query_studyYears.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_studyYears;

  TRes call({
    Input_StudyYearFilterInput? filter,
    List<Input_StudyYearSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_studyYears<TRes>
    implements CopyWith_Variables_Query_studyYears<TRes> {
  _CopyWithImpl_Variables_Query_studyYears(this._instance, this._then);

  final Variables_Query_studyYears _instance;

  final TRes Function(Variables_Query_studyYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_studyYears._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_StudyYearFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_StudyYearSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_studyYears<TRes>
    implements CopyWith_Variables_Query_studyYears<TRes> {
  _CopyWithStubImpl_Variables_Query_studyYears(this._res);

  TRes _res;

  call({
    Input_StudyYearFilterInput? filter,
    List<Input_StudyYearSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_studyYears {
  Query_studyYears({this.studyYears, this.$__typename = 'RootQueryType'});

  factory Query_studyYears.fromJson(Map<String, dynamic> json) {
    final l$studyYears = json['studyYears'];
    final l$$__typename = json['__typename'];
    return Query_studyYears(
      studyYears: l$studyYears == null
          ? null
          : Query_studyYears_studyYears.fromJson(
              (l$studyYears as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_studyYears_studyYears? studyYears;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studyYears = studyYears;
    _resultData['studyYears'] = l$studyYears?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studyYears = studyYears;
    final l$$__typename = $__typename;
    return Object.hashAll([l$studyYears, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_studyYears || runtimeType != other.runtimeType) {
      return false;
    }
    final l$studyYears = studyYears;
    final lOther$studyYears = other.studyYears;
    if (l$studyYears != lOther$studyYears) {
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

extension UtilityExtension_Query_studyYears on Query_studyYears {
  CopyWith_Query_studyYears<Query_studyYears> get copyWith =>
      CopyWith_Query_studyYears(this, (i) => i);
}

abstract class CopyWith_Query_studyYears<TRes> {
  factory CopyWith_Query_studyYears(
    Query_studyYears instance,
    TRes Function(Query_studyYears) then,
  ) = _CopyWithImpl_Query_studyYears;

  factory CopyWith_Query_studyYears.stub(TRes res) =
      _CopyWithStubImpl_Query_studyYears;

  TRes call({Query_studyYears_studyYears? studyYears, String? $__typename});
  CopyWith_Query_studyYears_studyYears<TRes> get studyYears;
}

class _CopyWithImpl_Query_studyYears<TRes>
    implements CopyWith_Query_studyYears<TRes> {
  _CopyWithImpl_Query_studyYears(this._instance, this._then);

  final Query_studyYears _instance;

  final TRes Function(Query_studyYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? studyYears = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_studyYears(
      studyYears: studyYears == _undefined
          ? _instance.studyYears
          : (studyYears as Query_studyYears_studyYears?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_studyYears_studyYears<TRes> get studyYears {
    final local$studyYears = _instance.studyYears;
    return local$studyYears == null
        ? CopyWith_Query_studyYears_studyYears.stub(_then(_instance))
        : CopyWith_Query_studyYears_studyYears(
            local$studyYears,
            (e) => call(studyYears: e),
          );
  }
}

class _CopyWithStubImpl_Query_studyYears<TRes>
    implements CopyWith_Query_studyYears<TRes> {
  _CopyWithStubImpl_Query_studyYears(this._res);

  TRes _res;

  call({Query_studyYears_studyYears? studyYears, String? $__typename}) => _res;

  CopyWith_Query_studyYears_studyYears<TRes> get studyYears =>
      CopyWith_Query_studyYears_studyYears.stub(_res);
}

const documentNodeQuerystudyYears = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'studyYears'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'StudyYearFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'StudyYearSortInput'),
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
            name: NameNode(value: 'studyYears'),
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
                        name: NameNode(value: 'StudyYear'),
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
    fragmentDefinitionStudyYear,
  ],
);

class Query_studyYears_studyYears {
  Query_studyYears_studyYears({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfStudyYear',
  });

  factory Query_studyYears_studyYears.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_studyYears_studyYears(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_StudyYear.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_StudyYear>? results;

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
    if (other is! Query_studyYears_studyYears ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_studyYears_studyYears
    on Query_studyYears_studyYears {
  CopyWith_Query_studyYears_studyYears<Query_studyYears_studyYears>
  get copyWith => CopyWith_Query_studyYears_studyYears(this, (i) => i);
}

abstract class CopyWith_Query_studyYears_studyYears<TRes> {
  factory CopyWith_Query_studyYears_studyYears(
    Query_studyYears_studyYears instance,
    TRes Function(Query_studyYears_studyYears) then,
  ) = _CopyWithImpl_Query_studyYears_studyYears;

  factory CopyWith_Query_studyYears_studyYears.stub(TRes res) =
      _CopyWithStubImpl_Query_studyYears_studyYears;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_StudyYear>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_StudyYear>? Function(
      Iterable<CopyWith_Fragment_StudyYear<Fragment_StudyYear>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_studyYears_studyYears<TRes>
    implements CopyWith_Query_studyYears_studyYears<TRes> {
  _CopyWithImpl_Query_studyYears_studyYears(this._instance, this._then);

  final Query_studyYears_studyYears _instance;

  final TRes Function(Query_studyYears_studyYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_studyYears_studyYears(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_StudyYear>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_StudyYear>? Function(
      Iterable<CopyWith_Fragment_StudyYear<Fragment_StudyYear>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_StudyYear(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_studyYears_studyYears<TRes>
    implements CopyWith_Query_studyYears_studyYears<TRes> {
  _CopyWithStubImpl_Query_studyYears_studyYears(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_StudyYear>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_studyYear {
  factory Variables_Query_studyYear({required String id}) =>
      Variables_Query_studyYear._({r'id': id});

  Variables_Query_studyYear._(this._$data);

  factory Variables_Query_studyYear.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_studyYear._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_studyYear<Variables_Query_studyYear> get copyWith =>
      CopyWith_Variables_Query_studyYear(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_studyYear ||
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

abstract class CopyWith_Variables_Query_studyYear<TRes> {
  factory CopyWith_Variables_Query_studyYear(
    Variables_Query_studyYear instance,
    TRes Function(Variables_Query_studyYear) then,
  ) = _CopyWithImpl_Variables_Query_studyYear;

  factory CopyWith_Variables_Query_studyYear.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_studyYear;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_studyYear<TRes>
    implements CopyWith_Variables_Query_studyYear<TRes> {
  _CopyWithImpl_Variables_Query_studyYear(this._instance, this._then);

  final Variables_Query_studyYear _instance;

  final TRes Function(Variables_Query_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_studyYear._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_studyYear<TRes>
    implements CopyWith_Variables_Query_studyYear<TRes> {
  _CopyWithStubImpl_Variables_Query_studyYear(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_studyYear {
  Query_studyYear({this.studyYear, this.$__typename = 'RootQueryType'});

  factory Query_studyYear.fromJson(Map<String, dynamic> json) {
    final l$studyYear = json['studyYear'];
    final l$$__typename = json['__typename'];
    return Query_studyYear(
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_StudyYear? studyYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studyYear = studyYear;
    final l$$__typename = $__typename;
    return Object.hashAll([l$studyYear, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_studyYear || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_studyYear on Query_studyYear {
  CopyWith_Query_studyYear<Query_studyYear> get copyWith =>
      CopyWith_Query_studyYear(this, (i) => i);
}

abstract class CopyWith_Query_studyYear<TRes> {
  factory CopyWith_Query_studyYear(
    Query_studyYear instance,
    TRes Function(Query_studyYear) then,
  ) = _CopyWithImpl_Query_studyYear;

  factory CopyWith_Query_studyYear.stub(TRes res) =
      _CopyWithStubImpl_Query_studyYear;

  TRes call({Fragment_StudyYear? studyYear, String? $__typename});
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
}

class _CopyWithImpl_Query_studyYear<TRes>
    implements CopyWith_Query_studyYear<TRes> {
  _CopyWithImpl_Query_studyYear(this._instance, this._then);

  final Query_studyYear _instance;

  final TRes Function(Query_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? studyYear = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_studyYear(
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

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

class _CopyWithStubImpl_Query_studyYear<TRes>
    implements CopyWith_Query_studyYear<TRes> {
  _CopyWithStubImpl_Query_studyYear(this._res);

  TRes _res;

  call({Fragment_StudyYear? studyYear, String? $__typename}) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

const documentNodeQuerystudyYear = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'studyYear'),
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
            name: NameNode(value: 'studyYear'),
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
                  name: NameNode(value: 'StudyYear'),
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
    fragmentDefinitionStudyYear,
  ],
);
