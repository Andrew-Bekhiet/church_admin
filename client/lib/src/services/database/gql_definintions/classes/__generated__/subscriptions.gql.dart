import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllClasses {
  factory Variables_Subscription_watchAllClasses({
    int? limit,
    List<Input_ClassesOrderBy>? orderBy,
    List<Input_ClassesBoolExp>? where,
  }) =>
      Variables_Subscription_watchAllClasses._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables_Subscription_watchAllClasses._(this._$data);

  factory Variables_Subscription_watchAllClasses.fromJson(
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
              (e) => Input_ClassesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input_ClassesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables_Subscription_watchAllClasses._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  List<Input_ClassesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_ClassesOrderBy>?);

  List<Input_ClassesBoolExp>? get where =>
      (_$data['where'] as List<Input_ClassesBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAllClasses<
          Variables_Subscription_watchAllClasses>
      get copyWith => CopyWith_Variables_Subscription_watchAllClasses(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllClasses) ||
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

abstract class CopyWith_Variables_Subscription_watchAllClasses<TRes> {
  factory CopyWith_Variables_Subscription_watchAllClasses(
    Variables_Subscription_watchAllClasses instance,
    TRes Function(Variables_Subscription_watchAllClasses) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllClasses;

  factory CopyWith_Variables_Subscription_watchAllClasses.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllClasses;

  TRes call({
    int? limit,
    List<Input_ClassesOrderBy>? orderBy,
    List<Input_ClassesBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllClasses<TRes>
    implements CopyWith_Variables_Subscription_watchAllClasses<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllClasses(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllClasses _instance;

  final TRes Function(Variables_Subscription_watchAllClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllClasses._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_ClassesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input_ClassesBoolExp>?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllClasses<TRes>
    implements CopyWith_Variables_Subscription_watchAllClasses<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllClasses(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input_ClassesOrderBy>? orderBy,
    List<Input_ClassesBoolExp>? where,
  }) =>
      _res;
}

class Subscription_watchAllClasses {
  Subscription_watchAllClasses({required this.classes});

  factory Subscription_watchAllClasses.fromJson(Map<String, dynamic> json) {
    final l$classes = json['classes'];
    return Subscription_watchAllClasses(
        classes: (l$classes as List<dynamic>)
            .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_Class> classes;

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
    if (!(other is Subscription_watchAllClasses) ||
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

extension UtilityExtension_Subscription_watchAllClasses
    on Subscription_watchAllClasses {
  CopyWith_Subscription_watchAllClasses<Subscription_watchAllClasses>
      get copyWith => CopyWith_Subscription_watchAllClasses(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllClasses<TRes> {
  factory CopyWith_Subscription_watchAllClasses(
    Subscription_watchAllClasses instance,
    TRes Function(Subscription_watchAllClasses) then,
  ) = _CopyWithImpl_Subscription_watchAllClasses;

  factory CopyWith_Subscription_watchAllClasses.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllClasses;

  TRes call({List<Fragment_Class>? classes});
  TRes classes(
      Iterable<Fragment_Class> Function(
              Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllClasses<TRes>
    implements CopyWith_Subscription_watchAllClasses<TRes> {
  _CopyWithImpl_Subscription_watchAllClasses(
    this._instance,
    this._then,
  );

  final Subscription_watchAllClasses _instance;

  final TRes Function(Subscription_watchAllClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classes = _undefined}) =>
      _then(Subscription_watchAllClasses(
          classes: classes == _undefined || classes == null
              ? _instance.classes
              : (classes as List<Fragment_Class>)));

  TRes classes(
          Iterable<Fragment_Class> Function(
                  Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) => CopyWith_Fragment_Class(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllClasses<TRes>
    implements CopyWith_Subscription_watchAllClasses<TRes> {
  _CopyWithStubImpl_Subscription_watchAllClasses(this._res);

  TRes _res;

  call({List<Fragment_Class>? classes}) => _res;

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

class Variables_Subscription_watchClass {
  factory Variables_Subscription_watchClass({required UuidValue id}) =>
      Variables_Subscription_watchClass._({
        r'id': id,
      });

  Variables_Subscription_watchClass._(this._$data);

  factory Variables_Subscription_watchClass.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchClass._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchClass<Variables_Subscription_watchClass>
      get copyWith => CopyWith_Variables_Subscription_watchClass(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchClass) ||
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

abstract class CopyWith_Variables_Subscription_watchClass<TRes> {
  factory CopyWith_Variables_Subscription_watchClass(
    Variables_Subscription_watchClass instance,
    TRes Function(Variables_Subscription_watchClass) then,
  ) = _CopyWithImpl_Variables_Subscription_watchClass;

  factory CopyWith_Variables_Subscription_watchClass.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchClass;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchClass<TRes>
    implements CopyWith_Variables_Subscription_watchClass<TRes> {
  _CopyWithImpl_Variables_Subscription_watchClass(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchClass _instance;

  final TRes Function(Variables_Subscription_watchClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables_Subscription_watchClass._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchClass<TRes>
    implements CopyWith_Variables_Subscription_watchClass<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchClass(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchClass {
  Subscription_watchClass({this.classesByPk});

  factory Subscription_watchClass.fromJson(Map<String, dynamic> json) {
    final l$classesByPk = json['classesByPk'];
    return Subscription_watchClass(
        classesByPk: l$classesByPk == null
            ? null
            : Subscription_watchClass_classesByPk.fromJson(
                (l$classesByPk as Map<String, dynamic>)));
  }

  final Subscription_watchClass_classesByPk? classesByPk;

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
    if (!(other is Subscription_watchClass) ||
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

extension UtilityExtension_Subscription_watchClass on Subscription_watchClass {
  CopyWith_Subscription_watchClass<Subscription_watchClass> get copyWith =>
      CopyWith_Subscription_watchClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchClass<TRes> {
  factory CopyWith_Subscription_watchClass(
    Subscription_watchClass instance,
    TRes Function(Subscription_watchClass) then,
  ) = _CopyWithImpl_Subscription_watchClass;

  factory CopyWith_Subscription_watchClass.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchClass;

  TRes call({Subscription_watchClass_classesByPk? classesByPk});
  CopyWith_Subscription_watchClass_classesByPk<TRes> get classesByPk;
}

class _CopyWithImpl_Subscription_watchClass<TRes>
    implements CopyWith_Subscription_watchClass<TRes> {
  _CopyWithImpl_Subscription_watchClass(
    this._instance,
    this._then,
  );

  final Subscription_watchClass _instance;

  final TRes Function(Subscription_watchClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classesByPk = _undefined}) =>
      _then(Subscription_watchClass(
          classesByPk: classesByPk == _undefined
              ? _instance.classesByPk
              : (classesByPk as Subscription_watchClass_classesByPk?)));

  CopyWith_Subscription_watchClass_classesByPk<TRes> get classesByPk {
    final local$classesByPk = _instance.classesByPk;
    return local$classesByPk == null
        ? CopyWith_Subscription_watchClass_classesByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchClass_classesByPk(
            local$classesByPk, (e) => call(classesByPk: e));
  }
}

class _CopyWithStubImpl_Subscription_watchClass<TRes>
    implements CopyWith_Subscription_watchClass<TRes> {
  _CopyWithStubImpl_Subscription_watchClass(this._res);

  TRes _res;

  call({Subscription_watchClass_classesByPk? classesByPk}) => _res;

  CopyWith_Subscription_watchClass_classesByPk<TRes> get classesByPk =>
      CopyWith_Subscription_watchClass_classesByPk.stub(_res);
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
                name: NameNode(value: 'ServiceWithStudyYears'),
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
  fragmentDefinitionServiceWithStudyYears,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Subscription_watchClass_classesByPk
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Subscription_watchClass_classesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    this.blurhash,
    required this.service,
    this.lastEdit,
    this.serviceGender,
    required this.studyYear,
    required this.adminUsers,
  });

  factory Subscription_watchClass_classesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$service = json['service'];
    final l$lastEdit = json['lastEdit'];
    final l$serviceGender = json['serviceGender'];
    final l$studyYear = json['studyYear'];
    final l$adminUsers = json['adminUsers'];
    return Subscription_watchClass_classesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      service: Fragment_ServiceWithStudyYears.fromJson(
          (l$service as Map<String, dynamic>)),
      lastEdit: (l$lastEdit as Json?),
      serviceGender: (l$serviceGender as bool?),
      studyYear: Subscription_watchClass_classesByPk_studyYear.fromJson(
          (l$studyYear as Map<String, dynamic>)),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map((e) => Subscription_watchClass_classesByPk_adminUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_ServiceWithStudyYears service;

  final Json? lastEdit;

  final bool? serviceGender;

  final Subscription_watchClass_classesByPk_studyYear studyYear;

  final List<Subscription_watchClass_classesByPk_adminUsers> adminUsers;

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
    final l$blurhash = blurhash;
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
      l$blurhash,
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
    if (!(other is Subscription_watchClass_classesByPk) ||
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

extension UtilityExtension_Subscription_watchClass_classesByPk
    on Subscription_watchClass_classesByPk {
  CopyWith_Subscription_watchClass_classesByPk<
          Subscription_watchClass_classesByPk>
      get copyWith => CopyWith_Subscription_watchClass_classesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchClass_classesByPk<TRes> {
  factory CopyWith_Subscription_watchClass_classesByPk(
    Subscription_watchClass_classesByPk instance,
    TRes Function(Subscription_watchClass_classesByPk) then,
  ) = _CopyWithImpl_Subscription_watchClass_classesByPk;

  factory CopyWith_Subscription_watchClass_classesByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchClass_classesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_ServiceWithStudyYears? service,
    Json? lastEdit,
    bool? serviceGender,
    Subscription_watchClass_classesByPk_studyYear? studyYear,
    List<Subscription_watchClass_classesByPk_adminUsers>? adminUsers,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
  CopyWith_Subscription_watchClass_classesByPk_studyYear<TRes> get studyYear;
  TRes adminUsers(
      Iterable<Subscription_watchClass_classesByPk_adminUsers> Function(
              Iterable<
                  CopyWith_Subscription_watchClass_classesByPk_adminUsers<
                      Subscription_watchClass_classesByPk_adminUsers>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchClass_classesByPk<TRes>
    implements CopyWith_Subscription_watchClass_classesByPk<TRes> {
  _CopyWithImpl_Subscription_watchClass_classesByPk(
    this._instance,
    this._then,
  );

  final Subscription_watchClass_classesByPk _instance;

  final TRes Function(Subscription_watchClass_classesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? service = _undefined,
    Object? lastEdit = _undefined,
    Object? serviceGender = _undefined,
    Object? studyYear = _undefined,
    Object? adminUsers = _undefined,
  }) =>
      _then(Subscription_watchClass_classesByPk(
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
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Fragment_ServiceWithStudyYears),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        serviceGender: serviceGender == _undefined
            ? _instance.serviceGender
            : (serviceGender as bool?),
        studyYear: studyYear == _undefined || studyYear == null
            ? _instance.studyYear
            : (studyYear as Subscription_watchClass_classesByPk_studyYear),
        adminUsers: adminUsers == _undefined || adminUsers == null
            ? _instance.adminUsers
            : (adminUsers
                as List<Subscription_watchClass_classesByPk_adminUsers>),
      ));

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return CopyWith_Fragment_ServiceWithStudyYears(
        local$service, (e) => call(service: e));
  }

  CopyWith_Subscription_watchClass_classesByPk_studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return CopyWith_Subscription_watchClass_classesByPk_studyYear(
        local$studyYear, (e) => call(studyYear: e));
  }

  TRes adminUsers(
          Iterable<Subscription_watchClass_classesByPk_adminUsers> Function(
                  Iterable<
                      CopyWith_Subscription_watchClass_classesByPk_adminUsers<
                          Subscription_watchClass_classesByPk_adminUsers>>)
              _fn) =>
      call(
          adminUsers: _fn(_instance.adminUsers.map(
              (e) => CopyWith_Subscription_watchClass_classesByPk_adminUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchClass_classesByPk<TRes>
    implements CopyWith_Subscription_watchClass_classesByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchClass_classesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_ServiceWithStudyYears? service,
    Json? lastEdit,
    bool? serviceGender,
    Subscription_watchClass_classesByPk_studyYear? studyYear,
    List<Subscription_watchClass_classesByPk_adminUsers>? adminUsers,
  }) =>
      _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);

  CopyWith_Subscription_watchClass_classesByPk_studyYear<TRes> get studyYear =>
      CopyWith_Subscription_watchClass_classesByPk_studyYear.stub(_res);

  adminUsers(_fn) => _res;
}

class Subscription_watchClass_classesByPk_studyYear {
  Subscription_watchClass_classesByPk_studyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchClass_classesByPk_studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchClass_classesByPk_studyYear(
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
    if (!(other is Subscription_watchClass_classesByPk_studyYear) ||
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

extension UtilityExtension_Subscription_watchClass_classesByPk_studyYear
    on Subscription_watchClass_classesByPk_studyYear {
  CopyWith_Subscription_watchClass_classesByPk_studyYear<
          Subscription_watchClass_classesByPk_studyYear>
      get copyWith => CopyWith_Subscription_watchClass_classesByPk_studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchClass_classesByPk_studyYear<TRes> {
  factory CopyWith_Subscription_watchClass_classesByPk_studyYear(
    Subscription_watchClass_classesByPk_studyYear instance,
    TRes Function(Subscription_watchClass_classesByPk_studyYear) then,
  ) = _CopyWithImpl_Subscription_watchClass_classesByPk_studyYear;

  factory CopyWith_Subscription_watchClass_classesByPk_studyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchClass_classesByPk_studyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchClass_classesByPk_studyYear<TRes>
    implements CopyWith_Subscription_watchClass_classesByPk_studyYear<TRes> {
  _CopyWithImpl_Subscription_watchClass_classesByPk_studyYear(
    this._instance,
    this._then,
  );

  final Subscription_watchClass_classesByPk_studyYear _instance;

  final TRes Function(Subscription_watchClass_classesByPk_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchClass_classesByPk_studyYear(
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

class _CopyWithStubImpl_Subscription_watchClass_classesByPk_studyYear<TRes>
    implements CopyWith_Subscription_watchClass_classesByPk_studyYear<TRes> {
  _CopyWithStubImpl_Subscription_watchClass_classesByPk_studyYear(this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchClass_classesByPk_adminUsers {
  Subscription_watchClass_classesByPk_adminUsers({
    required this.user,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Subscription_watchClass_classesByPk_adminUsers.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription_watchClass_classesByPk_adminUsers(
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
    if (!(other is Subscription_watchClass_classesByPk_adminUsers) ||
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

extension UtilityExtension_Subscription_watchClass_classesByPk_adminUsers
    on Subscription_watchClass_classesByPk_adminUsers {
  CopyWith_Subscription_watchClass_classesByPk_adminUsers<
          Subscription_watchClass_classesByPk_adminUsers>
      get copyWith => CopyWith_Subscription_watchClass_classesByPk_adminUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchClass_classesByPk_adminUsers<TRes> {
  factory CopyWith_Subscription_watchClass_classesByPk_adminUsers(
    Subscription_watchClass_classesByPk_adminUsers instance,
    TRes Function(Subscription_watchClass_classesByPk_adminUsers) then,
  ) = _CopyWithImpl_Subscription_watchClass_classesByPk_adminUsers;

  factory CopyWith_Subscription_watchClass_classesByPk_adminUsers.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchClass_classesByPk_adminUsers;

  TRes call({
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Subscription_watchClass_classesByPk_adminUsers<TRes>
    implements CopyWith_Subscription_watchClass_classesByPk_adminUsers<TRes> {
  _CopyWithImpl_Subscription_watchClass_classesByPk_adminUsers(
    this._instance,
    this._then,
  );

  final Subscription_watchClass_classesByPk_adminUsers _instance;

  final TRes Function(Subscription_watchClass_classesByPk_adminUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchClass_classesByPk_adminUsers(
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

class _CopyWithStubImpl_Subscription_watchClass_classesByPk_adminUsers<TRes>
    implements CopyWith_Subscription_watchClass_classesByPk_adminUsers<TRes> {
  _CopyWithStubImpl_Subscription_watchClass_classesByPk_adminUsers(this._res);

  TRes _res;

  call({
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}
