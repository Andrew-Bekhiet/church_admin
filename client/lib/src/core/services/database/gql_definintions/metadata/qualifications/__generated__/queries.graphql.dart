import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_qualifications {
  factory Variables_Query_qualifications({
    Input_QualificationFilterInput? filter,
    List<Input_QualificationSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_qualifications._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_qualifications._(this._$data);

  factory Variables_Query_qualifications.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_QualificationFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_QualificationSortInput.fromJson(
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
    return Variables_Query_qualifications._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_QualificationFilterInput? get filter =>
      (_$data['filter'] as Input_QualificationFilterInput?);

  List<Input_QualificationSortInput?>? get sort =>
      (_$data['sort'] as List<Input_QualificationSortInput?>?);

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

  CopyWith_Variables_Query_qualifications<Variables_Query_qualifications>
  get copyWith => CopyWith_Variables_Query_qualifications(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_qualifications ||
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

abstract class CopyWith_Variables_Query_qualifications<TRes> {
  factory CopyWith_Variables_Query_qualifications(
    Variables_Query_qualifications instance,
    TRes Function(Variables_Query_qualifications) then,
  ) = _CopyWithImpl_Variables_Query_qualifications;

  factory CopyWith_Variables_Query_qualifications.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_qualifications;

  TRes call({
    Input_QualificationFilterInput? filter,
    List<Input_QualificationSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_qualifications<TRes>
    implements CopyWith_Variables_Query_qualifications<TRes> {
  _CopyWithImpl_Variables_Query_qualifications(this._instance, this._then);

  final Variables_Query_qualifications _instance;

  final TRes Function(Variables_Query_qualifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_qualifications._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_QualificationFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_QualificationSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_qualifications<TRes>
    implements CopyWith_Variables_Query_qualifications<TRes> {
  _CopyWithStubImpl_Variables_Query_qualifications(this._res);

  TRes _res;

  call({
    Input_QualificationFilterInput? filter,
    List<Input_QualificationSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_qualifications {
  Query_qualifications({
    this.qualifications,
    this.$__typename = 'RootQueryType',
  });

  factory Query_qualifications.fromJson(Map<String, dynamic> json) {
    final l$qualifications = json['qualifications'];
    final l$$__typename = json['__typename'];
    return Query_qualifications(
      qualifications: l$qualifications == null
          ? null
          : Query_qualifications_qualifications.fromJson(
              (l$qualifications as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_qualifications_qualifications? qualifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$qualifications = qualifications;
    _resultData['qualifications'] = l$qualifications?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$qualifications = qualifications;
    final l$$__typename = $__typename;
    return Object.hashAll([l$qualifications, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_qualifications || runtimeType != other.runtimeType) {
      return false;
    }
    final l$qualifications = qualifications;
    final lOther$qualifications = other.qualifications;
    if (l$qualifications != lOther$qualifications) {
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

extension UtilityExtension_Query_qualifications on Query_qualifications {
  CopyWith_Query_qualifications<Query_qualifications> get copyWith =>
      CopyWith_Query_qualifications(this, (i) => i);
}

abstract class CopyWith_Query_qualifications<TRes> {
  factory CopyWith_Query_qualifications(
    Query_qualifications instance,
    TRes Function(Query_qualifications) then,
  ) = _CopyWithImpl_Query_qualifications;

  factory CopyWith_Query_qualifications.stub(TRes res) =
      _CopyWithStubImpl_Query_qualifications;

  TRes call({
    Query_qualifications_qualifications? qualifications,
    String? $__typename,
  });
  CopyWith_Query_qualifications_qualifications<TRes> get qualifications;
}

class _CopyWithImpl_Query_qualifications<TRes>
    implements CopyWith_Query_qualifications<TRes> {
  _CopyWithImpl_Query_qualifications(this._instance, this._then);

  final Query_qualifications _instance;

  final TRes Function(Query_qualifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? qualifications = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_qualifications(
      qualifications: qualifications == _undefined
          ? _instance.qualifications
          : (qualifications as Query_qualifications_qualifications?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_qualifications_qualifications<TRes> get qualifications {
    final local$qualifications = _instance.qualifications;
    return local$qualifications == null
        ? CopyWith_Query_qualifications_qualifications.stub(_then(_instance))
        : CopyWith_Query_qualifications_qualifications(
            local$qualifications,
            (e) => call(qualifications: e),
          );
  }
}

class _CopyWithStubImpl_Query_qualifications<TRes>
    implements CopyWith_Query_qualifications<TRes> {
  _CopyWithStubImpl_Query_qualifications(this._res);

  TRes _res;

  call({
    Query_qualifications_qualifications? qualifications,
    String? $__typename,
  }) => _res;

  CopyWith_Query_qualifications_qualifications<TRes> get qualifications =>
      CopyWith_Query_qualifications_qualifications.stub(_res);
}

const documentNodeQueryqualifications = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'qualifications'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'QualificationFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'QualificationSortInput'),
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
            name: NameNode(value: 'qualifications'),
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
                        name: NameNode(value: 'Qualification'),
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
    fragmentDefinitionQualification,
  ],
);

class Query_qualifications_qualifications {
  Query_qualifications_qualifications({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfQualification',
  });

  factory Query_qualifications_qualifications.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_qualifications_qualifications(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_Qualification.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Qualification>? results;

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
    if (other is! Query_qualifications_qualifications ||
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

extension UtilityExtension_Query_qualifications_qualifications
    on Query_qualifications_qualifications {
  CopyWith_Query_qualifications_qualifications<
    Query_qualifications_qualifications
  >
  get copyWith => CopyWith_Query_qualifications_qualifications(this, (i) => i);
}

abstract class CopyWith_Query_qualifications_qualifications<TRes> {
  factory CopyWith_Query_qualifications_qualifications(
    Query_qualifications_qualifications instance,
    TRes Function(Query_qualifications_qualifications) then,
  ) = _CopyWithImpl_Query_qualifications_qualifications;

  factory CopyWith_Query_qualifications_qualifications.stub(TRes res) =
      _CopyWithStubImpl_Query_qualifications_qualifications;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Qualification>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Qualification>? Function(
      Iterable<CopyWith_Fragment_Qualification<Fragment_Qualification>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_qualifications_qualifications<TRes>
    implements CopyWith_Query_qualifications_qualifications<TRes> {
  _CopyWithImpl_Query_qualifications_qualifications(this._instance, this._then);

  final Query_qualifications_qualifications _instance;

  final TRes Function(Query_qualifications_qualifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_qualifications_qualifications(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Qualification>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Qualification>? Function(
      Iterable<CopyWith_Fragment_Qualification<Fragment_Qualification>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_Qualification(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_qualifications_qualifications<TRes>
    implements CopyWith_Query_qualifications_qualifications<TRes> {
  _CopyWithStubImpl_Query_qualifications_qualifications(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Qualification>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}
