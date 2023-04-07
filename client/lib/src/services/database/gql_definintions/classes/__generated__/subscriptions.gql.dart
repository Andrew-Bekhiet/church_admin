import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
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

  static const _undefined = <dynamic, dynamic>{};

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

  static const _undefined = <dynamic, dynamic>{};

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

class Variables$Subscription$watchClass {
  factory Variables$Subscription$watchClass({required UuidValue id}) =>
      Variables$Subscription$watchClass._({
        r'id': id,
      });

  Variables$Subscription$watchClass._(this._$data);

  factory Variables$Subscription$watchClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchClass._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchClass<Variables$Subscription$watchClass>
      get copyWith => CopyWith$Variables$Subscription$watchClass(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchClass) ||
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

abstract class CopyWith$Variables$Subscription$watchClass<TRes> {
  factory CopyWith$Variables$Subscription$watchClass(
    Variables$Subscription$watchClass instance,
    TRes Function(Variables$Subscription$watchClass) then,
  ) = _CopyWithImpl$Variables$Subscription$watchClass;

  factory CopyWith$Variables$Subscription$watchClass.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchClass;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchClass<TRes>
    implements CopyWith$Variables$Subscription$watchClass<TRes> {
  _CopyWithImpl$Variables$Subscription$watchClass(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchClass _instance;

  final TRes Function(Variables$Subscription$watchClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchClass._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchClass<TRes>
    implements CopyWith$Variables$Subscription$watchClass<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchClass(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchClass {
  Subscription$watchClass({this.classesByPk});

  factory Subscription$watchClass.fromJson(Map<String, dynamic> json) {
    final l$classesByPk = json['classesByPk'];
    return Subscription$watchClass(
        classesByPk: l$classesByPk == null
            ? null
            : Subscription$watchClass$classesByPk.fromJson(
                (l$classesByPk as Map<String, dynamic>)));
  }

  final Subscription$watchClass$classesByPk? classesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classesByPk = classesByPk;
    _resultData['classesByPk'] = l$classesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classesByPk = classesByPk;
    return Object.hashAll([l$classesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classesByPk = classesByPk;
    final lOther$classesByPk = other.classesByPk;
    if (l$classesByPk != lOther$classesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchClass on Subscription$watchClass {
  CopyWith$Subscription$watchClass<Subscription$watchClass> get copyWith =>
      CopyWith$Subscription$watchClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchClass<TRes> {
  factory CopyWith$Subscription$watchClass(
    Subscription$watchClass instance,
    TRes Function(Subscription$watchClass) then,
  ) = _CopyWithImpl$Subscription$watchClass;

  factory CopyWith$Subscription$watchClass.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchClass;

  TRes call({Subscription$watchClass$classesByPk? classesByPk});
  CopyWith$Subscription$watchClass$classesByPk<TRes> get classesByPk;
}

class _CopyWithImpl$Subscription$watchClass<TRes>
    implements CopyWith$Subscription$watchClass<TRes> {
  _CopyWithImpl$Subscription$watchClass(
    this._instance,
    this._then,
  );

  final Subscription$watchClass _instance;

  final TRes Function(Subscription$watchClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classesByPk = _undefined}) =>
      _then(Subscription$watchClass(
          classesByPk: classesByPk == _undefined
              ? _instance.classesByPk
              : (classesByPk as Subscription$watchClass$classesByPk?)));
  CopyWith$Subscription$watchClass$classesByPk<TRes> get classesByPk {
    final local$classesByPk = _instance.classesByPk;
    return local$classesByPk == null
        ? CopyWith$Subscription$watchClass$classesByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchClass$classesByPk(
            local$classesByPk, (e) => call(classesByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchClass<TRes>
    implements CopyWith$Subscription$watchClass<TRes> {
  _CopyWithStubImpl$Subscription$watchClass(this._res);

  TRes _res;

  call({Subscription$watchClass$classesByPk? classesByPk}) => _res;
  CopyWith$Subscription$watchClass$classesByPk<TRes> get classesByPk =>
      CopyWith$Subscription$watchClass$classesByPk.stub(_res);
}

const documentNodeSubscriptionwatchClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchClass'),
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
        name: NameNode(value: 'classesByPk'),
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
            name: NameNode(value: 'Class'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'service'),
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
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'serviceGender'),
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
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Subscription$watchClass$classesByPk
    implements Fragment$Class, Fragment$ClassNoPhoto {
  Subscription$watchClass$classesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    required this.service,
    this.lastEdit,
    required this.serviceGender,
    required this.studyYear,
    required this.adminUsers,
  });

  factory Subscription$watchClass$classesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    final l$lastEdit = json['lastEdit'];
    final l$serviceGender = json['serviceGender'];
    final l$studyYear = json['studyYear'];
    final l$adminUsers = json['adminUsers'];
    return Subscription$watchClass$classesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service: Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      lastEdit: (l$lastEdit as Json?),
      serviceGender: (l$serviceGender as bool),
      studyYear: Subscription$watchClass$classesByPk$studyYear.fromJson(
          (l$studyYear as Map<String, dynamic>)),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map((e) => Subscription$watchClass$classesByPk$adminUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$Service service;

  final Json? lastEdit;

  final bool serviceGender;

  final Subscription$watchClass$classesByPk$studyYear studyYear;

  final List<Subscription$watchClass$classesByPk$adminUsers> adminUsers;

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
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear.toJson();
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$lastEdit = lastEdit;
    final l$serviceGender = serviceGender;
    final l$studyYear = studyYear;
    final l$adminUsers = adminUsers;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$service,
      l$lastEdit,
      l$serviceGender,
      l$studyYear,
      Object.hashAll(l$adminUsers.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchClass$classesByPk) ||
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
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
    return true;
  }
}

extension UtilityExtension$Subscription$watchClass$classesByPk
    on Subscription$watchClass$classesByPk {
  CopyWith$Subscription$watchClass$classesByPk<
          Subscription$watchClass$classesByPk>
      get copyWith => CopyWith$Subscription$watchClass$classesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchClass$classesByPk<TRes> {
  factory CopyWith$Subscription$watchClass$classesByPk(
    Subscription$watchClass$classesByPk instance,
    TRes Function(Subscription$watchClass$classesByPk) then,
  ) = _CopyWithImpl$Subscription$watchClass$classesByPk;

  factory CopyWith$Subscription$watchClass$classesByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchClass$classesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$Service? service,
    Json? lastEdit,
    bool? serviceGender,
    Subscription$watchClass$classesByPk$studyYear? studyYear,
    List<Subscription$watchClass$classesByPk$adminUsers>? adminUsers,
  });
  CopyWith$Fragment$Service<TRes> get service;
  CopyWith$Subscription$watchClass$classesByPk$studyYear<TRes> get studyYear;
  TRes adminUsers(
      Iterable<Subscription$watchClass$classesByPk$adminUsers> Function(
              Iterable<
                  CopyWith$Subscription$watchClass$classesByPk$adminUsers<
                      Subscription$watchClass$classesByPk$adminUsers>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchClass$classesByPk<TRes>
    implements CopyWith$Subscription$watchClass$classesByPk<TRes> {
  _CopyWithImpl$Subscription$watchClass$classesByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchClass$classesByPk _instance;

  final TRes Function(Subscription$watchClass$classesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? lastEdit = _undefined,
    Object? serviceGender = _undefined,
    Object? studyYear = _undefined,
    Object? adminUsers = _undefined,
  }) =>
      _then(Subscription$watchClass$classesByPk(
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
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Fragment$Service),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        serviceGender: serviceGender == _undefined || serviceGender == null
            ? _instance.serviceGender
            : (serviceGender as bool),
        studyYear: studyYear == _undefined || studyYear == null
            ? _instance.studyYear
            : (studyYear as Subscription$watchClass$classesByPk$studyYear),
        adminUsers: adminUsers == _undefined || adminUsers == null
            ? _instance.adminUsers
            : (adminUsers
                as List<Subscription$watchClass$classesByPk$adminUsers>),
      ));
  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Fragment$Service(local$service, (e) => call(service: e));
  }

  CopyWith$Subscription$watchClass$classesByPk$studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return CopyWith$Subscription$watchClass$classesByPk$studyYear(
        local$studyYear, (e) => call(studyYear: e));
  }

  TRes adminUsers(
          Iterable<Subscription$watchClass$classesByPk$adminUsers> Function(
                  Iterable<
                      CopyWith$Subscription$watchClass$classesByPk$adminUsers<
                          Subscription$watchClass$classesByPk$adminUsers>>)
              _fn) =>
      call(
          adminUsers: _fn(_instance.adminUsers.map(
              (e) => CopyWith$Subscription$watchClass$classesByPk$adminUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchClass$classesByPk<TRes>
    implements CopyWith$Subscription$watchClass$classesByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchClass$classesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$Service? service,
    Json? lastEdit,
    bool? serviceGender,
    Subscription$watchClass$classesByPk$studyYear? studyYear,
    List<Subscription$watchClass$classesByPk$adminUsers>? adminUsers,
  }) =>
      _res;
  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);
  CopyWith$Subscription$watchClass$classesByPk$studyYear<TRes> get studyYear =>
      CopyWith$Subscription$watchClass$classesByPk$studyYear.stub(_res);
  adminUsers(_fn) => _res;
}

class Subscription$watchClass$classesByPk$studyYear {
  Subscription$watchClass$classesByPk$studyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription$watchClass$classesByPk$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchClass$classesByPk$studyYear(
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
    if (!(other is Subscription$watchClass$classesByPk$studyYear) ||
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

extension UtilityExtension$Subscription$watchClass$classesByPk$studyYear
    on Subscription$watchClass$classesByPk$studyYear {
  CopyWith$Subscription$watchClass$classesByPk$studyYear<
          Subscription$watchClass$classesByPk$studyYear>
      get copyWith => CopyWith$Subscription$watchClass$classesByPk$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchClass$classesByPk$studyYear<TRes> {
  factory CopyWith$Subscription$watchClass$classesByPk$studyYear(
    Subscription$watchClass$classesByPk$studyYear instance,
    TRes Function(Subscription$watchClass$classesByPk$studyYear) then,
  ) = _CopyWithImpl$Subscription$watchClass$classesByPk$studyYear;

  factory CopyWith$Subscription$watchClass$classesByPk$studyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchClass$classesByPk$studyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchClass$classesByPk$studyYear<TRes>
    implements CopyWith$Subscription$watchClass$classesByPk$studyYear<TRes> {
  _CopyWithImpl$Subscription$watchClass$classesByPk$studyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchClass$classesByPk$studyYear _instance;

  final TRes Function(Subscription$watchClass$classesByPk$studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchClass$classesByPk$studyYear(
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

class _CopyWithStubImpl$Subscription$watchClass$classesByPk$studyYear<TRes>
    implements CopyWith$Subscription$watchClass$classesByPk$studyYear<TRes> {
  _CopyWithStubImpl$Subscription$watchClass$classesByPk$studyYear(this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchClass$classesByPk$adminUsers {
  Subscription$watchClass$classesByPk$adminUsers({
    required this.user,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Subscription$watchClass$classesByPk$adminUsers.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$watchClass$classesByPk$adminUsers(
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
    if (!(other is Subscription$watchClass$classesByPk$adminUsers) ||
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

extension UtilityExtension$Subscription$watchClass$classesByPk$adminUsers
    on Subscription$watchClass$classesByPk$adminUsers {
  CopyWith$Subscription$watchClass$classesByPk$adminUsers<
          Subscription$watchClass$classesByPk$adminUsers>
      get copyWith => CopyWith$Subscription$watchClass$classesByPk$adminUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchClass$classesByPk$adminUsers<TRes> {
  factory CopyWith$Subscription$watchClass$classesByPk$adminUsers(
    Subscription$watchClass$classesByPk$adminUsers instance,
    TRes Function(Subscription$watchClass$classesByPk$adminUsers) then,
  ) = _CopyWithImpl$Subscription$watchClass$classesByPk$adminUsers;

  factory CopyWith$Subscription$watchClass$classesByPk$adminUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchClass$classesByPk$adminUsers;

  TRes call({
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Subscription$watchClass$classesByPk$adminUsers<TRes>
    implements CopyWith$Subscription$watchClass$classesByPk$adminUsers<TRes> {
  _CopyWithImpl$Subscription$watchClass$classesByPk$adminUsers(
    this._instance,
    this._then,
  );

  final Subscription$watchClass$classesByPk$adminUsers _instance;

  final TRes Function(Subscription$watchClass$classesByPk$adminUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchClass$classesByPk$adminUsers(
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

class _CopyWithStubImpl$Subscription$watchClass$classesByPk$adminUsers<TRes>
    implements CopyWith$Subscription$watchClass$classesByPk$adminUsers<TRes> {
  _CopyWithStubImpl$Subscription$watchClass$classesByPk$adminUsers(this._res);

  TRes _res;

  call({
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}
