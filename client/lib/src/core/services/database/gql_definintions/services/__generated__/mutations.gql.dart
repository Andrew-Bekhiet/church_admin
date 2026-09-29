import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteService {
  factory Variables_Mutation_deleteService({required UuidValue serviceId}) =>
      Variables_Mutation_deleteService._({r'serviceId': serviceId});

  Variables_Mutation_deleteService._(this._$data);

  factory Variables_Mutation_deleteService.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = stringToUuid(l$serviceId);
    return Variables_Mutation_deleteService._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get serviceId => (_$data['serviceId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$serviceId = serviceId;
    result$data['serviceId'] = uuidToString(l$serviceId);
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    return Object.hashAll([l$serviceId]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteService<TRes> {
  factory CopyWith_Variables_Mutation_deleteService(
    Variables_Mutation_deleteService instance,
    TRes Function(Variables_Mutation_deleteService) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteService;

  factory CopyWith_Variables_Mutation_deleteService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteService;

  TRes call({UuidValue? serviceId});
}

class _CopyWithImpl_Variables_Mutation_deleteService<TRes>
    implements CopyWith_Variables_Mutation_deleteService<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteService(this._instance, this._then);

  final Variables_Mutation_deleteService _instance;

  final TRes Function(Variables_Mutation_deleteService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceId = _undefined}) => _then(
    Variables_Mutation_deleteService._({
      ..._instance._$data,
      if (serviceId != _undefined && serviceId != null)
        'serviceId': (serviceId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteService<TRes>
    implements CopyWith_Variables_Mutation_deleteService<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteService(this._res);

  TRes _res;

  call({UuidValue? serviceId}) => _res;
}

class Mutation_deleteService {
  Mutation_deleteService({this.deleteServicesByPk});

  factory Mutation_deleteService.fromJson(Map<String, dynamic> json) {
    final l$deleteServicesByPk = json['deleteServicesByPk'];
    return Mutation_deleteService(
      deleteServicesByPk: l$deleteServicesByPk == null
          ? null
          : Fragment_Service.fromJson(
              (l$deleteServicesByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Service? deleteServicesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteServicesByPk = deleteServicesByPk;
    _resultData['deleteServicesByPk'] = l$deleteServicesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteServicesByPk = deleteServicesByPk;
    return Object.hashAll([l$deleteServicesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteServicesByPk = deleteServicesByPk;
    final lOther$deleteServicesByPk = other.deleteServicesByPk;
    if (l$deleteServicesByPk != lOther$deleteServicesByPk) {
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

  TRes call({Fragment_Service? deleteServicesByPk});
  CopyWith_Fragment_Service<TRes> get deleteServicesByPk;
}

class _CopyWithImpl_Mutation_deleteService<TRes>
    implements CopyWith_Mutation_deleteService<TRes> {
  _CopyWithImpl_Mutation_deleteService(this._instance, this._then);

  final Mutation_deleteService _instance;

  final TRes Function(Mutation_deleteService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteServicesByPk = _undefined}) => _then(
    Mutation_deleteService(
      deleteServicesByPk: deleteServicesByPk == _undefined
          ? _instance.deleteServicesByPk
          : (deleteServicesByPk as Fragment_Service?),
    ),
  );

  CopyWith_Fragment_Service<TRes> get deleteServicesByPk {
    final local$deleteServicesByPk = _instance.deleteServicesByPk;
    return local$deleteServicesByPk == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(
            local$deleteServicesByPk,
            (e) => call(deleteServicesByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteService<TRes>
    implements CopyWith_Mutation_deleteService<TRes> {
  _CopyWithStubImpl_Mutation_deleteService(this._res);

  TRes _res;

  call({Fragment_Service? deleteServicesByPk}) => _res;

  CopyWith_Fragment_Service<TRes> get deleteServicesByPk =>
      CopyWith_Fragment_Service.stub(_res);
}

const documentNodeMutationdeleteService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteService'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'serviceId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteServicesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'serviceId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
  ],
);

class Variables_Mutation_insertService {
  factory Variables_Mutation_insertService({
    required Input_ServicesInsertInput newService,
  }) => Variables_Mutation_insertService._({r'newService': newService});

  Variables_Mutation_insertService._(this._$data);

  factory Variables_Mutation_insertService.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newService = data['newService'];
    result$data['newService'] = Input_ServicesInsertInput.fromJson(
      (l$newService as Map<String, dynamic>),
    );
    return Variables_Mutation_insertService._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ServicesInsertInput get newService =>
      (_$data['newService'] as Input_ServicesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newService = newService;
    result$data['newService'] = l$newService.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertService<Variables_Mutation_insertService>
  get copyWith => CopyWith_Variables_Mutation_insertService(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newService = newService;
    final lOther$newService = other.newService;
    if (l$newService != lOther$newService) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newService = newService;
    return Object.hashAll([l$newService]);
  }
}

abstract class CopyWith_Variables_Mutation_insertService<TRes> {
  factory CopyWith_Variables_Mutation_insertService(
    Variables_Mutation_insertService instance,
    TRes Function(Variables_Mutation_insertService) then,
  ) = _CopyWithImpl_Variables_Mutation_insertService;

  factory CopyWith_Variables_Mutation_insertService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertService;

  TRes call({Input_ServicesInsertInput? newService});
}

class _CopyWithImpl_Variables_Mutation_insertService<TRes>
    implements CopyWith_Variables_Mutation_insertService<TRes> {
  _CopyWithImpl_Variables_Mutation_insertService(this._instance, this._then);

  final Variables_Mutation_insertService _instance;

  final TRes Function(Variables_Mutation_insertService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newService = _undefined}) => _then(
    Variables_Mutation_insertService._({
      ..._instance._$data,
      if (newService != _undefined && newService != null)
        'newService': (newService as Input_ServicesInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertService<TRes>
    implements CopyWith_Variables_Mutation_insertService<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertService(this._res);

  TRes _res;

  call({Input_ServicesInsertInput? newService}) => _res;
}

class Mutation_insertService {
  Mutation_insertService({this.insertServicesOne});

  factory Mutation_insertService.fromJson(Map<String, dynamic> json) {
    final l$insertServicesOne = json['insertServicesOne'];
    return Mutation_insertService(
      insertServicesOne: l$insertServicesOne == null
          ? null
          : Fragment_Service.fromJson(
              (l$insertServicesOne as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Service? insertServicesOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertServicesOne = insertServicesOne;
    _resultData['insertServicesOne'] = l$insertServicesOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertServicesOne = insertServicesOne;
    return Object.hashAll([l$insertServicesOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertServicesOne = insertServicesOne;
    final lOther$insertServicesOne = other.insertServicesOne;
    if (l$insertServicesOne != lOther$insertServicesOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_insertService on Mutation_insertService {
  CopyWith_Mutation_insertService<Mutation_insertService> get copyWith =>
      CopyWith_Mutation_insertService(this, (i) => i);
}

abstract class CopyWith_Mutation_insertService<TRes> {
  factory CopyWith_Mutation_insertService(
    Mutation_insertService instance,
    TRes Function(Mutation_insertService) then,
  ) = _CopyWithImpl_Mutation_insertService;

  factory CopyWith_Mutation_insertService.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertService;

  TRes call({Fragment_Service? insertServicesOne});
  CopyWith_Fragment_Service<TRes> get insertServicesOne;
}

class _CopyWithImpl_Mutation_insertService<TRes>
    implements CopyWith_Mutation_insertService<TRes> {
  _CopyWithImpl_Mutation_insertService(this._instance, this._then);

  final Mutation_insertService _instance;

  final TRes Function(Mutation_insertService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertServicesOne = _undefined}) => _then(
    Mutation_insertService(
      insertServicesOne: insertServicesOne == _undefined
          ? _instance.insertServicesOne
          : (insertServicesOne as Fragment_Service?),
    ),
  );

  CopyWith_Fragment_Service<TRes> get insertServicesOne {
    final local$insertServicesOne = _instance.insertServicesOne;
    return local$insertServicesOne == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(
            local$insertServicesOne,
            (e) => call(insertServicesOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertService<TRes>
    implements CopyWith_Mutation_insertService<TRes> {
  _CopyWithStubImpl_Mutation_insertService(this._res);

  TRes _res;

  call({Fragment_Service? insertServicesOne}) => _res;

  CopyWith_Fragment_Service<TRes> get insertServicesOne =>
      CopyWith_Fragment_Service.stub(_res);
}

const documentNodeMutationinsertService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertService'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newService')),
          type: NamedTypeNode(
            name: NameNode(value: 'ServicesInsertInput'),
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
            name: NameNode(value: 'insertServicesOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'newService')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
  ],
);

class Variables_Mutation_updateService {
  factory Variables_Mutation_updateService({
    required UuidValue serviceId,
    required Input_ServicesSetInput newService,
  }) => Variables_Mutation_updateService._({
    r'serviceId': serviceId,
    r'newService': newService,
  });

  Variables_Mutation_updateService._(this._$data);

  factory Variables_Mutation_updateService.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = stringToUuid(l$serviceId);
    final l$newService = data['newService'];
    result$data['newService'] = Input_ServicesSetInput.fromJson(
      (l$newService as Map<String, dynamic>),
    );
    return Variables_Mutation_updateService._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get serviceId => (_$data['serviceId'] as UuidValue);

  Input_ServicesSetInput get newService =>
      (_$data['newService'] as Input_ServicesSetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$serviceId = serviceId;
    result$data['serviceId'] = uuidToString(l$serviceId);
    final l$newService = newService;
    result$data['newService'] = l$newService.toJson();
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$newService = newService;
    final lOther$newService = other.newService;
    if (l$newService != lOther$newService) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    final l$newService = newService;
    return Object.hashAll([l$serviceId, l$newService]);
  }
}

abstract class CopyWith_Variables_Mutation_updateService<TRes> {
  factory CopyWith_Variables_Mutation_updateService(
    Variables_Mutation_updateService instance,
    TRes Function(Variables_Mutation_updateService) then,
  ) = _CopyWithImpl_Variables_Mutation_updateService;

  factory CopyWith_Variables_Mutation_updateService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateService;

  TRes call({UuidValue? serviceId, Input_ServicesSetInput? newService});
}

class _CopyWithImpl_Variables_Mutation_updateService<TRes>
    implements CopyWith_Variables_Mutation_updateService<TRes> {
  _CopyWithImpl_Variables_Mutation_updateService(this._instance, this._then);

  final Variables_Mutation_updateService _instance;

  final TRes Function(Variables_Mutation_updateService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceId = _undefined,
    Object? newService = _undefined,
  }) => _then(
    Variables_Mutation_updateService._({
      ..._instance._$data,
      if (serviceId != _undefined && serviceId != null)
        'serviceId': (serviceId as UuidValue),
      if (newService != _undefined && newService != null)
        'newService': (newService as Input_ServicesSetInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateService<TRes>
    implements CopyWith_Variables_Mutation_updateService<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateService(this._res);

  TRes _res;

  call({UuidValue? serviceId, Input_ServicesSetInput? newService}) => _res;
}

class Mutation_updateService {
  Mutation_updateService({this.updateServicesByPk});

  factory Mutation_updateService.fromJson(Map<String, dynamic> json) {
    final l$updateServicesByPk = json['updateServicesByPk'];
    return Mutation_updateService(
      updateServicesByPk: l$updateServicesByPk == null
          ? null
          : Fragment_Service.fromJson(
              (l$updateServicesByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Service? updateServicesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateServicesByPk = updateServicesByPk;
    _resultData['updateServicesByPk'] = l$updateServicesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateServicesByPk = updateServicesByPk;
    return Object.hashAll([l$updateServicesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateServicesByPk = updateServicesByPk;
    final lOther$updateServicesByPk = other.updateServicesByPk;
    if (l$updateServicesByPk != lOther$updateServicesByPk) {
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

  TRes call({Fragment_Service? updateServicesByPk});
  CopyWith_Fragment_Service<TRes> get updateServicesByPk;
}

class _CopyWithImpl_Mutation_updateService<TRes>
    implements CopyWith_Mutation_updateService<TRes> {
  _CopyWithImpl_Mutation_updateService(this._instance, this._then);

  final Mutation_updateService _instance;

  final TRes Function(Mutation_updateService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateServicesByPk = _undefined}) => _then(
    Mutation_updateService(
      updateServicesByPk: updateServicesByPk == _undefined
          ? _instance.updateServicesByPk
          : (updateServicesByPk as Fragment_Service?),
    ),
  );

  CopyWith_Fragment_Service<TRes> get updateServicesByPk {
    final local$updateServicesByPk = _instance.updateServicesByPk;
    return local$updateServicesByPk == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(
            local$updateServicesByPk,
            (e) => call(updateServicesByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateService<TRes>
    implements CopyWith_Mutation_updateService<TRes> {
  _CopyWithStubImpl_Mutation_updateService(this._res);

  TRes _res;

  call({Fragment_Service? updateServicesByPk}) => _res;

  CopyWith_Fragment_Service<TRes> get updateServicesByPk =>
      CopyWith_Fragment_Service.stub(_res);
}

const documentNodeMutationupdateService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateService'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'serviceId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newService')),
          type: NamedTypeNode(
            name: NameNode(value: 'ServicesSetInput'),
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
            name: NameNode(value: 'updateServicesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'serviceId')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'newService')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
  ],
);
