import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_ownPhoneContacts {
  factory Variables_Query_ownPhoneContacts({required UuidValue personId}) =>
      Variables_Query_ownPhoneContacts._({r'personId': personId});

  Variables_Query_ownPhoneContacts._(this._$data);

  factory Variables_Query_ownPhoneContacts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    return Variables_Query_ownPhoneContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    return result$data;
  }

  CopyWith_Variables_Query_ownPhoneContacts<Variables_Query_ownPhoneContacts>
  get copyWith => CopyWith_Variables_Query_ownPhoneContacts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_ownPhoneContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    return Object.hashAll([l$personId]);
  }
}

abstract class CopyWith_Variables_Query_ownPhoneContacts<TRes> {
  factory CopyWith_Variables_Query_ownPhoneContacts(
    Variables_Query_ownPhoneContacts instance,
    TRes Function(Variables_Query_ownPhoneContacts) then,
  ) = _CopyWithImpl_Variables_Query_ownPhoneContacts;

  factory CopyWith_Variables_Query_ownPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_ownPhoneContacts;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl_Variables_Query_ownPhoneContacts<TRes>
    implements CopyWith_Variables_Query_ownPhoneContacts<TRes> {
  _CopyWithImpl_Variables_Query_ownPhoneContacts(this._instance, this._then);

  final Variables_Query_ownPhoneContacts _instance;

  final TRes Function(Variables_Query_ownPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined}) => _then(
    Variables_Query_ownPhoneContacts._({
      ..._instance._$data,
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_ownPhoneContacts<TRes>
    implements CopyWith_Variables_Query_ownPhoneContacts<TRes> {
  _CopyWithStubImpl_Variables_Query_ownPhoneContacts(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Query_ownPhoneContacts {
  Query_ownPhoneContacts({required this.contacts});

  factory Query_ownPhoneContacts.fromJson(Map<String, dynamic> json) {
    final l$contacts = json['contacts'];
    return Query_ownPhoneContacts(
      contacts: (l$contacts as List<dynamic>)
          .map(
            (e) => Fragment_PhoneContact.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
    );
  }

  final List<Fragment_PhoneContact> contacts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contacts = contacts;
    return Object.hashAll([Object.hashAll(l$contacts.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_ownPhoneContacts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (l$contacts.length != lOther$contacts.length) {
      return false;
    }
    for (int i = 0; i < l$contacts.length; i++) {
      final l$contacts$entry = l$contacts[i];
      final lOther$contacts$entry = lOther$contacts[i];
      if (l$contacts$entry != lOther$contacts$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_ownPhoneContacts on Query_ownPhoneContacts {
  CopyWith_Query_ownPhoneContacts<Query_ownPhoneContacts> get copyWith =>
      CopyWith_Query_ownPhoneContacts(this, (i) => i);
}

abstract class CopyWith_Query_ownPhoneContacts<TRes> {
  factory CopyWith_Query_ownPhoneContacts(
    Query_ownPhoneContacts instance,
    TRes Function(Query_ownPhoneContacts) then,
  ) = _CopyWithImpl_Query_ownPhoneContacts;

  factory CopyWith_Query_ownPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Query_ownPhoneContacts;

  TRes call({List<Fragment_PhoneContact>? contacts});
  TRes contacts(
    Iterable<Fragment_PhoneContact> Function(
      Iterable<CopyWith_Fragment_PhoneContact<Fragment_PhoneContact>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_ownPhoneContacts<TRes>
    implements CopyWith_Query_ownPhoneContacts<TRes> {
  _CopyWithImpl_Query_ownPhoneContacts(this._instance, this._then);

  final Query_ownPhoneContacts _instance;

  final TRes Function(Query_ownPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? contacts = _undefined}) => _then(
    Query_ownPhoneContacts(
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts as List<Fragment_PhoneContact>),
    ),
  );

  TRes contacts(
    Iterable<Fragment_PhoneContact> Function(
      Iterable<CopyWith_Fragment_PhoneContact<Fragment_PhoneContact>>,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map(
        (e) => CopyWith_Fragment_PhoneContact(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_ownPhoneContacts<TRes>
    implements CopyWith_Query_ownPhoneContacts<TRes> {
  _CopyWithStubImpl_Query_ownPhoneContacts(this._res);

  TRes _res;

  call({List<Fragment_PhoneContact>? contacts}) => _res;

  contacts(_fn) => _res;
}

const documentNodeQueryownPhoneContacts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ownPhoneContacts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'contacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'personId'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'isMainPhone'),
                          value: EnumValueNode(name: NameNode(value: 'DESC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'createdAt'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'PhoneContact'),
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
    fragmentDefinitionPhoneContact,
  ],
);

class Variables_Query_familyPhoneContacts {
  factory Variables_Query_familyPhoneContacts({required UuidValue familyId}) =>
      Variables_Query_familyPhoneContacts._({r'familyId': familyId});

  Variables_Query_familyPhoneContacts._(this._$data);

  factory Variables_Query_familyPhoneContacts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables_Query_familyPhoneContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Variables_Query_familyPhoneContacts<
    Variables_Query_familyPhoneContacts
  >
  get copyWith => CopyWith_Variables_Query_familyPhoneContacts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_familyPhoneContacts ||
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

abstract class CopyWith_Variables_Query_familyPhoneContacts<TRes> {
  factory CopyWith_Variables_Query_familyPhoneContacts(
    Variables_Query_familyPhoneContacts instance,
    TRes Function(Variables_Query_familyPhoneContacts) then,
  ) = _CopyWithImpl_Variables_Query_familyPhoneContacts;

  factory CopyWith_Variables_Query_familyPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_familyPhoneContacts;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Variables_Query_familyPhoneContacts<TRes>
    implements CopyWith_Variables_Query_familyPhoneContacts<TRes> {
  _CopyWithImpl_Variables_Query_familyPhoneContacts(this._instance, this._then);

  final Variables_Query_familyPhoneContacts _instance;

  final TRes Function(Variables_Query_familyPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) => _then(
    Variables_Query_familyPhoneContacts._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_familyPhoneContacts<TRes>
    implements CopyWith_Variables_Query_familyPhoneContacts<TRes> {
  _CopyWithStubImpl_Variables_Query_familyPhoneContacts(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Query_familyPhoneContacts {
  Query_familyPhoneContacts({required this.resolvedContacts});

  factory Query_familyPhoneContacts.fromJson(Map<String, dynamic> json) {
    final l$resolvedContacts = json['resolvedContacts'];
    return Query_familyPhoneContacts(
      resolvedContacts: (l$resolvedContacts as List<dynamic>)
          .map(
            (e) => Fragment_FamilyPhoneContact.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Fragment_FamilyPhoneContact> resolvedContacts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resolvedContacts = resolvedContacts;
    _resultData['resolvedContacts'] = l$resolvedContacts
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resolvedContacts = resolvedContacts;
    return Object.hashAll([Object.hashAll(l$resolvedContacts.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyPhoneContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resolvedContacts = resolvedContacts;
    final lOther$resolvedContacts = other.resolvedContacts;
    if (l$resolvedContacts.length != lOther$resolvedContacts.length) {
      return false;
    }
    for (int i = 0; i < l$resolvedContacts.length; i++) {
      final l$resolvedContacts$entry = l$resolvedContacts[i];
      final lOther$resolvedContacts$entry = lOther$resolvedContacts[i];
      if (l$resolvedContacts$entry != lOther$resolvedContacts$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_familyPhoneContacts
    on Query_familyPhoneContacts {
  CopyWith_Query_familyPhoneContacts<Query_familyPhoneContacts> get copyWith =>
      CopyWith_Query_familyPhoneContacts(this, (i) => i);
}

abstract class CopyWith_Query_familyPhoneContacts<TRes> {
  factory CopyWith_Query_familyPhoneContacts(
    Query_familyPhoneContacts instance,
    TRes Function(Query_familyPhoneContacts) then,
  ) = _CopyWithImpl_Query_familyPhoneContacts;

  factory CopyWith_Query_familyPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Query_familyPhoneContacts;

  TRes call({List<Fragment_FamilyPhoneContact>? resolvedContacts});
  TRes resolvedContacts(
    Iterable<Fragment_FamilyPhoneContact> Function(
      Iterable<
        CopyWith_Fragment_FamilyPhoneContact<Fragment_FamilyPhoneContact>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_familyPhoneContacts<TRes>
    implements CopyWith_Query_familyPhoneContacts<TRes> {
  _CopyWithImpl_Query_familyPhoneContacts(this._instance, this._then);

  final Query_familyPhoneContacts _instance;

  final TRes Function(Query_familyPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? resolvedContacts = _undefined}) => _then(
    Query_familyPhoneContacts(
      resolvedContacts:
          resolvedContacts == _undefined || resolvedContacts == null
          ? _instance.resolvedContacts
          : (resolvedContacts as List<Fragment_FamilyPhoneContact>),
    ),
  );

  TRes resolvedContacts(
    Iterable<Fragment_FamilyPhoneContact> Function(
      Iterable<
        CopyWith_Fragment_FamilyPhoneContact<Fragment_FamilyPhoneContact>
      >,
    )
    _fn,
  ) => call(
    resolvedContacts: _fn(
      _instance.resolvedContacts.map(
        (e) => CopyWith_Fragment_FamilyPhoneContact(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_familyPhoneContacts<TRes>
    implements CopyWith_Query_familyPhoneContacts<TRes> {
  _CopyWithStubImpl_Query_familyPhoneContacts(this._res);

  TRes _res;

  call({List<Fragment_FamilyPhoneContact>? resolvedContacts}) => _res;

  resolvedContacts(_fn) => _res;
}

const documentNodeQueryfamilyPhoneContacts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'familyPhoneContacts'),
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
            name: NameNode(value: 'resolvedContacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'effectiveFamilyId'),
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
                      name: NameNode(value: 'personType'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'isFamilyAdmin'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: '_eq'),
                                  value: BooleanValueNode(value: true),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'personType'),
                          value: ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'order'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'ASC'),
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
                          name: NameNode(value: 'isMainPhone'),
                          value: EnumValueNode(name: NameNode(value: 'DESC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'createdAt'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'FamilyPhoneContact'),
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
    fragmentDefinitionFamilyPhoneContact,
  ],
);

class Query_familyRoles {
  Query_familyRoles({required this.personTypes});

  factory Query_familyRoles.fromJson(Map<String, dynamic> json) {
    final l$personTypes = json['personTypes'];
    return Query_familyRoles(
      personTypes: (l$personTypes as List<dynamic>)
          .map(
            (e) => Query_familyRoles_personTypes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_familyRoles_personTypes> personTypes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personTypes = personTypes;
    _resultData['personTypes'] = l$personTypes.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personTypes = personTypes;
    return Object.hashAll([Object.hashAll(l$personTypes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyRoles || runtimeType != other.runtimeType) {
      return false;
    }
    final l$personTypes = personTypes;
    final lOther$personTypes = other.personTypes;
    if (l$personTypes.length != lOther$personTypes.length) {
      return false;
    }
    for (int i = 0; i < l$personTypes.length; i++) {
      final l$personTypes$entry = l$personTypes[i];
      final lOther$personTypes$entry = lOther$personTypes[i];
      if (l$personTypes$entry != lOther$personTypes$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_familyRoles on Query_familyRoles {
  CopyWith_Query_familyRoles<Query_familyRoles> get copyWith =>
      CopyWith_Query_familyRoles(this, (i) => i);
}

abstract class CopyWith_Query_familyRoles<TRes> {
  factory CopyWith_Query_familyRoles(
    Query_familyRoles instance,
    TRes Function(Query_familyRoles) then,
  ) = _CopyWithImpl_Query_familyRoles;

  factory CopyWith_Query_familyRoles.stub(TRes res) =
      _CopyWithStubImpl_Query_familyRoles;

  TRes call({List<Query_familyRoles_personTypes>? personTypes});
  TRes personTypes(
    Iterable<Query_familyRoles_personTypes> Function(
      Iterable<
        CopyWith_Query_familyRoles_personTypes<Query_familyRoles_personTypes>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_familyRoles<TRes>
    implements CopyWith_Query_familyRoles<TRes> {
  _CopyWithImpl_Query_familyRoles(this._instance, this._then);

  final Query_familyRoles _instance;

  final TRes Function(Query_familyRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personTypes = _undefined}) => _then(
    Query_familyRoles(
      personTypes: personTypes == _undefined || personTypes == null
          ? _instance.personTypes
          : (personTypes as List<Query_familyRoles_personTypes>),
    ),
  );

  TRes personTypes(
    Iterable<Query_familyRoles_personTypes> Function(
      Iterable<
        CopyWith_Query_familyRoles_personTypes<Query_familyRoles_personTypes>
      >,
    )
    _fn,
  ) => call(
    personTypes: _fn(
      _instance.personTypes.map(
        (e) => CopyWith_Query_familyRoles_personTypes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_familyRoles<TRes>
    implements CopyWith_Query_familyRoles<TRes> {
  _CopyWithStubImpl_Query_familyRoles(this._res);

  TRes _res;

  call({List<Query_familyRoles_personTypes>? personTypes}) => _res;

  personTypes(_fn) => _res;
}

const documentNodeQueryfamilyRoles = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'familyRoles'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'personTypes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'isFamilyAdmin'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: BooleanValueNode(value: true),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'order'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isFamilyAdmin'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isHidden'),
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
  ],
);

class Query_familyRoles_personTypes {
  Query_familyRoles_personTypes({
    required this.id,
    required this.name,
    required this.order,
    required this.isFamilyAdmin,
    required this.isHidden,
    this.$__typename = 'PersonTypes',
  });

  factory Query_familyRoles_personTypes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$isFamilyAdmin = json['isFamilyAdmin'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    return Query_familyRoles_personTypes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      isFamilyAdmin: (l$isFamilyAdmin as bool),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final bool isFamilyAdmin;

  final bool isHidden;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isFamilyAdmin = isFamilyAdmin;
    _resultData['isFamilyAdmin'] = l$isFamilyAdmin;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$isFamilyAdmin,
      l$isHidden,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyRoles_personTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
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

extension UtilityExtension_Query_familyRoles_personTypes
    on Query_familyRoles_personTypes {
  CopyWith_Query_familyRoles_personTypes<Query_familyRoles_personTypes>
  get copyWith => CopyWith_Query_familyRoles_personTypes(this, (i) => i);
}

abstract class CopyWith_Query_familyRoles_personTypes<TRes> {
  factory CopyWith_Query_familyRoles_personTypes(
    Query_familyRoles_personTypes instance,
    TRes Function(Query_familyRoles_personTypes) then,
  ) = _CopyWithImpl_Query_familyRoles_personTypes;

  factory CopyWith_Query_familyRoles_personTypes.stub(TRes res) =
      _CopyWithStubImpl_Query_familyRoles_personTypes;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_familyRoles_personTypes<TRes>
    implements CopyWith_Query_familyRoles_personTypes<TRes> {
  _CopyWithImpl_Query_familyRoles_personTypes(this._instance, this._then);

  final Query_familyRoles_personTypes _instance;

  final TRes Function(Query_familyRoles_personTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_familyRoles_personTypes(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      isFamilyAdmin: isFamilyAdmin == _undefined || isFamilyAdmin == null
          ? _instance.isFamilyAdmin
          : (isFamilyAdmin as bool),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_familyRoles_personTypes<TRes>
    implements CopyWith_Query_familyRoles_personTypes<TRes> {
  _CopyWithStubImpl_Query_familyRoles_personTypes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  }) => _res;
}
