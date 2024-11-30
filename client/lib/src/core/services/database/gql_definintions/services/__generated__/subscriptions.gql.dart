import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllServices {
  factory Variables_Subscription_watchAllServices({
    List<Input_ServicesBoolExp>? where,
    List<Input_GroupsBoolExp>? groupsWhere,
    List<Input_ClassesBoolExp>? classesWhere,
    List<Input_ServicesOrderBy>? orderBy,
    List<Input_ClassesOrderBy>? classesOrderBy,
    List<Input_GroupsOrderBy>? groupsOrderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllServices._({
        if (where != null) r'where': where,
        if (groupsWhere != null) r'groupsWhere': groupsWhere,
        if (classesWhere != null) r'classesWhere': classesWhere,
        if (orderBy != null) r'orderBy': orderBy,
        if (classesOrderBy != null) r'classesOrderBy': classesOrderBy,
        if (groupsOrderBy != null) r'groupsOrderBy': groupsOrderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllServices._(this._$data);

  factory Variables_Subscription_watchAllServices.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_ServicesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('groupsWhere')) {
      final l$groupsWhere = data['groupsWhere'];
      result$data['groupsWhere'] = (l$groupsWhere as List<dynamic>?)
          ?.map(
              (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('classesWhere')) {
      final l$classesWhere = data['classesWhere'];
      result$data['classesWhere'] = (l$classesWhere as List<dynamic>?)
          ?.map(
              (e) => Input_ClassesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input_ServicesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('classesOrderBy')) {
      final l$classesOrderBy = data['classesOrderBy'];
      result$data['classesOrderBy'] = (l$classesOrderBy as List<dynamic>?)
          ?.map(
              (e) => Input_ClassesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('groupsOrderBy')) {
      final l$groupsOrderBy = data['groupsOrderBy'];
      result$data['groupsOrderBy'] = (l$groupsOrderBy as List<dynamic>?)
          ?.map(
              (e) => Input_GroupsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllServices._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ServicesBoolExp>? get where =>
      (_$data['where'] as List<Input_ServicesBoolExp>?);

  List<Input_GroupsBoolExp>? get groupsWhere =>
      (_$data['groupsWhere'] as List<Input_GroupsBoolExp>?);

  List<Input_ClassesBoolExp>? get classesWhere =>
      (_$data['classesWhere'] as List<Input_ClassesBoolExp>?);

  List<Input_ServicesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_ServicesOrderBy>?);

  List<Input_ClassesOrderBy>? get classesOrderBy =>
      (_$data['classesOrderBy'] as List<Input_ClassesOrderBy>?);

  List<Input_GroupsOrderBy>? get groupsOrderBy =>
      (_$data['groupsOrderBy'] as List<Input_GroupsOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllServices<
          Variables_Subscription_watchAllServices>
      get copyWith => CopyWith_Variables_Subscription_watchAllServices(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllServices) ||
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

abstract class CopyWith_Variables_Subscription_watchAllServices<TRes> {
  factory CopyWith_Variables_Subscription_watchAllServices(
    Variables_Subscription_watchAllServices instance,
    TRes Function(Variables_Subscription_watchAllServices) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllServices;

  factory CopyWith_Variables_Subscription_watchAllServices.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllServices;

  TRes call({
    List<Input_ServicesBoolExp>? where,
    List<Input_GroupsBoolExp>? groupsWhere,
    List<Input_ClassesBoolExp>? classesWhere,
    List<Input_ServicesOrderBy>? orderBy,
    List<Input_ClassesOrderBy>? classesOrderBy,
    List<Input_GroupsOrderBy>? groupsOrderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllServices<TRes>
    implements CopyWith_Variables_Subscription_watchAllServices<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllServices(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllServices _instance;

  final TRes Function(Variables_Subscription_watchAllServices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? groupsWhere = _undefined,
    Object? classesWhere = _undefined,
    Object? orderBy = _undefined,
    Object? classesOrderBy = _undefined,
    Object? groupsOrderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllServices._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_ServicesBoolExp>?),
        if (groupsWhere != _undefined)
          'groupsWhere': (groupsWhere as List<Input_GroupsBoolExp>?),
        if (classesWhere != _undefined)
          'classesWhere': (classesWhere as List<Input_ClassesBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_ServicesOrderBy>?),
        if (classesOrderBy != _undefined)
          'classesOrderBy': (classesOrderBy as List<Input_ClassesOrderBy>?),
        if (groupsOrderBy != _undefined)
          'groupsOrderBy': (groupsOrderBy as List<Input_GroupsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllServices<TRes>
    implements CopyWith_Variables_Subscription_watchAllServices<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllServices(this._res);

  TRes _res;

  call({
    List<Input_ServicesBoolExp>? where,
    List<Input_GroupsBoolExp>? groupsWhere,
    List<Input_ClassesBoolExp>? classesWhere,
    List<Input_ServicesOrderBy>? orderBy,
    List<Input_ClassesOrderBy>? classesOrderBy,
    List<Input_GroupsOrderBy>? groupsOrderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllServices {
  Subscription_watchAllServices({required this.services});

  factory Subscription_watchAllServices.fromJson(Map<String, dynamic> json) {
    final l$services = json['services'];
    return Subscription_watchAllServices(
        services: (l$services as List<dynamic>)
            .map((e) => Subscription_watchAllServices_services.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllServices_services> services;

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
    if (!(other is Subscription_watchAllServices) ||
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

extension UtilityExtension_Subscription_watchAllServices
    on Subscription_watchAllServices {
  CopyWith_Subscription_watchAllServices<Subscription_watchAllServices>
      get copyWith => CopyWith_Subscription_watchAllServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllServices<TRes> {
  factory CopyWith_Subscription_watchAllServices(
    Subscription_watchAllServices instance,
    TRes Function(Subscription_watchAllServices) then,
  ) = _CopyWithImpl_Subscription_watchAllServices;

  factory CopyWith_Subscription_watchAllServices.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllServices;

  TRes call({List<Subscription_watchAllServices_services>? services});
  TRes services(
      Iterable<Subscription_watchAllServices_services> Function(
              Iterable<
                  CopyWith_Subscription_watchAllServices_services<
                      Subscription_watchAllServices_services>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllServices<TRes>
    implements CopyWith_Subscription_watchAllServices<TRes> {
  _CopyWithImpl_Subscription_watchAllServices(
    this._instance,
    this._then,
  );

  final Subscription_watchAllServices _instance;

  final TRes Function(Subscription_watchAllServices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? services = _undefined}) => _then(
      Subscription_watchAllServices(
          services: services == _undefined || services == null
              ? _instance.services
              : (services as List<Subscription_watchAllServices_services>)));

  TRes services(
          Iterable<Subscription_watchAllServices_services> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllServices_services<
                          Subscription_watchAllServices_services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith_Subscription_watchAllServices_services(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllServices<TRes>
    implements CopyWith_Subscription_watchAllServices<TRes> {
  _CopyWithStubImpl_Subscription_watchAllServices(this._res);

  TRes _res;

  call({List<Subscription_watchAllServices_services>? services}) => _res;

  services(_fn) => _res;
}

const documentNodeSubscriptionwatchAllServices = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllServices'),
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
            name: NameNode(value: 'studyYearFromId'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          ),
          ObjectFieldNode(
            name: NameNode(value: 'studyYearToId'),
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
                name: NameNode(value: 'studyYearFromId'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'studyYearToId'),
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
          FragmentSpreadNode(
            name: NameNode(value: 'ServiceWithStudyYears'),
            directives: [],
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
              FragmentSpreadNode(
                name: NameNode(value: 'Class'),
                directives: [],
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
              FragmentSpreadNode(
                name: NameNode(value: 'Group'),
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
  fragmentDefinitionServiceWithStudyYears,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);

class Subscription_watchAllServices_services
    implements Fragment_ServiceWithStudyYears, Fragment_ServiceNoPhoto {
  Subscription_watchAllServices_services({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.studyYearFrom,
    this.studyYearTo,
    this.photoUpdatedAt,
    this.blurhash,
    required this.classes,
    required this.groups,
  });

  factory Subscription_watchAllServices_services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    return Subscription_watchAllServices_services(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Subscription_watchAllServices_services_studyYearFrom.fromJson(
              (l$studyYearFrom as Map<String, dynamic>)),
      studyYearTo: l$studyYearTo == null
          ? null
          : Subscription_watchAllServices_services_studyYearTo.fromJson(
              (l$studyYearTo as Map<String, dynamic>)),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      classes: (l$classes as List<dynamic>)
          .map((e) => Subscription_watchAllServices_services_classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment_Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Subscription_watchAllServices_services_studyYearFrom? studyYearFrom;

  final Subscription_watchAllServices_services_studyYearTo? studyYearTo;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final List<Subscription_watchAllServices_services_classes> classes;

  final List<Fragment_Group> groups;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$classes = classes;
    final l$groups = groups;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
      l$photoUpdatedAt,
      l$blurhash,
      Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllServices_services) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
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
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllServices_services
    on Subscription_watchAllServices_services {
  CopyWith_Subscription_watchAllServices_services<
          Subscription_watchAllServices_services>
      get copyWith => CopyWith_Subscription_watchAllServices_services(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllServices_services<TRes> {
  factory CopyWith_Subscription_watchAllServices_services(
    Subscription_watchAllServices_services instance,
    TRes Function(Subscription_watchAllServices_services) then,
  ) = _CopyWithImpl_Subscription_watchAllServices_services;

  factory CopyWith_Subscription_watchAllServices_services.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllServices_services;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Subscription_watchAllServices_services_studyYearFrom? studyYearFrom,
    Subscription_watchAllServices_services_studyYearTo? studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Subscription_watchAllServices_services_classes>? classes,
    List<Fragment_Group>? groups,
  });
  CopyWith_Subscription_watchAllServices_services_studyYearFrom<TRes>
      get studyYearFrom;
  CopyWith_Subscription_watchAllServices_services_studyYearTo<TRes>
      get studyYearTo;
  TRes classes(
      Iterable<Subscription_watchAllServices_services_classes> Function(
              Iterable<
                  CopyWith_Subscription_watchAllServices_services_classes<
                      Subscription_watchAllServices_services_classes>>)
          _fn);
  TRes groups(
      Iterable<Fragment_Group> Function(
              Iterable<CopyWith_Fragment_Group<Fragment_Group>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllServices_services<TRes>
    implements CopyWith_Subscription_watchAllServices_services<TRes> {
  _CopyWithImpl_Subscription_watchAllServices_services(
    this._instance,
    this._then,
  );

  final Subscription_watchAllServices_services _instance;

  final TRes Function(Subscription_watchAllServices_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
  }) =>
      _then(Subscription_watchAllServices_services(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        studyYearFrom: studyYearFrom == _undefined
            ? _instance.studyYearFrom
            : (studyYearFrom
                as Subscription_watchAllServices_services_studyYearFrom?),
        studyYearTo: studyYearTo == _undefined
            ? _instance.studyYearTo
            : (studyYearTo
                as Subscription_watchAllServices_services_studyYearTo?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes as List<Subscription_watchAllServices_services_classes>),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Fragment_Group>),
      ));

  CopyWith_Subscription_watchAllServices_services_studyYearFrom<TRes>
      get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Subscription_watchAllServices_services_studyYearFrom.stub(
            _then(_instance))
        : CopyWith_Subscription_watchAllServices_services_studyYearFrom(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Subscription_watchAllServices_services_studyYearTo<TRes>
      get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Subscription_watchAllServices_services_studyYearTo.stub(
            _then(_instance))
        : CopyWith_Subscription_watchAllServices_services_studyYearTo(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }

  TRes classes(
          Iterable<Subscription_watchAllServices_services_classes> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllServices_services_classes<
                          Subscription_watchAllServices_services_classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map(
              (e) => CopyWith_Subscription_watchAllServices_services_classes(
                    e,
                    (i) => i,
                  ))).toList());

  TRes groups(
          Iterable<Fragment_Group> Function(
                  Iterable<CopyWith_Fragment_Group<Fragment_Group>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map((e) => CopyWith_Fragment_Group(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllServices_services<TRes>
    implements CopyWith_Subscription_watchAllServices_services<TRes> {
  _CopyWithStubImpl_Subscription_watchAllServices_services(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Subscription_watchAllServices_services_studyYearFrom? studyYearFrom,
    Subscription_watchAllServices_services_studyYearTo? studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Subscription_watchAllServices_services_classes>? classes,
    List<Fragment_Group>? groups,
  }) =>
      _res;

  CopyWith_Subscription_watchAllServices_services_studyYearFrom<TRes>
      get studyYearFrom =>
          CopyWith_Subscription_watchAllServices_services_studyYearFrom.stub(
              _res);

  CopyWith_Subscription_watchAllServices_services_studyYearTo<TRes>
      get studyYearTo =>
          CopyWith_Subscription_watchAllServices_services_studyYearTo.stub(
              _res);

  classes(_fn) => _res;

  groups(_fn) => _res;
}

class Subscription_watchAllServices_services_studyYearFrom
    implements Fragment_ServiceWithStudyYears_studyYearFrom {
  Subscription_watchAllServices_services_studyYearFrom({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchAllServices_services_studyYearFrom.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllServices_services_studyYearFrom(
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
    if (!(other is Subscription_watchAllServices_services_studyYearFrom) ||
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

extension UtilityExtension_Subscription_watchAllServices_services_studyYearFrom
    on Subscription_watchAllServices_services_studyYearFrom {
  CopyWith_Subscription_watchAllServices_services_studyYearFrom<
          Subscription_watchAllServices_services_studyYearFrom>
      get copyWith =>
          CopyWith_Subscription_watchAllServices_services_studyYearFrom(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllServices_services_studyYearFrom<
    TRes> {
  factory CopyWith_Subscription_watchAllServices_services_studyYearFrom(
    Subscription_watchAllServices_services_studyYearFrom instance,
    TRes Function(Subscription_watchAllServices_services_studyYearFrom) then,
  ) = _CopyWithImpl_Subscription_watchAllServices_services_studyYearFrom;

  factory CopyWith_Subscription_watchAllServices_services_studyYearFrom.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllServices_services_studyYearFrom;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllServices_services_studyYearFrom<TRes>
    implements
        CopyWith_Subscription_watchAllServices_services_studyYearFrom<TRes> {
  _CopyWithImpl_Subscription_watchAllServices_services_studyYearFrom(
    this._instance,
    this._then,
  );

  final Subscription_watchAllServices_services_studyYearFrom _instance;

  final TRes Function(Subscription_watchAllServices_services_studyYearFrom)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllServices_services_studyYearFrom(
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

class _CopyWithStubImpl_Subscription_watchAllServices_services_studyYearFrom<
        TRes>
    implements
        CopyWith_Subscription_watchAllServices_services_studyYearFrom<TRes> {
  _CopyWithStubImpl_Subscription_watchAllServices_services_studyYearFrom(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchAllServices_services_studyYearTo
    implements Fragment_ServiceWithStudyYears_studyYearTo {
  Subscription_watchAllServices_services_studyYearTo({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchAllServices_services_studyYearTo.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllServices_services_studyYearTo(
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
    if (!(other is Subscription_watchAllServices_services_studyYearTo) ||
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

extension UtilityExtension_Subscription_watchAllServices_services_studyYearTo
    on Subscription_watchAllServices_services_studyYearTo {
  CopyWith_Subscription_watchAllServices_services_studyYearTo<
          Subscription_watchAllServices_services_studyYearTo>
      get copyWith =>
          CopyWith_Subscription_watchAllServices_services_studyYearTo(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllServices_services_studyYearTo<
    TRes> {
  factory CopyWith_Subscription_watchAllServices_services_studyYearTo(
    Subscription_watchAllServices_services_studyYearTo instance,
    TRes Function(Subscription_watchAllServices_services_studyYearTo) then,
  ) = _CopyWithImpl_Subscription_watchAllServices_services_studyYearTo;

  factory CopyWith_Subscription_watchAllServices_services_studyYearTo.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllServices_services_studyYearTo;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllServices_services_studyYearTo<TRes>
    implements
        CopyWith_Subscription_watchAllServices_services_studyYearTo<TRes> {
  _CopyWithImpl_Subscription_watchAllServices_services_studyYearTo(
    this._instance,
    this._then,
  );

  final Subscription_watchAllServices_services_studyYearTo _instance;

  final TRes Function(Subscription_watchAllServices_services_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllServices_services_studyYearTo(
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

class _CopyWithStubImpl_Subscription_watchAllServices_services_studyYearTo<TRes>
    implements
        CopyWith_Subscription_watchAllServices_services_studyYearTo<TRes> {
  _CopyWithStubImpl_Subscription_watchAllServices_services_studyYearTo(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchAllServices_services_classes
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Subscription_watchAllServices_services_classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    this.blurhash,
    required this.studyYear,
  });

  factory Subscription_watchAllServices_services_classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$studyYear = json['studyYear'];
    return Subscription_watchAllServices_services_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      studyYear:
          Subscription_watchAllServices_services_classes_studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Subscription_watchAllServices_services_classes_studyYear studyYear;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$studyYear = studyYear;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$studyYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllServices_services_classes) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllServices_services_classes
    on Subscription_watchAllServices_services_classes {
  CopyWith_Subscription_watchAllServices_services_classes<
          Subscription_watchAllServices_services_classes>
      get copyWith => CopyWith_Subscription_watchAllServices_services_classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllServices_services_classes<TRes> {
  factory CopyWith_Subscription_watchAllServices_services_classes(
    Subscription_watchAllServices_services_classes instance,
    TRes Function(Subscription_watchAllServices_services_classes) then,
  ) = _CopyWithImpl_Subscription_watchAllServices_services_classes;

  factory CopyWith_Subscription_watchAllServices_services_classes.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllServices_services_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchAllServices_services_classes_studyYear? studyYear,
  });
  CopyWith_Subscription_watchAllServices_services_classes_studyYear<TRes>
      get studyYear;
}

class _CopyWithImpl_Subscription_watchAllServices_services_classes<TRes>
    implements CopyWith_Subscription_watchAllServices_services_classes<TRes> {
  _CopyWithImpl_Subscription_watchAllServices_services_classes(
    this._instance,
    this._then,
  );

  final Subscription_watchAllServices_services_classes _instance;

  final TRes Function(Subscription_watchAllServices_services_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? studyYear = _undefined,
  }) =>
      _then(Subscription_watchAllServices_services_classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        studyYear: studyYear == _undefined || studyYear == null
            ? _instance.studyYear
            : (studyYear
                as Subscription_watchAllServices_services_classes_studyYear),
      ));

  CopyWith_Subscription_watchAllServices_services_classes_studyYear<TRes>
      get studyYear {
    final local$studyYear = _instance.studyYear;
    return CopyWith_Subscription_watchAllServices_services_classes_studyYear(
        local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl_Subscription_watchAllServices_services_classes<TRes>
    implements CopyWith_Subscription_watchAllServices_services_classes<TRes> {
  _CopyWithStubImpl_Subscription_watchAllServices_services_classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchAllServices_services_classes_studyYear? studyYear,
  }) =>
      _res;

  CopyWith_Subscription_watchAllServices_services_classes_studyYear<TRes>
      get studyYear =>
          CopyWith_Subscription_watchAllServices_services_classes_studyYear
              .stub(_res);
}

class Subscription_watchAllServices_services_classes_studyYear {
  Subscription_watchAllServices_services_classes_studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchAllServices_services_classes_studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllServices_services_classes_studyYear(
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
    if (!(other is Subscription_watchAllServices_services_classes_studyYear) ||
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

extension UtilityExtension_Subscription_watchAllServices_services_classes_studyYear
    on Subscription_watchAllServices_services_classes_studyYear {
  CopyWith_Subscription_watchAllServices_services_classes_studyYear<
          Subscription_watchAllServices_services_classes_studyYear>
      get copyWith =>
          CopyWith_Subscription_watchAllServices_services_classes_studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllServices_services_classes_studyYear<
    TRes> {
  factory CopyWith_Subscription_watchAllServices_services_classes_studyYear(
    Subscription_watchAllServices_services_classes_studyYear instance,
    TRes Function(Subscription_watchAllServices_services_classes_studyYear)
        then,
  ) = _CopyWithImpl_Subscription_watchAllServices_services_classes_studyYear;

  factory CopyWith_Subscription_watchAllServices_services_classes_studyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllServices_services_classes_studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllServices_services_classes_studyYear<
        TRes>
    implements
        CopyWith_Subscription_watchAllServices_services_classes_studyYear<
            TRes> {
  _CopyWithImpl_Subscription_watchAllServices_services_classes_studyYear(
    this._instance,
    this._then,
  );

  final Subscription_watchAllServices_services_classes_studyYear _instance;

  final TRes Function(Subscription_watchAllServices_services_classes_studyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllServices_services_classes_studyYear(
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

class _CopyWithStubImpl_Subscription_watchAllServices_services_classes_studyYear<
        TRes>
    implements
        CopyWith_Subscription_watchAllServices_services_classes_studyYear<
            TRes> {
  _CopyWithStubImpl_Subscription_watchAllServices_services_classes_studyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Subscription_watchService {
  factory Variables_Subscription_watchService({required UuidValue id}) =>
      Variables_Subscription_watchService._({
        r'id': id,
      });

  Variables_Subscription_watchService._(this._$data);

  factory Variables_Subscription_watchService.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchService._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchService<
          Variables_Subscription_watchService>
      get copyWith => CopyWith_Variables_Subscription_watchService(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchService) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Subscription_watchService<TRes> {
  factory CopyWith_Variables_Subscription_watchService(
    Variables_Subscription_watchService instance,
    TRes Function(Variables_Subscription_watchService) then,
  ) = _CopyWithImpl_Variables_Subscription_watchService;

  factory CopyWith_Variables_Subscription_watchService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchService;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchService<TRes>
    implements CopyWith_Variables_Subscription_watchService<TRes> {
  _CopyWithImpl_Variables_Subscription_watchService(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchService _instance;

  final TRes Function(Variables_Subscription_watchService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables_Subscription_watchService._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchService<TRes>
    implements CopyWith_Variables_Subscription_watchService<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchService(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchService {
  Subscription_watchService({this.servicesByPk});

  factory Subscription_watchService.fromJson(Map<String, dynamic> json) {
    final l$servicesByPk = json['servicesByPk'];
    return Subscription_watchService(
        servicesByPk: l$servicesByPk == null
            ? null
            : Subscription_watchService_servicesByPk.fromJson(
                (l$servicesByPk as Map<String, dynamic>)));
  }

  final Subscription_watchService_servicesByPk? servicesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$servicesByPk = servicesByPk;
    _resultData['servicesByPk'] = l$servicesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$servicesByPk = servicesByPk;
    return Object.hashAll([l$servicesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchService) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$servicesByPk = servicesByPk;
    final lOther$servicesByPk = other.servicesByPk;
    if (l$servicesByPk != lOther$servicesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchService
    on Subscription_watchService {
  CopyWith_Subscription_watchService<Subscription_watchService> get copyWith =>
      CopyWith_Subscription_watchService(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchService<TRes> {
  factory CopyWith_Subscription_watchService(
    Subscription_watchService instance,
    TRes Function(Subscription_watchService) then,
  ) = _CopyWithImpl_Subscription_watchService;

  factory CopyWith_Subscription_watchService.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchService;

  TRes call({Subscription_watchService_servicesByPk? servicesByPk});
  CopyWith_Subscription_watchService_servicesByPk<TRes> get servicesByPk;
}

class _CopyWithImpl_Subscription_watchService<TRes>
    implements CopyWith_Subscription_watchService<TRes> {
  _CopyWithImpl_Subscription_watchService(
    this._instance,
    this._then,
  );

  final Subscription_watchService _instance;

  final TRes Function(Subscription_watchService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? servicesByPk = _undefined}) => _then(
      Subscription_watchService(
          servicesByPk: servicesByPk == _undefined
              ? _instance.servicesByPk
              : (servicesByPk as Subscription_watchService_servicesByPk?)));

  CopyWith_Subscription_watchService_servicesByPk<TRes> get servicesByPk {
    final local$servicesByPk = _instance.servicesByPk;
    return local$servicesByPk == null
        ? CopyWith_Subscription_watchService_servicesByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchService_servicesByPk(
            local$servicesByPk, (e) => call(servicesByPk: e));
  }
}

class _CopyWithStubImpl_Subscription_watchService<TRes>
    implements CopyWith_Subscription_watchService<TRes> {
  _CopyWithStubImpl_Subscription_watchService(this._res);

  TRes _res;

  call({Subscription_watchService_servicesByPk? servicesByPk}) => _res;

  CopyWith_Subscription_watchService_servicesByPk<TRes> get servicesByPk =>
      CopyWith_Subscription_watchService_servicesByPk.stub(_res);
}

const documentNodeSubscriptionwatchService = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchService'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'servicesByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ServiceWithStudyYears'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'LatestEditHistory'),
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
          ),
          FieldNode(
            name: NameNode(value: 'adminUsers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'distinctOn'),
                value: EnumValueNode(name: NameNode(value: 'uid')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'User'),
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
            name: NameNode(value: 'nextService'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Service'),
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
  fragmentDefinitionServiceWithStudyYears,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionLatestEditHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
  fragmentDefinitionService,
]);

class Subscription_watchService_servicesByPk
    implements Fragment_ServiceWithStudyYears, Fragment_ServiceNoPhoto {
  Subscription_watchService_servicesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.studyYearFrom,
    this.studyYearTo,
    this.photoUpdatedAt,
    this.blurhash,
    this.lastEdit,
    required this.adminUsers,
    this.nextService,
  });

  factory Subscription_watchService_servicesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$lastEdit = json['lastEdit'];
    final l$adminUsers = json['adminUsers'];
    final l$nextService = json['nextService'];
    return Subscription_watchService_servicesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Subscription_watchService_servicesByPk_studyYearFrom.fromJson(
              (l$studyYearFrom as Map<String, dynamic>)),
      studyYearTo: l$studyYearTo == null
          ? null
          : Subscription_watchService_servicesByPk_studyYearTo.fromJson(
              (l$studyYearTo as Map<String, dynamic>)),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map((e) =>
              Subscription_watchService_servicesByPk_adminUsers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      nextService: l$nextService == null
          ? null
          : Fragment_Service.fromJson((l$nextService as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Subscription_watchService_servicesByPk_studyYearFrom? studyYearFrom;

  final Subscription_watchService_servicesByPk_studyYearTo? studyYearTo;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_LatestEditHistory? lastEdit;

  final List<Subscription_watchService_servicesByPk_adminUsers> adminUsers;

  final Fragment_Service? nextService;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
    final l$nextService = nextService;
    _resultData['nextService'] = l$nextService?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$lastEdit = lastEdit;
    final l$adminUsers = adminUsers;
    final l$nextService = nextService;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
      l$photoUpdatedAt,
      l$blurhash,
      l$lastEdit,
      Object.hashAll(l$adminUsers.map((v) => v)),
      l$nextService,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchService_servicesByPk) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (l$adminUsers.length != lOther$adminUsers.length) {
      return false;
    }
    for (int i = 0; i < l$adminUsers.length; i++) {
      final l$adminUsers$entry = l$adminUsers[i];
      final lOther$adminUsers$entry = lOther$adminUsers[i];
      if (l$adminUsers$entry != lOther$adminUsers$entry) {
        return false;
      }
    }
    final l$nextService = nextService;
    final lOther$nextService = other.nextService;
    if (l$nextService != lOther$nextService) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchService_servicesByPk
    on Subscription_watchService_servicesByPk {
  CopyWith_Subscription_watchService_servicesByPk<
          Subscription_watchService_servicesByPk>
      get copyWith => CopyWith_Subscription_watchService_servicesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchService_servicesByPk<TRes> {
  factory CopyWith_Subscription_watchService_servicesByPk(
    Subscription_watchService_servicesByPk instance,
    TRes Function(Subscription_watchService_servicesByPk) then,
  ) = _CopyWithImpl_Subscription_watchService_servicesByPk;

  factory CopyWith_Subscription_watchService_servicesByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchService_servicesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Subscription_watchService_servicesByPk_studyYearFrom? studyYearFrom,
    Subscription_watchService_servicesByPk_studyYearTo? studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestEditHistory? lastEdit,
    List<Subscription_watchService_servicesByPk_adminUsers>? adminUsers,
    Fragment_Service? nextService,
  });
  CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<TRes>
      get studyYearFrom;
  CopyWith_Subscription_watchService_servicesByPk_studyYearTo<TRes>
      get studyYearTo;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  TRes adminUsers(
      Iterable<Subscription_watchService_servicesByPk_adminUsers> Function(
              Iterable<
                  CopyWith_Subscription_watchService_servicesByPk_adminUsers<
                      Subscription_watchService_servicesByPk_adminUsers>>)
          _fn);
  CopyWith_Fragment_Service<TRes> get nextService;
}

class _CopyWithImpl_Subscription_watchService_servicesByPk<TRes>
    implements CopyWith_Subscription_watchService_servicesByPk<TRes> {
  _CopyWithImpl_Subscription_watchService_servicesByPk(
    this._instance,
    this._then,
  );

  final Subscription_watchService_servicesByPk _instance;

  final TRes Function(Subscription_watchService_servicesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? lastEdit = _undefined,
    Object? adminUsers = _undefined,
    Object? nextService = _undefined,
  }) =>
      _then(Subscription_watchService_servicesByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        studyYearFrom: studyYearFrom == _undefined
            ? _instance.studyYearFrom
            : (studyYearFrom
                as Subscription_watchService_servicesByPk_studyYearFrom?),
        studyYearTo: studyYearTo == _undefined
            ? _instance.studyYearTo
            : (studyYearTo
                as Subscription_watchService_servicesByPk_studyYearTo?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        lastEdit: lastEdit == _undefined
            ? _instance.lastEdit
            : (lastEdit as Fragment_LatestEditHistory?),
        adminUsers: adminUsers == _undefined || adminUsers == null
            ? _instance.adminUsers
            : (adminUsers
                as List<Subscription_watchService_servicesByPk_adminUsers>),
        nextService: nextService == _undefined
            ? _instance.nextService
            : (nextService as Fragment_Service?),
      ));

  CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<TRes>
      get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Subscription_watchService_servicesByPk_studyYearFrom.stub(
            _then(_instance))
        : CopyWith_Subscription_watchService_servicesByPk_studyYearFrom(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Subscription_watchService_servicesByPk_studyYearTo<TRes>
      get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Subscription_watchService_servicesByPk_studyYearTo.stub(
            _then(_instance))
        : CopyWith_Subscription_watchService_servicesByPk_studyYearTo(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  TRes adminUsers(
          Iterable<Subscription_watchService_servicesByPk_adminUsers> Function(
                  Iterable<
                      CopyWith_Subscription_watchService_servicesByPk_adminUsers<
                          Subscription_watchService_servicesByPk_adminUsers>>)
              _fn) =>
      call(
          adminUsers: _fn(_instance.adminUsers.map(
              (e) => CopyWith_Subscription_watchService_servicesByPk_adminUsers(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_Service<TRes> get nextService {
    final local$nextService = _instance.nextService;
    return local$nextService == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(
            local$nextService, (e) => call(nextService: e));
  }
}

class _CopyWithStubImpl_Subscription_watchService_servicesByPk<TRes>
    implements CopyWith_Subscription_watchService_servicesByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchService_servicesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Subscription_watchService_servicesByPk_studyYearFrom? studyYearFrom,
    Subscription_watchService_servicesByPk_studyYearTo? studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestEditHistory? lastEdit,
    List<Subscription_watchService_servicesByPk_adminUsers>? adminUsers,
    Fragment_Service? nextService,
  }) =>
      _res;

  CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<TRes>
      get studyYearFrom =>
          CopyWith_Subscription_watchService_servicesByPk_studyYearFrom.stub(
              _res);

  CopyWith_Subscription_watchService_servicesByPk_studyYearTo<TRes>
      get studyYearTo =>
          CopyWith_Subscription_watchService_servicesByPk_studyYearTo.stub(
              _res);

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  adminUsers(_fn) => _res;

  CopyWith_Fragment_Service<TRes> get nextService =>
      CopyWith_Fragment_Service.stub(_res);
}

class Subscription_watchService_servicesByPk_studyYearFrom
    implements Fragment_ServiceWithStudyYears_studyYearFrom {
  Subscription_watchService_servicesByPk_studyYearFrom({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchService_servicesByPk_studyYearFrom.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchService_servicesByPk_studyYearFrom(
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
    if (!(other is Subscription_watchService_servicesByPk_studyYearFrom) ||
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

extension UtilityExtension_Subscription_watchService_servicesByPk_studyYearFrom
    on Subscription_watchService_servicesByPk_studyYearFrom {
  CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<
          Subscription_watchService_servicesByPk_studyYearFrom>
      get copyWith =>
          CopyWith_Subscription_watchService_servicesByPk_studyYearFrom(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<
    TRes> {
  factory CopyWith_Subscription_watchService_servicesByPk_studyYearFrom(
    Subscription_watchService_servicesByPk_studyYearFrom instance,
    TRes Function(Subscription_watchService_servicesByPk_studyYearFrom) then,
  ) = _CopyWithImpl_Subscription_watchService_servicesByPk_studyYearFrom;

  factory CopyWith_Subscription_watchService_servicesByPk_studyYearFrom.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchService_servicesByPk_studyYearFrom;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchService_servicesByPk_studyYearFrom<TRes>
    implements
        CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<TRes> {
  _CopyWithImpl_Subscription_watchService_servicesByPk_studyYearFrom(
    this._instance,
    this._then,
  );

  final Subscription_watchService_servicesByPk_studyYearFrom _instance;

  final TRes Function(Subscription_watchService_servicesByPk_studyYearFrom)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchService_servicesByPk_studyYearFrom(
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

class _CopyWithStubImpl_Subscription_watchService_servicesByPk_studyYearFrom<
        TRes>
    implements
        CopyWith_Subscription_watchService_servicesByPk_studyYearFrom<TRes> {
  _CopyWithStubImpl_Subscription_watchService_servicesByPk_studyYearFrom(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchService_servicesByPk_studyYearTo
    implements Fragment_ServiceWithStudyYears_studyYearTo {
  Subscription_watchService_servicesByPk_studyYearTo({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchService_servicesByPk_studyYearTo.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchService_servicesByPk_studyYearTo(
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
    if (!(other is Subscription_watchService_servicesByPk_studyYearTo) ||
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

extension UtilityExtension_Subscription_watchService_servicesByPk_studyYearTo
    on Subscription_watchService_servicesByPk_studyYearTo {
  CopyWith_Subscription_watchService_servicesByPk_studyYearTo<
          Subscription_watchService_servicesByPk_studyYearTo>
      get copyWith =>
          CopyWith_Subscription_watchService_servicesByPk_studyYearTo(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchService_servicesByPk_studyYearTo<
    TRes> {
  factory CopyWith_Subscription_watchService_servicesByPk_studyYearTo(
    Subscription_watchService_servicesByPk_studyYearTo instance,
    TRes Function(Subscription_watchService_servicesByPk_studyYearTo) then,
  ) = _CopyWithImpl_Subscription_watchService_servicesByPk_studyYearTo;

  factory CopyWith_Subscription_watchService_servicesByPk_studyYearTo.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchService_servicesByPk_studyYearTo;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchService_servicesByPk_studyYearTo<TRes>
    implements
        CopyWith_Subscription_watchService_servicesByPk_studyYearTo<TRes> {
  _CopyWithImpl_Subscription_watchService_servicesByPk_studyYearTo(
    this._instance,
    this._then,
  );

  final Subscription_watchService_servicesByPk_studyYearTo _instance;

  final TRes Function(Subscription_watchService_servicesByPk_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchService_servicesByPk_studyYearTo(
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

class _CopyWithStubImpl_Subscription_watchService_servicesByPk_studyYearTo<TRes>
    implements
        CopyWith_Subscription_watchService_servicesByPk_studyYearTo<TRes> {
  _CopyWithStubImpl_Subscription_watchService_servicesByPk_studyYearTo(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchService_servicesByPk_adminUsers {
  Subscription_watchService_servicesByPk_adminUsers({
    required this.user,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Subscription_watchService_servicesByPk_adminUsers.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription_watchService_servicesByPk_adminUsers(
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchService_servicesByPk_adminUsers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Subscription_watchService_servicesByPk_adminUsers
    on Subscription_watchService_servicesByPk_adminUsers {
  CopyWith_Subscription_watchService_servicesByPk_adminUsers<
          Subscription_watchService_servicesByPk_adminUsers>
      get copyWith =>
          CopyWith_Subscription_watchService_servicesByPk_adminUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchService_servicesByPk_adminUsers<
    TRes> {
  factory CopyWith_Subscription_watchService_servicesByPk_adminUsers(
    Subscription_watchService_servicesByPk_adminUsers instance,
    TRes Function(Subscription_watchService_servicesByPk_adminUsers) then,
  ) = _CopyWithImpl_Subscription_watchService_servicesByPk_adminUsers;

  factory CopyWith_Subscription_watchService_servicesByPk_adminUsers.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchService_servicesByPk_adminUsers;

  TRes call({
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Subscription_watchService_servicesByPk_adminUsers<TRes>
    implements
        CopyWith_Subscription_watchService_servicesByPk_adminUsers<TRes> {
  _CopyWithImpl_Subscription_watchService_servicesByPk_adminUsers(
    this._instance,
    this._then,
  );

  final Subscription_watchService_servicesByPk_adminUsers _instance;

  final TRes Function(Subscription_watchService_servicesByPk_adminUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchService_servicesByPk_adminUsers(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment_User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Subscription_watchService_servicesByPk_adminUsers<TRes>
    implements
        CopyWith_Subscription_watchService_servicesByPk_adminUsers<TRes> {
  _CopyWithStubImpl_Subscription_watchService_servicesByPk_adminUsers(
      this._res);

  TRes _res;

  call({
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}
