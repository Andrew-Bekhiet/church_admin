import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllClasses {
  factory Variables$Subscription$watchAllClasses({
    int? limit,
    List<Input$ClassesOrderBy>? orderBy,
    List<Input$ClassesBoolExp>? where,
  }) =>
      Variables$Subscription$watchAllClasses._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$watchAllClasses._(this._$data);

  factory Variables$Subscription$watchAllClasses.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$ClassesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$ClassesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$watchAllClasses._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$ClassesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ClassesOrderBy>?);
  List<Input$ClassesBoolExp>? get where =>
      (_$data['where'] as List<Input$ClassesBoolExp>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$watchAllClasses<
          Variables$Subscription$watchAllClasses>
      get copyWith => CopyWith$Variables$Subscription$watchAllClasses(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllClasses) ||
        runtimeType != other.runtimeType) {
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
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$orderBy = orderBy;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$watchAllClasses<TRes> {
  factory CopyWith$Variables$Subscription$watchAllClasses(
    Variables$Subscription$watchAllClasses instance,
    TRes Function(Variables$Subscription$watchAllClasses) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllClasses;

  factory CopyWith$Variables$Subscription$watchAllClasses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllClasses;

  TRes call({
    int? limit,
    List<Input$ClassesOrderBy>? orderBy,
    List<Input$ClassesBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllClasses<TRes>
    implements CopyWith$Variables$Subscription$watchAllClasses<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllClasses(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllClasses _instance;

  final TRes Function(Variables$Subscription$watchAllClasses) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllClasses._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ClassesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input$ClassesBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllClasses<TRes>
    implements CopyWith$Variables$Subscription$watchAllClasses<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllClasses(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$ClassesOrderBy>? orderBy,
    List<Input$ClassesBoolExp>? where,
  }) =>
      _res;
}

class Subscription$watchAllClasses {
  Subscription$watchAllClasses({required this.classes});

  factory Subscription$watchAllClasses.fromJson(Map<String, dynamic> json) {
    final l$classes = json['classes'];
    return Subscription$watchAllClasses(
        classes: (l$classes as List<dynamic>)
            .map((e) => Fragment$Class.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Class> classes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classes = classes;
    return Object.hashAll([Object.hashAll(l$classes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllClasses
    on Subscription$watchAllClasses {
  CopyWith$Subscription$watchAllClasses<Subscription$watchAllClasses>
      get copyWith => CopyWith$Subscription$watchAllClasses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllClasses<TRes> {
  factory CopyWith$Subscription$watchAllClasses(
    Subscription$watchAllClasses instance,
    TRes Function(Subscription$watchAllClasses) then,
  ) = _CopyWithImpl$Subscription$watchAllClasses;

  factory CopyWith$Subscription$watchAllClasses.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllClasses;

  TRes call({List<Fragment$Class>? classes});
  TRes classes(
      Iterable<Fragment$Class> Function(
              Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllClasses<TRes>
    implements CopyWith$Subscription$watchAllClasses<TRes> {
  _CopyWithImpl$Subscription$watchAllClasses(
    this._instance,
    this._then,
  );

  final Subscription$watchAllClasses _instance;

  final TRes Function(Subscription$watchAllClasses) _then;

  static const _undefined = {};

  TRes call({Object? classes = _undefined}) =>
      _then(Subscription$watchAllClasses(
          classes: classes == _undefined || classes == null
              ? _instance.classes
              : (classes as List<Fragment$Class>)));
  TRes classes(
          Iterable<Fragment$Class> Function(
                  Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) => CopyWith$Fragment$Class(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllClasses<TRes>
    implements CopyWith$Subscription$watchAllClasses<TRes> {
  _CopyWithStubImpl$Subscription$watchAllClasses(this._res);

  TRes _res;

  call({List<Fragment$Class>? classes}) => _res;
  classes(_fn) => _res;
}

const documentNodeSubscriptionwatchAllClasses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllClasses'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ClassesOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'name'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          )
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ClassesBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'classes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Class'),
            directives: [],
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
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
]);
