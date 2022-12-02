import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getStudyYearsStream {
  factory Variables$Subscription$getStudyYearsStream({
    List<Input$StudyYearsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$getStudyYearsStream._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getStudyYearsStream._(this._$data);

  factory Variables$Subscription$getStudyYearsStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$StudyYearsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getStudyYearsStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StudyYearsBoolExp>? get where =>
      (_$data['where'] as List<Input$StudyYearsBoolExp>?);
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

  CopyWith$Variables$Subscription$getStudyYearsStream<
          Variables$Subscription$getStudyYearsStream>
      get copyWith => CopyWith$Variables$Subscription$getStudyYearsStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getStudyYearsStream) ||
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

abstract class CopyWith$Variables$Subscription$getStudyYearsStream<TRes> {
  factory CopyWith$Variables$Subscription$getStudyYearsStream(
    Variables$Subscription$getStudyYearsStream instance,
    TRes Function(Variables$Subscription$getStudyYearsStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getStudyYearsStream;

  factory CopyWith$Variables$Subscription$getStudyYearsStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getStudyYearsStream;

  TRes call({
    List<Input$StudyYearsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getStudyYearsStream<TRes>
    implements CopyWith$Variables$Subscription$getStudyYearsStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getStudyYearsStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getStudyYearsStream _instance;

  final TRes Function(Variables$Subscription$getStudyYearsStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getStudyYearsStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$StudyYearsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getStudyYearsStream<TRes>
    implements CopyWith$Variables$Subscription$getStudyYearsStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getStudyYearsStream(this._res);

  TRes _res;

  call({
    List<Input$StudyYearsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$getStudyYearsStream {
  Subscription$getStudyYearsStream({required this.studyYears});

  factory Subscription$getStudyYearsStream.fromJson(Map<String, dynamic> json) {
    final l$studyYears = json['studyYears'];
    return Subscription$getStudyYearsStream(
        studyYears: (l$studyYears as List<dynamic>)
            .map((e) => Subscription$getStudyYearsStream$studyYears.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getStudyYearsStream$studyYears> studyYears;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studyYears = studyYears;
    _resultData['studyYears'] = l$studyYears.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studyYears = studyYears;
    return Object.hashAll([Object.hashAll(l$studyYears.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getStudyYearsStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studyYears = studyYears;
    final lOther$studyYears = other.studyYears;
    if (l$studyYears.length != lOther$studyYears.length) {
      return false;
    }
    for (int i = 0; i < l$studyYears.length; i++) {
      final l$studyYears$entry = l$studyYears[i];
      final lOther$studyYears$entry = lOther$studyYears[i];
      if (l$studyYears$entry != lOther$studyYears$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getStudyYearsStream
    on Subscription$getStudyYearsStream {
  CopyWith$Subscription$getStudyYearsStream<Subscription$getStudyYearsStream>
      get copyWith => CopyWith$Subscription$getStudyYearsStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getStudyYearsStream<TRes> {
  factory CopyWith$Subscription$getStudyYearsStream(
    Subscription$getStudyYearsStream instance,
    TRes Function(Subscription$getStudyYearsStream) then,
  ) = _CopyWithImpl$Subscription$getStudyYearsStream;

  factory CopyWith$Subscription$getStudyYearsStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getStudyYearsStream;

  TRes call({List<Subscription$getStudyYearsStream$studyYears>? studyYears});
  TRes studyYears(
      Iterable<Subscription$getStudyYearsStream$studyYears> Function(
              Iterable<
                  CopyWith$Subscription$getStudyYearsStream$studyYears<
                      Subscription$getStudyYearsStream$studyYears>>)
          _fn);
}

class _CopyWithImpl$Subscription$getStudyYearsStream<TRes>
    implements CopyWith$Subscription$getStudyYearsStream<TRes> {
  _CopyWithImpl$Subscription$getStudyYearsStream(
    this._instance,
    this._then,
  );

  final Subscription$getStudyYearsStream _instance;

  final TRes Function(Subscription$getStudyYearsStream) _then;

  static const _undefined = {};

  TRes call({Object? studyYears = _undefined}) =>
      _then(Subscription$getStudyYearsStream(
          studyYears: studyYears == _undefined || studyYears == null
              ? _instance.studyYears
              : (studyYears
                  as List<Subscription$getStudyYearsStream$studyYears>)));
  TRes studyYears(
          Iterable<Subscription$getStudyYearsStream$studyYears> Function(
                  Iterable<
                      CopyWith$Subscription$getStudyYearsStream$studyYears<
                          Subscription$getStudyYearsStream$studyYears>>)
              _fn) =>
      call(
          studyYears: _fn(_instance.studyYears
              .map((e) => CopyWith$Subscription$getStudyYearsStream$studyYears(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getStudyYearsStream<TRes>
    implements CopyWith$Subscription$getStudyYearsStream<TRes> {
  _CopyWithStubImpl$Subscription$getStudyYearsStream(this._res);

  TRes _res;

  call({List<Subscription$getStudyYearsStream$studyYears>? studyYears}) => _res;
  studyYears(_fn) => _res;
}

const documentNodeSubscriptiongetStudyYearsStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getStudyYearsStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'StudyYearsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'studyYears'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'order'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'order'),
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
]);

class Subscription$getStudyYearsStream$studyYears {
  Subscription$getStudyYearsStream$studyYears({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$getStudyYearsStream$studyYears.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$getStudyYearsStream$studyYears(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getStudyYearsStream$studyYears) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$getStudyYearsStream$studyYears
    on Subscription$getStudyYearsStream$studyYears {
  CopyWith$Subscription$getStudyYearsStream$studyYears<
          Subscription$getStudyYearsStream$studyYears>
      get copyWith => CopyWith$Subscription$getStudyYearsStream$studyYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getStudyYearsStream$studyYears<TRes> {
  factory CopyWith$Subscription$getStudyYearsStream$studyYears(
    Subscription$getStudyYearsStream$studyYears instance,
    TRes Function(Subscription$getStudyYearsStream$studyYears) then,
  ) = _CopyWithImpl$Subscription$getStudyYearsStream$studyYears;

  factory CopyWith$Subscription$getStudyYearsStream$studyYears.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getStudyYearsStream$studyYears;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getStudyYearsStream$studyYears<TRes>
    implements CopyWith$Subscription$getStudyYearsStream$studyYears<TRes> {
  _CopyWithImpl$Subscription$getStudyYearsStream$studyYears(
    this._instance,
    this._then,
  );

  final Subscription$getStudyYearsStream$studyYears _instance;

  final TRes Function(Subscription$getStudyYearsStream$studyYears) _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getStudyYearsStream$studyYears(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getStudyYearsStream$studyYears<TRes>
    implements CopyWith$Subscription$getStudyYearsStream$studyYears<TRes> {
  _CopyWithStubImpl$Subscription$getStudyYearsStream$studyYears(this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
