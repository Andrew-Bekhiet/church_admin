import 'package:gql/ast.dart';

class Variables$Query$getStudyYearName {
  factory Variables$Query$getStudyYearName({required int order}) =>
      Variables$Query$getStudyYearName._({
        r'order': order,
      });

  Variables$Query$getStudyYearName._(this._$data);

  factory Variables$Query$getStudyYearName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$order = data['order'];
    result$data['order'] = (l$order as int);
    return Variables$Query$getStudyYearName._(result$data);
  }

  Map<String, dynamic> _$data;

  int get order => (_$data['order'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$order = order;
    result$data['order'] = l$order;
    return result$data;
  }

  CopyWith$Variables$Query$getStudyYearName<Variables$Query$getStudyYearName>
      get copyWith => CopyWith$Variables$Query$getStudyYearName(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getStudyYearName) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    return Object.hashAll([l$order]);
  }
}

abstract class CopyWith$Variables$Query$getStudyYearName<TRes> {
  factory CopyWith$Variables$Query$getStudyYearName(
    Variables$Query$getStudyYearName instance,
    TRes Function(Variables$Query$getStudyYearName) then,
  ) = _CopyWithImpl$Variables$Query$getStudyYearName;

  factory CopyWith$Variables$Query$getStudyYearName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getStudyYearName;

  TRes call({int? order});
}

class _CopyWithImpl$Variables$Query$getStudyYearName<TRes>
    implements CopyWith$Variables$Query$getStudyYearName<TRes> {
  _CopyWithImpl$Variables$Query$getStudyYearName(
    this._instance,
    this._then,
  );

  final Variables$Query$getStudyYearName _instance;

  final TRes Function(Variables$Query$getStudyYearName) _then;

  static const _undefined = {};

  TRes call({Object? order = _undefined}) =>
      _then(Variables$Query$getStudyYearName._({
        ..._instance._$data,
        if (order != _undefined && order != null) 'order': (order as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$getStudyYearName<TRes>
    implements CopyWith$Variables$Query$getStudyYearName<TRes> {
  _CopyWithStubImpl$Variables$Query$getStudyYearName(this._res);

  TRes _res;

  call({int? order}) => _res;
}

class Query$getStudyYearName {
  Query$getStudyYearName({
    this.studyYearsByPk,
    required this.$__typename,
  });

  factory Query$getStudyYearName.fromJson(Map<String, dynamic> json) {
    final l$studyYearsByPk = json['studyYearsByPk'];
    final l$$__typename = json['__typename'];
    return Query$getStudyYearName(
      studyYearsByPk: l$studyYearsByPk == null
          ? null
          : Query$getStudyYearName$studyYearsByPk.fromJson(
              (l$studyYearsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getStudyYearName$studyYearsByPk? studyYearsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studyYearsByPk = studyYearsByPk;
    _resultData['studyYearsByPk'] = l$studyYearsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studyYearsByPk = studyYearsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$studyYearsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getStudyYearName) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studyYearsByPk = studyYearsByPk;
    final lOther$studyYearsByPk = other.studyYearsByPk;
    if (l$studyYearsByPk != lOther$studyYearsByPk) {
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

extension UtilityExtension$Query$getStudyYearName on Query$getStudyYearName {
  CopyWith$Query$getStudyYearName<Query$getStudyYearName> get copyWith =>
      CopyWith$Query$getStudyYearName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getStudyYearName<TRes> {
  factory CopyWith$Query$getStudyYearName(
    Query$getStudyYearName instance,
    TRes Function(Query$getStudyYearName) then,
  ) = _CopyWithImpl$Query$getStudyYearName;

  factory CopyWith$Query$getStudyYearName.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudyYearName;

  TRes call({
    Query$getStudyYearName$studyYearsByPk? studyYearsByPk,
    String? $__typename,
  });
  CopyWith$Query$getStudyYearName$studyYearsByPk<TRes> get studyYearsByPk;
}

class _CopyWithImpl$Query$getStudyYearName<TRes>
    implements CopyWith$Query$getStudyYearName<TRes> {
  _CopyWithImpl$Query$getStudyYearName(
    this._instance,
    this._then,
  );

  final Query$getStudyYearName _instance;

  final TRes Function(Query$getStudyYearName) _then;

  static const _undefined = {};

  TRes call({
    Object? studyYearsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudyYearName(
        studyYearsByPk: studyYearsByPk == _undefined
            ? _instance.studyYearsByPk
            : (studyYearsByPk as Query$getStudyYearName$studyYearsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getStudyYearName$studyYearsByPk<TRes> get studyYearsByPk {
    final local$studyYearsByPk = _instance.studyYearsByPk;
    return local$studyYearsByPk == null
        ? CopyWith$Query$getStudyYearName$studyYearsByPk.stub(_then(_instance))
        : CopyWith$Query$getStudyYearName$studyYearsByPk(
            local$studyYearsByPk, (e) => call(studyYearsByPk: e));
  }
}

class _CopyWithStubImpl$Query$getStudyYearName<TRes>
    implements CopyWith$Query$getStudyYearName<TRes> {
  _CopyWithStubImpl$Query$getStudyYearName(this._res);

  TRes _res;

  call({
    Query$getStudyYearName$studyYearsByPk? studyYearsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getStudyYearName$studyYearsByPk<TRes> get studyYearsByPk =>
      CopyWith$Query$getStudyYearName$studyYearsByPk.stub(_res);
}

const documentNodeQuerygetStudyYearName = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getStudyYearName'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: NamedTypeNode(
          name: NameNode(value: 'smallint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'studyYearsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          )
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
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getStudyYearName$studyYearsByPk {
  Query$getStudyYearName$studyYearsByPk({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$getStudyYearName$studyYearsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getStudyYearName$studyYearsByPk(
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
    if (!(other is Query$getStudyYearName$studyYearsByPk) ||
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

extension UtilityExtension$Query$getStudyYearName$studyYearsByPk
    on Query$getStudyYearName$studyYearsByPk {
  CopyWith$Query$getStudyYearName$studyYearsByPk<
          Query$getStudyYearName$studyYearsByPk>
      get copyWith => CopyWith$Query$getStudyYearName$studyYearsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStudyYearName$studyYearsByPk<TRes> {
  factory CopyWith$Query$getStudyYearName$studyYearsByPk(
    Query$getStudyYearName$studyYearsByPk instance,
    TRes Function(Query$getStudyYearName$studyYearsByPk) then,
  ) = _CopyWithImpl$Query$getStudyYearName$studyYearsByPk;

  factory CopyWith$Query$getStudyYearName$studyYearsByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudyYearName$studyYearsByPk;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getStudyYearName$studyYearsByPk<TRes>
    implements CopyWith$Query$getStudyYearName$studyYearsByPk<TRes> {
  _CopyWithImpl$Query$getStudyYearName$studyYearsByPk(
    this._instance,
    this._then,
  );

  final Query$getStudyYearName$studyYearsByPk _instance;

  final TRes Function(Query$getStudyYearName$studyYearsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudyYearName$studyYearsByPk(
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

class _CopyWithStubImpl$Query$getStudyYearName$studyYearsByPk<TRes>
    implements CopyWith$Query$getStudyYearName$studyYearsByPk<TRes> {
  _CopyWithStubImpl$Query$getStudyYearName$studyYearsByPk(this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
