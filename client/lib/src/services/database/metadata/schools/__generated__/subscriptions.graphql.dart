import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getSchoolsStream {
  factory Variables$Subscription$getSchoolsStream({
    List<Input$SchoolsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$getSchoolsStream._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getSchoolsStream._(this._$data);

  factory Variables$Subscription$getSchoolsStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$SchoolsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getSchoolsStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SchoolsBoolExp>? get where =>
      (_$data['where'] as List<Input$SchoolsBoolExp>?);
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

  CopyWith$Variables$Subscription$getSchoolsStream<
          Variables$Subscription$getSchoolsStream>
      get copyWith => CopyWith$Variables$Subscription$getSchoolsStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getSchoolsStream) ||
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

abstract class CopyWith$Variables$Subscription$getSchoolsStream<TRes> {
  factory CopyWith$Variables$Subscription$getSchoolsStream(
    Variables$Subscription$getSchoolsStream instance,
    TRes Function(Variables$Subscription$getSchoolsStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getSchoolsStream;

  factory CopyWith$Variables$Subscription$getSchoolsStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getSchoolsStream;

  TRes call({
    List<Input$SchoolsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getSchoolsStream<TRes>
    implements CopyWith$Variables$Subscription$getSchoolsStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getSchoolsStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getSchoolsStream _instance;

  final TRes Function(Variables$Subscription$getSchoolsStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getSchoolsStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$SchoolsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getSchoolsStream<TRes>
    implements CopyWith$Variables$Subscription$getSchoolsStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getSchoolsStream(this._res);

  TRes _res;

  call({
    List<Input$SchoolsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$getSchoolsStream {
  Subscription$getSchoolsStream({required this.schools});

  factory Subscription$getSchoolsStream.fromJson(Map<String, dynamic> json) {
    final l$schools = json['schools'];
    return Subscription$getSchoolsStream(
        schools: (l$schools as List<dynamic>)
            .map((e) => Subscription$getSchoolsStream$schools.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getSchoolsStream$schools> schools;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$schools = schools;
    _resultData['schools'] = l$schools.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$schools = schools;
    return Object.hashAll([Object.hashAll(l$schools.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getSchoolsStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$schools = schools;
    final lOther$schools = other.schools;
    if (l$schools.length != lOther$schools.length) {
      return false;
    }
    for (int i = 0; i < l$schools.length; i++) {
      final l$schools$entry = l$schools[i];
      final lOther$schools$entry = lOther$schools[i];
      if (l$schools$entry != lOther$schools$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getSchoolsStream
    on Subscription$getSchoolsStream {
  CopyWith$Subscription$getSchoolsStream<Subscription$getSchoolsStream>
      get copyWith => CopyWith$Subscription$getSchoolsStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getSchoolsStream<TRes> {
  factory CopyWith$Subscription$getSchoolsStream(
    Subscription$getSchoolsStream instance,
    TRes Function(Subscription$getSchoolsStream) then,
  ) = _CopyWithImpl$Subscription$getSchoolsStream;

  factory CopyWith$Subscription$getSchoolsStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getSchoolsStream;

  TRes call({List<Subscription$getSchoolsStream$schools>? schools});
  TRes schools(
      Iterable<Subscription$getSchoolsStream$schools> Function(
              Iterable<
                  CopyWith$Subscription$getSchoolsStream$schools<
                      Subscription$getSchoolsStream$schools>>)
          _fn);
}

class _CopyWithImpl$Subscription$getSchoolsStream<TRes>
    implements CopyWith$Subscription$getSchoolsStream<TRes> {
  _CopyWithImpl$Subscription$getSchoolsStream(
    this._instance,
    this._then,
  );

  final Subscription$getSchoolsStream _instance;

  final TRes Function(Subscription$getSchoolsStream) _then;

  static const _undefined = {};

  TRes call({Object? schools = _undefined}) =>
      _then(Subscription$getSchoolsStream(
          schools: schools == _undefined || schools == null
              ? _instance.schools
              : (schools as List<Subscription$getSchoolsStream$schools>)));
  TRes schools(
          Iterable<Subscription$getSchoolsStream$schools> Function(
                  Iterable<
                      CopyWith$Subscription$getSchoolsStream$schools<
                          Subscription$getSchoolsStream$schools>>)
              _fn) =>
      call(
          schools: _fn(_instance.schools
              .map((e) => CopyWith$Subscription$getSchoolsStream$schools(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getSchoolsStream<TRes>
    implements CopyWith$Subscription$getSchoolsStream<TRes> {
  _CopyWithStubImpl$Subscription$getSchoolsStream(this._res);

  TRes _res;

  call({List<Subscription$getSchoolsStream$schools>? schools}) => _res;
  schools(_fn) => _res;
}

const documentNodeSubscriptiongetSchoolsStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getSchoolsStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'SchoolsBoolExp'),
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
        name: NameNode(value: 'schools'),
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

class Subscription$getSchoolsStream$schools {
  Subscription$getSchoolsStream$schools({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$getSchoolsStream$schools.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$getSchoolsStream$schools(
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
    if (!(other is Subscription$getSchoolsStream$schools) ||
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

extension UtilityExtension$Subscription$getSchoolsStream$schools
    on Subscription$getSchoolsStream$schools {
  CopyWith$Subscription$getSchoolsStream$schools<
          Subscription$getSchoolsStream$schools>
      get copyWith => CopyWith$Subscription$getSchoolsStream$schools(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getSchoolsStream$schools<TRes> {
  factory CopyWith$Subscription$getSchoolsStream$schools(
    Subscription$getSchoolsStream$schools instance,
    TRes Function(Subscription$getSchoolsStream$schools) then,
  ) = _CopyWithImpl$Subscription$getSchoolsStream$schools;

  factory CopyWith$Subscription$getSchoolsStream$schools.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getSchoolsStream$schools;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getSchoolsStream$schools<TRes>
    implements CopyWith$Subscription$getSchoolsStream$schools<TRes> {
  _CopyWithImpl$Subscription$getSchoolsStream$schools(
    this._instance,
    this._then,
  );

  final Subscription$getSchoolsStream$schools _instance;

  final TRes Function(Subscription$getSchoolsStream$schools) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getSchoolsStream$schools(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getSchoolsStream$schools<TRes>
    implements CopyWith$Subscription$getSchoolsStream$schools<TRes> {
  _CopyWithStubImpl$Subscription$getSchoolsStream$schools(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
