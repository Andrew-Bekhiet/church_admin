import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getCollegesStream {
  factory Variables$Subscription$getCollegesStream({
    List<Input$CollegesBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$getCollegesStream._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getCollegesStream._(this._$data);

  factory Variables$Subscription$getCollegesStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$CollegesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getCollegesStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CollegesBoolExp>? get where =>
      (_$data['where'] as List<Input$CollegesBoolExp>?);
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

  CopyWith$Variables$Subscription$getCollegesStream<
          Variables$Subscription$getCollegesStream>
      get copyWith => CopyWith$Variables$Subscription$getCollegesStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getCollegesStream) ||
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

abstract class CopyWith$Variables$Subscription$getCollegesStream<TRes> {
  factory CopyWith$Variables$Subscription$getCollegesStream(
    Variables$Subscription$getCollegesStream instance,
    TRes Function(Variables$Subscription$getCollegesStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getCollegesStream;

  factory CopyWith$Variables$Subscription$getCollegesStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getCollegesStream;

  TRes call({
    List<Input$CollegesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getCollegesStream<TRes>
    implements CopyWith$Variables$Subscription$getCollegesStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getCollegesStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getCollegesStream _instance;

  final TRes Function(Variables$Subscription$getCollegesStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getCollegesStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$CollegesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getCollegesStream<TRes>
    implements CopyWith$Variables$Subscription$getCollegesStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getCollegesStream(this._res);

  TRes _res;

  call({
    List<Input$CollegesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$getCollegesStream {
  Subscription$getCollegesStream({required this.colleges});

  factory Subscription$getCollegesStream.fromJson(Map<String, dynamic> json) {
    final l$colleges = json['colleges'];
    return Subscription$getCollegesStream(
        colleges: (l$colleges as List<dynamic>)
            .map((e) => Subscription$getCollegesStream$colleges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getCollegesStream$colleges> colleges;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$colleges = colleges;
    _resultData['colleges'] = l$colleges.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$colleges = colleges;
    return Object.hashAll([Object.hashAll(l$colleges.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getCollegesStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$colleges = colleges;
    final lOther$colleges = other.colleges;
    if (l$colleges.length != lOther$colleges.length) {
      return false;
    }
    for (int i = 0; i < l$colleges.length; i++) {
      final l$colleges$entry = l$colleges[i];
      final lOther$colleges$entry = lOther$colleges[i];
      if (l$colleges$entry != lOther$colleges$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getCollegesStream
    on Subscription$getCollegesStream {
  CopyWith$Subscription$getCollegesStream<Subscription$getCollegesStream>
      get copyWith => CopyWith$Subscription$getCollegesStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCollegesStream<TRes> {
  factory CopyWith$Subscription$getCollegesStream(
    Subscription$getCollegesStream instance,
    TRes Function(Subscription$getCollegesStream) then,
  ) = _CopyWithImpl$Subscription$getCollegesStream;

  factory CopyWith$Subscription$getCollegesStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getCollegesStream;

  TRes call({List<Subscription$getCollegesStream$colleges>? colleges});
  TRes colleges(
      Iterable<Subscription$getCollegesStream$colleges> Function(
              Iterable<
                  CopyWith$Subscription$getCollegesStream$colleges<
                      Subscription$getCollegesStream$colleges>>)
          _fn);
}

class _CopyWithImpl$Subscription$getCollegesStream<TRes>
    implements CopyWith$Subscription$getCollegesStream<TRes> {
  _CopyWithImpl$Subscription$getCollegesStream(
    this._instance,
    this._then,
  );

  final Subscription$getCollegesStream _instance;

  final TRes Function(Subscription$getCollegesStream) _then;

  static const _undefined = {};

  TRes call({Object? colleges = _undefined}) =>
      _then(Subscription$getCollegesStream(
          colleges: colleges == _undefined || colleges == null
              ? _instance.colleges
              : (colleges as List<Subscription$getCollegesStream$colleges>)));
  TRes colleges(
          Iterable<Subscription$getCollegesStream$colleges> Function(
                  Iterable<
                      CopyWith$Subscription$getCollegesStream$colleges<
                          Subscription$getCollegesStream$colleges>>)
              _fn) =>
      call(
          colleges: _fn(_instance.colleges
              .map((e) => CopyWith$Subscription$getCollegesStream$colleges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getCollegesStream<TRes>
    implements CopyWith$Subscription$getCollegesStream<TRes> {
  _CopyWithStubImpl$Subscription$getCollegesStream(this._res);

  TRes _res;

  call({List<Subscription$getCollegesStream$colleges>? colleges}) => _res;
  colleges(_fn) => _res;
}

const documentNodeSubscriptiongetCollegesStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getCollegesStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CollegesBoolExp'),
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
        name: NameNode(value: 'colleges'),
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
                name: NameNode(value: 'name'),
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

class Subscription$getCollegesStream$colleges {
  Subscription$getCollegesStream$colleges({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$getCollegesStream$colleges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$getCollegesStream$colleges(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getCollegesStream$colleges) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getCollegesStream$colleges
    on Subscription$getCollegesStream$colleges {
  CopyWith$Subscription$getCollegesStream$colleges<
          Subscription$getCollegesStream$colleges>
      get copyWith => CopyWith$Subscription$getCollegesStream$colleges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCollegesStream$colleges<TRes> {
  factory CopyWith$Subscription$getCollegesStream$colleges(
    Subscription$getCollegesStream$colleges instance,
    TRes Function(Subscription$getCollegesStream$colleges) then,
  ) = _CopyWithImpl$Subscription$getCollegesStream$colleges;

  factory CopyWith$Subscription$getCollegesStream$colleges.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getCollegesStream$colleges;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getCollegesStream$colleges<TRes>
    implements CopyWith$Subscription$getCollegesStream$colleges<TRes> {
  _CopyWithImpl$Subscription$getCollegesStream$colleges(
    this._instance,
    this._then,
  );

  final Subscription$getCollegesStream$colleges _instance;

  final TRes Function(Subscription$getCollegesStream$colleges) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getCollegesStream$colleges(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getCollegesStream$colleges<TRes>
    implements CopyWith$Subscription$getCollegesStream$colleges<TRes> {
  _CopyWithStubImpl$Subscription$getCollegesStream$colleges(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
