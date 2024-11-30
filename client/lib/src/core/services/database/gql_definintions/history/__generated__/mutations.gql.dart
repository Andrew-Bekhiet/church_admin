import '../../gql/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_insertPersonLastConfession {
  factory Variables_Mutation_insertPersonLastConfession({
    required UuidValue personId,
    required DateTime lastConfession,
  }) =>
      Variables_Mutation_insertPersonLastConfession._({
        r'personId': personId,
        r'lastConfession': lastConfession,
      });

  Variables_Mutation_insertPersonLastConfession._(this._$data);

  factory Variables_Mutation_insertPersonLastConfession.fromJson(
      Map<String, dynamic> data) {
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
          Variables_Mutation_insertPersonLastConfession>
      get copyWith => CopyWith_Variables_Mutation_insertPersonLastConfession(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertPersonLastConfession) ||
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
    return Object.hashAll([
      l$personId,
      l$lastConfession,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastConfession<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastConfession(
    Variables_Mutation_insertPersonLastConfession instance,
    TRes Function(Variables_Mutation_insertPersonLastConfession) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastConfession;

  factory CopyWith_Variables_Mutation_insertPersonLastConfession.stub(
          TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPersonLastConfession;

  TRes call({
    UuidValue? personId,
    DateTime? lastConfession,
  });
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
  }) =>
      _then(Variables_Mutation_insertPersonLastConfession._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastConfession != _undefined && lastConfession != null)
          'lastConfession': (lastConfession as DateTime),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastConfession<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastConfession<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastConfession(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastConfession,
  }) =>
      _res;
}

class Mutation_insertPersonLastConfession {
  Mutation_insertPersonLastConfession({
    this.insertHistoryConfessionHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertPersonLastConfession.fromJson(
      Map<String, dynamic> json) {
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastConfession(
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
              .fromJson((l$insertHistoryConfessionHistoryOne
                  as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$insertHistoryConfessionHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertPersonLastConfession) ||
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
          Mutation_insertPersonLastConfession>
      get copyWith => CopyWith_Mutation_insertPersonLastConfession(
            this,
            (i) => i,
          );
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
      TRes> get insertHistoryConfessionHistoryOne;
}

class _CopyWithImpl_Mutation_insertPersonLastConfession<TRes>
    implements CopyWith_Mutation_insertPersonLastConfession<TRes> {
  _CopyWithImpl_Mutation_insertPersonLastConfession(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastConfession _instance;

  final TRes Function(Mutation_insertPersonLastConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPersonLastConfession(
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
            .stub(_then(_instance))
        : CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
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
  }) =>
      _res;

  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
          TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
              .stub(_res);
}

const documentNodeMutationinsertPersonLastConfession =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertPersonLastConfession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastConfession')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'day'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'data'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: VariableNode(
                            name: NameNode(value: 'lastConfession')),
                      )
                    ]),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'onConflict'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(value: 'attendanceDaysPkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'updateColumns'),
                        value: EnumValueNode(name: NameNode(value: 'day')),
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'confessionHistoryDayIdPersonIdKey')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne {
  Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne({
    required this.person,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
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
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne) ||
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

extension UtilityExtension_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
    on Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne {
  CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
          Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
    Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
        instance,
    TRes Function(
            Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne)
        then,
  ) = _CopyWithImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne;

  factory CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne;

  TRes call({
    Fragment_Person? person,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne
      _instance;

  final TRes Function(
          Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment_Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastConfession_insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment_Person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_insertPersonLastKodas {
  factory Variables_Mutation_insertPersonLastKodas({
    required UuidValue personId,
    required DateTime lastKodas,
  }) =>
      Variables_Mutation_insertPersonLastKodas._({
        r'personId': personId,
        r'lastKodas': lastKodas,
      });

  Variables_Mutation_insertPersonLastKodas._(this._$data);

  factory Variables_Mutation_insertPersonLastKodas.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastKodas = data['lastKodas'];
    result$data['lastKodas'] = dateFromString(l$lastKodas);
    return Variables_Mutation_insertPersonLastKodas._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  DateTime get lastKodas => (_$data['lastKodas'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$lastKodas = lastKodas;
    result$data['lastKodas'] = dateToString(l$lastKodas);
    return result$data;
  }

  CopyWith_Variables_Mutation_insertPersonLastKodas<
          Variables_Mutation_insertPersonLastKodas>
      get copyWith => CopyWith_Variables_Mutation_insertPersonLastKodas(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertPersonLastKodas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$lastKodas = lastKodas;
    return Object.hashAll([
      l$personId,
      l$lastKodas,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastKodas<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastKodas(
    Variables_Mutation_insertPersonLastKodas instance,
    TRes Function(Variables_Mutation_insertPersonLastKodas) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastKodas;

  factory CopyWith_Variables_Mutation_insertPersonLastKodas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPersonLastKodas;

  TRes call({
    UuidValue? personId,
    DateTime? lastKodas,
  });
}

class _CopyWithImpl_Variables_Mutation_insertPersonLastKodas<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastKodas<TRes> {
  _CopyWithImpl_Variables_Mutation_insertPersonLastKodas(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertPersonLastKodas _instance;

  final TRes Function(Variables_Mutation_insertPersonLastKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastKodas = _undefined,
  }) =>
      _then(Variables_Mutation_insertPersonLastKodas._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastKodas != _undefined && lastKodas != null)
          'lastKodas': (lastKodas as DateTime),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastKodas<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastKodas<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastKodas(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastKodas,
  }) =>
      _res;
}

class Mutation_insertPersonLastKodas {
  Mutation_insertPersonLastKodas({
    this.insertHistoryKodasHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertPersonLastKodas.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastKodas(
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne
              .fromJson(
                  (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    _resultData['insertHistoryKodasHistoryOne'] =
        l$insertHistoryKodasHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertHistoryKodasHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertPersonLastKodas) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Mutation_insertPersonLastKodas
    on Mutation_insertPersonLastKodas {
  CopyWith_Mutation_insertPersonLastKodas<Mutation_insertPersonLastKodas>
      get copyWith => CopyWith_Mutation_insertPersonLastKodas(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_insertPersonLastKodas<TRes> {
  factory CopyWith_Mutation_insertPersonLastKodas(
    Mutation_insertPersonLastKodas instance,
    TRes Function(Mutation_insertPersonLastKodas) then,
  ) = _CopyWithImpl_Mutation_insertPersonLastKodas;

  factory CopyWith_Mutation_insertPersonLastKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastKodas;

  TRes call({
    Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
}

class _CopyWithImpl_Mutation_insertPersonLastKodas<TRes>
    implements CopyWith_Mutation_insertPersonLastKodas<TRes> {
  _CopyWithImpl_Mutation_insertPersonLastKodas(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastKodas _instance;

  final TRes Function(Mutation_insertPersonLastKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPersonLastKodas(
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne
            .stub(_then(_instance))
        : CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastKodas<TRes>
    implements CopyWith_Mutation_insertPersonLastKodas<TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastKodas(this._res);

  TRes _res;

  call({
    Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne
              .stub(_res);
}

const documentNodeMutationinsertPersonLastKodas = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertPersonLastKodas'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHistoryKodasHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'day'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'data'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: VariableNode(name: NameNode(value: 'lastKodas')),
                      )
                    ]),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'onConflict'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(value: 'attendanceDaysPkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'updateColumns'),
                        value: EnumValueNode(name: NameNode(value: 'day')),
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'kodasHistoryDayIdPersonIdKey')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne {
  Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne({
    required this.person,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
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
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne) ||
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

extension UtilityExtension_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne
    on Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne {
  CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<
          Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
    Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne)
        then,
  ) = _CopyWithImpl_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne;

  factory CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne;

  TRes call({
    Fragment_Person? person,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithImpl_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne _instance;

  final TRes Function(
      Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment_Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastKodas_insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment_Person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_insertPersonLastCall {
  factory Variables_Mutation_insertPersonLastCall({
    required UuidValue personId,
    required DateTime lastCall,
  }) =>
      Variables_Mutation_insertPersonLastCall._({
        r'personId': personId,
        r'lastCall': lastCall,
      });

  Variables_Mutation_insertPersonLastCall._(this._$data);

  factory Variables_Mutation_insertPersonLastCall.fromJson(
      Map<String, dynamic> data) {
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
          Variables_Mutation_insertPersonLastCall>
      get copyWith => CopyWith_Variables_Mutation_insertPersonLastCall(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertPersonLastCall) ||
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
    return Object.hashAll([
      l$personId,
      l$lastCall,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastCall<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastCall(
    Variables_Mutation_insertPersonLastCall instance,
    TRes Function(Variables_Mutation_insertPersonLastCall) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastCall;

  factory CopyWith_Variables_Mutation_insertPersonLastCall.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPersonLastCall;

  TRes call({
    UuidValue? personId,
    DateTime? lastCall,
  });
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

  TRes call({
    Object? personId = _undefined,
    Object? lastCall = _undefined,
  }) =>
      _then(Variables_Mutation_insertPersonLastCall._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastCall != _undefined && lastCall != null)
          'lastCall': (lastCall as DateTime),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastCall<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastCall<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastCall(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastCall,
  }) =>
      _res;
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
              (l$insertHistoryCallHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertPersonLastCall_insertHistoryCallHistoryOne?
      insertHistoryCallHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    _resultData['insertHistoryCallHistoryOne'] =
        l$insertHistoryCallHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertHistoryCallHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertPersonLastCall) ||
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
      get copyWith => CopyWith_Mutation_insertPersonLastCall(
            this,
            (i) => i,
          );
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
  _CopyWithImpl_Mutation_insertPersonLastCall(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastCall _instance;

  final TRes Function(Mutation_insertPersonLastCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryCallHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPersonLastCall(
        insertHistoryCallHistoryOne: insertHistoryCallHistoryOne == _undefined
            ? _instance.insertHistoryCallHistoryOne
            : (insertHistoryCallHistoryOne
                as Mutation_insertPersonLastCall_insertHistoryCallHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne {
    final local$insertHistoryCallHistoryOne =
        _instance.insertHistoryCallHistoryOne;
    return local$insertHistoryCallHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne
            .stub(_then(_instance))
        : CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
            local$insertHistoryCallHistoryOne,
            (e) => call(insertHistoryCallHistoryOne: e));
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
  }) =>
      _res;

  CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne =>
          CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne
              .stub(_res);
}

const documentNodeMutationinsertPersonLastCall = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertPersonLastCall'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastCall')),
        type: NamedTypeNode(
          name: NameNode(value: 'Timestamptz'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHistoryCallHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: VariableNode(name: NameNode(value: 'lastCall')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Mutation_insertPersonLastCall_insertHistoryCallHistoryOne {
  Mutation_insertPersonLastCall_insertHistoryCallHistoryOne({
    required this.person,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertPersonLastCall_insertHistoryCallHistoryOne) ||
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
          Mutation_insertPersonLastCall_insertHistoryCallHistoryOne>
      get copyWith =>
          CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
    TRes> {
  factory CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
    Mutation_insertPersonLastCall_insertHistoryCallHistoryOne instance,
    TRes Function(Mutation_insertPersonLastCall_insertHistoryCallHistoryOne)
        then,
  ) = _CopyWithImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne;

  factory CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne;

  TRes call({
    Fragment_Person? person,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
            TRes> {
  _CopyWithImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastCall_insertHistoryCallHistoryOne _instance;

  final TRes Function(Mutation_insertPersonLastCall_insertHistoryCallHistoryOne)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment_Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne<
            TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastCall_insertHistoryCallHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment_Person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_insertPersonLastVisit {
  factory Variables_Mutation_insertPersonLastVisit({
    required UuidValue personId,
    required DateTime lastVisit,
  }) =>
      Variables_Mutation_insertPersonLastVisit._({
        r'personId': personId,
        r'lastVisit': lastVisit,
      });

  Variables_Mutation_insertPersonLastVisit._(this._$data);

  factory Variables_Mutation_insertPersonLastVisit.fromJson(
      Map<String, dynamic> data) {
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
          Variables_Mutation_insertPersonLastVisit>
      get copyWith => CopyWith_Variables_Mutation_insertPersonLastVisit(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_insertPersonLastVisit) ||
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
    return Object.hashAll([
      l$personId,
      l$lastVisit,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPersonLastVisit<TRes> {
  factory CopyWith_Variables_Mutation_insertPersonLastVisit(
    Variables_Mutation_insertPersonLastVisit instance,
    TRes Function(Variables_Mutation_insertPersonLastVisit) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPersonLastVisit;

  factory CopyWith_Variables_Mutation_insertPersonLastVisit.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPersonLastVisit;

  TRes call({
    UuidValue? personId,
    DateTime? lastVisit,
  });
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

  TRes call({
    Object? personId = _undefined,
    Object? lastVisit = _undefined,
  }) =>
      _then(Variables_Mutation_insertPersonLastVisit._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastVisit != _undefined && lastVisit != null)
          'lastVisit': (lastVisit as DateTime),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertPersonLastVisit<TRes>
    implements CopyWith_Variables_Mutation_insertPersonLastVisit<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPersonLastVisit(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastVisit,
  }) =>
      _res;
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
          : Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne
              .fromJson(
                  (l$insertHistoryVisitHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne?
      insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] =
        l$insertHistoryVisitHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertHistoryVisitHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_insertPersonLastVisit) ||
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
      get copyWith => CopyWith_Mutation_insertPersonLastVisit(
            this,
            (i) => i,
          );
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
  _CopyWithImpl_Mutation_insertPersonLastVisit(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastVisit _instance;

  final TRes Function(Mutation_insertPersonLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPersonLastVisit(
        insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
            ? _instance.insertHistoryVisitHistoryOne
            : (insertHistoryVisitHistoryOne
                as Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne
            .stub(_then(_instance))
        : CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e));
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
  }) =>
      _res;

  CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne =>
          CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne
              .stub(_res);
}

const documentNodeMutationinsertPersonLastVisit = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertPersonLastVisit'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastVisit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Timestamptz'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHistoryVisitHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'table'),
                value: StringValueNode(
                  value: 'persons',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'recordId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: VariableNode(name: NameNode(value: 'lastVisit')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'LatestVisitHistory'),
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
  fragmentDefinitionLatestVisitHistory,
]);

class Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne {
  Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
      {this.$__typename = 'HistoryVisitHistory'});

  factory Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne) ||
        runtimeType != other.runtimeType) {
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
          Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne>
      get copyWith =>
          CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
    TRes> {
  factory CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
    Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne)
        then,
  ) = _CopyWithImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne;

  factory CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne;

  TRes call({String? $__typename});
}

class _CopyWithImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
            TRes> {
  _CopyWithImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne _instance;

  final TRes Function(
      Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne<
            TRes> {
  _CopyWithStubImpl_Mutation_insertPersonLastVisit_insertHistoryVisitHistoryOne(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
