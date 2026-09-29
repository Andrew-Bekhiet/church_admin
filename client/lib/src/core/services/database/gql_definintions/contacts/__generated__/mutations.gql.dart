import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_saveContacts {
  factory Variables_Mutation_saveContacts({
    List<UuidValue>? deleteIds,
    List<UuidValue>? unsetMainIds,
    List<Input_ContactsInsertInput>? upserts,
    bool? deleteContacts,
    bool? unsetMainContacts,
    bool? upsertContacts,
  }) => Variables_Mutation_saveContacts._({
    if (deleteIds != null) r'deleteIds': deleteIds,
    if (unsetMainIds != null) r'unsetMainIds': unsetMainIds,
    if (upserts != null) r'upserts': upserts,
    if (deleteContacts != null) r'deleteContacts': deleteContacts,
    if (unsetMainContacts != null) r'unsetMainContacts': unsetMainContacts,
    if (upsertContacts != null) r'upsertContacts': upsertContacts,
  });

  Variables_Mutation_saveContacts._(this._$data);

  factory Variables_Mutation_saveContacts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('deleteIds')) {
      final l$deleteIds = data['deleteIds'];
      result$data['deleteIds'] = (l$deleteIds as List<dynamic>)
          .map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('unsetMainIds')) {
      final l$unsetMainIds = data['unsetMainIds'];
      result$data['unsetMainIds'] = (l$unsetMainIds as List<dynamic>)
          .map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('upserts')) {
      final l$upserts = data['upserts'];
      result$data['upserts'] = (l$upserts as List<dynamic>)
          .map(
            (e) =>
                Input_ContactsInsertInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('deleteContacts')) {
      final l$deleteContacts = data['deleteContacts'];
      result$data['deleteContacts'] = (l$deleteContacts as bool);
    }
    if (data.containsKey('unsetMainContacts')) {
      final l$unsetMainContacts = data['unsetMainContacts'];
      result$data['unsetMainContacts'] = (l$unsetMainContacts as bool);
    }
    if (data.containsKey('upsertContacts')) {
      final l$upsertContacts = data['upsertContacts'];
      result$data['upsertContacts'] = (l$upsertContacts as bool);
    }
    return Variables_Mutation_saveContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  List<UuidValue>? get deleteIds => (_$data['deleteIds'] as List<UuidValue>?);

  List<UuidValue>? get unsetMainIds =>
      (_$data['unsetMainIds'] as List<UuidValue>?);

  List<Input_ContactsInsertInput>? get upserts =>
      (_$data['upserts'] as List<Input_ContactsInsertInput>?);

  bool? get deleteContacts => (_$data['deleteContacts'] as bool?);

  bool? get unsetMainContacts => (_$data['unsetMainContacts'] as bool?);

  bool? get upsertContacts => (_$data['upsertContacts'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('deleteIds')) {
      final l$deleteIds = deleteIds;
      result$data['deleteIds'] = (l$deleteIds as List<UuidValue>)
          .map((e) => uuidToString(e))
          .toList();
    }
    if (_$data.containsKey('unsetMainIds')) {
      final l$unsetMainIds = unsetMainIds;
      result$data['unsetMainIds'] = (l$unsetMainIds as List<UuidValue>)
          .map((e) => uuidToString(e))
          .toList();
    }
    if (_$data.containsKey('upserts')) {
      final l$upserts = upserts;
      result$data['upserts'] = (l$upserts as List<Input_ContactsInsertInput>)
          .map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('deleteContacts')) {
      final l$deleteContacts = deleteContacts;
      result$data['deleteContacts'] = (l$deleteContacts as bool);
    }
    if (_$data.containsKey('unsetMainContacts')) {
      final l$unsetMainContacts = unsetMainContacts;
      result$data['unsetMainContacts'] = (l$unsetMainContacts as bool);
    }
    if (_$data.containsKey('upsertContacts')) {
      final l$upsertContacts = upsertContacts;
      result$data['upsertContacts'] = (l$upsertContacts as bool);
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_saveContacts<Variables_Mutation_saveContacts>
  get copyWith => CopyWith_Variables_Mutation_saveContacts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_saveContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteIds = deleteIds;
    final lOther$deleteIds = other.deleteIds;
    if (_$data.containsKey('deleteIds') !=
        other._$data.containsKey('deleteIds')) {
      return false;
    }
    if (l$deleteIds != null && lOther$deleteIds != null) {
      if (l$deleteIds.length != lOther$deleteIds.length) {
        return false;
      }
      for (int i = 0; i < l$deleteIds.length; i++) {
        final l$deleteIds$entry = l$deleteIds[i];
        final lOther$deleteIds$entry = lOther$deleteIds[i];
        if (l$deleteIds$entry != lOther$deleteIds$entry) {
          return false;
        }
      }
    } else if (l$deleteIds != lOther$deleteIds) {
      return false;
    }
    final l$unsetMainIds = unsetMainIds;
    final lOther$unsetMainIds = other.unsetMainIds;
    if (_$data.containsKey('unsetMainIds') !=
        other._$data.containsKey('unsetMainIds')) {
      return false;
    }
    if (l$unsetMainIds != null && lOther$unsetMainIds != null) {
      if (l$unsetMainIds.length != lOther$unsetMainIds.length) {
        return false;
      }
      for (int i = 0; i < l$unsetMainIds.length; i++) {
        final l$unsetMainIds$entry = l$unsetMainIds[i];
        final lOther$unsetMainIds$entry = lOther$unsetMainIds[i];
        if (l$unsetMainIds$entry != lOther$unsetMainIds$entry) {
          return false;
        }
      }
    } else if (l$unsetMainIds != lOther$unsetMainIds) {
      return false;
    }
    final l$upserts = upserts;
    final lOther$upserts = other.upserts;
    if (_$data.containsKey('upserts') != other._$data.containsKey('upserts')) {
      return false;
    }
    if (l$upserts != null && lOther$upserts != null) {
      if (l$upserts.length != lOther$upserts.length) {
        return false;
      }
      for (int i = 0; i < l$upserts.length; i++) {
        final l$upserts$entry = l$upserts[i];
        final lOther$upserts$entry = lOther$upserts[i];
        if (l$upserts$entry != lOther$upserts$entry) {
          return false;
        }
      }
    } else if (l$upserts != lOther$upserts) {
      return false;
    }
    final l$deleteContacts = deleteContacts;
    final lOther$deleteContacts = other.deleteContacts;
    if (_$data.containsKey('deleteContacts') !=
        other._$data.containsKey('deleteContacts')) {
      return false;
    }
    if (l$deleteContacts != lOther$deleteContacts) {
      return false;
    }
    final l$unsetMainContacts = unsetMainContacts;
    final lOther$unsetMainContacts = other.unsetMainContacts;
    if (_$data.containsKey('unsetMainContacts') !=
        other._$data.containsKey('unsetMainContacts')) {
      return false;
    }
    if (l$unsetMainContacts != lOther$unsetMainContacts) {
      return false;
    }
    final l$upsertContacts = upsertContacts;
    final lOther$upsertContacts = other.upsertContacts;
    if (_$data.containsKey('upsertContacts') !=
        other._$data.containsKey('upsertContacts')) {
      return false;
    }
    if (l$upsertContacts != lOther$upsertContacts) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteIds = deleteIds;
    final l$unsetMainIds = unsetMainIds;
    final l$upserts = upserts;
    final l$deleteContacts = deleteContacts;
    final l$unsetMainContacts = unsetMainContacts;
    final l$upsertContacts = upsertContacts;
    return Object.hashAll([
      _$data.containsKey('deleteIds')
          ? l$deleteIds == null
                ? null
                : Object.hashAll(l$deleteIds.map((v) => v))
          : const {},
      _$data.containsKey('unsetMainIds')
          ? l$unsetMainIds == null
                ? null
                : Object.hashAll(l$unsetMainIds.map((v) => v))
          : const {},
      _$data.containsKey('upserts')
          ? l$upserts == null
                ? null
                : Object.hashAll(l$upserts.map((v) => v))
          : const {},
      _$data.containsKey('deleteContacts') ? l$deleteContacts : const {},
      _$data.containsKey('unsetMainContacts') ? l$unsetMainContacts : const {},
      _$data.containsKey('upsertContacts') ? l$upsertContacts : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_saveContacts<TRes> {
  factory CopyWith_Variables_Mutation_saveContacts(
    Variables_Mutation_saveContacts instance,
    TRes Function(Variables_Mutation_saveContacts) then,
  ) = _CopyWithImpl_Variables_Mutation_saveContacts;

  factory CopyWith_Variables_Mutation_saveContacts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_saveContacts;

  TRes call({
    List<UuidValue>? deleteIds,
    List<UuidValue>? unsetMainIds,
    List<Input_ContactsInsertInput>? upserts,
    bool? deleteContacts,
    bool? unsetMainContacts,
    bool? upsertContacts,
  });
}

class _CopyWithImpl_Variables_Mutation_saveContacts<TRes>
    implements CopyWith_Variables_Mutation_saveContacts<TRes> {
  _CopyWithImpl_Variables_Mutation_saveContacts(this._instance, this._then);

  final Variables_Mutation_saveContacts _instance;

  final TRes Function(Variables_Mutation_saveContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteIds = _undefined,
    Object? unsetMainIds = _undefined,
    Object? upserts = _undefined,
    Object? deleteContacts = _undefined,
    Object? unsetMainContacts = _undefined,
    Object? upsertContacts = _undefined,
  }) => _then(
    Variables_Mutation_saveContacts._({
      ..._instance._$data,
      if (deleteIds != _undefined && deleteIds != null)
        'deleteIds': (deleteIds as List<UuidValue>),
      if (unsetMainIds != _undefined && unsetMainIds != null)
        'unsetMainIds': (unsetMainIds as List<UuidValue>),
      if (upserts != _undefined && upserts != null)
        'upserts': (upserts as List<Input_ContactsInsertInput>),
      if (deleteContacts != _undefined && deleteContacts != null)
        'deleteContacts': (deleteContacts as bool),
      if (unsetMainContacts != _undefined && unsetMainContacts != null)
        'unsetMainContacts': (unsetMainContacts as bool),
      if (upsertContacts != _undefined && upsertContacts != null)
        'upsertContacts': (upsertContacts as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_saveContacts<TRes>
    implements CopyWith_Variables_Mutation_saveContacts<TRes> {
  _CopyWithStubImpl_Variables_Mutation_saveContacts(this._res);

  TRes _res;

  call({
    List<UuidValue>? deleteIds,
    List<UuidValue>? unsetMainIds,
    List<Input_ContactsInsertInput>? upserts,
    bool? deleteContacts,
    bool? unsetMainContacts,
    bool? upsertContacts,
  }) => _res;
}

class Mutation_saveContacts {
  Mutation_saveContacts({
    this.deleteContacts,
    this.updateContacts,
    this.insertContacts,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_saveContacts.fromJson(Map<String, dynamic> json) {
    final l$deleteContacts = json['deleteContacts'];
    final l$updateContacts = json['updateContacts'];
    final l$insertContacts = json['insertContacts'];
    final l$$__typename = json['__typename'];
    return Mutation_saveContacts(
      deleteContacts: l$deleteContacts == null
          ? null
          : Mutation_saveContacts_deleteContacts.fromJson(
              (l$deleteContacts as Map<String, dynamic>),
            ),
      updateContacts: l$updateContacts == null
          ? null
          : Mutation_saveContacts_updateContacts.fromJson(
              (l$updateContacts as Map<String, dynamic>),
            ),
      insertContacts: l$insertContacts == null
          ? null
          : Mutation_saveContacts_insertContacts.fromJson(
              (l$insertContacts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_saveContacts_deleteContacts? deleteContacts;

  final Mutation_saveContacts_updateContacts? updateContacts;

  final Mutation_saveContacts_insertContacts? insertContacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteContacts = deleteContacts;
    _resultData['deleteContacts'] = l$deleteContacts?.toJson();
    final l$updateContacts = updateContacts;
    _resultData['updateContacts'] = l$updateContacts?.toJson();
    final l$insertContacts = insertContacts;
    _resultData['insertContacts'] = l$insertContacts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteContacts = deleteContacts;
    final l$updateContacts = updateContacts;
    final l$insertContacts = insertContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteContacts,
      l$updateContacts,
      l$insertContacts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_saveContacts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteContacts = deleteContacts;
    final lOther$deleteContacts = other.deleteContacts;
    if (l$deleteContacts != lOther$deleteContacts) {
      return false;
    }
    final l$updateContacts = updateContacts;
    final lOther$updateContacts = other.updateContacts;
    if (l$updateContacts != lOther$updateContacts) {
      return false;
    }
    final l$insertContacts = insertContacts;
    final lOther$insertContacts = other.insertContacts;
    if (l$insertContacts != lOther$insertContacts) {
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

extension UtilityExtension_Mutation_saveContacts on Mutation_saveContacts {
  CopyWith_Mutation_saveContacts<Mutation_saveContacts> get copyWith =>
      CopyWith_Mutation_saveContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_saveContacts<TRes> {
  factory CopyWith_Mutation_saveContacts(
    Mutation_saveContacts instance,
    TRes Function(Mutation_saveContacts) then,
  ) = _CopyWithImpl_Mutation_saveContacts;

  factory CopyWith_Mutation_saveContacts.stub(TRes res) =
      _CopyWithStubImpl_Mutation_saveContacts;

  TRes call({
    Mutation_saveContacts_deleteContacts? deleteContacts,
    Mutation_saveContacts_updateContacts? updateContacts,
    Mutation_saveContacts_insertContacts? insertContacts,
    String? $__typename,
  });
  CopyWith_Mutation_saveContacts_deleteContacts<TRes> get deleteContacts;
  CopyWith_Mutation_saveContacts_updateContacts<TRes> get updateContacts;
  CopyWith_Mutation_saveContacts_insertContacts<TRes> get insertContacts;
}

class _CopyWithImpl_Mutation_saveContacts<TRes>
    implements CopyWith_Mutation_saveContacts<TRes> {
  _CopyWithImpl_Mutation_saveContacts(this._instance, this._then);

  final Mutation_saveContacts _instance;

  final TRes Function(Mutation_saveContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteContacts = _undefined,
    Object? updateContacts = _undefined,
    Object? insertContacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_saveContacts(
      deleteContacts: deleteContacts == _undefined
          ? _instance.deleteContacts
          : (deleteContacts as Mutation_saveContacts_deleteContacts?),
      updateContacts: updateContacts == _undefined
          ? _instance.updateContacts
          : (updateContacts as Mutation_saveContacts_updateContacts?),
      insertContacts: insertContacts == _undefined
          ? _instance.insertContacts
          : (insertContacts as Mutation_saveContacts_insertContacts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_saveContacts_deleteContacts<TRes> get deleteContacts {
    final local$deleteContacts = _instance.deleteContacts;
    return local$deleteContacts == null
        ? CopyWith_Mutation_saveContacts_deleteContacts.stub(_then(_instance))
        : CopyWith_Mutation_saveContacts_deleteContacts(
            local$deleteContacts,
            (e) => call(deleteContacts: e),
          );
  }

  CopyWith_Mutation_saveContacts_updateContacts<TRes> get updateContacts {
    final local$updateContacts = _instance.updateContacts;
    return local$updateContacts == null
        ? CopyWith_Mutation_saveContacts_updateContacts.stub(_then(_instance))
        : CopyWith_Mutation_saveContacts_updateContacts(
            local$updateContacts,
            (e) => call(updateContacts: e),
          );
  }

  CopyWith_Mutation_saveContacts_insertContacts<TRes> get insertContacts {
    final local$insertContacts = _instance.insertContacts;
    return local$insertContacts == null
        ? CopyWith_Mutation_saveContacts_insertContacts.stub(_then(_instance))
        : CopyWith_Mutation_saveContacts_insertContacts(
            local$insertContacts,
            (e) => call(insertContacts: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_saveContacts<TRes>
    implements CopyWith_Mutation_saveContacts<TRes> {
  _CopyWithStubImpl_Mutation_saveContacts(this._res);

  TRes _res;

  call({
    Mutation_saveContacts_deleteContacts? deleteContacts,
    Mutation_saveContacts_updateContacts? updateContacts,
    Mutation_saveContacts_insertContacts? insertContacts,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_saveContacts_deleteContacts<TRes> get deleteContacts =>
      CopyWith_Mutation_saveContacts_deleteContacts.stub(_res);

  CopyWith_Mutation_saveContacts_updateContacts<TRes> get updateContacts =>
      CopyWith_Mutation_saveContacts_updateContacts.stub(_res);

  CopyWith_Mutation_saveContacts_insertContacts<TRes> get insertContacts =>
      CopyWith_Mutation_saveContacts_insertContacts.stub(_res);
}

const documentNodeMutationsaveContacts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'saveContacts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deleteIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'unsetMainIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'upserts')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ContactsInsertInput'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deleteContacts')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'unsetMainContacts')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'upsertContacts')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
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
                              name: NameNode(value: 'deleteIds'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'deleteContacts'),
                    ),
                  ),
                ],
              ),
            ],
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
            name: NameNode(value: 'updateContacts'),
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
                              name: NameNode(value: 'unsetMainIds'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'isMainPhone'),
                      value: BooleanValueNode(value: false),
                    ),
                  ],
                ),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'unsetMainContacts'),
                    ),
                  ),
                ],
              ),
            ],
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
                value: VariableNode(name: NameNode(value: 'upserts')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(value: 'contacts_pkey'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'updateColumns'),
                      value: ListValueNode(
                        values: [
                          EnumValueNode(name: NameNode(value: 'label')),
                          EnumValueNode(name: NameNode(value: 'phone')),
                          EnumValueNode(name: NameNode(value: 'isMainPhone')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'upsertContacts'),
                    ),
                  ),
                ],
              ),
            ],
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
);

class Mutation_saveContacts_deleteContacts {
  Mutation_saveContacts_deleteContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_saveContacts_deleteContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_saveContacts_deleteContacts(
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
    if (other is! Mutation_saveContacts_deleteContacts ||
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

extension UtilityExtension_Mutation_saveContacts_deleteContacts
    on Mutation_saveContacts_deleteContacts {
  CopyWith_Mutation_saveContacts_deleteContacts<
    Mutation_saveContacts_deleteContacts
  >
  get copyWith => CopyWith_Mutation_saveContacts_deleteContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_saveContacts_deleteContacts<TRes> {
  factory CopyWith_Mutation_saveContacts_deleteContacts(
    Mutation_saveContacts_deleteContacts instance,
    TRes Function(Mutation_saveContacts_deleteContacts) then,
  ) = _CopyWithImpl_Mutation_saveContacts_deleteContacts;

  factory CopyWith_Mutation_saveContacts_deleteContacts.stub(TRes res) =
      _CopyWithStubImpl_Mutation_saveContacts_deleteContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_saveContacts_deleteContacts<TRes>
    implements CopyWith_Mutation_saveContacts_deleteContacts<TRes> {
  _CopyWithImpl_Mutation_saveContacts_deleteContacts(
    this._instance,
    this._then,
  );

  final Mutation_saveContacts_deleteContacts _instance;

  final TRes Function(Mutation_saveContacts_deleteContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_saveContacts_deleteContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_saveContacts_deleteContacts<TRes>
    implements CopyWith_Mutation_saveContacts_deleteContacts<TRes> {
  _CopyWithStubImpl_Mutation_saveContacts_deleteContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_saveContacts_updateContacts {
  Mutation_saveContacts_updateContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_saveContacts_updateContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_saveContacts_updateContacts(
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
    if (other is! Mutation_saveContacts_updateContacts ||
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

extension UtilityExtension_Mutation_saveContacts_updateContacts
    on Mutation_saveContacts_updateContacts {
  CopyWith_Mutation_saveContacts_updateContacts<
    Mutation_saveContacts_updateContacts
  >
  get copyWith => CopyWith_Mutation_saveContacts_updateContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_saveContacts_updateContacts<TRes> {
  factory CopyWith_Mutation_saveContacts_updateContacts(
    Mutation_saveContacts_updateContacts instance,
    TRes Function(Mutation_saveContacts_updateContacts) then,
  ) = _CopyWithImpl_Mutation_saveContacts_updateContacts;

  factory CopyWith_Mutation_saveContacts_updateContacts.stub(TRes res) =
      _CopyWithStubImpl_Mutation_saveContacts_updateContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_saveContacts_updateContacts<TRes>
    implements CopyWith_Mutation_saveContacts_updateContacts<TRes> {
  _CopyWithImpl_Mutation_saveContacts_updateContacts(
    this._instance,
    this._then,
  );

  final Mutation_saveContacts_updateContacts _instance;

  final TRes Function(Mutation_saveContacts_updateContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_saveContacts_updateContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_saveContacts_updateContacts<TRes>
    implements CopyWith_Mutation_saveContacts_updateContacts<TRes> {
  _CopyWithStubImpl_Mutation_saveContacts_updateContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_saveContacts_insertContacts {
  Mutation_saveContacts_insertContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_saveContacts_insertContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_saveContacts_insertContacts(
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
    if (other is! Mutation_saveContacts_insertContacts ||
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

extension UtilityExtension_Mutation_saveContacts_insertContacts
    on Mutation_saveContacts_insertContacts {
  CopyWith_Mutation_saveContacts_insertContacts<
    Mutation_saveContacts_insertContacts
  >
  get copyWith => CopyWith_Mutation_saveContacts_insertContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_saveContacts_insertContacts<TRes> {
  factory CopyWith_Mutation_saveContacts_insertContacts(
    Mutation_saveContacts_insertContacts instance,
    TRes Function(Mutation_saveContacts_insertContacts) then,
  ) = _CopyWithImpl_Mutation_saveContacts_insertContacts;

  factory CopyWith_Mutation_saveContacts_insertContacts.stub(TRes res) =
      _CopyWithStubImpl_Mutation_saveContacts_insertContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_saveContacts_insertContacts<TRes>
    implements CopyWith_Mutation_saveContacts_insertContacts<TRes> {
  _CopyWithImpl_Mutation_saveContacts_insertContacts(
    this._instance,
    this._then,
  );

  final Mutation_saveContacts_insertContacts _instance;

  final TRes Function(Mutation_saveContacts_insertContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_saveContacts_insertContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_saveContacts_insertContacts<TRes>
    implements CopyWith_Mutation_saveContacts_insertContacts<TRes> {
  _CopyWithStubImpl_Mutation_saveContacts_insertContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
