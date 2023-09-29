import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteFamily {
  factory Variables_Mutation_deleteFamily({required UuidValue familyId}) =>
      Variables_Mutation_deleteFamily._({
        r'familyId': familyId,
      });

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
      get copyWith => CopyWith_Variables_Mutation_deleteFamily(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_deleteFamily) ||
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
  _CopyWithImpl_Variables_Mutation_deleteFamily(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteFamily _instance;

  final TRes Function(Variables_Mutation_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables_Mutation_deleteFamily._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_deleteFamily<TRes>
    implements CopyWith_Variables_Mutation_deleteFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteFamily(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Mutation_deleteFamily {
  Mutation_deleteFamily({
    this.deleteFamiliesByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteFamily.fromJson(Map<String, dynamic> json) {
    final l$deleteFamiliesByPk = json['deleteFamiliesByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteFamily(
      deleteFamiliesByPk: l$deleteFamiliesByPk == null
          ? null
          : Fragment_Family.fromJson(
              (l$deleteFamiliesByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family? deleteFamiliesByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFamiliesByPk = deleteFamiliesByPk;
    _resultData['deleteFamiliesByPk'] = l$deleteFamiliesByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFamiliesByPk = deleteFamiliesByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFamiliesByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_deleteFamily) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFamiliesByPk = deleteFamiliesByPk;
    final lOther$deleteFamiliesByPk = other.deleteFamiliesByPk;
    if (l$deleteFamiliesByPk != lOther$deleteFamiliesByPk) {
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

extension UtilityExtension_Mutation_deleteFamily on Mutation_deleteFamily {
  CopyWith_Mutation_deleteFamily<Mutation_deleteFamily> get copyWith =>
      CopyWith_Mutation_deleteFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_deleteFamily<TRes> {
  factory CopyWith_Mutation_deleteFamily(
    Mutation_deleteFamily instance,
    TRes Function(Mutation_deleteFamily) then,
  ) = _CopyWithImpl_Mutation_deleteFamily;

  factory CopyWith_Mutation_deleteFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteFamily;

  TRes call({
    Fragment_Family? deleteFamiliesByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Family<TRes> get deleteFamiliesByPk;
}

class _CopyWithImpl_Mutation_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily<TRes> {
  _CopyWithImpl_Mutation_deleteFamily(
    this._instance,
    this._then,
  );

  final Mutation_deleteFamily _instance;

  final TRes Function(Mutation_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFamiliesByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_deleteFamily(
        deleteFamiliesByPk: deleteFamiliesByPk == _undefined
            ? _instance.deleteFamiliesByPk
            : (deleteFamiliesByPk as Fragment_Family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Family<TRes> get deleteFamiliesByPk {
    final local$deleteFamiliesByPk = _instance.deleteFamiliesByPk;
    return local$deleteFamiliesByPk == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(
            local$deleteFamiliesByPk, (e) => call(deleteFamiliesByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily<TRes> {
  _CopyWithStubImpl_Mutation_deleteFamily(this._res);

  TRes _res;

  call({
    Fragment_Family? deleteFamiliesByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Family<TRes> get deleteFamiliesByPk =>
      CopyWith_Fragment_Family.stub(_res);
}

const documentNodeMutationdeleteFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteFamiliesByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);

class Variables_Mutation_insertFamily {
  factory Variables_Mutation_insertFamily(
          {required Input_FamiliesInsertInput newFamily}) =>
      Variables_Mutation_insertFamily._({
        r'newFamily': newFamily,
      });

  Variables_Mutation_insertFamily._(this._$data);

  factory Variables_Mutation_insertFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newFamily = data['newFamily'];
    result$data['newFamily'] = Input_FamiliesInsertInput.fromJson(
        (l$newFamily as Map<String, dynamic>));
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
      get copyWith => CopyWith_Variables_Mutation_insertFamily(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertFamily) ||
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
  _CopyWithImpl_Variables_Mutation_insertFamily(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertFamily _instance;

  final TRes Function(Variables_Mutation_insertFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newFamily = _undefined}) =>
      _then(Variables_Mutation_insertFamily._({
        ..._instance._$data,
        if (newFamily != _undefined && newFamily != null)
          'newFamily': (newFamily as Input_FamiliesInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertFamily<TRes>
    implements CopyWith_Variables_Mutation_insertFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertFamily(this._res);

  TRes _res;

  call({Input_FamiliesInsertInput? newFamily}) => _res;
}

class Mutation_insertFamily {
  Mutation_insertFamily({
    this.insertFamiliesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertFamily.fromJson(Map<String, dynamic> json) {
    final l$insertFamiliesOne = json['insertFamiliesOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertFamily(
      insertFamiliesOne: l$insertFamiliesOne == null
          ? null
          : Fragment_Family.fromJson(
              (l$insertFamiliesOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family? insertFamiliesOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertFamiliesOne = insertFamiliesOne;
    _resultData['insertFamiliesOne'] = l$insertFamiliesOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertFamiliesOne = insertFamiliesOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertFamiliesOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertFamily) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertFamiliesOne = insertFamiliesOne;
    final lOther$insertFamiliesOne = other.insertFamiliesOne;
    if (l$insertFamiliesOne != lOther$insertFamiliesOne) {
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

extension UtilityExtension_Mutation_insertFamily on Mutation_insertFamily {
  CopyWith_Mutation_insertFamily<Mutation_insertFamily> get copyWith =>
      CopyWith_Mutation_insertFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertFamily<TRes> {
  factory CopyWith_Mutation_insertFamily(
    Mutation_insertFamily instance,
    TRes Function(Mutation_insertFamily) then,
  ) = _CopyWithImpl_Mutation_insertFamily;

  factory CopyWith_Mutation_insertFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertFamily;

  TRes call({
    Fragment_Family? insertFamiliesOne,
    String? $__typename,
  });
  CopyWith_Fragment_Family<TRes> get insertFamiliesOne;
}

class _CopyWithImpl_Mutation_insertFamily<TRes>
    implements CopyWith_Mutation_insertFamily<TRes> {
  _CopyWithImpl_Mutation_insertFamily(
    this._instance,
    this._then,
  );

  final Mutation_insertFamily _instance;

  final TRes Function(Mutation_insertFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertFamiliesOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertFamily(
        insertFamiliesOne: insertFamiliesOne == _undefined
            ? _instance.insertFamiliesOne
            : (insertFamiliesOne as Fragment_Family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Family<TRes> get insertFamiliesOne {
    final local$insertFamiliesOne = _instance.insertFamiliesOne;
    return local$insertFamiliesOne == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(
            local$insertFamiliesOne, (e) => call(insertFamiliesOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertFamily<TRes>
    implements CopyWith_Mutation_insertFamily<TRes> {
  _CopyWithStubImpl_Mutation_insertFamily(this._res);

  TRes _res;

  call({
    Fragment_Family? insertFamiliesOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Family<TRes> get insertFamiliesOne =>
      CopyWith_Fragment_Family.stub(_res);
}

const documentNodeMutationinsertFamily = DocumentNode(definitions: [
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
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertFamiliesOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newFamily')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);

class Variables_Mutation_updateFamily {
  factory Variables_Mutation_updateFamily({
    required UuidValue familyId,
    required Input_FamiliesSetInput newFamily,
    required List<UuidValue> deleteParents,
    required List<UuidValue> deleteChildren,
    required List<Input_FamiliesFamiliesInsertInput> addRelatedFamilies,
    required bool updateFamily,
    required bool deleteRelatedFamilies,
    required bool insertRelatedFamilies,
  }) =>
      Variables_Mutation_updateFamily._({
        r'familyId': familyId,
        r'newFamily': newFamily,
        r'deleteParents': deleteParents,
        r'deleteChildren': deleteChildren,
        r'addRelatedFamilies': addRelatedFamilies,
        r'updateFamily': updateFamily,
        r'deleteRelatedFamilies': deleteRelatedFamilies,
        r'insertRelatedFamilies': insertRelatedFamilies,
      });

  Variables_Mutation_updateFamily._(this._$data);

  factory Variables_Mutation_updateFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    final l$newFamily = data['newFamily'];
    result$data['newFamily'] =
        Input_FamiliesSetInput.fromJson((l$newFamily as Map<String, dynamic>));
    final l$deleteParents = data['deleteParents'];
    result$data['deleteParents'] =
        (l$deleteParents as List<dynamic>).map((e) => stringToUuid(e)).toList();
    final l$deleteChildren = data['deleteChildren'];
    result$data['deleteChildren'] = (l$deleteChildren as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
    final l$addRelatedFamilies = data['addRelatedFamilies'];
    result$data['addRelatedFamilies'] = (l$addRelatedFamilies as List<dynamic>)
        .map((e) => Input_FamiliesFamiliesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$updateFamily = data['updateFamily'];
    result$data['updateFamily'] = (l$updateFamily as bool);
    final l$deleteRelatedFamilies = data['deleteRelatedFamilies'];
    result$data['deleteRelatedFamilies'] = (l$deleteRelatedFamilies as bool);
    final l$insertRelatedFamilies = data['insertRelatedFamilies'];
    result$data['insertRelatedFamilies'] = (l$insertRelatedFamilies as bool);
    return Variables_Mutation_updateFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Input_FamiliesSetInput get newFamily =>
      (_$data['newFamily'] as Input_FamiliesSetInput);

  List<UuidValue> get deleteParents =>
      (_$data['deleteParents'] as List<UuidValue>);

  List<UuidValue> get deleteChildren =>
      (_$data['deleteChildren'] as List<UuidValue>);

  List<Input_FamiliesFamiliesInsertInput> get addRelatedFamilies =>
      (_$data['addRelatedFamilies'] as List<Input_FamiliesFamiliesInsertInput>);

  bool get updateFamily => (_$data['updateFamily'] as bool);

  bool get deleteRelatedFamilies => (_$data['deleteRelatedFamilies'] as bool);

  bool get insertRelatedFamilies => (_$data['insertRelatedFamilies'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    final l$newFamily = newFamily;
    result$data['newFamily'] = l$newFamily.toJson();
    final l$deleteParents = deleteParents;
    result$data['deleteParents'] =
        l$deleteParents.map((e) => uuidToString(e)).toList();
    final l$deleteChildren = deleteChildren;
    result$data['deleteChildren'] =
        l$deleteChildren.map((e) => uuidToString(e)).toList();
    final l$addRelatedFamilies = addRelatedFamilies;
    result$data['addRelatedFamilies'] =
        l$addRelatedFamilies.map((e) => e.toJson()).toList();
    final l$updateFamily = updateFamily;
    result$data['updateFamily'] = l$updateFamily;
    final l$deleteRelatedFamilies = deleteRelatedFamilies;
    result$data['deleteRelatedFamilies'] = l$deleteRelatedFamilies;
    final l$insertRelatedFamilies = insertRelatedFamilies;
    result$data['insertRelatedFamilies'] = l$insertRelatedFamilies;
    return result$data;
  }

  CopyWith_Variables_Mutation_updateFamily<Variables_Mutation_updateFamily>
      get copyWith => CopyWith_Variables_Mutation_updateFamily(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_updateFamily) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$newFamily = newFamily;
    final l$deleteParents = deleteParents;
    final l$deleteChildren = deleteChildren;
    final l$addRelatedFamilies = addRelatedFamilies;
    final l$updateFamily = updateFamily;
    final l$deleteRelatedFamilies = deleteRelatedFamilies;
    final l$insertRelatedFamilies = insertRelatedFamilies;
    return Object.hashAll([
      l$familyId,
      l$newFamily,
      Object.hashAll(l$deleteParents.map((v) => v)),
      Object.hashAll(l$deleteChildren.map((v) => v)),
      Object.hashAll(l$addRelatedFamilies.map((v) => v)),
      l$updateFamily,
      l$deleteRelatedFamilies,
      l$insertRelatedFamilies,
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
    List<UuidValue>? deleteParents,
    List<UuidValue>? deleteChildren,
    List<Input_FamiliesFamiliesInsertInput>? addRelatedFamilies,
    bool? updateFamily,
    bool? deleteRelatedFamilies,
    bool? insertRelatedFamilies,
  });
}

class _CopyWithImpl_Variables_Mutation_updateFamily<TRes>
    implements CopyWith_Variables_Mutation_updateFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_updateFamily(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateFamily _instance;

  final TRes Function(Variables_Mutation_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? newFamily = _undefined,
    Object? deleteParents = _undefined,
    Object? deleteChildren = _undefined,
    Object? addRelatedFamilies = _undefined,
    Object? updateFamily = _undefined,
    Object? deleteRelatedFamilies = _undefined,
    Object? insertRelatedFamilies = _undefined,
  }) =>
      _then(Variables_Mutation_updateFamily._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as UuidValue),
        if (newFamily != _undefined && newFamily != null)
          'newFamily': (newFamily as Input_FamiliesSetInput),
        if (deleteParents != _undefined && deleteParents != null)
          'deleteParents': (deleteParents as List<UuidValue>),
        if (deleteChildren != _undefined && deleteChildren != null)
          'deleteChildren': (deleteChildren as List<UuidValue>),
        if (addRelatedFamilies != _undefined && addRelatedFamilies != null)
          'addRelatedFamilies':
              (addRelatedFamilies as List<Input_FamiliesFamiliesInsertInput>),
        if (updateFamily != _undefined && updateFamily != null)
          'updateFamily': (updateFamily as bool),
        if (deleteRelatedFamilies != _undefined &&
            deleteRelatedFamilies != null)
          'deleteRelatedFamilies': (deleteRelatedFamilies as bool),
        if (insertRelatedFamilies != _undefined &&
            insertRelatedFamilies != null)
          'insertRelatedFamilies': (insertRelatedFamilies as bool),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updateFamily<TRes>
    implements CopyWith_Variables_Mutation_updateFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateFamily(this._res);

  TRes _res;

  call({
    UuidValue? familyId,
    Input_FamiliesSetInput? newFamily,
    List<UuidValue>? deleteParents,
    List<UuidValue>? deleteChildren,
    List<Input_FamiliesFamiliesInsertInput>? addRelatedFamilies,
    bool? updateFamily,
    bool? deleteRelatedFamilies,
    bool? insertRelatedFamilies,
  }) =>
      _res;
}

class Mutation_updateFamily {
  Mutation_updateFamily({
    this.updateFamiliesByPk,
    this.deleteFamiliesFamilies,
    this.insertFamiliesFamilies,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateFamily.fromJson(Map<String, dynamic> json) {
    final l$updateFamiliesByPk = json['updateFamiliesByPk'];
    final l$deleteFamiliesFamilies = json['deleteFamiliesFamilies'];
    final l$insertFamiliesFamilies = json['insertFamiliesFamilies'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily(
      updateFamiliesByPk: l$updateFamiliesByPk == null
          ? null
          : Fragment_Family.fromJson(
              (l$updateFamiliesByPk as Map<String, dynamic>)),
      deleteFamiliesFamilies: l$deleteFamiliesFamilies == null
          ? null
          : Mutation_updateFamily_deleteFamiliesFamilies.fromJson(
              (l$deleteFamiliesFamilies as Map<String, dynamic>)),
      insertFamiliesFamilies: l$insertFamiliesFamilies == null
          ? null
          : Mutation_updateFamily_insertFamiliesFamilies.fromJson(
              (l$insertFamiliesFamilies as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family? updateFamiliesByPk;

  final Mutation_updateFamily_deleteFamiliesFamilies? deleteFamiliesFamilies;

  final Mutation_updateFamily_insertFamiliesFamilies? insertFamiliesFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateFamiliesByPk = updateFamiliesByPk;
    _resultData['updateFamiliesByPk'] = l$updateFamiliesByPk?.toJson();
    final l$deleteFamiliesFamilies = deleteFamiliesFamilies;
    _resultData['deleteFamiliesFamilies'] = l$deleteFamiliesFamilies?.toJson();
    final l$insertFamiliesFamilies = insertFamiliesFamilies;
    _resultData['insertFamiliesFamilies'] = l$insertFamiliesFamilies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateFamiliesByPk = updateFamiliesByPk;
    final l$deleteFamiliesFamilies = deleteFamiliesFamilies;
    final l$insertFamiliesFamilies = insertFamiliesFamilies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateFamiliesByPk,
      l$deleteFamiliesFamilies,
      l$insertFamiliesFamilies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_updateFamily) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateFamiliesByPk = updateFamiliesByPk;
    final lOther$updateFamiliesByPk = other.updateFamiliesByPk;
    if (l$updateFamiliesByPk != lOther$updateFamiliesByPk) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updateFamily on Mutation_updateFamily {
  CopyWith_Mutation_updateFamily<Mutation_updateFamily> get copyWith =>
      CopyWith_Mutation_updateFamily(
        this,
        (i) => i,
      );
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
    Mutation_updateFamily_deleteFamiliesFamilies? deleteFamiliesFamilies,
    Mutation_updateFamily_insertFamiliesFamilies? insertFamiliesFamilies,
    String? $__typename,
  });
  CopyWith_Fragment_Family<TRes> get updateFamiliesByPk;
  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
      get deleteFamiliesFamilies;
  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes>
      get insertFamiliesFamilies;
}

class _CopyWithImpl_Mutation_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily<TRes> {
  _CopyWithImpl_Mutation_updateFamily(
    this._instance,
    this._then,
  );

  final Mutation_updateFamily _instance;

  final TRes Function(Mutation_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateFamiliesByPk = _undefined,
    Object? deleteFamiliesFamilies = _undefined,
    Object? insertFamiliesFamilies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updateFamily(
        updateFamiliesByPk: updateFamiliesByPk == _undefined
            ? _instance.updateFamiliesByPk
            : (updateFamiliesByPk as Fragment_Family?),
        deleteFamiliesFamilies: deleteFamiliesFamilies == _undefined
            ? _instance.deleteFamiliesFamilies
            : (deleteFamiliesFamilies
                as Mutation_updateFamily_deleteFamiliesFamilies?),
        insertFamiliesFamilies: insertFamiliesFamilies == _undefined
            ? _instance.insertFamiliesFamilies
            : (insertFamiliesFamilies
                as Mutation_updateFamily_insertFamiliesFamilies?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Family<TRes> get updateFamiliesByPk {
    final local$updateFamiliesByPk = _instance.updateFamiliesByPk;
    return local$updateFamiliesByPk == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(
            local$updateFamiliesByPk, (e) => call(updateFamiliesByPk: e));
  }

  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
      get deleteFamiliesFamilies {
    final local$deleteFamiliesFamilies = _instance.deleteFamiliesFamilies;
    return local$deleteFamiliesFamilies == null
        ? CopyWith_Mutation_updateFamily_deleteFamiliesFamilies.stub(
            _then(_instance))
        : CopyWith_Mutation_updateFamily_deleteFamiliesFamilies(
            local$deleteFamiliesFamilies,
            (e) => call(deleteFamiliesFamilies: e));
  }

  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes>
      get insertFamiliesFamilies {
    final local$insertFamiliesFamilies = _instance.insertFamiliesFamilies;
    return local$insertFamiliesFamilies == null
        ? CopyWith_Mutation_updateFamily_insertFamiliesFamilies.stub(
            _then(_instance))
        : CopyWith_Mutation_updateFamily_insertFamiliesFamilies(
            local$insertFamiliesFamilies,
            (e) => call(insertFamiliesFamilies: e));
  }
}

class _CopyWithStubImpl_Mutation_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily(this._res);

  TRes _res;

  call({
    Fragment_Family? updateFamiliesByPk,
    Mutation_updateFamily_deleteFamiliesFamilies? deleteFamiliesFamilies,
    Mutation_updateFamily_insertFamiliesFamilies? insertFamiliesFamilies,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Family<TRes> get updateFamiliesByPk =>
      CopyWith_Fragment_Family.stub(_res);

  CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
      get deleteFamiliesFamilies =>
          CopyWith_Mutation_updateFamily_deleteFamiliesFamilies.stub(_res);

  CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes>
      get insertFamiliesFamilies =>
          CopyWith_Mutation_updateFamily_insertFamiliesFamilies.stub(_res);
}

const documentNodeMutationupdateFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
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
        variable: VariableNode(name: NameNode(value: 'deleteParents')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteChildren')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
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
        variable: VariableNode(name: NameNode(value: 'deleteRelatedFamilies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'insertRelatedFamilies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateFamiliesByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pkColumns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'familyId')),
              )
            ]),
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
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deleteFamiliesFamilies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'childFamilyId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'familyId')),
                        )
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'parentFamilyId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value: VariableNode(
                              name: NameNode(value: 'deleteParents')),
                        )
                      ]),
                    ),
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'parentFamilyId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'familyId')),
                        )
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'childFamilyId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value: VariableNode(
                              name: NameNode(value: 'deleteChildren')),
                        )
                      ]),
                    ),
                  ]),
                ]),
              )
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'deleteRelatedFamilies')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertFamiliesFamilies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'addRelatedFamilies')),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'insertRelatedFamilies')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);

class Mutation_updateFamily_deleteFamiliesFamilies {
  Mutation_updateFamily_deleteFamiliesFamilies({
    required this.affectedRows,
    this.$__typename = 'FamiliesFamiliesMutationResponse',
  });

  factory Mutation_updateFamily_deleteFamiliesFamilies.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_updateFamily_deleteFamiliesFamilies) ||
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
          Mutation_updateFamily_deleteFamiliesFamilies>
      get copyWith => CopyWith_Mutation_updateFamily_deleteFamiliesFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes> {
  factory CopyWith_Mutation_updateFamily_deleteFamiliesFamilies(
    Mutation_updateFamily_deleteFamiliesFamilies instance,
    TRes Function(Mutation_updateFamily_deleteFamiliesFamilies) then,
  ) = _CopyWithImpl_Mutation_updateFamily_deleteFamiliesFamilies;

  factory CopyWith_Mutation_updateFamily_deleteFamiliesFamilies.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_deleteFamiliesFamilies;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
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
  }) =>
      _then(Mutation_updateFamily_deleteFamiliesFamilies(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updateFamily_deleteFamiliesFamilies<TRes>
    implements CopyWith_Mutation_updateFamily_deleteFamiliesFamilies<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_deleteFamiliesFamilies(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updateFamily_insertFamiliesFamilies {
  Mutation_updateFamily_insertFamiliesFamilies({
    required this.affectedRows,
    this.$__typename = 'FamiliesFamiliesMutationResponse',
  });

  factory Mutation_updateFamily_insertFamiliesFamilies.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_updateFamily_insertFamiliesFamilies) ||
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
          Mutation_updateFamily_insertFamiliesFamilies>
      get copyWith => CopyWith_Mutation_updateFamily_insertFamiliesFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes> {
  factory CopyWith_Mutation_updateFamily_insertFamiliesFamilies(
    Mutation_updateFamily_insertFamiliesFamilies instance,
    TRes Function(Mutation_updateFamily_insertFamiliesFamilies) then,
  ) = _CopyWithImpl_Mutation_updateFamily_insertFamiliesFamilies;

  factory CopyWith_Mutation_updateFamily_insertFamiliesFamilies.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_insertFamiliesFamilies;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
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
  }) =>
      _then(Mutation_updateFamily_insertFamiliesFamilies(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updateFamily_insertFamiliesFamilies<TRes>
    implements CopyWith_Mutation_updateFamily_insertFamiliesFamilies<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_insertFamiliesFamilies(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}
