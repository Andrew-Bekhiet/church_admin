import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_applyPhoneContactChanges {
  factory Variables_Mutation_applyPhoneContactChanges({
    required List<UuidValue> deletedIds,
    required List<Input_ContactsUpdates> updates,
    required List<Input_ContactsInsertInput> inserts,
  }) => Variables_Mutation_applyPhoneContactChanges._({
    r'deletedIds': deletedIds,
    r'updates': updates,
    r'inserts': inserts,
  });

  Variables_Mutation_applyPhoneContactChanges._(this._$data);

  factory Variables_Mutation_applyPhoneContactChanges.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$deletedIds = data['deletedIds'];
    result$data['deletedIds'] = (l$deletedIds as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
    final l$updates = data['updates'];
    result$data['updates'] = (l$updates as List<dynamic>)
        .map((e) => Input_ContactsUpdates.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$inserts = data['inserts'];
    result$data['inserts'] = (l$inserts as List<dynamic>)
        .map(
          (e) =>
              Input_ContactsInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    return Variables_Mutation_applyPhoneContactChanges._(result$data);
  }

  Map<String, dynamic> _$data;

  List<UuidValue> get deletedIds => (_$data['deletedIds'] as List<UuidValue>);

  List<Input_ContactsUpdates> get updates =>
      (_$data['updates'] as List<Input_ContactsUpdates>);

  List<Input_ContactsInsertInput> get inserts =>
      (_$data['inserts'] as List<Input_ContactsInsertInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deletedIds = deletedIds;
    result$data['deletedIds'] = l$deletedIds
        .map((e) => uuidToString(e))
        .toList();
    final l$updates = updates;
    result$data['updates'] = l$updates.map((e) => e.toJson()).toList();
    final l$inserts = inserts;
    result$data['inserts'] = l$inserts.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith_Variables_Mutation_applyPhoneContactChanges<
    Variables_Mutation_applyPhoneContactChanges
  >
  get copyWith =>
      CopyWith_Variables_Mutation_applyPhoneContactChanges(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_applyPhoneContactChanges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletedIds = deletedIds;
    final lOther$deletedIds = other.deletedIds;
    if (l$deletedIds.length != lOther$deletedIds.length) {
      return false;
    }
    for (int i = 0; i < l$deletedIds.length; i++) {
      final l$deletedIds$entry = l$deletedIds[i];
      final lOther$deletedIds$entry = lOther$deletedIds[i];
      if (l$deletedIds$entry != lOther$deletedIds$entry) {
        return false;
      }
    }
    final l$updates = updates;
    final lOther$updates = other.updates;
    if (l$updates.length != lOther$updates.length) {
      return false;
    }
    for (int i = 0; i < l$updates.length; i++) {
      final l$updates$entry = l$updates[i];
      final lOther$updates$entry = lOther$updates[i];
      if (l$updates$entry != lOther$updates$entry) {
        return false;
      }
    }
    final l$inserts = inserts;
    final lOther$inserts = other.inserts;
    if (l$inserts.length != lOther$inserts.length) {
      return false;
    }
    for (int i = 0; i < l$inserts.length; i++) {
      final l$inserts$entry = l$inserts[i];
      final lOther$inserts$entry = lOther$inserts[i];
      if (l$inserts$entry != lOther$inserts$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deletedIds = deletedIds;
    final l$updates = updates;
    final l$inserts = inserts;
    return Object.hashAll([
      Object.hashAll(l$deletedIds.map((v) => v)),
      Object.hashAll(l$updates.map((v) => v)),
      Object.hashAll(l$inserts.map((v) => v)),
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_applyPhoneContactChanges<TRes> {
  factory CopyWith_Variables_Mutation_applyPhoneContactChanges(
    Variables_Mutation_applyPhoneContactChanges instance,
    TRes Function(Variables_Mutation_applyPhoneContactChanges) then,
  ) = _CopyWithImpl_Variables_Mutation_applyPhoneContactChanges;

  factory CopyWith_Variables_Mutation_applyPhoneContactChanges.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_applyPhoneContactChanges;

  TRes call({
    List<UuidValue>? deletedIds,
    List<Input_ContactsUpdates>? updates,
    List<Input_ContactsInsertInput>? inserts,
  });
}

class _CopyWithImpl_Variables_Mutation_applyPhoneContactChanges<TRes>
    implements CopyWith_Variables_Mutation_applyPhoneContactChanges<TRes> {
  _CopyWithImpl_Variables_Mutation_applyPhoneContactChanges(
    this._instance,
    this._then,
  );

  final Variables_Mutation_applyPhoneContactChanges _instance;

  final TRes Function(Variables_Mutation_applyPhoneContactChanges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletedIds = _undefined,
    Object? updates = _undefined,
    Object? inserts = _undefined,
  }) => _then(
    Variables_Mutation_applyPhoneContactChanges._({
      ..._instance._$data,
      if (deletedIds != _undefined && deletedIds != null)
        'deletedIds': (deletedIds as List<UuidValue>),
      if (updates != _undefined && updates != null)
        'updates': (updates as List<Input_ContactsUpdates>),
      if (inserts != _undefined && inserts != null)
        'inserts': (inserts as List<Input_ContactsInsertInput>),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_applyPhoneContactChanges<TRes>
    implements CopyWith_Variables_Mutation_applyPhoneContactChanges<TRes> {
  _CopyWithStubImpl_Variables_Mutation_applyPhoneContactChanges(this._res);

  TRes _res;

  call({
    List<UuidValue>? deletedIds,
    List<Input_ContactsUpdates>? updates,
    List<Input_ContactsInsertInput>? inserts,
  }) => _res;
}

class Mutation_applyPhoneContactChanges {
  Mutation_applyPhoneContactChanges({
    this.deleteContacts,
    this.updateContactsMany,
    this.insertContacts,
  });

  factory Mutation_applyPhoneContactChanges.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deleteContacts = json['deleteContacts'];
    final l$updateContactsMany = json['updateContactsMany'];
    final l$insertContacts = json['insertContacts'];
    return Mutation_applyPhoneContactChanges(
      deleteContacts: l$deleteContacts == null
          ? null
          : Mutation_applyPhoneContactChanges_deleteContacts.fromJson(
              (l$deleteContacts as Map<String, dynamic>),
            ),
      updateContactsMany: (l$updateContactsMany as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation_applyPhoneContactChanges_updateContactsMany.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      insertContacts: l$insertContacts == null
          ? null
          : Mutation_applyPhoneContactChanges_insertContacts.fromJson(
              (l$insertContacts as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_applyPhoneContactChanges_deleteContacts? deleteContacts;

  final List<Mutation_applyPhoneContactChanges_updateContactsMany?>?
  updateContactsMany;

  final Mutation_applyPhoneContactChanges_insertContacts? insertContacts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteContacts = deleteContacts;
    _resultData['deleteContacts'] = l$deleteContacts?.toJson();
    final l$updateContactsMany = updateContactsMany;
    _resultData['updateContactsMany'] = l$updateContactsMany
        ?.map((e) => e?.toJson())
        .toList();
    final l$insertContacts = insertContacts;
    _resultData['insertContacts'] = l$insertContacts?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteContacts = deleteContacts;
    final l$updateContactsMany = updateContactsMany;
    final l$insertContacts = insertContacts;
    return Object.hashAll([
      l$deleteContacts,
      l$updateContactsMany == null
          ? null
          : Object.hashAll(l$updateContactsMany.map((v) => v)),
      l$insertContacts,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_applyPhoneContactChanges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteContacts = deleteContacts;
    final lOther$deleteContacts = other.deleteContacts;
    if (l$deleteContacts != lOther$deleteContacts) {
      return false;
    }
    final l$updateContactsMany = updateContactsMany;
    final lOther$updateContactsMany = other.updateContactsMany;
    if (l$updateContactsMany != null && lOther$updateContactsMany != null) {
      if (l$updateContactsMany.length != lOther$updateContactsMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateContactsMany.length; i++) {
        final l$updateContactsMany$entry = l$updateContactsMany[i];
        final lOther$updateContactsMany$entry = lOther$updateContactsMany[i];
        if (l$updateContactsMany$entry != lOther$updateContactsMany$entry) {
          return false;
        }
      }
    } else if (l$updateContactsMany != lOther$updateContactsMany) {
      return false;
    }
    final l$insertContacts = insertContacts;
    final lOther$insertContacts = other.insertContacts;
    if (l$insertContacts != lOther$insertContacts) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_applyPhoneContactChanges
    on Mutation_applyPhoneContactChanges {
  CopyWith_Mutation_applyPhoneContactChanges<Mutation_applyPhoneContactChanges>
  get copyWith => CopyWith_Mutation_applyPhoneContactChanges(this, (i) => i);
}

abstract class CopyWith_Mutation_applyPhoneContactChanges<TRes> {
  factory CopyWith_Mutation_applyPhoneContactChanges(
    Mutation_applyPhoneContactChanges instance,
    TRes Function(Mutation_applyPhoneContactChanges) then,
  ) = _CopyWithImpl_Mutation_applyPhoneContactChanges;

  factory CopyWith_Mutation_applyPhoneContactChanges.stub(TRes res) =
      _CopyWithStubImpl_Mutation_applyPhoneContactChanges;

  TRes call({
    Mutation_applyPhoneContactChanges_deleteContacts? deleteContacts,
    List<Mutation_applyPhoneContactChanges_updateContactsMany?>?
    updateContactsMany,
    Mutation_applyPhoneContactChanges_insertContacts? insertContacts,
  });
  CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<TRes>
  get deleteContacts;
  TRes updateContactsMany(
    Iterable<Mutation_applyPhoneContactChanges_updateContactsMany?>? Function(
      Iterable<
        CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany<
          Mutation_applyPhoneContactChanges_updateContactsMany
        >?
      >?,
    )
    _fn,
  );
  CopyWith_Mutation_applyPhoneContactChanges_insertContacts<TRes>
  get insertContacts;
}

class _CopyWithImpl_Mutation_applyPhoneContactChanges<TRes>
    implements CopyWith_Mutation_applyPhoneContactChanges<TRes> {
  _CopyWithImpl_Mutation_applyPhoneContactChanges(this._instance, this._then);

  final Mutation_applyPhoneContactChanges _instance;

  final TRes Function(Mutation_applyPhoneContactChanges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteContacts = _undefined,
    Object? updateContactsMany = _undefined,
    Object? insertContacts = _undefined,
  }) => _then(
    Mutation_applyPhoneContactChanges(
      deleteContacts: deleteContacts == _undefined
          ? _instance.deleteContacts
          : (deleteContacts
                as Mutation_applyPhoneContactChanges_deleteContacts?),
      updateContactsMany: updateContactsMany == _undefined
          ? _instance.updateContactsMany
          : (updateContactsMany
                as List<
                  Mutation_applyPhoneContactChanges_updateContactsMany?
                >?),
      insertContacts: insertContacts == _undefined
          ? _instance.insertContacts
          : (insertContacts
                as Mutation_applyPhoneContactChanges_insertContacts?),
    ),
  );

  CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<TRes>
  get deleteContacts {
    final local$deleteContacts = _instance.deleteContacts;
    return local$deleteContacts == null
        ? CopyWith_Mutation_applyPhoneContactChanges_deleteContacts.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_applyPhoneContactChanges_deleteContacts(
            local$deleteContacts,
            (e) => call(deleteContacts: e),
          );
  }

  TRes updateContactsMany(
    Iterable<Mutation_applyPhoneContactChanges_updateContactsMany?>? Function(
      Iterable<
        CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany<
          Mutation_applyPhoneContactChanges_updateContactsMany
        >?
      >?,
    )
    _fn,
  ) => call(
    updateContactsMany: _fn(
      _instance.updateContactsMany?.map(
        (e) => e == null
            ? null
            : CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith_Mutation_applyPhoneContactChanges_insertContacts<TRes>
  get insertContacts {
    final local$insertContacts = _instance.insertContacts;
    return local$insertContacts == null
        ? CopyWith_Mutation_applyPhoneContactChanges_insertContacts.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_applyPhoneContactChanges_insertContacts(
            local$insertContacts,
            (e) => call(insertContacts: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_applyPhoneContactChanges<TRes>
    implements CopyWith_Mutation_applyPhoneContactChanges<TRes> {
  _CopyWithStubImpl_Mutation_applyPhoneContactChanges(this._res);

  TRes _res;

  call({
    Mutation_applyPhoneContactChanges_deleteContacts? deleteContacts,
    List<Mutation_applyPhoneContactChanges_updateContactsMany?>?
    updateContactsMany,
    Mutation_applyPhoneContactChanges_insertContacts? insertContacts,
  }) => _res;

  CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<TRes>
  get deleteContacts =>
      CopyWith_Mutation_applyPhoneContactChanges_deleteContacts.stub(_res);

  updateContactsMany(_fn) => _res;

  CopyWith_Mutation_applyPhoneContactChanges_insertContacts<TRes>
  get insertContacts =>
      CopyWith_Mutation_applyPhoneContactChanges_insertContacts.stub(_res);
}

const documentNodeMutationapplyPhoneContactChanges = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'applyPhoneContactChanges'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deletedIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updates')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ContactsUpdates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'inserts')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ContactsInsertInput'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'deleteContacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_in'),
                            value: VariableNode(
                              name: NameNode(value: 'deletedIds'),
                            ),
                          ),
                        ],
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
                  name: NameNode(value: 'affectedRows'),
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
          FieldNode(
            name: NameNode(value: 'updateContactsMany'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updates'),
                value: VariableNode(name: NameNode(value: 'updates')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'affectedRows'),
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
          FieldNode(
            name: NameNode(value: 'insertContacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: VariableNode(name: NameNode(value: 'inserts')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'affectedRows'),
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

class Mutation_applyPhoneContactChanges_deleteContacts {
  Mutation_applyPhoneContactChanges_deleteContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_applyPhoneContactChanges_deleteContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_applyPhoneContactChanges_deleteContacts(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([l$affectedRows, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_applyPhoneContactChanges_deleteContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_applyPhoneContactChanges_deleteContacts
    on Mutation_applyPhoneContactChanges_deleteContacts {
  CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<
    Mutation_applyPhoneContactChanges_deleteContacts
  >
  get copyWith =>
      CopyWith_Mutation_applyPhoneContactChanges_deleteContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<TRes> {
  factory CopyWith_Mutation_applyPhoneContactChanges_deleteContacts(
    Mutation_applyPhoneContactChanges_deleteContacts instance,
    TRes Function(Mutation_applyPhoneContactChanges_deleteContacts) then,
  ) = _CopyWithImpl_Mutation_applyPhoneContactChanges_deleteContacts;

  factory CopyWith_Mutation_applyPhoneContactChanges_deleteContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_applyPhoneContactChanges_deleteContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_applyPhoneContactChanges_deleteContacts<TRes>
    implements CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<TRes> {
  _CopyWithImpl_Mutation_applyPhoneContactChanges_deleteContacts(
    this._instance,
    this._then,
  );

  final Mutation_applyPhoneContactChanges_deleteContacts _instance;

  final TRes Function(Mutation_applyPhoneContactChanges_deleteContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_applyPhoneContactChanges_deleteContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_applyPhoneContactChanges_deleteContacts<TRes>
    implements CopyWith_Mutation_applyPhoneContactChanges_deleteContacts<TRes> {
  _CopyWithStubImpl_Mutation_applyPhoneContactChanges_deleteContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_applyPhoneContactChanges_updateContactsMany {
  Mutation_applyPhoneContactChanges_updateContactsMany({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_applyPhoneContactChanges_updateContactsMany.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_applyPhoneContactChanges_updateContactsMany(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([l$affectedRows, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_applyPhoneContactChanges_updateContactsMany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_applyPhoneContactChanges_updateContactsMany
    on Mutation_applyPhoneContactChanges_updateContactsMany {
  CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany<
    Mutation_applyPhoneContactChanges_updateContactsMany
  >
  get copyWith => CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany<
  TRes
> {
  factory CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany(
    Mutation_applyPhoneContactChanges_updateContactsMany instance,
    TRes Function(Mutation_applyPhoneContactChanges_updateContactsMany) then,
  ) = _CopyWithImpl_Mutation_applyPhoneContactChanges_updateContactsMany;

  factory CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_applyPhoneContactChanges_updateContactsMany;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_applyPhoneContactChanges_updateContactsMany<TRes>
    implements
        CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany<TRes> {
  _CopyWithImpl_Mutation_applyPhoneContactChanges_updateContactsMany(
    this._instance,
    this._then,
  );

  final Mutation_applyPhoneContactChanges_updateContactsMany _instance;

  final TRes Function(Mutation_applyPhoneContactChanges_updateContactsMany)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_applyPhoneContactChanges_updateContactsMany(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_applyPhoneContactChanges_updateContactsMany<
  TRes
>
    implements
        CopyWith_Mutation_applyPhoneContactChanges_updateContactsMany<TRes> {
  _CopyWithStubImpl_Mutation_applyPhoneContactChanges_updateContactsMany(
    this._res,
  );

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_applyPhoneContactChanges_insertContacts {
  Mutation_applyPhoneContactChanges_insertContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_applyPhoneContactChanges_insertContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_applyPhoneContactChanges_insertContacts(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([l$affectedRows, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_applyPhoneContactChanges_insertContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_applyPhoneContactChanges_insertContacts
    on Mutation_applyPhoneContactChanges_insertContacts {
  CopyWith_Mutation_applyPhoneContactChanges_insertContacts<
    Mutation_applyPhoneContactChanges_insertContacts
  >
  get copyWith =>
      CopyWith_Mutation_applyPhoneContactChanges_insertContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_applyPhoneContactChanges_insertContacts<TRes> {
  factory CopyWith_Mutation_applyPhoneContactChanges_insertContacts(
    Mutation_applyPhoneContactChanges_insertContacts instance,
    TRes Function(Mutation_applyPhoneContactChanges_insertContacts) then,
  ) = _CopyWithImpl_Mutation_applyPhoneContactChanges_insertContacts;

  factory CopyWith_Mutation_applyPhoneContactChanges_insertContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_applyPhoneContactChanges_insertContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_applyPhoneContactChanges_insertContacts<TRes>
    implements CopyWith_Mutation_applyPhoneContactChanges_insertContacts<TRes> {
  _CopyWithImpl_Mutation_applyPhoneContactChanges_insertContacts(
    this._instance,
    this._then,
  );

  final Mutation_applyPhoneContactChanges_insertContacts _instance;

  final TRes Function(Mutation_applyPhoneContactChanges_insertContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_applyPhoneContactChanges_insertContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_applyPhoneContactChanges_insertContacts<TRes>
    implements CopyWith_Mutation_applyPhoneContactChanges_insertContacts<TRes> {
  _CopyWithStubImpl_Mutation_applyPhoneContactChanges_insertContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
