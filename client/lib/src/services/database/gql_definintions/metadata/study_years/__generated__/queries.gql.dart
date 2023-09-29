import 'package:gql/ast.dart';

class Variables_Query_getStudyYearName {
  factory Variables_Query_getStudyYearName({required int order}) =>
      Variables_Query_getStudyYearName._({
        r'order': order,
      });

  Variables_Query_getStudyYearName._(this._$data);

  factory Variables_Query_getStudyYearName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$order = data['order'];
    result$data['order'] = (l$order as int);
    return Variables_Query_getStudyYearName._(result$data);
  }

  Map<String, dynamic> _$data;

  int get order => (_$data['order'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$order = order;
    result$data['order'] = l$order;
    return result$data;
  }

  CopyWith_Variables_Query_getStudyYearName<Variables_Query_getStudyYearName>
      get copyWith => CopyWith_Variables_Query_getStudyYearName(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Query_getStudyYearName) ||
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

abstract class CopyWith_Variables_Query_getStudyYearName<TRes> {
  factory CopyWith_Variables_Query_getStudyYearName(
    Variables_Query_getStudyYearName instance,
    TRes Function(Variables_Query_getStudyYearName) then,
  ) = _CopyWithImpl_Variables_Query_getStudyYearName;

  factory CopyWith_Variables_Query_getStudyYearName.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_getStudyYearName;

  TRes call({int? order});
}

class _CopyWithImpl_Variables_Query_getStudyYearName<TRes>
    implements CopyWith_Variables_Query_getStudyYearName<TRes> {
  _CopyWithImpl_Variables_Query_getStudyYearName(
    this._instance,
    this._then,
  );

  final Variables_Query_getStudyYearName _instance;

  final TRes Function(Variables_Query_getStudyYearName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined}) =>
      _then(Variables_Query_getStudyYearName._({
        ..._instance._$data,
        if (order != _undefined && order != null) 'order': (order as int),
      }));
}

class _CopyWithStubImpl_Variables_Query_getStudyYearName<TRes>
    implements CopyWith_Variables_Query_getStudyYearName<TRes> {
  _CopyWithStubImpl_Variables_Query_getStudyYearName(this._res);

  TRes _res;

  call({int? order}) => _res;
}

class Query_getStudyYearName {
  Query_getStudyYearName({
    this.studyYearsByPk,
    this.$__typename = 'query_root',
  });

  factory Query_getStudyYearName.fromJson(Map<String, dynamic> json) {
    final l$studyYearsByPk = json['studyYearsByPk'];
    final l$$__typename = json['__typename'];
    return Query_getStudyYearName(
      studyYearsByPk: l$studyYearsByPk == null
          ? null
          : Query_getStudyYearName_studyYearsByPk.fromJson(
              (l$studyYearsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_getStudyYearName_studyYearsByPk? studyYearsByPk;

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
    if (!(other is Query_getStudyYearName) ||
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

extension UtilityExtension_Query_getStudyYearName on Query_getStudyYearName {
  CopyWith_Query_getStudyYearName<Query_getStudyYearName> get copyWith =>
      CopyWith_Query_getStudyYearName(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_getStudyYearName<TRes> {
  factory CopyWith_Query_getStudyYearName(
    Query_getStudyYearName instance,
    TRes Function(Query_getStudyYearName) then,
  ) = _CopyWithImpl_Query_getStudyYearName;

  factory CopyWith_Query_getStudyYearName.stub(TRes res) =
      _CopyWithStubImpl_Query_getStudyYearName;

  TRes call({
    Query_getStudyYearName_studyYearsByPk? studyYearsByPk,
    String? $__typename,
  });
  CopyWith_Query_getStudyYearName_studyYearsByPk<TRes> get studyYearsByPk;
}

class _CopyWithImpl_Query_getStudyYearName<TRes>
    implements CopyWith_Query_getStudyYearName<TRes> {
  _CopyWithImpl_Query_getStudyYearName(
    this._instance,
    this._then,
  );

  final Query_getStudyYearName _instance;

  final TRes Function(Query_getStudyYearName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? studyYearsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_getStudyYearName(
        studyYearsByPk: studyYearsByPk == _undefined
            ? _instance.studyYearsByPk
            : (studyYearsByPk as Query_getStudyYearName_studyYearsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_getStudyYearName_studyYearsByPk<TRes> get studyYearsByPk {
    final local$studyYearsByPk = _instance.studyYearsByPk;
    return local$studyYearsByPk == null
        ? CopyWith_Query_getStudyYearName_studyYearsByPk.stub(_then(_instance))
        : CopyWith_Query_getStudyYearName_studyYearsByPk(
            local$studyYearsByPk, (e) => call(studyYearsByPk: e));
  }
}

class _CopyWithStubImpl_Query_getStudyYearName<TRes>
    implements CopyWith_Query_getStudyYearName<TRes> {
  _CopyWithStubImpl_Query_getStudyYearName(this._res);

  TRes _res;

  call({
    Query_getStudyYearName_studyYearsByPk? studyYearsByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_getStudyYearName_studyYearsByPk<TRes> get studyYearsByPk =>
      CopyWith_Query_getStudyYearName_studyYearsByPk.stub(_res);
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

class Query_getStudyYearName_studyYearsByPk {
  Query_getStudyYearName_studyYearsByPk({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_getStudyYearName_studyYearsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_getStudyYearName_studyYearsByPk(
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
    if (!(other is Query_getStudyYearName_studyYearsByPk) ||
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

extension UtilityExtension_Query_getStudyYearName_studyYearsByPk
    on Query_getStudyYearName_studyYearsByPk {
  CopyWith_Query_getStudyYearName_studyYearsByPk<
          Query_getStudyYearName_studyYearsByPk>
      get copyWith => CopyWith_Query_getStudyYearName_studyYearsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_getStudyYearName_studyYearsByPk<TRes> {
  factory CopyWith_Query_getStudyYearName_studyYearsByPk(
    Query_getStudyYearName_studyYearsByPk instance,
    TRes Function(Query_getStudyYearName_studyYearsByPk) then,
  ) = _CopyWithImpl_Query_getStudyYearName_studyYearsByPk;

  factory CopyWith_Query_getStudyYearName_studyYearsByPk.stub(TRes res) =
      _CopyWithStubImpl_Query_getStudyYearName_studyYearsByPk;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_getStudyYearName_studyYearsByPk<TRes>
    implements CopyWith_Query_getStudyYearName_studyYearsByPk<TRes> {
  _CopyWithImpl_Query_getStudyYearName_studyYearsByPk(
    this._instance,
    this._then,
  );

  final Query_getStudyYearName_studyYearsByPk _instance;

  final TRes Function(Query_getStudyYearName_studyYearsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_getStudyYearName_studyYearsByPk(
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

class _CopyWithStubImpl_Query_getStudyYearName_studyYearsByPk<TRes>
    implements CopyWith_Query_getStudyYearName_studyYearsByPk<TRes> {
  _CopyWithStubImpl_Query_getStudyYearName_studyYearsByPk(this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
