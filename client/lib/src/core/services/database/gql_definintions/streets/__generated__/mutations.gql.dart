import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteStreet {
  factory Variables_Mutation_deleteStreet({required UuidValue streetId}) =>
      Variables_Mutation_deleteStreet._({r'streetId': streetId});

  Variables_Mutation_deleteStreet._(this._$data);

  factory Variables_Mutation_deleteStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$streetId = data['streetId'];
    result$data['streetId'] = stringToUuid(l$streetId);
    return Variables_Mutation_deleteStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get streetId => (_$data['streetId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$streetId = streetId;
    result$data['streetId'] = uuidToString(l$streetId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteStreet<Variables_Mutation_deleteStreet>
  get copyWith => CopyWith_Variables_Mutation_deleteStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteStreet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (l$streetId != lOther$streetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$streetId = streetId;
    return Object.hashAll([l$streetId]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteStreet<TRes> {
  factory CopyWith_Variables_Mutation_deleteStreet(
    Variables_Mutation_deleteStreet instance,
    TRes Function(Variables_Mutation_deleteStreet) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteStreet;

  factory CopyWith_Variables_Mutation_deleteStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteStreet;

  TRes call({UuidValue? streetId});
}

class _CopyWithImpl_Variables_Mutation_deleteStreet<TRes>
    implements CopyWith_Variables_Mutation_deleteStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteStreet(this._instance, this._then);

  final Variables_Mutation_deleteStreet _instance;

  final TRes Function(Variables_Mutation_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetId = _undefined}) => _then(
    Variables_Mutation_deleteStreet._({
      ..._instance._$data,
      if (streetId != _undefined && streetId != null)
        'streetId': (streetId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteStreet<TRes>
    implements CopyWith_Variables_Mutation_deleteStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteStreet(this._res);

  TRes _res;

  call({UuidValue? streetId}) => _res;
}

class Mutation_deleteStreet {
  Mutation_deleteStreet({
    this.deleteStreetsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteStreet.fromJson(Map<String, dynamic> json) {
    final l$deleteStreetsByPk = json['deleteStreetsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteStreet(
      deleteStreetsByPk: l$deleteStreetsByPk == null
          ? null
          : Fragment_Street.fromJson(
              (l$deleteStreetsByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Street? deleteStreetsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteStreetsByPk = deleteStreetsByPk;
    _resultData['deleteStreetsByPk'] = l$deleteStreetsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteStreetsByPk = deleteStreetsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteStreetsByPk, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteStreet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteStreetsByPk = deleteStreetsByPk;
    final lOther$deleteStreetsByPk = other.deleteStreetsByPk;
    if (l$deleteStreetsByPk != lOther$deleteStreetsByPk) {
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

extension UtilityExtension_Mutation_deleteStreet on Mutation_deleteStreet {
  CopyWith_Mutation_deleteStreet<Mutation_deleteStreet> get copyWith =>
      CopyWith_Mutation_deleteStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteStreet<TRes> {
  factory CopyWith_Mutation_deleteStreet(
    Mutation_deleteStreet instance,
    TRes Function(Mutation_deleteStreet) then,
  ) = _CopyWithImpl_Mutation_deleteStreet;

  factory CopyWith_Mutation_deleteStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStreet;

  TRes call({Fragment_Street? deleteStreetsByPk, String? $__typename});
  CopyWith_Fragment_Street<TRes> get deleteStreetsByPk;
}

class _CopyWithImpl_Mutation_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet<TRes> {
  _CopyWithImpl_Mutation_deleteStreet(this._instance, this._then);

  final Mutation_deleteStreet _instance;

  final TRes Function(Mutation_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStreetsByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteStreet(
      deleteStreetsByPk: deleteStreetsByPk == _undefined
          ? _instance.deleteStreetsByPk
          : (deleteStreetsByPk as Fragment_Street?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Street<TRes> get deleteStreetsByPk {
    final local$deleteStreetsByPk = _instance.deleteStreetsByPk;
    return local$deleteStreetsByPk == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(
            local$deleteStreetsByPk,
            (e) => call(deleteStreetsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet<TRes> {
  _CopyWithStubImpl_Mutation_deleteStreet(this._res);

  TRes _res;

  call({Fragment_Street? deleteStreetsByPk, String? $__typename}) => _res;

  CopyWith_Fragment_Street<TRes> get deleteStreetsByPk =>
      CopyWith_Fragment_Street.stub(_res);
}

const documentNodeMutationdeleteStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteStreet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'streetId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteStreetsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'streetId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Street'),
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
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
  ],
);

class Variables_Mutation_insertStreet {
  factory Variables_Mutation_insertStreet({
    required Input_StreetsInsertInput newStreet,
  }) => Variables_Mutation_insertStreet._({r'newStreet': newStreet});

  Variables_Mutation_insertStreet._(this._$data);

  factory Variables_Mutation_insertStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newStreet = data['newStreet'];
    result$data['newStreet'] = Input_StreetsInsertInput.fromJson(
      (l$newStreet as Map<String, dynamic>),
    );
    return Variables_Mutation_insertStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetsInsertInput get newStreet =>
      (_$data['newStreet'] as Input_StreetsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newStreet = newStreet;
    result$data['newStreet'] = l$newStreet.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertStreet<Variables_Mutation_insertStreet>
  get copyWith => CopyWith_Variables_Mutation_insertStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertStreet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newStreet = newStreet;
    final lOther$newStreet = other.newStreet;
    if (l$newStreet != lOther$newStreet) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newStreet = newStreet;
    return Object.hashAll([l$newStreet]);
  }
}

abstract class CopyWith_Variables_Mutation_insertStreet<TRes> {
  factory CopyWith_Variables_Mutation_insertStreet(
    Variables_Mutation_insertStreet instance,
    TRes Function(Variables_Mutation_insertStreet) then,
  ) = _CopyWithImpl_Variables_Mutation_insertStreet;

  factory CopyWith_Variables_Mutation_insertStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertStreet;

  TRes call({Input_StreetsInsertInput? newStreet});
}

class _CopyWithImpl_Variables_Mutation_insertStreet<TRes>
    implements CopyWith_Variables_Mutation_insertStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_insertStreet(this._instance, this._then);

  final Variables_Mutation_insertStreet _instance;

  final TRes Function(Variables_Mutation_insertStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newStreet = _undefined}) => _then(
    Variables_Mutation_insertStreet._({
      ..._instance._$data,
      if (newStreet != _undefined && newStreet != null)
        'newStreet': (newStreet as Input_StreetsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertStreet<TRes>
    implements CopyWith_Variables_Mutation_insertStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertStreet(this._res);

  TRes _res;

  call({Input_StreetsInsertInput? newStreet}) => _res;
}

class Mutation_insertStreet {
  Mutation_insertStreet({
    this.insertStreetsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertStreet.fromJson(Map<String, dynamic> json) {
    final l$insertStreetsOne = json['insertStreetsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertStreet(
      insertStreetsOne: l$insertStreetsOne == null
          ? null
          : Fragment_Street.fromJson(
              (l$insertStreetsOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Street? insertStreetsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertStreetsOne = insertStreetsOne;
    _resultData['insertStreetsOne'] = l$insertStreetsOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertStreetsOne = insertStreetsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertStreetsOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertStreet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertStreetsOne = insertStreetsOne;
    final lOther$insertStreetsOne = other.insertStreetsOne;
    if (l$insertStreetsOne != lOther$insertStreetsOne) {
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

extension UtilityExtension_Mutation_insertStreet on Mutation_insertStreet {
  CopyWith_Mutation_insertStreet<Mutation_insertStreet> get copyWith =>
      CopyWith_Mutation_insertStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_insertStreet<TRes> {
  factory CopyWith_Mutation_insertStreet(
    Mutation_insertStreet instance,
    TRes Function(Mutation_insertStreet) then,
  ) = _CopyWithImpl_Mutation_insertStreet;

  factory CopyWith_Mutation_insertStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertStreet;

  TRes call({Fragment_Street? insertStreetsOne, String? $__typename});
  CopyWith_Fragment_Street<TRes> get insertStreetsOne;
}

class _CopyWithImpl_Mutation_insertStreet<TRes>
    implements CopyWith_Mutation_insertStreet<TRes> {
  _CopyWithImpl_Mutation_insertStreet(this._instance, this._then);

  final Mutation_insertStreet _instance;

  final TRes Function(Mutation_insertStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertStreetsOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertStreet(
      insertStreetsOne: insertStreetsOne == _undefined
          ? _instance.insertStreetsOne
          : (insertStreetsOne as Fragment_Street?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Street<TRes> get insertStreetsOne {
    final local$insertStreetsOne = _instance.insertStreetsOne;
    return local$insertStreetsOne == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(
            local$insertStreetsOne,
            (e) => call(insertStreetsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertStreet<TRes>
    implements CopyWith_Mutation_insertStreet<TRes> {
  _CopyWithStubImpl_Mutation_insertStreet(this._res);

  TRes _res;

  call({Fragment_Street? insertStreetsOne, String? $__typename}) => _res;

  CopyWith_Fragment_Street<TRes> get insertStreetsOne =>
      CopyWith_Fragment_Street.stub(_res);
}

const documentNodeMutationinsertStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertStreet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newStreet')),
          type: NamedTypeNode(
            name: NameNode(value: 'StreetsInsertInput'),
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
            name: NameNode(value: 'insertStreetsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'newStreet')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Street'),
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
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
  ],
);

class Variables_Mutation_updateStreet {
  factory Variables_Mutation_updateStreet({
    required UuidValue streetId,
    required Input_StreetsSetInput newStreet,
    DateTime? lastVisit,
    required List<Input_AreasStreetsInsertInput> addAreas,
    required List<UuidValue> removeAreas,
    required bool updateLastVisit,
    required bool insertAreasStreets,
    required bool deleteAreasStreets,
  }) => Variables_Mutation_updateStreet._({
    r'streetId': streetId,
    r'newStreet': newStreet,
    if (lastVisit != null) r'lastVisit': lastVisit,
    r'addAreas': addAreas,
    r'removeAreas': removeAreas,
    r'updateLastVisit': updateLastVisit,
    r'insertAreasStreets': insertAreasStreets,
    r'deleteAreasStreets': deleteAreasStreets,
  });

  Variables_Mutation_updateStreet._(this._$data);

  factory Variables_Mutation_updateStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$streetId = data['streetId'];
    result$data['streetId'] = stringToUuid(l$streetId);
    final l$newStreet = data['newStreet'];
    result$data['newStreet'] = Input_StreetsSetInput.fromJson(
      (l$newStreet as Map<String, dynamic>),
    );
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    final l$addAreas = data['addAreas'];
    result$data['addAreas'] = (l$addAreas as List<dynamic>)
        .map(
          (e) => Input_AreasStreetsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    final l$removeAreas = data['removeAreas'];
    result$data['removeAreas'] = (l$removeAreas as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
    final l$updateLastVisit = data['updateLastVisit'];
    result$data['updateLastVisit'] = (l$updateLastVisit as bool);
    final l$insertAreasStreets = data['insertAreasStreets'];
    result$data['insertAreasStreets'] = (l$insertAreasStreets as bool);
    final l$deleteAreasStreets = data['deleteAreasStreets'];
    result$data['deleteAreasStreets'] = (l$deleteAreasStreets as bool);
    return Variables_Mutation_updateStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get streetId => (_$data['streetId'] as UuidValue);

  Input_StreetsSetInput get newStreet =>
      (_$data['newStreet'] as Input_StreetsSetInput);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  List<Input_AreasStreetsInsertInput> get addAreas =>
      (_$data['addAreas'] as List<Input_AreasStreetsInsertInput>);

  List<UuidValue> get removeAreas => (_$data['removeAreas'] as List<UuidValue>);

  bool get updateLastVisit => (_$data['updateLastVisit'] as bool);

  bool get insertAreasStreets => (_$data['insertAreasStreets'] as bool);

  bool get deleteAreasStreets => (_$data['deleteAreasStreets'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$streetId = streetId;
    result$data['streetId'] = uuidToString(l$streetId);
    final l$newStreet = newStreet;
    result$data['newStreet'] = l$newStreet.toJson();
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    final l$addAreas = addAreas;
    result$data['addAreas'] = l$addAreas.map((e) => e.toJson()).toList();
    final l$removeAreas = removeAreas;
    result$data['removeAreas'] = l$removeAreas
        .map((e) => uuidToString(e))
        .toList();
    final l$updateLastVisit = updateLastVisit;
    result$data['updateLastVisit'] = l$updateLastVisit;
    final l$insertAreasStreets = insertAreasStreets;
    result$data['insertAreasStreets'] = l$insertAreasStreets;
    final l$deleteAreasStreets = deleteAreasStreets;
    result$data['deleteAreasStreets'] = l$deleteAreasStreets;
    return result$data;
  }

  CopyWith_Variables_Mutation_updateStreet<Variables_Mutation_updateStreet>
  get copyWith => CopyWith_Variables_Mutation_updateStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateStreet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (l$streetId != lOther$streetId) {
      return false;
    }
    final l$newStreet = newStreet;
    final lOther$newStreet = other.newStreet;
    if (l$newStreet != lOther$newStreet) {
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
    final l$addAreas = addAreas;
    final lOther$addAreas = other.addAreas;
    if (l$addAreas.length != lOther$addAreas.length) {
      return false;
    }
    for (int i = 0; i < l$addAreas.length; i++) {
      final l$addAreas$entry = l$addAreas[i];
      final lOther$addAreas$entry = lOther$addAreas[i];
      if (l$addAreas$entry != lOther$addAreas$entry) {
        return false;
      }
    }
    final l$removeAreas = removeAreas;
    final lOther$removeAreas = other.removeAreas;
    if (l$removeAreas.length != lOther$removeAreas.length) {
      return false;
    }
    for (int i = 0; i < l$removeAreas.length; i++) {
      final l$removeAreas$entry = l$removeAreas[i];
      final lOther$removeAreas$entry = lOther$removeAreas[i];
      if (l$removeAreas$entry != lOther$removeAreas$entry) {
        return false;
      }
    }
    final l$updateLastVisit = updateLastVisit;
    final lOther$updateLastVisit = other.updateLastVisit;
    if (l$updateLastVisit != lOther$updateLastVisit) {
      return false;
    }
    final l$insertAreasStreets = insertAreasStreets;
    final lOther$insertAreasStreets = other.insertAreasStreets;
    if (l$insertAreasStreets != lOther$insertAreasStreets) {
      return false;
    }
    final l$deleteAreasStreets = deleteAreasStreets;
    final lOther$deleteAreasStreets = other.deleteAreasStreets;
    if (l$deleteAreasStreets != lOther$deleteAreasStreets) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$streetId = streetId;
    final l$newStreet = newStreet;
    final l$lastVisit = lastVisit;
    final l$addAreas = addAreas;
    final l$removeAreas = removeAreas;
    final l$updateLastVisit = updateLastVisit;
    final l$insertAreasStreets = insertAreasStreets;
    final l$deleteAreasStreets = deleteAreasStreets;
    return Object.hashAll([
      l$streetId,
      l$newStreet,
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      Object.hashAll(l$addAreas.map((v) => v)),
      Object.hashAll(l$removeAreas.map((v) => v)),
      l$updateLastVisit,
      l$insertAreasStreets,
      l$deleteAreasStreets,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateStreet<TRes> {
  factory CopyWith_Variables_Mutation_updateStreet(
    Variables_Mutation_updateStreet instance,
    TRes Function(Variables_Mutation_updateStreet) then,
  ) = _CopyWithImpl_Variables_Mutation_updateStreet;

  factory CopyWith_Variables_Mutation_updateStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateStreet;

  TRes call({
    UuidValue? streetId,
    Input_StreetsSetInput? newStreet,
    DateTime? lastVisit,
    List<Input_AreasStreetsInsertInput>? addAreas,
    List<UuidValue>? removeAreas,
    bool? updateLastVisit,
    bool? insertAreasStreets,
    bool? deleteAreasStreets,
  });
}

class _CopyWithImpl_Variables_Mutation_updateStreet<TRes>
    implements CopyWith_Variables_Mutation_updateStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_updateStreet(this._instance, this._then);

  final Variables_Mutation_updateStreet _instance;

  final TRes Function(Variables_Mutation_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? streetId = _undefined,
    Object? newStreet = _undefined,
    Object? lastVisit = _undefined,
    Object? addAreas = _undefined,
    Object? removeAreas = _undefined,
    Object? updateLastVisit = _undefined,
    Object? insertAreasStreets = _undefined,
    Object? deleteAreasStreets = _undefined,
  }) => _then(
    Variables_Mutation_updateStreet._({
      ..._instance._$data,
      if (streetId != _undefined && streetId != null)
        'streetId': (streetId as UuidValue),
      if (newStreet != _undefined && newStreet != null)
        'newStreet': (newStreet as Input_StreetsSetInput),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
      if (addAreas != _undefined && addAreas != null)
        'addAreas': (addAreas as List<Input_AreasStreetsInsertInput>),
      if (removeAreas != _undefined && removeAreas != null)
        'removeAreas': (removeAreas as List<UuidValue>),
      if (updateLastVisit != _undefined && updateLastVisit != null)
        'updateLastVisit': (updateLastVisit as bool),
      if (insertAreasStreets != _undefined && insertAreasStreets != null)
        'insertAreasStreets': (insertAreasStreets as bool),
      if (deleteAreasStreets != _undefined && deleteAreasStreets != null)
        'deleteAreasStreets': (deleteAreasStreets as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateStreet<TRes>
    implements CopyWith_Variables_Mutation_updateStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateStreet(this._res);

  TRes _res;

  call({
    UuidValue? streetId,
    Input_StreetsSetInput? newStreet,
    DateTime? lastVisit,
    List<Input_AreasStreetsInsertInput>? addAreas,
    List<UuidValue>? removeAreas,
    bool? updateLastVisit,
    bool? insertAreasStreets,
    bool? deleteAreasStreets,
  }) => _res;
}

class Mutation_updateStreet {
  Mutation_updateStreet({
    this.updateStreetsByPk,
    this.insertHistoryVisitHistoryOne,
    this.insertAreasStreets,
    this.deleteAreasStreets,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateStreet.fromJson(Map<String, dynamic> json) {
    final l$updateStreetsByPk = json['updateStreetsByPk'];
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$insertAreasStreets = json['insertAreasStreets'];
    final l$deleteAreasStreets = json['deleteAreasStreets'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStreet(
      updateStreetsByPk: l$updateStreetsByPk == null
          ? null
          : Fragment_Street.fromJson(
              (l$updateStreetsByPk as Map<String, dynamic>),
            ),
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Fragment_VisitHistory.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>),
            ),
      insertAreasStreets: l$insertAreasStreets == null
          ? null
          : Mutation_updateStreet_insertAreasStreets.fromJson(
              (l$insertAreasStreets as Map<String, dynamic>),
            ),
      deleteAreasStreets: l$deleteAreasStreets == null
          ? null
          : Mutation_updateStreet_deleteAreasStreets.fromJson(
              (l$deleteAreasStreets as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Street? updateStreetsByPk;

  final Fragment_VisitHistory? insertHistoryVisitHistoryOne;

  final Mutation_updateStreet_insertAreasStreets? insertAreasStreets;

  final Mutation_updateStreet_deleteAreasStreets? deleteAreasStreets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStreetsByPk = updateStreetsByPk;
    _resultData['updateStreetsByPk'] = l$updateStreetsByPk?.toJson();
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] = l$insertHistoryVisitHistoryOne
        ?.toJson();
    final l$insertAreasStreets = insertAreasStreets;
    _resultData['insertAreasStreets'] = l$insertAreasStreets?.toJson();
    final l$deleteAreasStreets = deleteAreasStreets;
    _resultData['deleteAreasStreets'] = l$deleteAreasStreets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStreetsByPk = updateStreetsByPk;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$insertAreasStreets = insertAreasStreets;
    final l$deleteAreasStreets = deleteAreasStreets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateStreetsByPk,
      l$insertHistoryVisitHistoryOne,
      l$insertAreasStreets,
      l$deleteAreasStreets,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateStreet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStreetsByPk = updateStreetsByPk;
    final lOther$updateStreetsByPk = other.updateStreetsByPk;
    if (l$updateStreetsByPk != lOther$updateStreetsByPk) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
      return false;
    }
    final l$insertAreasStreets = insertAreasStreets;
    final lOther$insertAreasStreets = other.insertAreasStreets;
    if (l$insertAreasStreets != lOther$insertAreasStreets) {
      return false;
    }
    final l$deleteAreasStreets = deleteAreasStreets;
    final lOther$deleteAreasStreets = other.deleteAreasStreets;
    if (l$deleteAreasStreets != lOther$deleteAreasStreets) {
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

extension UtilityExtension_Mutation_updateStreet on Mutation_updateStreet {
  CopyWith_Mutation_updateStreet<Mutation_updateStreet> get copyWith =>
      CopyWith_Mutation_updateStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStreet<TRes> {
  factory CopyWith_Mutation_updateStreet(
    Mutation_updateStreet instance,
    TRes Function(Mutation_updateStreet) then,
  ) = _CopyWithImpl_Mutation_updateStreet;

  factory CopyWith_Mutation_updateStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStreet;

  TRes call({
    Fragment_Street? updateStreetsByPk,
    Fragment_VisitHistory? insertHistoryVisitHistoryOne,
    Mutation_updateStreet_insertAreasStreets? insertAreasStreets,
    Mutation_updateStreet_deleteAreasStreets? deleteAreasStreets,
    String? $__typename,
  });
  CopyWith_Fragment_Street<TRes> get updateStreetsByPk;
  CopyWith_Fragment_VisitHistory<TRes> get insertHistoryVisitHistoryOne;
  CopyWith_Mutation_updateStreet_insertAreasStreets<TRes>
  get insertAreasStreets;
  CopyWith_Mutation_updateStreet_deleteAreasStreets<TRes>
  get deleteAreasStreets;
}

class _CopyWithImpl_Mutation_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet<TRes> {
  _CopyWithImpl_Mutation_updateStreet(this._instance, this._then);

  final Mutation_updateStreet _instance;

  final TRes Function(Mutation_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStreetsByPk = _undefined,
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? insertAreasStreets = _undefined,
    Object? deleteAreasStreets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateStreet(
      updateStreetsByPk: updateStreetsByPk == _undefined
          ? _instance.updateStreetsByPk
          : (updateStreetsByPk as Fragment_Street?),
      insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
          ? _instance.insertHistoryVisitHistoryOne
          : (insertHistoryVisitHistoryOne as Fragment_VisitHistory?),
      insertAreasStreets: insertAreasStreets == _undefined
          ? _instance.insertAreasStreets
          : (insertAreasStreets as Mutation_updateStreet_insertAreasStreets?),
      deleteAreasStreets: deleteAreasStreets == _undefined
          ? _instance.deleteAreasStreets
          : (deleteAreasStreets as Mutation_updateStreet_deleteAreasStreets?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Street<TRes> get updateStreetsByPk {
    final local$updateStreetsByPk = _instance.updateStreetsByPk;
    return local$updateStreetsByPk == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(
            local$updateStreetsByPk,
            (e) => call(updateStreetsByPk: e),
          );
  }

  CopyWith_Fragment_VisitHistory<TRes> get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Fragment_VisitHistory.stub(_then(_instance))
        : CopyWith_Fragment_VisitHistory(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e),
          );
  }

  CopyWith_Mutation_updateStreet_insertAreasStreets<TRes>
  get insertAreasStreets {
    final local$insertAreasStreets = _instance.insertAreasStreets;
    return local$insertAreasStreets == null
        ? CopyWith_Mutation_updateStreet_insertAreasStreets.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateStreet_insertAreasStreets(
            local$insertAreasStreets,
            (e) => call(insertAreasStreets: e),
          );
  }

  CopyWith_Mutation_updateStreet_deleteAreasStreets<TRes>
  get deleteAreasStreets {
    final local$deleteAreasStreets = _instance.deleteAreasStreets;
    return local$deleteAreasStreets == null
        ? CopyWith_Mutation_updateStreet_deleteAreasStreets.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateStreet_deleteAreasStreets(
            local$deleteAreasStreets,
            (e) => call(deleteAreasStreets: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet<TRes> {
  _CopyWithStubImpl_Mutation_updateStreet(this._res);

  TRes _res;

  call({
    Fragment_Street? updateStreetsByPk,
    Fragment_VisitHistory? insertHistoryVisitHistoryOne,
    Mutation_updateStreet_insertAreasStreets? insertAreasStreets,
    Mutation_updateStreet_deleteAreasStreets? deleteAreasStreets,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Street<TRes> get updateStreetsByPk =>
      CopyWith_Fragment_Street.stub(_res);

  CopyWith_Fragment_VisitHistory<TRes> get insertHistoryVisitHistoryOne =>
      CopyWith_Fragment_VisitHistory.stub(_res);

  CopyWith_Mutation_updateStreet_insertAreasStreets<TRes>
  get insertAreasStreets =>
      CopyWith_Mutation_updateStreet_insertAreasStreets.stub(_res);

  CopyWith_Mutation_updateStreet_deleteAreasStreets<TRes>
  get deleteAreasStreets =>
      CopyWith_Mutation_updateStreet_deleteAreasStreets.stub(_res);
}

const documentNodeMutationupdateStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateStreet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'streetId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newStreet')),
          type: NamedTypeNode(
            name: NameNode(value: 'StreetsSetInput'),
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
          variable: VariableNode(name: NameNode(value: 'addAreas')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AreasStreetsInsertInput'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'removeAreas')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updateLastVisit')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'insertAreasStreets')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deleteAreasStreets')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'updateStreetsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'streetId')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'newStreet')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Street'),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: StringValueNode(value: 'streets', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: VariableNode(name: NameNode(value: 'streetId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(name: NameNode(value: 'lastVisit')),
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
                      name: NameNode(value: 'updateLastVisit'),
                    ),
                  ),
                ],
              ),
            ],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'VisitHistory'),
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
            name: NameNode(value: 'insertAreasStreets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: VariableNode(name: NameNode(value: 'addAreas')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'insertAreasStreets'),
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
            name: NameNode(value: 'deleteAreasStreets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'streetId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'streetId'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'areaId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_in'),
                            value: VariableNode(
                              name: NameNode(value: 'removeAreas'),
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
                      name: NameNode(value: 'deleteAreasStreets'),
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
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
    fragmentDefinitionVisitHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Mutation_updateStreet_insertAreasStreets {
  Mutation_updateStreet_insertAreasStreets({
    required this.affectedRows,
    this.$__typename = 'AreasStreetsMutationResponse',
  });

  factory Mutation_updateStreet_insertAreasStreets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStreet_insertAreasStreets(
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
    if (other is! Mutation_updateStreet_insertAreasStreets ||
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

extension UtilityExtension_Mutation_updateStreet_insertAreasStreets
    on Mutation_updateStreet_insertAreasStreets {
  CopyWith_Mutation_updateStreet_insertAreasStreets<
    Mutation_updateStreet_insertAreasStreets
  >
  get copyWith =>
      CopyWith_Mutation_updateStreet_insertAreasStreets(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStreet_insertAreasStreets<TRes> {
  factory CopyWith_Mutation_updateStreet_insertAreasStreets(
    Mutation_updateStreet_insertAreasStreets instance,
    TRes Function(Mutation_updateStreet_insertAreasStreets) then,
  ) = _CopyWithImpl_Mutation_updateStreet_insertAreasStreets;

  factory CopyWith_Mutation_updateStreet_insertAreasStreets.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStreet_insertAreasStreets;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateStreet_insertAreasStreets<TRes>
    implements CopyWith_Mutation_updateStreet_insertAreasStreets<TRes> {
  _CopyWithImpl_Mutation_updateStreet_insertAreasStreets(
    this._instance,
    this._then,
  );

  final Mutation_updateStreet_insertAreasStreets _instance;

  final TRes Function(Mutation_updateStreet_insertAreasStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateStreet_insertAreasStreets(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateStreet_insertAreasStreets<TRes>
    implements CopyWith_Mutation_updateStreet_insertAreasStreets<TRes> {
  _CopyWithStubImpl_Mutation_updateStreet_insertAreasStreets(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateStreet_deleteAreasStreets {
  Mutation_updateStreet_deleteAreasStreets({
    required this.affectedRows,
    this.$__typename = 'AreasStreetsMutationResponse',
  });

  factory Mutation_updateStreet_deleteAreasStreets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStreet_deleteAreasStreets(
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
    if (other is! Mutation_updateStreet_deleteAreasStreets ||
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

extension UtilityExtension_Mutation_updateStreet_deleteAreasStreets
    on Mutation_updateStreet_deleteAreasStreets {
  CopyWith_Mutation_updateStreet_deleteAreasStreets<
    Mutation_updateStreet_deleteAreasStreets
  >
  get copyWith =>
      CopyWith_Mutation_updateStreet_deleteAreasStreets(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStreet_deleteAreasStreets<TRes> {
  factory CopyWith_Mutation_updateStreet_deleteAreasStreets(
    Mutation_updateStreet_deleteAreasStreets instance,
    TRes Function(Mutation_updateStreet_deleteAreasStreets) then,
  ) = _CopyWithImpl_Mutation_updateStreet_deleteAreasStreets;

  factory CopyWith_Mutation_updateStreet_deleteAreasStreets.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStreet_deleteAreasStreets;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateStreet_deleteAreasStreets<TRes>
    implements CopyWith_Mutation_updateStreet_deleteAreasStreets<TRes> {
  _CopyWithImpl_Mutation_updateStreet_deleteAreasStreets(
    this._instance,
    this._then,
  );

  final Mutation_updateStreet_deleteAreasStreets _instance;

  final TRes Function(Mutation_updateStreet_deleteAreasStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateStreet_deleteAreasStreets(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateStreet_deleteAreasStreets<TRes>
    implements CopyWith_Mutation_updateStreet_deleteAreasStreets<TRes> {
  _CopyWithStubImpl_Mutation_updateStreet_deleteAreasStreets(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
