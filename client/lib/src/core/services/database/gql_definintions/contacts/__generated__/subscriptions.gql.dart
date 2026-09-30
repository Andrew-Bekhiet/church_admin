import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchOwnPhoneContacts {
  factory Variables_Subscription_watchOwnPhoneContacts({
    required UuidValue personId,
  }) => Variables_Subscription_watchOwnPhoneContacts._({r'personId': personId});

  Variables_Subscription_watchOwnPhoneContacts._(this._$data);

  factory Variables_Subscription_watchOwnPhoneContacts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    return Variables_Subscription_watchOwnPhoneContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchOwnPhoneContacts<
    Variables_Subscription_watchOwnPhoneContacts
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchOwnPhoneContacts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchOwnPhoneContacts ||
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

abstract class CopyWith_Variables_Subscription_watchOwnPhoneContacts<TRes> {
  factory CopyWith_Variables_Subscription_watchOwnPhoneContacts(
    Variables_Subscription_watchOwnPhoneContacts instance,
    TRes Function(Variables_Subscription_watchOwnPhoneContacts) then,
  ) = _CopyWithImpl_Variables_Subscription_watchOwnPhoneContacts;

  factory CopyWith_Variables_Subscription_watchOwnPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchOwnPhoneContacts;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl_Variables_Subscription_watchOwnPhoneContacts<TRes>
    implements CopyWith_Variables_Subscription_watchOwnPhoneContacts<TRes> {
  _CopyWithImpl_Variables_Subscription_watchOwnPhoneContacts(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchOwnPhoneContacts _instance;

  final TRes Function(Variables_Subscription_watchOwnPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined}) => _then(
    Variables_Subscription_watchOwnPhoneContacts._({
      ..._instance._$data,
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchOwnPhoneContacts<TRes>
    implements CopyWith_Variables_Subscription_watchOwnPhoneContacts<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchOwnPhoneContacts(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Subscription_watchOwnPhoneContacts {
  Subscription_watchOwnPhoneContacts({required this.contacts});

  factory Subscription_watchOwnPhoneContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$contacts = json['contacts'];
    return Subscription_watchOwnPhoneContacts(
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
    if (other is! Subscription_watchOwnPhoneContacts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Subscription_watchOwnPhoneContacts
    on Subscription_watchOwnPhoneContacts {
  CopyWith_Subscription_watchOwnPhoneContacts<
    Subscription_watchOwnPhoneContacts
  >
  get copyWith => CopyWith_Subscription_watchOwnPhoneContacts(this, (i) => i);
}

abstract class CopyWith_Subscription_watchOwnPhoneContacts<TRes> {
  factory CopyWith_Subscription_watchOwnPhoneContacts(
    Subscription_watchOwnPhoneContacts instance,
    TRes Function(Subscription_watchOwnPhoneContacts) then,
  ) = _CopyWithImpl_Subscription_watchOwnPhoneContacts;

  factory CopyWith_Subscription_watchOwnPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchOwnPhoneContacts;

  TRes call({List<Fragment_PhoneContact>? contacts});
  TRes contacts(
    Iterable<Fragment_PhoneContact> Function(
      Iterable<CopyWith_Fragment_PhoneContact<Fragment_PhoneContact>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchOwnPhoneContacts<TRes>
    implements CopyWith_Subscription_watchOwnPhoneContacts<TRes> {
  _CopyWithImpl_Subscription_watchOwnPhoneContacts(this._instance, this._then);

  final Subscription_watchOwnPhoneContacts _instance;

  final TRes Function(Subscription_watchOwnPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? contacts = _undefined}) => _then(
    Subscription_watchOwnPhoneContacts(
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

class _CopyWithStubImpl_Subscription_watchOwnPhoneContacts<TRes>
    implements CopyWith_Subscription_watchOwnPhoneContacts<TRes> {
  _CopyWithStubImpl_Subscription_watchOwnPhoneContacts(this._res);

  TRes _res;

  call({List<Fragment_PhoneContact>? contacts}) => _res;

  contacts(_fn) => _res;
}

const documentNodeSubscriptionwatchOwnPhoneContacts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchOwnPhoneContacts'),
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

class Variables_Subscription_watchFamilyPhoneContacts {
  factory Variables_Subscription_watchFamilyPhoneContacts({
    required UuidValue familyId,
  }) => Variables_Subscription_watchFamilyPhoneContacts._({
    r'familyId': familyId,
  });

  Variables_Subscription_watchFamilyPhoneContacts._(this._$data);

  factory Variables_Subscription_watchFamilyPhoneContacts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables_Subscription_watchFamilyPhoneContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchFamilyPhoneContacts<
    Variables_Subscription_watchFamilyPhoneContacts
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchFamilyPhoneContacts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchFamilyPhoneContacts ||
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

abstract class CopyWith_Variables_Subscription_watchFamilyPhoneContacts<TRes> {
  factory CopyWith_Variables_Subscription_watchFamilyPhoneContacts(
    Variables_Subscription_watchFamilyPhoneContacts instance,
    TRes Function(Variables_Subscription_watchFamilyPhoneContacts) then,
  ) = _CopyWithImpl_Variables_Subscription_watchFamilyPhoneContacts;

  factory CopyWith_Variables_Subscription_watchFamilyPhoneContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Subscription_watchFamilyPhoneContacts;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Variables_Subscription_watchFamilyPhoneContacts<TRes>
    implements CopyWith_Variables_Subscription_watchFamilyPhoneContacts<TRes> {
  _CopyWithImpl_Variables_Subscription_watchFamilyPhoneContacts(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchFamilyPhoneContacts _instance;

  final TRes Function(Variables_Subscription_watchFamilyPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) => _then(
    Variables_Subscription_watchFamilyPhoneContacts._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchFamilyPhoneContacts<TRes>
    implements CopyWith_Variables_Subscription_watchFamilyPhoneContacts<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchFamilyPhoneContacts(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Subscription_watchFamilyPhoneContacts {
  Subscription_watchFamilyPhoneContacts({required this.resolvedContacts});

  factory Subscription_watchFamilyPhoneContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$resolvedContacts = json['resolvedContacts'];
    return Subscription_watchFamilyPhoneContacts(
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
    if (other is! Subscription_watchFamilyPhoneContacts ||
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

extension UtilityExtension_Subscription_watchFamilyPhoneContacts
    on Subscription_watchFamilyPhoneContacts {
  CopyWith_Subscription_watchFamilyPhoneContacts<
    Subscription_watchFamilyPhoneContacts
  >
  get copyWith =>
      CopyWith_Subscription_watchFamilyPhoneContacts(this, (i) => i);
}

abstract class CopyWith_Subscription_watchFamilyPhoneContacts<TRes> {
  factory CopyWith_Subscription_watchFamilyPhoneContacts(
    Subscription_watchFamilyPhoneContacts instance,
    TRes Function(Subscription_watchFamilyPhoneContacts) then,
  ) = _CopyWithImpl_Subscription_watchFamilyPhoneContacts;

  factory CopyWith_Subscription_watchFamilyPhoneContacts.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchFamilyPhoneContacts;

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

class _CopyWithImpl_Subscription_watchFamilyPhoneContacts<TRes>
    implements CopyWith_Subscription_watchFamilyPhoneContacts<TRes> {
  _CopyWithImpl_Subscription_watchFamilyPhoneContacts(
    this._instance,
    this._then,
  );

  final Subscription_watchFamilyPhoneContacts _instance;

  final TRes Function(Subscription_watchFamilyPhoneContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? resolvedContacts = _undefined}) => _then(
    Subscription_watchFamilyPhoneContacts(
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

class _CopyWithStubImpl_Subscription_watchFamilyPhoneContacts<TRes>
    implements CopyWith_Subscription_watchFamilyPhoneContacts<TRes> {
  _CopyWithStubImpl_Subscription_watchFamilyPhoneContacts(this._res);

  TRes _res;

  call({List<Fragment_FamilyPhoneContact>? resolvedContacts}) => _res;

  resolvedContacts(_fn) => _res;
}

const documentNodeSubscriptionwatchFamilyPhoneContacts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchFamilyPhoneContacts'),
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
