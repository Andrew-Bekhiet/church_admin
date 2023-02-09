import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllQualifications {
  factory Variables$Subscription$watchAllQualifications({
    List<Input$QualificationsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllQualifications._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllQualifications._(this._$data);

  factory Variables$Subscription$watchAllQualifications.fromJson(
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
    return Variables$Subscription$watchAllQualifications._(result$data);
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

  CopyWith$Variables$Subscription$watchAllQualifications<
          Variables$Subscription$watchAllQualifications>
      get copyWith => CopyWith$Variables$Subscription$watchAllQualifications(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllQualifications) ||
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

abstract class CopyWith$Variables$Subscription$watchAllQualifications<TRes> {
  factory CopyWith$Variables$Subscription$watchAllQualifications(
    Variables$Subscription$watchAllQualifications instance,
    TRes Function(Variables$Subscription$watchAllQualifications) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllQualifications;

  factory CopyWith$Variables$Subscription$watchAllQualifications.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllQualifications;

  TRes call({
    List<Input$QualificationsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllQualifications<TRes>
    implements CopyWith$Variables$Subscription$watchAllQualifications<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllQualifications(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllQualifications _instance;

  final TRes Function(Variables$Subscription$watchAllQualifications) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllQualifications._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$QualificationsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllQualifications<TRes>
    implements CopyWith$Variables$Subscription$watchAllQualifications<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllQualifications(this._res);

  TRes _res;

  call({
    List<Input$QualificationsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllQualifications {
  Subscription$watchAllQualifications({required this.qualifications});

  factory Subscription$watchAllQualifications.fromJson(
      Map<String, dynamic> json) {
    final l$qualifications = json['qualifications'];
    return Subscription$watchAllQualifications(
        qualifications: (l$qualifications as List<dynamic>)
            .map((e) =>
                Subscription$watchAllQualifications$qualifications.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllQualifications$qualifications> qualifications;

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
    if (!(other is Subscription$watchAllQualifications) ||
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

extension UtilityExtension$Subscription$watchAllQualifications
    on Subscription$watchAllQualifications {
  CopyWith$Subscription$watchAllQualifications<
          Subscription$watchAllQualifications>
      get copyWith => CopyWith$Subscription$watchAllQualifications(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllQualifications<TRes> {
  factory CopyWith$Subscription$watchAllQualifications(
    Subscription$watchAllQualifications instance,
    TRes Function(Subscription$watchAllQualifications) then,
  ) = _CopyWithImpl$Subscription$watchAllQualifications;

  factory CopyWith$Subscription$watchAllQualifications.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllQualifications;

  TRes call(
      {List<Subscription$watchAllQualifications$qualifications>?
          qualifications});
  TRes qualifications(
      Iterable<Subscription$watchAllQualifications$qualifications> Function(
              Iterable<
                  CopyWith$Subscription$watchAllQualifications$qualifications<
                      Subscription$watchAllQualifications$qualifications>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllQualifications<TRes>
    implements CopyWith$Subscription$watchAllQualifications<TRes> {
  _CopyWithImpl$Subscription$watchAllQualifications(
    this._instance,
    this._then,
  );

  final Subscription$watchAllQualifications _instance;

  final TRes Function(Subscription$watchAllQualifications) _then;

  static const _undefined = {};

  TRes call({Object? qualifications = _undefined}) =>
      _then(Subscription$watchAllQualifications(
          qualifications: qualifications == _undefined || qualifications == null
              ? _instance.qualifications
              : (qualifications as List<
                  Subscription$watchAllQualifications$qualifications>)));
  TRes qualifications(
          Iterable<Subscription$watchAllQualifications$qualifications> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllQualifications$qualifications<
                          Subscription$watchAllQualifications$qualifications>>)
              _fn) =>
      call(
          qualifications: _fn(_instance.qualifications.map((e) =>
              CopyWith$Subscription$watchAllQualifications$qualifications(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllQualifications<TRes>
    implements CopyWith$Subscription$watchAllQualifications<TRes> {
  _CopyWithStubImpl$Subscription$watchAllQualifications(this._res);

  TRes _res;

  call(
          {List<Subscription$watchAllQualifications$qualifications>?
              qualifications}) =>
      _res;
  qualifications(_fn) => _res;
}

const documentNodeSubscriptionwatchAllQualifications =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllQualifications'),
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

class Subscription$watchAllQualifications$qualifications {
  Subscription$watchAllQualifications$qualifications({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchAllQualifications$qualifications.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllQualifications$qualifications(
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
    if (!(other is Subscription$watchAllQualifications$qualifications) ||
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

extension UtilityExtension$Subscription$watchAllQualifications$qualifications
    on Subscription$watchAllQualifications$qualifications {
  CopyWith$Subscription$watchAllQualifications$qualifications<
          Subscription$watchAllQualifications$qualifications>
      get copyWith =>
          CopyWith$Subscription$watchAllQualifications$qualifications(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllQualifications$qualifications<
    TRes> {
  factory CopyWith$Subscription$watchAllQualifications$qualifications(
    Subscription$watchAllQualifications$qualifications instance,
    TRes Function(Subscription$watchAllQualifications$qualifications) then,
  ) = _CopyWithImpl$Subscription$watchAllQualifications$qualifications;

  factory CopyWith$Subscription$watchAllQualifications$qualifications.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchAllQualifications$qualifications;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllQualifications$qualifications<TRes>
    implements
        CopyWith$Subscription$watchAllQualifications$qualifications<TRes> {
  _CopyWithImpl$Subscription$watchAllQualifications$qualifications(
    this._instance,
    this._then,
  );

  final Subscription$watchAllQualifications$qualifications _instance;

  final TRes Function(Subscription$watchAllQualifications$qualifications) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllQualifications$qualifications(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllQualifications$qualifications<TRes>
    implements
        CopyWith$Subscription$watchAllQualifications$qualifications<TRes> {
  _CopyWithStubImpl$Subscription$watchAllQualifications$qualifications(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
