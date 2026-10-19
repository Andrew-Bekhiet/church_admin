import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../groups/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createService {
  factory Variables_Mutation_createService({
    required Input_CreateServiceInput input,
  }) => Variables_Mutation_createService._({r'input': input});

  Variables_Mutation_createService._(this._$data);

  factory Variables_Mutation_createService.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateServiceInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createService._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateServiceInput get input =>
      (_$data['input'] as Input_CreateServiceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createService<Variables_Mutation_createService>
  get copyWith => CopyWith_Variables_Mutation_createService(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createService ||
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

abstract class CopyWith_Variables_Mutation_createService<TRes> {
  factory CopyWith_Variables_Mutation_createService(
    Variables_Mutation_createService instance,
    TRes Function(Variables_Mutation_createService) then,
  ) = _CopyWithImpl_Variables_Mutation_createService;

  factory CopyWith_Variables_Mutation_createService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createService;

  TRes call({Input_CreateServiceInput? input});
}

class _CopyWithImpl_Variables_Mutation_createService<TRes>
    implements CopyWith_Variables_Mutation_createService<TRes> {
  _CopyWithImpl_Variables_Mutation_createService(this._instance, this._then);

  final Variables_Mutation_createService _instance;

  final TRes Function(Variables_Mutation_createService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createService._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateServiceInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createService<TRes>
    implements CopyWith_Variables_Mutation_createService<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createService(this._res);

  TRes _res;

  call({Input_CreateServiceInput? input}) => _res;
}

class Mutation_createService {
  Mutation_createService({
    this.createService,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createService.fromJson(Map<String, dynamic> json) {
    final l$createService = json['createService'];
    final l$$__typename = json['__typename'];
    return Mutation_createService(
      createService: l$createService == null
          ? null
          : Mutation_createService_createService.fromJson(
              (l$createService as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createService_createService? createService;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createService = createService;
    _resultData['createService'] = l$createService?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createService = createService;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createService, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createService = createService;
    final lOther$createService = other.createService;
    if (l$createService != lOther$createService) {
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

extension UtilityExtension_Mutation_createService on Mutation_createService {
  CopyWith_Mutation_createService<Mutation_createService> get copyWith =>
      CopyWith_Mutation_createService(this, (i) => i);
}

abstract class CopyWith_Mutation_createService<TRes> {
  factory CopyWith_Mutation_createService(
    Mutation_createService instance,
    TRes Function(Mutation_createService) then,
  ) = _CopyWithImpl_Mutation_createService;

  factory CopyWith_Mutation_createService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createService;

  TRes call({
    Mutation_createService_createService? createService,
    String? $__typename,
  });
  CopyWith_Mutation_createService_createService<TRes> get createService;
}

class _CopyWithImpl_Mutation_createService<TRes>
    implements CopyWith_Mutation_createService<TRes> {
  _CopyWithImpl_Mutation_createService(this._instance, this._then);

  final Mutation_createService _instance;

  final TRes Function(Mutation_createService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createService = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createService(
      createService: createService == _undefined
          ? _instance.createService
          : (createService as Mutation_createService_createService?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createService_createService<TRes> get createService {
    final local$createService = _instance.createService;
    return local$createService == null
        ? CopyWith_Mutation_createService_createService.stub(_then(_instance))
        : CopyWith_Mutation_createService_createService(
            local$createService,
            (e) => call(createService: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createService<TRes>
    implements CopyWith_Mutation_createService<TRes> {
  _CopyWithStubImpl_Mutation_createService(this._res);

  TRes _res;

  call({
    Mutation_createService_createService? createService,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createService_createService<TRes> get createService =>
      CopyWith_Mutation_createService_createService.stub(_res);
}

const documentNodeMutationcreateService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createService'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateServiceInput'),
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
            name: NameNode(value: 'createService'),
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
                        name: NameNode(value: 'ServiceDetails'),
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
    fragmentDefinitionServiceDetails,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);

class Mutation_createService_createService {
  Mutation_createService_createService({
    this.result,
    this.$__typename = 'CreateServiceResult',
  });

  factory Mutation_createService_createService.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createService_createService(
      result: l$result == null
          ? null
          : Fragment_ServiceDetails.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ServiceDetails? result;

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
    if (other is! Mutation_createService_createService ||
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

extension UtilityExtension_Mutation_createService_createService
    on Mutation_createService_createService {
  CopyWith_Mutation_createService_createService<
    Mutation_createService_createService
  >
  get copyWith => CopyWith_Mutation_createService_createService(this, (i) => i);
}

abstract class CopyWith_Mutation_createService_createService<TRes> {
  factory CopyWith_Mutation_createService_createService(
    Mutation_createService_createService instance,
    TRes Function(Mutation_createService_createService) then,
  ) = _CopyWithImpl_Mutation_createService_createService;

  factory CopyWith_Mutation_createService_createService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createService_createService;

  TRes call({Fragment_ServiceDetails? result, String? $__typename});
  CopyWith_Fragment_ServiceDetails<TRes> get result;
}

class _CopyWithImpl_Mutation_createService_createService<TRes>
    implements CopyWith_Mutation_createService_createService<TRes> {
  _CopyWithImpl_Mutation_createService_createService(
    this._instance,
    this._then,
  );

  final Mutation_createService_createService _instance;

  final TRes Function(Mutation_createService_createService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createService_createService(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_ServiceDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ServiceDetails<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_ServiceDetails.stub(_then(_instance))
        : CopyWith_Fragment_ServiceDetails(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createService_createService<TRes>
    implements CopyWith_Mutation_createService_createService<TRes> {
  _CopyWithStubImpl_Mutation_createService_createService(this._res);

  TRes _res;

  call({Fragment_ServiceDetails? result, String? $__typename}) => _res;

  CopyWith_Fragment_ServiceDetails<TRes> get result =>
      CopyWith_Fragment_ServiceDetails.stub(_res);
}

class Variables_Mutation_updateService {
  factory Variables_Mutation_updateService({
    required String id,
    Input_UpdateServiceInput? input,
  }) => Variables_Mutation_updateService._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateService._(this._$data);

  factory Variables_Mutation_updateService.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateServiceInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateService._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateServiceInput? get input =>
      (_$data['input'] as Input_UpdateServiceInput?);

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

  CopyWith_Variables_Mutation_updateService<Variables_Mutation_updateService>
  get copyWith => CopyWith_Variables_Mutation_updateService(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateService ||
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

abstract class CopyWith_Variables_Mutation_updateService<TRes> {
  factory CopyWith_Variables_Mutation_updateService(
    Variables_Mutation_updateService instance,
    TRes Function(Variables_Mutation_updateService) then,
  ) = _CopyWithImpl_Variables_Mutation_updateService;

  factory CopyWith_Variables_Mutation_updateService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateService;

  TRes call({String? id, Input_UpdateServiceInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateService<TRes>
    implements CopyWith_Variables_Mutation_updateService<TRes> {
  _CopyWithImpl_Variables_Mutation_updateService(this._instance, this._then);

  final Variables_Mutation_updateService _instance;

  final TRes Function(Variables_Mutation_updateService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateService._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateServiceInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateService<TRes>
    implements CopyWith_Variables_Mutation_updateService<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateService(this._res);

  TRes _res;

  call({String? id, Input_UpdateServiceInput? input}) => _res;
}

class Mutation_updateService {
  Mutation_updateService({
    this.updateService,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateService.fromJson(Map<String, dynamic> json) {
    final l$updateService = json['updateService'];
    final l$$__typename = json['__typename'];
    return Mutation_updateService(
      updateService: l$updateService == null
          ? null
          : Mutation_updateService_updateService.fromJson(
              (l$updateService as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateService_updateService? updateService;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateService = updateService;
    _resultData['updateService'] = l$updateService?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateService = updateService;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateService, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateService = updateService;
    final lOther$updateService = other.updateService;
    if (l$updateService != lOther$updateService) {
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

extension UtilityExtension_Mutation_updateService on Mutation_updateService {
  CopyWith_Mutation_updateService<Mutation_updateService> get copyWith =>
      CopyWith_Mutation_updateService(this, (i) => i);
}

abstract class CopyWith_Mutation_updateService<TRes> {
  factory CopyWith_Mutation_updateService(
    Mutation_updateService instance,
    TRes Function(Mutation_updateService) then,
  ) = _CopyWithImpl_Mutation_updateService;

  factory CopyWith_Mutation_updateService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateService;

  TRes call({
    Mutation_updateService_updateService? updateService,
    String? $__typename,
  });
  CopyWith_Mutation_updateService_updateService<TRes> get updateService;
}

class _CopyWithImpl_Mutation_updateService<TRes>
    implements CopyWith_Mutation_updateService<TRes> {
  _CopyWithImpl_Mutation_updateService(this._instance, this._then);

  final Mutation_updateService _instance;

  final TRes Function(Mutation_updateService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateService = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateService(
      updateService: updateService == _undefined
          ? _instance.updateService
          : (updateService as Mutation_updateService_updateService?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateService_updateService<TRes> get updateService {
    final local$updateService = _instance.updateService;
    return local$updateService == null
        ? CopyWith_Mutation_updateService_updateService.stub(_then(_instance))
        : CopyWith_Mutation_updateService_updateService(
            local$updateService,
            (e) => call(updateService: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateService<TRes>
    implements CopyWith_Mutation_updateService<TRes> {
  _CopyWithStubImpl_Mutation_updateService(this._res);

  TRes _res;

  call({
    Mutation_updateService_updateService? updateService,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateService_updateService<TRes> get updateService =>
      CopyWith_Mutation_updateService_updateService.stub(_res);
}

const documentNodeMutationupdateService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateService'),
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
            name: NameNode(value: 'UpdateServiceInput'),
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
            name: NameNode(value: 'updateService'),
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
                        name: NameNode(value: 'ServiceDetails'),
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
    fragmentDefinitionServiceDetails,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);

class Mutation_updateService_updateService {
  Mutation_updateService_updateService({
    this.result,
    this.$__typename = 'UpdateServiceResult',
  });

  factory Mutation_updateService_updateService.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateService_updateService(
      result: l$result == null
          ? null
          : Fragment_ServiceDetails.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ServiceDetails? result;

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
    if (other is! Mutation_updateService_updateService ||
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

extension UtilityExtension_Mutation_updateService_updateService
    on Mutation_updateService_updateService {
  CopyWith_Mutation_updateService_updateService<
    Mutation_updateService_updateService
  >
  get copyWith => CopyWith_Mutation_updateService_updateService(this, (i) => i);
}

abstract class CopyWith_Mutation_updateService_updateService<TRes> {
  factory CopyWith_Mutation_updateService_updateService(
    Mutation_updateService_updateService instance,
    TRes Function(Mutation_updateService_updateService) then,
  ) = _CopyWithImpl_Mutation_updateService_updateService;

  factory CopyWith_Mutation_updateService_updateService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateService_updateService;

  TRes call({Fragment_ServiceDetails? result, String? $__typename});
  CopyWith_Fragment_ServiceDetails<TRes> get result;
}

class _CopyWithImpl_Mutation_updateService_updateService<TRes>
    implements CopyWith_Mutation_updateService_updateService<TRes> {
  _CopyWithImpl_Mutation_updateService_updateService(
    this._instance,
    this._then,
  );

  final Mutation_updateService_updateService _instance;

  final TRes Function(Mutation_updateService_updateService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateService_updateService(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_ServiceDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ServiceDetails<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_ServiceDetails.stub(_then(_instance))
        : CopyWith_Fragment_ServiceDetails(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateService_updateService<TRes>
    implements CopyWith_Mutation_updateService_updateService<TRes> {
  _CopyWithStubImpl_Mutation_updateService_updateService(this._res);

  TRes _res;

  call({Fragment_ServiceDetails? result, String? $__typename}) => _res;

  CopyWith_Fragment_ServiceDetails<TRes> get result =>
      CopyWith_Fragment_ServiceDetails.stub(_res);
}

class Variables_Mutation_deleteService {
  factory Variables_Mutation_deleteService({required String id}) =>
      Variables_Mutation_deleteService._({r'id': id});

  Variables_Mutation_deleteService._(this._$data);

  factory Variables_Mutation_deleteService.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteService._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteService<Variables_Mutation_deleteService>
  get copyWith => CopyWith_Variables_Mutation_deleteService(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteService ||
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

abstract class CopyWith_Variables_Mutation_deleteService<TRes> {
  factory CopyWith_Variables_Mutation_deleteService(
    Variables_Mutation_deleteService instance,
    TRes Function(Variables_Mutation_deleteService) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteService;

  factory CopyWith_Variables_Mutation_deleteService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteService;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteService<TRes>
    implements CopyWith_Variables_Mutation_deleteService<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteService(this._instance, this._then);

  final Variables_Mutation_deleteService _instance;

  final TRes Function(Variables_Mutation_deleteService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteService._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteService<TRes>
    implements CopyWith_Variables_Mutation_deleteService<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteService(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteService {
  Mutation_deleteService({
    this.deleteService,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteService.fromJson(Map<String, dynamic> json) {
    final l$deleteService = json['deleteService'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteService(
      deleteService: l$deleteService == null
          ? null
          : Mutation_deleteService_deleteService.fromJson(
              (l$deleteService as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteService_deleteService? deleteService;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteService = deleteService;
    _resultData['deleteService'] = l$deleteService?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteService = deleteService;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteService, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteService = deleteService;
    final lOther$deleteService = other.deleteService;
    if (l$deleteService != lOther$deleteService) {
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

extension UtilityExtension_Mutation_deleteService on Mutation_deleteService {
  CopyWith_Mutation_deleteService<Mutation_deleteService> get copyWith =>
      CopyWith_Mutation_deleteService(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteService<TRes> {
  factory CopyWith_Mutation_deleteService(
    Mutation_deleteService instance,
    TRes Function(Mutation_deleteService) then,
  ) = _CopyWithImpl_Mutation_deleteService;

  factory CopyWith_Mutation_deleteService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteService;

  TRes call({
    Mutation_deleteService_deleteService? deleteService,
    String? $__typename,
  });
  CopyWith_Mutation_deleteService_deleteService<TRes> get deleteService;
}

class _CopyWithImpl_Mutation_deleteService<TRes>
    implements CopyWith_Mutation_deleteService<TRes> {
  _CopyWithImpl_Mutation_deleteService(this._instance, this._then);

  final Mutation_deleteService _instance;

  final TRes Function(Mutation_deleteService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteService = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteService(
      deleteService: deleteService == _undefined
          ? _instance.deleteService
          : (deleteService as Mutation_deleteService_deleteService?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteService_deleteService<TRes> get deleteService {
    final local$deleteService = _instance.deleteService;
    return local$deleteService == null
        ? CopyWith_Mutation_deleteService_deleteService.stub(_then(_instance))
        : CopyWith_Mutation_deleteService_deleteService(
            local$deleteService,
            (e) => call(deleteService: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteService<TRes>
    implements CopyWith_Mutation_deleteService<TRes> {
  _CopyWithStubImpl_Mutation_deleteService(this._res);

  TRes _res;

  call({
    Mutation_deleteService_deleteService? deleteService,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_deleteService_deleteService<TRes> get deleteService =>
      CopyWith_Mutation_deleteService_deleteService.stub(_res);
}

const documentNodeMutationdeleteService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteService'),
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
            name: NameNode(value: 'deleteService'),
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
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
  ],
);

class Mutation_deleteService_deleteService {
  Mutation_deleteService_deleteService({
    this.result,
    this.$__typename = 'DeleteServiceResult',
  });

  factory Mutation_deleteService_deleteService.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteService_deleteService(
      result: l$result == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ServiceWithStudyYears? result;

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
    if (other is! Mutation_deleteService_deleteService ||
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

extension UtilityExtension_Mutation_deleteService_deleteService
    on Mutation_deleteService_deleteService {
  CopyWith_Mutation_deleteService_deleteService<
    Mutation_deleteService_deleteService
  >
  get copyWith => CopyWith_Mutation_deleteService_deleteService(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteService_deleteService<TRes> {
  factory CopyWith_Mutation_deleteService_deleteService(
    Mutation_deleteService_deleteService instance,
    TRes Function(Mutation_deleteService_deleteService) then,
  ) = _CopyWithImpl_Mutation_deleteService_deleteService;

  factory CopyWith_Mutation_deleteService_deleteService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteService_deleteService;

  TRes call({Fragment_ServiceWithStudyYears? result, String? $__typename});
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteService_deleteService<TRes>
    implements CopyWith_Mutation_deleteService_deleteService<TRes> {
  _CopyWithImpl_Mutation_deleteService_deleteService(
    this._instance,
    this._then,
  );

  final Mutation_deleteService_deleteService _instance;

  final TRes Function(Mutation_deleteService_deleteService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteService_deleteService(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_ServiceWithStudyYears?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteService_deleteService<TRes>
    implements CopyWith_Mutation_deleteService_deleteService<TRes> {
  _CopyWithStubImpl_Mutation_deleteService_deleteService(this._res);

  TRes _res;

  call({Fragment_ServiceWithStudyYears? result, String? $__typename}) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get result =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}
