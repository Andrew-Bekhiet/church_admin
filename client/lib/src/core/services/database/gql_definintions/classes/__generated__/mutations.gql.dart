import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteClass {
  factory Variables_Mutation_deleteClass({required UuidValue classId}) =>
      Variables_Mutation_deleteClass._({
        r'classId': classId,
      });

  Variables_Mutation_deleteClass._(this._$data);

  factory Variables_Mutation_deleteClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = stringToUuid(l$classId);
    return Variables_Mutation_deleteClass._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get classId => (_$data['classId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = uuidToString(l$classId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteClass<Variables_Mutation_deleteClass>
      get copyWith => CopyWith_Variables_Mutation_deleteClass(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_deleteClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    return Object.hashAll([l$classId]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteClass<TRes> {
  factory CopyWith_Variables_Mutation_deleteClass(
    Variables_Mutation_deleteClass instance,
    TRes Function(Variables_Mutation_deleteClass) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteClass;

  factory CopyWith_Variables_Mutation_deleteClass.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteClass;

  TRes call({UuidValue? classId});
}

class _CopyWithImpl_Variables_Mutation_deleteClass<TRes>
    implements CopyWith_Variables_Mutation_deleteClass<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteClass(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteClass _instance;

  final TRes Function(Variables_Mutation_deleteClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classId = _undefined}) =>
      _then(Variables_Mutation_deleteClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_deleteClass<TRes>
    implements CopyWith_Variables_Mutation_deleteClass<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteClass(this._res);

  TRes _res;

  call({UuidValue? classId}) => _res;
}

class Mutation_deleteClass {
  Mutation_deleteClass({
    this.deleteClassesByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteClass.fromJson(Map<String, dynamic> json) {
    final l$deleteClassesByPk = json['deleteClassesByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteClass(
      deleteClassesByPk: l$deleteClassesByPk == null
          ? null
          : Fragment_Class.fromJson(
              (l$deleteClassesByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Class? deleteClassesByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteClassesByPk = deleteClassesByPk;
    _resultData['deleteClassesByPk'] = l$deleteClassesByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteClassesByPk = deleteClassesByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteClassesByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_deleteClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteClassesByPk = deleteClassesByPk;
    final lOther$deleteClassesByPk = other.deleteClassesByPk;
    if (l$deleteClassesByPk != lOther$deleteClassesByPk) {
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

extension UtilityExtension_Mutation_deleteClass on Mutation_deleteClass {
  CopyWith_Mutation_deleteClass<Mutation_deleteClass> get copyWith =>
      CopyWith_Mutation_deleteClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_deleteClass<TRes> {
  factory CopyWith_Mutation_deleteClass(
    Mutation_deleteClass instance,
    TRes Function(Mutation_deleteClass) then,
  ) = _CopyWithImpl_Mutation_deleteClass;

  factory CopyWith_Mutation_deleteClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteClass;

  TRes call({
    Fragment_Class? deleteClassesByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Class<TRes> get deleteClassesByPk;
}

class _CopyWithImpl_Mutation_deleteClass<TRes>
    implements CopyWith_Mutation_deleteClass<TRes> {
  _CopyWithImpl_Mutation_deleteClass(
    this._instance,
    this._then,
  );

  final Mutation_deleteClass _instance;

  final TRes Function(Mutation_deleteClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteClassesByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_deleteClass(
        deleteClassesByPk: deleteClassesByPk == _undefined
            ? _instance.deleteClassesByPk
            : (deleteClassesByPk as Fragment_Class?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Class<TRes> get deleteClassesByPk {
    final local$deleteClassesByPk = _instance.deleteClassesByPk;
    return local$deleteClassesByPk == null
        ? CopyWith_Fragment_Class.stub(_then(_instance))
        : CopyWith_Fragment_Class(
            local$deleteClassesByPk, (e) => call(deleteClassesByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteClass<TRes>
    implements CopyWith_Mutation_deleteClass<TRes> {
  _CopyWithStubImpl_Mutation_deleteClass(this._res);

  TRes _res;

  call({
    Fragment_Class? deleteClassesByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Class<TRes> get deleteClassesByPk =>
      CopyWith_Fragment_Class.stub(_res);
}

const documentNodeMutationdeleteClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
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
        name: NameNode(value: 'deleteClassesByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'classId')),
          )
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
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
]);

class Variables_Mutation_insertClass {
  factory Variables_Mutation_insertClass(
          {required Input_ClassesInsertInput newClass}) =>
      Variables_Mutation_insertClass._({
        r'newClass': newClass,
      });

  Variables_Mutation_insertClass._(this._$data);

  factory Variables_Mutation_insertClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newClass = data['newClass'];
    result$data['newClass'] =
        Input_ClassesInsertInput.fromJson((l$newClass as Map<String, dynamic>));
    return Variables_Mutation_insertClass._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesInsertInput get newClass =>
      (_$data['newClass'] as Input_ClassesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newClass = newClass;
    result$data['newClass'] = l$newClass.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertClass<Variables_Mutation_insertClass>
      get copyWith => CopyWith_Variables_Mutation_insertClass(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newClass = newClass;
    final lOther$newClass = other.newClass;
    if (l$newClass != lOther$newClass) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newClass = newClass;
    return Object.hashAll([l$newClass]);
  }
}

abstract class CopyWith_Variables_Mutation_insertClass<TRes> {
  factory CopyWith_Variables_Mutation_insertClass(
    Variables_Mutation_insertClass instance,
    TRes Function(Variables_Mutation_insertClass) then,
  ) = _CopyWithImpl_Variables_Mutation_insertClass;

  factory CopyWith_Variables_Mutation_insertClass.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertClass;

  TRes call({Input_ClassesInsertInput? newClass});
}

class _CopyWithImpl_Variables_Mutation_insertClass<TRes>
    implements CopyWith_Variables_Mutation_insertClass<TRes> {
  _CopyWithImpl_Variables_Mutation_insertClass(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertClass _instance;

  final TRes Function(Variables_Mutation_insertClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newClass = _undefined}) =>
      _then(Variables_Mutation_insertClass._({
        ..._instance._$data,
        if (newClass != _undefined && newClass != null)
          'newClass': (newClass as Input_ClassesInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertClass<TRes>
    implements CopyWith_Variables_Mutation_insertClass<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertClass(this._res);

  TRes _res;

  call({Input_ClassesInsertInput? newClass}) => _res;
}

class Mutation_insertClass {
  Mutation_insertClass({
    this.insertClassesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertClass.fromJson(Map<String, dynamic> json) {
    final l$insertClassesOne = json['insertClassesOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertClass(
      insertClassesOne: l$insertClassesOne == null
          ? null
          : Fragment_Class.fromJson(
              (l$insertClassesOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Class? insertClassesOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertClassesOne = insertClassesOne;
    _resultData['insertClassesOne'] = l$insertClassesOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertClassesOne = insertClassesOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertClassesOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertClassesOne = insertClassesOne;
    final lOther$insertClassesOne = other.insertClassesOne;
    if (l$insertClassesOne != lOther$insertClassesOne) {
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

extension UtilityExtension_Mutation_insertClass on Mutation_insertClass {
  CopyWith_Mutation_insertClass<Mutation_insertClass> get copyWith =>
      CopyWith_Mutation_insertClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertClass<TRes> {
  factory CopyWith_Mutation_insertClass(
    Mutation_insertClass instance,
    TRes Function(Mutation_insertClass) then,
  ) = _CopyWithImpl_Mutation_insertClass;

  factory CopyWith_Mutation_insertClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertClass;

  TRes call({
    Fragment_Class? insertClassesOne,
    String? $__typename,
  });
  CopyWith_Fragment_Class<TRes> get insertClassesOne;
}

class _CopyWithImpl_Mutation_insertClass<TRes>
    implements CopyWith_Mutation_insertClass<TRes> {
  _CopyWithImpl_Mutation_insertClass(
    this._instance,
    this._then,
  );

  final Mutation_insertClass _instance;

  final TRes Function(Mutation_insertClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertClassesOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertClass(
        insertClassesOne: insertClassesOne == _undefined
            ? _instance.insertClassesOne
            : (insertClassesOne as Fragment_Class?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Class<TRes> get insertClassesOne {
    final local$insertClassesOne = _instance.insertClassesOne;
    return local$insertClassesOne == null
        ? CopyWith_Fragment_Class.stub(_then(_instance))
        : CopyWith_Fragment_Class(
            local$insertClassesOne, (e) => call(insertClassesOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertClass<TRes>
    implements CopyWith_Mutation_insertClass<TRes> {
  _CopyWithStubImpl_Mutation_insertClass(this._res);

  TRes _res;

  call({
    Fragment_Class? insertClassesOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Class<TRes> get insertClassesOne =>
      CopyWith_Fragment_Class.stub(_res);
}

const documentNodeMutationinsertClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newClass')),
        type: NamedTypeNode(
          name: NameNode(value: 'ClassesInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertClassesOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newClass')),
          )
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
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
]);

class Variables_Mutation_updateClass {
  factory Variables_Mutation_updateClass({
    required UuidValue classId,
    required Input_ClassesSetInput newClass,
  }) =>
      Variables_Mutation_updateClass._({
        r'classId': classId,
        r'newClass': newClass,
      });

  Variables_Mutation_updateClass._(this._$data);

  factory Variables_Mutation_updateClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$classId = data['classId'];
    result$data['classId'] = stringToUuid(l$classId);
    final l$newClass = data['newClass'];
    result$data['newClass'] =
        Input_ClassesSetInput.fromJson((l$newClass as Map<String, dynamic>));
    return Variables_Mutation_updateClass._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get classId => (_$data['classId'] as UuidValue);

  Input_ClassesSetInput get newClass =>
      (_$data['newClass'] as Input_ClassesSetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$classId = classId;
    result$data['classId'] = uuidToString(l$classId);
    final l$newClass = newClass;
    result$data['newClass'] = l$newClass.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_updateClass<Variables_Mutation_updateClass>
      get copyWith => CopyWith_Variables_Mutation_updateClass(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_updateClass) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classId = classId;
    final lOther$classId = other.classId;
    if (l$classId != lOther$classId) {
      return false;
    }
    final l$newClass = newClass;
    final lOther$newClass = other.newClass;
    if (l$newClass != lOther$newClass) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classId = classId;
    final l$newClass = newClass;
    return Object.hashAll([
      l$classId,
      l$newClass,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateClass<TRes> {
  factory CopyWith_Variables_Mutation_updateClass(
    Variables_Mutation_updateClass instance,
    TRes Function(Variables_Mutation_updateClass) then,
  ) = _CopyWithImpl_Variables_Mutation_updateClass;

  factory CopyWith_Variables_Mutation_updateClass.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateClass;

  TRes call({
    UuidValue? classId,
    Input_ClassesSetInput? newClass,
  });
}

class _CopyWithImpl_Variables_Mutation_updateClass<TRes>
    implements CopyWith_Variables_Mutation_updateClass<TRes> {
  _CopyWithImpl_Variables_Mutation_updateClass(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateClass _instance;

  final TRes Function(Variables_Mutation_updateClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classId = _undefined,
    Object? newClass = _undefined,
  }) =>
      _then(Variables_Mutation_updateClass._({
        ..._instance._$data,
        if (classId != _undefined && classId != null)
          'classId': (classId as UuidValue),
        if (newClass != _undefined && newClass != null)
          'newClass': (newClass as Input_ClassesSetInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updateClass<TRes>
    implements CopyWith_Variables_Mutation_updateClass<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateClass(this._res);

  TRes _res;

  call({
    UuidValue? classId,
    Input_ClassesSetInput? newClass,
  }) =>
      _res;
}

class Mutation_updateClass {
  Mutation_updateClass({
    this.updateClassesByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateClass.fromJson(Map<String, dynamic> json) {
    final l$updateClassesByPk = json['updateClassesByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_updateClass(
      updateClassesByPk: l$updateClassesByPk == null
          ? null
          : Fragment_Class.fromJson(
              (l$updateClassesByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Class? updateClassesByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateClassesByPk = updateClassesByPk;
    _resultData['updateClassesByPk'] = l$updateClassesByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateClassesByPk = updateClassesByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateClassesByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_updateClass) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateClassesByPk = updateClassesByPk;
    final lOther$updateClassesByPk = other.updateClassesByPk;
    if (l$updateClassesByPk != lOther$updateClassesByPk) {
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

extension UtilityExtension_Mutation_updateClass on Mutation_updateClass {
  CopyWith_Mutation_updateClass<Mutation_updateClass> get copyWith =>
      CopyWith_Mutation_updateClass(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateClass<TRes> {
  factory CopyWith_Mutation_updateClass(
    Mutation_updateClass instance,
    TRes Function(Mutation_updateClass) then,
  ) = _CopyWithImpl_Mutation_updateClass;

  factory CopyWith_Mutation_updateClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateClass;

  TRes call({
    Fragment_Class? updateClassesByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Class<TRes> get updateClassesByPk;
}

class _CopyWithImpl_Mutation_updateClass<TRes>
    implements CopyWith_Mutation_updateClass<TRes> {
  _CopyWithImpl_Mutation_updateClass(
    this._instance,
    this._then,
  );

  final Mutation_updateClass _instance;

  final TRes Function(Mutation_updateClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateClassesByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updateClass(
        updateClassesByPk: updateClassesByPk == _undefined
            ? _instance.updateClassesByPk
            : (updateClassesByPk as Fragment_Class?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Class<TRes> get updateClassesByPk {
    final local$updateClassesByPk = _instance.updateClassesByPk;
    return local$updateClassesByPk == null
        ? CopyWith_Fragment_Class.stub(_then(_instance))
        : CopyWith_Fragment_Class(
            local$updateClassesByPk, (e) => call(updateClassesByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_updateClass<TRes>
    implements CopyWith_Mutation_updateClass<TRes> {
  _CopyWithStubImpl_Mutation_updateClass(this._res);

  TRes _res;

  call({
    Fragment_Class? updateClassesByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Class<TRes> get updateClassesByPk =>
      CopyWith_Fragment_Class.stub(_res);
}

const documentNodeMutationupdateClass = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateClass'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newClass')),
        type: NamedTypeNode(
          name: NameNode(value: 'ClassesSetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateClassesByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pkColumns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'classId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'newClass')),
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
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
]);
