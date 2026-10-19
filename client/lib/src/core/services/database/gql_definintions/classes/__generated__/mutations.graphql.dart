import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createClass {
  factory Variables_Mutation_createClass({
    required Input_CreateClassInput input,
  }) => Variables_Mutation_createClass._({r'input': input});

  Variables_Mutation_createClass._(this._$data);

  factory Variables_Mutation_createClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateClassInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createClass._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateClassInput get input =>
      (_$data['input'] as Input_CreateClassInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createClass<Variables_Mutation_createClass>
  get copyWith => CopyWith_Variables_Mutation_createClass(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createClass ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createClass<TRes> {
  factory CopyWith_Variables_Mutation_createClass(
    Variables_Mutation_createClass instance,
    TRes Function(Variables_Mutation_createClass) then,
  ) = _CopyWithImpl_Variables_Mutation_createClass;

  factory CopyWith_Variables_Mutation_createClass.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createClass;

  TRes call({Input_CreateClassInput? input});
}

class _CopyWithImpl_Variables_Mutation_createClass<TRes>
    implements CopyWith_Variables_Mutation_createClass<TRes> {
  _CopyWithImpl_Variables_Mutation_createClass(this._instance, this._then);

  final Variables_Mutation_createClass _instance;

  final TRes Function(Variables_Mutation_createClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createClass._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateClassInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createClass<TRes>
    implements CopyWith_Variables_Mutation_createClass<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createClass(this._res);

  TRes _res;

  call({Input_CreateClassInput? input}) => _res;
}

class Mutation_createClass {
  Mutation_createClass({
    this.createClass,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createClass.fromJson(Map<String, dynamic> json) {
    final l$createClass = json['createClass'];
    final l$$__typename = json['__typename'];
    return Mutation_createClass(
      createClass: l$createClass == null
          ? null
          : Mutation_createClass_createClass.fromJson(
              (l$createClass as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createClass_createClass? createClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createClass = createClass;
    _resultData['createClass'] = l$createClass?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createClass = createClass;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createClass, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createClass || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createClass = createClass;
    final lOther$createClass = other.createClass;
    if (l$createClass != lOther$createClass) {
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

extension UtilityExtension_Mutation_createClass on Mutation_createClass {
  CopyWith_Mutation_createClass<Mutation_createClass> get copyWith =>
      CopyWith_Mutation_createClass(this, (i) => i);
}

abstract class CopyWith_Mutation_createClass<TRes> {
  factory CopyWith_Mutation_createClass(
    Mutation_createClass instance,
    TRes Function(Mutation_createClass) then,
  ) = _CopyWithImpl_Mutation_createClass;

  factory CopyWith_Mutation_createClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createClass;

  TRes call({
    Mutation_createClass_createClass? createClass,
    String? $__typename,
  });
  CopyWith_Mutation_createClass_createClass<TRes> get createClass;
}

class _CopyWithImpl_Mutation_createClass<TRes>
    implements CopyWith_Mutation_createClass<TRes> {
  _CopyWithImpl_Mutation_createClass(this._instance, this._then);

  final Mutation_createClass _instance;

  final TRes Function(Mutation_createClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createClass = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createClass(
      createClass: createClass == _undefined
          ? _instance.createClass
          : (createClass as Mutation_createClass_createClass?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createClass_createClass<TRes> get createClass {
    final local$createClass = _instance.createClass;
    return local$createClass == null
        ? CopyWith_Mutation_createClass_createClass.stub(_then(_instance))
        : CopyWith_Mutation_createClass_createClass(
            local$createClass,
            (e) => call(createClass: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createClass<TRes>
    implements CopyWith_Mutation_createClass<TRes> {
  _CopyWithStubImpl_Mutation_createClass(this._res);

  TRes _res;

  call({Mutation_createClass_createClass? createClass, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createClass_createClass<TRes> get createClass =>
      CopyWith_Mutation_createClass_createClass.stub(_res);
}

const documentNodeMutationcreateClass = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createClass'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateClassInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'ClassDetails'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionClassDetails,
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
  ],
);

class Mutation_createClass_createClass {
  Mutation_createClass_createClass({
    this.result,
    this.$__typename = 'CreateClassResult',
  });

  factory Mutation_createClass_createClass.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createClass_createClass(
      result: l$result == null
          ? null
          : Fragment_ClassDetails.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ClassDetails? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createClass_createClass ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_createClass_createClass
    on Mutation_createClass_createClass {
  CopyWith_Mutation_createClass_createClass<Mutation_createClass_createClass>
  get copyWith => CopyWith_Mutation_createClass_createClass(this, (i) => i);
}

abstract class CopyWith_Mutation_createClass_createClass<TRes> {
  factory CopyWith_Mutation_createClass_createClass(
    Mutation_createClass_createClass instance,
    TRes Function(Mutation_createClass_createClass) then,
  ) = _CopyWithImpl_Mutation_createClass_createClass;

  factory CopyWith_Mutation_createClass_createClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createClass_createClass;

  TRes call({Fragment_ClassDetails? result, String? $__typename});
  CopyWith_Fragment_ClassDetails<TRes> get result;
}

class _CopyWithImpl_Mutation_createClass_createClass<TRes>
    implements CopyWith_Mutation_createClass_createClass<TRes> {
  _CopyWithImpl_Mutation_createClass_createClass(this._instance, this._then);

  final Mutation_createClass_createClass _instance;

  final TRes Function(Mutation_createClass_createClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createClass_createClass(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_ClassDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ClassDetails<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_ClassDetails.stub(_then(_instance))
        : CopyWith_Fragment_ClassDetails(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createClass_createClass<TRes>
    implements CopyWith_Mutation_createClass_createClass<TRes> {
  _CopyWithStubImpl_Mutation_createClass_createClass(this._res);

  TRes _res;

  call({Fragment_ClassDetails? result, String? $__typename}) => _res;

  CopyWith_Fragment_ClassDetails<TRes> get result =>
      CopyWith_Fragment_ClassDetails.stub(_res);
}

class Variables_Mutation_updateClass {
  factory Variables_Mutation_updateClass({
    required String id,
    Input_UpdateClassInput? input,
  }) => Variables_Mutation_updateClass._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateClass._(this._$data);

  factory Variables_Mutation_updateClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateClassInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateClassInput? get input =>
      (_$data['input'] as Input_UpdateClassInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateClass<Variables_Mutation_updateClass>
  get copyWith => CopyWith_Variables_Mutation_updateClass(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateClass ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      _$data.containsKey('input') ? l$input : const {},
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

  TRes call({String? id, Input_UpdateClassInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateClass<TRes>
    implements CopyWith_Variables_Mutation_updateClass<TRes> {
  _CopyWithImpl_Variables_Mutation_updateClass(this._instance, this._then);

  final Variables_Mutation_updateClass _instance;

  final TRes Function(Variables_Mutation_updateClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateClass._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateClassInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateClass<TRes>
    implements CopyWith_Variables_Mutation_updateClass<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateClass(this._res);

  TRes _res;

  call({String? id, Input_UpdateClassInput? input}) => _res;
}

class Mutation_updateClass {
  Mutation_updateClass({
    this.updateClass,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateClass.fromJson(Map<String, dynamic> json) {
    final l$updateClass = json['updateClass'];
    final l$$__typename = json['__typename'];
    return Mutation_updateClass(
      updateClass: l$updateClass == null
          ? null
          : Mutation_updateClass_updateClass.fromJson(
              (l$updateClass as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateClass_updateClass? updateClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateClass = updateClass;
    _resultData['updateClass'] = l$updateClass?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateClass = updateClass;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateClass, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateClass || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateClass = updateClass;
    final lOther$updateClass = other.updateClass;
    if (l$updateClass != lOther$updateClass) {
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
      CopyWith_Mutation_updateClass(this, (i) => i);
}

abstract class CopyWith_Mutation_updateClass<TRes> {
  factory CopyWith_Mutation_updateClass(
    Mutation_updateClass instance,
    TRes Function(Mutation_updateClass) then,
  ) = _CopyWithImpl_Mutation_updateClass;

  factory CopyWith_Mutation_updateClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateClass;

  TRes call({
    Mutation_updateClass_updateClass? updateClass,
    String? $__typename,
  });
  CopyWith_Mutation_updateClass_updateClass<TRes> get updateClass;
}

class _CopyWithImpl_Mutation_updateClass<TRes>
    implements CopyWith_Mutation_updateClass<TRes> {
  _CopyWithImpl_Mutation_updateClass(this._instance, this._then);

  final Mutation_updateClass _instance;

  final TRes Function(Mutation_updateClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateClass = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateClass(
      updateClass: updateClass == _undefined
          ? _instance.updateClass
          : (updateClass as Mutation_updateClass_updateClass?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateClass_updateClass<TRes> get updateClass {
    final local$updateClass = _instance.updateClass;
    return local$updateClass == null
        ? CopyWith_Mutation_updateClass_updateClass.stub(_then(_instance))
        : CopyWith_Mutation_updateClass_updateClass(
            local$updateClass,
            (e) => call(updateClass: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateClass<TRes>
    implements CopyWith_Mutation_updateClass<TRes> {
  _CopyWithStubImpl_Mutation_updateClass(this._res);

  TRes _res;

  call({Mutation_updateClass_updateClass? updateClass, String? $__typename}) =>
      _res;

  CopyWith_Mutation_updateClass_updateClass<TRes> get updateClass =>
      CopyWith_Mutation_updateClass_updateClass.stub(_res);
}

const documentNodeMutationupdateClass = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateClass'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateClassInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'ClassDetails'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionClassDetails,
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
  ],
);

class Mutation_updateClass_updateClass {
  Mutation_updateClass_updateClass({
    this.result,
    this.$__typename = 'UpdateClassResult',
  });

  factory Mutation_updateClass_updateClass.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateClass_updateClass(
      result: l$result == null
          ? null
          : Fragment_ClassDetails.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ClassDetails? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateClass_updateClass ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_updateClass_updateClass
    on Mutation_updateClass_updateClass {
  CopyWith_Mutation_updateClass_updateClass<Mutation_updateClass_updateClass>
  get copyWith => CopyWith_Mutation_updateClass_updateClass(this, (i) => i);
}

abstract class CopyWith_Mutation_updateClass_updateClass<TRes> {
  factory CopyWith_Mutation_updateClass_updateClass(
    Mutation_updateClass_updateClass instance,
    TRes Function(Mutation_updateClass_updateClass) then,
  ) = _CopyWithImpl_Mutation_updateClass_updateClass;

  factory CopyWith_Mutation_updateClass_updateClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateClass_updateClass;

  TRes call({Fragment_ClassDetails? result, String? $__typename});
  CopyWith_Fragment_ClassDetails<TRes> get result;
}

class _CopyWithImpl_Mutation_updateClass_updateClass<TRes>
    implements CopyWith_Mutation_updateClass_updateClass<TRes> {
  _CopyWithImpl_Mutation_updateClass_updateClass(this._instance, this._then);

  final Mutation_updateClass_updateClass _instance;

  final TRes Function(Mutation_updateClass_updateClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateClass_updateClass(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_ClassDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ClassDetails<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_ClassDetails.stub(_then(_instance))
        : CopyWith_Fragment_ClassDetails(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateClass_updateClass<TRes>
    implements CopyWith_Mutation_updateClass_updateClass<TRes> {
  _CopyWithStubImpl_Mutation_updateClass_updateClass(this._res);

  TRes _res;

  call({Fragment_ClassDetails? result, String? $__typename}) => _res;

  CopyWith_Fragment_ClassDetails<TRes> get result =>
      CopyWith_Fragment_ClassDetails.stub(_res);
}

class Variables_Mutation_deleteClass {
  factory Variables_Mutation_deleteClass({required String id}) =>
      Variables_Mutation_deleteClass._({r'id': id});

  Variables_Mutation_deleteClass._(this._$data);

  factory Variables_Mutation_deleteClass.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteClass._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteClass<Variables_Mutation_deleteClass>
  get copyWith => CopyWith_Variables_Mutation_deleteClass(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteClass ||
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

abstract class CopyWith_Variables_Mutation_deleteClass<TRes> {
  factory CopyWith_Variables_Mutation_deleteClass(
    Variables_Mutation_deleteClass instance,
    TRes Function(Variables_Mutation_deleteClass) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteClass;

  factory CopyWith_Variables_Mutation_deleteClass.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteClass;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteClass<TRes>
    implements CopyWith_Variables_Mutation_deleteClass<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteClass(this._instance, this._then);

  final Variables_Mutation_deleteClass _instance;

  final TRes Function(Variables_Mutation_deleteClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteClass._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteClass<TRes>
    implements CopyWith_Variables_Mutation_deleteClass<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteClass(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteClass {
  Mutation_deleteClass({
    this.deleteClass,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteClass.fromJson(Map<String, dynamic> json) {
    final l$deleteClass = json['deleteClass'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteClass(
      deleteClass: l$deleteClass == null
          ? null
          : Mutation_deleteClass_deleteClass.fromJson(
              (l$deleteClass as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteClass_deleteClass? deleteClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteClass = deleteClass;
    _resultData['deleteClass'] = l$deleteClass?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteClass = deleteClass;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteClass, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteClass || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteClass = deleteClass;
    final lOther$deleteClass = other.deleteClass;
    if (l$deleteClass != lOther$deleteClass) {
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
      CopyWith_Mutation_deleteClass(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteClass<TRes> {
  factory CopyWith_Mutation_deleteClass(
    Mutation_deleteClass instance,
    TRes Function(Mutation_deleteClass) then,
  ) = _CopyWithImpl_Mutation_deleteClass;

  factory CopyWith_Mutation_deleteClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteClass;

  TRes call({
    Mutation_deleteClass_deleteClass? deleteClass,
    String? $__typename,
  });
  CopyWith_Mutation_deleteClass_deleteClass<TRes> get deleteClass;
}

class _CopyWithImpl_Mutation_deleteClass<TRes>
    implements CopyWith_Mutation_deleteClass<TRes> {
  _CopyWithImpl_Mutation_deleteClass(this._instance, this._then);

  final Mutation_deleteClass _instance;

  final TRes Function(Mutation_deleteClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteClass = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteClass(
      deleteClass: deleteClass == _undefined
          ? _instance.deleteClass
          : (deleteClass as Mutation_deleteClass_deleteClass?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteClass_deleteClass<TRes> get deleteClass {
    final local$deleteClass = _instance.deleteClass;
    return local$deleteClass == null
        ? CopyWith_Mutation_deleteClass_deleteClass.stub(_then(_instance))
        : CopyWith_Mutation_deleteClass_deleteClass(
            local$deleteClass,
            (e) => call(deleteClass: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteClass<TRes>
    implements CopyWith_Mutation_deleteClass<TRes> {
  _CopyWithStubImpl_Mutation_deleteClass(this._res);

  TRes _res;

  call({Mutation_deleteClass_deleteClass? deleteClass, String? $__typename}) =>
      _res;

  CopyWith_Mutation_deleteClass_deleteClass<TRes> get deleteClass =>
      CopyWith_Mutation_deleteClass_deleteClass.stub(_res);
}

const documentNodeMutationdeleteClass = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteClass'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteClass'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'ClassWithStudyYears'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
  ],
);

class Mutation_deleteClass_deleteClass {
  Mutation_deleteClass_deleteClass({
    this.result,
    this.$__typename = 'DeleteClassResult',
  });

  factory Mutation_deleteClass_deleteClass.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteClass_deleteClass(
      result: l$result == null
          ? null
          : Fragment_ClassWithStudyYears.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ClassWithStudyYears? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteClass_deleteClass ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_deleteClass_deleteClass
    on Mutation_deleteClass_deleteClass {
  CopyWith_Mutation_deleteClass_deleteClass<Mutation_deleteClass_deleteClass>
  get copyWith => CopyWith_Mutation_deleteClass_deleteClass(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteClass_deleteClass<TRes> {
  factory CopyWith_Mutation_deleteClass_deleteClass(
    Mutation_deleteClass_deleteClass instance,
    TRes Function(Mutation_deleteClass_deleteClass) then,
  ) = _CopyWithImpl_Mutation_deleteClass_deleteClass;

  factory CopyWith_Mutation_deleteClass_deleteClass.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteClass_deleteClass;

  TRes call({Fragment_ClassWithStudyYears? result, String? $__typename});
  CopyWith_Fragment_ClassWithStudyYears<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteClass_deleteClass<TRes>
    implements CopyWith_Mutation_deleteClass_deleteClass<TRes> {
  _CopyWithImpl_Mutation_deleteClass_deleteClass(this._instance, this._then);

  final Mutation_deleteClass_deleteClass _instance;

  final TRes Function(Mutation_deleteClass_deleteClass) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteClass_deleteClass(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_ClassWithStudyYears?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ClassWithStudyYears<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_ClassWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ClassWithStudyYears(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteClass_deleteClass<TRes>
    implements CopyWith_Mutation_deleteClass_deleteClass<TRes> {
  _CopyWithStubImpl_Mutation_deleteClass_deleteClass(this._res);

  TRes _res;

  call({Fragment_ClassWithStudyYears? result, String? $__typename}) => _res;

  CopyWith_Fragment_ClassWithStudyYears<TRes> get result =>
      CopyWith_Fragment_ClassWithStudyYears.stub(_res);
}
