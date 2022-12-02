import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getServicesStream {
  factory Variables$Subscription$getServicesStream({
    List<Input$ServicesBoolExp>? where,
    List<Input$GroupsBoolExp>? groupsWhere,
    List<Input$ClassesBoolExp>? classesWhere,
    List<Input$ServicesOrderBy>? orderBy,
    List<Input$ClassesOrderBy>? classesOrderBy,
    List<Input$GroupsOrderBy>? groupsOrderBy,
    int? limit,
  }) =>
      Variables$Subscription$getServicesStream._({
        if (where != null) r'where': where,
        if (groupsWhere != null) r'groupsWhere': groupsWhere,
        if (classesWhere != null) r'classesWhere': classesWhere,
        if (orderBy != null) r'orderBy': orderBy,
        if (classesOrderBy != null) r'classesOrderBy': classesOrderBy,
        if (groupsOrderBy != null) r'groupsOrderBy': groupsOrderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getServicesStream._(this._$data);

  factory Variables$Subscription$getServicesStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$ServicesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('groupsWhere')) {
      final l$groupsWhere = data['groupsWhere'];
      result$data['groupsWhere'] = (l$groupsWhere as List<dynamic>?)
          ?.map(
              (e) => Input$GroupsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('classesWhere')) {
      final l$classesWhere = data['classesWhere'];
      result$data['classesWhere'] = (l$classesWhere as List<dynamic>?)
          ?.map(
              (e) => Input$ClassesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ServicesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('classesOrderBy')) {
      final l$classesOrderBy = data['classesOrderBy'];
      result$data['classesOrderBy'] = (l$classesOrderBy as List<dynamic>?)
          ?.map(
              (e) => Input$ClassesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('groupsOrderBy')) {
      final l$groupsOrderBy = data['groupsOrderBy'];
      result$data['groupsOrderBy'] = (l$groupsOrderBy as List<dynamic>?)
          ?.map(
              (e) => Input$GroupsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getServicesStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServicesBoolExp>? get where =>
      (_$data['where'] as List<Input$ServicesBoolExp>?);
  List<Input$GroupsBoolExp>? get groupsWhere =>
      (_$data['groupsWhere'] as List<Input$GroupsBoolExp>?);
  List<Input$ClassesBoolExp>? get classesWhere =>
      (_$data['classesWhere'] as List<Input$ClassesBoolExp>?);
  List<Input$ServicesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ServicesOrderBy>?);
  List<Input$ClassesOrderBy>? get classesOrderBy =>
      (_$data['classesOrderBy'] as List<Input$ClassesOrderBy>?);
  List<Input$GroupsOrderBy>? get groupsOrderBy =>
      (_$data['groupsOrderBy'] as List<Input$GroupsOrderBy>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('groupsWhere')) {
      final l$groupsWhere = groupsWhere;
      result$data['groupsWhere'] =
          l$groupsWhere?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('classesWhere')) {
      final l$classesWhere = classesWhere;
      result$data['classesWhere'] =
          l$classesWhere?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('classesOrderBy')) {
      final l$classesOrderBy = classesOrderBy;
      result$data['classesOrderBy'] =
          l$classesOrderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('groupsOrderBy')) {
      final l$groupsOrderBy = groupsOrderBy;
      result$data['groupsOrderBy'] =
          l$groupsOrderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$getServicesStream<
          Variables$Subscription$getServicesStream>
      get copyWith => CopyWith$Variables$Subscription$getServicesStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getServicesStream) ||
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
    final l$groupsWhere = groupsWhere;
    final lOther$groupsWhere = other.groupsWhere;
    if (_$data.containsKey('groupsWhere') !=
        other._$data.containsKey('groupsWhere')) {
      return false;
    }
    if (l$groupsWhere != null && lOther$groupsWhere != null) {
      if (l$groupsWhere.length != lOther$groupsWhere.length) {
        return false;
      }
      for (int i = 0; i < l$groupsWhere.length; i++) {
        final l$groupsWhere$entry = l$groupsWhere[i];
        final lOther$groupsWhere$entry = lOther$groupsWhere[i];
        if (l$groupsWhere$entry != lOther$groupsWhere$entry) {
          return false;
        }
      }
    } else if (l$groupsWhere != lOther$groupsWhere) {
      return false;
    }
    final l$classesWhere = classesWhere;
    final lOther$classesWhere = other.classesWhere;
    if (_$data.containsKey('classesWhere') !=
        other._$data.containsKey('classesWhere')) {
      return false;
    }
    if (l$classesWhere != null && lOther$classesWhere != null) {
      if (l$classesWhere.length != lOther$classesWhere.length) {
        return false;
      }
      for (int i = 0; i < l$classesWhere.length; i++) {
        final l$classesWhere$entry = l$classesWhere[i];
        final lOther$classesWhere$entry = lOther$classesWhere[i];
        if (l$classesWhere$entry != lOther$classesWhere$entry) {
          return false;
        }
      }
    } else if (l$classesWhere != lOther$classesWhere) {
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
    final l$classesOrderBy = classesOrderBy;
    final lOther$classesOrderBy = other.classesOrderBy;
    if (_$data.containsKey('classesOrderBy') !=
        other._$data.containsKey('classesOrderBy')) {
      return false;
    }
    if (l$classesOrderBy != null && lOther$classesOrderBy != null) {
      if (l$classesOrderBy.length != lOther$classesOrderBy.length) {
        return false;
      }
      for (int i = 0; i < l$classesOrderBy.length; i++) {
        final l$classesOrderBy$entry = l$classesOrderBy[i];
        final lOther$classesOrderBy$entry = lOther$classesOrderBy[i];
        if (l$classesOrderBy$entry != lOther$classesOrderBy$entry) {
          return false;
        }
      }
    } else if (l$classesOrderBy != lOther$classesOrderBy) {
      return false;
    }
    final l$groupsOrderBy = groupsOrderBy;
    final lOther$groupsOrderBy = other.groupsOrderBy;
    if (_$data.containsKey('groupsOrderBy') !=
        other._$data.containsKey('groupsOrderBy')) {
      return false;
    }
    if (l$groupsOrderBy != null && lOther$groupsOrderBy != null) {
      if (l$groupsOrderBy.length != lOther$groupsOrderBy.length) {
        return false;
      }
      for (int i = 0; i < l$groupsOrderBy.length; i++) {
        final l$groupsOrderBy$entry = l$groupsOrderBy[i];
        final lOther$groupsOrderBy$entry = lOther$groupsOrderBy[i];
        if (l$groupsOrderBy$entry != lOther$groupsOrderBy$entry) {
          return false;
        }
      }
    } else if (l$groupsOrderBy != lOther$groupsOrderBy) {
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
    final l$groupsWhere = groupsWhere;
    final l$classesWhere = classesWhere;
    final l$orderBy = orderBy;
    final l$classesOrderBy = classesOrderBy;
    final l$groupsOrderBy = groupsOrderBy;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('groupsWhere')
          ? l$groupsWhere == null
              ? null
              : Object.hashAll(l$groupsWhere.map((v) => v))
          : const {},
      _$data.containsKey('classesWhere')
          ? l$classesWhere == null
              ? null
              : Object.hashAll(l$classesWhere.map((v) => v))
          : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('classesOrderBy')
          ? l$classesOrderBy == null
              ? null
              : Object.hashAll(l$classesOrderBy.map((v) => v))
          : const {},
      _$data.containsKey('groupsOrderBy')
          ? l$groupsOrderBy == null
              ? null
              : Object.hashAll(l$groupsOrderBy.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$getServicesStream<TRes> {
  factory CopyWith$Variables$Subscription$getServicesStream(
    Variables$Subscription$getServicesStream instance,
    TRes Function(Variables$Subscription$getServicesStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getServicesStream;

  factory CopyWith$Variables$Subscription$getServicesStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getServicesStream;

  TRes call({
    List<Input$ServicesBoolExp>? where,
    List<Input$GroupsBoolExp>? groupsWhere,
    List<Input$ClassesBoolExp>? classesWhere,
    List<Input$ServicesOrderBy>? orderBy,
    List<Input$ClassesOrderBy>? classesOrderBy,
    List<Input$GroupsOrderBy>? groupsOrderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getServicesStream<TRes>
    implements CopyWith$Variables$Subscription$getServicesStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getServicesStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getServicesStream _instance;

  final TRes Function(Variables$Subscription$getServicesStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? groupsWhere = _undefined,
    Object? classesWhere = _undefined,
    Object? orderBy = _undefined,
    Object? classesOrderBy = _undefined,
    Object? groupsOrderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getServicesStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$ServicesBoolExp>?),
        if (groupsWhere != _undefined)
          'groupsWhere': (groupsWhere as List<Input$GroupsBoolExp>?),
        if (classesWhere != _undefined)
          'classesWhere': (classesWhere as List<Input$ClassesBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ServicesOrderBy>?),
        if (classesOrderBy != _undefined)
          'classesOrderBy': (classesOrderBy as List<Input$ClassesOrderBy>?),
        if (groupsOrderBy != _undefined)
          'groupsOrderBy': (groupsOrderBy as List<Input$GroupsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getServicesStream<TRes>
    implements CopyWith$Variables$Subscription$getServicesStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getServicesStream(this._res);

  TRes _res;

  call({
    List<Input$ServicesBoolExp>? where,
    List<Input$GroupsBoolExp>? groupsWhere,
    List<Input$ClassesBoolExp>? classesWhere,
    List<Input$ServicesOrderBy>? orderBy,
    List<Input$ClassesOrderBy>? classesOrderBy,
    List<Input$GroupsOrderBy>? groupsOrderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription$getServicesStream {
  Subscription$getServicesStream({required this.services});

  factory Subscription$getServicesStream.fromJson(Map<String, dynamic> json) {
    final l$services = json['services'];
    return Subscription$getServicesStream(
        services: (l$services as List<dynamic>)
            .map((e) => Subscription$getServicesStream$services.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getServicesStream$services> services;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$services = services;
    return Object.hashAll([Object.hashAll(l$services.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getServicesStream
    on Subscription$getServicesStream {
  CopyWith$Subscription$getServicesStream<Subscription$getServicesStream>
      get copyWith => CopyWith$Subscription$getServicesStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream<TRes> {
  factory CopyWith$Subscription$getServicesStream(
    Subscription$getServicesStream instance,
    TRes Function(Subscription$getServicesStream) then,
  ) = _CopyWithImpl$Subscription$getServicesStream;

  factory CopyWith$Subscription$getServicesStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream;

  TRes call({List<Subscription$getServicesStream$services>? services});
  TRes services(
      Iterable<Subscription$getServicesStream$services> Function(
              Iterable<
                  CopyWith$Subscription$getServicesStream$services<
                      Subscription$getServicesStream$services>>)
          _fn);
}

class _CopyWithImpl$Subscription$getServicesStream<TRes>
    implements CopyWith$Subscription$getServicesStream<TRes> {
  _CopyWithImpl$Subscription$getServicesStream(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream _instance;

  final TRes Function(Subscription$getServicesStream) _then;

  static const _undefined = {};

  TRes call({Object? services = _undefined}) =>
      _then(Subscription$getServicesStream(
          services: services == _undefined || services == null
              ? _instance.services
              : (services as List<Subscription$getServicesStream$services>)));
  TRes services(
          Iterable<Subscription$getServicesStream$services> Function(
                  Iterable<
                      CopyWith$Subscription$getServicesStream$services<
                          Subscription$getServicesStream$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Subscription$getServicesStream$services(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getServicesStream<TRes>
    implements CopyWith$Subscription$getServicesStream<TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream(this._res);

  TRes _res;

  call({List<Subscription$getServicesStream$services>? services}) => _res;
  services(_fn) => _res;
}

const documentNodeSubscriptiongetServicesStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getServicesStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ServicesBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupsWhere')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classesWhere')),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ServicesOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'studyYearFrom'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          ),
          ObjectFieldNode(
            name: NameNode(value: 'studyYearTo'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          ),
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classesOrderBy')),
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
            name: NameNode(value: 'studyYear'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'order'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              )
            ]),
          ),
          ObjectFieldNode(
            name: NameNode(value: 'serviceGender'),
            value: EnumValueNode(name: NameNode(value: 'DESC_NULLS_LAST')),
          ),
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupsOrderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'service'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'studyYearFrom'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'studyYearTo'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              ),
            ]),
          )
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'services'),
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
            value: VariableNode(name: NameNode(value: 'orderBy')),
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'photoUpdatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fromStudyYear'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'order'),
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
            name: NameNode(value: 'toStudyYear'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'order'),
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
            name: NameNode(value: 'classes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_and'),
                    value: VariableNode(name: NameNode(value: 'classesWhere')),
                  )
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'classesOrderBy')),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'studyYear'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'order'),
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
          FieldNode(
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_and'),
                    value: VariableNode(name: NameNode(value: 'groupsWhere')),
                  )
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'groupsOrderBy')),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
      )
    ]),
  ),
]);

class Subscription$getServicesStream$services {
  Subscription$getServicesStream$services({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
    required this.classes,
    required this.groups,
    required this.$__typename,
  });

  factory Subscription$getServicesStream$services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Subscription$getServicesStream$services(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Subscription$getServicesStream$services$fromStudyYear.fromJson(
              (l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Subscription$getServicesStream$services$toStudyYear.fromJson(
              (l$toStudyYear as Map<String, dynamic>)),
      classes: (l$classes as List<dynamic>)
          .map((e) => Subscription$getServicesStream$services$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Subscription$getServicesStream$services$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Subscription$getServicesStream$services$fromStudyYear? fromStudyYear;

  final Subscription$getServicesStream$services$toStudyYear? toStudyYear;

  final List<Subscription$getServicesStream$services$classes> classes;

  final List<Subscription$getServicesStream$services$groups> groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$fromStudyYear = fromStudyYear;
    final l$toStudyYear = toStudyYear;
    final l$classes = classes;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$fromStudyYear,
      l$toStudyYear,
      Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream$services) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$fromStudyYear = fromStudyYear;
    final lOther$fromStudyYear = other.fromStudyYear;
    if (l$fromStudyYear != lOther$fromStudyYear) {
      return false;
    }
    final l$toStudyYear = toStudyYear;
    final lOther$toStudyYear = other.toStudyYear;
    if (l$toStudyYear != lOther$toStudyYear) {
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
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups.length != lOther$groups.length) {
      return false;
    }
    for (int i = 0; i < l$groups.length; i++) {
      final l$groups$entry = l$groups[i];
      final lOther$groups$entry = lOther$groups[i];
      if (l$groups$entry != lOther$groups$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getServicesStream$services
    on Subscription$getServicesStream$services {
  CopyWith$Subscription$getServicesStream$services<
          Subscription$getServicesStream$services>
      get copyWith => CopyWith$Subscription$getServicesStream$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream$services<TRes> {
  factory CopyWith$Subscription$getServicesStream$services(
    Subscription$getServicesStream$services instance,
    TRes Function(Subscription$getServicesStream$services) then,
  ) = _CopyWithImpl$Subscription$getServicesStream$services;

  factory CopyWith$Subscription$getServicesStream$services.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream$services;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$getServicesStream$services$fromStudyYear? fromStudyYear,
    Subscription$getServicesStream$services$toStudyYear? toStudyYear,
    List<Subscription$getServicesStream$services$classes>? classes,
    List<Subscription$getServicesStream$services$groups>? groups,
    String? $__typename,
  });
  CopyWith$Subscription$getServicesStream$services$fromStudyYear<TRes>
      get fromStudyYear;
  CopyWith$Subscription$getServicesStream$services$toStudyYear<TRes>
      get toStudyYear;
  TRes classes(
      Iterable<Subscription$getServicesStream$services$classes> Function(
              Iterable<
                  CopyWith$Subscription$getServicesStream$services$classes<
                      Subscription$getServicesStream$services$classes>>)
          _fn);
  TRes groups(
      Iterable<Subscription$getServicesStream$services$groups> Function(
              Iterable<
                  CopyWith$Subscription$getServicesStream$services$groups<
                      Subscription$getServicesStream$services$groups>>)
          _fn);
}

class _CopyWithImpl$Subscription$getServicesStream$services<TRes>
    implements CopyWith$Subscription$getServicesStream$services<TRes> {
  _CopyWithImpl$Subscription$getServicesStream$services(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream$services _instance;

  final TRes Function(Subscription$getServicesStream$services) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getServicesStream$services(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Subscription$getServicesStream$services$fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Subscription$getServicesStream$services$toStudyYear?),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes
                as List<Subscription$getServicesStream$services$classes>),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Subscription$getServicesStream$services$groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$getServicesStream$services$fromStudyYear<TRes>
      get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Subscription$getServicesStream$services$fromStudyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$getServicesStream$services$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Subscription$getServicesStream$services$toStudyYear<TRes>
      get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Subscription$getServicesStream$services$toStudyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$getServicesStream$services$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }

  TRes classes(
          Iterable<Subscription$getServicesStream$services$classes> Function(
                  Iterable<
                      CopyWith$Subscription$getServicesStream$services$classes<
                          Subscription$getServicesStream$services$classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map(
              (e) => CopyWith$Subscription$getServicesStream$services$classes(
                    e,
                    (i) => i,
                  ))).toList());
  TRes groups(
          Iterable<Subscription$getServicesStream$services$groups> Function(
                  Iterable<
                      CopyWith$Subscription$getServicesStream$services$groups<
                          Subscription$getServicesStream$services$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map(
              (e) => CopyWith$Subscription$getServicesStream$services$groups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getServicesStream$services<TRes>
    implements CopyWith$Subscription$getServicesStream$services<TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream$services(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$getServicesStream$services$fromStudyYear? fromStudyYear,
    Subscription$getServicesStream$services$toStudyYear? toStudyYear,
    List<Subscription$getServicesStream$services$classes>? classes,
    List<Subscription$getServicesStream$services$groups>? groups,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$getServicesStream$services$fromStudyYear<TRes>
      get fromStudyYear =>
          CopyWith$Subscription$getServicesStream$services$fromStudyYear.stub(
              _res);
  CopyWith$Subscription$getServicesStream$services$toStudyYear<TRes>
      get toStudyYear =>
          CopyWith$Subscription$getServicesStream$services$toStudyYear.stub(
              _res);
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Subscription$getServicesStream$services$fromStudyYear {
  Subscription$getServicesStream$services$fromStudyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$getServicesStream$services$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$getServicesStream$services$fromStudyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream$services$fromStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Subscription$getServicesStream$services$fromStudyYear
    on Subscription$getServicesStream$services$fromStudyYear {
  CopyWith$Subscription$getServicesStream$services$fromStudyYear<
          Subscription$getServicesStream$services$fromStudyYear>
      get copyWith =>
          CopyWith$Subscription$getServicesStream$services$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream$services$fromStudyYear<
    TRes> {
  factory CopyWith$Subscription$getServicesStream$services$fromStudyYear(
    Subscription$getServicesStream$services$fromStudyYear instance,
    TRes Function(Subscription$getServicesStream$services$fromStudyYear) then,
  ) = _CopyWithImpl$Subscription$getServicesStream$services$fromStudyYear;

  factory CopyWith$Subscription$getServicesStream$services$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream$services$fromStudyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getServicesStream$services$fromStudyYear<TRes>
    implements
        CopyWith$Subscription$getServicesStream$services$fromStudyYear<TRes> {
  _CopyWithImpl$Subscription$getServicesStream$services$fromStudyYear(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream$services$fromStudyYear _instance;

  final TRes Function(Subscription$getServicesStream$services$fromStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getServicesStream$services$fromStudyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getServicesStream$services$fromStudyYear<
        TRes>
    implements
        CopyWith$Subscription$getServicesStream$services$fromStudyYear<TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream$services$fromStudyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$getServicesStream$services$toStudyYear {
  Subscription$getServicesStream$services$toStudyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$getServicesStream$services$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$getServicesStream$services$toStudyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream$services$toStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Subscription$getServicesStream$services$toStudyYear
    on Subscription$getServicesStream$services$toStudyYear {
  CopyWith$Subscription$getServicesStream$services$toStudyYear<
          Subscription$getServicesStream$services$toStudyYear>
      get copyWith =>
          CopyWith$Subscription$getServicesStream$services$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream$services$toStudyYear<
    TRes> {
  factory CopyWith$Subscription$getServicesStream$services$toStudyYear(
    Subscription$getServicesStream$services$toStudyYear instance,
    TRes Function(Subscription$getServicesStream$services$toStudyYear) then,
  ) = _CopyWithImpl$Subscription$getServicesStream$services$toStudyYear;

  factory CopyWith$Subscription$getServicesStream$services$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream$services$toStudyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getServicesStream$services$toStudyYear<TRes>
    implements
        CopyWith$Subscription$getServicesStream$services$toStudyYear<TRes> {
  _CopyWithImpl$Subscription$getServicesStream$services$toStudyYear(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream$services$toStudyYear _instance;

  final TRes Function(Subscription$getServicesStream$services$toStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getServicesStream$services$toStudyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getServicesStream$services$toStudyYear<
        TRes>
    implements
        CopyWith$Subscription$getServicesStream$services$toStudyYear<TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream$services$toStudyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$getServicesStream$services$classes {
  Subscription$getServicesStream$services$classes({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.studyYear,
    required this.$__typename,
  });

  factory Subscription$getServicesStream$services$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$studyYear = json['studyYear'];
    final l$$__typename = json['__typename'];
    return Subscription$getServicesStream$services$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      studyYear:
          Subscription$getServicesStream$services$classes$studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Subscription$getServicesStream$services$classes$studyYear studyYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$studyYear = studyYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$studyYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream$services$classes) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
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

extension UtilityExtension$Subscription$getServicesStream$services$classes
    on Subscription$getServicesStream$services$classes {
  CopyWith$Subscription$getServicesStream$services$classes<
          Subscription$getServicesStream$services$classes>
      get copyWith => CopyWith$Subscription$getServicesStream$services$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream$services$classes<TRes> {
  factory CopyWith$Subscription$getServicesStream$services$classes(
    Subscription$getServicesStream$services$classes instance,
    TRes Function(Subscription$getServicesStream$services$classes) then,
  ) = _CopyWithImpl$Subscription$getServicesStream$services$classes;

  factory CopyWith$Subscription$getServicesStream$services$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream$services$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$getServicesStream$services$classes$studyYear? studyYear,
    String? $__typename,
  });
  CopyWith$Subscription$getServicesStream$services$classes$studyYear<TRes>
      get studyYear;
}

class _CopyWithImpl$Subscription$getServicesStream$services$classes<TRes>
    implements CopyWith$Subscription$getServicesStream$services$classes<TRes> {
  _CopyWithImpl$Subscription$getServicesStream$services$classes(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream$services$classes _instance;

  final TRes Function(Subscription$getServicesStream$services$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getServicesStream$services$classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        studyYear: studyYear == _undefined || studyYear == null
            ? _instance.studyYear
            : (studyYear
                as Subscription$getServicesStream$services$classes$studyYear),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$getServicesStream$services$classes$studyYear<TRes>
      get studyYear {
    final local$studyYear = _instance.studyYear;
    return CopyWith$Subscription$getServicesStream$services$classes$studyYear(
        local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl$Subscription$getServicesStream$services$classes<TRes>
    implements CopyWith$Subscription$getServicesStream$services$classes<TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream$services$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$getServicesStream$services$classes$studyYear? studyYear,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$getServicesStream$services$classes$studyYear<TRes>
      get studyYear =>
          CopyWith$Subscription$getServicesStream$services$classes$studyYear
              .stub(_res);
}

class Subscription$getServicesStream$services$classes$studyYear {
  Subscription$getServicesStream$services$classes$studyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$getServicesStream$services$classes$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$getServicesStream$services$classes$studyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream$services$classes$studyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Subscription$getServicesStream$services$classes$studyYear
    on Subscription$getServicesStream$services$classes$studyYear {
  CopyWith$Subscription$getServicesStream$services$classes$studyYear<
          Subscription$getServicesStream$services$classes$studyYear>
      get copyWith =>
          CopyWith$Subscription$getServicesStream$services$classes$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream$services$classes$studyYear<
    TRes> {
  factory CopyWith$Subscription$getServicesStream$services$classes$studyYear(
    Subscription$getServicesStream$services$classes$studyYear instance,
    TRes Function(Subscription$getServicesStream$services$classes$studyYear)
        then,
  ) = _CopyWithImpl$Subscription$getServicesStream$services$classes$studyYear;

  factory CopyWith$Subscription$getServicesStream$services$classes$studyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream$services$classes$studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getServicesStream$services$classes$studyYear<
        TRes>
    implements
        CopyWith$Subscription$getServicesStream$services$classes$studyYear<
            TRes> {
  _CopyWithImpl$Subscription$getServicesStream$services$classes$studyYear(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream$services$classes$studyYear _instance;

  final TRes Function(Subscription$getServicesStream$services$classes$studyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getServicesStream$services$classes$studyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getServicesStream$services$classes$studyYear<
        TRes>
    implements
        CopyWith$Subscription$getServicesStream$services$classes$studyYear<
            TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream$services$classes$studyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$getServicesStream$services$groups {
  Subscription$getServicesStream$services$groups({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getServicesStream$services$groups.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getServicesStream$services$groups(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getServicesStream$services$groups) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$getServicesStream$services$groups
    on Subscription$getServicesStream$services$groups {
  CopyWith$Subscription$getServicesStream$services$groups<
          Subscription$getServicesStream$services$groups>
      get copyWith => CopyWith$Subscription$getServicesStream$services$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getServicesStream$services$groups<TRes> {
  factory CopyWith$Subscription$getServicesStream$services$groups(
    Subscription$getServicesStream$services$groups instance,
    TRes Function(Subscription$getServicesStream$services$groups) then,
  ) = _CopyWithImpl$Subscription$getServicesStream$services$groups;

  factory CopyWith$Subscription$getServicesStream$services$groups.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getServicesStream$services$groups;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getServicesStream$services$groups<TRes>
    implements CopyWith$Subscription$getServicesStream$services$groups<TRes> {
  _CopyWithImpl$Subscription$getServicesStream$services$groups(
    this._instance,
    this._then,
  );

  final Subscription$getServicesStream$services$groups _instance;

  final TRes Function(Subscription$getServicesStream$services$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getServicesStream$services$groups(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getServicesStream$services$groups<TRes>
    implements CopyWith$Subscription$getServicesStream$services$groups<TRes> {
  _CopyWithStubImpl$Subscription$getServicesStream$services$groups(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}
