import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllFamilies {
  factory Variables$Subscription$watchAllFamilies({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  }) =>
      Variables$Subscription$watchAllFamilies._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$watchAllFamilies._(this._$data);

  factory Variables$Subscription$watchAllFamilies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$FamiliesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$FamiliesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$watchAllFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$FamiliesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$FamiliesOrderBy>?);
  List<Input$FamiliesBoolExp>? get where =>
      (_$data['where'] as List<Input$FamiliesBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllFamilies<
          Variables$Subscription$watchAllFamilies>
      get copyWith => CopyWith$Variables$Subscription$watchAllFamilies(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllFamilies) ||
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

abstract class CopyWith$Variables$Subscription$watchAllFamilies<TRes> {
  factory CopyWith$Variables$Subscription$watchAllFamilies(
    Variables$Subscription$watchAllFamilies instance,
    TRes Function(Variables$Subscription$watchAllFamilies) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllFamilies;

  factory CopyWith$Variables$Subscription$watchAllFamilies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllFamilies;

  TRes call({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Variables$Subscription$watchAllFamilies<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllFamilies(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllFamilies _instance;

  final TRes Function(Variables$Subscription$watchAllFamilies) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllFamilies._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$FamiliesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input$FamiliesBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Variables$Subscription$watchAllFamilies<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllFamilies(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  }) =>
      _res;
}

class Subscription$watchAllFamilies {
  Subscription$watchAllFamilies({required this.families});

  factory Subscription$watchAllFamilies.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    return Subscription$watchAllFamilies(
        families: (l$families as List<dynamic>)
            .map((e) => Fragment$Family.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Family> families;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$families = families;
    _resultData['families'] = l$families.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$families = families;
    return Object.hashAll([Object.hashAll(l$families.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllFamilies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families.length != lOther$families.length) {
      return false;
    }
    for (int i = 0; i < l$families.length; i++) {
      final l$families$entry = l$families[i];
      final lOther$families$entry = lOther$families[i];
      if (l$families$entry != lOther$families$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllFamilies
    on Subscription$watchAllFamilies {
  CopyWith$Subscription$watchAllFamilies<Subscription$watchAllFamilies>
      get copyWith => CopyWith$Subscription$watchAllFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllFamilies<TRes> {
  factory CopyWith$Subscription$watchAllFamilies(
    Subscription$watchAllFamilies instance,
    TRes Function(Subscription$watchAllFamilies) then,
  ) = _CopyWithImpl$Subscription$watchAllFamilies;

  factory CopyWith$Subscription$watchAllFamilies.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllFamilies;

  TRes call({List<Fragment$Family>? families});
  TRes families(
      Iterable<Fragment$Family> Function(
              Iterable<CopyWith$Fragment$Family<Fragment$Family>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Subscription$watchAllFamilies<TRes> {
  _CopyWithImpl$Subscription$watchAllFamilies(
    this._instance,
    this._then,
  );

  final Subscription$watchAllFamilies _instance;

  final TRes Function(Subscription$watchAllFamilies) _then;

  static const _undefined = {};

  TRes call({Object? families = _undefined}) => _then(
      Subscription$watchAllFamilies(
          families: families == _undefined || families == null
              ? _instance.families
              : (families as List<Fragment$Family>)));
  TRes families(
          Iterable<Fragment$Family> Function(
                  Iterable<CopyWith$Fragment$Family<Fragment$Family>>)
              _fn) =>
      call(
          families: _fn(_instance.families.map((e) => CopyWith$Fragment$Family(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Subscription$watchAllFamilies<TRes> {
  _CopyWithStubImpl$Subscription$watchAllFamilies(this._res);

  TRes _res;

  call({List<Fragment$Family>? families}) => _res;
  families(_fn) => _res;
}

const documentNodeSubscriptionwatchAllFamilies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllFamilies'),
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
            name: NameNode(value: 'FamiliesOrderBy'),
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
            name: NameNode(value: 'FamiliesBoolExp'),
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
        name: NameNode(value: 'families'),
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
            name: NameNode(value: 'Family'),
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
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);
