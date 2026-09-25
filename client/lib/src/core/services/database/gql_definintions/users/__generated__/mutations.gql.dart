import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_updateUser {
  factory Variables_Mutation_updateUser({
    required UuidValue uid,
    required Input_AuthUsersDataSetInput $set,
    required bool updateUser,
    UuidValue? linkPersonId,
    required bool linkPerson,
    UuidValue? unlinkPersonId,
    required bool unlinkPerson,
  }) => Variables_Mutation_updateUser._({
    r'uid': uid,
    r'set': $set,
    r'updateUser': updateUser,
    if (linkPersonId != null) r'linkPersonId': linkPersonId,
    r'linkPerson': linkPerson,
    if (unlinkPersonId != null) r'unlinkPersonId': unlinkPersonId,
    r'unlinkPerson': unlinkPerson,
  });

  Variables_Mutation_updateUser._(this._$data);

  factory Variables_Mutation_updateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    final l$$set = data['set'];
    result$data['set'] = Input_AuthUsersDataSetInput.fromJson(
      (l$$set as Map<String, dynamic>),
    );
    final l$updateUser = data['updateUser'];
    result$data['updateUser'] = (l$updateUser as bool);
    if (data.containsKey('linkPersonId')) {
      final l$linkPersonId = data['linkPersonId'];
      result$data['linkPersonId'] = l$linkPersonId == null
          ? null
          : stringToUuid(l$linkPersonId);
    }
    final l$linkPerson = data['linkPerson'];
    result$data['linkPerson'] = (l$linkPerson as bool);
    if (data.containsKey('unlinkPersonId')) {
      final l$unlinkPersonId = data['unlinkPersonId'];
      result$data['unlinkPersonId'] = l$unlinkPersonId == null
          ? null
          : stringToUuid(l$unlinkPersonId);
    }
    final l$unlinkPerson = data['unlinkPerson'];
    result$data['unlinkPerson'] = (l$unlinkPerson as bool);
    return Variables_Mutation_updateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  Input_AuthUsersDataSetInput get $set =>
      (_$data['set'] as Input_AuthUsersDataSetInput);

  bool get updateUser => (_$data['updateUser'] as bool);

  UuidValue? get linkPersonId => (_$data['linkPersonId'] as UuidValue?);

  bool get linkPerson => (_$data['linkPerson'] as bool);

  UuidValue? get unlinkPersonId => (_$data['unlinkPersonId'] as UuidValue?);

  bool get unlinkPerson => (_$data['unlinkPerson'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    final l$$set = $set;
    result$data['set'] = l$$set.toJson();
    final l$updateUser = updateUser;
    result$data['updateUser'] = l$updateUser;
    if (_$data.containsKey('linkPersonId')) {
      final l$linkPersonId = linkPersonId;
      result$data['linkPersonId'] = l$linkPersonId == null
          ? null
          : uuidToString(l$linkPersonId);
    }
    final l$linkPerson = linkPerson;
    result$data['linkPerson'] = l$linkPerson;
    if (_$data.containsKey('unlinkPersonId')) {
      final l$unlinkPersonId = unlinkPersonId;
      result$data['unlinkPersonId'] = l$unlinkPersonId == null
          ? null
          : uuidToString(l$unlinkPersonId);
    }
    final l$unlinkPerson = unlinkPerson;
    result$data['unlinkPerson'] = l$unlinkPerson;
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
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
      return false;
    }
    final l$linkPersonId = linkPersonId;
    final lOther$linkPersonId = other.linkPersonId;
    if (_$data.containsKey('linkPersonId') !=
        other._$data.containsKey('linkPersonId')) {
      return false;
    }
    if (l$linkPersonId != lOther$linkPersonId) {
      return false;
    }
    final l$linkPerson = linkPerson;
    final lOther$linkPerson = other.linkPerson;
    if (l$linkPerson != lOther$linkPerson) {
      return false;
    }
    final l$unlinkPersonId = unlinkPersonId;
    final lOther$unlinkPersonId = other.unlinkPersonId;
    if (_$data.containsKey('unlinkPersonId') !=
        other._$data.containsKey('unlinkPersonId')) {
      return false;
    }
    if (l$unlinkPersonId != lOther$unlinkPersonId) {
      return false;
    }
    final l$unlinkPerson = unlinkPerson;
    final lOther$unlinkPerson = other.unlinkPerson;
    if (l$unlinkPerson != lOther$unlinkPerson) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$$set = $set;
    final l$updateUser = updateUser;
    final l$linkPersonId = linkPersonId;
    final l$linkPerson = linkPerson;
    final l$unlinkPersonId = unlinkPersonId;
    final l$unlinkPerson = unlinkPerson;
    return Object.hashAll([
      l$uid,
      l$$set,
      l$updateUser,
      _$data.containsKey('linkPersonId') ? l$linkPersonId : const {},
      l$linkPerson,
      _$data.containsKey('unlinkPersonId') ? l$unlinkPersonId : const {},
      l$unlinkPerson,
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

  TRes call({
    UuidValue? uid,
    Input_AuthUsersDataSetInput? $set,
    bool? updateUser,
    UuidValue? linkPersonId,
    bool? linkPerson,
    UuidValue? unlinkPersonId,
    bool? unlinkPerson,
  });
}

class _CopyWithImpl_Variables_Mutation_updateUser<TRes>
    implements CopyWith_Variables_Mutation_updateUser<TRes> {
  _CopyWithImpl_Variables_Mutation_updateUser(this._instance, this._then);

  final Variables_Mutation_updateUser _instance;

  final TRes Function(Variables_Mutation_updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? $set = _undefined,
    Object? updateUser = _undefined,
    Object? linkPersonId = _undefined,
    Object? linkPerson = _undefined,
    Object? unlinkPersonId = _undefined,
    Object? unlinkPerson = _undefined,
  }) => _then(
    Variables_Mutation_updateUser._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if ($set != _undefined && $set != null)
        'set': ($set as Input_AuthUsersDataSetInput),
      if (updateUser != _undefined && updateUser != null)
        'updateUser': (updateUser as bool),
      if (linkPersonId != _undefined)
        'linkPersonId': (linkPersonId as UuidValue?),
      if (linkPerson != _undefined && linkPerson != null)
        'linkPerson': (linkPerson as bool),
      if (unlinkPersonId != _undefined)
        'unlinkPersonId': (unlinkPersonId as UuidValue?),
      if (unlinkPerson != _undefined && unlinkPerson != null)
        'unlinkPerson': (unlinkPerson as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateUser<TRes>
    implements CopyWith_Variables_Mutation_updateUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateUser(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    Input_AuthUsersDataSetInput? $set,
    bool? updateUser,
    UuidValue? linkPersonId,
    bool? linkPerson,
    UuidValue? unlinkPersonId,
    bool? unlinkPerson,
  }) => _res;
}

class Mutation_updateUser {
  Mutation_updateUser({
    this.updateAuthUsersDataByPk,
    this.unlink,
    this.link,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateUser.fromJson(Map<String, dynamic> json) {
    final l$updateAuthUsersDataByPk = json['updateAuthUsersDataByPk'];
    final l$unlink = json['unlink'];
    final l$link = json['link'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUser(
      updateAuthUsersDataByPk: l$updateAuthUsersDataByPk == null
          ? null
          : Mutation_updateUser_updateAuthUsersDataByPk.fromJson(
              (l$updateAuthUsersDataByPk as Map<String, dynamic>),
            ),
      unlink: l$unlink == null
          ? null
          : Mutation_updateUser_unlink.fromJson(
              (l$unlink as Map<String, dynamic>),
            ),
      link: l$link == null
          ? null
          : Mutation_updateUser_link.fromJson((l$link as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateUser_updateAuthUsersDataByPk? updateAuthUsersDataByPk;

  final Mutation_updateUser_unlink? unlink;

  final Mutation_updateUser_link? link;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAuthUsersDataByPk = updateAuthUsersDataByPk;
    _resultData['updateAuthUsersDataByPk'] = l$updateAuthUsersDataByPk
        ?.toJson();
    final l$unlink = unlink;
    _resultData['unlink'] = l$unlink?.toJson();
    final l$link = link;
    _resultData['link'] = l$link?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAuthUsersDataByPk = updateAuthUsersDataByPk;
    final l$unlink = unlink;
    final l$link = link;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAuthUsersDataByPk,
      l$unlink,
      l$link,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAuthUsersDataByPk = updateAuthUsersDataByPk;
    final lOther$updateAuthUsersDataByPk = other.updateAuthUsersDataByPk;
    if (l$updateAuthUsersDataByPk != lOther$updateAuthUsersDataByPk) {
      return false;
    }
    final l$unlink = unlink;
    final lOther$unlink = other.unlink;
    if (l$unlink != lOther$unlink) {
      return false;
    }
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) {
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

  TRes call({
    Mutation_updateUser_updateAuthUsersDataByPk? updateAuthUsersDataByPk,
    Mutation_updateUser_unlink? unlink,
    Mutation_updateUser_link? link,
    String? $__typename,
  });
  CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<TRes>
  get updateAuthUsersDataByPk;
  CopyWith_Mutation_updateUser_unlink<TRes> get unlink;
  CopyWith_Mutation_updateUser_link<TRes> get link;
}

class _CopyWithImpl_Mutation_updateUser<TRes>
    implements CopyWith_Mutation_updateUser<TRes> {
  _CopyWithImpl_Mutation_updateUser(this._instance, this._then);

  final Mutation_updateUser _instance;

  final TRes Function(Mutation_updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAuthUsersDataByPk = _undefined,
    Object? unlink = _undefined,
    Object? link = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUser(
      updateAuthUsersDataByPk: updateAuthUsersDataByPk == _undefined
          ? _instance.updateAuthUsersDataByPk
          : (updateAuthUsersDataByPk
                as Mutation_updateUser_updateAuthUsersDataByPk?),
      unlink: unlink == _undefined
          ? _instance.unlink
          : (unlink as Mutation_updateUser_unlink?),
      link: link == _undefined
          ? _instance.link
          : (link as Mutation_updateUser_link?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<TRes>
  get updateAuthUsersDataByPk {
    final local$updateAuthUsersDataByPk = _instance.updateAuthUsersDataByPk;
    return local$updateAuthUsersDataByPk == null
        ? CopyWith_Mutation_updateUser_updateAuthUsersDataByPk.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateUser_updateAuthUsersDataByPk(
            local$updateAuthUsersDataByPk,
            (e) => call(updateAuthUsersDataByPk: e),
          );
  }

  CopyWith_Mutation_updateUser_unlink<TRes> get unlink {
    final local$unlink = _instance.unlink;
    return local$unlink == null
        ? CopyWith_Mutation_updateUser_unlink.stub(_then(_instance))
        : CopyWith_Mutation_updateUser_unlink(
            local$unlink,
            (e) => call(unlink: e),
          );
  }

  CopyWith_Mutation_updateUser_link<TRes> get link {
    final local$link = _instance.link;
    return local$link == null
        ? CopyWith_Mutation_updateUser_link.stub(_then(_instance))
        : CopyWith_Mutation_updateUser_link(local$link, (e) => call(link: e));
  }
}

class _CopyWithStubImpl_Mutation_updateUser<TRes>
    implements CopyWith_Mutation_updateUser<TRes> {
  _CopyWithStubImpl_Mutation_updateUser(this._res);

  TRes _res;

  call({
    Mutation_updateUser_updateAuthUsersDataByPk? updateAuthUsersDataByPk,
    Mutation_updateUser_unlink? unlink,
    Mutation_updateUser_link? link,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<TRes>
  get updateAuthUsersDataByPk =>
      CopyWith_Mutation_updateUser_updateAuthUsersDataByPk.stub(_res);

  CopyWith_Mutation_updateUser_unlink<TRes> get unlink =>
      CopyWith_Mutation_updateUser_unlink.stub(_res);

  CopyWith_Mutation_updateUser_link<TRes> get link =>
      CopyWith_Mutation_updateUser_link.stub(_res);
}

const documentNodeMutationupdateUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'set')),
          type: NamedTypeNode(
            name: NameNode(value: 'AuthUsersDataSetInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updateUser')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'linkPersonId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'linkPerson')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'unlinkPersonId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'unlinkPerson')),
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
            name: NameNode(value: 'updateAuthUsersDataByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'uid'),
                      value: VariableNode(name: NameNode(value: 'uid')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'set')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'updateUser')),
                  ),
                ],
              ),
            ],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'uid'),
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
            name: NameNode(value: 'updatePersons'),
            alias: NameNode(value: 'unlink'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'id'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                        name: NameNode(value: 'unlinkPersonId'),
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
                                name: NameNode(value: 'uid'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                        name: NameNode(value: 'uid'),
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
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'uid'),
                      value: NullValueNode(),
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
                    value: VariableNode(name: NameNode(value: 'unlinkPerson')),
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
            name: NameNode(value: 'updatePersons'),
            alias: NameNode(value: 'link'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'id'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                        name: NameNode(value: 'linkPersonId'),
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
                                name: NameNode(value: 'uid'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_isNull'),
                                      value: BooleanValueNode(value: true),
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
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'uid'),
                      value: VariableNode(name: NameNode(value: 'uid')),
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
                    value: VariableNode(name: NameNode(value: 'linkPerson')),
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

class Mutation_updateUser_updateAuthUsersDataByPk {
  Mutation_updateUser_updateAuthUsersDataByPk({
    required this.uid,
    this.$__typename = 'AuthUsersData',
  });

  factory Mutation_updateUser_updateAuthUsersDataByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uid = json['uid'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUser_updateAuthUsersDataByPk(
      uid: stringToUuid(l$uid),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUser_updateAuthUsersDataByPk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
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

extension UtilityExtension_Mutation_updateUser_updateAuthUsersDataByPk
    on Mutation_updateUser_updateAuthUsersDataByPk {
  CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<
    Mutation_updateUser_updateAuthUsersDataByPk
  >
  get copyWith =>
      CopyWith_Mutation_updateUser_updateAuthUsersDataByPk(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<TRes> {
  factory CopyWith_Mutation_updateUser_updateAuthUsersDataByPk(
    Mutation_updateUser_updateAuthUsersDataByPk instance,
    TRes Function(Mutation_updateUser_updateAuthUsersDataByPk) then,
  ) = _CopyWithImpl_Mutation_updateUser_updateAuthUsersDataByPk;

  factory CopyWith_Mutation_updateUser_updateAuthUsersDataByPk.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUser_updateAuthUsersDataByPk;

  TRes call({UuidValue? uid, String? $__typename});
}

class _CopyWithImpl_Mutation_updateUser_updateAuthUsersDataByPk<TRes>
    implements CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<TRes> {
  _CopyWithImpl_Mutation_updateUser_updateAuthUsersDataByPk(
    this._instance,
    this._then,
  );

  final Mutation_updateUser_updateAuthUsersDataByPk _instance;

  final TRes Function(Mutation_updateUser_updateAuthUsersDataByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateUser_updateAuthUsersDataByPk(
          uid: uid == _undefined || uid == null
              ? _instance.uid
              : (uid as UuidValue),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_updateUser_updateAuthUsersDataByPk<TRes>
    implements CopyWith_Mutation_updateUser_updateAuthUsersDataByPk<TRes> {
  _CopyWithStubImpl_Mutation_updateUser_updateAuthUsersDataByPk(this._res);

  TRes _res;

  call({UuidValue? uid, String? $__typename}) => _res;
}

class Mutation_updateUser_unlink {
  Mutation_updateUser_unlink({
    required this.affectedRows,
    this.$__typename = 'PersonsMutationResponse',
  });

  factory Mutation_updateUser_unlink.fromJson(Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUser_unlink(
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
    if (other is! Mutation_updateUser_unlink ||
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

extension UtilityExtension_Mutation_updateUser_unlink
    on Mutation_updateUser_unlink {
  CopyWith_Mutation_updateUser_unlink<Mutation_updateUser_unlink>
  get copyWith => CopyWith_Mutation_updateUser_unlink(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUser_unlink<TRes> {
  factory CopyWith_Mutation_updateUser_unlink(
    Mutation_updateUser_unlink instance,
    TRes Function(Mutation_updateUser_unlink) then,
  ) = _CopyWithImpl_Mutation_updateUser_unlink;

  factory CopyWith_Mutation_updateUser_unlink.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUser_unlink;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateUser_unlink<TRes>
    implements CopyWith_Mutation_updateUser_unlink<TRes> {
  _CopyWithImpl_Mutation_updateUser_unlink(this._instance, this._then);

  final Mutation_updateUser_unlink _instance;

  final TRes Function(Mutation_updateUser_unlink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUser_unlink(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateUser_unlink<TRes>
    implements CopyWith_Mutation_updateUser_unlink<TRes> {
  _CopyWithStubImpl_Mutation_updateUser_unlink(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateUser_link {
  Mutation_updateUser_link({
    required this.affectedRows,
    this.$__typename = 'PersonsMutationResponse',
  });

  factory Mutation_updateUser_link.fromJson(Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUser_link(
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
    if (other is! Mutation_updateUser_link ||
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

extension UtilityExtension_Mutation_updateUser_link
    on Mutation_updateUser_link {
  CopyWith_Mutation_updateUser_link<Mutation_updateUser_link> get copyWith =>
      CopyWith_Mutation_updateUser_link(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUser_link<TRes> {
  factory CopyWith_Mutation_updateUser_link(
    Mutation_updateUser_link instance,
    TRes Function(Mutation_updateUser_link) then,
  ) = _CopyWithImpl_Mutation_updateUser_link;

  factory CopyWith_Mutation_updateUser_link.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUser_link;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateUser_link<TRes>
    implements CopyWith_Mutation_updateUser_link<TRes> {
  _CopyWithImpl_Mutation_updateUser_link(this._instance, this._then);

  final Mutation_updateUser_link _instance;

  final TRes Function(Mutation_updateUser_link) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUser_link(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateUser_link<TRes>
    implements CopyWith_Mutation_updateUser_link<TRes> {
  _CopyWithStubImpl_Mutation_updateUser_link(this._res);

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
