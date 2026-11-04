import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_tags {
  factory Variables_Query_tags({
    Input_TagFilterInput? filter,
    List<Input_TagSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_tags._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_tags._(this._$data);

  factory Variables_Query_tags.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_TagFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_TagSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_tags._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_TagFilterInput? get filter =>
      (_$data['filter'] as Input_TagFilterInput?);

  List<Input_TagSortInput?>? get sort =>
      (_$data['sort'] as List<Input_TagSortInput?>?);

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

  CopyWith_Variables_Query_tags<Variables_Query_tags> get copyWith =>
      CopyWith_Variables_Query_tags(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_tags || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_tags<TRes> {
  factory CopyWith_Variables_Query_tags(
    Variables_Query_tags instance,
    TRes Function(Variables_Query_tags) then,
  ) = _CopyWithImpl_Variables_Query_tags;

  factory CopyWith_Variables_Query_tags.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_tags;

  TRes call({
    Input_TagFilterInput? filter,
    List<Input_TagSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_tags<TRes>
    implements CopyWith_Variables_Query_tags<TRes> {
  _CopyWithImpl_Variables_Query_tags(this._instance, this._then);

  final Variables_Query_tags _instance;

  final TRes Function(Variables_Query_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_tags._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_TagFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_TagSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_tags<TRes>
    implements CopyWith_Variables_Query_tags<TRes> {
  _CopyWithStubImpl_Variables_Query_tags(this._res);

  TRes _res;

  call({
    Input_TagFilterInput? filter,
    List<Input_TagSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_tags {
  Query_tags({this.tags, this.$__typename = 'RootQueryType'});

  factory Query_tags.fromJson(Map<String, dynamic> json) {
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query_tags(
      tags: l$tags == null
          ? null
          : Query_tags_tags.fromJson((l$tags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_tags_tags? tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tags = tags;
    _resultData['tags'] = l$tags?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tags, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_tags || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != lOther$tags) {
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

extension UtilityExtension_Query_tags on Query_tags {
  CopyWith_Query_tags<Query_tags> get copyWith =>
      CopyWith_Query_tags(this, (i) => i);
}

abstract class CopyWith_Query_tags<TRes> {
  factory CopyWith_Query_tags(
    Query_tags instance,
    TRes Function(Query_tags) then,
  ) = _CopyWithImpl_Query_tags;

  factory CopyWith_Query_tags.stub(TRes res) = _CopyWithStubImpl_Query_tags;

  TRes call({Query_tags_tags? tags, String? $__typename});
  CopyWith_Query_tags_tags<TRes> get tags;
}

class _CopyWithImpl_Query_tags<TRes> implements CopyWith_Query_tags<TRes> {
  _CopyWithImpl_Query_tags(this._instance, this._then);

  final Query_tags _instance;

  final TRes Function(Query_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tags = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_tags(
          tags: tags == _undefined
              ? _instance.tags
              : (tags as Query_tags_tags?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_tags_tags<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith_Query_tags_tags.stub(_then(_instance))
        : CopyWith_Query_tags_tags(local$tags, (e) => call(tags: e));
  }
}

class _CopyWithStubImpl_Query_tags<TRes> implements CopyWith_Query_tags<TRes> {
  _CopyWithStubImpl_Query_tags(this._res);

  TRes _res;

  call({Query_tags_tags? tags, String? $__typename}) => _res;

  CopyWith_Query_tags_tags<TRes> get tags =>
      CopyWith_Query_tags_tags.stub(_res);
}

const documentNodeQuerytags = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'tags'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'TagFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TagSortInput'),
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
            name: NameNode(value: 'tags'),
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
                      FieldNode(
                        name: NameNode(value: 'keyset'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FragmentSpreadNode(
                        name: NameNode(value: 'Tag'),
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
    fragmentDefinitionTag,
  ],
);

class Query_tags_tags {
  Query_tags_tags({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfTag',
  });

  factory Query_tags_tags.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_tags_tags(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Query_tags_tags_results.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_tags_tags_results>? results;

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
    if (other is! Query_tags_tags || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_tags_tags on Query_tags_tags {
  CopyWith_Query_tags_tags<Query_tags_tags> get copyWith =>
      CopyWith_Query_tags_tags(this, (i) => i);
}

abstract class CopyWith_Query_tags_tags<TRes> {
  factory CopyWith_Query_tags_tags(
    Query_tags_tags instance,
    TRes Function(Query_tags_tags) then,
  ) = _CopyWithImpl_Query_tags_tags;

  factory CopyWith_Query_tags_tags.stub(TRes res) =
      _CopyWithStubImpl_Query_tags_tags;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_tags_tags_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_tags_tags_results>? Function(
      Iterable<CopyWith_Query_tags_tags_results<Query_tags_tags_results>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_tags_tags<TRes>
    implements CopyWith_Query_tags_tags<TRes> {
  _CopyWithImpl_Query_tags_tags(this._instance, this._then);

  final Query_tags_tags _instance;

  final TRes Function(Query_tags_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_tags_tags(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_tags_tags_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_tags_tags_results>? Function(
      Iterable<CopyWith_Query_tags_tags_results<Query_tags_tags_results>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_tags_tags_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_tags_tags<TRes>
    implements CopyWith_Query_tags_tags<TRes> {
  _CopyWithStubImpl_Query_tags_tags(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_tags_tags_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_tags_tags_results implements Fragment_Tag {
  Query_tags_tags_results({
    this.keyset,
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tag',
  });

  factory Query_tags_tags_results.fromJson(Map<String, dynamic> json) {
    final l$keyset = json['keyset'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query_tags_tags_results(
      keyset: (l$keyset as String?),
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? keyset;

  final String id;

  final String name;

  final int? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$keyset = keyset;
    _resultData['keyset'] = l$keyset;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$keyset = keyset;
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([l$keyset, l$id, l$name, l$color, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_tags_tags_results || runtimeType != other.runtimeType) {
      return false;
    }
    final l$keyset = keyset;
    final lOther$keyset = other.keyset;
    if (l$keyset != lOther$keyset) {
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
    return true;
  }
}

extension UtilityExtension_Query_tags_tags_results on Query_tags_tags_results {
  CopyWith_Query_tags_tags_results<Query_tags_tags_results> get copyWith =>
      CopyWith_Query_tags_tags_results(this, (i) => i);
}

abstract class CopyWith_Query_tags_tags_results<TRes> {
  factory CopyWith_Query_tags_tags_results(
    Query_tags_tags_results instance,
    TRes Function(Query_tags_tags_results) then,
  ) = _CopyWithImpl_Query_tags_tags_results;

  factory CopyWith_Query_tags_tags_results.stub(TRes res) =
      _CopyWithStubImpl_Query_tags_tags_results;

  TRes call({
    String? keyset,
    String? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_tags_tags_results<TRes>
    implements CopyWith_Query_tags_tags_results<TRes> {
  _CopyWithImpl_Query_tags_tags_results(this._instance, this._then);

  final Query_tags_tags_results _instance;

  final TRes Function(Query_tags_tags_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? keyset = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_tags_tags_results(
      keyset: keyset == _undefined ? _instance.keyset : (keyset as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_tags_tags_results<TRes>
    implements CopyWith_Query_tags_tags_results<TRes> {
  _CopyWithStubImpl_Query_tags_tags_results(this._res);

  TRes _res;

  call({
    String? keyset,
    String? id,
    String? name,
    int? color,
    String? $__typename,
  }) => _res;
}
