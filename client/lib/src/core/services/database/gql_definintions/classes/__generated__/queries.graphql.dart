import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_classes {
  factory Variables_Query_classes({
    Input_ClassFilterInput? filter,
    List<Input_ClassSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_classes._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_classes._(this._$data);

  factory Variables_Query_classes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_ClassSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_classes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassFilterInput? get filter =>
      (_$data['filter'] as Input_ClassFilterInput?);

  List<Input_ClassSortInput?>? get sort =>
      (_$data['sort'] as List<Input_ClassSortInput?>?);

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

  CopyWith_Variables_Query_classes<Variables_Query_classes> get copyWith =>
      CopyWith_Variables_Query_classes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_classes || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_classes<TRes> {
  factory CopyWith_Variables_Query_classes(
    Variables_Query_classes instance,
    TRes Function(Variables_Query_classes) then,
  ) = _CopyWithImpl_Variables_Query_classes;

  factory CopyWith_Variables_Query_classes.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_classes;

  TRes call({
    Input_ClassFilterInput? filter,
    List<Input_ClassSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_classes<TRes>
    implements CopyWith_Variables_Query_classes<TRes> {
  _CopyWithImpl_Variables_Query_classes(this._instance, this._then);

  final Variables_Query_classes _instance;

  final TRes Function(Variables_Query_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_classes._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_ClassFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_ClassSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_classes<TRes>
    implements CopyWith_Variables_Query_classes<TRes> {
  _CopyWithStubImpl_Variables_Query_classes(this._res);

  TRes _res;

  call({
    Input_ClassFilterInput? filter,
    List<Input_ClassSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_classes {
  Query_classes({this.classes, this.$__typename = 'RootQueryType'});

  factory Query_classes.fromJson(Map<String, dynamic> json) {
    final l$classes = json['classes'];
    final l$$__typename = json['__typename'];
    return Query_classes(
      classes: l$classes == null
          ? null
          : Query_classes_classes.fromJson((l$classes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_classes_classes? classes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classes = classes;
    _resultData['classes'] = l$classes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classes = classes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$classes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_classes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != lOther$classes) {
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

extension UtilityExtension_Query_classes on Query_classes {
  CopyWith_Query_classes<Query_classes> get copyWith =>
      CopyWith_Query_classes(this, (i) => i);
}

abstract class CopyWith_Query_classes<TRes> {
  factory CopyWith_Query_classes(
    Query_classes instance,
    TRes Function(Query_classes) then,
  ) = _CopyWithImpl_Query_classes;

  factory CopyWith_Query_classes.stub(TRes res) =
      _CopyWithStubImpl_Query_classes;

  TRes call({Query_classes_classes? classes, String? $__typename});
  CopyWith_Query_classes_classes<TRes> get classes;
}

class _CopyWithImpl_Query_classes<TRes>
    implements CopyWith_Query_classes<TRes> {
  _CopyWithImpl_Query_classes(this._instance, this._then);

  final Query_classes _instance;

  final TRes Function(Query_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_classes(
          classes: classes == _undefined
              ? _instance.classes
              : (classes as Query_classes_classes?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_classes_classes<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Query_classes_classes.stub(_then(_instance))
        : CopyWith_Query_classes_classes(
            local$classes,
            (e) => call(classes: e),
          );
  }
}

class _CopyWithStubImpl_Query_classes<TRes>
    implements CopyWith_Query_classes<TRes> {
  _CopyWithStubImpl_Query_classes(this._res);

  TRes _res;

  call({Query_classes_classes? classes, String? $__typename}) => _res;

  CopyWith_Query_classes_classes<TRes> get classes =>
      CopyWith_Query_classes_classes.stub(_res);
}

const documentNodeQueryclasses = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'classes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ClassFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
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
            name: NameNode(value: 'classes'),
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
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
  ],
);

class Query_classes_classes {
  Query_classes_classes({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfClass',
  });

  factory Query_classes_classes.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_classes_classes(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_ClassWithStudyYears.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_ClassWithStudyYears>? results;

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
    if (other is! Query_classes_classes || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_classes_classes on Query_classes_classes {
  CopyWith_Query_classes_classes<Query_classes_classes> get copyWith =>
      CopyWith_Query_classes_classes(this, (i) => i);
}

abstract class CopyWith_Query_classes_classes<TRes> {
  factory CopyWith_Query_classes_classes(
    Query_classes_classes instance,
    TRes Function(Query_classes_classes) then,
  ) = _CopyWithImpl_Query_classes_classes;

  factory CopyWith_Query_classes_classes.stub(TRes res) =
      _CopyWithStubImpl_Query_classes_classes;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_ClassWithStudyYears>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_ClassWithStudyYears>? Function(
      Iterable<
        CopyWith_Fragment_ClassWithStudyYears<Fragment_ClassWithStudyYears>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_classes_classes<TRes>
    implements CopyWith_Query_classes_classes<TRes> {
  _CopyWithImpl_Query_classes_classes(this._instance, this._then);

  final Query_classes_classes _instance;

  final TRes Function(Query_classes_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_classes_classes(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_ClassWithStudyYears>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_ClassWithStudyYears>? Function(
      Iterable<
        CopyWith_Fragment_ClassWithStudyYears<Fragment_ClassWithStudyYears>
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_ClassWithStudyYears(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_classes_classes<TRes>
    implements CopyWith_Query_classes_classes<TRes> {
  _CopyWithStubImpl_Query_classes_classes(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_ClassWithStudyYears>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_class {
  factory Variables_Query_class({required String id}) =>
      Variables_Query_class._({r'id': id});

  Variables_Query_class._(this._$data);

  factory Variables_Query_class.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_class._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_class<Variables_Query_class> get copyWith =>
      CopyWith_Variables_Query_class(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_class || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_class<TRes> {
  factory CopyWith_Variables_Query_class(
    Variables_Query_class instance,
    TRes Function(Variables_Query_class) then,
  ) = _CopyWithImpl_Variables_Query_class;

  factory CopyWith_Variables_Query_class.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_class;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_class<TRes>
    implements CopyWith_Variables_Query_class<TRes> {
  _CopyWithImpl_Variables_Query_class(this._instance, this._then);

  final Variables_Query_class _instance;

  final TRes Function(Variables_Query_class) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_class._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_class<TRes>
    implements CopyWith_Variables_Query_class<TRes> {
  _CopyWithStubImpl_Variables_Query_class(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_class {
  Query_class({this.$class, this.$__typename = 'RootQueryType'});

  factory Query_class.fromJson(Map<String, dynamic> json) {
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query_class(
      $class: l$$class == null
          ? null
          : Fragment_ClassDetails.fromJson((l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ClassDetails? $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$class = $class;
    _resultData['class'] = l$$class?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_class || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_class on Query_class {
  CopyWith_Query_class<Query_class> get copyWith =>
      CopyWith_Query_class(this, (i) => i);
}

abstract class CopyWith_Query_class<TRes> {
  factory CopyWith_Query_class(
    Query_class instance,
    TRes Function(Query_class) then,
  ) = _CopyWithImpl_Query_class;

  factory CopyWith_Query_class.stub(TRes res) = _CopyWithStubImpl_Query_class;

  TRes call({Fragment_ClassDetails? $class, String? $__typename});
  CopyWith_Fragment_ClassDetails<TRes> get $class;
}

class _CopyWithImpl_Query_class<TRes> implements CopyWith_Query_class<TRes> {
  _CopyWithImpl_Query_class(this._instance, this._then);

  final Query_class _instance;

  final TRes Function(Query_class) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $class = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_class(
          $class: $class == _undefined
              ? _instance.$class
              : ($class as Fragment_ClassDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ClassDetails<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Fragment_ClassDetails.stub(_then(_instance))
        : CopyWith_Fragment_ClassDetails(local$$class, (e) => call($class: e));
  }
}

class _CopyWithStubImpl_Query_class<TRes>
    implements CopyWith_Query_class<TRes> {
  _CopyWithStubImpl_Query_class(this._res);

  TRes _res;

  call({Fragment_ClassDetails? $class, String? $__typename}) => _res;

  CopyWith_Fragment_ClassDetails<TRes> get $class =>
      CopyWith_Fragment_ClassDetails.stub(_res);
}

const documentNodeQueryclass = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'class'),
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
            name: NameNode(value: 'class'),
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
                  name: NameNode(value: 'ClassDetails'),
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
    fragmentDefinitionClassDetails,
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
  ],
);
