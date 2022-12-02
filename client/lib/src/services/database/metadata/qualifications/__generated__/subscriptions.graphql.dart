import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getQualificationsStream {
  factory Variables$Subscription$getQualificationsStream({
    List<Input$QualificationsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$getQualificationsStream._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getQualificationsStream._(this._$data);

  factory Variables$Subscription$getQualificationsStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$QualificationsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getQualificationsStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$QualificationsBoolExp>? get where =>
      (_$data['where'] as List<Input$QualificationsBoolExp>?);
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

  CopyWith$Variables$Subscription$getQualificationsStream<
          Variables$Subscription$getQualificationsStream>
      get copyWith => CopyWith$Variables$Subscription$getQualificationsStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getQualificationsStream) ||
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

abstract class CopyWith$Variables$Subscription$getQualificationsStream<TRes> {
  factory CopyWith$Variables$Subscription$getQualificationsStream(
    Variables$Subscription$getQualificationsStream instance,
    TRes Function(Variables$Subscription$getQualificationsStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getQualificationsStream;

  factory CopyWith$Variables$Subscription$getQualificationsStream.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getQualificationsStream;

  TRes call({
    List<Input$QualificationsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getQualificationsStream<TRes>
    implements CopyWith$Variables$Subscription$getQualificationsStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getQualificationsStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getQualificationsStream _instance;

  final TRes Function(Variables$Subscription$getQualificationsStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getQualificationsStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$QualificationsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getQualificationsStream<TRes>
    implements CopyWith$Variables$Subscription$getQualificationsStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getQualificationsStream(this._res);

  TRes _res;

  call({
    List<Input$QualificationsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$getQualificationsStream {
  Subscription$getQualificationsStream({required this.qualifications});

  factory Subscription$getQualificationsStream.fromJson(
      Map<String, dynamic> json) {
    final l$qualifications = json['qualifications'];
    return Subscription$getQualificationsStream(
        qualifications: (l$qualifications as List<dynamic>)
            .map((e) =>
                Subscription$getQualificationsStream$qualifications.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getQualificationsStream$qualifications>
      qualifications;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$qualifications = qualifications;
    _resultData['qualifications'] =
        l$qualifications.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$qualifications = qualifications;
    return Object.hashAll([Object.hashAll(l$qualifications.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getQualificationsStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$qualifications = qualifications;
    final lOther$qualifications = other.qualifications;
    if (l$qualifications.length != lOther$qualifications.length) {
      return false;
    }
    for (int i = 0; i < l$qualifications.length; i++) {
      final l$qualifications$entry = l$qualifications[i];
      final lOther$qualifications$entry = lOther$qualifications[i];
      if (l$qualifications$entry != lOther$qualifications$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getQualificationsStream
    on Subscription$getQualificationsStream {
  CopyWith$Subscription$getQualificationsStream<
          Subscription$getQualificationsStream>
      get copyWith => CopyWith$Subscription$getQualificationsStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getQualificationsStream<TRes> {
  factory CopyWith$Subscription$getQualificationsStream(
    Subscription$getQualificationsStream instance,
    TRes Function(Subscription$getQualificationsStream) then,
  ) = _CopyWithImpl$Subscription$getQualificationsStream;

  factory CopyWith$Subscription$getQualificationsStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getQualificationsStream;

  TRes call(
      {List<Subscription$getQualificationsStream$qualifications>?
          qualifications});
  TRes qualifications(
      Iterable<Subscription$getQualificationsStream$qualifications> Function(
              Iterable<
                  CopyWith$Subscription$getQualificationsStream$qualifications<
                      Subscription$getQualificationsStream$qualifications>>)
          _fn);
}

class _CopyWithImpl$Subscription$getQualificationsStream<TRes>
    implements CopyWith$Subscription$getQualificationsStream<TRes> {
  _CopyWithImpl$Subscription$getQualificationsStream(
    this._instance,
    this._then,
  );

  final Subscription$getQualificationsStream _instance;

  final TRes Function(Subscription$getQualificationsStream) _then;

  static const _undefined = {};

  TRes call({Object? qualifications = _undefined}) =>
      _then(Subscription$getQualificationsStream(
          qualifications: qualifications == _undefined || qualifications == null
              ? _instance.qualifications
              : (qualifications as List<
                  Subscription$getQualificationsStream$qualifications>)));
  TRes qualifications(
          Iterable<Subscription$getQualificationsStream$qualifications> Function(
                  Iterable<
                      CopyWith$Subscription$getQualificationsStream$qualifications<
                          Subscription$getQualificationsStream$qualifications>>)
              _fn) =>
      call(
          qualifications: _fn(_instance.qualifications.map((e) =>
              CopyWith$Subscription$getQualificationsStream$qualifications(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$getQualificationsStream<TRes>
    implements CopyWith$Subscription$getQualificationsStream<TRes> {
  _CopyWithStubImpl$Subscription$getQualificationsStream(this._res);

  TRes _res;

  call(
          {List<Subscription$getQualificationsStream$qualifications>?
              qualifications}) =>
      _res;
  qualifications(_fn) => _res;
}

const documentNodeSubscriptiongetQualificationsStream =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getQualificationsStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'QualificationsBoolExp'),
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
        name: NameNode(value: 'qualifications'),
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

class Subscription$getQualificationsStream$qualifications {
  Subscription$getQualificationsStream$qualifications({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$getQualificationsStream$qualifications.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$getQualificationsStream$qualifications(
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
    if (!(other is Subscription$getQualificationsStream$qualifications) ||
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

extension UtilityExtension$Subscription$getQualificationsStream$qualifications
    on Subscription$getQualificationsStream$qualifications {
  CopyWith$Subscription$getQualificationsStream$qualifications<
          Subscription$getQualificationsStream$qualifications>
      get copyWith =>
          CopyWith$Subscription$getQualificationsStream$qualifications(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getQualificationsStream$qualifications<
    TRes> {
  factory CopyWith$Subscription$getQualificationsStream$qualifications(
    Subscription$getQualificationsStream$qualifications instance,
    TRes Function(Subscription$getQualificationsStream$qualifications) then,
  ) = _CopyWithImpl$Subscription$getQualificationsStream$qualifications;

  factory CopyWith$Subscription$getQualificationsStream$qualifications.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getQualificationsStream$qualifications;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getQualificationsStream$qualifications<TRes>
    implements
        CopyWith$Subscription$getQualificationsStream$qualifications<TRes> {
  _CopyWithImpl$Subscription$getQualificationsStream$qualifications(
    this._instance,
    this._then,
  );

  final Subscription$getQualificationsStream$qualifications _instance;

  final TRes Function(Subscription$getQualificationsStream$qualifications)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getQualificationsStream$qualifications(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getQualificationsStream$qualifications<
        TRes>
    implements
        CopyWith$Subscription$getQualificationsStream$qualifications<TRes> {
  _CopyWithStubImpl$Subscription$getQualificationsStream$qualifications(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
