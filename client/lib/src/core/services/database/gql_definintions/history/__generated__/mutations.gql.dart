import '../../gql/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_insertPersonLastConfession {
  factory Variables_Mutation_insertPersonLastConfession({
    required UuidValue personId,
    required DateTime lastConfession,
  }) => Variables_Mutation_insertPersonLastConfession._({
    r'personId': personId,
    r'lastConfession': lastConfession,
  });

  Variables_Mutation_insertPersonLastConfession._(this._$data);

  factory Variables_Mutation_insertPersonLastConfession.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastConfession = data['lastConfession'];
    result$data['lastConfession'] = dateFromString(l$lastConfession);
    return Variables_Mutation_insertPersonLastConfession._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  DateTime get lastConfession => (_$data['lastConfession'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$lastConfession = lastConfession;
    result$data['lastConfession'] = dateToString(l$lastConfession);
    return result$data;
  }

  CopyWith_Variables_Mutation_insertPersonLastConfession<
    Variables_Mutation_insertPersonLastConfession
  >
  get copyWith =>
      CopyWith_Variables_Mutation_insertPersonLastConfession(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertPersonLastConfession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$lastConfession = lastConfession;
    return Object.hashAll([l$personId, l$lastConfession]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastConfession<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastConfession(
    Variables_Mutation_insertPersonLastConfession instance,
    TRes Function(Variables_Mutation_insertPersonLastConfession) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastConfession;

  factory CopyWith_Variables_Mutation_insertPersonLastConfession.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Mutation_insertPersonLastConfession;

  TRes call({UuidValue? personId, DateTime? lastConfession});
}

class _CopyWithImpl_Variables_Mutation_insertPersonLastConfession<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastConfession<TRes> {
  _CopyWithImpl_Variables_Mutation_insertPersonLastConfession(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertPersonLastConfession _instance;

  final TRes Function(Variables_Mutation_insertPersonLastConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastConfession = _undefined,
  }) => _then(
    Variables_Mutation_insertPersonLastConfession._({
      ..._instance._$data,
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
      if (lastConfession != _undefined && lastConfession != null)
        'lastConfession': (lastConfession as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastConfession<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastConfession<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastConfession(this._res);

  TRes _res;

  call({UuidValue? personId, DateTime? lastConfession}) => _res;
}

class Mutation_insertPersonLastConfession {
  Mutation_insertPersonLastConfession({
    this.insertHistoryConfessionHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertPersonLastConfession.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastConfession(
      insertHistoryConfessionHistoryOne:
          l$insertHistoryConfessionHistoryOne == null
          ? null
          : Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.fromJson(
              (l$insertHistoryConfessionHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne?
  insertHistoryConfessionHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    _resultData['insertHistoryConfessionHistoryOne'] =
        l$insertHistoryConfessionHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryConfessionHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertPersonLastConfession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final lOther$insertHistoryConfessionHistoryOne =
        other.insertHistoryConfessionHistoryOne;
    if (l$insertHistoryConfessionHistoryOne !=
        lOther$insertHistoryConfessionHistoryOne) {
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

extension UtilityExtension_Mutation_insertPersonLastConfession
    on Mutation_insertPersonLastConfession {
  CopyWith_Mutation_insertPersonLastConfession<
    Mutation_insertPersonLastConfession
  >
  get copyWith => CopyWith_Mutation_insertPersonLastConfession(this, (i) => i);
}

abstract class CopyWith_Mutation_insertPersonLastConfession<TRes> {
  factory CopyWith_Mutation_insertPersonLastConfession(
    Mutation_insertPersonLastConfession instance,
    TRes Function(Mutation_insertPersonLastConfession) then,
  ) = _CopyWithImpl_Mutation_insertPersonLastConfession;

  factory CopyWith_Mutation_insertPersonLastConfession.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastConfession;

  TRes call({
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne?
    insertHistoryConfessionHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
    TRes
  >
  get insertHistoryConfessionHistoryOne;
}

class _CopyWithImpl_Mutation_insertPersonLastConfession<TRes>
    implements CopyWith_Mutation_insertPersonLastConfession<TRes> {
  _CopyWithImpl_Mutation_insertPersonLastConfession(this._instance, this._then);

  final Mutation_insertPersonLastConfession _instance;

  final TRes Function(Mutation_insertPersonLastConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertPersonLastConfession(
      insertHistoryConfessionHistoryOne:
          insertHistoryConfessionHistoryOne == _undefined
          ? _instance.insertHistoryConfessionHistoryOne
          : (insertHistoryConfessionHistoryOne
                as Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
    TRes
  >
  get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastConfession<TRes>
    implements CopyWith_Mutation_insertPersonLastConfession<TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastConfession(this._res);

  TRes _res;

  call({
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne?
    insertHistoryConfessionHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
    TRes
  >
  get insertHistoryConfessionHistoryOne =>
      CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.stub(
        _res,
      );
}

const documentNodeMutationinsertPersonLastConfession = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastConfession'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastConfession')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: VariableNode(name: NameNode(value: 'personId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'day'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'data'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'day'),
                                  value: VariableNode(
                                    name: NameNode(value: 'lastConfession'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'onConflict'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'constraint'),
                                  value: EnumValueNode(
                                    name: NameNode(
                                      value: 'attendance_days_pkey',
                                    ),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(value: 'updateColumns'),
                                  value: EnumValueNode(
                                    name: NameNode(value: 'day'),
                                  ),
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
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(
                          value: 'confession_history_day_id_person_id_key',
                        ),
                      ),
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
                  name: NameNode(value: 'person'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Person'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
  ],
);

class Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne {
  Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne({
    required this.id,
    required this.person,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
      id: stringToUuid(l$id),
      person: Fragment_Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final Fragment_Person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$person, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
    on Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne {
  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
  >
  get copyWith =>
      CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
    instance,
    TRes Function(
      Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne,
    )
    then,
  ) = _CopyWithImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne;

  factory CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne;

  TRes call({UuidValue? id, Fragment_Person? person, String? $__typename});
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
          TRes
        > {
  _CopyWithImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
  _instance;

  final TRes Function(
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      person: person == _undefined || person == null
          ? _instance.person
          : (person as Fragment_Person),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, Fragment_Person? person, String? $__typename}) => _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_insertPersonLastCall {
  factory Variables_Mutation_insertPersonLastCall({
    required UuidValue personId,
    required DateTime lastCall,
  }) => Variables_Mutation_insertPersonLastCall._({
    r'personId': personId,
    r'lastCall': lastCall,
  });

  Variables_Mutation_insertPersonLastCall._(this._$data);

  factory Variables_Mutation_insertPersonLastCall.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastCall = data['lastCall'];
    result$data['lastCall'] = tstzFromString(l$lastCall);
    return Variables_Mutation_insertPersonLastCall._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  DateTime get lastCall => (_$data['lastCall'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$lastCall = lastCall;
    result$data['lastCall'] = tstzToString(l$lastCall);
    return result$data;
  }

  CopyWith_Variables_Mutation_insertPersonLastCall<
    Variables_Mutation_insertPersonLastCall
  >
  get copyWith =>
      CopyWith_Variables_Mutation_insertPersonLastCall(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertPersonLastCall ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$lastCall = lastCall;
    return Object.hashAll([l$personId, l$lastCall]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastCall<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastCall(
    Variables_Mutation_insertPersonLastCall instance,
    TRes Function(Variables_Mutation_insertPersonLastCall) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastCall;

  factory CopyWith_Variables_Mutation_insertPersonLastCall.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPersonLastCall;

  TRes call({UuidValue? personId, DateTime? lastCall});
}

class _CopyWithImpl_Variables_Mutation_insertPersonLastCall<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastCall<TRes> {
  _CopyWithImpl_Variables_Mutation_insertPersonLastCall(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertPersonLastCall _instance;

  final TRes Function(Variables_Mutation_insertPersonLastCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? lastCall = _undefined}) =>
      _then(
        Variables_Mutation_insertPersonLastCall._({
          ..._instance._$data,
          if (personId != _undefined && personId != null)
            'personId': (personId as UuidValue),
          if (lastCall != _undefined && lastCall != null)
            'lastCall': (lastCall as DateTime),
        }),
      );
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastCall<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastCall<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastCall(this._res);

  TRes _res;

  call({UuidValue? personId, DateTime? lastCall}) => _res;
}

class Mutation_insertPersonLastCall {
  Mutation_insertPersonLastCall({
    this.insertHistoryCallHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertPersonLastCall.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryCallHistoryOne = json['insertHistoryCallHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastCall(
      insertHistoryCallHistoryOne: l$insertHistoryCallHistoryOne == null
          ? null
          : Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.fromJson(
              (l$insertHistoryCallHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertPersonLastCall_insertHistoryCallHistoryOne?
  insertHistoryCallHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    _resultData['insertHistoryCallHistoryOne'] = l$insertHistoryCallHistoryOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryCallHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertPersonLastCall ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final lOther$insertHistoryCallHistoryOne =
        other.insertHistoryCallHistoryOne;
    if (l$insertHistoryCallHistoryOne != lOther$insertHistoryCallHistoryOne) {
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

extension UtilityExtension_Mutation_insertPersonLastCall
    on Mutation_insertPersonLastCall {
  CopyWith_Mutation_insertPersonLastCall<Mutation_insertPersonLastCall>
  get copyWith => CopyWith_Mutation_insertPersonLastCall(this, (i) => i);
}

abstract class CopyWith_Mutation_insertPersonLastCall<TRes> {
  factory CopyWith_Mutation_insertPersonLastCall(
    Mutation_insertPersonLastCall instance,
    TRes Function(Mutation_insertPersonLastCall) then,
  ) = _CopyWithImpl_Mutation_insertPersonLastCall;

  factory CopyWith_Mutation_insertPersonLastCall.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastCall;

  TRes call({
    Mutation_insertPersonLastCall_insertHistoryCallHistoryOne?
    insertHistoryCallHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<TRes>
  get insertHistoryCallHistoryOne;
}

class _CopyWithImpl_Mutation_insertPersonLastCall<TRes>
    implements CopyWith_Mutation_insertPersonLastCall<TRes> {
  _CopyWithImpl_Mutation_insertPersonLastCall(this._instance, this._then);

  final Mutation_insertPersonLastCall _instance;

  final TRes Function(Mutation_insertPersonLastCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryCallHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertPersonLastCall(
      insertHistoryCallHistoryOne: insertHistoryCallHistoryOne == _undefined
          ? _instance.insertHistoryCallHistoryOne
          : (insertHistoryCallHistoryOne
                as Mutation_insertPersonLastCall_insertHistoryCallHistoryOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<TRes>
  get insertHistoryCallHistoryOne {
    final local$insertHistoryCallHistoryOne =
        _instance.insertHistoryCallHistoryOne;
    return local$insertHistoryCallHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
            local$insertHistoryCallHistoryOne,
            (e) => call(insertHistoryCallHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastCall<TRes>
    implements CopyWith_Mutation_insertPersonLastCall<TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastCall(this._res);

  TRes _res;

  call({
    Mutation_insertPersonLastCall_insertHistoryCallHistoryOne?
    insertHistoryCallHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<TRes>
  get insertHistoryCallHistoryOne =>
      CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.stub(
        _res,
      );
}

const documentNodeMutationinsertPersonLastCall = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastCall'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastCall')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
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
            name: NameNode(value: 'insertHistoryCallHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: VariableNode(name: NameNode(value: 'personId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(name: NameNode(value: 'lastCall')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'person'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Person'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
  ],
);

class Mutation_insertPersonLastCall_insertHistoryCallHistoryOne {
  Mutation_insertPersonLastCall_insertHistoryCallHistoryOne({
    required this.person,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
      person: Fragment_Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([l$person, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertPersonLastCall_insertHistoryCallHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne
    on Mutation_insertPersonLastCall_insertHistoryCallHistoryOne {
  CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
    Mutation_insertPersonLastCall_insertHistoryCallHistoryOne
  >
  get copyWith =>
      CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
    Mutation_insertPersonLastCall_insertHistoryCallHistoryOne instance,
    TRes Function(Mutation_insertPersonLastCall_insertHistoryCallHistoryOne)
    then,
  ) = _CopyWithImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne;

  factory CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne;

  TRes call({Fragment_Person? person, String? $__typename});
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
          TRes
        > {
  _CopyWithImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastCall_insertHistoryCallHistoryOne _instance;

  final TRes Function(Mutation_insertPersonLastCall_insertHistoryCallHistoryOne)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? person = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
          person: person == _undefined || person == null
              ? _instance.person
              : (person as Fragment_Person),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
    this._res,
  );

  TRes _res;

  call({Fragment_Person? person, String? $__typename}) => _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_insertPersonLastVisit {
  factory Variables_Mutation_insertPersonLastVisit({
    required UuidValue personId,
    required DateTime lastVisit,
  }) => Variables_Mutation_insertPersonLastVisit._({
    r'personId': personId,
    r'lastVisit': lastVisit,
  });

  Variables_Mutation_insertPersonLastVisit._(this._$data);

  factory Variables_Mutation_insertPersonLastVisit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastVisit = data['lastVisit'];
    result$data['lastVisit'] = tstzFromString(l$lastVisit);
    return Variables_Mutation_insertPersonLastVisit._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  DateTime get lastVisit => (_$data['lastVisit'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$lastVisit = lastVisit;
    result$data['lastVisit'] = tstzToString(l$lastVisit);
    return result$data;
  }

  CopyWith_Variables_Mutation_insertPersonLastVisit<
    Variables_Mutation_insertPersonLastVisit
  >
  get copyWith =>
      CopyWith_Variables_Mutation_insertPersonLastVisit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertPersonLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$lastVisit = lastVisit;
    return Object.hashAll([l$personId, l$lastVisit]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastVisit<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastVisit(
    Variables_Mutation_insertPersonLastVisit instance,
    TRes Function(Variables_Mutation_insertPersonLastVisit) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastVisit;

  factory CopyWith_Variables_Mutation_insertPersonLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPersonLastVisit;

  TRes call({UuidValue? personId, DateTime? lastVisit});
}

class _CopyWithImpl_Variables_Mutation_insertPersonLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastVisit<TRes> {
  _CopyWithImpl_Variables_Mutation_insertPersonLastVisit(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertPersonLastVisit _instance;

  final TRes Function(Variables_Mutation_insertPersonLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? lastVisit = _undefined}) =>
      _then(
        Variables_Mutation_insertPersonLastVisit._({
          ..._instance._$data,
          if (personId != _undefined && personId != null)
            'personId': (personId as UuidValue),
          if (lastVisit != _undefined && lastVisit != null)
            'lastVisit': (lastVisit as DateTime),
        }),
      );
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastVisit<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastVisit(this._res);

  TRes _res;

  call({UuidValue? personId, DateTime? lastVisit}) => _res;
}

class Mutation_insertPersonLastVisit {
  Mutation_insertPersonLastVisit({
    this.insertHistoryVisitHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertPersonLastVisit.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastVisit(
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne?
  insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] = l$insertHistoryVisitHistoryOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryVisitHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertPersonLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
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

extension UtilityExtension_Mutation_insertPersonLastVisit
    on Mutation_insertPersonLastVisit {
  CopyWith_Mutation_insertPersonLastVisit<Mutation_insertPersonLastVisit>
  get copyWith => CopyWith_Mutation_insertPersonLastVisit(this, (i) => i);
}

abstract class CopyWith_Mutation_insertPersonLastVisit<TRes> {
  factory CopyWith_Mutation_insertPersonLastVisit(
    Mutation_insertPersonLastVisit instance,
    TRes Function(Mutation_insertPersonLastVisit) then,
  ) = _CopyWithImpl_Mutation_insertPersonLastVisit;

  factory CopyWith_Mutation_insertPersonLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastVisit;

  TRes call({
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl_Mutation_insertPersonLastVisit<TRes>
    implements CopyWith_Mutation_insertPersonLastVisit<TRes> {
  _CopyWithImpl_Mutation_insertPersonLastVisit(this._instance, this._then);

  final Mutation_insertPersonLastVisit _instance;

  final TRes Function(Mutation_insertPersonLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertPersonLastVisit(
      insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
          ? _instance.insertHistoryVisitHistoryOne
          : (insertHistoryVisitHistoryOne
                as Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastVisit<TRes>
    implements CopyWith_Mutation_insertPersonLastVisit<TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastVisit(this._res);

  TRes _res;

  call({
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne =>
      CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.stub(
        _res,
      );
}

const documentNodeMutationinsertPersonLastVisit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastVisit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastVisit')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: StringValueNode(value: 'persons', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: VariableNode(name: NameNode(value: 'personId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(name: NameNode(value: 'lastVisit')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
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
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne {
  Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne({
    required this.time,
    this.user,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne
    on Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne {
  CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne
  >
  get copyWith =>
      CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne)
    then,
  ) = _CopyWithImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne;

  factory CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
          TRes
        > {
  _CopyWithImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne _instance;

  final TRes Function(
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
    this._res,
  );

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

class Variables_Mutation_insertFamilyLastVisit {
  factory Variables_Mutation_insertFamilyLastVisit({
    required UuidValue familyId,
    required DateTime lastVisit,
    required bool isFatherVisit,
  }) => Variables_Mutation_insertFamilyLastVisit._({
    r'familyId': familyId,
    r'lastVisit': lastVisit,
    r'isFatherVisit': isFatherVisit,
  });

  Variables_Mutation_insertFamilyLastVisit._(this._$data);

  factory Variables_Mutation_insertFamilyLastVisit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    final l$lastVisit = data['lastVisit'];
    result$data['lastVisit'] = tstzFromString(l$lastVisit);
    final l$isFatherVisit = data['isFatherVisit'];
    result$data['isFatherVisit'] = (l$isFatherVisit as bool);
    return Variables_Mutation_insertFamilyLastVisit._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  DateTime get lastVisit => (_$data['lastVisit'] as DateTime);

  bool get isFatherVisit => (_$data['isFatherVisit'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    final l$lastVisit = lastVisit;
    result$data['lastVisit'] = tstzToString(l$lastVisit);
    final l$isFatherVisit = isFatherVisit;
    result$data['isFatherVisit'] = l$isFatherVisit;
    return result$data;
  }

  CopyWith_Variables_Mutation_insertFamilyLastVisit<
    Variables_Mutation_insertFamilyLastVisit
  >
  get copyWith =>
      CopyWith_Variables_Mutation_insertFamilyLastVisit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertFamilyLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (l$isFatherVisit != lOther$isFatherVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$lastVisit = lastVisit;
    final l$isFatherVisit = isFatherVisit;
    return Object.hashAll([l$familyId, l$lastVisit, l$isFatherVisit]);
  }
}

abstract class CopyWith_Variables_Mutation_insertFamilyLastVisit<TRes> {
  factory CopyWith_Variables_Mutation_insertFamilyLastVisit(
    Variables_Mutation_insertFamilyLastVisit instance,
    TRes Function(Variables_Mutation_insertFamilyLastVisit) then,
  ) = _CopyWithImpl_Variables_Mutation_insertFamilyLastVisit;

  factory CopyWith_Variables_Mutation_insertFamilyLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertFamilyLastVisit;

  TRes call({UuidValue? familyId, DateTime? lastVisit, bool? isFatherVisit});
}

class _CopyWithImpl_Variables_Mutation_insertFamilyLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertFamilyLastVisit<TRes> {
  _CopyWithImpl_Variables_Mutation_insertFamilyLastVisit(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertFamilyLastVisit _instance;

  final TRes Function(Variables_Mutation_insertFamilyLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? lastVisit = _undefined,
    Object? isFatherVisit = _undefined,
  }) => _then(
    Variables_Mutation_insertFamilyLastVisit._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
      if (lastVisit != _undefined && lastVisit != null)
        'lastVisit': (lastVisit as DateTime),
      if (isFatherVisit != _undefined && isFatherVisit != null)
        'isFatherVisit': (isFatherVisit as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertFamilyLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertFamilyLastVisit<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertFamilyLastVisit(this._res);

  TRes _res;

  call({UuidValue? familyId, DateTime? lastVisit, bool? isFatherVisit}) => _res;
}

class Mutation_insertFamilyLastVisit {
  Mutation_insertFamilyLastVisit({
    this.insertHistoryVisitHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertFamilyLastVisit.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertFamilyLastVisit(
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne?
  insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] = l$insertHistoryVisitHistoryOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryVisitHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertFamilyLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
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

extension UtilityExtension_Mutation_insertFamilyLastVisit
    on Mutation_insertFamilyLastVisit {
  CopyWith_Mutation_insertFamilyLastVisit<Mutation_insertFamilyLastVisit>
  get copyWith => CopyWith_Mutation_insertFamilyLastVisit(this, (i) => i);
}

abstract class CopyWith_Mutation_insertFamilyLastVisit<TRes> {
  factory CopyWith_Mutation_insertFamilyLastVisit(
    Mutation_insertFamilyLastVisit instance,
    TRes Function(Mutation_insertFamilyLastVisit) then,
  ) = _CopyWithImpl_Mutation_insertFamilyLastVisit;

  factory CopyWith_Mutation_insertFamilyLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertFamilyLastVisit;

  TRes call({
    Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl_Mutation_insertFamilyLastVisit<TRes>
    implements CopyWith_Mutation_insertFamilyLastVisit<TRes> {
  _CopyWithImpl_Mutation_insertFamilyLastVisit(this._instance, this._then);

  final Mutation_insertFamilyLastVisit _instance;

  final TRes Function(Mutation_insertFamilyLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertFamilyLastVisit(
      insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
          ? _instance.insertHistoryVisitHistoryOne
          : (insertHistoryVisitHistoryOne
                as Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertFamilyLastVisit<TRes>
    implements CopyWith_Mutation_insertFamilyLastVisit<TRes> {
  _CopyWithStubImpl_Mutation_insertFamilyLastVisit(this._res);

  TRes _res;

  call({
    Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne =>
      CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne.stub(
        _res,
      );
}

const documentNodeMutationinsertFamilyLastVisit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertFamilyLastVisit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'familyId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastVisit')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'isFatherVisit')),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: StringValueNode(value: 'families', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: VariableNode(name: NameNode(value: 'familyId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(name: NameNode(value: 'lastVisit')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isFatherVisit'),
                      value: VariableNode(
                        name: NameNode(value: 'isFatherVisit'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
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
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne {
  Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne({
    required this.time,
    this.user,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne
    on Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne {
  CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<
    Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne
  >
  get copyWith =>
      CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
    Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne)
    then,
  ) = _CopyWithImpl_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne;

  factory CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<
          TRes
        > {
  _CopyWithImpl_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne _instance;

  final TRes Function(
    Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_insertFamilyLastVisit_insertHistoryVisitHistoryOne(
    this._res,
  );

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

class Variables_Mutation_insertStreetLastVisit {
  factory Variables_Mutation_insertStreetLastVisit({
    required UuidValue streetId,
    required DateTime lastVisit,
  }) => Variables_Mutation_insertStreetLastVisit._({
    r'streetId': streetId,
    r'lastVisit': lastVisit,
  });

  Variables_Mutation_insertStreetLastVisit._(this._$data);

  factory Variables_Mutation_insertStreetLastVisit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$streetId = data['streetId'];
    result$data['streetId'] = stringToUuid(l$streetId);
    final l$lastVisit = data['lastVisit'];
    result$data['lastVisit'] = tstzFromString(l$lastVisit);
    return Variables_Mutation_insertStreetLastVisit._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get streetId => (_$data['streetId'] as UuidValue);

  DateTime get lastVisit => (_$data['lastVisit'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$streetId = streetId;
    result$data['streetId'] = uuidToString(l$streetId);
    final l$lastVisit = lastVisit;
    result$data['lastVisit'] = tstzToString(l$lastVisit);
    return result$data;
  }

  CopyWith_Variables_Mutation_insertStreetLastVisit<
    Variables_Mutation_insertStreetLastVisit
  >
  get copyWith =>
      CopyWith_Variables_Mutation_insertStreetLastVisit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertStreetLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (l$streetId != lOther$streetId) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$streetId = streetId;
    final l$lastVisit = lastVisit;
    return Object.hashAll([l$streetId, l$lastVisit]);
  }
}

abstract class CopyWith_Variables_Mutation_insertStreetLastVisit<TRes> {
  factory CopyWith_Variables_Mutation_insertStreetLastVisit(
    Variables_Mutation_insertStreetLastVisit instance,
    TRes Function(Variables_Mutation_insertStreetLastVisit) then,
  ) = _CopyWithImpl_Variables_Mutation_insertStreetLastVisit;

  factory CopyWith_Variables_Mutation_insertStreetLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertStreetLastVisit;

  TRes call({UuidValue? streetId, DateTime? lastVisit});
}

class _CopyWithImpl_Variables_Mutation_insertStreetLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertStreetLastVisit<TRes> {
  _CopyWithImpl_Variables_Mutation_insertStreetLastVisit(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertStreetLastVisit _instance;

  final TRes Function(Variables_Mutation_insertStreetLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetId = _undefined, Object? lastVisit = _undefined}) =>
      _then(
        Variables_Mutation_insertStreetLastVisit._({
          ..._instance._$data,
          if (streetId != _undefined && streetId != null)
            'streetId': (streetId as UuidValue),
          if (lastVisit != _undefined && lastVisit != null)
            'lastVisit': (lastVisit as DateTime),
        }),
      );
}

class _CopyWithStubImpl_Variables_Mutation_insertStreetLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertStreetLastVisit<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertStreetLastVisit(this._res);

  TRes _res;

  call({UuidValue? streetId, DateTime? lastVisit}) => _res;
}

class Mutation_insertStreetLastVisit {
  Mutation_insertStreetLastVisit({
    this.insertHistoryVisitHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertStreetLastVisit.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertStreetLastVisit(
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne?
  insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] = l$insertHistoryVisitHistoryOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryVisitHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertStreetLastVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
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

extension UtilityExtension_Mutation_insertStreetLastVisit
    on Mutation_insertStreetLastVisit {
  CopyWith_Mutation_insertStreetLastVisit<Mutation_insertStreetLastVisit>
  get copyWith => CopyWith_Mutation_insertStreetLastVisit(this, (i) => i);
}

abstract class CopyWith_Mutation_insertStreetLastVisit<TRes> {
  factory CopyWith_Mutation_insertStreetLastVisit(
    Mutation_insertStreetLastVisit instance,
    TRes Function(Mutation_insertStreetLastVisit) then,
  ) = _CopyWithImpl_Mutation_insertStreetLastVisit;

  factory CopyWith_Mutation_insertStreetLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertStreetLastVisit;

  TRes call({
    Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl_Mutation_insertStreetLastVisit<TRes>
    implements CopyWith_Mutation_insertStreetLastVisit<TRes> {
  _CopyWithImpl_Mutation_insertStreetLastVisit(this._instance, this._then);

  final Mutation_insertStreetLastVisit _instance;

  final TRes Function(Mutation_insertStreetLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertStreetLastVisit(
      insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
          ? _instance.insertHistoryVisitHistoryOne
          : (insertHistoryVisitHistoryOne
                as Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertStreetLastVisit<TRes>
    implements CopyWith_Mutation_insertStreetLastVisit<TRes> {
  _CopyWithStubImpl_Mutation_insertStreetLastVisit(this._res);

  TRes _res;

  call({
    Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne?
    insertHistoryVisitHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<TRes>
  get insertHistoryVisitHistoryOne =>
      CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne.stub(
        _res,
      );
}

const documentNodeMutationinsertStreetLastVisit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertStreetLastVisit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'streetId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastVisit')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: StringValueNode(value: 'streets', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: VariableNode(name: NameNode(value: 'streetId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'time'),
                      value: VariableNode(name: NameNode(value: 'lastVisit')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
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
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne {
  Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne({
    required this.time,
    this.user,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne
    on Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne {
  CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<
    Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne
  >
  get copyWith =>
      CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
    Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne)
    then,
  ) = _CopyWithImpl_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne;

  factory CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<
          TRes
        > {
  _CopyWithImpl_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne _instance;

  final TRes Function(
    Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_insertStreetLastVisit_insertHistoryVisitHistoryOne(
    this._res,
  );

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

class Variables_Mutation_recordKodas {
  factory Variables_Mutation_recordKodas({
    required UuidValue personId,
    required DateTime day,
  }) => Variables_Mutation_recordKodas._({r'personId': personId, r'day': day});

  Variables_Mutation_recordKodas._(this._$data);

  factory Variables_Mutation_recordKodas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$day = data['day'];
    result$data['day'] = dateFromString(l$day);
    return Variables_Mutation_recordKodas._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  DateTime get day => (_$data['day'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$day = day;
    result$data['day'] = dateToString(l$day);
    return result$data;
  }

  CopyWith_Variables_Mutation_recordKodas<Variables_Mutation_recordKodas>
  get copyWith => CopyWith_Variables_Mutation_recordKodas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordKodas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$day = day;
    return Object.hashAll([l$personId, l$day]);
  }
}

abstract class CopyWith_Variables_Mutation_recordKodas<TRes> {
  factory CopyWith_Variables_Mutation_recordKodas(
    Variables_Mutation_recordKodas instance,
    TRes Function(Variables_Mutation_recordKodas) then,
  ) = _CopyWithImpl_Variables_Mutation_recordKodas;

  factory CopyWith_Variables_Mutation_recordKodas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_recordKodas;

  TRes call({UuidValue? personId, DateTime? day});
}

class _CopyWithImpl_Variables_Mutation_recordKodas<TRes>
    implements CopyWith_Variables_Mutation_recordKodas<TRes> {
  _CopyWithImpl_Variables_Mutation_recordKodas(this._instance, this._then);

  final Variables_Mutation_recordKodas _instance;

  final TRes Function(Variables_Mutation_recordKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? day = _undefined}) => _then(
    Variables_Mutation_recordKodas._({
      ..._instance._$data,
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
      if (day != _undefined && day != null) 'day': (day as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordKodas<TRes>
    implements CopyWith_Variables_Mutation_recordKodas<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordKodas(this._res);

  TRes _res;

  call({UuidValue? personId, DateTime? day}) => _res;
}

class Mutation_recordKodas {
  Mutation_recordKodas({
    this.insertHistoryKodasHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_recordKodas.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_recordKodas(
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Fragment_KodasDayRecord.fromJson(
              (l$insertHistoryKodasHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_KodasDayRecord? insertHistoryKodasHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    _resultData['insertHistoryKodasHistoryOne'] = l$insertHistoryKodasHistoryOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryKodasHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordKodas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final lOther$insertHistoryKodasHistoryOne =
        other.insertHistoryKodasHistoryOne;
    if (l$insertHistoryKodasHistoryOne != lOther$insertHistoryKodasHistoryOne) {
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

extension UtilityExtension_Mutation_recordKodas on Mutation_recordKodas {
  CopyWith_Mutation_recordKodas<Mutation_recordKodas> get copyWith =>
      CopyWith_Mutation_recordKodas(this, (i) => i);
}

abstract class CopyWith_Mutation_recordKodas<TRes> {
  factory CopyWith_Mutation_recordKodas(
    Mutation_recordKodas instance,
    TRes Function(Mutation_recordKodas) then,
  ) = _CopyWithImpl_Mutation_recordKodas;

  factory CopyWith_Mutation_recordKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordKodas;

  TRes call({
    Fragment_KodasDayRecord? insertHistoryKodasHistoryOne,
    String? $__typename,
  });
  CopyWith_Fragment_KodasDayRecord<TRes> get insertHistoryKodasHistoryOne;
}

class _CopyWithImpl_Mutation_recordKodas<TRes>
    implements CopyWith_Mutation_recordKodas<TRes> {
  _CopyWithImpl_Mutation_recordKodas(this._instance, this._then);

  final Mutation_recordKodas _instance;

  final TRes Function(Mutation_recordKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordKodas(
      insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
          ? _instance.insertHistoryKodasHistoryOne
          : (insertHistoryKodasHistoryOne as Fragment_KodasDayRecord?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_KodasDayRecord<TRes> get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith_Fragment_KodasDayRecord.stub(_then(_instance))
        : CopyWith_Fragment_KodasDayRecord(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordKodas<TRes>
    implements CopyWith_Mutation_recordKodas<TRes> {
  _CopyWithStubImpl_Mutation_recordKodas(this._res);

  TRes _res;

  call({
    Fragment_KodasDayRecord? insertHistoryKodasHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_KodasDayRecord<TRes> get insertHistoryKodasHistoryOne =>
      CopyWith_Fragment_KodasDayRecord.stub(_res);
}

const documentNodeMutationrecordKodas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordKodas'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'day')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertHistoryKodasHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: VariableNode(name: NameNode(value: 'personId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'day'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'data'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'day'),
                                  value: VariableNode(
                                    name: NameNode(value: 'day'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'onConflict'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'constraint'),
                                  value: EnumValueNode(
                                    name: NameNode(
                                      value: 'attendance_days_pkey',
                                    ),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(value: 'updateColumns'),
                                  value: EnumValueNode(
                                    name: NameNode(value: 'day'),
                                  ),
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
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(
                          value: 'kodas_history_day_id_person_id_key',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'KodasDayRecord'),
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
    fragmentDefinitionKodasDayRecord,
  ],
);

class Variables_Mutation_deleteKodas {
  factory Variables_Mutation_deleteKodas({required UuidValue id}) =>
      Variables_Mutation_deleteKodas._({r'id': id});

  Variables_Mutation_deleteKodas._(this._$data);

  factory Variables_Mutation_deleteKodas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Mutation_deleteKodas._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteKodas<Variables_Mutation_deleteKodas>
  get copyWith => CopyWith_Variables_Mutation_deleteKodas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteKodas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteKodas<TRes> {
  factory CopyWith_Variables_Mutation_deleteKodas(
    Variables_Mutation_deleteKodas instance,
    TRes Function(Variables_Mutation_deleteKodas) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteKodas;

  factory CopyWith_Variables_Mutation_deleteKodas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteKodas;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Mutation_deleteKodas<TRes>
    implements CopyWith_Variables_Mutation_deleteKodas<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteKodas(this._instance, this._then);

  final Variables_Mutation_deleteKodas _instance;

  final TRes Function(Variables_Mutation_deleteKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteKodas._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteKodas<TRes>
    implements CopyWith_Variables_Mutation_deleteKodas<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteKodas(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Mutation_deleteKodas {
  Mutation_deleteKodas({
    this.deleteHistoryKodasHistoryByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteKodas.fromJson(Map<String, dynamic> json) {
    final l$deleteHistoryKodasHistoryByPk =
        json['deleteHistoryKodasHistoryByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteKodas(
      deleteHistoryKodasHistoryByPk: l$deleteHistoryKodasHistoryByPk == null
          ? null
          : Fragment_KodasDayRecord.fromJson(
              (l$deleteHistoryKodasHistoryByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_KodasDayRecord? deleteHistoryKodasHistoryByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteHistoryKodasHistoryByPk = deleteHistoryKodasHistoryByPk;
    _resultData['deleteHistoryKodasHistoryByPk'] =
        l$deleteHistoryKodasHistoryByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteHistoryKodasHistoryByPk = deleteHistoryKodasHistoryByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteHistoryKodasHistoryByPk, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteKodas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteHistoryKodasHistoryByPk = deleteHistoryKodasHistoryByPk;
    final lOther$deleteHistoryKodasHistoryByPk =
        other.deleteHistoryKodasHistoryByPk;
    if (l$deleteHistoryKodasHistoryByPk !=
        lOther$deleteHistoryKodasHistoryByPk) {
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

extension UtilityExtension_Mutation_deleteKodas on Mutation_deleteKodas {
  CopyWith_Mutation_deleteKodas<Mutation_deleteKodas> get copyWith =>
      CopyWith_Mutation_deleteKodas(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteKodas<TRes> {
  factory CopyWith_Mutation_deleteKodas(
    Mutation_deleteKodas instance,
    TRes Function(Mutation_deleteKodas) then,
  ) = _CopyWithImpl_Mutation_deleteKodas;

  factory CopyWith_Mutation_deleteKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteKodas;

  TRes call({
    Fragment_KodasDayRecord? deleteHistoryKodasHistoryByPk,
    String? $__typename,
  });
  CopyWith_Fragment_KodasDayRecord<TRes> get deleteHistoryKodasHistoryByPk;
}

class _CopyWithImpl_Mutation_deleteKodas<TRes>
    implements CopyWith_Mutation_deleteKodas<TRes> {
  _CopyWithImpl_Mutation_deleteKodas(this._instance, this._then);

  final Mutation_deleteKodas _instance;

  final TRes Function(Mutation_deleteKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteHistoryKodasHistoryByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteKodas(
      deleteHistoryKodasHistoryByPk: deleteHistoryKodasHistoryByPk == _undefined
          ? _instance.deleteHistoryKodasHistoryByPk
          : (deleteHistoryKodasHistoryByPk as Fragment_KodasDayRecord?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_KodasDayRecord<TRes> get deleteHistoryKodasHistoryByPk {
    final local$deleteHistoryKodasHistoryByPk =
        _instance.deleteHistoryKodasHistoryByPk;
    return local$deleteHistoryKodasHistoryByPk == null
        ? CopyWith_Fragment_KodasDayRecord.stub(_then(_instance))
        : CopyWith_Fragment_KodasDayRecord(
            local$deleteHistoryKodasHistoryByPk,
            (e) => call(deleteHistoryKodasHistoryByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteKodas<TRes>
    implements CopyWith_Mutation_deleteKodas<TRes> {
  _CopyWithStubImpl_Mutation_deleteKodas(this._res);

  TRes _res;

  call({
    Fragment_KodasDayRecord? deleteHistoryKodasHistoryByPk,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_KodasDayRecord<TRes> get deleteHistoryKodasHistoryByPk =>
      CopyWith_Fragment_KodasDayRecord.stub(_res);
}

const documentNodeMutationdeleteKodas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteKodas'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteHistoryKodasHistoryByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'KodasDayRecord'),
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
    fragmentDefinitionKodasDayRecord,
  ],
);
