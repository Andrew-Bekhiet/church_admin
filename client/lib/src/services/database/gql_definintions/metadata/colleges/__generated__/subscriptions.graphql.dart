import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllColleges {
  factory Variables$Subscription$watchAllColleges({
    List<Input$CollegesBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllColleges._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllColleges._(this._$data);

  factory Variables$Subscription$watchAllColleges.fromJson(
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
    return Variables$Subscription$watchAllColleges._(result$data);
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

  CopyWith$Variables$Subscription$watchAllColleges<
          Variables$Subscription$watchAllColleges>
      get copyWith => CopyWith$Variables$Subscription$watchAllColleges(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllColleges) ||
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

abstract class CopyWith$Variables$Subscription$watchAllColleges<TRes> {
  factory CopyWith$Variables$Subscription$watchAllColleges(
    Variables$Subscription$watchAllColleges instance,
    TRes Function(Variables$Subscription$watchAllColleges) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllColleges;

  factory CopyWith$Variables$Subscription$watchAllColleges.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllColleges;

  TRes call({
    List<Input$CollegesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllColleges<TRes>
    implements CopyWith$Variables$Subscription$watchAllColleges<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllColleges(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllColleges _instance;

  final TRes Function(Variables$Subscription$watchAllColleges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllColleges._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$CollegesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllColleges<TRes>
    implements CopyWith$Variables$Subscription$watchAllColleges<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllColleges(this._res);

  TRes _res;

  call({
    List<Input$CollegesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllColleges {
  Subscription$watchAllColleges({required this.colleges});

  factory Subscription$watchAllColleges.fromJson(Map<String, dynamic> json) {
    final l$colleges = json['colleges'];
    return Subscription$watchAllColleges(
        colleges: (l$colleges as List<dynamic>)
            .map((e) => Subscription$watchAllColleges$colleges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllColleges$colleges> colleges;

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
    if (!(other is Subscription$watchAllColleges) ||
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

extension UtilityExtension$Subscription$watchAllColleges
    on Subscription$watchAllColleges {
  CopyWith$Subscription$watchAllColleges<Subscription$watchAllColleges>
      get copyWith => CopyWith$Subscription$watchAllColleges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllColleges<TRes> {
  factory CopyWith$Subscription$watchAllColleges(
    Subscription$watchAllColleges instance,
    TRes Function(Subscription$watchAllColleges) then,
  ) = _CopyWithImpl$Subscription$watchAllColleges;

  factory CopyWith$Subscription$watchAllColleges.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllColleges;

  TRes call({List<Subscription$watchAllColleges$colleges>? colleges});
  TRes colleges(
      Iterable<Subscription$watchAllColleges$colleges> Function(
              Iterable<
                  CopyWith$Subscription$watchAllColleges$colleges<
                      Subscription$watchAllColleges$colleges>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllColleges<TRes>
    implements CopyWith$Subscription$watchAllColleges<TRes> {
  _CopyWithImpl$Subscription$watchAllColleges(
    this._instance,
    this._then,
  );

  final Subscription$watchAllColleges _instance;

  final TRes Function(Subscription$watchAllColleges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? colleges = _undefined}) => _then(
      Subscription$watchAllColleges(
          colleges: colleges == _undefined || colleges == null
              ? _instance.colleges
              : (colleges as List<Subscription$watchAllColleges$colleges>)));
  TRes colleges(
          Iterable<Subscription$watchAllColleges$colleges> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllColleges$colleges<
                          Subscription$watchAllColleges$colleges>>)
              _fn) =>
      call(
          colleges: _fn(_instance.colleges
              .map((e) => CopyWith$Subscription$watchAllColleges$colleges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllColleges<TRes>
    implements CopyWith$Subscription$watchAllColleges<TRes> {
  _CopyWithStubImpl$Subscription$watchAllColleges(this._res);

  TRes _res;

  call({List<Subscription$watchAllColleges$colleges>? colleges}) => _res;
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

class Subscription$watchAllColleges$colleges {
  Subscription$watchAllColleges$colleges({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Subscription$watchAllColleges$colleges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllColleges$colleges(
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
    if (!(other is Subscription$watchAllColleges$colleges) ||
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

extension UtilityExtension$Subscription$watchAllColleges$colleges
    on Subscription$watchAllColleges$colleges {
  CopyWith$Subscription$watchAllColleges$colleges<
          Subscription$watchAllColleges$colleges>
      get copyWith => CopyWith$Subscription$watchAllColleges$colleges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllColleges$colleges<TRes> {
  factory CopyWith$Subscription$watchAllColleges$colleges(
    Subscription$watchAllColleges$colleges instance,
    TRes Function(Subscription$watchAllColleges$colleges) then,
  ) = _CopyWithImpl$Subscription$watchAllColleges$colleges;

  factory CopyWith$Subscription$watchAllColleges$colleges.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllColleges$colleges;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllColleges$colleges<TRes>
    implements CopyWith$Subscription$watchAllColleges$colleges<TRes> {
  _CopyWithImpl$Subscription$watchAllColleges$colleges(
    this._instance,
    this._then,
  );

  final Subscription$watchAllColleges$colleges _instance;

  final TRes Function(Subscription$watchAllColleges$colleges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllColleges$colleges(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllColleges$colleges<TRes>
    implements CopyWith$Subscription$watchAllColleges$colleges<TRes> {
  _CopyWithStubImpl$Subscription$watchAllColleges$colleges(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
