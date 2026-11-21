import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_addPersonFingerprintId {
  factory Variables_Mutation_addPersonFingerprintId({
    required UuidValue personId,
    required String employeeCode,
  }) => Variables_Mutation_addPersonFingerprintId._({
    r'personId': personId,
    r'employeeCode': employeeCode,
  });

  Variables_Mutation_addPersonFingerprintId._(this._$data);

  factory Variables_Mutation_addPersonFingerprintId.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$employeeCode = data['employeeCode'];
    result$data['employeeCode'] = (l$employeeCode as String);
    return Variables_Mutation_addPersonFingerprintId._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  String get employeeCode => (_$data['employeeCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$employeeCode = employeeCode;
    result$data['employeeCode'] = l$employeeCode;
    return result$data;
  }

  CopyWith_Variables_Mutation_addPersonFingerprintId<
    Variables_Mutation_addPersonFingerprintId
  >
  get copyWith =>
      CopyWith_Variables_Mutation_addPersonFingerprintId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_addPersonFingerprintId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$employeeCode = employeeCode;
    final lOther$employeeCode = other.employeeCode;
    if (l$employeeCode != lOther$employeeCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$employeeCode = employeeCode;
    return Object.hashAll([l$personId, l$employeeCode]);
  }
}

abstract class CopyWith_Variables_Mutation_addPersonFingerprintId<TRes> {
  factory CopyWith_Variables_Mutation_addPersonFingerprintId(
    Variables_Mutation_addPersonFingerprintId instance,
    TRes Function(Variables_Mutation_addPersonFingerprintId) then,
  ) = _CopyWithImpl_Variables_Mutation_addPersonFingerprintId;

  factory CopyWith_Variables_Mutation_addPersonFingerprintId.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_addPersonFingerprintId;

  TRes call({UuidValue? personId, String? employeeCode});
}

class _CopyWithImpl_Variables_Mutation_addPersonFingerprintId<TRes>
    implements CopyWith_Variables_Mutation_addPersonFingerprintId<TRes> {
  _CopyWithImpl_Variables_Mutation_addPersonFingerprintId(
    this._instance,
    this._then,
  );

  final Variables_Mutation_addPersonFingerprintId _instance;

  final TRes Function(Variables_Mutation_addPersonFingerprintId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? employeeCode = _undefined,
  }) => _then(
    Variables_Mutation_addPersonFingerprintId._({
      ..._instance._$data,
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
      if (employeeCode != _undefined && employeeCode != null)
        'employeeCode': (employeeCode as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_addPersonFingerprintId<TRes>
    implements CopyWith_Variables_Mutation_addPersonFingerprintId<TRes> {
  _CopyWithStubImpl_Variables_Mutation_addPersonFingerprintId(this._res);

  TRes _res;

  call({UuidValue? personId, String? employeeCode}) => _res;
}

class Mutation_addPersonFingerprintId {
  Mutation_addPersonFingerprintId({this.insertPersonsFingerprintIdsOne});

  factory Mutation_addPersonFingerprintId.fromJson(Map<String, dynamic> json) {
    final l$insertPersonsFingerprintIdsOne =
        json['insertPersonsFingerprintIdsOne'];
    return Mutation_addPersonFingerprintId(
      insertPersonsFingerprintIdsOne: l$insertPersonsFingerprintIdsOne == null
          ? null
          : Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne.fromJson(
              (l$insertPersonsFingerprintIdsOne as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne?
  insertPersonsFingerprintIdsOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertPersonsFingerprintIdsOne = insertPersonsFingerprintIdsOne;
    _resultData['insertPersonsFingerprintIdsOne'] =
        l$insertPersonsFingerprintIdsOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertPersonsFingerprintIdsOne = insertPersonsFingerprintIdsOne;
    return Object.hashAll([l$insertPersonsFingerprintIdsOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_addPersonFingerprintId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertPersonsFingerprintIdsOne = insertPersonsFingerprintIdsOne;
    final lOther$insertPersonsFingerprintIdsOne =
        other.insertPersonsFingerprintIdsOne;
    if (l$insertPersonsFingerprintIdsOne !=
        lOther$insertPersonsFingerprintIdsOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_addPersonFingerprintId
    on Mutation_addPersonFingerprintId {
  CopyWith_Mutation_addPersonFingerprintId<Mutation_addPersonFingerprintId>
  get copyWith => CopyWith_Mutation_addPersonFingerprintId(this, (i) => i);
}

abstract class CopyWith_Mutation_addPersonFingerprintId<TRes> {
  factory CopyWith_Mutation_addPersonFingerprintId(
    Mutation_addPersonFingerprintId instance,
    TRes Function(Mutation_addPersonFingerprintId) then,
  ) = _CopyWithImpl_Mutation_addPersonFingerprintId;

  factory CopyWith_Mutation_addPersonFingerprintId.stub(TRes res) =
      _CopyWithStubImpl_Mutation_addPersonFingerprintId;

  TRes call({
    Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne?
    insertPersonsFingerprintIdsOne,
  });
  CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<TRes>
  get insertPersonsFingerprintIdsOne;
}

class _CopyWithImpl_Mutation_addPersonFingerprintId<TRes>
    implements CopyWith_Mutation_addPersonFingerprintId<TRes> {
  _CopyWithImpl_Mutation_addPersonFingerprintId(this._instance, this._then);

  final Mutation_addPersonFingerprintId _instance;

  final TRes Function(Mutation_addPersonFingerprintId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertPersonsFingerprintIdsOne = _undefined}) => _then(
    Mutation_addPersonFingerprintId(
      insertPersonsFingerprintIdsOne:
          insertPersonsFingerprintIdsOne == _undefined
          ? _instance.insertPersonsFingerprintIdsOne
          : (insertPersonsFingerprintIdsOne
                as Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne?),
    ),
  );

  CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<TRes>
  get insertPersonsFingerprintIdsOne {
    final local$insertPersonsFingerprintIdsOne =
        _instance.insertPersonsFingerprintIdsOne;
    return local$insertPersonsFingerprintIdsOne == null
        ? CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
            local$insertPersonsFingerprintIdsOne,
            (e) => call(insertPersonsFingerprintIdsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_addPersonFingerprintId<TRes>
    implements CopyWith_Mutation_addPersonFingerprintId<TRes> {
  _CopyWithStubImpl_Mutation_addPersonFingerprintId(this._res);

  TRes _res;

  call({
    Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne?
    insertPersonsFingerprintIdsOne,
  }) => _res;

  CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<TRes>
  get insertPersonsFingerprintIdsOne =>
      CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne.stub(
        _res,
      );
}

const documentNodeMutationaddPersonFingerprintId = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addPersonFingerprintId'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'employeeCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertPersonsFingerprintIdsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: VariableNode(name: NameNode(value: 'personId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'employeeCode'),
                      value: VariableNode(
                        name: NameNode(value: 'employeeCode'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
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
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);

class Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne {
  Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne({
    required this.id,
    this.$__typename = 'PersonsFingerprintIds',
  });

  factory Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
      id: stringToUuid(l$id),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne
    on Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne {
  CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<
    Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne
  >
  get copyWith =>
      CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<
  TRes
> {
  factory CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
    Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne instance,
    TRes Function(
      Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne,
    )
    then,
  ) = _CopyWithImpl_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne;

  factory CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne;

  TRes call({UuidValue? id, String? $__typename});
}

class _CopyWithImpl_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<
  TRes
>
    implements
        CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<
          TRes
        > {
  _CopyWithImpl_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
    this._instance,
    this._then,
  );

  final Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne
  _instance;

  final TRes Function(
    Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
          id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<
  TRes
>
    implements
        CopyWith_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_addPersonFingerprintId_insertPersonsFingerprintIdsOne(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, String? $__typename}) => _res;
}

class Variables_Mutation_removePersonFingerprintId {
  factory Variables_Mutation_removePersonFingerprintId({
    required UuidValue id,
  }) => Variables_Mutation_removePersonFingerprintId._({r'id': id});

  Variables_Mutation_removePersonFingerprintId._(this._$data);

  factory Variables_Mutation_removePersonFingerprintId.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Mutation_removePersonFingerprintId._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Mutation_removePersonFingerprintId<
    Variables_Mutation_removePersonFingerprintId
  >
  get copyWith =>
      CopyWith_Variables_Mutation_removePersonFingerprintId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_removePersonFingerprintId ||
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

abstract class CopyWith_Variables_Mutation_removePersonFingerprintId<TRes> {
  factory CopyWith_Variables_Mutation_removePersonFingerprintId(
    Variables_Mutation_removePersonFingerprintId instance,
    TRes Function(Variables_Mutation_removePersonFingerprintId) then,
  ) = _CopyWithImpl_Variables_Mutation_removePersonFingerprintId;

  factory CopyWith_Variables_Mutation_removePersonFingerprintId.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_removePersonFingerprintId;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Mutation_removePersonFingerprintId<TRes>
    implements CopyWith_Variables_Mutation_removePersonFingerprintId<TRes> {
  _CopyWithImpl_Variables_Mutation_removePersonFingerprintId(
    this._instance,
    this._then,
  );

  final Variables_Mutation_removePersonFingerprintId _instance;

  final TRes Function(Variables_Mutation_removePersonFingerprintId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_removePersonFingerprintId._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_removePersonFingerprintId<TRes>
    implements CopyWith_Variables_Mutation_removePersonFingerprintId<TRes> {
  _CopyWithStubImpl_Variables_Mutation_removePersonFingerprintId(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Mutation_removePersonFingerprintId {
  Mutation_removePersonFingerprintId({this.deletePersonsFingerprintIdsByPk});

  factory Mutation_removePersonFingerprintId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deletePersonsFingerprintIdsByPk =
        json['deletePersonsFingerprintIdsByPk'];
    return Mutation_removePersonFingerprintId(
      deletePersonsFingerprintIdsByPk: l$deletePersonsFingerprintIdsByPk == null
          ? null
          : Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk.fromJson(
              (l$deletePersonsFingerprintIdsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk?
  deletePersonsFingerprintIdsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePersonsFingerprintIdsByPk = deletePersonsFingerprintIdsByPk;
    _resultData['deletePersonsFingerprintIdsByPk'] =
        l$deletePersonsFingerprintIdsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePersonsFingerprintIdsByPk = deletePersonsFingerprintIdsByPk;
    return Object.hashAll([l$deletePersonsFingerprintIdsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_removePersonFingerprintId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePersonsFingerprintIdsByPk = deletePersonsFingerprintIdsByPk;
    final lOther$deletePersonsFingerprintIdsByPk =
        other.deletePersonsFingerprintIdsByPk;
    if (l$deletePersonsFingerprintIdsByPk !=
        lOther$deletePersonsFingerprintIdsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_removePersonFingerprintId
    on Mutation_removePersonFingerprintId {
  CopyWith_Mutation_removePersonFingerprintId<
    Mutation_removePersonFingerprintId
  >
  get copyWith => CopyWith_Mutation_removePersonFingerprintId(this, (i) => i);
}

abstract class CopyWith_Mutation_removePersonFingerprintId<TRes> {
  factory CopyWith_Mutation_removePersonFingerprintId(
    Mutation_removePersonFingerprintId instance,
    TRes Function(Mutation_removePersonFingerprintId) then,
  ) = _CopyWithImpl_Mutation_removePersonFingerprintId;

  factory CopyWith_Mutation_removePersonFingerprintId.stub(TRes res) =
      _CopyWithStubImpl_Mutation_removePersonFingerprintId;

  TRes call({
    Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk?
    deletePersonsFingerprintIdsByPk,
  });
  CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
    TRes
  >
  get deletePersonsFingerprintIdsByPk;
}

class _CopyWithImpl_Mutation_removePersonFingerprintId<TRes>
    implements CopyWith_Mutation_removePersonFingerprintId<TRes> {
  _CopyWithImpl_Mutation_removePersonFingerprintId(this._instance, this._then);

  final Mutation_removePersonFingerprintId _instance;

  final TRes Function(Mutation_removePersonFingerprintId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deletePersonsFingerprintIdsByPk = _undefined}) => _then(
    Mutation_removePersonFingerprintId(
      deletePersonsFingerprintIdsByPk:
          deletePersonsFingerprintIdsByPk == _undefined
          ? _instance.deletePersonsFingerprintIdsByPk
          : (deletePersonsFingerprintIdsByPk
                as Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk?),
    ),
  );

  CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
    TRes
  >
  get deletePersonsFingerprintIdsByPk {
    final local$deletePersonsFingerprintIdsByPk =
        _instance.deletePersonsFingerprintIdsByPk;
    return local$deletePersonsFingerprintIdsByPk == null
        ? CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
            local$deletePersonsFingerprintIdsByPk,
            (e) => call(deletePersonsFingerprintIdsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_removePersonFingerprintId<TRes>
    implements CopyWith_Mutation_removePersonFingerprintId<TRes> {
  _CopyWithStubImpl_Mutation_removePersonFingerprintId(this._res);

  TRes _res;

  call({
    Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk?
    deletePersonsFingerprintIdsByPk,
  }) => _res;

  CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
    TRes
  >
  get deletePersonsFingerprintIdsByPk =>
      CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk.stub(
        _res,
      );
}

const documentNodeMutationremovePersonFingerprintId = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'removePersonFingerprintId'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deletePersonsFingerprintIdsByPk'),
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
                  name: NameNode(value: 'id'),
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
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);

class Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk {
  Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk({
    required this.id,
    this.$__typename = 'PersonsFingerprintIds',
  });

  factory Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
      id: stringToUuid(l$id),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk
    on Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk {
  CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
    Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk
  >
  get copyWith =>
      CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
  TRes
> {
  factory CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
    Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk instance,
    TRes Function(
      Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk,
    )
    then,
  ) = _CopyWithImpl_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk;

  factory CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk;

  TRes call({UuidValue? id, String? $__typename});
}

class _CopyWithImpl_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
  TRes
>
    implements
        CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
          TRes
        > {
  _CopyWithImpl_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
    this._instance,
    this._then,
  );

  final Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk
  _instance;

  final TRes Function(
    Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
          id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
  TRes
>
    implements
        CopyWith_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk<
          TRes
        > {
  _CopyWithStubImpl_Mutation_removePersonFingerprintId_deletePersonsFingerprintIdsByPk(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, String? $__typename}) => _res;
}
