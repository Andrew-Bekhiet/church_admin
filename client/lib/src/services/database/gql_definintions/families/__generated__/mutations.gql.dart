import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$deleteFamily {
  factory Variables$Mutation$deleteFamily({required UuidValue familyId}) =>
      Variables$Mutation$deleteFamily._({
        r'familyId': familyId,
      });

  Variables$Mutation$deleteFamily._(this._$data);

  factory Variables$Mutation$deleteFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables$Mutation$deleteFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith$Variables$Mutation$deleteFamily<Variables$Mutation$deleteFamily>
      get copyWith => CopyWith$Variables$Mutation$deleteFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deleteFamily) ||
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

abstract class CopyWith$Variables$Mutation$deleteFamily<TRes> {
  factory CopyWith$Variables$Mutation$deleteFamily(
    Variables$Mutation$deleteFamily instance,
    TRes Function(Variables$Mutation$deleteFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$deleteFamily;

  factory CopyWith$Variables$Mutation$deleteFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deleteFamily;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl$Variables$Mutation$deleteFamily<TRes>
    implements CopyWith$Variables$Mutation$deleteFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$deleteFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deleteFamily _instance;

  final TRes Function(Variables$Mutation$deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables$Mutation$deleteFamily._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deleteFamily<TRes>
    implements CopyWith$Variables$Mutation$deleteFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deleteFamily(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Mutation$deleteFamily {
  Mutation$deleteFamily({
    this.deleteFamiliesByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$deleteFamily.fromJson(Map<String, dynamic> json) {
    final l$deleteFamiliesByPk = json['deleteFamiliesByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteFamily(
      deleteFamiliesByPk: l$deleteFamiliesByPk == null
          ? null
          : Fragment$Family.fromJson(
              (l$deleteFamiliesByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Family? deleteFamiliesByPk;

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
    if (!(other is Mutation$deleteFamily) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$deleteFamily on Mutation$deleteFamily {
  CopyWith$Mutation$deleteFamily<Mutation$deleteFamily> get copyWith =>
      CopyWith$Mutation$deleteFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deleteFamily<TRes> {
  factory CopyWith$Mutation$deleteFamily(
    Mutation$deleteFamily instance,
    TRes Function(Mutation$deleteFamily) then,
  ) = _CopyWithImpl$Mutation$deleteFamily;

  factory CopyWith$Mutation$deleteFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteFamily;

  TRes call({
    Fragment$Family? deleteFamiliesByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Family<TRes> get deleteFamiliesByPk;
}

class _CopyWithImpl$Mutation$deleteFamily<TRes>
    implements CopyWith$Mutation$deleteFamily<TRes> {
  _CopyWithImpl$Mutation$deleteFamily(
    this._instance,
    this._then,
  );

  final Mutation$deleteFamily _instance;

  final TRes Function(Mutation$deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFamiliesByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteFamily(
        deleteFamiliesByPk: deleteFamiliesByPk == _undefined
            ? _instance.deleteFamiliesByPk
            : (deleteFamiliesByPk as Fragment$Family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Family<TRes> get deleteFamiliesByPk {
    final local$deleteFamiliesByPk = _instance.deleteFamiliesByPk;
    return local$deleteFamiliesByPk == null
        ? CopyWith$Fragment$Family.stub(_then(_instance))
        : CopyWith$Fragment$Family(
            local$deleteFamiliesByPk, (e) => call(deleteFamiliesByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$deleteFamily<TRes>
    implements CopyWith$Mutation$deleteFamily<TRes> {
  _CopyWithStubImpl$Mutation$deleteFamily(this._res);

  TRes _res;

  call({
    Fragment$Family? deleteFamiliesByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Family<TRes> get deleteFamiliesByPk =>
      CopyWith$Fragment$Family.stub(_res);
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

class Variables$Mutation$insertFamily {
  factory Variables$Mutation$insertFamily(
          {required Input$FamiliesInsertInput newFamily}) =>
      Variables$Mutation$insertFamily._({
        r'newFamily': newFamily,
      });

  Variables$Mutation$insertFamily._(this._$data);

  factory Variables$Mutation$insertFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newFamily = data['newFamily'];
    result$data['newFamily'] = Input$FamiliesInsertInput.fromJson(
        (l$newFamily as Map<String, dynamic>));
    return Variables$Mutation$insertFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FamiliesInsertInput get newFamily =>
      (_$data['newFamily'] as Input$FamiliesInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newFamily = newFamily;
    result$data['newFamily'] = l$newFamily.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$insertFamily<Variables$Mutation$insertFamily>
      get copyWith => CopyWith$Variables$Mutation$insertFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertFamily) ||
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

abstract class CopyWith$Variables$Mutation$insertFamily<TRes> {
  factory CopyWith$Variables$Mutation$insertFamily(
    Variables$Mutation$insertFamily instance,
    TRes Function(Variables$Mutation$insertFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$insertFamily;

  factory CopyWith$Variables$Mutation$insertFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertFamily;

  TRes call({Input$FamiliesInsertInput? newFamily});
}

class _CopyWithImpl$Variables$Mutation$insertFamily<TRes>
    implements CopyWith$Variables$Mutation$insertFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$insertFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertFamily _instance;

  final TRes Function(Variables$Mutation$insertFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newFamily = _undefined}) =>
      _then(Variables$Mutation$insertFamily._({
        ..._instance._$data,
        if (newFamily != _undefined && newFamily != null)
          'newFamily': (newFamily as Input$FamiliesInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertFamily<TRes>
    implements CopyWith$Variables$Mutation$insertFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertFamily(this._res);

  TRes _res;

  call({Input$FamiliesInsertInput? newFamily}) => _res;
}

class Mutation$insertFamily {
  Mutation$insertFamily({
    this.insertFamiliesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertFamily.fromJson(Map<String, dynamic> json) {
    final l$insertFamiliesOne = json['insertFamiliesOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertFamily(
      insertFamiliesOne: l$insertFamiliesOne == null
          ? null
          : Fragment$Family.fromJson(
              (l$insertFamiliesOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Family? insertFamiliesOne;

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
    if (!(other is Mutation$insertFamily) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$insertFamily on Mutation$insertFamily {
  CopyWith$Mutation$insertFamily<Mutation$insertFamily> get copyWith =>
      CopyWith$Mutation$insertFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$insertFamily<TRes> {
  factory CopyWith$Mutation$insertFamily(
    Mutation$insertFamily instance,
    TRes Function(Mutation$insertFamily) then,
  ) = _CopyWithImpl$Mutation$insertFamily;

  factory CopyWith$Mutation$insertFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertFamily;

  TRes call({
    Fragment$Family? insertFamiliesOne,
    String? $__typename,
  });
  CopyWith$Fragment$Family<TRes> get insertFamiliesOne;
}

class _CopyWithImpl$Mutation$insertFamily<TRes>
    implements CopyWith$Mutation$insertFamily<TRes> {
  _CopyWithImpl$Mutation$insertFamily(
    this._instance,
    this._then,
  );

  final Mutation$insertFamily _instance;

  final TRes Function(Mutation$insertFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertFamiliesOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertFamily(
        insertFamiliesOne: insertFamiliesOne == _undefined
            ? _instance.insertFamiliesOne
            : (insertFamiliesOne as Fragment$Family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Family<TRes> get insertFamiliesOne {
    final local$insertFamiliesOne = _instance.insertFamiliesOne;
    return local$insertFamiliesOne == null
        ? CopyWith$Fragment$Family.stub(_then(_instance))
        : CopyWith$Fragment$Family(
            local$insertFamiliesOne, (e) => call(insertFamiliesOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertFamily<TRes>
    implements CopyWith$Mutation$insertFamily<TRes> {
  _CopyWithStubImpl$Mutation$insertFamily(this._res);

  TRes _res;

  call({
    Fragment$Family? insertFamiliesOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Family<TRes> get insertFamiliesOne =>
      CopyWith$Fragment$Family.stub(_res);
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

class Variables$Mutation$updateFamily {
  factory Variables$Mutation$updateFamily({
    required UuidValue familyId,
    required Input$FamiliesSetInput newFamily,
    required List<UuidValue> deleteParents,
    required List<UuidValue> deleteChildren,
    required List<Input$FamiliesFamiliesInsertInput> addRelatedFamilies,
    required bool updateFamily,
    required bool deleteRelatedFamilies,
    required bool insertRelatedFamilies,
  }) =>
      Variables$Mutation$updateFamily._({
        r'familyId': familyId,
        r'newFamily': newFamily,
        r'deleteParents': deleteParents,
        r'deleteChildren': deleteChildren,
        r'addRelatedFamilies': addRelatedFamilies,
        r'updateFamily': updateFamily,
        r'deleteRelatedFamilies': deleteRelatedFamilies,
        r'insertRelatedFamilies': insertRelatedFamilies,
      });

  Variables$Mutation$updateFamily._(this._$data);

  factory Variables$Mutation$updateFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    final l$newFamily = data['newFamily'];
    result$data['newFamily'] =
        Input$FamiliesSetInput.fromJson((l$newFamily as Map<String, dynamic>));
    final l$deleteParents = data['deleteParents'];
    result$data['deleteParents'] =
        (l$deleteParents as List<dynamic>).map((e) => stringToUuid(e)).toList();
    final l$deleteChildren = data['deleteChildren'];
    result$data['deleteChildren'] = (l$deleteChildren as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
    final l$addRelatedFamilies = data['addRelatedFamilies'];
    result$data['addRelatedFamilies'] = (l$addRelatedFamilies as List<dynamic>)
        .map((e) => Input$FamiliesFamiliesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$updateFamily = data['updateFamily'];
    result$data['updateFamily'] = (l$updateFamily as bool);
    final l$deleteRelatedFamilies = data['deleteRelatedFamilies'];
    result$data['deleteRelatedFamilies'] = (l$deleteRelatedFamilies as bool);
    final l$insertRelatedFamilies = data['insertRelatedFamilies'];
    result$data['insertRelatedFamilies'] = (l$insertRelatedFamilies as bool);
    return Variables$Mutation$updateFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);
  Input$FamiliesSetInput get newFamily =>
      (_$data['newFamily'] as Input$FamiliesSetInput);
  List<UuidValue> get deleteParents =>
      (_$data['deleteParents'] as List<UuidValue>);
  List<UuidValue> get deleteChildren =>
      (_$data['deleteChildren'] as List<UuidValue>);
  List<Input$FamiliesFamiliesInsertInput> get addRelatedFamilies =>
      (_$data['addRelatedFamilies'] as List<Input$FamiliesFamiliesInsertInput>);
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

  CopyWith$Variables$Mutation$updateFamily<Variables$Mutation$updateFamily>
      get copyWith => CopyWith$Variables$Mutation$updateFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateFamily) ||
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

abstract class CopyWith$Variables$Mutation$updateFamily<TRes> {
  factory CopyWith$Variables$Mutation$updateFamily(
    Variables$Mutation$updateFamily instance,
    TRes Function(Variables$Mutation$updateFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$updateFamily;

  factory CopyWith$Variables$Mutation$updateFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateFamily;

  TRes call({
    UuidValue? familyId,
    Input$FamiliesSetInput? newFamily,
    List<UuidValue>? deleteParents,
    List<UuidValue>? deleteChildren,
    List<Input$FamiliesFamiliesInsertInput>? addRelatedFamilies,
    bool? updateFamily,
    bool? deleteRelatedFamilies,
    bool? insertRelatedFamilies,
  });
}

class _CopyWithImpl$Variables$Mutation$updateFamily<TRes>
    implements CopyWith$Variables$Mutation$updateFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$updateFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateFamily _instance;

  final TRes Function(Variables$Mutation$updateFamily) _then;

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
      _then(Variables$Mutation$updateFamily._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as UuidValue),
        if (newFamily != _undefined && newFamily != null)
          'newFamily': (newFamily as Input$FamiliesSetInput),
        if (deleteParents != _undefined && deleteParents != null)
          'deleteParents': (deleteParents as List<UuidValue>),
        if (deleteChildren != _undefined && deleteChildren != null)
          'deleteChildren': (deleteChildren as List<UuidValue>),
        if (addRelatedFamilies != _undefined && addRelatedFamilies != null)
          'addRelatedFamilies':
              (addRelatedFamilies as List<Input$FamiliesFamiliesInsertInput>),
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

class _CopyWithStubImpl$Variables$Mutation$updateFamily<TRes>
    implements CopyWith$Variables$Mutation$updateFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateFamily(this._res);

  TRes _res;

  call({
    UuidValue? familyId,
    Input$FamiliesSetInput? newFamily,
    List<UuidValue>? deleteParents,
    List<UuidValue>? deleteChildren,
    List<Input$FamiliesFamiliesInsertInput>? addRelatedFamilies,
    bool? updateFamily,
    bool? deleteRelatedFamilies,
    bool? insertRelatedFamilies,
  }) =>
      _res;
}

class Mutation$updateFamily {
  Mutation$updateFamily({
    this.updateFamiliesByPk,
    this.deleteFamiliesFamilies,
    this.insertFamiliesFamilies,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$updateFamily.fromJson(Map<String, dynamic> json) {
    final l$updateFamiliesByPk = json['updateFamiliesByPk'];
    final l$deleteFamiliesFamilies = json['deleteFamiliesFamilies'];
    final l$insertFamiliesFamilies = json['insertFamiliesFamilies'];
    final l$$__typename = json['__typename'];
    return Mutation$updateFamily(
      updateFamiliesByPk: l$updateFamiliesByPk == null
          ? null
          : Fragment$Family.fromJson(
              (l$updateFamiliesByPk as Map<String, dynamic>)),
      deleteFamiliesFamilies: l$deleteFamiliesFamilies == null
          ? null
          : Mutation$updateFamily$deleteFamiliesFamilies.fromJson(
              (l$deleteFamiliesFamilies as Map<String, dynamic>)),
      insertFamiliesFamilies: l$insertFamiliesFamilies == null
          ? null
          : Mutation$updateFamily$insertFamiliesFamilies.fromJson(
              (l$insertFamiliesFamilies as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Family? updateFamiliesByPk;

  final Mutation$updateFamily$deleteFamiliesFamilies? deleteFamiliesFamilies;

  final Mutation$updateFamily$insertFamiliesFamilies? insertFamiliesFamilies;

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
    if (!(other is Mutation$updateFamily) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$updateFamily on Mutation$updateFamily {
  CopyWith$Mutation$updateFamily<Mutation$updateFamily> get copyWith =>
      CopyWith$Mutation$updateFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateFamily<TRes> {
  factory CopyWith$Mutation$updateFamily(
    Mutation$updateFamily instance,
    TRes Function(Mutation$updateFamily) then,
  ) = _CopyWithImpl$Mutation$updateFamily;

  factory CopyWith$Mutation$updateFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateFamily;

  TRes call({
    Fragment$Family? updateFamiliesByPk,
    Mutation$updateFamily$deleteFamiliesFamilies? deleteFamiliesFamilies,
    Mutation$updateFamily$insertFamiliesFamilies? insertFamiliesFamilies,
    String? $__typename,
  });
  CopyWith$Fragment$Family<TRes> get updateFamiliesByPk;
  CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<TRes>
      get deleteFamiliesFamilies;
  CopyWith$Mutation$updateFamily$insertFamiliesFamilies<TRes>
      get insertFamiliesFamilies;
}

class _CopyWithImpl$Mutation$updateFamily<TRes>
    implements CopyWith$Mutation$updateFamily<TRes> {
  _CopyWithImpl$Mutation$updateFamily(
    this._instance,
    this._then,
  );

  final Mutation$updateFamily _instance;

  final TRes Function(Mutation$updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateFamiliesByPk = _undefined,
    Object? deleteFamiliesFamilies = _undefined,
    Object? insertFamiliesFamilies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateFamily(
        updateFamiliesByPk: updateFamiliesByPk == _undefined
            ? _instance.updateFamiliesByPk
            : (updateFamiliesByPk as Fragment$Family?),
        deleteFamiliesFamilies: deleteFamiliesFamilies == _undefined
            ? _instance.deleteFamiliesFamilies
            : (deleteFamiliesFamilies
                as Mutation$updateFamily$deleteFamiliesFamilies?),
        insertFamiliesFamilies: insertFamiliesFamilies == _undefined
            ? _instance.insertFamiliesFamilies
            : (insertFamiliesFamilies
                as Mutation$updateFamily$insertFamiliesFamilies?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Family<TRes> get updateFamiliesByPk {
    final local$updateFamiliesByPk = _instance.updateFamiliesByPk;
    return local$updateFamiliesByPk == null
        ? CopyWith$Fragment$Family.stub(_then(_instance))
        : CopyWith$Fragment$Family(
            local$updateFamiliesByPk, (e) => call(updateFamiliesByPk: e));
  }

  CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<TRes>
      get deleteFamiliesFamilies {
    final local$deleteFamiliesFamilies = _instance.deleteFamiliesFamilies;
    return local$deleteFamiliesFamilies == null
        ? CopyWith$Mutation$updateFamily$deleteFamiliesFamilies.stub(
            _then(_instance))
        : CopyWith$Mutation$updateFamily$deleteFamiliesFamilies(
            local$deleteFamiliesFamilies,
            (e) => call(deleteFamiliesFamilies: e));
  }

  CopyWith$Mutation$updateFamily$insertFamiliesFamilies<TRes>
      get insertFamiliesFamilies {
    final local$insertFamiliesFamilies = _instance.insertFamiliesFamilies;
    return local$insertFamiliesFamilies == null
        ? CopyWith$Mutation$updateFamily$insertFamiliesFamilies.stub(
            _then(_instance))
        : CopyWith$Mutation$updateFamily$insertFamiliesFamilies(
            local$insertFamiliesFamilies,
            (e) => call(insertFamiliesFamilies: e));
  }
}

class _CopyWithStubImpl$Mutation$updateFamily<TRes>
    implements CopyWith$Mutation$updateFamily<TRes> {
  _CopyWithStubImpl$Mutation$updateFamily(this._res);

  TRes _res;

  call({
    Fragment$Family? updateFamiliesByPk,
    Mutation$updateFamily$deleteFamiliesFamilies? deleteFamiliesFamilies,
    Mutation$updateFamily$insertFamiliesFamilies? insertFamiliesFamilies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Family<TRes> get updateFamiliesByPk =>
      CopyWith$Fragment$Family.stub(_res);
  CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<TRes>
      get deleteFamiliesFamilies =>
          CopyWith$Mutation$updateFamily$deleteFamiliesFamilies.stub(_res);
  CopyWith$Mutation$updateFamily$insertFamiliesFamilies<TRes>
      get insertFamiliesFamilies =>
          CopyWith$Mutation$updateFamily$insertFamiliesFamilies.stub(_res);
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

class Mutation$updateFamily$deleteFamiliesFamilies {
  Mutation$updateFamily$deleteFamiliesFamilies({
    required this.affectedRows,
    this.$__typename = 'FamiliesFamiliesMutationResponse',
  });

  factory Mutation$updateFamily$deleteFamiliesFamilies.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation$updateFamily$deleteFamiliesFamilies(
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
    if (!(other is Mutation$updateFamily$deleteFamiliesFamilies) ||
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

extension UtilityExtension$Mutation$updateFamily$deleteFamiliesFamilies
    on Mutation$updateFamily$deleteFamiliesFamilies {
  CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<
          Mutation$updateFamily$deleteFamiliesFamilies>
      get copyWith => CopyWith$Mutation$updateFamily$deleteFamiliesFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<TRes> {
  factory CopyWith$Mutation$updateFamily$deleteFamiliesFamilies(
    Mutation$updateFamily$deleteFamiliesFamilies instance,
    TRes Function(Mutation$updateFamily$deleteFamiliesFamilies) then,
  ) = _CopyWithImpl$Mutation$updateFamily$deleteFamiliesFamilies;

  factory CopyWith$Mutation$updateFamily$deleteFamiliesFamilies.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateFamily$deleteFamiliesFamilies;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateFamily$deleteFamiliesFamilies<TRes>
    implements CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<TRes> {
  _CopyWithImpl$Mutation$updateFamily$deleteFamiliesFamilies(
    this._instance,
    this._then,
  );

  final Mutation$updateFamily$deleteFamiliesFamilies _instance;

  final TRes Function(Mutation$updateFamily$deleteFamiliesFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateFamily$deleteFamiliesFamilies(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateFamily$deleteFamiliesFamilies<TRes>
    implements CopyWith$Mutation$updateFamily$deleteFamiliesFamilies<TRes> {
  _CopyWithStubImpl$Mutation$updateFamily$deleteFamiliesFamilies(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateFamily$insertFamiliesFamilies {
  Mutation$updateFamily$insertFamiliesFamilies({
    required this.affectedRows,
    this.$__typename = 'FamiliesFamiliesMutationResponse',
  });

  factory Mutation$updateFamily$insertFamiliesFamilies.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation$updateFamily$insertFamiliesFamilies(
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
    if (!(other is Mutation$updateFamily$insertFamiliesFamilies) ||
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

extension UtilityExtension$Mutation$updateFamily$insertFamiliesFamilies
    on Mutation$updateFamily$insertFamiliesFamilies {
  CopyWith$Mutation$updateFamily$insertFamiliesFamilies<
          Mutation$updateFamily$insertFamiliesFamilies>
      get copyWith => CopyWith$Mutation$updateFamily$insertFamiliesFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateFamily$insertFamiliesFamilies<TRes> {
  factory CopyWith$Mutation$updateFamily$insertFamiliesFamilies(
    Mutation$updateFamily$insertFamiliesFamilies instance,
    TRes Function(Mutation$updateFamily$insertFamiliesFamilies) then,
  ) = _CopyWithImpl$Mutation$updateFamily$insertFamiliesFamilies;

  factory CopyWith$Mutation$updateFamily$insertFamiliesFamilies.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateFamily$insertFamiliesFamilies;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateFamily$insertFamiliesFamilies<TRes>
    implements CopyWith$Mutation$updateFamily$insertFamiliesFamilies<TRes> {
  _CopyWithImpl$Mutation$updateFamily$insertFamiliesFamilies(
    this._instance,
    this._then,
  );

  final Mutation$updateFamily$insertFamiliesFamilies _instance;

  final TRes Function(Mutation$updateFamily$insertFamiliesFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateFamily$insertFamiliesFamilies(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateFamily$insertFamiliesFamilies<TRes>
    implements CopyWith$Mutation$updateFamily$insertFamiliesFamilies<TRes> {
  _CopyWithStubImpl$Mutation$updateFamily$insertFamiliesFamilies(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}
