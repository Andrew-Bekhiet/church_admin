import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteFamily {
  factory Variables_Mutation_deleteFamily({required UuidValue familyId}) =>
      Variables_Mutation_deleteFamily._({r'familyId': familyId});

  Variables_Mutation_deleteFamily._(this._$data);

  factory Variables_Mutation_deleteFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables_Mutation_deleteFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteFamily<Variables_Mutation_deleteFamily>
  get copyWith => CopyWith_Variables_Mutation_deleteFamily(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteFamily ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    return Object.hashAll([l$familyId]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteFamily<TRes> {
  factory CopyWith_Variables_Mutation_deleteFamily(
    Variables_Mutation_deleteFamily instance,
    TRes Function(Variables_Mutation_deleteFamily) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteFamily;

  factory CopyWith_Variables_Mutation_deleteFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteFamily;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Variables_Mutation_deleteFamily<TRes>
    implements CopyWith_Variables_Mutation_deleteFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteFamily(this._instance, this._then);

  final Variables_Mutation_deleteFamily _instance;

  final TRes Function(Variables_Mutation_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) => _then(
    Variables_Mutation_deleteFamily._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteFamily<TRes>
    implements CopyWith_Variables_Mutation_deleteFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteFamily(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Mutation_deleteFamily {
  Mutation_deleteFamily({this.deleteFamiliesByPk});

  factory Mutation_deleteFamily.fromJson(Map<String, dynamic> json) {
    final l$deleteFamiliesByPk = json['deleteFamiliesByPk'];
    return Mutation_deleteFamily(
      deleteFamiliesByPk: l$deleteFamiliesByPk == null
          ? null
          : Fragment_Family.fromJson(
              (l$deleteFamiliesByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Family? deleteFamiliesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFamiliesByPk = deleteFamiliesByPk;
    _resultData['deleteFamiliesByPk'] = l$deleteFamiliesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFamiliesByPk = deleteFamiliesByPk;
    return Object.hashAll([l$deleteFamiliesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteFamily || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFamiliesByPk = deleteFamiliesByPk;
    final lOther$deleteFamiliesByPk = other.deleteFamiliesByPk;
    if (l$deleteFamiliesByPk != lOther$deleteFamiliesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_deleteFamily on Mutation_deleteFamily {
  CopyWith_Mutation_deleteFamily<Mutation_deleteFamily> get copyWith =>
      CopyWith_Mutation_deleteFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteFamily<TRes> {
  factory CopyWith_Mutation_deleteFamily(
    Mutation_deleteFamily instance,
    TRes Function(Mutation_deleteFamily) then,
  ) = _CopyWithImpl_Mutation_deleteFamily;

  factory CopyWith_Mutation_deleteFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteFamily;

  TRes call({Fragment_Family? deleteFamiliesByPk});
  CopyWith_Fragment_Family<TRes> get deleteFamiliesByPk;
}

class _CopyWithImpl_Mutation_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily<TRes> {
  _CopyWithImpl_Mutation_deleteFamily(this._instance, this._then);

  final Mutation_deleteFamily _instance;

  final TRes Function(Mutation_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteFamiliesByPk = _undefined}) => _then(
    Mutation_deleteFamily(
      deleteFamiliesByPk: deleteFamiliesByPk == _undefined
          ? _instance.deleteFamiliesByPk
          : (deleteFamiliesByPk as Fragment_Family?),
    ),
  );

  CopyWith_Fragment_Family<TRes> get deleteFamiliesByPk {
    final local$deleteFamiliesByPk = _instance.deleteFamiliesByPk;
    return local$deleteFamiliesByPk == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(
            local$deleteFamiliesByPk,
            (e) => call(deleteFamiliesByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily<TRes> {
  _CopyWithStubImpl_Mutation_deleteFamily(this._res);

  TRes _res;

  call({Fragment_Family? deleteFamiliesByPk}) => _res;

  CopyWith_Fragment_Family<TRes> get deleteFamiliesByPk =>
      CopyWith_Fragment_Family.stub(_res);
}

const documentNodeMutationdeleteFamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteFamily'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'familyId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteFamiliesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'familyId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Family'),
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
    fragmentDefinitionFamily,
    fragmentDefinitionFamilyNoPhoto,
  ],
);

class Variables_Mutation_insertFamily {
  factory Variables_Mutation_insertFamily({
    required Input_FamiliesInsertInput newFamily,
  }) => Variables_Mutation_insertFamily._({r'newFamily': newFamily});

  Variables_Mutation_insertFamily._(this._$data);

  factory Variables_Mutation_insertFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newFamily = data['newFamily'];
    result$data['newFamily'] = Input_FamiliesInsertInput.fromJson(
      (l$newFamily as Map<String, dynamic>),
    );
    return Variables_Mutation_insertFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesInsertInput get newFamily =>
      (_$data['newFamily'] as Input_FamiliesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newFamily = newFamily;
    result$data['newFamily'] = l$newFamily.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertFamily<Variables_Mutation_insertFamily>
  get copyWith => CopyWith_Variables_Mutation_insertFamily(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertFamily ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newFamily = newFamily;
    final lOther$newFamily = other.newFamily;
    if (l$newFamily != lOther$newFamily) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newFamily = newFamily;
    return Object.hashAll([l$newFamily]);
  }
}

abstract class CopyWith_Variables_Mutation_insertFamily<TRes> {
  factory CopyWith_Variables_Mutation_insertFamily(
    Variables_Mutation_insertFamily instance,
    TRes Function(Variables_Mutation_insertFamily) then,
  ) = _CopyWithImpl_Variables_Mutation_insertFamily;

  factory CopyWith_Variables_Mutation_insertFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertFamily;

  TRes call({Input_FamiliesInsertInput? newFamily});
}

class _CopyWithImpl_Variables_Mutation_insertFamily<TRes>
    implements CopyWith_Variables_Mutation_insertFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_insertFamily(this._instance, this._then);

  final Variables_Mutation_insertFamily _instance;

  final TRes Function(Variables_Mutation_insertFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newFamily = _undefined}) => _then(
    Variables_Mutation_insertFamily._({
      ..._instance._$data,
      if (newFamily != _undefined && newFamily != null)
        'newFamily': (newFamily as Input_FamiliesInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertFamily<TRes>
    implements CopyWith_Variables_Mutation_insertFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertFamily(this._res);

  TRes _res;

  call({Input_FamiliesInsertInput? newFamily}) => _res;
}

class Mutation_insertFamily {
  Mutation_insertFamily({this.insertFamiliesOne});

  factory Mutation_insertFamily.fromJson(Map<String, dynamic> json) {
    final l$insertFamiliesOne = json['insertFamiliesOne'];
    return Mutation_insertFamily(
      insertFamiliesOne: l$insertFamiliesOne == null
          ? null
          : Fragment_Family.fromJson(
              (l$insertFamiliesOne as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Family? insertFamiliesOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertFamiliesOne = insertFamiliesOne;
    _resultData['insertFamiliesOne'] = l$insertFamiliesOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertFamiliesOne = insertFamiliesOne;
    return Object.hashAll([l$insertFamiliesOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertFamily || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertFamiliesOne = insertFamiliesOne;
    final lOther$insertFamiliesOne = other.insertFamiliesOne;
    if (l$insertFamiliesOne != lOther$insertFamiliesOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_insertFamily on Mutation_insertFamily {
  CopyWith_Mutation_insertFamily<Mutation_insertFamily> get copyWith =>
      CopyWith_Mutation_insertFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_insertFamily<TRes> {
  factory CopyWith_Mutation_insertFamily(
    Mutation_insertFamily instance,
    TRes Function(Mutation_insertFamily) then,
  ) = _CopyWithImpl_Mutation_insertFamily;

  factory CopyWith_Mutation_insertFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertFamily;

  TRes call({Fragment_Family? insertFamiliesOne});
  CopyWith_Fragment_Family<TRes> get insertFamiliesOne;
}

class _CopyWithImpl_Mutation_insertFamily<TRes>
    implements CopyWith_Mutation_insertFamily<TRes> {
  _CopyWithImpl_Mutation_insertFamily(this._instance, this._then);

  final Mutation_insertFamily _instance;

  final TRes Function(Mutation_insertFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertFamiliesOne = _undefined}) => _then(
    Mutation_insertFamily(
      insertFamiliesOne: insertFamiliesOne == _undefined
          ? _instance.insertFamiliesOne
          : (insertFamiliesOne as Fragment_Family?),
    ),
  );

  CopyWith_Fragment_Family<TRes> get insertFamiliesOne {
    final local$insertFamiliesOne = _instance.insertFamiliesOne;
    return local$insertFamiliesOne == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(
            local$insertFamiliesOne,
            (e) => call(insertFamiliesOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertFamily<TRes>
    implements CopyWith_Mutation_insertFamily<TRes> {
  _CopyWithStubImpl_Mutation_insertFamily(this._res);

  TRes _res;

  call({Fragment_Family? insertFamiliesOne}) => _res;

  CopyWith_Fragment_Family<TRes> get insertFamiliesOne =>
      CopyWith_Fragment_Family.stub(_res);
}

const documentNodeMutationinsertFamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertFamily'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newFamily')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamiliesInsertInput'),
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
            name: NameNode(value: 'insertFamiliesOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'newFamily')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Family'),
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
    fragmentDefinitionFamily,
    fragmentDefinitionFamilyNoPhoto,
  ],
);

class Variables_Mutation_updateFamily {
  factory Variables_Mutation_updateFamily({
    required UuidValue familyId,
    required Input_FamiliesSetInput newFamily,
    required UuidValue addressId,
    Input_AddressesSetInput? newAddress,
    required List<UuidValue> deleteParents,
    required List<UuidValue> deleteChildren,
    required List<Input_FamiliesFamiliesInsertInput> addRelatedFamilies,
    required bool updateFamily,
    required bool updateAddress,
    required bool deleteRelatedFamilies,
    required bool insertRelatedFamilies,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
    required bool insertVisitHistory,
    required bool insertFatherVisitHistory,
    List<UuidValue>? deletedContactIds,
    List<Input_ContactsUpdates>? contactUpdates,
    List<Input_ContactsInsertInput>? newContacts,
    bool? deleteContacts,
    bool? updateContactsMany,
    bool? insertContacts,
  }) => Variables_Mutation_updateFamily._({
    r'familyId': familyId,
    r'newFamily': newFamily,
    r'addressId': addressId,
    if (newAddress != null) r'newAddress': newAddress,
    r'deleteParents': deleteParents,
    r'deleteChildren': deleteChildren,
    r'addRelatedFamilies': addRelatedFamilies,
    r'updateFamily': updateFamily,
    r'updateAddress': updateAddress,
    r'deleteRelatedFamilies': deleteRelatedFamilies,
    r'insertRelatedFamilies': insertRelatedFamilies,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (lastFatherVisit != null) r'lastFatherVisit': lastFatherVisit,
    r'insertVisitHistory': insertVisitHistory,
    r'insertFatherVisitHistory': insertFatherVisitHistory,
    if (deletedContactIds != null) r'deletedContactIds': deletedContactIds,
    if (contactUpdates != null) r'contactUpdates': contactUpdates,
    if (newContacts != null) r'newContacts': newContacts,
    if (deleteContacts != null) r'deleteContacts': deleteContacts,
    if (updateContactsMany != null) r'updateContactsMany': updateContactsMany,
    if (insertContacts != null) r'insertContacts': insertContacts,
  });

  Variables_Mutation_updateFamily._(this._$data);

  factory Variables_Mutation_updateFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    final l$newFamily = data['newFamily'];
    result$data['newFamily'] = Input_FamiliesSetInput.fromJson(
      (l$newFamily as Map<String, dynamic>),
    );
    final l$addressId = data['addressId'];
    result$data['addressId'] = stringToUuid(l$addressId);
    if (data.containsKey('newAddress')) {
      final l$newAddress = data['newAddress'];
      result$data['newAddress'] = l$newAddress == null
          ? null
          : Input_AddressesSetInput.fromJson(
              (l$newAddress as Map<String, dynamic>),
            );
    }
    final l$deleteParents = data['deleteParents'];
    result$data['deleteParents'] = (l$deleteParents as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
    final l$deleteChildren = data['deleteChildren'];
    result$data['deleteChildren'] = (l$deleteChildren as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
    final l$addRelatedFamilies = data['addRelatedFamilies'];
    result$data['addRelatedFamilies'] = (l$addRelatedFamilies as List<dynamic>)
        .map(
          (e) => Input_FamiliesFamiliesInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    final l$updateFamily = data['updateFamily'];
    result$data['updateFamily'] = (l$updateFamily as bool);
    final l$updateAddress = data['updateAddress'];
    result$data['updateAddress'] = (l$updateAddress as bool);
    final l$deleteRelatedFamilies = data['deleteRelatedFamilies'];
    result$data['deleteRelatedFamilies'] = (l$deleteRelatedFamilies as bool);
    final l$insertRelatedFamilies = data['insertRelatedFamilies'];
    result$data['insertRelatedFamilies'] = (l$insertRelatedFamilies as bool);
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    if (data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = data['lastFatherVisit'];
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : tstzFromString(l$lastFatherVisit);
    }
    final l$insertVisitHistory = data['insertVisitHistory'];
    result$data['insertVisitHistory'] = (l$insertVisitHistory as bool);
    final l$insertFatherVisitHistory = data['insertFatherVisitHistory'];
    result$data['insertFatherVisitHistory'] =
        (l$insertFatherVisitHistory as bool);
    if (data.containsKey('deletedContactIds')) {
      final l$deletedContactIds = data['deletedContactIds'];
      result$data['deletedContactIds'] = (l$deletedContactIds as List<dynamic>)
          .map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('contactUpdates')) {
      final l$contactUpdates = data['contactUpdates'];
      result$data['contactUpdates'] = (l$contactUpdates as List<dynamic>)
          .map(
            (e) => Input_ContactsUpdates.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('newContacts')) {
      final l$newContacts = data['newContacts'];
      result$data['newContacts'] = (l$newContacts as List<dynamic>)
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
    if (data.containsKey('updateContactsMany')) {
      final l$updateContactsMany = data['updateContactsMany'];
      result$data['updateContactsMany'] = (l$updateContactsMany as bool);
    }
    if (data.containsKey('insertContacts')) {
      final l$insertContacts = data['insertContacts'];
      result$data['insertContacts'] = (l$insertContacts as bool);
    }
    return Variables_Mutation_updateFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Input_FamiliesSetInput get newFamily =>
      (_$data['newFamily'] as Input_FamiliesSetInput);

  UuidValue get addressId => (_$data['addressId'] as UuidValue);

  Input_AddressesSetInput? get newAddress =>
      (_$data['newAddress'] as Input_AddressesSetInput?);

  List<UuidValue> get deleteParents =>
      (_$data['deleteParents'] as List<UuidValue>);

  List<UuidValue> get deleteChildren =>
      (_$data['deleteChildren'] as List<UuidValue>);

  List<Input_FamiliesFamiliesInsertInput> get addRelatedFamilies =>
      (_$data['addRelatedFamilies'] as List<Input_FamiliesFamiliesInsertInput>);

  bool get updateFamily => (_$data['updateFamily'] as bool);

  bool get updateAddress => (_$data['updateAddress'] as bool);

  bool get deleteRelatedFamilies => (_$data['deleteRelatedFamilies'] as bool);

  bool get insertRelatedFamilies => (_$data['insertRelatedFamilies'] as bool);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  DateTime? get lastFatherVisit => (_$data['lastFatherVisit'] as DateTime?);

  bool get insertVisitHistory => (_$data['insertVisitHistory'] as bool);

  bool get insertFatherVisitHistory =>
      (_$data['insertFatherVisitHistory'] as bool);

  List<UuidValue>? get deletedContactIds =>
      (_$data['deletedContactIds'] as List<UuidValue>?);

  List<Input_ContactsUpdates>? get contactUpdates =>
      (_$data['contactUpdates'] as List<Input_ContactsUpdates>?);

  List<Input_ContactsInsertInput>? get newContacts =>
      (_$data['newContacts'] as List<Input_ContactsInsertInput>?);

  bool? get deleteContacts => (_$data['deleteContacts'] as bool?);

  bool? get updateContactsMany => (_$data['updateContactsMany'] as bool?);

  bool? get insertContacts => (_$data['insertContacts'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    final l$newFamily = newFamily;
    result$data['newFamily'] = l$newFamily.toJson();
    final l$addressId = addressId;
    result$data['addressId'] = uuidToString(l$addressId);
    if (_$data.containsKey('newAddress')) {
      final l$newAddress = newAddress;
      result$data['newAddress'] = l$newAddress?.toJson();
    }
    final l$deleteParents = deleteParents;
    result$data['deleteParents'] = l$deleteParents
        .map((e) => uuidToString(e))
        .toList();
    final l$deleteChildren = deleteChildren;
    result$data['deleteChildren'] = l$deleteChildren
        .map((e) => uuidToString(e))
        .toList();
    final l$addRelatedFamilies = addRelatedFamilies;
    result$data['addRelatedFamilies'] = l$addRelatedFamilies
        .map((e) => e.toJson())
        .toList();
    final l$updateFamily = updateFamily;
    result$data['updateFamily'] = l$updateFamily;
    final l$updateAddress = updateAddress;
    result$data['updateAddress'] = l$updateAddress;
    final l$deleteRelatedFamilies = deleteRelatedFamilies;
    result$data['deleteRelatedFamilies'] = l$deleteRelatedFamilies;
    final l$insertRelatedFamilies = insertRelatedFamilies;
    result$data['insertRelatedFamilies'] = l$insertRelatedFamilies;
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    if (_$data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = lastFatherVisit;
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : tstzToString(l$lastFatherVisit);
    }
    final l$insertVisitHistory = insertVisitHistory;
    result$data['insertVisitHistory'] = l$insertVisitHistory;
    final l$insertFatherVisitHistory = insertFatherVisitHistory;
    result$data['insertFatherVisitHistory'] = l$insertFatherVisitHistory;
    if (_$data.containsKey('deletedContactIds')) {
      final l$deletedContactIds = deletedContactIds;
      result$data['deletedContactIds'] =
          (l$deletedContactIds as List<UuidValue>)
              .map((e) => uuidToString(e))
              .toList();
    }
    if (_$data.containsKey('contactUpdates')) {
      final l$contactUpdates = contactUpdates;
      result$data['contactUpdates'] =
          (l$contactUpdates as List<Input_ContactsUpdates>)
              .map((e) => e.toJson())
              .toList();
    }
    if (_$data.containsKey('newContacts')) {
      final l$newContacts = newContacts;
      result$data['newContacts'] =
          (l$newContacts as List<Input_ContactsInsertInput>)
              .map((e) => e.toJson())
              .toList();
    }
    if (_$data.containsKey('deleteContacts')) {
      final l$deleteContacts = deleteContacts;
      result$data['deleteContacts'] = (l$deleteContacts as bool);
    }
    if (_$data.containsKey('updateContactsMany')) {
      final l$updateContactsMany = updateContactsMany;
      result$data['updateContactsMany'] = (l$updateContactsMany as bool);
    }
    if (_$data.containsKey('insertContacts')) {
      final l$insertContacts = insertContacts;
      result$data['insertContacts'] = (l$insertContacts as bool);
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateFamily<Variables_Mutation_updateFamily>
  get copyWith => CopyWith_Variables_Mutation_updateFamily(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateFamily ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$newFamily = newFamily;
    final lOther$newFamily = other.newFamily;
    if (l$newFamily != lOther$newFamily) {
      return false;
    }
    final l$addressId = addressId;
    final lOther$addressId = other.addressId;
    if (l$addressId != lOther$addressId) {
      return false;
    }
    final l$newAddress = newAddress;
    final lOther$newAddress = other.newAddress;
    if (_$data.containsKey('newAddress') !=
        other._$data.containsKey('newAddress')) {
      return false;
    }
    if (l$newAddress != lOther$newAddress) {
      return false;
    }
    final l$deleteParents = deleteParents;
    final lOther$deleteParents = other.deleteParents;
    if (l$deleteParents.length != lOther$deleteParents.length) {
      return false;
    }
    for (int i = 0; i < l$deleteParents.length; i++) {
      final l$deleteParents$entry = l$deleteParents[i];
      final lOther$deleteParents$entry = lOther$deleteParents[i];
      if (l$deleteParents$entry != lOther$deleteParents$entry) {
        return false;
      }
    }
    final l$deleteChildren = deleteChildren;
    final lOther$deleteChildren = other.deleteChildren;
    if (l$deleteChildren.length != lOther$deleteChildren.length) {
      return false;
    }
    for (int i = 0; i < l$deleteChildren.length; i++) {
      final l$deleteChildren$entry = l$deleteChildren[i];
      final lOther$deleteChildren$entry = lOther$deleteChildren[i];
      if (l$deleteChildren$entry != lOther$deleteChildren$entry) {
        return false;
      }
    }
    final l$addRelatedFamilies = addRelatedFamilies;
    final lOther$addRelatedFamilies = other.addRelatedFamilies;
    if (l$addRelatedFamilies.length != lOther$addRelatedFamilies.length) {
      return false;
    }
    for (int i = 0; i < l$addRelatedFamilies.length; i++) {
      final l$addRelatedFamilies$entry = l$addRelatedFamilies[i];
      final lOther$addRelatedFamilies$entry = lOther$addRelatedFamilies[i];
      if (l$addRelatedFamilies$entry != lOther$addRelatedFamilies$entry) {
        return false;
      }
    }
    final l$updateFamily = updateFamily;
    final lOther$updateFamily = other.updateFamily;
    if (l$updateFamily != lOther$updateFamily) {
      return false;
    }
    final l$updateAddress = updateAddress;
    final lOther$updateAddress = other.updateAddress;
    if (l$updateAddress != lOther$updateAddress) {
      return false;
    }
    final l$deleteRelatedFamilies = deleteRelatedFamilies;
    final lOther$deleteRelatedFamilies = other.deleteRelatedFamilies;
    if (l$deleteRelatedFamilies != lOther$deleteRelatedFamilies) {
      return false;
    }
    final l$insertRelatedFamilies = insertRelatedFamilies;
    final lOther$insertRelatedFamilies = other.insertRelatedFamilies;
    if (l$insertRelatedFamilies != lOther$insertRelatedFamilies) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$lastFatherVisit = lastFatherVisit;
    final lOther$lastFatherVisit = other.lastFatherVisit;
    if (_$data.containsKey('lastFatherVisit') !=
        other._$data.containsKey('lastFatherVisit')) {
      return false;
    }
    if (l$lastFatherVisit != lOther$lastFatherVisit) {
      return false;
    }
    final l$insertVisitHistory = insertVisitHistory;
    final lOther$insertVisitHistory = other.insertVisitHistory;
    if (l$insertVisitHistory != lOther$insertVisitHistory) {
      return false;
    }
    final l$insertFatherVisitHistory = insertFatherVisitHistory;
    final lOther$insertFatherVisitHistory = other.insertFatherVisitHistory;
    if (l$insertFatherVisitHistory != lOther$insertFatherVisitHistory) {
      return false;
    }
    final l$deletedContactIds = deletedContactIds;
    final lOther$deletedContactIds = other.deletedContactIds;
    if (_$data.containsKey('deletedContactIds') !=
        other._$data.containsKey('deletedContactIds')) {
      return false;
    }
    if (l$deletedContactIds != null && lOther$deletedContactIds != null) {
      if (l$deletedContactIds.length != lOther$deletedContactIds.length) {
        return false;
      }
      for (int i = 0; i < l$deletedContactIds.length; i++) {
        final l$deletedContactIds$entry = l$deletedContactIds[i];
        final lOther$deletedContactIds$entry = lOther$deletedContactIds[i];
        if (l$deletedContactIds$entry != lOther$deletedContactIds$entry) {
          return false;
        }
      }
    } else if (l$deletedContactIds != lOther$deletedContactIds) {
      return false;
    }
    final l$contactUpdates = contactUpdates;
    final lOther$contactUpdates = other.contactUpdates;
    if (_$data.containsKey('contactUpdates') !=
        other._$data.containsKey('contactUpdates')) {
      return false;
    }
    if (l$contactUpdates != null && lOther$contactUpdates != null) {
      if (l$contactUpdates.length != lOther$contactUpdates.length) {
        return false;
      }
      for (int i = 0; i < l$contactUpdates.length; i++) {
        final l$contactUpdates$entry = l$contactUpdates[i];
        final lOther$contactUpdates$entry = lOther$contactUpdates[i];
        if (l$contactUpdates$entry != lOther$contactUpdates$entry) {
          return false;
        }
      }
    } else if (l$contactUpdates != lOther$contactUpdates) {
      return false;
    }
    final l$newContacts = newContacts;
    final lOther$newContacts = other.newContacts;
    if (_$data.containsKey('newContacts') !=
        other._$data.containsKey('newContacts')) {
      return false;
    }
    if (l$newContacts != null && lOther$newContacts != null) {
      if (l$newContacts.length != lOther$newContacts.length) {
        return false;
      }
      for (int i = 0; i < l$newContacts.length; i++) {
        final l$newContacts$entry = l$newContacts[i];
        final lOther$newContacts$entry = lOther$newContacts[i];
        if (l$newContacts$entry != lOther$newContacts$entry) {
          return false;
        }
      }
    } else if (l$newContacts != lOther$newContacts) {
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
    final l$updateContactsMany = updateContactsMany;
    final lOther$updateContactsMany = other.updateContactsMany;
    if (_$data.containsKey('updateContactsMany') !=
        other._$data.containsKey('updateContactsMany')) {
      return false;
    }
    if (l$updateContactsMany != lOther$updateContactsMany) {
      return false;
    }
    final l$insertContacts = insertContacts;
    final lOther$insertContacts = other.insertContacts;
    if (_$data.containsKey('insertContacts') !=
        other._$data.containsKey('insertContacts')) {
      return false;
    }
    if (l$insertContacts != lOther$insertContacts) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$newFamily = newFamily;
    final l$addressId = addressId;
    final l$newAddress = newAddress;
    final l$deleteParents = deleteParents;
    final l$deleteChildren = deleteChildren;
    final l$addRelatedFamilies = addRelatedFamilies;
    final l$updateFamily = updateFamily;
    final l$updateAddress = updateAddress;
    final l$deleteRelatedFamilies = deleteRelatedFamilies;
    final l$insertRelatedFamilies = insertRelatedFamilies;
    final l$lastVisit = lastVisit;
    final l$lastFatherVisit = lastFatherVisit;
    final l$insertVisitHistory = insertVisitHistory;
    final l$insertFatherVisitHistory = insertFatherVisitHistory;
    final l$deletedContactIds = deletedContactIds;
    final l$contactUpdates = contactUpdates;
    final l$newContacts = newContacts;
    final l$deleteContacts = deleteContacts;
    final l$updateContactsMany = updateContactsMany;
    final l$insertContacts = insertContacts;
    return Object.hashAll([
      l$familyId,
      l$newFamily,
      l$addressId,
      _$data.containsKey('newAddress') ? l$newAddress : const {},
      Object.hashAll(l$deleteParents.map((v) => v)),
      Object.hashAll(l$deleteChildren.map((v) => v)),
      Object.hashAll(l$addRelatedFamilies.map((v) => v)),
      l$updateFamily,
      l$updateAddress,
      l$deleteRelatedFamilies,
      l$insertRelatedFamilies,
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('lastFatherVisit') ? l$lastFatherVisit : const {},
      l$insertVisitHistory,
      l$insertFatherVisitHistory,
      _$data.containsKey('deletedContactIds')
          ? l$deletedContactIds == null
                ? null
                : Object.hashAll(l$deletedContactIds.map((v) => v))
          : const {},
      _$data.containsKey('contactUpdates')
          ? l$contactUpdates == null
                ? null
                : Object.hashAll(l$contactUpdates.map((v) => v))
          : const {},
      _$data.containsKey('newContacts')
          ? l$newContacts == null
                ? null
                : Object.hashAll(l$newContacts.map((v) => v))
          : const {},
      _$data.containsKey('deleteContacts') ? l$deleteContacts : const {},
      _$data.containsKey('updateContactsMany')
          ? l$updateContactsMany
          : const {},
      _$data.containsKey('insertContacts') ? l$insertContacts : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateFamily<TRes> {
  factory CopyWith_Variables_Mutation_updateFamily(
    Variables_Mutation_updateFamily instance,
    TRes Function(Variables_Mutation_updateFamily) then,
  ) = _CopyWithImpl_Variables_Mutation_updateFamily;

  factory CopyWith_Variables_Mutation_updateFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateFamily;

  TRes call({
    UuidValue? familyId,
    Input_FamiliesSetInput? newFamily,
    UuidValue? addressId,
    Input_AddressesSetInput? newAddress,
    List<UuidValue>? deleteParents,
    List<UuidValue>? deleteChildren,
    List<Input_FamiliesFamiliesInsertInput>? addRelatedFamilies,
    bool? updateFamily,
    bool? updateAddress,
    bool? deleteRelatedFamilies,
    bool? insertRelatedFamilies,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
    bool? insertVisitHistory,
    bool? insertFatherVisitHistory,
    List<UuidValue>? deletedContactIds,
    List<Input_ContactsUpdates>? contactUpdates,
    List<Input_ContactsInsertInput>? newContacts,
    bool? deleteContacts,
    bool? updateContactsMany,
    bool? insertContacts,
  });
}

class _CopyWithImpl_Variables_Mutation_updateFamily<TRes>
    implements CopyWith_Variables_Mutation_updateFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_updateFamily(this._instance, this._then);

  final Variables_Mutation_updateFamily _instance;

  final TRes Function(Variables_Mutation_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? newFamily = _undefined,
    Object? addressId = _undefined,
    Object? newAddress = _undefined,
    Object? deleteParents = _undefined,
    Object? deleteChildren = _undefined,
    Object? addRelatedFamilies = _undefined,
    Object? updateFamily = _undefined,
    Object? updateAddress = _undefined,
    Object? deleteRelatedFamilies = _undefined,
    Object? insertRelatedFamilies = _undefined,
    Object? lastVisit = _undefined,
    Object? lastFatherVisit = _undefined,
    Object? insertVisitHistory = _undefined,
    Object? insertFatherVisitHistory = _undefined,
    Object? deletedContactIds = _undefined,
    Object? contactUpdates = _undefined,
    Object? newContacts = _undefined,
    Object? deleteContacts = _undefined,
    Object? updateContactsMany = _undefined,
    Object? insertContacts = _undefined,
  }) => _then(
    Variables_Mutation_updateFamily._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
      if (newFamily != _undefined && newFamily != null)
        'newFamily': (newFamily as Input_FamiliesSetInput),
      if (addressId != _undefined && addressId != null)
        'addressId': (addressId as UuidValue),
      if (newAddress != _undefined)
        'newAddress': (newAddress as Input_AddressesSetInput?),
      if (deleteParents != _undefined && deleteParents != null)
        'deleteParents': (deleteParents as List<UuidValue>),
      if (deleteChildren != _undefined && deleteChildren != null)
        'deleteChildren': (deleteChildren as List<UuidValue>),
      if (addRelatedFamilies != _undefined && addRelatedFamilies != null)
        'addRelatedFamilies':
            (addRelatedFamilies as List<Input_FamiliesFamiliesInsertInput>),
      if (updateFamily != _undefined && updateFamily != null)
        'updateFamily': (updateFamily as bool),
      if (updateAddress != _undefined && updateAddress != null)
        'updateAddress': (updateAddress as bool),
      if (deleteRelatedFamilies != _undefined && deleteRelatedFamilies != null)
        'deleteRelatedFamilies': (deleteRelatedFamilies as bool),
      if (insertRelatedFamilies != _undefined && insertRelatedFamilies != null)
        'insertRelatedFamilies': (insertRelatedFamilies as bool),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
      if (lastFatherVisit != _undefined)
        'lastFatherVisit': (lastFatherVisit as DateTime?),
      if (insertVisitHistory != _undefined && insertVisitHistory != null)
        'insertVisitHistory': (insertVisitHistory as bool),
      if (insertFatherVisitHistory != _undefined &&
          insertFatherVisitHistory != null)
        'insertFatherVisitHistory': (insertFatherVisitHistory as bool),
      if (deletedContactIds != _undefined && deletedContactIds != null)
        'deletedContactIds': (deletedContactIds as List<UuidValue>),
      if (contactUpdates != _undefined && contactUpdates != null)
        'contactUpdates': (contactUpdates as List<Input_ContactsUpdates>),
      if (newContacts != _undefined && newContacts != null)
        'newContacts': (newContacts as List<Input_ContactsInsertInput>),
      if (deleteContacts != _undefined && deleteContacts != null)
        'deleteContacts': (deleteContacts as bool),
      if (updateContactsMany != _undefined && updateContactsMany != null)
        'updateContactsMany': (updateContactsMany as bool),
      if (insertContacts != _undefined && insertContacts != null)
        'insertContacts': (insertContacts as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateFamily<TRes>
    implements CopyWith_Variables_Mutation_updateFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateFamily(this._res);

  TRes _res;

  call({
    UuidValue? familyId,
    Input_FamiliesSetInput? newFamily,
    UuidValue? addressId,
    Input_AddressesSetInput? newAddress,
    List<UuidValue>? deleteParents,
    List<UuidValue>? deleteChildren,
    List<Input_FamiliesFamiliesInsertInput>? addRelatedFamilies,
    bool? updateFamily,
    bool? updateAddress,
    bool? deleteRelatedFamilies,
    bool? insertRelatedFamilies,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
    bool? insertVisitHistory,
    bool? insertFatherVisitHistory,
    List<UuidValue>? deletedContactIds,
    List<Input_ContactsUpdates>? contactUpdates,
    List<Input_ContactsInsertInput>? newContacts,
    bool? deleteContacts,
    bool? updateContactsMany,
    bool? insertContacts,
  }) => _res;
}

class Mutation_updateFamily {
  Mutation_updateFamily({
    this.updateFamiliesByPk,
    this.updateAddressesByPk,
    this.deleteFamiliesFamilies,
    this.insertFamiliesFamilies,
    this.deleteContacts,
    this.updateContactsMany,
    this.insertContacts,
    this.insertHistoryVisitHistoryOne,
    this.$_fatherVisitHistory,
  });

  factory Mutation_updateFamily.fromJson(Map<String, dynamic> json) {
    final l$updateFamiliesByPk = json['updateFamiliesByPk'];
    final l$updateAddressesByPk = json['updateAddressesByPk'];
    final l$deleteFamiliesFamilies = json['deleteFamiliesFamilies'];
    final l$insertFamiliesFamilies = json['insertFamiliesFamilies'];
    final l$deleteContacts = json['deleteContacts'];
    final l$updateContactsMany = json['updateContactsMany'];
    final l$insertContacts = json['insertContacts'];
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$_fatherVisitHistory = json['_fatherVisitHistory'];
    return Mutation_updateFamily(
      updateFamiliesByPk: l$updateFamiliesByPk == null
          ? null
          : Fragment_Family.fromJson(
              (l$updateFamiliesByPk as Map<String, dynamic>),
            ),
      updateAddressesByPk: l$updateAddressesByPk == null
          ? null
          : Fragment_Address.fromJson(
              (l$updateAddressesByPk as Map<String, dynamic>),
            ),
      deleteFamiliesFamilies: l$deleteFamiliesFamilies == null
          ? null
          : Mutation_updateFamily_deleteFamiliesFamilies.fromJson(
              (l$deleteFamiliesFamilies as Map<String, dynamic>),
            ),
      insertFamiliesFamilies: l$insertFamiliesFamilies == null
          ? null
          : Mutation_updateFamily_insertFamiliesFamilies.fromJson(
              (l$insertFamiliesFamilies as Map<String, dynamic>),
            ),
      deleteContacts: l$deleteContacts == null
          ? null
          : Mutation_updateFamily_deleteContacts.fromJson(
              (l$deleteContacts as Map<String, dynamic>),
            ),
      updateContactsMany: (l$updateContactsMany as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation_updateFamily_updateContactsMany.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      insertContacts: l$insertContacts == null
          ? null
          : Mutation_updateFamily_insertContacts.fromJson(
              (l$insertContacts as Map<String, dynamic>),
            ),
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation_updateFamily_insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>),
            ),
      $_fatherVisitHistory: l$$_fatherVisitHistory == null
          ? null
          : Mutation_updateFamily__fatherVisitHistory.fromJson(
              (l$$_fatherVisitHistory as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Family? updateFamiliesByPk;

  final Fragment_Address? updateAddressesByPk;

  final Mutation_updateFamily_deleteFamiliesFamilies? deleteFamiliesFamilies;

  final Mutation_updateFamily_insertFamiliesFamilies? insertFamiliesFamilies;

  final Mutation_updateFamily_deleteContacts? deleteContacts;

  final List<Mutation_updateFamily_updateContactsMany?>? updateContactsMany;

  final Mutation_updateFamily_insertContacts? insertContacts;

  final Mutation_updateFamily_insertHistoryVisitHistoryOne?
  insertHistoryVisitHistoryOne;

  final Mutation_updateFamily__fatherVisitHistory? $_fatherVisitHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateFamiliesByPk = updateFamiliesByPk;
    _resultData['updateFamiliesByPk'] = l$updateFamiliesByPk?.toJson();
    final l$updateAddressesByPk = updateAddressesByPk;
    _resultData['updateAddressesByPk'] = l$updateAddressesByPk?.toJson();
    final l$deleteFamiliesFamilies = deleteFamiliesFamilies;
    _resultData['deleteFamiliesFamilies'] = l$deleteFamiliesFamilies?.toJson();
    final l$insertFamiliesFamilies = insertFamiliesFamilies;
    _resultData['insertFamiliesFamilies'] = l$insertFamiliesFamilies?.toJson();
    final l$deleteContacts = deleteContacts;
    _resultData['deleteContacts'] = l$deleteContacts?.toJson();
    final l$updateContactsMany = updateContactsMany;
    _resultData['updateContactsMany'] = l$updateContactsMany
        ?.map((e) => e?.toJson())
        .toList();
    final l$insertContacts = insertContacts;
    _resultData['insertContacts'] = l$insertContacts?.toJson();
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] = l$insertHistoryVisitHistoryOne
        ?.toJson();
    final l$$_fatherVisitHistory = $_fatherVisitHistory;
    _resultData['_fatherVisitHistory'] = l$$_fatherVisitHistory?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateFamiliesByPk = updateFamiliesByPk;
    final l$updateAddressesByPk = updateAddressesByPk;
    final l$deleteFamiliesFamilies = deleteFamiliesFamilies;
    final l$insertFamiliesFamilies = insertFamiliesFamilies;
    final l$deleteContacts = deleteContacts;
    final l$updateContactsMany = updateContactsMany;
    final l$insertContacts = insertContacts;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$_fatherVisitHistory = $_fatherVisitHistory;
    return Object.hashAll([
      l$updateFamiliesByPk,
      l$updateAddressesByPk,
      l$deleteFamiliesFamilies,
      l$insertFamiliesFamilies,
      l$deleteContacts,
      l$updateContactsMany == null
          ? null
          : Object.hashAll(l$updateContactsMany.map((v) => v)),
      l$insertContacts,
      l$insertHistoryVisitHistoryOne,
      l$$_fatherVisitHistory,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateFamily || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateFamiliesByPk = updateFamiliesByPk;
    final lOther$updateFamiliesByPk = other.updateFamiliesByPk;
    if (l$updateFamiliesByPk != lOther$updateFamiliesByPk) {
      return false;
    }
    final l$updateAddressesByPk = updateAddressesByPk;
    final lOther$updateAddressesByPk = other.updateAddressesByPk;
    if (l$updateAddressesByPk != lOther$updateAddressesByPk) {
      return false;
    }
    final l$deleteFamiliesFamilies = deleteFamiliesFamilies;
    final lOther$deleteFamiliesFamilies = other.deleteFamiliesFamilies;
    if (l$deleteFamiliesFamilies != lOther$deleteFamiliesFamilies) {
      return false;
    }
    final l$insertFamiliesFamilies = insertFamiliesFamilies;
    final lOther$insertFamiliesFamilies = other.insertFamiliesFamilies;
    if (l$insertFamiliesFamilies != lOther$insertFamiliesFamilies) {
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
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
      return false;
    }
    final l$$_fatherVisitHistory = $_fatherVisitHistory;
    final lOther$$_fatherVisitHistory = other.$_fatherVisitHistory;
    if (l$$_fatherVisitHistory != lOther$$_fatherVisitHistory) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updateFamily on Mutation_updateFamily {
  CopyWith_Mutation_updateFamily<Mutation_updateFamily> get copyWith =>
      CopyWith_Mutation_updateFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily<TRes> {
  factory CopyWith_Mutation_updateFamily(
    Mutation_updateFamily instance,
    TRes Function(Mutation_updateFamily) then,
  ) = _CopyWithImpl_Mutation_updateFamily;

  factory CopyWith_Mutation_updateFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily;

  TRes call({
    Fragment_Family? updateFamiliesByPk,
    Fragment_Address? updateAddressesByPk,
    Mutation_updateFamily_deleteFamiliesFamilies? deleteFamiliesFamilies,
    Mutation_updateFamily_insertFamiliesFamilies? insertFamiliesFamilies,
    Mutation_updateFamily_deleteContacts? deleteContacts,
    List<Mutation_updateFamily_updateContactsMany?>? updateContactsMany,
    Mutation_updateFamily_insertContacts? insertContacts,
    Mutation_updateFamily_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    Mutation_updateFamily__fatherVisitHistory? $_fatherVisitHistory,
  });
  CopyWith_Fragment_Family<TRes> get updateFamiliesByPk;
  CopyWith_Fragment_Address<TRes> get updateAddressesByPk;
  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
  get deleteFamiliesFamilies;
  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes>
  get insertFamiliesFamilies;
  CopyWith_Mutation_updateFamily_deleteContacts<TRes> get deleteContacts;
  TRes updateContactsMany(
    Iterable<Mutation_updateFamily_updateContactsMany?>? Function(
      Iterable<
        CopyWith_Mutation_updateFamily_updateContactsMany<
          Mutation_updateFamily_updateContactsMany
        >?
      >?,
    )
    _fn,
  );
  CopyWith_Mutation_updateFamily_insertContacts<TRes> get insertContacts;
  CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne;
  CopyWith_Mutation_updateFamily__fatherVisitHistory<TRes>
  get $_fatherVisitHistory;
}

class _CopyWithImpl_Mutation_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily<TRes> {
  _CopyWithImpl_Mutation_updateFamily(this._instance, this._then);

  final Mutation_updateFamily _instance;

  final TRes Function(Mutation_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateFamiliesByPk = _undefined,
    Object? updateAddressesByPk = _undefined,
    Object? deleteFamiliesFamilies = _undefined,
    Object? insertFamiliesFamilies = _undefined,
    Object? deleteContacts = _undefined,
    Object? updateContactsMany = _undefined,
    Object? insertContacts = _undefined,
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $_fatherVisitHistory = _undefined,
  }) => _then(
    Mutation_updateFamily(
      updateFamiliesByPk: updateFamiliesByPk == _undefined
          ? _instance.updateFamiliesByPk
          : (updateFamiliesByPk as Fragment_Family?),
      updateAddressesByPk: updateAddressesByPk == _undefined
          ? _instance.updateAddressesByPk
          : (updateAddressesByPk as Fragment_Address?),
      deleteFamiliesFamilies: deleteFamiliesFamilies == _undefined
          ? _instance.deleteFamiliesFamilies
          : (deleteFamiliesFamilies
                as Mutation_updateFamily_deleteFamiliesFamilies?),
      insertFamiliesFamilies: insertFamiliesFamilies == _undefined
          ? _instance.insertFamiliesFamilies
          : (insertFamiliesFamilies
                as Mutation_updateFamily_insertFamiliesFamilies?),
      deleteContacts: deleteContacts == _undefined
          ? _instance.deleteContacts
          : (deleteContacts as Mutation_updateFamily_deleteContacts?),
      updateContactsMany: updateContactsMany == _undefined
          ? _instance.updateContactsMany
          : (updateContactsMany
                as List<Mutation_updateFamily_updateContactsMany?>?),
      insertContacts: insertContacts == _undefined
          ? _instance.insertContacts
          : (insertContacts as Mutation_updateFamily_insertContacts?),
      insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
          ? _instance.insertHistoryVisitHistoryOne
          : (insertHistoryVisitHistoryOne
                as Mutation_updateFamily_insertHistoryVisitHistoryOne?),
      $_fatherVisitHistory: $_fatherVisitHistory == _undefined
          ? _instance.$_fatherVisitHistory
          : ($_fatherVisitHistory
                as Mutation_updateFamily__fatherVisitHistory?),
    ),
  );

  CopyWith_Fragment_Family<TRes> get updateFamiliesByPk {
    final local$updateFamiliesByPk = _instance.updateFamiliesByPk;
    return local$updateFamiliesByPk == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(
            local$updateFamiliesByPk,
            (e) => call(updateFamiliesByPk: e),
          );
  }

  CopyWith_Fragment_Address<TRes> get updateAddressesByPk {
    final local$updateAddressesByPk = _instance.updateAddressesByPk;
    return local$updateAddressesByPk == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(
            local$updateAddressesByPk,
            (e) => call(updateAddressesByPk: e),
          );
  }

  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
  get deleteFamiliesFamilies {
    final local$deleteFamiliesFamilies = _instance.deleteFamiliesFamilies;
    return local$deleteFamiliesFamilies == null
        ? CopyWith_Mutation_updateFamily_deleteFamiliesFamilies.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateFamily_deleteFamiliesFamilies(
            local$deleteFamiliesFamilies,
            (e) => call(deleteFamiliesFamilies: e),
          );
  }

  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes>
  get insertFamiliesFamilies {
    final local$insertFamiliesFamilies = _instance.insertFamiliesFamilies;
    return local$insertFamiliesFamilies == null
        ? CopyWith_Mutation_updateFamily_insertFamiliesFamilies.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateFamily_insertFamiliesFamilies(
            local$insertFamiliesFamilies,
            (e) => call(insertFamiliesFamilies: e),
          );
  }

  CopyWith_Mutation_updateFamily_deleteContacts<TRes> get deleteContacts {
    final local$deleteContacts = _instance.deleteContacts;
    return local$deleteContacts == null
        ? CopyWith_Mutation_updateFamily_deleteContacts.stub(_then(_instance))
        : CopyWith_Mutation_updateFamily_deleteContacts(
            local$deleteContacts,
            (e) => call(deleteContacts: e),
          );
  }

  TRes updateContactsMany(
    Iterable<Mutation_updateFamily_updateContactsMany?>? Function(
      Iterable<
        CopyWith_Mutation_updateFamily_updateContactsMany<
          Mutation_updateFamily_updateContactsMany
        >?
      >?,
    )
    _fn,
  ) => call(
    updateContactsMany: _fn(
      _instance.updateContactsMany?.map(
        (e) => e == null
            ? null
            : CopyWith_Mutation_updateFamily_updateContactsMany(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Mutation_updateFamily_insertContacts<TRes> get insertContacts {
    final local$insertContacts = _instance.insertContacts;
    return local$insertContacts == null
        ? CopyWith_Mutation_updateFamily_insertContacts.stub(_then(_instance))
        : CopyWith_Mutation_updateFamily_insertContacts(
            local$insertContacts,
            (e) => call(insertContacts: e),
          );
  }

  CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e),
          );
  }

  CopyWith_Mutation_updateFamily__fatherVisitHistory<TRes>
  get $_fatherVisitHistory {
    final local$$_fatherVisitHistory = _instance.$_fatherVisitHistory;
    return local$$_fatherVisitHistory == null
        ? CopyWith_Mutation_updateFamily__fatherVisitHistory.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateFamily__fatherVisitHistory(
            local$$_fatherVisitHistory,
            (e) => call($_fatherVisitHistory: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily(this._res);

  TRes _res;

  call({
    Fragment_Family? updateFamiliesByPk,
    Fragment_Address? updateAddressesByPk,
    Mutation_updateFamily_deleteFamiliesFamilies? deleteFamiliesFamilies,
    Mutation_updateFamily_insertFamiliesFamilies? insertFamiliesFamilies,
    Mutation_updateFamily_deleteContacts? deleteContacts,
    List<Mutation_updateFamily_updateContactsMany?>? updateContactsMany,
    Mutation_updateFamily_insertContacts? insertContacts,
    Mutation_updateFamily_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    Mutation_updateFamily__fatherVisitHistory? $_fatherVisitHistory,
  }) => _res;

  CopyWith_Fragment_Family<TRes> get updateFamiliesByPk =>
      CopyWith_Fragment_Family.stub(_res);

  CopyWith_Fragment_Address<TRes> get updateAddressesByPk =>
      CopyWith_Fragment_Address.stub(_res);

  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
  get deleteFamiliesFamilies =>
      CopyWith_Mutation_updateFamily_deleteFamiliesFamilies.stub(_res);

  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes>
  get insertFamiliesFamilies =>
      CopyWith_Mutation_updateFamily_insertFamiliesFamilies.stub(_res);

  CopyWith_Mutation_updateFamily_deleteContacts<TRes> get deleteContacts =>
      CopyWith_Mutation_updateFamily_deleteContacts.stub(_res);

  updateContactsMany(_fn) => _res;

  CopyWith_Mutation_updateFamily_insertContacts<TRes> get insertContacts =>
      CopyWith_Mutation_updateFamily_insertContacts.stub(_res);

  CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne =>
      CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne.stub(_res);

  CopyWith_Mutation_updateFamily__fatherVisitHistory<TRes>
  get $_fatherVisitHistory =>
      CopyWith_Mutation_updateFamily__fatherVisitHistory.stub(_res);
}

const documentNodeMutationupdateFamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateFamily'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'familyId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newFamily')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamiliesSetInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'addressId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newAddress')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddressesSetInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deleteParents')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deleteChildren')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'addRelatedFamilies')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'FamiliesFamiliesInsertInput'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updateFamily')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updateAddress')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'deleteRelatedFamilies'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'insertRelatedFamilies'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastVisit')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastFatherVisit')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'insertVisitHistory')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'insertFatherVisitHistory'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deletedContactIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'contactUpdates')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ContactsUpdates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newContacts')),
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
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updateContactsMany')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'insertContacts')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateFamiliesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'familyId')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'newFamily')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'updateFamily')),
                  ),
                ],
              ),
            ],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Family'),
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
            name: NameNode(value: 'updateAddressesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'addressId')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'newAddress')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'updateAddress')),
                  ),
                ],
              ),
            ],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Address'),
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
            name: NameNode(value: 'deleteFamiliesFamilies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_or'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'childFamilyId'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                        name: NameNode(value: 'familyId'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: 'parentFamilyId'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                        name: NameNode(value: 'deleteParents'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'parentFamilyId'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                        name: NameNode(value: 'familyId'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: 'childFamilyId'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                        name: NameNode(value: 'deleteChildren'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                      name: NameNode(value: 'deleteRelatedFamilies'),
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
            name: NameNode(value: 'insertFamiliesFamilies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: VariableNode(
                  name: NameNode(value: 'addRelatedFamilies'),
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
                      name: NameNode(value: 'insertRelatedFamilies'),
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
                              name: NameNode(value: 'deletedContactIds'),
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
            name: NameNode(value: 'updateContactsMany'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updates'),
                value: VariableNode(name: NameNode(value: 'contactUpdates')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'updateContactsMany'),
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
                value: VariableNode(name: NameNode(value: 'newContacts')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'insertContacts'),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: StringValueNode(value: 'families', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: VariableNode(name: NameNode(value: 'familyId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(name: NameNode(value: 'lastVisit')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isFatherVisit'),
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
                      name: NameNode(value: 'insertVisitHistory'),
                    ),
                  ),
                ],
              ),
            ],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'visitId'),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
            alias: NameNode(value: '_fatherVisitHistory'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: StringValueNode(value: 'families', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: VariableNode(name: NameNode(value: 'familyId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(
                        name: NameNode(value: 'lastFatherVisit'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isFatherVisit'),
                      value: BooleanValueNode(value: true),
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
                      name: NameNode(value: 'insertFatherVisitHistory'),
                    ),
                  ),
                ],
              ),
            ],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'visitId'),
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
    fragmentDefinitionFamily,
    fragmentDefinitionFamilyNoPhoto,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
  ],
);

class Mutation_updateFamily_deleteFamiliesFamilies {
  Mutation_updateFamily_deleteFamiliesFamilies({
    required this.affectedRows,
    this.$__typename = 'FamiliesFamiliesMutationResponse',
  });

  factory Mutation_updateFamily_deleteFamiliesFamilies.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_deleteFamiliesFamilies(
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
    if (other is! Mutation_updateFamily_deleteFamiliesFamilies ||
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

extension UtilityExtension_Mutation_updateFamily_deleteFamiliesFamilies
    on Mutation_updateFamily_deleteFamiliesFamilies {
  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<
    Mutation_updateFamily_deleteFamiliesFamilies
  >
  get copyWith =>
      CopyWith_Mutation_updateFamily_deleteFamiliesFamilies(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes> {
  factory CopyWith_Mutation_updateFamily_deleteFamiliesFamilies(
    Mutation_updateFamily_deleteFamiliesFamilies instance,
    TRes Function(Mutation_updateFamily_deleteFamiliesFamilies) then,
  ) = _CopyWithImpl_Mutation_updateFamily_deleteFamiliesFamilies;

  factory CopyWith_Mutation_updateFamily_deleteFamiliesFamilies.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_deleteFamiliesFamilies;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
    implements CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes> {
  _CopyWithImpl_Mutation_updateFamily_deleteFamiliesFamilies(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily_deleteFamiliesFamilies _instance;

  final TRes Function(Mutation_updateFamily_deleteFamiliesFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateFamily_deleteFamiliesFamilies(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
    implements CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_deleteFamiliesFamilies(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateFamily_insertFamiliesFamilies {
  Mutation_updateFamily_insertFamiliesFamilies({
    required this.affectedRows,
    this.$__typename = 'FamiliesFamiliesMutationResponse',
  });

  factory Mutation_updateFamily_insertFamiliesFamilies.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_insertFamiliesFamilies(
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
    if (other is! Mutation_updateFamily_insertFamiliesFamilies ||
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

extension UtilityExtension_Mutation_updateFamily_insertFamiliesFamilies
    on Mutation_updateFamily_insertFamiliesFamilies {
  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<
    Mutation_updateFamily_insertFamiliesFamilies
  >
  get copyWith =>
      CopyWith_Mutation_updateFamily_insertFamiliesFamilies(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes> {
  factory CopyWith_Mutation_updateFamily_insertFamiliesFamilies(
    Mutation_updateFamily_insertFamiliesFamilies instance,
    TRes Function(Mutation_updateFamily_insertFamiliesFamilies) then,
  ) = _CopyWithImpl_Mutation_updateFamily_insertFamiliesFamilies;

  factory CopyWith_Mutation_updateFamily_insertFamiliesFamilies.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_insertFamiliesFamilies;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily_insertFamiliesFamilies<TRes>
    implements CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes> {
  _CopyWithImpl_Mutation_updateFamily_insertFamiliesFamilies(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily_insertFamiliesFamilies _instance;

  final TRes Function(Mutation_updateFamily_insertFamiliesFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateFamily_insertFamiliesFamilies(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateFamily_insertFamiliesFamilies<TRes>
    implements CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_insertFamiliesFamilies(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateFamily_deleteContacts {
  Mutation_updateFamily_deleteContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_updateFamily_deleteContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_deleteContacts(
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
    if (other is! Mutation_updateFamily_deleteContacts ||
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

extension UtilityExtension_Mutation_updateFamily_deleteContacts
    on Mutation_updateFamily_deleteContacts {
  CopyWith_Mutation_updateFamily_deleteContacts<
    Mutation_updateFamily_deleteContacts
  >
  get copyWith => CopyWith_Mutation_updateFamily_deleteContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily_deleteContacts<TRes> {
  factory CopyWith_Mutation_updateFamily_deleteContacts(
    Mutation_updateFamily_deleteContacts instance,
    TRes Function(Mutation_updateFamily_deleteContacts) then,
  ) = _CopyWithImpl_Mutation_updateFamily_deleteContacts;

  factory CopyWith_Mutation_updateFamily_deleteContacts.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_deleteContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily_deleteContacts<TRes>
    implements CopyWith_Mutation_updateFamily_deleteContacts<TRes> {
  _CopyWithImpl_Mutation_updateFamily_deleteContacts(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily_deleteContacts _instance;

  final TRes Function(Mutation_updateFamily_deleteContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateFamily_deleteContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateFamily_deleteContacts<TRes>
    implements CopyWith_Mutation_updateFamily_deleteContacts<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_deleteContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateFamily_updateContactsMany {
  Mutation_updateFamily_updateContactsMany({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_updateFamily_updateContactsMany.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_updateContactsMany(
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
    if (other is! Mutation_updateFamily_updateContactsMany ||
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

extension UtilityExtension_Mutation_updateFamily_updateContactsMany
    on Mutation_updateFamily_updateContactsMany {
  CopyWith_Mutation_updateFamily_updateContactsMany<
    Mutation_updateFamily_updateContactsMany
  >
  get copyWith =>
      CopyWith_Mutation_updateFamily_updateContactsMany(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily_updateContactsMany<TRes> {
  factory CopyWith_Mutation_updateFamily_updateContactsMany(
    Mutation_updateFamily_updateContactsMany instance,
    TRes Function(Mutation_updateFamily_updateContactsMany) then,
  ) = _CopyWithImpl_Mutation_updateFamily_updateContactsMany;

  factory CopyWith_Mutation_updateFamily_updateContactsMany.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_updateContactsMany;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily_updateContactsMany<TRes>
    implements CopyWith_Mutation_updateFamily_updateContactsMany<TRes> {
  _CopyWithImpl_Mutation_updateFamily_updateContactsMany(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily_updateContactsMany _instance;

  final TRes Function(Mutation_updateFamily_updateContactsMany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateFamily_updateContactsMany(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateFamily_updateContactsMany<TRes>
    implements CopyWith_Mutation_updateFamily_updateContactsMany<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_updateContactsMany(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateFamily_insertContacts {
  Mutation_updateFamily_insertContacts({
    required this.affectedRows,
    this.$__typename = 'ContactsMutationResponse',
  });

  factory Mutation_updateFamily_insertContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_insertContacts(
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
    if (other is! Mutation_updateFamily_insertContacts ||
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

extension UtilityExtension_Mutation_updateFamily_insertContacts
    on Mutation_updateFamily_insertContacts {
  CopyWith_Mutation_updateFamily_insertContacts<
    Mutation_updateFamily_insertContacts
  >
  get copyWith => CopyWith_Mutation_updateFamily_insertContacts(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily_insertContacts<TRes> {
  factory CopyWith_Mutation_updateFamily_insertContacts(
    Mutation_updateFamily_insertContacts instance,
    TRes Function(Mutation_updateFamily_insertContacts) then,
  ) = _CopyWithImpl_Mutation_updateFamily_insertContacts;

  factory CopyWith_Mutation_updateFamily_insertContacts.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_insertContacts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily_insertContacts<TRes>
    implements CopyWith_Mutation_updateFamily_insertContacts<TRes> {
  _CopyWithImpl_Mutation_updateFamily_insertContacts(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily_insertContacts _instance;

  final TRes Function(Mutation_updateFamily_insertContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateFamily_insertContacts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateFamily_insertContacts<TRes>
    implements CopyWith_Mutation_updateFamily_insertContacts<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_insertContacts(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateFamily_insertHistoryVisitHistoryOne {
  Mutation_updateFamily_insertHistoryVisitHistoryOne({
    required this.visitId,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation_updateFamily_insertHistoryVisitHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$visitId = json['visitId'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_insertHistoryVisitHistoryOne(
      visitId: stringToUuid(l$visitId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue visitId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visitId = visitId;
    _resultData['visitId'] = uuidToString(l$visitId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visitId = visitId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visitId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateFamily_insertHistoryVisitHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (l$visitId != lOther$visitId) {
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

extension UtilityExtension_Mutation_updateFamily_insertHistoryVisitHistoryOne
    on Mutation_updateFamily_insertHistoryVisitHistoryOne {
  CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<
    Mutation_updateFamily_insertHistoryVisitHistoryOne
  >
  get copyWith => CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne(
    Mutation_updateFamily_insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation_updateFamily_insertHistoryVisitHistoryOne) then,
  ) = _CopyWithImpl_Mutation_updateFamily_insertHistoryVisitHistoryOne;

  factory CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateFamily_insertHistoryVisitHistoryOne;

  TRes call({UuidValue? visitId, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes> {
  _CopyWithImpl_Mutation_updateFamily_insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily_insertHistoryVisitHistoryOne _instance;

  final TRes Function(Mutation_updateFamily_insertHistoryVisitHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? visitId = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateFamily_insertHistoryVisitHistoryOne(
          visitId: visitId == _undefined || visitId == null
              ? _instance.visitId
              : (visitId as UuidValue),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith_Mutation_updateFamily_insertHistoryVisitHistoryOne<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_insertHistoryVisitHistoryOne(
    this._res,
  );

  TRes _res;

  call({UuidValue? visitId, String? $__typename}) => _res;
}

class Mutation_updateFamily__fatherVisitHistory {
  Mutation_updateFamily__fatherVisitHistory({
    required this.visitId,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation_updateFamily__fatherVisitHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$visitId = json['visitId'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily__fatherVisitHistory(
      visitId: stringToUuid(l$visitId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue visitId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visitId = visitId;
    _resultData['visitId'] = uuidToString(l$visitId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visitId = visitId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visitId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateFamily__fatherVisitHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (l$visitId != lOther$visitId) {
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

extension UtilityExtension_Mutation_updateFamily__fatherVisitHistory
    on Mutation_updateFamily__fatherVisitHistory {
  CopyWith_Mutation_updateFamily__fatherVisitHistory<
    Mutation_updateFamily__fatherVisitHistory
  >
  get copyWith =>
      CopyWith_Mutation_updateFamily__fatherVisitHistory(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily__fatherVisitHistory<TRes> {
  factory CopyWith_Mutation_updateFamily__fatherVisitHistory(
    Mutation_updateFamily__fatherVisitHistory instance,
    TRes Function(Mutation_updateFamily__fatherVisitHistory) then,
  ) = _CopyWithImpl_Mutation_updateFamily__fatherVisitHistory;

  factory CopyWith_Mutation_updateFamily__fatherVisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily__fatherVisitHistory;

  TRes call({UuidValue? visitId, String? $__typename});
}

class _CopyWithImpl_Mutation_updateFamily__fatherVisitHistory<TRes>
    implements CopyWith_Mutation_updateFamily__fatherVisitHistory<TRes> {
  _CopyWithImpl_Mutation_updateFamily__fatherVisitHistory(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily__fatherVisitHistory _instance;

  final TRes Function(Mutation_updateFamily__fatherVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? visitId = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateFamily__fatherVisitHistory(
          visitId: visitId == _undefined || visitId == null
              ? _instance.visitId
              : (visitId as UuidValue),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_updateFamily__fatherVisitHistory<TRes>
    implements CopyWith_Mutation_updateFamily__fatherVisitHistory<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily__fatherVisitHistory(this._res);

  TRes _res;

  call({UuidValue? visitId, String? $__typename}) => _res;
}
