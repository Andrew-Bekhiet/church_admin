import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllColleges {
  factory Variables_Subscription_watchAllColleges({
    List<Input_CollegesBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_watchAllColleges._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllColleges._(this._$data);

  factory Variables_Subscription_watchAllColleges.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_CollegesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllColleges._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_CollegesBoolExp>? get where =>
      (_$data['where'] as List<Input_CollegesBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAllColleges<
          Variables_Subscription_watchAllColleges>
      get copyWith => CopyWith_Variables_Subscription_watchAllColleges(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllColleges) ||
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

abstract class CopyWith_Variables_Subscription_watchAllColleges<TRes> {
  factory CopyWith_Variables_Subscription_watchAllColleges(
    Variables_Subscription_watchAllColleges instance,
    TRes Function(Variables_Subscription_watchAllColleges) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllColleges;

  factory CopyWith_Variables_Subscription_watchAllColleges.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllColleges;

  TRes call({
    List<Input_CollegesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllColleges<TRes>
    implements CopyWith_Variables_Subscription_watchAllColleges<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllColleges(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllColleges _instance;

  final TRes Function(Variables_Subscription_watchAllColleges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllColleges._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_CollegesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllColleges<TRes>
    implements CopyWith_Variables_Subscription_watchAllColleges<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllColleges(this._res);

  TRes _res;

  call({
    List<Input_CollegesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllColleges {
  Subscription_watchAllColleges({required this.colleges});

  factory Subscription_watchAllColleges.fromJson(Map<String, dynamic> json) {
    final l$colleges = json['colleges'];
    return Subscription_watchAllColleges(
        colleges: (l$colleges as List<dynamic>)
            .map((e) => Subscription_watchAllColleges_colleges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllColleges_colleges> colleges;

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
    if (!(other is Subscription_watchAllColleges) ||
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

extension UtilityExtension_Subscription_watchAllColleges
    on Subscription_watchAllColleges {
  CopyWith_Subscription_watchAllColleges<Subscription_watchAllColleges>
      get copyWith => CopyWith_Subscription_watchAllColleges(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllColleges<TRes> {
  factory CopyWith_Subscription_watchAllColleges(
    Subscription_watchAllColleges instance,
    TRes Function(Subscription_watchAllColleges) then,
  ) = _CopyWithImpl_Subscription_watchAllColleges;

  factory CopyWith_Subscription_watchAllColleges.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllColleges;

  TRes call({List<Subscription_watchAllColleges_colleges>? colleges});
  TRes colleges(
      Iterable<Subscription_watchAllColleges_colleges> Function(
              Iterable<
                  CopyWith_Subscription_watchAllColleges_colleges<
                      Subscription_watchAllColleges_colleges>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllColleges<TRes>
    implements CopyWith_Subscription_watchAllColleges<TRes> {
  _CopyWithImpl_Subscription_watchAllColleges(
    this._instance,
    this._then,
  );

  final Subscription_watchAllColleges _instance;

  final TRes Function(Subscription_watchAllColleges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? colleges = _undefined}) => _then(
      Subscription_watchAllColleges(
          colleges: colleges == _undefined || colleges == null
              ? _instance.colleges
              : (colleges as List<Subscription_watchAllColleges_colleges>)));

  TRes colleges(
          Iterable<Subscription_watchAllColleges_colleges> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllColleges_colleges<
                          Subscription_watchAllColleges_colleges>>)
              _fn) =>
      call(
          colleges: _fn(_instance.colleges
              .map((e) => CopyWith_Subscription_watchAllColleges_colleges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllColleges<TRes>
    implements CopyWith_Subscription_watchAllColleges<TRes> {
  _CopyWithStubImpl_Subscription_watchAllColleges(this._res);

  TRes _res;

  call({List<Subscription_watchAllColleges_colleges>? colleges}) => _res;

  colleges(_fn) => _res;
}

const documentNodeSubscriptionwatchAllColleges = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllColleges'),
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

class Subscription_watchAllColleges_colleges {
  Subscription_watchAllColleges_colleges({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Subscription_watchAllColleges_colleges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllColleges_colleges(
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
    if (!(other is Subscription_watchAllColleges_colleges) ||
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

extension UtilityExtension_Subscription_watchAllColleges_colleges
    on Subscription_watchAllColleges_colleges {
  CopyWith_Subscription_watchAllColleges_colleges<
          Subscription_watchAllColleges_colleges>
      get copyWith => CopyWith_Subscription_watchAllColleges_colleges(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllColleges_colleges<TRes> {
  factory CopyWith_Subscription_watchAllColleges_colleges(
    Subscription_watchAllColleges_colleges instance,
    TRes Function(Subscription_watchAllColleges_colleges) then,
  ) = _CopyWithImpl_Subscription_watchAllColleges_colleges;

  factory CopyWith_Subscription_watchAllColleges_colleges.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllColleges_colleges;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllColleges_colleges<TRes>
    implements CopyWith_Subscription_watchAllColleges_colleges<TRes> {
  _CopyWithImpl_Subscription_watchAllColleges_colleges(
    this._instance,
    this._then,
  );

  final Subscription_watchAllColleges_colleges _instance;

  final TRes Function(Subscription_watchAllColleges_colleges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllColleges_colleges(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllColleges_colleges<TRes>
    implements CopyWith_Subscription_watchAllColleges_colleges<TRes> {
  _CopyWithStubImpl_Subscription_watchAllColleges_colleges(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
