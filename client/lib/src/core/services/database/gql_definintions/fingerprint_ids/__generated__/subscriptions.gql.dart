import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchPersonFingerprintIds {
  factory Variables_Subscription_watchPersonFingerprintIds({
    required UuidValue personId,
  }) => Variables_Subscription_watchPersonFingerprintIds._({
    r'personId': personId,
  });

  Variables_Subscription_watchPersonFingerprintIds._(this._$data);

  factory Variables_Subscription_watchPersonFingerprintIds.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    return Variables_Subscription_watchPersonFingerprintIds._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchPersonFingerprintIds<
    Variables_Subscription_watchPersonFingerprintIds
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchPersonFingerprintIds(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchPersonFingerprintIds ||
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

abstract class CopyWith_Variables_Subscription_watchPersonFingerprintIds<TRes> {
  factory CopyWith_Variables_Subscription_watchPersonFingerprintIds(
    Variables_Subscription_watchPersonFingerprintIds instance,
    TRes Function(Variables_Subscription_watchPersonFingerprintIds) then,
  ) = _CopyWithImpl_Variables_Subscription_watchPersonFingerprintIds;

  factory CopyWith_Variables_Subscription_watchPersonFingerprintIds.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Subscription_watchPersonFingerprintIds;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl_Variables_Subscription_watchPersonFingerprintIds<TRes>
    implements CopyWith_Variables_Subscription_watchPersonFingerprintIds<TRes> {
  _CopyWithImpl_Variables_Subscription_watchPersonFingerprintIds(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchPersonFingerprintIds _instance;

  final TRes Function(Variables_Subscription_watchPersonFingerprintIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined}) => _then(
    Variables_Subscription_watchPersonFingerprintIds._({
      ..._instance._$data,
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchPersonFingerprintIds<TRes>
    implements CopyWith_Variables_Subscription_watchPersonFingerprintIds<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchPersonFingerprintIds(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Subscription_watchPersonFingerprintIds {
  Subscription_watchPersonFingerprintIds({required this.personsFingerprintIds});

  factory Subscription_watchPersonFingerprintIds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$personsFingerprintIds = json['personsFingerprintIds'];
    return Subscription_watchPersonFingerprintIds(
      personsFingerprintIds: (l$personsFingerprintIds as List<dynamic>)
          .map(
            (e) => Fragment_PersonFingerprintId.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Fragment_PersonFingerprintId> personsFingerprintIds;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personsFingerprintIds = personsFingerprintIds;
    _resultData['personsFingerprintIds'] = l$personsFingerprintIds
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personsFingerprintIds = personsFingerprintIds;
    return Object.hashAll([
      Object.hashAll(l$personsFingerprintIds.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchPersonFingerprintIds ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsFingerprintIds = personsFingerprintIds;
    final lOther$personsFingerprintIds = other.personsFingerprintIds;
    if (l$personsFingerprintIds.length != lOther$personsFingerprintIds.length) {
      return false;
    }
    for (int i = 0; i < l$personsFingerprintIds.length; i++) {
      final l$personsFingerprintIds$entry = l$personsFingerprintIds[i];
      final lOther$personsFingerprintIds$entry =
          lOther$personsFingerprintIds[i];
      if (l$personsFingerprintIds$entry != lOther$personsFingerprintIds$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchPersonFingerprintIds
    on Subscription_watchPersonFingerprintIds {
  CopyWith_Subscription_watchPersonFingerprintIds<
    Subscription_watchPersonFingerprintIds
  >
  get copyWith =>
      CopyWith_Subscription_watchPersonFingerprintIds(this, (i) => i);
}

abstract class CopyWith_Subscription_watchPersonFingerprintIds<TRes> {
  factory CopyWith_Subscription_watchPersonFingerprintIds(
    Subscription_watchPersonFingerprintIds instance,
    TRes Function(Subscription_watchPersonFingerprintIds) then,
  ) = _CopyWithImpl_Subscription_watchPersonFingerprintIds;

  factory CopyWith_Subscription_watchPersonFingerprintIds.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchPersonFingerprintIds;

  TRes call({List<Fragment_PersonFingerprintId>? personsFingerprintIds});
  TRes personsFingerprintIds(
    Iterable<Fragment_PersonFingerprintId> Function(
      Iterable<
        CopyWith_Fragment_PersonFingerprintId<Fragment_PersonFingerprintId>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchPersonFingerprintIds<TRes>
    implements CopyWith_Subscription_watchPersonFingerprintIds<TRes> {
  _CopyWithImpl_Subscription_watchPersonFingerprintIds(
    this._instance,
    this._then,
  );

  final Subscription_watchPersonFingerprintIds _instance;

  final TRes Function(Subscription_watchPersonFingerprintIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personsFingerprintIds = _undefined}) => _then(
    Subscription_watchPersonFingerprintIds(
      personsFingerprintIds:
          personsFingerprintIds == _undefined || personsFingerprintIds == null
          ? _instance.personsFingerprintIds
          : (personsFingerprintIds as List<Fragment_PersonFingerprintId>),
    ),
  );

  TRes personsFingerprintIds(
    Iterable<Fragment_PersonFingerprintId> Function(
      Iterable<
        CopyWith_Fragment_PersonFingerprintId<Fragment_PersonFingerprintId>
      >,
    )
    _fn,
  ) => call(
    personsFingerprintIds: _fn(
      _instance.personsFingerprintIds.map(
        (e) => CopyWith_Fragment_PersonFingerprintId(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchPersonFingerprintIds<TRes>
    implements CopyWith_Subscription_watchPersonFingerprintIds<TRes> {
  _CopyWithStubImpl_Subscription_watchPersonFingerprintIds(this._res);

  TRes _res;

  call({List<Fragment_PersonFingerprintId>? personsFingerprintIds}) => _res;

  personsFingerprintIds(_fn) => _res;
}

const documentNodeSubscriptionwatchPersonFingerprintIds = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchPersonFingerprintIds'),
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
            name: NameNode(value: 'personsFingerprintIds'),
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
                          name: NameNode(value: 'addedAt'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'PersonFingerprintId'),
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
    fragmentDefinitionPersonFingerprintId,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);
