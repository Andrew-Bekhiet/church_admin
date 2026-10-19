import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createArea {
  factory Variables_Mutation_createArea({
    required Input_CreateAreaInput input,
  }) => Variables_Mutation_createArea._({r'input': input});

  Variables_Mutation_createArea._(this._$data);

  factory Variables_Mutation_createArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateAreaInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createArea._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateAreaInput get input => (_$data['input'] as Input_CreateAreaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createArea<Variables_Mutation_createArea>
  get copyWith => CopyWith_Variables_Mutation_createArea(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createArea ||
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

abstract class CopyWith_Variables_Mutation_createArea<TRes> {
  factory CopyWith_Variables_Mutation_createArea(
    Variables_Mutation_createArea instance,
    TRes Function(Variables_Mutation_createArea) then,
  ) = _CopyWithImpl_Variables_Mutation_createArea;

  factory CopyWith_Variables_Mutation_createArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createArea;

  TRes call({Input_CreateAreaInput? input});
}

class _CopyWithImpl_Variables_Mutation_createArea<TRes>
    implements CopyWith_Variables_Mutation_createArea<TRes> {
  _CopyWithImpl_Variables_Mutation_createArea(this._instance, this._then);

  final Variables_Mutation_createArea _instance;

  final TRes Function(Variables_Mutation_createArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createArea._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateAreaInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createArea<TRes>
    implements CopyWith_Variables_Mutation_createArea<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createArea(this._res);

  TRes _res;

  call({Input_CreateAreaInput? input}) => _res;
}

class Mutation_createArea {
  Mutation_createArea({this.createArea, this.$__typename = 'RootMutationType'});

  factory Mutation_createArea.fromJson(Map<String, dynamic> json) {
    final l$createArea = json['createArea'];
    final l$$__typename = json['__typename'];
    return Mutation_createArea(
      createArea: l$createArea == null
          ? null
          : Mutation_createArea_createArea.fromJson(
              (l$createArea as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createArea_createArea? createArea;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createArea = createArea;
    _resultData['createArea'] = l$createArea?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createArea = createArea;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createArea, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createArea || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createArea = createArea;
    final lOther$createArea = other.createArea;
    if (l$createArea != lOther$createArea) {
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

extension UtilityExtension_Mutation_createArea on Mutation_createArea {
  CopyWith_Mutation_createArea<Mutation_createArea> get copyWith =>
      CopyWith_Mutation_createArea(this, (i) => i);
}

abstract class CopyWith_Mutation_createArea<TRes> {
  factory CopyWith_Mutation_createArea(
    Mutation_createArea instance,
    TRes Function(Mutation_createArea) then,
  ) = _CopyWithImpl_Mutation_createArea;

  factory CopyWith_Mutation_createArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createArea;

  TRes call({Mutation_createArea_createArea? createArea, String? $__typename});
  CopyWith_Mutation_createArea_createArea<TRes> get createArea;
}

class _CopyWithImpl_Mutation_createArea<TRes>
    implements CopyWith_Mutation_createArea<TRes> {
  _CopyWithImpl_Mutation_createArea(this._instance, this._then);

  final Mutation_createArea _instance;

  final TRes Function(Mutation_createArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createArea = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createArea(
      createArea: createArea == _undefined
          ? _instance.createArea
          : (createArea as Mutation_createArea_createArea?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createArea_createArea<TRes> get createArea {
    final local$createArea = _instance.createArea;
    return local$createArea == null
        ? CopyWith_Mutation_createArea_createArea.stub(_then(_instance))
        : CopyWith_Mutation_createArea_createArea(
            local$createArea,
            (e) => call(createArea: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createArea<TRes>
    implements CopyWith_Mutation_createArea<TRes> {
  _CopyWithStubImpl_Mutation_createArea(this._res);

  TRes _res;

  call({Mutation_createArea_createArea? createArea, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createArea_createArea<TRes> get createArea =>
      CopyWith_Mutation_createArea_createArea.stub(_res);
}

const documentNodeMutationcreateArea = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createArea'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateAreaInput'),
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
            name: NameNode(value: 'createArea'),
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
                        name: NameNode(value: 'AreaWithBounds'),
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
    fragmentDefinitionAreaWithBounds,
    fragmentDefinitionArea,
  ],
);

class Mutation_createArea_createArea {
  Mutation_createArea_createArea({
    this.result,
    this.$__typename = 'CreateAreaResult',
  });

  factory Mutation_createArea_createArea.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createArea_createArea(
      result: l$result == null
          ? null
          : Fragment_AreaWithBounds.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AreaWithBounds? result;

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
    if (other is! Mutation_createArea_createArea ||
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

extension UtilityExtension_Mutation_createArea_createArea
    on Mutation_createArea_createArea {
  CopyWith_Mutation_createArea_createArea<Mutation_createArea_createArea>
  get copyWith => CopyWith_Mutation_createArea_createArea(this, (i) => i);
}

abstract class CopyWith_Mutation_createArea_createArea<TRes> {
  factory CopyWith_Mutation_createArea_createArea(
    Mutation_createArea_createArea instance,
    TRes Function(Mutation_createArea_createArea) then,
  ) = _CopyWithImpl_Mutation_createArea_createArea;

  factory CopyWith_Mutation_createArea_createArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createArea_createArea;

  TRes call({Fragment_AreaWithBounds? result, String? $__typename});
  CopyWith_Fragment_AreaWithBounds<TRes> get result;
}

class _CopyWithImpl_Mutation_createArea_createArea<TRes>
    implements CopyWith_Mutation_createArea_createArea<TRes> {
  _CopyWithImpl_Mutation_createArea_createArea(this._instance, this._then);

  final Mutation_createArea_createArea _instance;

  final TRes Function(Mutation_createArea_createArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createArea_createArea(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_AreaWithBounds?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_AreaWithBounds<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_AreaWithBounds.stub(_then(_instance))
        : CopyWith_Fragment_AreaWithBounds(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createArea_createArea<TRes>
    implements CopyWith_Mutation_createArea_createArea<TRes> {
  _CopyWithStubImpl_Mutation_createArea_createArea(this._res);

  TRes _res;

  call({Fragment_AreaWithBounds? result, String? $__typename}) => _res;

  CopyWith_Fragment_AreaWithBounds<TRes> get result =>
      CopyWith_Fragment_AreaWithBounds.stub(_res);
}

class Variables_Mutation_updateArea {
  factory Variables_Mutation_updateArea({
    required String id,
    Input_UpdateAreaInput? input,
  }) => Variables_Mutation_updateArea._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateArea._(this._$data);

  factory Variables_Mutation_updateArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateAreaInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateArea._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateAreaInput? get input =>
      (_$data['input'] as Input_UpdateAreaInput?);

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

  CopyWith_Variables_Mutation_updateArea<Variables_Mutation_updateArea>
  get copyWith => CopyWith_Variables_Mutation_updateArea(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateArea ||
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

abstract class CopyWith_Variables_Mutation_updateArea<TRes> {
  factory CopyWith_Variables_Mutation_updateArea(
    Variables_Mutation_updateArea instance,
    TRes Function(Variables_Mutation_updateArea) then,
  ) = _CopyWithImpl_Variables_Mutation_updateArea;

  factory CopyWith_Variables_Mutation_updateArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateArea;

  TRes call({String? id, Input_UpdateAreaInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateArea<TRes>
    implements CopyWith_Variables_Mutation_updateArea<TRes> {
  _CopyWithImpl_Variables_Mutation_updateArea(this._instance, this._then);

  final Variables_Mutation_updateArea _instance;

  final TRes Function(Variables_Mutation_updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateArea._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateAreaInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateArea<TRes>
    implements CopyWith_Variables_Mutation_updateArea<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateArea(this._res);

  TRes _res;

  call({String? id, Input_UpdateAreaInput? input}) => _res;
}

class Mutation_updateArea {
  Mutation_updateArea({this.updateArea, this.$__typename = 'RootMutationType'});

  factory Mutation_updateArea.fromJson(Map<String, dynamic> json) {
    final l$updateArea = json['updateArea'];
    final l$$__typename = json['__typename'];
    return Mutation_updateArea(
      updateArea: l$updateArea == null
          ? null
          : Mutation_updateArea_updateArea.fromJson(
              (l$updateArea as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateArea_updateArea? updateArea;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateArea = updateArea;
    _resultData['updateArea'] = l$updateArea?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateArea = updateArea;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateArea, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateArea || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateArea = updateArea;
    final lOther$updateArea = other.updateArea;
    if (l$updateArea != lOther$updateArea) {
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

extension UtilityExtension_Mutation_updateArea on Mutation_updateArea {
  CopyWith_Mutation_updateArea<Mutation_updateArea> get copyWith =>
      CopyWith_Mutation_updateArea(this, (i) => i);
}

abstract class CopyWith_Mutation_updateArea<TRes> {
  factory CopyWith_Mutation_updateArea(
    Mutation_updateArea instance,
    TRes Function(Mutation_updateArea) then,
  ) = _CopyWithImpl_Mutation_updateArea;

  factory CopyWith_Mutation_updateArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateArea;

  TRes call({Mutation_updateArea_updateArea? updateArea, String? $__typename});
  CopyWith_Mutation_updateArea_updateArea<TRes> get updateArea;
}

class _CopyWithImpl_Mutation_updateArea<TRes>
    implements CopyWith_Mutation_updateArea<TRes> {
  _CopyWithImpl_Mutation_updateArea(this._instance, this._then);

  final Mutation_updateArea _instance;

  final TRes Function(Mutation_updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateArea = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateArea(
      updateArea: updateArea == _undefined
          ? _instance.updateArea
          : (updateArea as Mutation_updateArea_updateArea?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateArea_updateArea<TRes> get updateArea {
    final local$updateArea = _instance.updateArea;
    return local$updateArea == null
        ? CopyWith_Mutation_updateArea_updateArea.stub(_then(_instance))
        : CopyWith_Mutation_updateArea_updateArea(
            local$updateArea,
            (e) => call(updateArea: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateArea<TRes>
    implements CopyWith_Mutation_updateArea<TRes> {
  _CopyWithStubImpl_Mutation_updateArea(this._res);

  TRes _res;

  call({Mutation_updateArea_updateArea? updateArea, String? $__typename}) =>
      _res;

  CopyWith_Mutation_updateArea_updateArea<TRes> get updateArea =>
      CopyWith_Mutation_updateArea_updateArea.stub(_res);
}

const documentNodeMutationupdateArea = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateArea'),
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
            name: NameNode(value: 'UpdateAreaInput'),
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
            name: NameNode(value: 'updateArea'),
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
                        name: NameNode(value: 'AreaWithBounds'),
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
    fragmentDefinitionAreaWithBounds,
    fragmentDefinitionArea,
  ],
);

class Mutation_updateArea_updateArea {
  Mutation_updateArea_updateArea({
    this.result,
    this.$__typename = 'UpdateAreaResult',
  });

  factory Mutation_updateArea_updateArea.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateArea_updateArea(
      result: l$result == null
          ? null
          : Fragment_AreaWithBounds.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AreaWithBounds? result;

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
    if (other is! Mutation_updateArea_updateArea ||
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

extension UtilityExtension_Mutation_updateArea_updateArea
    on Mutation_updateArea_updateArea {
  CopyWith_Mutation_updateArea_updateArea<Mutation_updateArea_updateArea>
  get copyWith => CopyWith_Mutation_updateArea_updateArea(this, (i) => i);
}

abstract class CopyWith_Mutation_updateArea_updateArea<TRes> {
  factory CopyWith_Mutation_updateArea_updateArea(
    Mutation_updateArea_updateArea instance,
    TRes Function(Mutation_updateArea_updateArea) then,
  ) = _CopyWithImpl_Mutation_updateArea_updateArea;

  factory CopyWith_Mutation_updateArea_updateArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateArea_updateArea;

  TRes call({Fragment_AreaWithBounds? result, String? $__typename});
  CopyWith_Fragment_AreaWithBounds<TRes> get result;
}

class _CopyWithImpl_Mutation_updateArea_updateArea<TRes>
    implements CopyWith_Mutation_updateArea_updateArea<TRes> {
  _CopyWithImpl_Mutation_updateArea_updateArea(this._instance, this._then);

  final Mutation_updateArea_updateArea _instance;

  final TRes Function(Mutation_updateArea_updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateArea_updateArea(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_AreaWithBounds?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_AreaWithBounds<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_AreaWithBounds.stub(_then(_instance))
        : CopyWith_Fragment_AreaWithBounds(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateArea_updateArea<TRes>
    implements CopyWith_Mutation_updateArea_updateArea<TRes> {
  _CopyWithStubImpl_Mutation_updateArea_updateArea(this._res);

  TRes _res;

  call({Fragment_AreaWithBounds? result, String? $__typename}) => _res;

  CopyWith_Fragment_AreaWithBounds<TRes> get result =>
      CopyWith_Fragment_AreaWithBounds.stub(_res);
}

class Variables_Mutation_deleteArea {
  factory Variables_Mutation_deleteArea({required String id}) =>
      Variables_Mutation_deleteArea._({r'id': id});

  Variables_Mutation_deleteArea._(this._$data);

  factory Variables_Mutation_deleteArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteArea._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteArea<Variables_Mutation_deleteArea>
  get copyWith => CopyWith_Variables_Mutation_deleteArea(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteArea ||
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

abstract class CopyWith_Variables_Mutation_deleteArea<TRes> {
  factory CopyWith_Variables_Mutation_deleteArea(
    Variables_Mutation_deleteArea instance,
    TRes Function(Variables_Mutation_deleteArea) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteArea;

  factory CopyWith_Variables_Mutation_deleteArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteArea;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteArea<TRes>
    implements CopyWith_Variables_Mutation_deleteArea<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteArea(this._instance, this._then);

  final Variables_Mutation_deleteArea _instance;

  final TRes Function(Variables_Mutation_deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteArea._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteArea<TRes>
    implements CopyWith_Variables_Mutation_deleteArea<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteArea(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteArea {
  Mutation_deleteArea({this.deleteArea, this.$__typename = 'RootMutationType'});

  factory Mutation_deleteArea.fromJson(Map<String, dynamic> json) {
    final l$deleteArea = json['deleteArea'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteArea(
      deleteArea: l$deleteArea == null
          ? null
          : Mutation_deleteArea_deleteArea.fromJson(
              (l$deleteArea as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteArea_deleteArea? deleteArea;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteArea = deleteArea;
    _resultData['deleteArea'] = l$deleteArea?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteArea = deleteArea;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteArea, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteArea || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteArea = deleteArea;
    final lOther$deleteArea = other.deleteArea;
    if (l$deleteArea != lOther$deleteArea) {
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

extension UtilityExtension_Mutation_deleteArea on Mutation_deleteArea {
  CopyWith_Mutation_deleteArea<Mutation_deleteArea> get copyWith =>
      CopyWith_Mutation_deleteArea(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteArea<TRes> {
  factory CopyWith_Mutation_deleteArea(
    Mutation_deleteArea instance,
    TRes Function(Mutation_deleteArea) then,
  ) = _CopyWithImpl_Mutation_deleteArea;

  factory CopyWith_Mutation_deleteArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteArea;

  TRes call({Mutation_deleteArea_deleteArea? deleteArea, String? $__typename});
  CopyWith_Mutation_deleteArea_deleteArea<TRes> get deleteArea;
}

class _CopyWithImpl_Mutation_deleteArea<TRes>
    implements CopyWith_Mutation_deleteArea<TRes> {
  _CopyWithImpl_Mutation_deleteArea(this._instance, this._then);

  final Mutation_deleteArea _instance;

  final TRes Function(Mutation_deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteArea = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteArea(
      deleteArea: deleteArea == _undefined
          ? _instance.deleteArea
          : (deleteArea as Mutation_deleteArea_deleteArea?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteArea_deleteArea<TRes> get deleteArea {
    final local$deleteArea = _instance.deleteArea;
    return local$deleteArea == null
        ? CopyWith_Mutation_deleteArea_deleteArea.stub(_then(_instance))
        : CopyWith_Mutation_deleteArea_deleteArea(
            local$deleteArea,
            (e) => call(deleteArea: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteArea<TRes>
    implements CopyWith_Mutation_deleteArea<TRes> {
  _CopyWithStubImpl_Mutation_deleteArea(this._res);

  TRes _res;

  call({Mutation_deleteArea_deleteArea? deleteArea, String? $__typename}) =>
      _res;

  CopyWith_Mutation_deleteArea_deleteArea<TRes> get deleteArea =>
      CopyWith_Mutation_deleteArea_deleteArea.stub(_res);
}

const documentNodeMutationdeleteArea = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteArea'),
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
            name: NameNode(value: 'deleteArea'),
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
    fragmentDefinitionArea,
  ],
);

class Mutation_deleteArea_deleteArea {
  Mutation_deleteArea_deleteArea({
    this.result,
    this.$__typename = 'DeleteAreaResult',
  });

  factory Mutation_deleteArea_deleteArea.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteArea_deleteArea(
      result: l$result == null
          ? null
          : Fragment_Area.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Area? result;

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
    if (other is! Mutation_deleteArea_deleteArea ||
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

extension UtilityExtension_Mutation_deleteArea_deleteArea
    on Mutation_deleteArea_deleteArea {
  CopyWith_Mutation_deleteArea_deleteArea<Mutation_deleteArea_deleteArea>
  get copyWith => CopyWith_Mutation_deleteArea_deleteArea(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteArea_deleteArea<TRes> {
  factory CopyWith_Mutation_deleteArea_deleteArea(
    Mutation_deleteArea_deleteArea instance,
    TRes Function(Mutation_deleteArea_deleteArea) then,
  ) = _CopyWithImpl_Mutation_deleteArea_deleteArea;

  factory CopyWith_Mutation_deleteArea_deleteArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteArea_deleteArea;

  TRes call({Fragment_Area? result, String? $__typename});
  CopyWith_Fragment_Area<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteArea_deleteArea<TRes>
    implements CopyWith_Mutation_deleteArea_deleteArea<TRes> {
  _CopyWithImpl_Mutation_deleteArea_deleteArea(this._instance, this._then);

  final Mutation_deleteArea_deleteArea _instance;

  final TRes Function(Mutation_deleteArea_deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteArea_deleteArea(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Area?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Area<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteArea_deleteArea<TRes>
    implements CopyWith_Mutation_deleteArea_deleteArea<TRes> {
  _CopyWithStubImpl_Mutation_deleteArea_deleteArea(this._res);

  TRes _res;

  call({Fragment_Area? result, String? $__typename}) => _res;

  CopyWith_Fragment_Area<TRes> get result => CopyWith_Fragment_Area.stub(_res);
}
