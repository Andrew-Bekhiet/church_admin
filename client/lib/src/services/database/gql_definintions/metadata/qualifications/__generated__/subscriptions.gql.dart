import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllQualifications {
  factory Variables_Subscription_watchAllQualifications({
    List<Input_QualificationsBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_watchAllQualifications._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllQualifications._(this._$data);

  factory Variables_Subscription_watchAllQualifications.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_QualificationsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllQualifications._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_QualificationsBoolExp>? get where =>
      (_$data['where'] as List<Input_QualificationsBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAllQualifications<
          Variables_Subscription_watchAllQualifications>
      get copyWith => CopyWith_Variables_Subscription_watchAllQualifications(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllQualifications) ||
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

abstract class CopyWith_Variables_Subscription_watchAllQualifications<TRes> {
  factory CopyWith_Variables_Subscription_watchAllQualifications(
    Variables_Subscription_watchAllQualifications instance,
    TRes Function(Variables_Subscription_watchAllQualifications) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllQualifications;

  factory CopyWith_Variables_Subscription_watchAllQualifications.stub(
          TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllQualifications;

  TRes call({
    List<Input_QualificationsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllQualifications<TRes>
    implements CopyWith_Variables_Subscription_watchAllQualifications<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllQualifications(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllQualifications _instance;

  final TRes Function(Variables_Subscription_watchAllQualifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllQualifications._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_QualificationsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllQualifications<TRes>
    implements CopyWith_Variables_Subscription_watchAllQualifications<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllQualifications(this._res);

  TRes _res;

  call({
    List<Input_QualificationsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllQualifications {
  Subscription_watchAllQualifications({required this.qualifications});

  factory Subscription_watchAllQualifications.fromJson(
      Map<String, dynamic> json) {
    final l$qualifications = json['qualifications'];
    return Subscription_watchAllQualifications(
        qualifications: (l$qualifications as List<dynamic>)
            .map((e) =>
                Subscription_watchAllQualifications_qualifications.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllQualifications_qualifications> qualifications;

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
    if (!(other is Subscription_watchAllQualifications) ||
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

extension UtilityExtension_Subscription_watchAllQualifications
    on Subscription_watchAllQualifications {
  CopyWith_Subscription_watchAllQualifications<
          Subscription_watchAllQualifications>
      get copyWith => CopyWith_Subscription_watchAllQualifications(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllQualifications<TRes> {
  factory CopyWith_Subscription_watchAllQualifications(
    Subscription_watchAllQualifications instance,
    TRes Function(Subscription_watchAllQualifications) then,
  ) = _CopyWithImpl_Subscription_watchAllQualifications;

  factory CopyWith_Subscription_watchAllQualifications.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllQualifications;

  TRes call(
      {List<Subscription_watchAllQualifications_qualifications>?
          qualifications});
  TRes qualifications(
      Iterable<Subscription_watchAllQualifications_qualifications> Function(
              Iterable<
                  CopyWith_Subscription_watchAllQualifications_qualifications<
                      Subscription_watchAllQualifications_qualifications>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllQualifications<TRes>
    implements CopyWith_Subscription_watchAllQualifications<TRes> {
  _CopyWithImpl_Subscription_watchAllQualifications(
    this._instance,
    this._then,
  );

  final Subscription_watchAllQualifications _instance;

  final TRes Function(Subscription_watchAllQualifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? qualifications = _undefined}) =>
      _then(Subscription_watchAllQualifications(
          qualifications: qualifications == _undefined || qualifications == null
              ? _instance.qualifications
              : (qualifications as List<
                  Subscription_watchAllQualifications_qualifications>)));

  TRes qualifications(
          Iterable<Subscription_watchAllQualifications_qualifications> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllQualifications_qualifications<
                          Subscription_watchAllQualifications_qualifications>>)
              _fn) =>
      call(
          qualifications: _fn(_instance.qualifications.map((e) =>
              CopyWith_Subscription_watchAllQualifications_qualifications(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllQualifications<TRes>
    implements CopyWith_Subscription_watchAllQualifications<TRes> {
  _CopyWithStubImpl_Subscription_watchAllQualifications(this._res);

  TRes _res;

  call(
          {List<Subscription_watchAllQualifications_qualifications>?
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

class Subscription_watchAllQualifications_qualifications {
  Subscription_watchAllQualifications_qualifications({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Subscription_watchAllQualifications_qualifications.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllQualifications_qualifications(
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
    if (!(other is Subscription_watchAllQualifications_qualifications) ||
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

extension UtilityExtension_Subscription_watchAllQualifications_qualifications
    on Subscription_watchAllQualifications_qualifications {
  CopyWith_Subscription_watchAllQualifications_qualifications<
          Subscription_watchAllQualifications_qualifications>
      get copyWith =>
          CopyWith_Subscription_watchAllQualifications_qualifications(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllQualifications_qualifications<
    TRes> {
  factory CopyWith_Subscription_watchAllQualifications_qualifications(
    Subscription_watchAllQualifications_qualifications instance,
    TRes Function(Subscription_watchAllQualifications_qualifications) then,
  ) = _CopyWithImpl_Subscription_watchAllQualifications_qualifications;

  factory CopyWith_Subscription_watchAllQualifications_qualifications.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllQualifications_qualifications;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllQualifications_qualifications<TRes>
    implements
        CopyWith_Subscription_watchAllQualifications_qualifications<TRes> {
  _CopyWithImpl_Subscription_watchAllQualifications_qualifications(
    this._instance,
    this._then,
  );

  final Subscription_watchAllQualifications_qualifications _instance;

  final TRes Function(Subscription_watchAllQualifications_qualifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllQualifications_qualifications(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllQualifications_qualifications<TRes>
    implements
        CopyWith_Subscription_watchAllQualifications_qualifications<TRes> {
  _CopyWithStubImpl_Subscription_watchAllQualifications_qualifications(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
