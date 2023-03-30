import '../../persons/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$insertPersonLastConfession {
  factory Variables$Mutation$insertPersonLastConfession({
    required UuidValue personId,
    required DateTime lastConfession,
  }) =>
      Variables$Mutation$insertPersonLastConfession._({
        r'personId': personId,
        r'lastConfession': lastConfession,
      });

  Variables$Mutation$insertPersonLastConfession._(this._$data);

  factory Variables$Mutation$insertPersonLastConfession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastConfession = data['lastConfession'];
    result$data['lastConfession'] = dateFromString(l$lastConfession);
    return Variables$Mutation$insertPersonLastConfession._(result$data);
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

  CopyWith$Variables$Mutation$insertPersonLastConfession<
          Variables$Mutation$insertPersonLastConfession>
      get copyWith => CopyWith$Variables$Mutation$insertPersonLastConfession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertPersonLastConfession) ||
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

abstract class CopyWith$Variables$Mutation$insertPersonLastConfession<TRes> {
  factory CopyWith$Variables$Mutation$insertPersonLastConfession(
    Variables$Mutation$insertPersonLastConfession instance,
    TRes Function(Variables$Mutation$insertPersonLastConfession) then,
  ) = _CopyWithImpl$Variables$Mutation$insertPersonLastConfession;

  factory CopyWith$Variables$Mutation$insertPersonLastConfession.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertPersonLastConfession;

  TRes call({
    UuidValue? personId,
    DateTime? lastConfession,
  });
}

class _CopyWithImpl$Variables$Mutation$insertPersonLastConfession<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastConfession<TRes> {
  _CopyWithImpl$Variables$Mutation$insertPersonLastConfession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertPersonLastConfession _instance;

  final TRes Function(Variables$Mutation$insertPersonLastConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastConfession = _undefined,
  }) =>
      _then(Variables$Mutation$insertPersonLastConfession._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastConfession != _undefined && lastConfession != null)
          'lastConfession': (lastConfession as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertPersonLastConfession<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastConfession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertPersonLastConfession(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastConfession,
  }) =>
      _res;
}

class Mutation$insertPersonLastConfession {
  Mutation$insertPersonLastConfession({
    this.insertHistoryConfessionHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertPersonLastConfession.fromJson(
      Map<String, dynamic> json) {
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastConfession(
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne
              .fromJson((l$insertHistoryConfessionHistoryOne
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne?
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
    if (!(other is Mutation$insertPersonLastConfession) ||
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

extension UtilityExtension$Mutation$insertPersonLastConfession
    on Mutation$insertPersonLastConfession {
  CopyWith$Mutation$insertPersonLastConfession<
          Mutation$insertPersonLastConfession>
      get copyWith => CopyWith$Mutation$insertPersonLastConfession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastConfession<TRes> {
  factory CopyWith$Mutation$insertPersonLastConfession(
    Mutation$insertPersonLastConfession instance,
    TRes Function(Mutation$insertPersonLastConfession) then,
  ) = _CopyWithImpl$Mutation$insertPersonLastConfession;

  factory CopyWith$Mutation$insertPersonLastConfession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastConfession;

  TRes call({
    Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne;
}

class _CopyWithImpl$Mutation$insertPersonLastConfession<TRes>
    implements CopyWith$Mutation$insertPersonLastConfession<TRes> {
  _CopyWithImpl$Mutation$insertPersonLastConfession(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastConfession _instance;

  final TRes Function(Mutation$insertPersonLastConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastConfession(
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastConfession<TRes>
    implements CopyWith$Mutation$insertPersonLastConfession<TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastConfession(this._res);

  TRes _res;

  call({
    Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
          TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne
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
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastConfession')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
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
                            name: NameNode(value: 'attendance_days_pkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'update_columns'),
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
                    name: NameNode(
                        value: 'confession_history_dayID_personID_key')),
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

class Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne {
  Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne({
    required this.person,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
      person: Fragment$Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person person;

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
            is Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne) ||
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

extension UtilityExtension$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne
    on Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne {
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
    Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne
        instance,
    TRes Function(
            Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne;

  factory CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne;

  TRes call({
    Fragment$Person? person,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get person;
}

class _CopyWithImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne
      _instance;

  final TRes Function(
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment$Person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get person =>
      CopyWith$Fragment$Person.stub(_res);
}

class Variables$Mutation$insertPersonLastKodas {
  factory Variables$Mutation$insertPersonLastKodas({
    required UuidValue personId,
    required DateTime lastKodas,
  }) =>
      Variables$Mutation$insertPersonLastKodas._({
        r'personId': personId,
        r'lastKodas': lastKodas,
      });

  Variables$Mutation$insertPersonLastKodas._(this._$data);

  factory Variables$Mutation$insertPersonLastKodas.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastKodas = data['lastKodas'];
    result$data['lastKodas'] = dateFromString(l$lastKodas);
    return Variables$Mutation$insertPersonLastKodas._(result$data);
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

  CopyWith$Variables$Mutation$insertPersonLastKodas<
          Variables$Mutation$insertPersonLastKodas>
      get copyWith => CopyWith$Variables$Mutation$insertPersonLastKodas(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertPersonLastKodas) ||
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

abstract class CopyWith$Variables$Mutation$insertPersonLastKodas<TRes> {
  factory CopyWith$Variables$Mutation$insertPersonLastKodas(
    Variables$Mutation$insertPersonLastKodas instance,
    TRes Function(Variables$Mutation$insertPersonLastKodas) then,
  ) = _CopyWithImpl$Variables$Mutation$insertPersonLastKodas;

  factory CopyWith$Variables$Mutation$insertPersonLastKodas.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertPersonLastKodas;

  TRes call({
    UuidValue? personId,
    DateTime? lastKodas,
  });
}

class _CopyWithImpl$Variables$Mutation$insertPersonLastKodas<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastKodas<TRes> {
  _CopyWithImpl$Variables$Mutation$insertPersonLastKodas(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertPersonLastKodas _instance;

  final TRes Function(Variables$Mutation$insertPersonLastKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastKodas = _undefined,
  }) =>
      _then(Variables$Mutation$insertPersonLastKodas._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastKodas != _undefined && lastKodas != null)
          'lastKodas': (lastKodas as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertPersonLastKodas<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastKodas<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertPersonLastKodas(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastKodas,
  }) =>
      _res;
}

class Mutation$insertPersonLastKodas {
  Mutation$insertPersonLastKodas({
    this.insertHistoryKodasHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertPersonLastKodas.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastKodas(
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne
              .fromJson(
                  (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne?
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
    if (!(other is Mutation$insertPersonLastKodas) ||
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

extension UtilityExtension$Mutation$insertPersonLastKodas
    on Mutation$insertPersonLastKodas {
  CopyWith$Mutation$insertPersonLastKodas<Mutation$insertPersonLastKodas>
      get copyWith => CopyWith$Mutation$insertPersonLastKodas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastKodas<TRes> {
  factory CopyWith$Mutation$insertPersonLastKodas(
    Mutation$insertPersonLastKodas instance,
    TRes Function(Mutation$insertPersonLastKodas) then,
  ) = _CopyWithImpl$Mutation$insertPersonLastKodas;

  factory CopyWith$Mutation$insertPersonLastKodas.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastKodas;

  TRes call({
    Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
}

class _CopyWithImpl$Mutation$insertPersonLastKodas<TRes>
    implements CopyWith$Mutation$insertPersonLastKodas<TRes> {
  _CopyWithImpl$Mutation$insertPersonLastKodas(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastKodas _instance;

  final TRes Function(Mutation$insertPersonLastKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastKodas(
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastKodas<TRes>
    implements CopyWith$Mutation$insertPersonLastKodas<TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastKodas(this._res);

  TRes _res;

  call({
    Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne
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
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
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
                            name: NameNode(value: 'attendance_days_pkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'update_columns'),
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
                    name: NameNode(value: 'kodas_history_dayID_personID_key')),
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

class Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne {
  Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne({
    required this.person,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
      person: Fragment$Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person person;

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
            is Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne) ||
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

extension UtilityExtension$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne
    on Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne {
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<
          Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
    Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne;

  factory CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne;

  TRes call({
    Fragment$Person? person,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get person;
}

class _CopyWithImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne _instance;

  final TRes Function(
      Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment$Person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get person =>
      CopyWith$Fragment$Person.stub(_res);
}

class Variables$Mutation$insertPersonLastCall {
  factory Variables$Mutation$insertPersonLastCall({
    required UuidValue personId,
    required DateTime lastCall,
  }) =>
      Variables$Mutation$insertPersonLastCall._({
        r'personId': personId,
        r'lastCall': lastCall,
      });

  Variables$Mutation$insertPersonLastCall._(this._$data);

  factory Variables$Mutation$insertPersonLastCall.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastCall = data['lastCall'];
    result$data['lastCall'] = tstzFromString(l$lastCall);
    return Variables$Mutation$insertPersonLastCall._(result$data);
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

  CopyWith$Variables$Mutation$insertPersonLastCall<
          Variables$Mutation$insertPersonLastCall>
      get copyWith => CopyWith$Variables$Mutation$insertPersonLastCall(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertPersonLastCall) ||
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

abstract class CopyWith$Variables$Mutation$insertPersonLastCall<TRes> {
  factory CopyWith$Variables$Mutation$insertPersonLastCall(
    Variables$Mutation$insertPersonLastCall instance,
    TRes Function(Variables$Mutation$insertPersonLastCall) then,
  ) = _CopyWithImpl$Variables$Mutation$insertPersonLastCall;

  factory CopyWith$Variables$Mutation$insertPersonLastCall.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertPersonLastCall;

  TRes call({
    UuidValue? personId,
    DateTime? lastCall,
  });
}

class _CopyWithImpl$Variables$Mutation$insertPersonLastCall<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastCall<TRes> {
  _CopyWithImpl$Variables$Mutation$insertPersonLastCall(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertPersonLastCall _instance;

  final TRes Function(Variables$Mutation$insertPersonLastCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastCall = _undefined,
  }) =>
      _then(Variables$Mutation$insertPersonLastCall._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastCall != _undefined && lastCall != null)
          'lastCall': (lastCall as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertPersonLastCall<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastCall<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertPersonLastCall(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastCall,
  }) =>
      _res;
}

class Mutation$insertPersonLastCall {
  Mutation$insertPersonLastCall({
    this.insertHistoryCallHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertPersonLastCall.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryCallHistoryOne = json['insertHistoryCallHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastCall(
      insertHistoryCallHistoryOne: l$insertHistoryCallHistoryOne == null
          ? null
          : Mutation$insertPersonLastCall$insertHistoryCallHistoryOne.fromJson(
              (l$insertHistoryCallHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastCall$insertHistoryCallHistoryOne?
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
    if (!(other is Mutation$insertPersonLastCall) ||
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

extension UtilityExtension$Mutation$insertPersonLastCall
    on Mutation$insertPersonLastCall {
  CopyWith$Mutation$insertPersonLastCall<Mutation$insertPersonLastCall>
      get copyWith => CopyWith$Mutation$insertPersonLastCall(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastCall<TRes> {
  factory CopyWith$Mutation$insertPersonLastCall(
    Mutation$insertPersonLastCall instance,
    TRes Function(Mutation$insertPersonLastCall) then,
  ) = _CopyWithImpl$Mutation$insertPersonLastCall;

  factory CopyWith$Mutation$insertPersonLastCall.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastCall;

  TRes call({
    Mutation$insertPersonLastCall$insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne;
}

class _CopyWithImpl$Mutation$insertPersonLastCall<TRes>
    implements CopyWith$Mutation$insertPersonLastCall<TRes> {
  _CopyWithImpl$Mutation$insertPersonLastCall(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastCall _instance;

  final TRes Function(Mutation$insertPersonLastCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryCallHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastCall(
        insertHistoryCallHistoryOne: insertHistoryCallHistoryOne == _undefined
            ? _instance.insertHistoryCallHistoryOne
            : (insertHistoryCallHistoryOne
                as Mutation$insertPersonLastCall$insertHistoryCallHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne {
    final local$insertHistoryCallHistoryOne =
        _instance.insertHistoryCallHistoryOne;
    return local$insertHistoryCallHistoryOne == null
        ? CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
            local$insertHistoryCallHistoryOne,
            (e) => call(insertHistoryCallHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastCall<TRes>
    implements CopyWith$Mutation$insertPersonLastCall<TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastCall(this._res);

  TRes _res;

  call({
    Mutation$insertPersonLastCall$insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne =>
          CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne
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
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
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

class Mutation$insertPersonLastCall$insertHistoryCallHistoryOne {
  Mutation$insertPersonLastCall$insertHistoryCallHistoryOne({
    required this.person,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Mutation$insertPersonLastCall$insertHistoryCallHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
      person: Fragment$Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person person;

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
    if (!(other is Mutation$insertPersonLastCall$insertHistoryCallHistoryOne) ||
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

extension UtilityExtension$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne
    on Mutation$insertPersonLastCall$insertHistoryCallHistoryOne {
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<
          Mutation$insertPersonLastCall$insertHistoryCallHistoryOne>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
    Mutation$insertPersonLastCall$insertHistoryCallHistoryOne instance,
    TRes Function(Mutation$insertPersonLastCall$insertHistoryCallHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne;

  factory CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne;

  TRes call({
    Fragment$Person? person,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get person;
}

class _CopyWithImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastCall$insertHistoryCallHistoryOne _instance;

  final TRes Function(Mutation$insertPersonLastCall$insertHistoryCallHistoryOne)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment$Person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get person =>
      CopyWith$Fragment$Person.stub(_res);
}

class Variables$Mutation$insertPersonLastVisit {
  factory Variables$Mutation$insertPersonLastVisit({
    required UuidValue personId,
    required DateTime lastVisit,
  }) =>
      Variables$Mutation$insertPersonLastVisit._({
        r'personId': personId,
        r'lastVisit': lastVisit,
      });

  Variables$Mutation$insertPersonLastVisit._(this._$data);

  factory Variables$Mutation$insertPersonLastVisit.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastVisit = data['lastVisit'];
    result$data['lastVisit'] = tstzFromString(l$lastVisit);
    return Variables$Mutation$insertPersonLastVisit._(result$data);
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

  CopyWith$Variables$Mutation$insertPersonLastVisit<
          Variables$Mutation$insertPersonLastVisit>
      get copyWith => CopyWith$Variables$Mutation$insertPersonLastVisit(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertPersonLastVisit) ||
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

abstract class CopyWith$Variables$Mutation$insertPersonLastVisit<TRes> {
  factory CopyWith$Variables$Mutation$insertPersonLastVisit(
    Variables$Mutation$insertPersonLastVisit instance,
    TRes Function(Variables$Mutation$insertPersonLastVisit) then,
  ) = _CopyWithImpl$Variables$Mutation$insertPersonLastVisit;

  factory CopyWith$Variables$Mutation$insertPersonLastVisit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertPersonLastVisit;

  TRes call({
    UuidValue? personId,
    DateTime? lastVisit,
  });
}

class _CopyWithImpl$Variables$Mutation$insertPersonLastVisit<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastVisit<TRes> {
  _CopyWithImpl$Variables$Mutation$insertPersonLastVisit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertPersonLastVisit _instance;

  final TRes Function(Variables$Mutation$insertPersonLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastVisit = _undefined,
  }) =>
      _then(Variables$Mutation$insertPersonLastVisit._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastVisit != _undefined && lastVisit != null)
          'lastVisit': (lastVisit as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertPersonLastVisit<TRes>
    implements CopyWith$Variables$Mutation$insertPersonLastVisit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertPersonLastVisit(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastVisit,
  }) =>
      _res;
}

class Mutation$insertPersonLastVisit {
  Mutation$insertPersonLastVisit({
    this.insertHistoryVisitHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertPersonLastVisit.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastVisit(
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne
              .fromJson(
                  (l$insertHistoryVisitHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne?
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
    if (!(other is Mutation$insertPersonLastVisit) ||
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

extension UtilityExtension$Mutation$insertPersonLastVisit
    on Mutation$insertPersonLastVisit {
  CopyWith$Mutation$insertPersonLastVisit<Mutation$insertPersonLastVisit>
      get copyWith => CopyWith$Mutation$insertPersonLastVisit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastVisit<TRes> {
  factory CopyWith$Mutation$insertPersonLastVisit(
    Mutation$insertPersonLastVisit instance,
    TRes Function(Mutation$insertPersonLastVisit) then,
  ) = _CopyWithImpl$Mutation$insertPersonLastVisit;

  factory CopyWith$Mutation$insertPersonLastVisit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastVisit;

  TRes call({
    Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl$Mutation$insertPersonLastVisit<TRes>
    implements CopyWith$Mutation$insertPersonLastVisit<TRes> {
  _CopyWithImpl$Mutation$insertPersonLastVisit(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastVisit _instance;

  final TRes Function(Mutation$insertPersonLastVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastVisit(
        insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
            ? _instance.insertHistoryVisitHistoryOne
            : (insertHistoryVisitHistoryOne
                as Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastVisit<TRes>
    implements CopyWith$Mutation$insertPersonLastVisit<TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastVisit(this._res);

  TRes _res;

  call({
    Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne =>
          CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne
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
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
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
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHistoryVisitHistoryOne'),
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
                value: VariableNode(name: NameNode(value: 'lastVisit')),
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

class Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne {
  Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne({
    required this.person,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
      person: Fragment$Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person person;

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
            is Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne) ||
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

extension UtilityExtension$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne
    on Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne {
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<
          Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
    Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne;

  factory CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne;

  TRes call({
    Fragment$Person? person,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get person;
}

class _CopyWithImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne _instance;

  final TRes Function(
      Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment$Person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get person =>
      CopyWith$Fragment$Person.stub(_res);
}
