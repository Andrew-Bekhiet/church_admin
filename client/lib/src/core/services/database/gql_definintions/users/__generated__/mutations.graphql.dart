import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../invitations/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_updateUser {
  factory Variables_Mutation_updateUser({
    required String id,
    Input_UpdateUserInput? input,
  }) => Variables_Mutation_updateUser._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateUser._(this._$data);

  factory Variables_Mutation_updateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateUserInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateUserInput? get input =>
      (_$data['input'] as Input_UpdateUserInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateUser<Variables_Mutation_updateUser>
  get copyWith => CopyWith_Variables_Mutation_updateUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      _$data.containsKey('input') ? l$input : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateUser<TRes> {
  factory CopyWith_Variables_Mutation_updateUser(
    Variables_Mutation_updateUser instance,
    TRes Function(Variables_Mutation_updateUser) then,
  ) = _CopyWithImpl_Variables_Mutation_updateUser;

  factory CopyWith_Variables_Mutation_updateUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateUser;

  TRes call({String? id, Input_UpdateUserInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateUser<TRes>
    implements CopyWith_Variables_Mutation_updateUser<TRes> {
  _CopyWithImpl_Variables_Mutation_updateUser(this._instance, this._then);

  final Variables_Mutation_updateUser _instance;

  final TRes Function(Variables_Mutation_updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateUser._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateUserInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateUser<TRes>
    implements CopyWith_Variables_Mutation_updateUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateUser(this._res);

  TRes _res;

  call({String? id, Input_UpdateUserInput? input}) => _res;
}

class Mutation_updateUser {
  Mutation_updateUser({this.updateUser, this.$__typename = 'RootMutationType'});

  factory Mutation_updateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUser(
      updateUser: l$updateUser == null
          ? null
          : Mutation_updateUser_updateUser.fromJson(
              (l$updateUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateUser_updateUser? updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
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

extension UtilityExtension_Mutation_updateUser on Mutation_updateUser {
  CopyWith_Mutation_updateUser<Mutation_updateUser> get copyWith =>
      CopyWith_Mutation_updateUser(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUser<TRes> {
  factory CopyWith_Mutation_updateUser(
    Mutation_updateUser instance,
    TRes Function(Mutation_updateUser) then,
  ) = _CopyWithImpl_Mutation_updateUser;

  factory CopyWith_Mutation_updateUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUser;

  TRes call({Mutation_updateUser_updateUser? updateUser, String? $__typename});
  CopyWith_Mutation_updateUser_updateUser<TRes> get updateUser;
}

class _CopyWithImpl_Mutation_updateUser<TRes>
    implements CopyWith_Mutation_updateUser<TRes> {
  _CopyWithImpl_Mutation_updateUser(this._instance, this._then);

  final Mutation_updateUser _instance;

  final TRes Function(Mutation_updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUser(
      updateUser: updateUser == _undefined
          ? _instance.updateUser
          : (updateUser as Mutation_updateUser_updateUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateUser_updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return local$updateUser == null
        ? CopyWith_Mutation_updateUser_updateUser.stub(_then(_instance))
        : CopyWith_Mutation_updateUser_updateUser(
            local$updateUser,
            (e) => call(updateUser: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateUser<TRes>
    implements CopyWith_Mutation_updateUser<TRes> {
  _CopyWithStubImpl_Mutation_updateUser(this._res);

  TRes _res;

  call({Mutation_updateUser_updateUser? updateUser, String? $__typename}) =>
      _res;

  CopyWith_Mutation_updateUser_updateUser<TRes> get updateUser =>
      CopyWith_Mutation_updateUser_updateUser.stub(_res);
}

const documentNodeMutationupdateUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateUserInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserOverview'),
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
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionInvitation,
    fragmentDefinitionUserPerson,
    fragmentDefinitionDataCheck,
    fragmentDefinitionLatestKodas,
    fragmentDefinitionLatestConfession,
  ],
);

class Mutation_updateUser_updateUser {
  Mutation_updateUser_updateUser({
    this.result,
    this.$__typename = 'UpdateUserResult',
  });

  factory Mutation_updateUser_updateUser.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUser_updateUser(
      result: l$result == null
          ? null
          : Fragment_UserOverview.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_UserOverview? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUser_updateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_updateUser_updateUser
    on Mutation_updateUser_updateUser {
  CopyWith_Mutation_updateUser_updateUser<Mutation_updateUser_updateUser>
  get copyWith => CopyWith_Mutation_updateUser_updateUser(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUser_updateUser<TRes> {
  factory CopyWith_Mutation_updateUser_updateUser(
    Mutation_updateUser_updateUser instance,
    TRes Function(Mutation_updateUser_updateUser) then,
  ) = _CopyWithImpl_Mutation_updateUser_updateUser;

  factory CopyWith_Mutation_updateUser_updateUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUser_updateUser;

  TRes call({Fragment_UserOverview? result, String? $__typename});
  CopyWith_Fragment_UserOverview<TRes> get result;
}

class _CopyWithImpl_Mutation_updateUser_updateUser<TRes>
    implements CopyWith_Mutation_updateUser_updateUser<TRes> {
  _CopyWithImpl_Mutation_updateUser_updateUser(this._instance, this._then);

  final Mutation_updateUser_updateUser _instance;

  final TRes Function(Mutation_updateUser_updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateUser_updateUser(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_UserOverview?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_UserOverview<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_UserOverview.stub(_then(_instance))
        : CopyWith_Fragment_UserOverview(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateUser_updateUser<TRes>
    implements CopyWith_Mutation_updateUser_updateUser<TRes> {
  _CopyWithStubImpl_Mutation_updateUser_updateUser(this._res);

  TRes _res;

  call({Fragment_UserOverview? result, String? $__typename}) => _res;

  CopyWith_Fragment_UserOverview<TRes> get result =>
      CopyWith_Fragment_UserOverview.stub(_res);
}
