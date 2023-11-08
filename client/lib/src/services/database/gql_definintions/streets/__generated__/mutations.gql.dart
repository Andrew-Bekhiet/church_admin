import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteStreet {
  factory Variables_Mutation_deleteStreet({required UuidValue streetId}) =>
      Variables_Mutation_deleteStreet._({
        r'streetId': streetId,
      });

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
      get copyWith => CopyWith_Variables_Mutation_deleteStreet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_deleteStreet) ||
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
  _CopyWithImpl_Variables_Mutation_deleteStreet(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteStreet _instance;

  final TRes Function(Variables_Mutation_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetId = _undefined}) =>
      _then(Variables_Mutation_deleteStreet._({
        ..._instance._$data,
        if (streetId != _undefined && streetId != null)
          'streetId': (streetId as UuidValue),
      }));
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
              (l$deleteStreetsByPk as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$deleteStreetsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_deleteStreet) || runtimeType != other.runtimeType) {
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
      CopyWith_Mutation_deleteStreet(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_deleteStreet<TRes> {
  factory CopyWith_Mutation_deleteStreet(
    Mutation_deleteStreet instance,
    TRes Function(Mutation_deleteStreet) then,
  ) = _CopyWithImpl_Mutation_deleteStreet;

  factory CopyWith_Mutation_deleteStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStreet;

  TRes call({
    Fragment_Street? deleteStreetsByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Street<TRes> get deleteStreetsByPk;
}

class _CopyWithImpl_Mutation_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet<TRes> {
  _CopyWithImpl_Mutation_deleteStreet(
    this._instance,
    this._then,
  );

  final Mutation_deleteStreet _instance;

  final TRes Function(Mutation_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStreetsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_deleteStreet(
        deleteStreetsByPk: deleteStreetsByPk == _undefined
            ? _instance.deleteStreetsByPk
            : (deleteStreetsByPk as Fragment_Street?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Street<TRes> get deleteStreetsByPk {
    final local$deleteStreetsByPk = _instance.deleteStreetsByPk;
    return local$deleteStreetsByPk == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(
            local$deleteStreetsByPk, (e) => call(deleteStreetsByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet<TRes> {
  _CopyWithStubImpl_Mutation_deleteStreet(this._res);

  TRes _res;

  call({
    Fragment_Street? deleteStreetsByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Street<TRes> get deleteStreetsByPk =>
      CopyWith_Fragment_Street.stub(_res);
}

const documentNodeMutationdeleteStreet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteStreet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'streetId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteStreetsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'streetId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Variables_Mutation_insertStreet {
  factory Variables_Mutation_insertStreet(
          {required Input_StreetsInsertInput newStreet}) =>
      Variables_Mutation_insertStreet._({
        r'newStreet': newStreet,
      });

  Variables_Mutation_insertStreet._(this._$data);

  factory Variables_Mutation_insertStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newStreet = data['newStreet'];
    result$data['newStreet'] = Input_StreetsInsertInput.fromJson(
        (l$newStreet as Map<String, dynamic>));
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
      get copyWith => CopyWith_Variables_Mutation_insertStreet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertStreet) ||
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
  _CopyWithImpl_Variables_Mutation_insertStreet(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertStreet _instance;

  final TRes Function(Variables_Mutation_insertStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newStreet = _undefined}) =>
      _then(Variables_Mutation_insertStreet._({
        ..._instance._$data,
        if (newStreet != _undefined && newStreet != null)
          'newStreet': (newStreet as Input_StreetsInsertInput),
      }));
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
              (l$insertStreetsOne as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$insertStreetsOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertStreet) || runtimeType != other.runtimeType) {
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
      CopyWith_Mutation_insertStreet(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertStreet<TRes> {
  factory CopyWith_Mutation_insertStreet(
    Mutation_insertStreet instance,
    TRes Function(Mutation_insertStreet) then,
  ) = _CopyWithImpl_Mutation_insertStreet;

  factory CopyWith_Mutation_insertStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertStreet;

  TRes call({
    Fragment_Street? insertStreetsOne,
    String? $__typename,
  });
  CopyWith_Fragment_Street<TRes> get insertStreetsOne;
}

class _CopyWithImpl_Mutation_insertStreet<TRes>
    implements CopyWith_Mutation_insertStreet<TRes> {
  _CopyWithImpl_Mutation_insertStreet(
    this._instance,
    this._then,
  );

  final Mutation_insertStreet _instance;

  final TRes Function(Mutation_insertStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertStreetsOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertStreet(
        insertStreetsOne: insertStreetsOne == _undefined
            ? _instance.insertStreetsOne
            : (insertStreetsOne as Fragment_Street?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Street<TRes> get insertStreetsOne {
    final local$insertStreetsOne = _instance.insertStreetsOne;
    return local$insertStreetsOne == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(
            local$insertStreetsOne, (e) => call(insertStreetsOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertStreet<TRes>
    implements CopyWith_Mutation_insertStreet<TRes> {
  _CopyWithStubImpl_Mutation_insertStreet(this._res);

  TRes _res;

  call({
    Fragment_Street? insertStreetsOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Street<TRes> get insertStreetsOne =>
      CopyWith_Fragment_Street.stub(_res);
}

const documentNodeMutationinsertStreet = DocumentNode(definitions: [
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
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertStreetsOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newStreet')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Variables_Mutation_updateStreet {
  factory Variables_Mutation_updateStreet({
    required UuidValue streetId,
    required Input_StreetsSetInput newStreet,
  }) =>
      Variables_Mutation_updateStreet._({
        r'streetId': streetId,
        r'newStreet': newStreet,
      });

  Variables_Mutation_updateStreet._(this._$data);

  factory Variables_Mutation_updateStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$streetId = data['streetId'];
    result$data['streetId'] = stringToUuid(l$streetId);
    final l$newStreet = data['newStreet'];
    result$data['newStreet'] =
        Input_StreetsSetInput.fromJson((l$newStreet as Map<String, dynamic>));
    return Variables_Mutation_updateStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get streetId => (_$data['streetId'] as UuidValue);

  Input_StreetsSetInput get newStreet =>
      (_$data['newStreet'] as Input_StreetsSetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$streetId = streetId;
    result$data['streetId'] = uuidToString(l$streetId);
    final l$newStreet = newStreet;
    result$data['newStreet'] = l$newStreet.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_updateStreet<Variables_Mutation_updateStreet>
      get copyWith => CopyWith_Variables_Mutation_updateStreet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_updateStreet) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$streetId = streetId;
    final l$newStreet = newStreet;
    return Object.hashAll([
      l$streetId,
      l$newStreet,
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
  });
}

class _CopyWithImpl_Variables_Mutation_updateStreet<TRes>
    implements CopyWith_Variables_Mutation_updateStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_updateStreet(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateStreet _instance;

  final TRes Function(Variables_Mutation_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? streetId = _undefined,
    Object? newStreet = _undefined,
  }) =>
      _then(Variables_Mutation_updateStreet._({
        ..._instance._$data,
        if (streetId != _undefined && streetId != null)
          'streetId': (streetId as UuidValue),
        if (newStreet != _undefined && newStreet != null)
          'newStreet': (newStreet as Input_StreetsSetInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updateStreet<TRes>
    implements CopyWith_Variables_Mutation_updateStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateStreet(this._res);

  TRes _res;

  call({
    UuidValue? streetId,
    Input_StreetsSetInput? newStreet,
  }) =>
      _res;
}

class Mutation_updateStreet {
  Mutation_updateStreet({
    this.updateStreetsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateStreet.fromJson(Map<String, dynamic> json) {
    final l$updateStreetsByPk = json['updateStreetsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStreet(
      updateStreetsByPk: l$updateStreetsByPk == null
          ? null
          : Fragment_Street.fromJson(
              (l$updateStreetsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Street? updateStreetsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStreetsByPk = updateStreetsByPk;
    _resultData['updateStreetsByPk'] = l$updateStreetsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStreetsByPk = updateStreetsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateStreetsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_updateStreet) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStreetsByPk = updateStreetsByPk;
    final lOther$updateStreetsByPk = other.updateStreetsByPk;
    if (l$updateStreetsByPk != lOther$updateStreetsByPk) {
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
      CopyWith_Mutation_updateStreet(
        this,
        (i) => i,
      );
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
    String? $__typename,
  });
  CopyWith_Fragment_Street<TRes> get updateStreetsByPk;
}

class _CopyWithImpl_Mutation_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet<TRes> {
  _CopyWithImpl_Mutation_updateStreet(
    this._instance,
    this._then,
  );

  final Mutation_updateStreet _instance;

  final TRes Function(Mutation_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStreetsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updateStreet(
        updateStreetsByPk: updateStreetsByPk == _undefined
            ? _instance.updateStreetsByPk
            : (updateStreetsByPk as Fragment_Street?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Street<TRes> get updateStreetsByPk {
    final local$updateStreetsByPk = _instance.updateStreetsByPk;
    return local$updateStreetsByPk == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(
            local$updateStreetsByPk, (e) => call(updateStreetsByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet<TRes> {
  _CopyWithStubImpl_Mutation_updateStreet(this._res);

  TRes _res;

  call({
    Fragment_Street? updateStreetsByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Street<TRes> get updateStreetsByPk =>
      CopyWith_Fragment_Street.stub(_res);
}

const documentNodeMutationupdateStreet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateStreet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'streetId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateStreetsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pkColumns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'streetId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'newStreet')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);
