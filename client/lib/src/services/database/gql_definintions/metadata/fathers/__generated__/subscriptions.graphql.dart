import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllFathers {
  factory Variables$Subscription$watchAllFathers({
    List<Input$FathersBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllFathers._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllFathers._(this._$data);

  factory Variables$Subscription$watchAllFathers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$FathersBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$watchAllFathers._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$FathersBoolExp>? get where =>
      (_$data['where'] as List<Input$FathersBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllFathers<
          Variables$Subscription$watchAllFathers>
      get copyWith => CopyWith$Variables$Subscription$watchAllFathers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllFathers) ||
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

abstract class CopyWith$Variables$Subscription$watchAllFathers<TRes> {
  factory CopyWith$Variables$Subscription$watchAllFathers(
    Variables$Subscription$watchAllFathers instance,
    TRes Function(Variables$Subscription$watchAllFathers) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllFathers;

  factory CopyWith$Variables$Subscription$watchAllFathers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllFathers;

  TRes call({
    List<Input$FathersBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllFathers<TRes>
    implements CopyWith$Variables$Subscription$watchAllFathers<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllFathers(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllFathers _instance;

  final TRes Function(Variables$Subscription$watchAllFathers) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllFathers._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$FathersBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllFathers<TRes>
    implements CopyWith$Variables$Subscription$watchAllFathers<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllFathers(this._res);

  TRes _res;

  call({
    List<Input$FathersBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllFathers {
  Subscription$watchAllFathers({required this.fathers});

  factory Subscription$watchAllFathers.fromJson(Map<String, dynamic> json) {
    final l$fathers = json['fathers'];
    return Subscription$watchAllFathers(
        fathers: (l$fathers as List<dynamic>)
            .map((e) => Subscription$watchAllFathers$fathers.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllFathers$fathers> fathers;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fathers = fathers;
    _resultData['fathers'] = l$fathers.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fathers = fathers;
    return Object.hashAll([Object.hashAll(l$fathers.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllFathers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fathers = fathers;
    final lOther$fathers = other.fathers;
    if (l$fathers.length != lOther$fathers.length) {
      return false;
    }
    for (int i = 0; i < l$fathers.length; i++) {
      final l$fathers$entry = l$fathers[i];
      final lOther$fathers$entry = lOther$fathers[i];
      if (l$fathers$entry != lOther$fathers$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllFathers
    on Subscription$watchAllFathers {
  CopyWith$Subscription$watchAllFathers<Subscription$watchAllFathers>
      get copyWith => CopyWith$Subscription$watchAllFathers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllFathers<TRes> {
  factory CopyWith$Subscription$watchAllFathers(
    Subscription$watchAllFathers instance,
    TRes Function(Subscription$watchAllFathers) then,
  ) = _CopyWithImpl$Subscription$watchAllFathers;

  factory CopyWith$Subscription$watchAllFathers.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllFathers;

  TRes call({List<Subscription$watchAllFathers$fathers>? fathers});
  TRes fathers(
      Iterable<Subscription$watchAllFathers$fathers> Function(
              Iterable<
                  CopyWith$Subscription$watchAllFathers$fathers<
                      Subscription$watchAllFathers$fathers>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllFathers<TRes>
    implements CopyWith$Subscription$watchAllFathers<TRes> {
  _CopyWithImpl$Subscription$watchAllFathers(
    this._instance,
    this._then,
  );

  final Subscription$watchAllFathers _instance;

  final TRes Function(Subscription$watchAllFathers) _then;

  static const _undefined = {};

  TRes call({Object? fathers = _undefined}) =>
      _then(Subscription$watchAllFathers(
          fathers: fathers == _undefined || fathers == null
              ? _instance.fathers
              : (fathers as List<Subscription$watchAllFathers$fathers>)));
  TRes fathers(
          Iterable<Subscription$watchAllFathers$fathers> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllFathers$fathers<
                          Subscription$watchAllFathers$fathers>>)
              _fn) =>
      call(
          fathers: _fn(_instance.fathers
              .map((e) => CopyWith$Subscription$watchAllFathers$fathers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllFathers<TRes>
    implements CopyWith$Subscription$watchAllFathers<TRes> {
  _CopyWithStubImpl$Subscription$watchAllFathers(this._res);

  TRes _res;

  call({List<Subscription$watchAllFathers$fathers>? fathers}) => _res;
  fathers(_fn) => _res;
}

const documentNodeSubscriptionwatchAllFathers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllFathers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'FathersBoolExp'),
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
        name: NameNode(value: 'fathers'),
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

class Subscription$watchAllFathers$fathers {
  Subscription$watchAllFathers$fathers({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchAllFathers$fathers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllFathers$fathers(
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
    if (!(other is Subscription$watchAllFathers$fathers) ||
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

extension UtilityExtension$Subscription$watchAllFathers$fathers
    on Subscription$watchAllFathers$fathers {
  CopyWith$Subscription$watchAllFathers$fathers<
          Subscription$watchAllFathers$fathers>
      get copyWith => CopyWith$Subscription$watchAllFathers$fathers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllFathers$fathers<TRes> {
  factory CopyWith$Subscription$watchAllFathers$fathers(
    Subscription$watchAllFathers$fathers instance,
    TRes Function(Subscription$watchAllFathers$fathers) then,
  ) = _CopyWithImpl$Subscription$watchAllFathers$fathers;

  factory CopyWith$Subscription$watchAllFathers$fathers.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllFathers$fathers;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllFathers$fathers<TRes>
    implements CopyWith$Subscription$watchAllFathers$fathers<TRes> {
  _CopyWithImpl$Subscription$watchAllFathers$fathers(
    this._instance,
    this._then,
  );

  final Subscription$watchAllFathers$fathers _instance;

  final TRes Function(Subscription$watchAllFathers$fathers) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllFathers$fathers(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllFathers$fathers<TRes>
    implements CopyWith$Subscription$watchAllFathers$fathers<TRes> {
  _CopyWithStubImpl$Subscription$watchAllFathers$fathers(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
