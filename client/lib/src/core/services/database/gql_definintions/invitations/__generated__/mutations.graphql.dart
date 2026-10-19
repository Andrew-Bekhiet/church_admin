import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createInvitation {
  factory Variables_Mutation_createInvitation({
    required Input_CreateInvitationInput input,
  }) => Variables_Mutation_createInvitation._({r'input': input});

  Variables_Mutation_createInvitation._(this._$data);

  factory Variables_Mutation_createInvitation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateInvitationInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createInvitation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateInvitationInput get input =>
      (_$data['input'] as Input_CreateInvitationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createInvitation<
    Variables_Mutation_createInvitation
  >
  get copyWith => CopyWith_Variables_Mutation_createInvitation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createInvitation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createInvitation<TRes> {
  factory CopyWith_Variables_Mutation_createInvitation(
    Variables_Mutation_createInvitation instance,
    TRes Function(Variables_Mutation_createInvitation) then,
  ) = _CopyWithImpl_Variables_Mutation_createInvitation;

  factory CopyWith_Variables_Mutation_createInvitation.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createInvitation;

  TRes call({Input_CreateInvitationInput? input});
}

class _CopyWithImpl_Variables_Mutation_createInvitation<TRes>
    implements CopyWith_Variables_Mutation_createInvitation<TRes> {
  _CopyWithImpl_Variables_Mutation_createInvitation(this._instance, this._then);

  final Variables_Mutation_createInvitation _instance;

  final TRes Function(Variables_Mutation_createInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createInvitation._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateInvitationInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createInvitation<TRes>
    implements CopyWith_Variables_Mutation_createInvitation<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createInvitation(this._res);

  TRes _res;

  call({Input_CreateInvitationInput? input}) => _res;
}

class Mutation_createInvitation {
  Mutation_createInvitation({
    this.createInvitation,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createInvitation.fromJson(Map<String, dynamic> json) {
    final l$createInvitation = json['createInvitation'];
    final l$$__typename = json['__typename'];
    return Mutation_createInvitation(
      createInvitation: l$createInvitation == null
          ? null
          : Mutation_createInvitation_createInvitation.fromJson(
              (l$createInvitation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createInvitation_createInvitation? createInvitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createInvitation = createInvitation;
    _resultData['createInvitation'] = l$createInvitation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createInvitation = createInvitation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createInvitation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createInvitation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createInvitation = createInvitation;
    final lOther$createInvitation = other.createInvitation;
    if (l$createInvitation != lOther$createInvitation) {
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

extension UtilityExtension_Mutation_createInvitation
    on Mutation_createInvitation {
  CopyWith_Mutation_createInvitation<Mutation_createInvitation> get copyWith =>
      CopyWith_Mutation_createInvitation(this, (i) => i);
}

abstract class CopyWith_Mutation_createInvitation<TRes> {
  factory CopyWith_Mutation_createInvitation(
    Mutation_createInvitation instance,
    TRes Function(Mutation_createInvitation) then,
  ) = _CopyWithImpl_Mutation_createInvitation;

  factory CopyWith_Mutation_createInvitation.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createInvitation;

  TRes call({
    Mutation_createInvitation_createInvitation? createInvitation,
    String? $__typename,
  });
  CopyWith_Mutation_createInvitation_createInvitation<TRes>
  get createInvitation;
}

class _CopyWithImpl_Mutation_createInvitation<TRes>
    implements CopyWith_Mutation_createInvitation<TRes> {
  _CopyWithImpl_Mutation_createInvitation(this._instance, this._then);

  final Mutation_createInvitation _instance;

  final TRes Function(Mutation_createInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createInvitation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createInvitation(
      createInvitation: createInvitation == _undefined
          ? _instance.createInvitation
          : (createInvitation as Mutation_createInvitation_createInvitation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createInvitation_createInvitation<TRes>
  get createInvitation {
    final local$createInvitation = _instance.createInvitation;
    return local$createInvitation == null
        ? CopyWith_Mutation_createInvitation_createInvitation.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createInvitation_createInvitation(
            local$createInvitation,
            (e) => call(createInvitation: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createInvitation<TRes>
    implements CopyWith_Mutation_createInvitation<TRes> {
  _CopyWithStubImpl_Mutation_createInvitation(this._res);

  TRes _res;

  call({
    Mutation_createInvitation_createInvitation? createInvitation,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createInvitation_createInvitation<TRes>
  get createInvitation =>
      CopyWith_Mutation_createInvitation_createInvitation.stub(_res);
}

const documentNodeMutationcreateInvitation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createInvitation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateInvitationInput'),
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
            name: NameNode(value: 'createInvitation'),
            alias: null,
            arguments: [
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
                        name: NameNode(value: 'Invitation'),
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
    fragmentDefinitionInvitation,
  ],
);

class Mutation_createInvitation_createInvitation {
  Mutation_createInvitation_createInvitation({
    this.result,
    this.$__typename = 'CreateInvitationResult',
  });

  factory Mutation_createInvitation_createInvitation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createInvitation_createInvitation(
      result: l$result == null
          ? null
          : Fragment_Invitation.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Invitation? result;

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
    if (other is! Mutation_createInvitation_createInvitation ||
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

extension UtilityExtension_Mutation_createInvitation_createInvitation
    on Mutation_createInvitation_createInvitation {
  CopyWith_Mutation_createInvitation_createInvitation<
    Mutation_createInvitation_createInvitation
  >
  get copyWith =>
      CopyWith_Mutation_createInvitation_createInvitation(this, (i) => i);
}

abstract class CopyWith_Mutation_createInvitation_createInvitation<TRes> {
  factory CopyWith_Mutation_createInvitation_createInvitation(
    Mutation_createInvitation_createInvitation instance,
    TRes Function(Mutation_createInvitation_createInvitation) then,
  ) = _CopyWithImpl_Mutation_createInvitation_createInvitation;

  factory CopyWith_Mutation_createInvitation_createInvitation.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createInvitation_createInvitation;

  TRes call({Fragment_Invitation? result, String? $__typename});
  CopyWith_Fragment_Invitation<TRes> get result;
}

class _CopyWithImpl_Mutation_createInvitation_createInvitation<TRes>
    implements CopyWith_Mutation_createInvitation_createInvitation<TRes> {
  _CopyWithImpl_Mutation_createInvitation_createInvitation(
    this._instance,
    this._then,
  );

  final Mutation_createInvitation_createInvitation _instance;

  final TRes Function(Mutation_createInvitation_createInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createInvitation_createInvitation(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Invitation?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Invitation<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createInvitation_createInvitation<TRes>
    implements CopyWith_Mutation_createInvitation_createInvitation<TRes> {
  _CopyWithStubImpl_Mutation_createInvitation_createInvitation(this._res);

  TRes _res;

  call({Fragment_Invitation? result, String? $__typename}) => _res;

  CopyWith_Fragment_Invitation<TRes> get result =>
      CopyWith_Fragment_Invitation.stub(_res);
}

class Variables_Mutation_updateInvitationExpiry {
  factory Variables_Mutation_updateInvitationExpiry({
    required String id,
    Input_UpdateInvitationExpiryInput? input,
  }) => Variables_Mutation_updateInvitationExpiry._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateInvitationExpiry._(this._$data);

  factory Variables_Mutation_updateInvitationExpiry.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateInvitationExpiryInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateInvitationExpiry._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateInvitationExpiryInput? get input =>
      (_$data['input'] as Input_UpdateInvitationExpiryInput?);

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

  CopyWith_Variables_Mutation_updateInvitationExpiry<
    Variables_Mutation_updateInvitationExpiry
  >
  get copyWith =>
      CopyWith_Variables_Mutation_updateInvitationExpiry(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateInvitationExpiry ||
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

abstract class CopyWith_Variables_Mutation_updateInvitationExpiry<TRes> {
  factory CopyWith_Variables_Mutation_updateInvitationExpiry(
    Variables_Mutation_updateInvitationExpiry instance,
    TRes Function(Variables_Mutation_updateInvitationExpiry) then,
  ) = _CopyWithImpl_Variables_Mutation_updateInvitationExpiry;

  factory CopyWith_Variables_Mutation_updateInvitationExpiry.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateInvitationExpiry;

  TRes call({String? id, Input_UpdateInvitationExpiryInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Variables_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithImpl_Variables_Mutation_updateInvitationExpiry(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateInvitationExpiry _instance;

  final TRes Function(Variables_Mutation_updateInvitationExpiry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateInvitationExpiry._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined)
        'input': (input as Input_UpdateInvitationExpiryInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Variables_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateInvitationExpiry(this._res);

  TRes _res;

  call({String? id, Input_UpdateInvitationExpiryInput? input}) => _res;
}

class Mutation_updateInvitationExpiry {
  Mutation_updateInvitationExpiry({
    this.updateInvitationExpiry,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateInvitationExpiry.fromJson(Map<String, dynamic> json) {
    final l$updateInvitationExpiry = json['updateInvitationExpiry'];
    final l$$__typename = json['__typename'];
    return Mutation_updateInvitationExpiry(
      updateInvitationExpiry: l$updateInvitationExpiry == null
          ? null
          : Mutation_updateInvitationExpiry_updateInvitationExpiry.fromJson(
              (l$updateInvitationExpiry as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateInvitationExpiry_updateInvitationExpiry?
  updateInvitationExpiry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInvitationExpiry = updateInvitationExpiry;
    _resultData['updateInvitationExpiry'] = l$updateInvitationExpiry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInvitationExpiry = updateInvitationExpiry;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateInvitationExpiry, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateInvitationExpiry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInvitationExpiry = updateInvitationExpiry;
    final lOther$updateInvitationExpiry = other.updateInvitationExpiry;
    if (l$updateInvitationExpiry != lOther$updateInvitationExpiry) {
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

extension UtilityExtension_Mutation_updateInvitationExpiry
    on Mutation_updateInvitationExpiry {
  CopyWith_Mutation_updateInvitationExpiry<Mutation_updateInvitationExpiry>
  get copyWith => CopyWith_Mutation_updateInvitationExpiry(this, (i) => i);
}

abstract class CopyWith_Mutation_updateInvitationExpiry<TRes> {
  factory CopyWith_Mutation_updateInvitationExpiry(
    Mutation_updateInvitationExpiry instance,
    TRes Function(Mutation_updateInvitationExpiry) then,
  ) = _CopyWithImpl_Mutation_updateInvitationExpiry;

  factory CopyWith_Mutation_updateInvitationExpiry.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateInvitationExpiry;

  TRes call({
    Mutation_updateInvitationExpiry_updateInvitationExpiry?
    updateInvitationExpiry,
    String? $__typename,
  });
  CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<TRes>
  get updateInvitationExpiry;
}

class _CopyWithImpl_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithImpl_Mutation_updateInvitationExpiry(this._instance, this._then);

  final Mutation_updateInvitationExpiry _instance;

  final TRes Function(Mutation_updateInvitationExpiry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInvitationExpiry = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateInvitationExpiry(
      updateInvitationExpiry: updateInvitationExpiry == _undefined
          ? _instance.updateInvitationExpiry
          : (updateInvitationExpiry
                as Mutation_updateInvitationExpiry_updateInvitationExpiry?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<TRes>
  get updateInvitationExpiry {
    final local$updateInvitationExpiry = _instance.updateInvitationExpiry;
    return local$updateInvitationExpiry == null
        ? CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry(
            local$updateInvitationExpiry,
            (e) => call(updateInvitationExpiry: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithStubImpl_Mutation_updateInvitationExpiry(this._res);

  TRes _res;

  call({
    Mutation_updateInvitationExpiry_updateInvitationExpiry?
    updateInvitationExpiry,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<TRes>
  get updateInvitationExpiry =>
      CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry.stub(
        _res,
      );
}

const documentNodeMutationupdateInvitationExpiry = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateInvitationExpiry'),
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
            name: NameNode(value: 'UpdateInvitationExpiryInput'),
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
            name: NameNode(value: 'updateInvitationExpiry'),
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
                        name: NameNode(value: 'Invitation'),
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
    fragmentDefinitionInvitation,
  ],
);

class Mutation_updateInvitationExpiry_updateInvitationExpiry {
  Mutation_updateInvitationExpiry_updateInvitationExpiry({
    this.result,
    this.$__typename = 'UpdateInvitationExpiryResult',
  });

  factory Mutation_updateInvitationExpiry_updateInvitationExpiry.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateInvitationExpiry_updateInvitationExpiry(
      result: l$result == null
          ? null
          : Fragment_Invitation.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Invitation? result;

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
    if (other is! Mutation_updateInvitationExpiry_updateInvitationExpiry ||
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

extension UtilityExtension_Mutation_updateInvitationExpiry_updateInvitationExpiry
    on Mutation_updateInvitationExpiry_updateInvitationExpiry {
  CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<
    Mutation_updateInvitationExpiry_updateInvitationExpiry
  >
  get copyWith =>
      CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<
  TRes
> {
  factory CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry(
    Mutation_updateInvitationExpiry_updateInvitationExpiry instance,
    TRes Function(Mutation_updateInvitationExpiry_updateInvitationExpiry) then,
  ) = _CopyWithImpl_Mutation_updateInvitationExpiry_updateInvitationExpiry;

  factory CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateInvitationExpiry_updateInvitationExpiry;

  TRes call({Fragment_Invitation? result, String? $__typename});
  CopyWith_Fragment_Invitation<TRes> get result;
}

class _CopyWithImpl_Mutation_updateInvitationExpiry_updateInvitationExpiry<TRes>
    implements
        CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<TRes> {
  _CopyWithImpl_Mutation_updateInvitationExpiry_updateInvitationExpiry(
    this._instance,
    this._then,
  );

  final Mutation_updateInvitationExpiry_updateInvitationExpiry _instance;

  final TRes Function(Mutation_updateInvitationExpiry_updateInvitationExpiry)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateInvitationExpiry_updateInvitationExpiry(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Invitation?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Invitation<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateInvitationExpiry_updateInvitationExpiry<
  TRes
>
    implements
        CopyWith_Mutation_updateInvitationExpiry_updateInvitationExpiry<TRes> {
  _CopyWithStubImpl_Mutation_updateInvitationExpiry_updateInvitationExpiry(
    this._res,
  );

  TRes _res;

  call({Fragment_Invitation? result, String? $__typename}) => _res;

  CopyWith_Fragment_Invitation<TRes> get result =>
      CopyWith_Fragment_Invitation.stub(_res);
}
