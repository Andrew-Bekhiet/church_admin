import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$deleteStreet {
  factory Variables$Mutation$deleteStreet({required UuidValue streetId}) =>
      Variables$Mutation$deleteStreet._({
        r'streetId': streetId,
      });

  Variables$Mutation$deleteStreet._(this._$data);

  factory Variables$Mutation$deleteStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$streetId = data['streetId'];
    result$data['streetId'] = stringToUuid(l$streetId);
    return Variables$Mutation$deleteStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get streetId => (_$data['streetId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$streetId = streetId;
    result$data['streetId'] = uuidToString(l$streetId);
    return result$data;
  }

  CopyWith$Variables$Mutation$deleteStreet<Variables$Mutation$deleteStreet>
      get copyWith => CopyWith$Variables$Mutation$deleteStreet(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deleteStreet) ||
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

abstract class CopyWith$Variables$Mutation$deleteStreet<TRes> {
  factory CopyWith$Variables$Mutation$deleteStreet(
    Variables$Mutation$deleteStreet instance,
    TRes Function(Variables$Mutation$deleteStreet) then,
  ) = _CopyWithImpl$Variables$Mutation$deleteStreet;

  factory CopyWith$Variables$Mutation$deleteStreet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deleteStreet;

  TRes call({UuidValue? streetId});
}

class _CopyWithImpl$Variables$Mutation$deleteStreet<TRes>
    implements CopyWith$Variables$Mutation$deleteStreet<TRes> {
  _CopyWithImpl$Variables$Mutation$deleteStreet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deleteStreet _instance;

  final TRes Function(Variables$Mutation$deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetId = _undefined}) =>
      _then(Variables$Mutation$deleteStreet._({
        ..._instance._$data,
        if (streetId != _undefined && streetId != null)
          'streetId': (streetId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deleteStreet<TRes>
    implements CopyWith$Variables$Mutation$deleteStreet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deleteStreet(this._res);

  TRes _res;

  call({UuidValue? streetId}) => _res;
}

class Mutation$deleteStreet {
  Mutation$deleteStreet({
    this.deleteStreetsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$deleteStreet.fromJson(Map<String, dynamic> json) {
    final l$deleteStreetsByPk = json['deleteStreetsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteStreet(
      deleteStreetsByPk: l$deleteStreetsByPk == null
          ? null
          : Fragment$Street.fromJson(
              (l$deleteStreetsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Street? deleteStreetsByPk;

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
    if (!(other is Mutation$deleteStreet) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$deleteStreet on Mutation$deleteStreet {
  CopyWith$Mutation$deleteStreet<Mutation$deleteStreet> get copyWith =>
      CopyWith$Mutation$deleteStreet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deleteStreet<TRes> {
  factory CopyWith$Mutation$deleteStreet(
    Mutation$deleteStreet instance,
    TRes Function(Mutation$deleteStreet) then,
  ) = _CopyWithImpl$Mutation$deleteStreet;

  factory CopyWith$Mutation$deleteStreet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteStreet;

  TRes call({
    Fragment$Street? deleteStreetsByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Street<TRes> get deleteStreetsByPk;
}

class _CopyWithImpl$Mutation$deleteStreet<TRes>
    implements CopyWith$Mutation$deleteStreet<TRes> {
  _CopyWithImpl$Mutation$deleteStreet(
    this._instance,
    this._then,
  );

  final Mutation$deleteStreet _instance;

  final TRes Function(Mutation$deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStreetsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteStreet(
        deleteStreetsByPk: deleteStreetsByPk == _undefined
            ? _instance.deleteStreetsByPk
            : (deleteStreetsByPk as Fragment$Street?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Street<TRes> get deleteStreetsByPk {
    final local$deleteStreetsByPk = _instance.deleteStreetsByPk;
    return local$deleteStreetsByPk == null
        ? CopyWith$Fragment$Street.stub(_then(_instance))
        : CopyWith$Fragment$Street(
            local$deleteStreetsByPk, (e) => call(deleteStreetsByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$deleteStreet<TRes>
    implements CopyWith$Mutation$deleteStreet<TRes> {
  _CopyWithStubImpl$Mutation$deleteStreet(this._res);

  TRes _res;

  call({
    Fragment$Street? deleteStreetsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Street<TRes> get deleteStreetsByPk =>
      CopyWith$Fragment$Street.stub(_res);
}

const documentNodeMutationdeleteStreet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteStreet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'streetId')),
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

class Variables$Mutation$insertStreet {
  factory Variables$Mutation$insertStreet(
          {required Input$StreetsInsertInput newStreet}) =>
      Variables$Mutation$insertStreet._({
        r'newStreet': newStreet,
      });

  Variables$Mutation$insertStreet._(this._$data);

  factory Variables$Mutation$insertStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newStreet = data['newStreet'];
    result$data['newStreet'] = Input$StreetsInsertInput.fromJson(
        (l$newStreet as Map<String, dynamic>));
    return Variables$Mutation$insertStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StreetsInsertInput get newStreet =>
      (_$data['newStreet'] as Input$StreetsInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newStreet = newStreet;
    result$data['newStreet'] = l$newStreet.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$insertStreet<Variables$Mutation$insertStreet>
      get copyWith => CopyWith$Variables$Mutation$insertStreet(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertStreet) ||
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

abstract class CopyWith$Variables$Mutation$insertStreet<TRes> {
  factory CopyWith$Variables$Mutation$insertStreet(
    Variables$Mutation$insertStreet instance,
    TRes Function(Variables$Mutation$insertStreet) then,
  ) = _CopyWithImpl$Variables$Mutation$insertStreet;

  factory CopyWith$Variables$Mutation$insertStreet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertStreet;

  TRes call({Input$StreetsInsertInput? newStreet});
}

class _CopyWithImpl$Variables$Mutation$insertStreet<TRes>
    implements CopyWith$Variables$Mutation$insertStreet<TRes> {
  _CopyWithImpl$Variables$Mutation$insertStreet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertStreet _instance;

  final TRes Function(Variables$Mutation$insertStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newStreet = _undefined}) =>
      _then(Variables$Mutation$insertStreet._({
        ..._instance._$data,
        if (newStreet != _undefined && newStreet != null)
          'newStreet': (newStreet as Input$StreetsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertStreet<TRes>
    implements CopyWith$Variables$Mutation$insertStreet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertStreet(this._res);

  TRes _res;

  call({Input$StreetsInsertInput? newStreet}) => _res;
}

class Mutation$insertStreet {
  Mutation$insertStreet({
    this.insertStreetsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertStreet.fromJson(Map<String, dynamic> json) {
    final l$insertStreetsOne = json['insertStreetsOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertStreet(
      insertStreetsOne: l$insertStreetsOne == null
          ? null
          : Fragment$Street.fromJson(
              (l$insertStreetsOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Street? insertStreetsOne;

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
    if (!(other is Mutation$insertStreet) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$insertStreet on Mutation$insertStreet {
  CopyWith$Mutation$insertStreet<Mutation$insertStreet> get copyWith =>
      CopyWith$Mutation$insertStreet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$insertStreet<TRes> {
  factory CopyWith$Mutation$insertStreet(
    Mutation$insertStreet instance,
    TRes Function(Mutation$insertStreet) then,
  ) = _CopyWithImpl$Mutation$insertStreet;

  factory CopyWith$Mutation$insertStreet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertStreet;

  TRes call({
    Fragment$Street? insertStreetsOne,
    String? $__typename,
  });
  CopyWith$Fragment$Street<TRes> get insertStreetsOne;
}

class _CopyWithImpl$Mutation$insertStreet<TRes>
    implements CopyWith$Mutation$insertStreet<TRes> {
  _CopyWithImpl$Mutation$insertStreet(
    this._instance,
    this._then,
  );

  final Mutation$insertStreet _instance;

  final TRes Function(Mutation$insertStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertStreetsOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertStreet(
        insertStreetsOne: insertStreetsOne == _undefined
            ? _instance.insertStreetsOne
            : (insertStreetsOne as Fragment$Street?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Street<TRes> get insertStreetsOne {
    final local$insertStreetsOne = _instance.insertStreetsOne;
    return local$insertStreetsOne == null
        ? CopyWith$Fragment$Street.stub(_then(_instance))
        : CopyWith$Fragment$Street(
            local$insertStreetsOne, (e) => call(insertStreetsOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertStreet<TRes>
    implements CopyWith$Mutation$insertStreet<TRes> {
  _CopyWithStubImpl$Mutation$insertStreet(this._res);

  TRes _res;

  call({
    Fragment$Street? insertStreetsOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Street<TRes> get insertStreetsOne =>
      CopyWith$Fragment$Street.stub(_res);
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

class Variables$Mutation$updateStreet {
  factory Variables$Mutation$updateStreet({
    required UuidValue streetId,
    required Input$StreetsSetInput newStreet,
  }) =>
      Variables$Mutation$updateStreet._({
        r'streetId': streetId,
        r'newStreet': newStreet,
      });

  Variables$Mutation$updateStreet._(this._$data);

  factory Variables$Mutation$updateStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$streetId = data['streetId'];
    result$data['streetId'] = stringToUuid(l$streetId);
    final l$newStreet = data['newStreet'];
    result$data['newStreet'] =
        Input$StreetsSetInput.fromJson((l$newStreet as Map<String, dynamic>));
    return Variables$Mutation$updateStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get streetId => (_$data['streetId'] as UuidValue);
  Input$StreetsSetInput get newStreet =>
      (_$data['newStreet'] as Input$StreetsSetInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$streetId = streetId;
    result$data['streetId'] = uuidToString(l$streetId);
    final l$newStreet = newStreet;
    result$data['newStreet'] = l$newStreet.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateStreet<Variables$Mutation$updateStreet>
      get copyWith => CopyWith$Variables$Mutation$updateStreet(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateStreet) ||
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

abstract class CopyWith$Variables$Mutation$updateStreet<TRes> {
  factory CopyWith$Variables$Mutation$updateStreet(
    Variables$Mutation$updateStreet instance,
    TRes Function(Variables$Mutation$updateStreet) then,
  ) = _CopyWithImpl$Variables$Mutation$updateStreet;

  factory CopyWith$Variables$Mutation$updateStreet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateStreet;

  TRes call({
    UuidValue? streetId,
    Input$StreetsSetInput? newStreet,
  });
}

class _CopyWithImpl$Variables$Mutation$updateStreet<TRes>
    implements CopyWith$Variables$Mutation$updateStreet<TRes> {
  _CopyWithImpl$Variables$Mutation$updateStreet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateStreet _instance;

  final TRes Function(Variables$Mutation$updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? streetId = _undefined,
    Object? newStreet = _undefined,
  }) =>
      _then(Variables$Mutation$updateStreet._({
        ..._instance._$data,
        if (streetId != _undefined && streetId != null)
          'streetId': (streetId as UuidValue),
        if (newStreet != _undefined && newStreet != null)
          'newStreet': (newStreet as Input$StreetsSetInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateStreet<TRes>
    implements CopyWith$Variables$Mutation$updateStreet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateStreet(this._res);

  TRes _res;

  call({
    UuidValue? streetId,
    Input$StreetsSetInput? newStreet,
  }) =>
      _res;
}

class Mutation$updateStreet {
  Mutation$updateStreet({
    this.updateStreetsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$updateStreet.fromJson(Map<String, dynamic> json) {
    final l$updateStreetsByPk = json['updateStreetsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$updateStreet(
      updateStreetsByPk: l$updateStreetsByPk == null
          ? null
          : Fragment$Street.fromJson(
              (l$updateStreetsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Street? updateStreetsByPk;

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
    if (!(other is Mutation$updateStreet) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$updateStreet on Mutation$updateStreet {
  CopyWith$Mutation$updateStreet<Mutation$updateStreet> get copyWith =>
      CopyWith$Mutation$updateStreet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateStreet<TRes> {
  factory CopyWith$Mutation$updateStreet(
    Mutation$updateStreet instance,
    TRes Function(Mutation$updateStreet) then,
  ) = _CopyWithImpl$Mutation$updateStreet;

  factory CopyWith$Mutation$updateStreet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateStreet;

  TRes call({
    Fragment$Street? updateStreetsByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Street<TRes> get updateStreetsByPk;
}

class _CopyWithImpl$Mutation$updateStreet<TRes>
    implements CopyWith$Mutation$updateStreet<TRes> {
  _CopyWithImpl$Mutation$updateStreet(
    this._instance,
    this._then,
  );

  final Mutation$updateStreet _instance;

  final TRes Function(Mutation$updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStreetsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateStreet(
        updateStreetsByPk: updateStreetsByPk == _undefined
            ? _instance.updateStreetsByPk
            : (updateStreetsByPk as Fragment$Street?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Street<TRes> get updateStreetsByPk {
    final local$updateStreetsByPk = _instance.updateStreetsByPk;
    return local$updateStreetsByPk == null
        ? CopyWith$Fragment$Street.stub(_then(_instance))
        : CopyWith$Fragment$Street(
            local$updateStreetsByPk, (e) => call(updateStreetsByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$updateStreet<TRes>
    implements CopyWith$Mutation$updateStreet<TRes> {
  _CopyWithStubImpl$Mutation$updateStreet(this._res);

  TRes _res;

  call({
    Fragment$Street? updateStreetsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Street<TRes> get updateStreetsByPk =>
      CopyWith$Fragment$Street.stub(_res);
}

const documentNodeMutationupdateStreet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateStreet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'streetId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
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
