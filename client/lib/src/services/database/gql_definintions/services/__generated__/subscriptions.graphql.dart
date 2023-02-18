import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllServices {
  factory Variables$Subscription$watchAllServices({
    List<Input$ServicesBoolExp>? where,
    List<Input$GroupsBoolExp>? groupsWhere,
    List<Input$ClassesBoolExp>? classesWhere,
    List<Input$ServicesOrderBy>? orderBy,
    List<Input$ClassesOrderBy>? classesOrderBy,
    List<Input$GroupsOrderBy>? groupsOrderBy,
    int? limit,
  }) =>
      Variables$Subscription$watchAllServices._({
        if (where != null) r'where': where,
        if (groupsWhere != null) r'groupsWhere': groupsWhere,
        if (classesWhere != null) r'classesWhere': classesWhere,
        if (orderBy != null) r'orderBy': orderBy,
        if (classesOrderBy != null) r'classesOrderBy': classesOrderBy,
        if (groupsOrderBy != null) r'groupsOrderBy': groupsOrderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllServices._(this._$data);

  factory Variables$Subscription$watchAllServices.fromJson(
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
    return Variables$Subscription$watchAllServices._(result$data);
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

  CopyWith$Variables$Subscription$watchAllServices<
          Variables$Subscription$watchAllServices>
      get copyWith => CopyWith$Variables$Subscription$watchAllServices(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllServices) ||
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

abstract class CopyWith$Variables$Subscription$watchAllServices<TRes> {
  factory CopyWith$Variables$Subscription$watchAllServices(
    Variables$Subscription$watchAllServices instance,
    TRes Function(Variables$Subscription$watchAllServices) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllServices;

  factory CopyWith$Variables$Subscription$watchAllServices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllServices;

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

class _CopyWithImpl$Variables$Subscription$watchAllServices<TRes>
    implements CopyWith$Variables$Subscription$watchAllServices<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllServices(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllServices _instance;

  final TRes Function(Variables$Subscription$watchAllServices) _then;

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
      _then(Variables$Subscription$watchAllServices._({
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

class _CopyWithStubImpl$Variables$Subscription$watchAllServices<TRes>
    implements CopyWith$Variables$Subscription$watchAllServices<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllServices(this._res);

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

class Subscription$watchAllServices {
  Subscription$watchAllServices({required this.services});

  factory Subscription$watchAllServices.fromJson(Map<String, dynamic> json) {
    final l$services = json['services'];
    return Subscription$watchAllServices(
        services: (l$services as List<dynamic>)
            .map((e) => Subscription$watchAllServices$services.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllServices$services> services;

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
    if (!(other is Subscription$watchAllServices) ||
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

extension UtilityExtension$Subscription$watchAllServices
    on Subscription$watchAllServices {
  CopyWith$Subscription$watchAllServices<Subscription$watchAllServices>
      get copyWith => CopyWith$Subscription$watchAllServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllServices<TRes> {
  factory CopyWith$Subscription$watchAllServices(
    Subscription$watchAllServices instance,
    TRes Function(Subscription$watchAllServices) then,
  ) = _CopyWithImpl$Subscription$watchAllServices;

  factory CopyWith$Subscription$watchAllServices.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllServices;

  TRes call({List<Subscription$watchAllServices$services>? services});
  TRes services(
      Iterable<Subscription$watchAllServices$services> Function(
              Iterable<
                  CopyWith$Subscription$watchAllServices$services<
                      Subscription$watchAllServices$services>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllServices<TRes>
    implements CopyWith$Subscription$watchAllServices<TRes> {
  _CopyWithImpl$Subscription$watchAllServices(
    this._instance,
    this._then,
  );

  final Subscription$watchAllServices _instance;

  final TRes Function(Subscription$watchAllServices) _then;

  static const _undefined = {};

  TRes call({Object? services = _undefined}) => _then(
      Subscription$watchAllServices(
          services: services == _undefined || services == null
              ? _instance.services
              : (services as List<Subscription$watchAllServices$services>)));
  TRes services(
          Iterable<Subscription$watchAllServices$services> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllServices$services<
                          Subscription$watchAllServices$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Subscription$watchAllServices$services(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllServices<TRes>
    implements CopyWith$Subscription$watchAllServices<TRes> {
  _CopyWithStubImpl$Subscription$watchAllServices(this._res);

  TRes _res;

  call({List<Subscription$watchAllServices$services>? services}) => _res;
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
          FragmentSpreadNode(
            name: NameNode(value: 'Service'),
            directives: [],
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
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);

class Subscription$watchAllServices$services
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Subscription$watchAllServices$services({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
    required this.classes,
    required this.groups,
  });

  factory Subscription$watchAllServices$services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    return Subscription$watchAllServices$services(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Subscription$watchAllServices$services$fromStudyYear.fromJson(
              (l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Subscription$watchAllServices$services$toStudyYear.fromJson(
              (l$toStudyYear as Map<String, dynamic>)),
      classes: (l$classes as List<dynamic>)
          .map((e) => Subscription$watchAllServices$services$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment$Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Subscription$watchAllServices$services$fromStudyYear? fromStudyYear;

  final Subscription$watchAllServices$services$toStudyYear? toStudyYear;

  final List<Subscription$watchAllServices$services$classes> classes;

  final List<Fragment$Group> groups;

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
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$fromStudyYear = fromStudyYear;
    final l$toStudyYear = toStudyYear;
    final l$classes = classes;
    final l$groups = groups;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$fromStudyYear,
      l$toStudyYear,
      Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllServices$services) ||
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
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllServices$services
    on Subscription$watchAllServices$services {
  CopyWith$Subscription$watchAllServices$services<
          Subscription$watchAllServices$services>
      get copyWith => CopyWith$Subscription$watchAllServices$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllServices$services<TRes> {
  factory CopyWith$Subscription$watchAllServices$services(
    Subscription$watchAllServices$services instance,
    TRes Function(Subscription$watchAllServices$services) then,
  ) = _CopyWithImpl$Subscription$watchAllServices$services;

  factory CopyWith$Subscription$watchAllServices$services.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllServices$services;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Subscription$watchAllServices$services$fromStudyYear? fromStudyYear,
    Subscription$watchAllServices$services$toStudyYear? toStudyYear,
    List<Subscription$watchAllServices$services$classes>? classes,
    List<Fragment$Group>? groups,
  });
  CopyWith$Subscription$watchAllServices$services$fromStudyYear<TRes>
      get fromStudyYear;
  CopyWith$Subscription$watchAllServices$services$toStudyYear<TRes>
      get toStudyYear;
  TRes classes(
      Iterable<Subscription$watchAllServices$services$classes> Function(
              Iterable<
                  CopyWith$Subscription$watchAllServices$services$classes<
                      Subscription$watchAllServices$services$classes>>)
          _fn);
  TRes groups(
      Iterable<Fragment$Group> Function(
              Iterable<CopyWith$Fragment$Group<Fragment$Group>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllServices$services<TRes>
    implements CopyWith$Subscription$watchAllServices$services<TRes> {
  _CopyWithImpl$Subscription$watchAllServices$services(
    this._instance,
    this._then,
  );

  final Subscription$watchAllServices$services _instance;

  final TRes Function(Subscription$watchAllServices$services) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
  }) =>
      _then(Subscription$watchAllServices$services(
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
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Subscription$watchAllServices$services$fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Subscription$watchAllServices$services$toStudyYear?),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes as List<Subscription$watchAllServices$services$classes>),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Fragment$Group>),
      ));
  CopyWith$Subscription$watchAllServices$services$fromStudyYear<TRes>
      get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Subscription$watchAllServices$services$fromStudyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$watchAllServices$services$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Subscription$watchAllServices$services$toStudyYear<TRes>
      get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Subscription$watchAllServices$services$toStudyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$watchAllServices$services$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }

  TRes classes(
          Iterable<Subscription$watchAllServices$services$classes> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllServices$services$classes<
                          Subscription$watchAllServices$services$classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map(
              (e) => CopyWith$Subscription$watchAllServices$services$classes(
                    e,
                    (i) => i,
                  ))).toList());
  TRes groups(
          Iterable<Fragment$Group> Function(
                  Iterable<CopyWith$Fragment$Group<Fragment$Group>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map((e) => CopyWith$Fragment$Group(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllServices$services<TRes>
    implements CopyWith$Subscription$watchAllServices$services<TRes> {
  _CopyWithStubImpl$Subscription$watchAllServices$services(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Subscription$watchAllServices$services$fromStudyYear? fromStudyYear,
    Subscription$watchAllServices$services$toStudyYear? toStudyYear,
    List<Subscription$watchAllServices$services$classes>? classes,
    List<Fragment$Group>? groups,
  }) =>
      _res;
  CopyWith$Subscription$watchAllServices$services$fromStudyYear<TRes>
      get fromStudyYear =>
          CopyWith$Subscription$watchAllServices$services$fromStudyYear.stub(
              _res);
  CopyWith$Subscription$watchAllServices$services$toStudyYear<TRes>
      get toStudyYear =>
          CopyWith$Subscription$watchAllServices$services$toStudyYear.stub(
              _res);
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Subscription$watchAllServices$services$fromStudyYear {
  Subscription$watchAllServices$services$fromStudyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$watchAllServices$services$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllServices$services$fromStudyYear(
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
    if (!(other is Subscription$watchAllServices$services$fromStudyYear) ||
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

extension UtilityExtension$Subscription$watchAllServices$services$fromStudyYear
    on Subscription$watchAllServices$services$fromStudyYear {
  CopyWith$Subscription$watchAllServices$services$fromStudyYear<
          Subscription$watchAllServices$services$fromStudyYear>
      get copyWith =>
          CopyWith$Subscription$watchAllServices$services$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllServices$services$fromStudyYear<
    TRes> {
  factory CopyWith$Subscription$watchAllServices$services$fromStudyYear(
    Subscription$watchAllServices$services$fromStudyYear instance,
    TRes Function(Subscription$watchAllServices$services$fromStudyYear) then,
  ) = _CopyWithImpl$Subscription$watchAllServices$services$fromStudyYear;

  factory CopyWith$Subscription$watchAllServices$services$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchAllServices$services$fromStudyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllServices$services$fromStudyYear<TRes>
    implements
        CopyWith$Subscription$watchAllServices$services$fromStudyYear<TRes> {
  _CopyWithImpl$Subscription$watchAllServices$services$fromStudyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchAllServices$services$fromStudyYear _instance;

  final TRes Function(Subscription$watchAllServices$services$fromStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllServices$services$fromStudyYear(
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

class _CopyWithStubImpl$Subscription$watchAllServices$services$fromStudyYear<
        TRes>
    implements
        CopyWith$Subscription$watchAllServices$services$fromStudyYear<TRes> {
  _CopyWithStubImpl$Subscription$watchAllServices$services$fromStudyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchAllServices$services$toStudyYear {
  Subscription$watchAllServices$services$toStudyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$watchAllServices$services$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllServices$services$toStudyYear(
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
    if (!(other is Subscription$watchAllServices$services$toStudyYear) ||
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

extension UtilityExtension$Subscription$watchAllServices$services$toStudyYear
    on Subscription$watchAllServices$services$toStudyYear {
  CopyWith$Subscription$watchAllServices$services$toStudyYear<
          Subscription$watchAllServices$services$toStudyYear>
      get copyWith =>
          CopyWith$Subscription$watchAllServices$services$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllServices$services$toStudyYear<
    TRes> {
  factory CopyWith$Subscription$watchAllServices$services$toStudyYear(
    Subscription$watchAllServices$services$toStudyYear instance,
    TRes Function(Subscription$watchAllServices$services$toStudyYear) then,
  ) = _CopyWithImpl$Subscription$watchAllServices$services$toStudyYear;

  factory CopyWith$Subscription$watchAllServices$services$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchAllServices$services$toStudyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllServices$services$toStudyYear<TRes>
    implements
        CopyWith$Subscription$watchAllServices$services$toStudyYear<TRes> {
  _CopyWithImpl$Subscription$watchAllServices$services$toStudyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchAllServices$services$toStudyYear _instance;

  final TRes Function(Subscription$watchAllServices$services$toStudyYear) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllServices$services$toStudyYear(
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

class _CopyWithStubImpl$Subscription$watchAllServices$services$toStudyYear<TRes>
    implements
        CopyWith$Subscription$watchAllServices$services$toStudyYear<TRes> {
  _CopyWithStubImpl$Subscription$watchAllServices$services$toStudyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchAllServices$services$classes
    implements Fragment$Class, Fragment$ClassNoPhoto {
  Subscription$watchAllServices$services$classes({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    required this.studyYear,
  });

  factory Subscription$watchAllServices$services$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$studyYear = json['studyYear'];
    return Subscription$watchAllServices$services$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      studyYear:
          Subscription$watchAllServices$services$classes$studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Subscription$watchAllServices$services$classes$studyYear studyYear;

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
    final l$studyYear = studyYear;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$studyYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllServices$services$classes) ||
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllServices$services$classes
    on Subscription$watchAllServices$services$classes {
  CopyWith$Subscription$watchAllServices$services$classes<
          Subscription$watchAllServices$services$classes>
      get copyWith => CopyWith$Subscription$watchAllServices$services$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllServices$services$classes<TRes> {
  factory CopyWith$Subscription$watchAllServices$services$classes(
    Subscription$watchAllServices$services$classes instance,
    TRes Function(Subscription$watchAllServices$services$classes) then,
  ) = _CopyWithImpl$Subscription$watchAllServices$services$classes;

  factory CopyWith$Subscription$watchAllServices$services$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchAllServices$services$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Subscription$watchAllServices$services$classes$studyYear? studyYear,
  });
  CopyWith$Subscription$watchAllServices$services$classes$studyYear<TRes>
      get studyYear;
}

class _CopyWithImpl$Subscription$watchAllServices$services$classes<TRes>
    implements CopyWith$Subscription$watchAllServices$services$classes<TRes> {
  _CopyWithImpl$Subscription$watchAllServices$services$classes(
    this._instance,
    this._then,
  );

  final Subscription$watchAllServices$services$classes _instance;

  final TRes Function(Subscription$watchAllServices$services$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYear = _undefined,
  }) =>
      _then(Subscription$watchAllServices$services$classes(
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
        studyYear: studyYear == _undefined || studyYear == null
            ? _instance.studyYear
            : (studyYear
                as Subscription$watchAllServices$services$classes$studyYear),
      ));
  CopyWith$Subscription$watchAllServices$services$classes$studyYear<TRes>
      get studyYear {
    final local$studyYear = _instance.studyYear;
    return CopyWith$Subscription$watchAllServices$services$classes$studyYear(
        local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl$Subscription$watchAllServices$services$classes<TRes>
    implements CopyWith$Subscription$watchAllServices$services$classes<TRes> {
  _CopyWithStubImpl$Subscription$watchAllServices$services$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Subscription$watchAllServices$services$classes$studyYear? studyYear,
  }) =>
      _res;
  CopyWith$Subscription$watchAllServices$services$classes$studyYear<TRes>
      get studyYear =>
          CopyWith$Subscription$watchAllServices$services$classes$studyYear
              .stub(_res);
}

class Subscription$watchAllServices$services$classes$studyYear {
  Subscription$watchAllServices$services$classes$studyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$watchAllServices$services$classes$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllServices$services$classes$studyYear(
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
    if (!(other is Subscription$watchAllServices$services$classes$studyYear) ||
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

extension UtilityExtension$Subscription$watchAllServices$services$classes$studyYear
    on Subscription$watchAllServices$services$classes$studyYear {
  CopyWith$Subscription$watchAllServices$services$classes$studyYear<
          Subscription$watchAllServices$services$classes$studyYear>
      get copyWith =>
          CopyWith$Subscription$watchAllServices$services$classes$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllServices$services$classes$studyYear<
    TRes> {
  factory CopyWith$Subscription$watchAllServices$services$classes$studyYear(
    Subscription$watchAllServices$services$classes$studyYear instance,
    TRes Function(Subscription$watchAllServices$services$classes$studyYear)
        then,
  ) = _CopyWithImpl$Subscription$watchAllServices$services$classes$studyYear;

  factory CopyWith$Subscription$watchAllServices$services$classes$studyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchAllServices$services$classes$studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllServices$services$classes$studyYear<
        TRes>
    implements
        CopyWith$Subscription$watchAllServices$services$classes$studyYear<
            TRes> {
  _CopyWithImpl$Subscription$watchAllServices$services$classes$studyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchAllServices$services$classes$studyYear _instance;

  final TRes Function(Subscription$watchAllServices$services$classes$studyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllServices$services$classes$studyYear(
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

class _CopyWithStubImpl$Subscription$watchAllServices$services$classes$studyYear<
        TRes>
    implements
        CopyWith$Subscription$watchAllServices$services$classes$studyYear<
            TRes> {
  _CopyWithStubImpl$Subscription$watchAllServices$services$classes$studyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$watchService {
  factory Variables$Subscription$watchService({required UuidValue id}) =>
      Variables$Subscription$watchService._({
        r'id': id,
      });

  Variables$Subscription$watchService._(this._$data);

  factory Variables$Subscription$watchService.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchService._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchService<
          Variables$Subscription$watchService>
      get copyWith => CopyWith$Variables$Subscription$watchService(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchService) ||
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

abstract class CopyWith$Variables$Subscription$watchService<TRes> {
  factory CopyWith$Variables$Subscription$watchService(
    Variables$Subscription$watchService instance,
    TRes Function(Variables$Subscription$watchService) then,
  ) = _CopyWithImpl$Variables$Subscription$watchService;

  factory CopyWith$Variables$Subscription$watchService.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchService;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchService<TRes>
    implements CopyWith$Variables$Subscription$watchService<TRes> {
  _CopyWithImpl$Variables$Subscription$watchService(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchService _instance;

  final TRes Function(Variables$Subscription$watchService) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchService._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchService<TRes>
    implements CopyWith$Variables$Subscription$watchService<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchService(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchService {
  Subscription$watchService({this.servicesByPk});

  factory Subscription$watchService.fromJson(Map<String, dynamic> json) {
    final l$servicesByPk = json['servicesByPk'];
    return Subscription$watchService(
        servicesByPk: l$servicesByPk == null
            ? null
            : Subscription$watchService$servicesByPk.fromJson(
                (l$servicesByPk as Map<String, dynamic>)));
  }

  final Subscription$watchService$servicesByPk? servicesByPk;

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
    if (!(other is Subscription$watchService) ||
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

extension UtilityExtension$Subscription$watchService
    on Subscription$watchService {
  CopyWith$Subscription$watchService<Subscription$watchService> get copyWith =>
      CopyWith$Subscription$watchService(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchService<TRes> {
  factory CopyWith$Subscription$watchService(
    Subscription$watchService instance,
    TRes Function(Subscription$watchService) then,
  ) = _CopyWithImpl$Subscription$watchService;

  factory CopyWith$Subscription$watchService.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchService;

  TRes call({Subscription$watchService$servicesByPk? servicesByPk});
  CopyWith$Subscription$watchService$servicesByPk<TRes> get servicesByPk;
}

class _CopyWithImpl$Subscription$watchService<TRes>
    implements CopyWith$Subscription$watchService<TRes> {
  _CopyWithImpl$Subscription$watchService(
    this._instance,
    this._then,
  );

  final Subscription$watchService _instance;

  final TRes Function(Subscription$watchService) _then;

  static const _undefined = {};

  TRes call({Object? servicesByPk = _undefined}) => _then(
      Subscription$watchService(
          servicesByPk: servicesByPk == _undefined
              ? _instance.servicesByPk
              : (servicesByPk as Subscription$watchService$servicesByPk?)));
  CopyWith$Subscription$watchService$servicesByPk<TRes> get servicesByPk {
    final local$servicesByPk = _instance.servicesByPk;
    return local$servicesByPk == null
        ? CopyWith$Subscription$watchService$servicesByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchService$servicesByPk(
            local$servicesByPk, (e) => call(servicesByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchService<TRes>
    implements CopyWith$Subscription$watchService<TRes> {
  _CopyWithStubImpl$Subscription$watchService(this._res);

  TRes _res;

  call({Subscription$watchService$servicesByPk? servicesByPk}) => _res;
  CopyWith$Subscription$watchService$servicesByPk<TRes> get servicesByPk =>
      CopyWith$Subscription$watchService$servicesByPk.stub(_res);
}

const documentNodeSubscriptionwatchService = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchService'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'Service'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
            name: NameNode(value: 'fromStudyYear'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'nextServiceObject'),
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
            name: NameNode(value: 'toStudyYear'),
            alias: null,
            arguments: [],
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
      )
    ]),
  ),
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Subscription$watchService$servicesByPk
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Subscription$watchService$servicesByPk({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.lastEdit,
    required this.adminUsers,
    this.fromStudyYear,
    this.nextServiceObject,
    this.toStudyYear,
  });

  factory Subscription$watchService$servicesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$lastEdit = json['lastEdit'];
    final l$adminUsers = json['adminUsers'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$nextServiceObject = json['nextServiceObject'];
    final l$toStudyYear = json['toStudyYear'];
    return Subscription$watchService$servicesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      lastEdit: (l$lastEdit as Json?),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map((e) =>
              Subscription$watchService$servicesByPk$adminUsers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Subscription$watchService$servicesByPk$fromStudyYear.fromJson(
              (l$fromStudyYear as Map<String, dynamic>)),
      nextServiceObject: l$nextServiceObject == null
          ? null
          : Fragment$Service.fromJson(
              (l$nextServiceObject as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Subscription$watchService$servicesByPk$toStudyYear.fromJson(
              (l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Json? lastEdit;

  final List<Subscription$watchService$servicesByPk$adminUsers> adminUsers;

  final Subscription$watchService$servicesByPk$fromStudyYear? fromStudyYear;

  final Fragment$Service? nextServiceObject;

  final Subscription$watchService$servicesByPk$toStudyYear? toStudyYear;

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
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$nextServiceObject = nextServiceObject;
    _resultData['nextServiceObject'] = l$nextServiceObject?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$lastEdit = lastEdit;
    final l$adminUsers = adminUsers;
    final l$fromStudyYear = fromStudyYear;
    final l$nextServiceObject = nextServiceObject;
    final l$toStudyYear = toStudyYear;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$lastEdit,
      Object.hashAll(l$adminUsers.map((v) => v)),
      l$fromStudyYear,
      l$nextServiceObject,
      l$toStudyYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchService$servicesByPk) ||
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
    final l$fromStudyYear = fromStudyYear;
    final lOther$fromStudyYear = other.fromStudyYear;
    if (l$fromStudyYear != lOther$fromStudyYear) {
      return false;
    }
    final l$nextServiceObject = nextServiceObject;
    final lOther$nextServiceObject = other.nextServiceObject;
    if (l$nextServiceObject != lOther$nextServiceObject) {
      return false;
    }
    final l$toStudyYear = toStudyYear;
    final lOther$toStudyYear = other.toStudyYear;
    if (l$toStudyYear != lOther$toStudyYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchService$servicesByPk
    on Subscription$watchService$servicesByPk {
  CopyWith$Subscription$watchService$servicesByPk<
          Subscription$watchService$servicesByPk>
      get copyWith => CopyWith$Subscription$watchService$servicesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchService$servicesByPk<TRes> {
  factory CopyWith$Subscription$watchService$servicesByPk(
    Subscription$watchService$servicesByPk instance,
    TRes Function(Subscription$watchService$servicesByPk) then,
  ) = _CopyWithImpl$Subscription$watchService$servicesByPk;

  factory CopyWith$Subscription$watchService$servicesByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchService$servicesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastEdit,
    List<Subscription$watchService$servicesByPk$adminUsers>? adminUsers,
    Subscription$watchService$servicesByPk$fromStudyYear? fromStudyYear,
    Fragment$Service? nextServiceObject,
    Subscription$watchService$servicesByPk$toStudyYear? toStudyYear,
  });
  TRes adminUsers(
      Iterable<Subscription$watchService$servicesByPk$adminUsers> Function(
              Iterable<
                  CopyWith$Subscription$watchService$servicesByPk$adminUsers<
                      Subscription$watchService$servicesByPk$adminUsers>>)
          _fn);
  CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<TRes>
      get fromStudyYear;
  CopyWith$Fragment$Service<TRes> get nextServiceObject;
  CopyWith$Subscription$watchService$servicesByPk$toStudyYear<TRes>
      get toStudyYear;
}

class _CopyWithImpl$Subscription$watchService$servicesByPk<TRes>
    implements CopyWith$Subscription$watchService$servicesByPk<TRes> {
  _CopyWithImpl$Subscription$watchService$servicesByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchService$servicesByPk _instance;

  final TRes Function(Subscription$watchService$servicesByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? lastEdit = _undefined,
    Object? adminUsers = _undefined,
    Object? fromStudyYear = _undefined,
    Object? nextServiceObject = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Subscription$watchService$servicesByPk(
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
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        adminUsers: adminUsers == _undefined || adminUsers == null
            ? _instance.adminUsers
            : (adminUsers
                as List<Subscription$watchService$servicesByPk$adminUsers>),
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Subscription$watchService$servicesByPk$fromStudyYear?),
        nextServiceObject: nextServiceObject == _undefined
            ? _instance.nextServiceObject
            : (nextServiceObject as Fragment$Service?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Subscription$watchService$servicesByPk$toStudyYear?),
      ));
  TRes adminUsers(
          Iterable<Subscription$watchService$servicesByPk$adminUsers> Function(
                  Iterable<
                      CopyWith$Subscription$watchService$servicesByPk$adminUsers<
                          Subscription$watchService$servicesByPk$adminUsers>>)
              _fn) =>
      call(
          adminUsers: _fn(_instance.adminUsers.map(
              (e) => CopyWith$Subscription$watchService$servicesByPk$adminUsers(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<TRes>
      get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Subscription$watchService$servicesByPk$fromStudyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$watchService$servicesByPk$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Fragment$Service<TRes> get nextServiceObject {
    final local$nextServiceObject = _instance.nextServiceObject;
    return local$nextServiceObject == null
        ? CopyWith$Fragment$Service.stub(_then(_instance))
        : CopyWith$Fragment$Service(
            local$nextServiceObject, (e) => call(nextServiceObject: e));
  }

  CopyWith$Subscription$watchService$servicesByPk$toStudyYear<TRes>
      get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Subscription$watchService$servicesByPk$toStudyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$watchService$servicesByPk$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl$Subscription$watchService$servicesByPk<TRes>
    implements CopyWith$Subscription$watchService$servicesByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchService$servicesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastEdit,
    List<Subscription$watchService$servicesByPk$adminUsers>? adminUsers,
    Subscription$watchService$servicesByPk$fromStudyYear? fromStudyYear,
    Fragment$Service? nextServiceObject,
    Subscription$watchService$servicesByPk$toStudyYear? toStudyYear,
  }) =>
      _res;
  adminUsers(_fn) => _res;
  CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<TRes>
      get fromStudyYear =>
          CopyWith$Subscription$watchService$servicesByPk$fromStudyYear.stub(
              _res);
  CopyWith$Fragment$Service<TRes> get nextServiceObject =>
      CopyWith$Fragment$Service.stub(_res);
  CopyWith$Subscription$watchService$servicesByPk$toStudyYear<TRes>
      get toStudyYear =>
          CopyWith$Subscription$watchService$servicesByPk$toStudyYear.stub(
              _res);
}

class Subscription$watchService$servicesByPk$adminUsers {
  Subscription$watchService$servicesByPk$adminUsers({
    required this.user,
    required this.$__typename,
  });

  factory Subscription$watchService$servicesByPk$adminUsers.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$watchService$servicesByPk$adminUsers(
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User user;

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
    if (!(other is Subscription$watchService$servicesByPk$adminUsers) ||
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

extension UtilityExtension$Subscription$watchService$servicesByPk$adminUsers
    on Subscription$watchService$servicesByPk$adminUsers {
  CopyWith$Subscription$watchService$servicesByPk$adminUsers<
          Subscription$watchService$servicesByPk$adminUsers>
      get copyWith =>
          CopyWith$Subscription$watchService$servicesByPk$adminUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchService$servicesByPk$adminUsers<
    TRes> {
  factory CopyWith$Subscription$watchService$servicesByPk$adminUsers(
    Subscription$watchService$servicesByPk$adminUsers instance,
    TRes Function(Subscription$watchService$servicesByPk$adminUsers) then,
  ) = _CopyWithImpl$Subscription$watchService$servicesByPk$adminUsers;

  factory CopyWith$Subscription$watchService$servicesByPk$adminUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchService$servicesByPk$adminUsers;

  TRes call({
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Subscription$watchService$servicesByPk$adminUsers<TRes>
    implements
        CopyWith$Subscription$watchService$servicesByPk$adminUsers<TRes> {
  _CopyWithImpl$Subscription$watchService$servicesByPk$adminUsers(
    this._instance,
    this._then,
  );

  final Subscription$watchService$servicesByPk$adminUsers _instance;

  final TRes Function(Subscription$watchService$servicesByPk$adminUsers) _then;

  static const _undefined = {};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchService$servicesByPk$adminUsers(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$watchService$servicesByPk$adminUsers<TRes>
    implements
        CopyWith$Subscription$watchService$servicesByPk$adminUsers<TRes> {
  _CopyWithStubImpl$Subscription$watchService$servicesByPk$adminUsers(
      this._res);

  TRes _res;

  call({
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}

class Subscription$watchService$servicesByPk$fromStudyYear {
  Subscription$watchService$servicesByPk$fromStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchService$servicesByPk$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchService$servicesByPk$fromStudyYear(
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
    if (!(other is Subscription$watchService$servicesByPk$fromStudyYear) ||
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

extension UtilityExtension$Subscription$watchService$servicesByPk$fromStudyYear
    on Subscription$watchService$servicesByPk$fromStudyYear {
  CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<
          Subscription$watchService$servicesByPk$fromStudyYear>
      get copyWith =>
          CopyWith$Subscription$watchService$servicesByPk$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<
    TRes> {
  factory CopyWith$Subscription$watchService$servicesByPk$fromStudyYear(
    Subscription$watchService$servicesByPk$fromStudyYear instance,
    TRes Function(Subscription$watchService$servicesByPk$fromStudyYear) then,
  ) = _CopyWithImpl$Subscription$watchService$servicesByPk$fromStudyYear;

  factory CopyWith$Subscription$watchService$servicesByPk$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchService$servicesByPk$fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchService$servicesByPk$fromStudyYear<TRes>
    implements
        CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<TRes> {
  _CopyWithImpl$Subscription$watchService$servicesByPk$fromStudyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchService$servicesByPk$fromStudyYear _instance;

  final TRes Function(Subscription$watchService$servicesByPk$fromStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchService$servicesByPk$fromStudyYear(
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

class _CopyWithStubImpl$Subscription$watchService$servicesByPk$fromStudyYear<
        TRes>
    implements
        CopyWith$Subscription$watchService$servicesByPk$fromStudyYear<TRes> {
  _CopyWithStubImpl$Subscription$watchService$servicesByPk$fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchService$servicesByPk$toStudyYear {
  Subscription$watchService$servicesByPk$toStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchService$servicesByPk$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchService$servicesByPk$toStudyYear(
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
    if (!(other is Subscription$watchService$servicesByPk$toStudyYear) ||
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

extension UtilityExtension$Subscription$watchService$servicesByPk$toStudyYear
    on Subscription$watchService$servicesByPk$toStudyYear {
  CopyWith$Subscription$watchService$servicesByPk$toStudyYear<
          Subscription$watchService$servicesByPk$toStudyYear>
      get copyWith =>
          CopyWith$Subscription$watchService$servicesByPk$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchService$servicesByPk$toStudyYear<
    TRes> {
  factory CopyWith$Subscription$watchService$servicesByPk$toStudyYear(
    Subscription$watchService$servicesByPk$toStudyYear instance,
    TRes Function(Subscription$watchService$servicesByPk$toStudyYear) then,
  ) = _CopyWithImpl$Subscription$watchService$servicesByPk$toStudyYear;

  factory CopyWith$Subscription$watchService$servicesByPk$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchService$servicesByPk$toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchService$servicesByPk$toStudyYear<TRes>
    implements
        CopyWith$Subscription$watchService$servicesByPk$toStudyYear<TRes> {
  _CopyWithImpl$Subscription$watchService$servicesByPk$toStudyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchService$servicesByPk$toStudyYear _instance;

  final TRes Function(Subscription$watchService$servicesByPk$toStudyYear) _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchService$servicesByPk$toStudyYear(
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

class _CopyWithStubImpl$Subscription$watchService$servicesByPk$toStudyYear<TRes>
    implements
        CopyWith$Subscription$watchService$servicesByPk$toStudyYear<TRes> {
  _CopyWithStubImpl$Subscription$watchService$servicesByPk$toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
