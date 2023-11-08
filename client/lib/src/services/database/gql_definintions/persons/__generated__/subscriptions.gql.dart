import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllPersons {
  factory Variables_Subscription_watchAllPersons({
    List<Input_PersonsBoolExp>? where,
    List<Input_PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllPersons._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllPersons._(this._$data);

  factory Variables_Subscription_watchAllPersons.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input_PersonsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input_PersonsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllPersons._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsBoolExp>? get where =>
      (_$data['where'] as List<Input_PersonsBoolExp>?);

  List<Input_PersonsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_PersonsOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchAllPersons<
          Variables_Subscription_watchAllPersons>
      get copyWith => CopyWith_Variables_Subscription_watchAllPersons(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllPersons) ||
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
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchAllPersons<TRes> {
  factory CopyWith_Variables_Subscription_watchAllPersons(
    Variables_Subscription_watchAllPersons instance,
    TRes Function(Variables_Subscription_watchAllPersons) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllPersons;

  factory CopyWith_Variables_Subscription_watchAllPersons.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllPersons;

  TRes call({
    List<Input_PersonsBoolExp>? where,
    List<Input_PersonsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllPersons<TRes>
    implements CopyWith_Variables_Subscription_watchAllPersons<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllPersons(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllPersons _instance;

  final TRes Function(Variables_Subscription_watchAllPersons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllPersons._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_PersonsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_PersonsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllPersons<TRes>
    implements CopyWith_Variables_Subscription_watchAllPersons<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllPersons(this._res);

  TRes _res;

  call({
    List<Input_PersonsBoolExp>? where,
    List<Input_PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllPersons {
  Subscription_watchAllPersons({required this.persons});

  factory Subscription_watchAllPersons.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    return Subscription_watchAllPersons(
        persons: (l$persons as List<dynamic>)
            .map((e) => Fragment_Person.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_Person> persons;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$persons = persons;
    return Object.hashAll([Object.hashAll(l$persons.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllPersons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons.length != lOther$persons.length) {
      return false;
    }
    for (int i = 0; i < l$persons.length; i++) {
      final l$persons$entry = l$persons[i];
      final lOther$persons$entry = lOther$persons[i];
      if (l$persons$entry != lOther$persons$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllPersons
    on Subscription_watchAllPersons {
  CopyWith_Subscription_watchAllPersons<Subscription_watchAllPersons>
      get copyWith => CopyWith_Subscription_watchAllPersons(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllPersons<TRes> {
  factory CopyWith_Subscription_watchAllPersons(
    Subscription_watchAllPersons instance,
    TRes Function(Subscription_watchAllPersons) then,
  ) = _CopyWithImpl_Subscription_watchAllPersons;

  factory CopyWith_Subscription_watchAllPersons.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllPersons;

  TRes call({List<Fragment_Person>? persons});
  TRes persons(
      Iterable<Fragment_Person> Function(
              Iterable<CopyWith_Fragment_Person<Fragment_Person>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllPersons<TRes>
    implements CopyWith_Subscription_watchAllPersons<TRes> {
  _CopyWithImpl_Subscription_watchAllPersons(
    this._instance,
    this._then,
  );

  final Subscription_watchAllPersons _instance;

  final TRes Function(Subscription_watchAllPersons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? persons = _undefined}) =>
      _then(Subscription_watchAllPersons(
          persons: persons == _undefined || persons == null
              ? _instance.persons
              : (persons as List<Fragment_Person>)));

  TRes persons(
          Iterable<Fragment_Person> Function(
                  Iterable<CopyWith_Fragment_Person<Fragment_Person>>)
              _fn) =>
      call(
          persons: _fn(_instance.persons.map((e) => CopyWith_Fragment_Person(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllPersons<TRes>
    implements CopyWith_Subscription_watchAllPersons<TRes> {
  _CopyWithStubImpl_Subscription_watchAllPersons(this._res);

  TRes _res;

  call({List<Fragment_Person>? persons}) => _res;

  persons(_fn) => _res;
}

const documentNodeSubscriptionwatchAllPersons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllPersons'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsBoolExp'),
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
            name: NameNode(value: 'PersonsOrderBy'),
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
        name: NameNode(value: 'persons'),
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
            name: NameNode(value: 'Person'),
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
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Variables_Subscription_watchPerson {
  factory Variables_Subscription_watchPerson({
    required UuidValue id,
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  }) =>
      Variables_Subscription_watchPerson._({
        r'id': id,
        if (classesLimit != null) r'classesLimit': classesLimit,
        if (groupsLimit != null) r'groupsLimit': groupsLimit,
        if (servicesLimit != null) r'servicesLimit': servicesLimit,
      });

  Variables_Subscription_watchPerson._(this._$data);

  factory Variables_Subscription_watchPerson.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    if (data.containsKey('classesLimit')) {
      final l$classesLimit = data['classesLimit'];
      result$data['classesLimit'] = (l$classesLimit as int?);
    }
    if (data.containsKey('groupsLimit')) {
      final l$groupsLimit = data['groupsLimit'];
      result$data['groupsLimit'] = (l$groupsLimit as int?);
    }
    if (data.containsKey('servicesLimit')) {
      final l$servicesLimit = data['servicesLimit'];
      result$data['servicesLimit'] = (l$servicesLimit as int?);
    }
    return Variables_Subscription_watchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  int? get classesLimit => (_$data['classesLimit'] as int?);

  int? get groupsLimit => (_$data['groupsLimit'] as int?);

  int? get servicesLimit => (_$data['servicesLimit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    if (_$data.containsKey('classesLimit')) {
      final l$classesLimit = classesLimit;
      result$data['classesLimit'] = l$classesLimit;
    }
    if (_$data.containsKey('groupsLimit')) {
      final l$groupsLimit = groupsLimit;
      result$data['groupsLimit'] = l$groupsLimit;
    }
    if (_$data.containsKey('servicesLimit')) {
      final l$servicesLimit = servicesLimit;
      result$data['servicesLimit'] = l$servicesLimit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchPerson<
          Variables_Subscription_watchPerson>
      get copyWith => CopyWith_Variables_Subscription_watchPerson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$classesLimit = classesLimit;
    final lOther$classesLimit = other.classesLimit;
    if (_$data.containsKey('classesLimit') !=
        other._$data.containsKey('classesLimit')) {
      return false;
    }
    if (l$classesLimit != lOther$classesLimit) {
      return false;
    }
    final l$groupsLimit = groupsLimit;
    final lOther$groupsLimit = other.groupsLimit;
    if (_$data.containsKey('groupsLimit') !=
        other._$data.containsKey('groupsLimit')) {
      return false;
    }
    if (l$groupsLimit != lOther$groupsLimit) {
      return false;
    }
    final l$servicesLimit = servicesLimit;
    final lOther$servicesLimit = other.servicesLimit;
    if (_$data.containsKey('servicesLimit') !=
        other._$data.containsKey('servicesLimit')) {
      return false;
    }
    if (l$servicesLimit != lOther$servicesLimit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$classesLimit = classesLimit;
    final l$groupsLimit = groupsLimit;
    final l$servicesLimit = servicesLimit;
    return Object.hashAll([
      l$id,
      _$data.containsKey('classesLimit') ? l$classesLimit : const {},
      _$data.containsKey('groupsLimit') ? l$groupsLimit : const {},
      _$data.containsKey('servicesLimit') ? l$servicesLimit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchPerson<TRes> {
  factory CopyWith_Variables_Subscription_watchPerson(
    Variables_Subscription_watchPerson instance,
    TRes Function(Variables_Subscription_watchPerson) then,
  ) = _CopyWithImpl_Variables_Subscription_watchPerson;

  factory CopyWith_Variables_Subscription_watchPerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchPerson;

  TRes call({
    UuidValue? id,
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchPerson<TRes>
    implements CopyWith_Variables_Subscription_watchPerson<TRes> {
  _CopyWithImpl_Variables_Subscription_watchPerson(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchPerson _instance;

  final TRes Function(Variables_Subscription_watchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? classesLimit = _undefined,
    Object? groupsLimit = _undefined,
    Object? servicesLimit = _undefined,
  }) =>
      _then(Variables_Subscription_watchPerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
        if (classesLimit != _undefined) 'classesLimit': (classesLimit as int?),
        if (groupsLimit != _undefined) 'groupsLimit': (groupsLimit as int?),
        if (servicesLimit != _undefined)
          'servicesLimit': (servicesLimit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchPerson<TRes>
    implements CopyWith_Variables_Subscription_watchPerson<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchPerson(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  }) =>
      _res;
}

class Subscription_watchPerson {
  Subscription_watchPerson({this.personsByPk});

  factory Subscription_watchPerson.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    return Subscription_watchPerson(
        personsByPk: l$personsByPk == null
            ? null
            : Subscription_watchPerson_personsByPk.fromJson(
                (l$personsByPk as Map<String, dynamic>)));
  }

  final Subscription_watchPerson_personsByPk? personsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personsByPk = personsByPk;
    _resultData['personsByPk'] = l$personsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personsByPk = personsByPk;
    return Object.hashAll([l$personsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsByPk = personsByPk;
    final lOther$personsByPk = other.personsByPk;
    if (l$personsByPk != lOther$personsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson
    on Subscription_watchPerson {
  CopyWith_Subscription_watchPerson<Subscription_watchPerson> get copyWith =>
      CopyWith_Subscription_watchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchPerson<TRes> {
  factory CopyWith_Subscription_watchPerson(
    Subscription_watchPerson instance,
    TRes Function(Subscription_watchPerson) then,
  ) = _CopyWithImpl_Subscription_watchPerson;

  factory CopyWith_Subscription_watchPerson.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson;

  TRes call({Subscription_watchPerson_personsByPk? personsByPk});
  CopyWith_Subscription_watchPerson_personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl_Subscription_watchPerson<TRes>
    implements CopyWith_Subscription_watchPerson<TRes> {
  _CopyWithImpl_Subscription_watchPerson(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson _instance;

  final TRes Function(Subscription_watchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personsByPk = _undefined}) =>
      _then(Subscription_watchPerson(
          personsByPk: personsByPk == _undefined
              ? _instance.personsByPk
              : (personsByPk as Subscription_watchPerson_personsByPk?)));

  CopyWith_Subscription_watchPerson_personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith_Subscription_watchPerson_personsByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson<TRes>
    implements CopyWith_Subscription_watchPerson<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson(this._res);

  TRes _res;

  call({Subscription_watchPerson_personsByPk? personsByPk}) => _res;

  CopyWith_Subscription_watchPerson_personsByPk<TRes> get personsByPk =>
      CopyWith_Subscription_watchPerson_personsByPk.stub(_res);
}

const documentNodeSubscriptionwatchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classesLimit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupsLimit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'servicesLimit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'personsByPk'),
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
            name: NameNode(value: 'Person'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthdate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Area'),
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
            name: NameNode(value: 'classes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'classesLimit')),
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
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Class'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'attendanceHistoryAggregate'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(name: NameNode(value: 'id')),
                          )
                        ]),
                      )
                    ]),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'aggregate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'max'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'time'),
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
            name: NameNode(value: 'church'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'college'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'father'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'church'),
                alias: null,
                arguments: [],
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'groupsLimit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'group'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'group'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Group'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value:
                                    VariableNode(name: NameNode(value: 'id')),
                              )
                            ]),
                          )
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'max'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'time'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'isServant'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isShammas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isStudent'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'job'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'jobDescription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastCall'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastConfession'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastKodas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastVisit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mainPhone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'notes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'otherPhones'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'personType'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'qualification'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'school'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: 'services'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'servicesLimit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'service'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ServiceWithStudyYears'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value:
                                    VariableNode(name: NameNode(value: 'id')),
                              )
                            ]),
                          )
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'max'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'time'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'shammasLevel'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'color'),
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
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Street'),
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
            name: NameNode(value: 'hobbies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'hobby'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hobby'),
                alias: null,
                arguments: [],
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
            name: NameNode(value: 'tags'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'tag'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tag'),
                alias: null,
                arguments: [],
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
            name: NameNode(value: 'uid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
                name: NameNode(value: 'email'),
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
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
  fragmentDefinitionServiceWithStudyYears,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Subscription_watchPerson_personsByPk
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Subscription_watchPerson_personsByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.address,
    this.birthdate,
    this.areas,
    this.classes,
    this.church,
    this.college,
    this.family,
    this.father,
    required this.gender,
    this.geolocation,
    required this.groups,
    required this.isServant,
    required this.isShammas,
    this.isStudent,
    this.job,
    this.jobDescription,
    this.lastCall,
    this.lastConfession,
    this.lastEdit,
    this.lastKodas,
    this.lastVisit,
    this.mainPhone,
    this.notes,
    required this.otherPhones,
    this.personType,
    this.qualification,
    this.school,
    required this.services,
    this.shammasLevel,
    this.state,
    this.streets,
    this.studyYear,
    required this.hobbies,
    required this.tags,
    this.uid,
    this.user,
  });

  factory Subscription_watchPerson_personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$areas = json['areas'];
    final l$classes = json['classes'];
    final l$church = json['church'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$geolocation = json['geolocation'];
    final l$groups = json['groups'];
    final l$isServant = json['isServant'];
    final l$isShammas = json['isShammas'];
    final l$isStudent = json['isStudent'];
    final l$job = json['job'];
    final l$jobDescription = json['jobDescription'];
    final l$lastCall = json['lastCall'];
    final l$lastConfession = json['lastConfession'];
    final l$lastEdit = json['lastEdit'];
    final l$lastKodas = json['lastKodas'];
    final l$lastVisit = json['lastVisit'];
    final l$mainPhone = json['mainPhone'];
    final l$notes = json['notes'];
    final l$otherPhones = json['otherPhones'];
    final l$personType = json['personType'];
    final l$qualification = json['qualification'];
    final l$school = json['school'];
    final l$services = json['services'];
    final l$shammasLevel = json['shammasLevel'];
    final l$state = json['state'];
    final l$streets = json['streets'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    return Subscription_watchPerson_personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Subscription_watchPerson_personsByPk_classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      church: l$church == null
          ? null
          : Subscription_watchPerson_personsByPk_church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Subscription_watchPerson_personsByPk_college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment_Family.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Subscription_watchPerson_personsByPk_father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Subscription_watchPerson_personsByPk_groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Subscription_watchPerson_personsByPk_job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      lastCall: l$lastCall == null
          ? null
          : Subscription_watchPerson_personsByPk_lastCall.fromJson(
              (l$lastCall as Map<String, dynamic>)),
      lastConfession: l$lastConfession == null
          ? null
          : Subscription_watchPerson_personsByPk_lastConfession.fromJson(
              (l$lastConfession as Map<String, dynamic>)),
      lastEdit: l$lastEdit == null
          ? null
          : Subscription_watchPerson_personsByPk_lastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
      lastKodas: l$lastKodas == null
          ? null
          : Subscription_watchPerson_personsByPk_lastKodas.fromJson(
              (l$lastKodas as Map<String, dynamic>)),
      lastVisit: l$lastVisit == null
          ? null
          : Subscription_watchPerson_personsByPk_lastVisit.fromJson(
              (l$lastVisit as Map<String, dynamic>)),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Subscription_watchPerson_personsByPk_personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Subscription_watchPerson_personsByPk_qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Subscription_watchPerson_personsByPk_school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Subscription_watchPerson_personsByPk_services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Subscription_watchPerson_personsByPk_shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Subscription_watchPerson_personsByPk_state.fromJson(
              (l$state as Map<String, dynamic>)),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment_Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      studyYear: l$studyYear == null
          ? null
          : Subscription_watchPerson_personsByPk_studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Subscription_watchPerson_personsByPk_hobbies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Subscription_watchPerson_personsByPk_tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Subscription_watchPerson_personsByPk_user.fromJson(
              (l$user as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String? address;

  final DateTime? birthdate;

  final List<Fragment_Area>? areas;

  final List<Subscription_watchPerson_personsByPk_classes>? classes;

  final Subscription_watchPerson_personsByPk_church? church;

  final Subscription_watchPerson_personsByPk_college? college;

  final Fragment_Family? family;

  final Subscription_watchPerson_personsByPk_father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

  final List<Subscription_watchPerson_personsByPk_groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Subscription_watchPerson_personsByPk_job? job;

  final String? jobDescription;

  final Subscription_watchPerson_personsByPk_lastCall? lastCall;

  final Subscription_watchPerson_personsByPk_lastConfession? lastConfession;

  final Subscription_watchPerson_personsByPk_lastEdit? lastEdit;

  final Subscription_watchPerson_personsByPk_lastKodas? lastKodas;

  final Subscription_watchPerson_personsByPk_lastVisit? lastVisit;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Subscription_watchPerson_personsByPk_personType? personType;

  final Subscription_watchPerson_personsByPk_qualification? qualification;

  final Subscription_watchPerson_personsByPk_school? school;

  final List<Subscription_watchPerson_personsByPk_services> services;

  final Subscription_watchPerson_personsByPk_shammasLevel? shammasLevel;

  final Subscription_watchPerson_personsByPk_state? state;

  final List<Fragment_Street>? streets;

  final Subscription_watchPerson_personsByPk_studyYear? studyYear;

  final List<Subscription_watchPerson_personsByPk_hobbies> hobbies;

  final List<Subscription_watchPerson_personsByPk_tags> tags;

  final UuidValue? uid;

  final Subscription_watchPerson_personsByPk_user? user;

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
    final l$address = address;
    _resultData['address'] = l$address;
    final l$birthdate = birthdate;
    _resultData['birthdate'] =
        l$birthdate == null ? null : dateToString(l$birthdate);
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$college = college;
    _resultData['college'] = l$college?.toJson();
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$father = father;
    _resultData['father'] = l$father?.toJson();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$isServant = isServant;
    _resultData['isServant'] = l$isServant;
    final l$isShammas = isShammas;
    _resultData['isShammas'] = l$isShammas;
    final l$isStudent = isStudent;
    _resultData['isStudent'] = l$isStudent;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$jobDescription = jobDescription;
    _resultData['jobDescription'] = l$jobDescription;
    final l$lastCall = lastCall;
    _resultData['lastCall'] = l$lastCall?.toJson();
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession?.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas?.toJson();
    final l$lastVisit = lastVisit;
    _resultData['lastVisit'] = l$lastVisit?.toJson();
    final l$mainPhone = mainPhone;
    _resultData['mainPhone'] = l$mainPhone;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$otherPhones = otherPhones;
    _resultData['otherPhones'] = l$otherPhones;
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
    final l$qualification = qualification;
    _resultData['qualification'] = l$qualification?.toJson();
    final l$school = school;
    _resultData['school'] = l$school?.toJson();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$shammasLevel = shammasLevel;
    _resultData['shammasLevel'] = l$shammasLevel?.toJson();
    final l$state = state;
    _resultData['state'] = l$state?.toJson();
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$hobbies = hobbies;
    _resultData['hobbies'] = l$hobbies.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$uid = uid;
    _resultData['uid'] = l$uid == null ? null : uuidToString(l$uid);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
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
    final l$address = address;
    final l$birthdate = birthdate;
    final l$areas = areas;
    final l$classes = classes;
    final l$church = church;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$geolocation = geolocation;
    final l$groups = groups;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$lastCall = lastCall;
    final l$lastConfession = lastConfession;
    final l$lastEdit = lastEdit;
    final l$lastKodas = lastKodas;
    final l$lastVisit = lastVisit;
    final l$mainPhone = mainPhone;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$services = services;
    final l$shammasLevel = shammasLevel;
    final l$state = state;
    final l$streets = streets;
    final l$studyYear = studyYear;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$address,
      l$birthdate,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
      l$church,
      l$college,
      l$family,
      l$father,
      l$gender,
      l$geolocation,
      Object.hashAll(l$groups.map((v) => v)),
      l$isServant,
      l$isShammas,
      l$isStudent,
      l$job,
      l$jobDescription,
      l$lastCall,
      l$lastConfession,
      l$lastEdit,
      l$lastKodas,
      l$lastVisit,
      l$mainPhone,
      l$notes,
      l$otherPhones,
      l$personType,
      l$qualification,
      l$school,
      Object.hashAll(l$services.map((v) => v)),
      l$shammasLevel,
      l$state,
      l$streets == null ? null : Object.hashAll(l$streets.map((v) => v)),
      l$studyYear,
      Object.hashAll(l$hobbies.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$uid,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk) ||
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != null && lOther$classes != null) {
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
    } else if (l$classes != lOther$classes) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    final l$college = college;
    final lOther$college = other.college;
    if (l$college != lOther$college) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$father = father;
    final lOther$father = other.father;
    if (l$father != lOther$father) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (l$isStudent != lOther$isStudent) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (l$job != lOther$job) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (l$school != lOther$school) {
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
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != null && lOther$streets != null) {
      if (l$streets.length != lOther$streets.length) {
        return false;
      }
      for (int i = 0; i < l$streets.length; i++) {
        final l$streets$entry = l$streets[i];
        final lOther$streets$entry = lOther$streets[i];
        if (l$streets$entry != lOther$streets$entry) {
          return false;
        }
      }
    } else if (l$streets != lOther$streets) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (l$hobbies.length != lOther$hobbies.length) {
      return false;
    }
    for (int i = 0; i < l$hobbies.length; i++) {
      final l$hobbies$entry = l$hobbies[i];
      final lOther$hobbies$entry = lOther$hobbies[i];
      if (l$hobbies$entry != lOther$hobbies$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk
    on Subscription_watchPerson_personsByPk {
  CopyWith_Subscription_watchPerson_personsByPk<
          Subscription_watchPerson_personsByPk>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk(
    Subscription_watchPerson_personsByPk instance,
    TRes Function(Subscription_watchPerson_personsByPk) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk;

  factory CopyWith_Subscription_watchPerson_personsByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? address,
    DateTime? birthdate,
    List<Fragment_Area>? areas,
    List<Subscription_watchPerson_personsByPk_classes>? classes,
    Subscription_watchPerson_personsByPk_church? church,
    Subscription_watchPerson_personsByPk_college? college,
    Fragment_Family? family,
    Subscription_watchPerson_personsByPk_father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Subscription_watchPerson_personsByPk_groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Subscription_watchPerson_personsByPk_job? job,
    String? jobDescription,
    Subscription_watchPerson_personsByPk_lastCall? lastCall,
    Subscription_watchPerson_personsByPk_lastConfession? lastConfession,
    Subscription_watchPerson_personsByPk_lastEdit? lastEdit,
    Subscription_watchPerson_personsByPk_lastKodas? lastKodas,
    Subscription_watchPerson_personsByPk_lastVisit? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Subscription_watchPerson_personsByPk_personType? personType,
    Subscription_watchPerson_personsByPk_qualification? qualification,
    Subscription_watchPerson_personsByPk_school? school,
    List<Subscription_watchPerson_personsByPk_services>? services,
    Subscription_watchPerson_personsByPk_shammasLevel? shammasLevel,
    Subscription_watchPerson_personsByPk_state? state,
    List<Fragment_Street>? streets,
    Subscription_watchPerson_personsByPk_studyYear? studyYear,
    List<Subscription_watchPerson_personsByPk_hobbies>? hobbies,
    List<Subscription_watchPerson_personsByPk_tags>? tags,
    UuidValue? uid,
    Subscription_watchPerson_personsByPk_user? user,
  });
  TRes areas(
      Iterable<Fragment_Area>? Function(
              Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
          _fn);
  TRes classes(
      Iterable<Subscription_watchPerson_personsByPk_classes>? Function(
              Iterable<
                  CopyWith_Subscription_watchPerson_personsByPk_classes<
                      Subscription_watchPerson_personsByPk_classes>>?)
          _fn);
  CopyWith_Subscription_watchPerson_personsByPk_church<TRes> get church;
  CopyWith_Subscription_watchPerson_personsByPk_college<TRes> get college;
  CopyWith_Fragment_Family<TRes> get family;
  CopyWith_Subscription_watchPerson_personsByPk_father<TRes> get father;
  TRes groups(
      Iterable<Subscription_watchPerson_personsByPk_groups> Function(
              Iterable<
                  CopyWith_Subscription_watchPerson_personsByPk_groups<
                      Subscription_watchPerson_personsByPk_groups>>)
          _fn);
  CopyWith_Subscription_watchPerson_personsByPk_job<TRes> get job;
  CopyWith_Subscription_watchPerson_personsByPk_lastCall<TRes> get lastCall;
  CopyWith_Subscription_watchPerson_personsByPk_lastConfession<TRes>
      get lastConfession;
  CopyWith_Subscription_watchPerson_personsByPk_lastEdit<TRes> get lastEdit;
  CopyWith_Subscription_watchPerson_personsByPk_lastKodas<TRes> get lastKodas;
  CopyWith_Subscription_watchPerson_personsByPk_lastVisit<TRes> get lastVisit;
  CopyWith_Subscription_watchPerson_personsByPk_personType<TRes> get personType;
  CopyWith_Subscription_watchPerson_personsByPk_qualification<TRes>
      get qualification;
  CopyWith_Subscription_watchPerson_personsByPk_school<TRes> get school;
  TRes services(
      Iterable<Subscription_watchPerson_personsByPk_services> Function(
              Iterable<
                  CopyWith_Subscription_watchPerson_personsByPk_services<
                      Subscription_watchPerson_personsByPk_services>>)
          _fn);
  CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<TRes>
      get shammasLevel;
  CopyWith_Subscription_watchPerson_personsByPk_state<TRes> get state;
  TRes streets(
      Iterable<Fragment_Street>? Function(
              Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
          _fn);
  CopyWith_Subscription_watchPerson_personsByPk_studyYear<TRes> get studyYear;
  TRes hobbies(
      Iterable<Subscription_watchPerson_personsByPk_hobbies> Function(
              Iterable<
                  CopyWith_Subscription_watchPerson_personsByPk_hobbies<
                      Subscription_watchPerson_personsByPk_hobbies>>)
          _fn);
  TRes tags(
      Iterable<Subscription_watchPerson_personsByPk_tags> Function(
              Iterable<
                  CopyWith_Subscription_watchPerson_personsByPk_tags<
                      Subscription_watchPerson_personsByPk_tags>>)
          _fn);
  CopyWith_Subscription_watchPerson_personsByPk_user<TRes> get user;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk _instance;

  final TRes Function(Subscription_watchPerson_personsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? areas = _undefined,
    Object? classes = _undefined,
    Object? church = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? geolocation = _undefined,
    Object? groups = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? lastCall = _undefined,
    Object? lastConfession = _undefined,
    Object? lastEdit = _undefined,
    Object? lastKodas = _undefined,
    Object? lastVisit = _undefined,
    Object? mainPhone = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? services = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? streets = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk(
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
        address:
            address == _undefined ? _instance.address : (address as String?),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment_Area>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Subscription_watchPerson_personsByPk_classes>?),
        church: church == _undefined
            ? _instance.church
            : (church as Subscription_watchPerson_personsByPk_church?),
        college: college == _undefined
            ? _instance.college
            : (college as Subscription_watchPerson_personsByPk_college?),
        family: family == _undefined
            ? _instance.family
            : (family as Fragment_Family?),
        father: father == _undefined
            ? _instance.father
            : (father as Subscription_watchPerson_personsByPk_father?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Subscription_watchPerson_personsByPk_groups>),
        isServant: isServant == _undefined || isServant == null
            ? _instance.isServant
            : (isServant as bool),
        isShammas: isShammas == _undefined || isShammas == null
            ? _instance.isShammas
            : (isShammas as bool),
        isStudent: isStudent == _undefined
            ? _instance.isStudent
            : (isStudent as bool?),
        job: job == _undefined
            ? _instance.job
            : (job as Subscription_watchPerson_personsByPk_job?),
        jobDescription: jobDescription == _undefined
            ? _instance.jobDescription
            : (jobDescription as String?),
        lastCall: lastCall == _undefined
            ? _instance.lastCall
            : (lastCall as Subscription_watchPerson_personsByPk_lastCall?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession
                as Subscription_watchPerson_personsByPk_lastConfession?),
        lastEdit: lastEdit == _undefined
            ? _instance.lastEdit
            : (lastEdit as Subscription_watchPerson_personsByPk_lastEdit?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Subscription_watchPerson_personsByPk_lastKodas?),
        lastVisit: lastVisit == _undefined
            ? _instance.lastVisit
            : (lastVisit as Subscription_watchPerson_personsByPk_lastVisit?),
        mainPhone: mainPhone == _undefined
            ? _instance.mainPhone
            : (mainPhone as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        otherPhones: otherPhones == _undefined || otherPhones == null
            ? _instance.otherPhones
            : (otherPhones as Json),
        personType: personType == _undefined
            ? _instance.personType
            : (personType as Subscription_watchPerson_personsByPk_personType?),
        qualification: qualification == _undefined
            ? _instance.qualification
            : (qualification
                as Subscription_watchPerson_personsByPk_qualification?),
        school: school == _undefined
            ? _instance.school
            : (school as Subscription_watchPerson_personsByPk_school?),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Subscription_watchPerson_personsByPk_services>),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel
                as Subscription_watchPerson_personsByPk_shammasLevel?),
        state: state == _undefined
            ? _instance.state
            : (state as Subscription_watchPerson_personsByPk_state?),
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment_Street>?),
        studyYear: studyYear == _undefined
            ? _instance.studyYear
            : (studyYear as Subscription_watchPerson_personsByPk_studyYear?),
        hobbies: hobbies == _undefined || hobbies == null
            ? _instance.hobbies
            : (hobbies as List<Subscription_watchPerson_personsByPk_hobbies>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Subscription_watchPerson_personsByPk_tags>),
        uid: uid == _undefined ? _instance.uid : (uid as UuidValue?),
        user: user == _undefined
            ? _instance.user
            : (user as Subscription_watchPerson_personsByPk_user?),
      ));

  TRes areas(
          Iterable<Fragment_Area>? Function(
                  Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith_Fragment_Area(
                e,
                (i) => i,
              )))?.toList());

  TRes classes(
          Iterable<Subscription_watchPerson_personsByPk_classes>? Function(
                  Iterable<
                      CopyWith_Subscription_watchPerson_personsByPk_classes<
                          Subscription_watchPerson_personsByPk_classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map(
              (e) => CopyWith_Subscription_watchPerson_personsByPk_classes(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Subscription_watchPerson_personsByPk_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Subscription_watchPerson_personsByPk_church.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_church(
            local$church, (e) => call(church: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Subscription_watchPerson_personsByPk_college.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_college(
            local$college, (e) => call(college: e));
  }

  CopyWith_Fragment_Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$family, (e) => call(family: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Subscription_watchPerson_personsByPk_father.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_father(
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Subscription_watchPerson_personsByPk_groups> Function(
                  Iterable<
                      CopyWith_Subscription_watchPerson_personsByPk_groups<
                          Subscription_watchPerson_personsByPk_groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith_Subscription_watchPerson_personsByPk_groups(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Subscription_watchPerson_personsByPk_job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Subscription_watchPerson_personsByPk_job.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_job(
            local$job, (e) => call(job: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_lastCall<TRes> get lastCall {
    final local$lastCall = _instance.lastCall;
    return local$lastCall == null
        ? CopyWith_Subscription_watchPerson_personsByPk_lastCall.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_lastCall(
            local$lastCall, (e) => call(lastCall: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_lastConfession<TRes>
      get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Subscription_watchPerson_personsByPk_lastConfession.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_lastConfession(
            local$lastConfession, (e) => call(lastConfession: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_lastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Subscription_watchPerson_personsByPk_lastEdit.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_lastEdit(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_lastKodas<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Subscription_watchPerson_personsByPk_lastKodas.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_lastKodas(
            local$lastKodas, (e) => call(lastKodas: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_lastVisit<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Subscription_watchPerson_personsByPk_lastVisit.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_lastVisit(
            local$lastVisit, (e) => call(lastVisit: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_personType<TRes>
      get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Subscription_watchPerson_personsByPk_personType.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_qualification<TRes>
      get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Subscription_watchPerson_personsByPk_qualification.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Subscription_watchPerson_personsByPk_school.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Subscription_watchPerson_personsByPk_services> Function(
                  Iterable<
                      CopyWith_Subscription_watchPerson_personsByPk_services<
                          Subscription_watchPerson_personsByPk_services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map(
              (e) => CopyWith_Subscription_watchPerson_personsByPk_services(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<TRes>
      get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Subscription_watchPerson_personsByPk_shammasLevel.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Subscription_watchPerson_personsByPk_state.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_state(
            local$state, (e) => call(state: e));
  }

  TRes streets(
          Iterable<Fragment_Street>? Function(
                  Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith_Fragment_Street(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Subscription_watchPerson_personsByPk_studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Subscription_watchPerson_personsByPk_studyYear.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes hobbies(
          Iterable<Subscription_watchPerson_personsByPk_hobbies> Function(
                  Iterable<
                      CopyWith_Subscription_watchPerson_personsByPk_hobbies<
                          Subscription_watchPerson_personsByPk_hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies
              .map((e) => CopyWith_Subscription_watchPerson_personsByPk_hobbies(
                    e,
                    (i) => i,
                  ))).toList());

  TRes tags(
          Iterable<Subscription_watchPerson_personsByPk_tags> Function(
                  Iterable<
                      CopyWith_Subscription_watchPerson_personsByPk_tags<
                          Subscription_watchPerson_personsByPk_tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags
              .map((e) => CopyWith_Subscription_watchPerson_personsByPk_tags(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Subscription_watchPerson_personsByPk_user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Subscription_watchPerson_personsByPk_user.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? address,
    DateTime? birthdate,
    List<Fragment_Area>? areas,
    List<Subscription_watchPerson_personsByPk_classes>? classes,
    Subscription_watchPerson_personsByPk_church? church,
    Subscription_watchPerson_personsByPk_college? college,
    Fragment_Family? family,
    Subscription_watchPerson_personsByPk_father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Subscription_watchPerson_personsByPk_groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Subscription_watchPerson_personsByPk_job? job,
    String? jobDescription,
    Subscription_watchPerson_personsByPk_lastCall? lastCall,
    Subscription_watchPerson_personsByPk_lastConfession? lastConfession,
    Subscription_watchPerson_personsByPk_lastEdit? lastEdit,
    Subscription_watchPerson_personsByPk_lastKodas? lastKodas,
    Subscription_watchPerson_personsByPk_lastVisit? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Subscription_watchPerson_personsByPk_personType? personType,
    Subscription_watchPerson_personsByPk_qualification? qualification,
    Subscription_watchPerson_personsByPk_school? school,
    List<Subscription_watchPerson_personsByPk_services>? services,
    Subscription_watchPerson_personsByPk_shammasLevel? shammasLevel,
    Subscription_watchPerson_personsByPk_state? state,
    List<Fragment_Street>? streets,
    Subscription_watchPerson_personsByPk_studyYear? studyYear,
    List<Subscription_watchPerson_personsByPk_hobbies>? hobbies,
    List<Subscription_watchPerson_personsByPk_tags>? tags,
    UuidValue? uid,
    Subscription_watchPerson_personsByPk_user? user,
  }) =>
      _res;

  areas(_fn) => _res;

  classes(_fn) => _res;

  CopyWith_Subscription_watchPerson_personsByPk_church<TRes> get church =>
      CopyWith_Subscription_watchPerson_personsByPk_church.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_college<TRes> get college =>
      CopyWith_Subscription_watchPerson_personsByPk_college.stub(_res);

  CopyWith_Fragment_Family<TRes> get family =>
      CopyWith_Fragment_Family.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_father<TRes> get father =>
      CopyWith_Subscription_watchPerson_personsByPk_father.stub(_res);

  groups(_fn) => _res;

  CopyWith_Subscription_watchPerson_personsByPk_job<TRes> get job =>
      CopyWith_Subscription_watchPerson_personsByPk_job.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_lastCall<TRes> get lastCall =>
      CopyWith_Subscription_watchPerson_personsByPk_lastCall.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_lastConfession<TRes>
      get lastConfession =>
          CopyWith_Subscription_watchPerson_personsByPk_lastConfession.stub(
              _res);

  CopyWith_Subscription_watchPerson_personsByPk_lastEdit<TRes> get lastEdit =>
      CopyWith_Subscription_watchPerson_personsByPk_lastEdit.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_lastKodas<TRes> get lastKodas =>
      CopyWith_Subscription_watchPerson_personsByPk_lastKodas.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_lastVisit<TRes> get lastVisit =>
      CopyWith_Subscription_watchPerson_personsByPk_lastVisit.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_personType<TRes>
      get personType =>
          CopyWith_Subscription_watchPerson_personsByPk_personType.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_qualification<TRes>
      get qualification =>
          CopyWith_Subscription_watchPerson_personsByPk_qualification.stub(
              _res);

  CopyWith_Subscription_watchPerson_personsByPk_school<TRes> get school =>
      CopyWith_Subscription_watchPerson_personsByPk_school.stub(_res);

  services(_fn) => _res;

  CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<TRes>
      get shammasLevel =>
          CopyWith_Subscription_watchPerson_personsByPk_shammasLevel.stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_state<TRes> get state =>
      CopyWith_Subscription_watchPerson_personsByPk_state.stub(_res);

  streets(_fn) => _res;

  CopyWith_Subscription_watchPerson_personsByPk_studyYear<TRes> get studyYear =>
      CopyWith_Subscription_watchPerson_personsByPk_studyYear.stub(_res);

  hobbies(_fn) => _res;

  tags(_fn) => _res;

  CopyWith_Subscription_watchPerson_personsByPk_user<TRes> get user =>
      CopyWith_Subscription_watchPerson_personsByPk_user.stub(_res);
}

class Subscription_watchPerson_personsByPk_classes
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Subscription_watchPerson_personsByPk_classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
  });

  factory Subscription_watchPerson_personsByPk_classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Subscription_watchPerson_personsByPk_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate
      attendanceHistoryAggregate;

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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_classes) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_classes
    on Subscription_watchPerson_personsByPk_classes {
  CopyWith_Subscription_watchPerson_personsByPk_classes<
          Subscription_watchPerson_personsByPk_classes>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_classes<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_classes(
    Subscription_watchPerson_personsByPk_classes instance,
    TRes Function(Subscription_watchPerson_personsByPk_classes) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_classes;

  factory CopyWith_Subscription_watchPerson_personsByPk_classes.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_classes<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_classes<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_classes(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_classes _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_classes(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_classes<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate {
  Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate
    on Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate {
  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate;

  factory CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate;

  TRes call({
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate {
  Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
      max: l$max == null
          ? null
          : Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate
    on Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate {
  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate;

  TRes call({
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max {
  Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
    on Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
    Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_church {
  Subscription_watchPerson_personsByPk_church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Subscription_watchPerson_personsByPk_church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_church(
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
    if (!(other is Subscription_watchPerson_personsByPk_church) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_church
    on Subscription_watchPerson_personsByPk_church {
  CopyWith_Subscription_watchPerson_personsByPk_church<
          Subscription_watchPerson_personsByPk_church>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_church(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_church<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_church(
    Subscription_watchPerson_personsByPk_church instance,
    TRes Function(Subscription_watchPerson_personsByPk_church) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_church;

  factory CopyWith_Subscription_watchPerson_personsByPk_church.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_church<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_church<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_church(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_church _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_church<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_church<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_college {
  Subscription_watchPerson_personsByPk_college({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Subscription_watchPerson_personsByPk_college.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_college(
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
    if (!(other is Subscription_watchPerson_personsByPk_college) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_college
    on Subscription_watchPerson_personsByPk_college {
  CopyWith_Subscription_watchPerson_personsByPk_college<
          Subscription_watchPerson_personsByPk_college>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_college(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_college<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_college(
    Subscription_watchPerson_personsByPk_college instance,
    TRes Function(Subscription_watchPerson_personsByPk_college) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_college;

  factory CopyWith_Subscription_watchPerson_personsByPk_college.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_college<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_college<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_college(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_college _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_college) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_college<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_college<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_father {
  Subscription_watchPerson_personsByPk_father({
    required this.id,
    required this.name,
    this.church,
    this.$__typename = 'Fathers',
  });

  factory Subscription_watchPerson_personsByPk_father.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Subscription_watchPerson_personsByPk_father_church.fromJson(
              (l$church as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Subscription_watchPerson_personsByPk_father_church? church;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$church = church;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$church,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_father) ||
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
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_father
    on Subscription_watchPerson_personsByPk_father {
  CopyWith_Subscription_watchPerson_personsByPk_father<
          Subscription_watchPerson_personsByPk_father>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_father(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_father<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_father(
    Subscription_watchPerson_personsByPk_father instance,
    TRes Function(Subscription_watchPerson_personsByPk_father) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_father;

  factory CopyWith_Subscription_watchPerson_personsByPk_father.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_father;

  TRes call({
    UuidValue? id,
    String? name,
    Subscription_watchPerson_personsByPk_father_church? church,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_father_church<TRes> get church;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_father<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_father<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_father(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_father _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_father(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        church: church == _undefined
            ? _instance.church
            : (church as Subscription_watchPerson_personsByPk_father_church?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_father_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Subscription_watchPerson_personsByPk_father_church.stub(
            _then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_father_church(
            local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_father<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_father<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Subscription_watchPerson_personsByPk_father_church? church,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_father_church<TRes>
      get church =>
          CopyWith_Subscription_watchPerson_personsByPk_father_church.stub(
              _res);
}

class Subscription_watchPerson_personsByPk_father_church {
  Subscription_watchPerson_personsByPk_father_church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Subscription_watchPerson_personsByPk_father_church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_father_church(
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
    if (!(other is Subscription_watchPerson_personsByPk_father_church) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_father_church
    on Subscription_watchPerson_personsByPk_father_church {
  CopyWith_Subscription_watchPerson_personsByPk_father_church<
          Subscription_watchPerson_personsByPk_father_church>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_father_church(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_father_church<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_father_church(
    Subscription_watchPerson_personsByPk_father_church instance,
    TRes Function(Subscription_watchPerson_personsByPk_father_church) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_father_church;

  factory CopyWith_Subscription_watchPerson_personsByPk_father_church.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_father_church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_father_church<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_father_church<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_father_church(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_father_church _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_father_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_father_church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_father_church<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_father_church<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_father_church(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_groups {
  Subscription_watchPerson_personsByPk_groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Subscription_watchPerson_personsByPk_groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_groups(
      group: Subscription_watchPerson_personsByPk_groups_group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_groups_group group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$group = group;
    _resultData['group'] = l$group.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_groups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_groups
    on Subscription_watchPerson_personsByPk_groups {
  CopyWith_Subscription_watchPerson_personsByPk_groups<
          Subscription_watchPerson_personsByPk_groups>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_groups<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_groups(
    Subscription_watchPerson_personsByPk_groups instance,
    TRes Function(Subscription_watchPerson_personsByPk_groups) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_groups;

  factory CopyWith_Subscription_watchPerson_personsByPk_groups.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups;

  TRes call({
    Subscription_watchPerson_personsByPk_groups_group? group,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_groups_group<TRes> get group;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_groups<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_groups<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_groups(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_groups _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Subscription_watchPerson_personsByPk_groups_group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_groups_group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith_Subscription_watchPerson_personsByPk_groups_group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_groups<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups(this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_groups_group? group,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_groups_group<TRes> get group =>
      CopyWith_Subscription_watchPerson_personsByPk_groups_group.stub(_res);
}

class Subscription_watchPerson_personsByPk_groups_group
    implements Fragment_Group, Fragment_GroupNoPhoto {
  Subscription_watchPerson_personsByPk_groups_group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
  });

  factory Subscription_watchPerson_personsByPk_groups_group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Subscription_watchPerson_personsByPk_groups_group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate
      attendanceHistoryAggregate;

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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_groups_group) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_groups_group
    on Subscription_watchPerson_personsByPk_groups_group {
  CopyWith_Subscription_watchPerson_personsByPk_groups_group<
          Subscription_watchPerson_personsByPk_groups_group>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_groups_group<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group(
    Subscription_watchPerson_personsByPk_groups_group instance,
    TRes Function(Subscription_watchPerson_personsByPk_groups_group) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group;

  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_groups_group _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_groups_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_groups_group(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate {
  Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate
    on Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate {
  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate;

  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate;

  TRes call({
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate {
  Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
      max: l$max == null
          ? null
          : Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
    on Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate {
  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate;

  TRes call({
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max {
  Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
    on Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
    Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_job {
  Subscription_watchPerson_personsByPk_job({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Subscription_watchPerson_personsByPk_job.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_job(
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
    if (!(other is Subscription_watchPerson_personsByPk_job) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_job
    on Subscription_watchPerson_personsByPk_job {
  CopyWith_Subscription_watchPerson_personsByPk_job<
          Subscription_watchPerson_personsByPk_job>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_job(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_job<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_job(
    Subscription_watchPerson_personsByPk_job instance,
    TRes Function(Subscription_watchPerson_personsByPk_job) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_job;

  factory CopyWith_Subscription_watchPerson_personsByPk_job.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_job<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_job<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_job(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_job _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_job<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_job<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_lastCall {
  Subscription_watchPerson_personsByPk_lastCall();

  factory Subscription_watchPerson_personsByPk_lastCall.fromJson(
      Map<String, dynamic> json) {
    return Subscription_watchPerson_personsByPk_lastCall();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_lastCall) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_lastCall
    on Subscription_watchPerson_personsByPk_lastCall {
  CopyWith_Subscription_watchPerson_personsByPk_lastCall<
          Subscription_watchPerson_personsByPk_lastCall>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_lastCall(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_lastCall<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_lastCall(
    Subscription_watchPerson_personsByPk_lastCall instance,
    TRes Function(Subscription_watchPerson_personsByPk_lastCall) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_lastCall;

  factory CopyWith_Subscription_watchPerson_personsByPk_lastCall.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastCall;

  TRes call();
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_lastCall<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastCall<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_lastCall(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_lastCall _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_lastCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Subscription_watchPerson_personsByPk_lastCall());
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastCall<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastCall<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastCall(this._res);

  TRes _res;

  call() => _res;
}

class Subscription_watchPerson_personsByPk_lastConfession {
  Subscription_watchPerson_personsByPk_lastConfession();

  factory Subscription_watchPerson_personsByPk_lastConfession.fromJson(
      Map<String, dynamic> json) {
    return Subscription_watchPerson_personsByPk_lastConfession();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_lastConfession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_lastConfession
    on Subscription_watchPerson_personsByPk_lastConfession {
  CopyWith_Subscription_watchPerson_personsByPk_lastConfession<
          Subscription_watchPerson_personsByPk_lastConfession>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_lastConfession(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_lastConfession<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_lastConfession(
    Subscription_watchPerson_personsByPk_lastConfession instance,
    TRes Function(Subscription_watchPerson_personsByPk_lastConfession) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_lastConfession;

  factory CopyWith_Subscription_watchPerson_personsByPk_lastConfession.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastConfession;

  TRes call();
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_lastConfession<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_lastConfession<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_lastConfession(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_lastConfession _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_lastConfession)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Subscription_watchPerson_personsByPk_lastConfession());
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastConfession<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_lastConfession<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastConfession(
      this._res);

  TRes _res;

  call() => _res;
}

class Subscription_watchPerson_personsByPk_lastEdit {
  Subscription_watchPerson_personsByPk_lastEdit();

  factory Subscription_watchPerson_personsByPk_lastEdit.fromJson(
      Map<String, dynamic> json) {
    return Subscription_watchPerson_personsByPk_lastEdit();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_lastEdit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_lastEdit
    on Subscription_watchPerson_personsByPk_lastEdit {
  CopyWith_Subscription_watchPerson_personsByPk_lastEdit<
          Subscription_watchPerson_personsByPk_lastEdit>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_lastEdit(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_lastEdit<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_lastEdit(
    Subscription_watchPerson_personsByPk_lastEdit instance,
    TRes Function(Subscription_watchPerson_personsByPk_lastEdit) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_lastEdit;

  factory CopyWith_Subscription_watchPerson_personsByPk_lastEdit.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastEdit;

  TRes call();
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_lastEdit<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastEdit<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_lastEdit(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_lastEdit _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_lastEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Subscription_watchPerson_personsByPk_lastEdit());
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastEdit<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastEdit<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastEdit(this._res);

  TRes _res;

  call() => _res;
}

class Subscription_watchPerson_personsByPk_lastKodas {
  Subscription_watchPerson_personsByPk_lastKodas();

  factory Subscription_watchPerson_personsByPk_lastKodas.fromJson(
      Map<String, dynamic> json) {
    return Subscription_watchPerson_personsByPk_lastKodas();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_lastKodas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_lastKodas
    on Subscription_watchPerson_personsByPk_lastKodas {
  CopyWith_Subscription_watchPerson_personsByPk_lastKodas<
          Subscription_watchPerson_personsByPk_lastKodas>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_lastKodas(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_lastKodas<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_lastKodas(
    Subscription_watchPerson_personsByPk_lastKodas instance,
    TRes Function(Subscription_watchPerson_personsByPk_lastKodas) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_lastKodas;

  factory CopyWith_Subscription_watchPerson_personsByPk_lastKodas.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastKodas;

  TRes call();
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_lastKodas<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastKodas<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_lastKodas(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_lastKodas _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_lastKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Subscription_watchPerson_personsByPk_lastKodas());
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastKodas<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastKodas<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastKodas(this._res);

  TRes _res;

  call() => _res;
}

class Subscription_watchPerson_personsByPk_lastVisit {
  Subscription_watchPerson_personsByPk_lastVisit();

  factory Subscription_watchPerson_personsByPk_lastVisit.fromJson(
      Map<String, dynamic> json) {
    return Subscription_watchPerson_personsByPk_lastVisit();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_lastVisit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_lastVisit
    on Subscription_watchPerson_personsByPk_lastVisit {
  CopyWith_Subscription_watchPerson_personsByPk_lastVisit<
          Subscription_watchPerson_personsByPk_lastVisit>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_lastVisit(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_lastVisit<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_lastVisit(
    Subscription_watchPerson_personsByPk_lastVisit instance,
    TRes Function(Subscription_watchPerson_personsByPk_lastVisit) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_lastVisit;

  factory CopyWith_Subscription_watchPerson_personsByPk_lastVisit.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastVisit;

  TRes call();
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_lastVisit<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastVisit<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_lastVisit(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_lastVisit _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_lastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Subscription_watchPerson_personsByPk_lastVisit());
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastVisit<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_lastVisit<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_lastVisit(this._res);

  TRes _res;

  call() => _res;
}

class Subscription_watchPerson_personsByPk_personType {
  Subscription_watchPerson_personsByPk_personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Subscription_watchPerson_personsByPk_personType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_personType(
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
    if (!(other is Subscription_watchPerson_personsByPk_personType) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_personType
    on Subscription_watchPerson_personsByPk_personType {
  CopyWith_Subscription_watchPerson_personsByPk_personType<
          Subscription_watchPerson_personsByPk_personType>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_personType<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_personType(
    Subscription_watchPerson_personsByPk_personType instance,
    TRes Function(Subscription_watchPerson_personsByPk_personType) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_personType;

  factory CopyWith_Subscription_watchPerson_personsByPk_personType.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_personType<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_personType<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_personType(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_personType _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_personType<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_personType<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_qualification {
  Subscription_watchPerson_personsByPk_qualification({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Subscription_watchPerson_personsByPk_qualification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_qualification(
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
    if (!(other is Subscription_watchPerson_personsByPk_qualification) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_qualification
    on Subscription_watchPerson_personsByPk_qualification {
  CopyWith_Subscription_watchPerson_personsByPk_qualification<
          Subscription_watchPerson_personsByPk_qualification>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_qualification<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_qualification(
    Subscription_watchPerson_personsByPk_qualification instance,
    TRes Function(Subscription_watchPerson_personsByPk_qualification) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_qualification;

  factory CopyWith_Subscription_watchPerson_personsByPk_qualification.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_qualification<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_qualification<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_qualification(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_qualification _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_qualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_qualification<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_qualification<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_qualification(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_school {
  Subscription_watchPerson_personsByPk_school({
    required this.id,
    required this.name,
    this.$__typename = 'Schools',
  });

  factory Subscription_watchPerson_personsByPk_school.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_school(
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
    if (!(other is Subscription_watchPerson_personsByPk_school) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_school
    on Subscription_watchPerson_personsByPk_school {
  CopyWith_Subscription_watchPerson_personsByPk_school<
          Subscription_watchPerson_personsByPk_school>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_school(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_school<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_school(
    Subscription_watchPerson_personsByPk_school instance,
    TRes Function(Subscription_watchPerson_personsByPk_school) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_school;

  factory CopyWith_Subscription_watchPerson_personsByPk_school.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_school<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_school<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_school(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_school _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_school) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_school<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_school<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_services {
  Subscription_watchPerson_personsByPk_services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Subscription_watchPerson_personsByPk_services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_services(
      service: Subscription_watchPerson_personsByPk_services_service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_services_service service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_services) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_services
    on Subscription_watchPerson_personsByPk_services {
  CopyWith_Subscription_watchPerson_personsByPk_services<
          Subscription_watchPerson_personsByPk_services>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_services(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services(
    Subscription_watchPerson_personsByPk_services instance,
    TRes Function(Subscription_watchPerson_personsByPk_services) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services;

  factory CopyWith_Subscription_watchPerson_personsByPk_services.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services;

  TRes call({
    Subscription_watchPerson_personsByPk_services_service? service,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_services_service<TRes>
      get service;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_services<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Subscription_watchPerson_personsByPk_services_service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_services_service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith_Subscription_watchPerson_personsByPk_services_service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_services<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services(this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_services_service? service,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_services_service<TRes>
      get service =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service.stub(
              _res);
}

class Subscription_watchPerson_personsByPk_services_service
    implements Fragment_ServiceWithStudyYears, Fragment_ServiceNoPhoto {
  Subscription_watchPerson_personsByPk_services_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.studyYearFrom,
    this.studyYearTo,
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
  });

  factory Subscription_watchPerson_personsByPk_services_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Subscription_watchPerson_personsByPk_services_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Subscription_watchPerson_personsByPk_services_service_studyYearFrom
              .fromJson((l$studyYearFrom as Map<String, dynamic>)),
      studyYearTo: l$studyYearTo == null
          ? null
          : Subscription_watchPerson_personsByPk_services_service_studyYearTo
              .fromJson((l$studyYearTo as Map<String, dynamic>)),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Subscription_watchPerson_personsByPk_services_service_studyYearFrom?
      studyYearFrom;

  final Subscription_watchPerson_personsByPk_services_service_studyYearTo?
      studyYearTo;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate
      attendanceHistoryAggregate;

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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_services_service) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_services_service
    on Subscription_watchPerson_personsByPk_services_service {
  CopyWith_Subscription_watchPerson_personsByPk_services_service<
          Subscription_watchPerson_personsByPk_services_service>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services_service<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services_service(
    Subscription_watchPerson_personsByPk_services_service instance,
    TRes Function(Subscription_watchPerson_personsByPk_services_service) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service;

  factory CopyWith_Subscription_watchPerson_personsByPk_services_service.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Subscription_watchPerson_personsByPk_services_service_studyYearFrom?
        studyYearFrom,
    Subscription_watchPerson_personsByPk_services_service_studyYearTo?
        studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
      TRes> get studyYearFrom;
  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
      TRes> get studyYearTo;
  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services_service _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_services_service)
      _then;

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
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_services_service(
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
                as Subscription_watchPerson_personsByPk_services_service_studyYearFrom?),
        studyYearTo: studyYearTo == _undefined
            ? _instance.studyYearTo
            : (studyYearTo
                as Subscription_watchPerson_personsByPk_services_service_studyYearTo?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
      TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
      TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }

  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Subscription_watchPerson_personsByPk_services_service_studyYearFrom?
        studyYearFrom,
    Subscription_watchPerson_personsByPk_services_service_studyYearTo?
        studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
          TRes>
      get studyYearFrom =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom
              .stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
          TRes>
      get studyYearTo =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo
              .stub(_res);

  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_services_service_studyYearFrom
    implements Fragment_ServiceWithStudyYears_studyYearFrom {
  Subscription_watchPerson_personsByPk_services_service_studyYearFrom({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchPerson_personsByPk_services_service_studyYearFrom.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
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
    if (!(other
            is Subscription_watchPerson_personsByPk_services_service_studyYearFrom) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_services_service_studyYearFrom
    on Subscription_watchPerson_personsByPk_services_service_studyYearFrom {
  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
          Subscription_watchPerson_personsByPk_services_service_studyYearFrom>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
    Subscription_watchPerson_personsByPk_services_service_studyYearFrom
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_services_service_studyYearFrom)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_studyYearFrom;

  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_studyYearFrom;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services_service_studyYearFrom
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_services_service_studyYearFrom)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
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

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearFrom<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_studyYearFrom(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_services_service_studyYearTo
    implements Fragment_ServiceWithStudyYears_studyYearTo {
  Subscription_watchPerson_personsByPk_services_service_studyYearTo({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchPerson_personsByPk_services_service_studyYearTo.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_services_service_studyYearTo(
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
    if (!(other
            is Subscription_watchPerson_personsByPk_services_service_studyYearTo) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_services_service_studyYearTo
    on Subscription_watchPerson_personsByPk_services_service_studyYearTo {
  CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
          Subscription_watchPerson_personsByPk_services_service_studyYearTo>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo(
    Subscription_watchPerson_personsByPk_services_service_studyYearTo instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_services_service_studyYearTo)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_studyYearTo;

  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_studyYearTo;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_studyYearTo(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services_service_studyYearTo
      _instance;

  final TRes Function(
      Subscription_watchPerson_personsByPk_services_service_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_services_service_studyYearTo(
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

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_studyYearTo<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_studyYearTo(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate {
  Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate
    on Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate {
  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate;

  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate;

  TRes call({
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate {
  Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
      max: l$max == null
          ? null
          : Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate
    on Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate {
  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate;

  TRes call({
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max {
  Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
    on Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
    Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_shammasLevel {
  Subscription_watchPerson_personsByPk_shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    this.$__typename = 'ShammasLevels',
  });

  factory Subscription_watchPerson_personsByPk_shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_shammasLevel(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Subscription_watchPerson_personsByPk_shammasLevel) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_shammasLevel
    on Subscription_watchPerson_personsByPk_shammasLevel {
  CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<
          Subscription_watchPerson_personsByPk_shammasLevel>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_shammasLevel(
    Subscription_watchPerson_personsByPk_shammasLevel instance,
    TRes Function(Subscription_watchPerson_personsByPk_shammasLevel) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_shammasLevel;

  factory CopyWith_Subscription_watchPerson_personsByPk_shammasLevel.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_shammasLevel<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_shammasLevel(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_shammasLevel _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_shammasLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_shammasLevel(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
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

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_shammasLevel<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_shammasLevel<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_shammasLevel(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_state {
  Subscription_watchPerson_personsByPk_state({
    required this.id,
    required this.color,
    required this.name,
    this.$__typename = 'PersonStates',
  });

  factory Subscription_watchPerson_personsByPk_state.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_state(
      id: stringToUuid(l$id),
      color: (l$color as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final int color;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$color = color;
    _resultData['color'] = l$color;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_state) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_state
    on Subscription_watchPerson_personsByPk_state {
  CopyWith_Subscription_watchPerson_personsByPk_state<
          Subscription_watchPerson_personsByPk_state>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_state(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_state<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_state(
    Subscription_watchPerson_personsByPk_state instance,
    TRes Function(Subscription_watchPerson_personsByPk_state) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_state;

  factory CopyWith_Subscription_watchPerson_personsByPk_state.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_state<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_state<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_state(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_state _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_state) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_state(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_state<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_state<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_studyYear {
  Subscription_watchPerson_personsByPk_studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchPerson_personsByPk_studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_studyYear(
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
    if (!(other is Subscription_watchPerson_personsByPk_studyYear) ||
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_studyYear
    on Subscription_watchPerson_personsByPk_studyYear {
  CopyWith_Subscription_watchPerson_personsByPk_studyYear<
          Subscription_watchPerson_personsByPk_studyYear>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_studyYear<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_studyYear(
    Subscription_watchPerson_personsByPk_studyYear instance,
    TRes Function(Subscription_watchPerson_personsByPk_studyYear) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_studyYear;

  factory CopyWith_Subscription_watchPerson_personsByPk_studyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_studyYear<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_studyYear<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_studyYear(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_studyYear _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_studyYear(
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

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_studyYear<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_studyYear<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_hobbies {
  Subscription_watchPerson_personsByPk_hobbies({
    required this.hobby,
    this.$__typename = 'PersonsHobbies',
  });

  factory Subscription_watchPerson_personsByPk_hobbies.fromJson(
      Map<String, dynamic> json) {
    final l$hobby = json['hobby'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_hobbies(
      hobby: Subscription_watchPerson_personsByPk_hobbies_hobby.fromJson(
          (l$hobby as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_hobbies_hobby hobby;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hobby = hobby;
    _resultData['hobby'] = l$hobby.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hobby = hobby;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hobby,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_hobbies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (l$hobby != lOther$hobby) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_hobbies
    on Subscription_watchPerson_personsByPk_hobbies {
  CopyWith_Subscription_watchPerson_personsByPk_hobbies<
          Subscription_watchPerson_personsByPk_hobbies>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_hobbies<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_hobbies(
    Subscription_watchPerson_personsByPk_hobbies instance,
    TRes Function(Subscription_watchPerson_personsByPk_hobbies) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_hobbies;

  factory CopyWith_Subscription_watchPerson_personsByPk_hobbies.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_hobbies;

  TRes call({
    Subscription_watchPerson_personsByPk_hobbies_hobby? hobby,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes> get hobby;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_hobbies<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_hobbies<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_hobbies(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_hobbies _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_hobbies(
        hobby: hobby == _undefined || hobby == null
            ? _instance.hobby
            : (hobby as Subscription_watchPerson_personsByPk_hobbies_hobby),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby(
        local$hobby, (e) => call(hobby: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_hobbies<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_hobbies<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_hobbies(this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_hobbies_hobby? hobby,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes> get hobby =>
      CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby.stub(_res);
}

class Subscription_watchPerson_personsByPk_hobbies_hobby {
  Subscription_watchPerson_personsByPk_hobbies_hobby({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Hobbies',
  });

  factory Subscription_watchPerson_personsByPk_hobbies_hobby.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_hobbies_hobby(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_hobbies_hobby) ||
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
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_hobbies_hobby
    on Subscription_watchPerson_personsByPk_hobbies_hobby {
  CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<
          Subscription_watchPerson_personsByPk_hobbies_hobby>
      get copyWith =>
          CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<
    TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby(
    Subscription_watchPerson_personsByPk_hobbies_hobby instance,
    TRes Function(Subscription_watchPerson_personsByPk_hobbies_hobby) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_hobbies_hobby;

  factory CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_hobbies_hobby;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_hobbies_hobby(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_hobbies_hobby _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_hobbies_hobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_hobbies_hobby(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes>
    implements
        CopyWith_Subscription_watchPerson_personsByPk_hobbies_hobby<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_hobbies_hobby(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_tags {
  Subscription_watchPerson_personsByPk_tags({
    required this.tag,
    this.$__typename = 'PersonsTags',
  });

  factory Subscription_watchPerson_personsByPk_tags.fromJson(
      Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_tags(
      tag: Subscription_watchPerson_personsByPk_tags_tag.fromJson(
          (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchPerson_personsByPk_tags_tag tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tag = tag;
    _resultData['tag'] = l$tag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_tags
    on Subscription_watchPerson_personsByPk_tags {
  CopyWith_Subscription_watchPerson_personsByPk_tags<
          Subscription_watchPerson_personsByPk_tags>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_tags<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_tags(
    Subscription_watchPerson_personsByPk_tags instance,
    TRes Function(Subscription_watchPerson_personsByPk_tags) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_tags;

  factory CopyWith_Subscription_watchPerson_personsByPk_tags.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_tags;

  TRes call({
    Subscription_watchPerson_personsByPk_tags_tag? tag,
    String? $__typename,
  });
  CopyWith_Subscription_watchPerson_personsByPk_tags_tag<TRes> get tag;
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_tags<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_tags<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_tags(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_tags _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Subscription_watchPerson_personsByPk_tags_tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Subscription_watchPerson_personsByPk_tags_tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith_Subscription_watchPerson_personsByPk_tags_tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_tags<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_tags<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_tags(this._res);

  TRes _res;

  call({
    Subscription_watchPerson_personsByPk_tags_tag? tag,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Subscription_watchPerson_personsByPk_tags_tag<TRes> get tag =>
      CopyWith_Subscription_watchPerson_personsByPk_tags_tag.stub(_res);
}

class Subscription_watchPerson_personsByPk_tags_tag {
  Subscription_watchPerson_personsByPk_tags_tag({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tags',
  });

  factory Subscription_watchPerson_personsByPk_tags_tag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_tags_tag(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_tags_tag) ||
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
    return true;
  }
}

extension UtilityExtension_Subscription_watchPerson_personsByPk_tags_tag
    on Subscription_watchPerson_personsByPk_tags_tag {
  CopyWith_Subscription_watchPerson_personsByPk_tags_tag<
          Subscription_watchPerson_personsByPk_tags_tag>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_tags_tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_tags_tag<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_tags_tag(
    Subscription_watchPerson_personsByPk_tags_tag instance,
    TRes Function(Subscription_watchPerson_personsByPk_tags_tag) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_tags_tag;

  factory CopyWith_Subscription_watchPerson_personsByPk_tags_tag.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_tags_tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_tags_tag<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_tags_tag<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_tags_tag(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_tags_tag _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_tags_tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_tags_tag(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_tags_tag<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_tags_tag<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_tags_tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchPerson_personsByPk_user {
  Subscription_watchPerson_personsByPk_user({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Subscription_watchPerson_personsByPk_user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Subscription_watchPerson_personsByPk_user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchPerson_personsByPk_user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension_Subscription_watchPerson_personsByPk_user
    on Subscription_watchPerson_personsByPk_user {
  CopyWith_Subscription_watchPerson_personsByPk_user<
          Subscription_watchPerson_personsByPk_user>
      get copyWith => CopyWith_Subscription_watchPerson_personsByPk_user(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchPerson_personsByPk_user<TRes> {
  factory CopyWith_Subscription_watchPerson_personsByPk_user(
    Subscription_watchPerson_personsByPk_user instance,
    TRes Function(Subscription_watchPerson_personsByPk_user) then,
  ) = _CopyWithImpl_Subscription_watchPerson_personsByPk_user;

  factory CopyWith_Subscription_watchPerson_personsByPk_user.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPerson_personsByPk_user;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchPerson_personsByPk_user<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_user<TRes> {
  _CopyWithImpl_Subscription_watchPerson_personsByPk_user(
    this._instance,
    this._then,
  );

  final Subscription_watchPerson_personsByPk_user _instance;

  final TRes Function(Subscription_watchPerson_personsByPk_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchPerson_personsByPk_user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchPerson_personsByPk_user<TRes>
    implements CopyWith_Subscription_watchPerson_personsByPk_user<TRes> {
  _CopyWithStubImpl_Subscription_watchPerson_personsByPk_user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Subscription_personAttendance {
  factory Variables_Subscription_personAttendance({
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
    List<Input_HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_personAttendance._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_personAttendance._(this._$data);

  factory Variables_Subscription_personAttendance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input_HistoryAttendanceHistoryOrderBy.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int);
    }
    return Variables_Subscription_personAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryAttendanceHistoryBoolExp>?);

  List<Input_HistoryAttendanceHistoryOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HistoryAttendanceHistoryOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = (l$limit as int);
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_personAttendance<
          Variables_Subscription_personAttendance>
      get copyWith => CopyWith_Variables_Subscription_personAttendance(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_personAttendance) ||
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
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_personAttendance<TRes> {
  factory CopyWith_Variables_Subscription_personAttendance(
    Variables_Subscription_personAttendance instance,
    TRes Function(Variables_Subscription_personAttendance) then,
  ) = _CopyWithImpl_Variables_Subscription_personAttendance;

  factory CopyWith_Variables_Subscription_personAttendance.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_personAttendance;

  TRes call({
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
    List<Input_HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_personAttendance<TRes>
    implements CopyWith_Variables_Subscription_personAttendance<TRes> {
  _CopyWithImpl_Variables_Subscription_personAttendance(
    this._instance,
    this._then,
  );

  final Variables_Subscription_personAttendance _instance;

  final TRes Function(Variables_Subscription_personAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_personAttendance._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_HistoryAttendanceHistoryBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_HistoryAttendanceHistoryOrderBy>?),
        if (limit != _undefined && limit != null) 'limit': (limit as int),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_personAttendance<TRes>
    implements CopyWith_Variables_Subscription_personAttendance<TRes> {
  _CopyWithStubImpl_Variables_Subscription_personAttendance(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
    List<Input_HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_personAttendance {
  Subscription_personAttendance({required this.historyAttendanceHistory});

  factory Subscription_personAttendance.fromJson(Map<String, dynamic> json) {
    final l$historyAttendanceHistory = json['historyAttendanceHistory'];
    return Subscription_personAttendance(
        historyAttendanceHistory: (l$historyAttendanceHistory as List<dynamic>)
            .map((e) => Fragment_AttendanceHistory.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_AttendanceHistory> historyAttendanceHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyAttendanceHistory = historyAttendanceHistory;
    _resultData['historyAttendanceHistory'] =
        l$historyAttendanceHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyAttendanceHistory = historyAttendanceHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyAttendanceHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_personAttendance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyAttendanceHistory = historyAttendanceHistory;
    final lOther$historyAttendanceHistory = other.historyAttendanceHistory;
    if (l$historyAttendanceHistory.length !=
        lOther$historyAttendanceHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyAttendanceHistory.length; i++) {
      final l$historyAttendanceHistory$entry = l$historyAttendanceHistory[i];
      final lOther$historyAttendanceHistory$entry =
          lOther$historyAttendanceHistory[i];
      if (l$historyAttendanceHistory$entry !=
          lOther$historyAttendanceHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_personAttendance
    on Subscription_personAttendance {
  CopyWith_Subscription_personAttendance<Subscription_personAttendance>
      get copyWith => CopyWith_Subscription_personAttendance(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_personAttendance<TRes> {
  factory CopyWith_Subscription_personAttendance(
    Subscription_personAttendance instance,
    TRes Function(Subscription_personAttendance) then,
  ) = _CopyWithImpl_Subscription_personAttendance;

  factory CopyWith_Subscription_personAttendance.stub(TRes res) =
      _CopyWithStubImpl_Subscription_personAttendance;

  TRes call({List<Fragment_AttendanceHistory>? historyAttendanceHistory});
  TRes historyAttendanceHistory(
      Iterable<Fragment_AttendanceHistory> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceHistory<
                      Fragment_AttendanceHistory>>)
          _fn);
}

class _CopyWithImpl_Subscription_personAttendance<TRes>
    implements CopyWith_Subscription_personAttendance<TRes> {
  _CopyWithImpl_Subscription_personAttendance(
    this._instance,
    this._then,
  );

  final Subscription_personAttendance _instance;

  final TRes Function(Subscription_personAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyAttendanceHistory = _undefined}) =>
      _then(Subscription_personAttendance(
          historyAttendanceHistory: historyAttendanceHistory == _undefined ||
                  historyAttendanceHistory == null
              ? _instance.historyAttendanceHistory
              : (historyAttendanceHistory
                  as List<Fragment_AttendanceHistory>)));

  TRes historyAttendanceHistory(
          Iterable<Fragment_AttendanceHistory> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceHistory<
                          Fragment_AttendanceHistory>>)
              _fn) =>
      call(
          historyAttendanceHistory: _fn(_instance.historyAttendanceHistory
              .map((e) => CopyWith_Fragment_AttendanceHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_personAttendance<TRes>
    implements CopyWith_Subscription_personAttendance<TRes> {
  _CopyWithStubImpl_Subscription_personAttendance(this._res);

  TRes _res;

  call({List<Fragment_AttendanceHistory>? historyAttendanceHistory}) => _res;

  historyAttendanceHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonAttendance = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personAttendance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryAttendanceHistoryBoolExp'),
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
            name: NameNode(value: 'HistoryAttendanceHistoryOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'time'),
            value: EnumValueNode(name: NameNode(value: 'DESC')),
          )
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyAttendanceHistory'),
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
            name: NameNode(value: 'AttendanceHistory'),
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
  fragmentDefinitionAttendanceHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);
