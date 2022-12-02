import '../../../../../graphql/__generated__/schema.graphql.dart';
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

  static const _undefined = {};

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
    required this.$__typename,
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

  static const _undefined = {};

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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne {
  Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
      person:
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person
              .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person
      person;

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
    Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person?
        person,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
      TRes> get person;
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

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
        local$person, (e) => call(person: e));
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
    Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person?
        person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
          TRes>
      get person =>
          CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person
              .stub(_res);
}

class Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person {
  Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person
    on Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person {
  CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
    Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person
        instance,
    TRes Function(
            Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person;

  factory CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person
      _instance;

  final TRes Function(
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastConfession$insertHistoryConfessionHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
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

  static const _undefined = {};

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
    required this.$__typename,
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

  static const _undefined = {};

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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne {
  Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
      person: Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person
          .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person
      person;

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
    Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
      TRes> get person;
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

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
        local$person, (e) => call(person: e));
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
    Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
          TRes>
      get person =>
          CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person
              .stub(_res);
}

class Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person {
  Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person
    on Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person {
  CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
          Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
    Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person instance,
    TRes Function(
            Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person;

  factory CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person
      _instance;

  final TRes Function(
      Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastKodas$insertHistoryKodasHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
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

  static const _undefined = {};

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
    required this.$__typename,
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

  static const _undefined = {};

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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$insertPersonLastCall$insertHistoryCallHistoryOne {
  Mutation$insertPersonLastCall$insertHistoryCallHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastCall$insertHistoryCallHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
      person: Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person
          .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person person;

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
    Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
      TRes> get person;
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

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastCall$insertHistoryCallHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
        local$person, (e) => call(person: e));
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
    Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
          TRes>
      get person =>
          CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person
              .stub(_res);
}

class Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person {
  Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person
    on Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person {
  CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
          Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
    Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person instance,
    TRes Function(
            Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person;

  factory CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person
      _instance;

  final TRes Function(
      Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastCall$insertHistoryCallHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
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

  static const _undefined = {};

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
    required this.$__typename,
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

  static const _undefined = {};

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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne {
  Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
      person: Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person
          .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person
      person;

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
    Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
      TRes> get person;
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

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
        local$person, (e) => call(person: e));
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
    Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
          TRes>
      get person =>
          CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person
              .stub(_res);
}

class Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person {
  Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person
    on Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person {
  CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
          Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
    Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person instance,
    TRes Function(
            Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person;

  factory CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person
      _instance;

  final TRes Function(
      Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$insertPersonLastVisit$insertHistoryVisitHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updatePersonSpiritData {
  factory Variables$Mutation$updatePersonSpiritData({
    required UuidValue personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) =>
      Variables$Mutation$updatePersonSpiritData._({
        r'personId': personId,
        r'lastConfession': lastConfession,
        r'lastKodas': lastKodas,
      });

  Variables$Mutation$updatePersonSpiritData._(this._$data);

  factory Variables$Mutation$updatePersonSpiritData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastConfession = data['lastConfession'];
    result$data['lastConfession'] = dateFromString(l$lastConfession);
    final l$lastKodas = data['lastKodas'];
    result$data['lastKodas'] = dateFromString(l$lastKodas);
    return Variables$Mutation$updatePersonSpiritData._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  DateTime get lastConfession => (_$data['lastConfession'] as DateTime);
  DateTime get lastKodas => (_$data['lastKodas'] as DateTime);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$lastConfession = lastConfession;
    result$data['lastConfession'] = dateToString(l$lastConfession);
    final l$lastKodas = lastKodas;
    result$data['lastKodas'] = dateToString(l$lastKodas);
    return result$data;
  }

  CopyWith$Variables$Mutation$updatePersonSpiritData<
          Variables$Mutation$updatePersonSpiritData>
      get copyWith => CopyWith$Variables$Mutation$updatePersonSpiritData(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updatePersonSpiritData) ||
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
    final l$lastConfession = lastConfession;
    final l$lastKodas = lastKodas;
    return Object.hashAll([
      l$personId,
      l$lastConfession,
      l$lastKodas,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updatePersonSpiritData<TRes> {
  factory CopyWith$Variables$Mutation$updatePersonSpiritData(
    Variables$Mutation$updatePersonSpiritData instance,
    TRes Function(Variables$Mutation$updatePersonSpiritData) then,
  ) = _CopyWithImpl$Variables$Mutation$updatePersonSpiritData;

  factory CopyWith$Variables$Mutation$updatePersonSpiritData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updatePersonSpiritData;

  TRes call({
    UuidValue? personId,
    DateTime? lastConfession,
    DateTime? lastKodas,
  });
}

class _CopyWithImpl$Variables$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Variables$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithImpl$Variables$Mutation$updatePersonSpiritData(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updatePersonSpiritData _instance;

  final TRes Function(Variables$Mutation$updatePersonSpiritData) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? lastConfession = _undefined,
    Object? lastKodas = _undefined,
  }) =>
      _then(Variables$Mutation$updatePersonSpiritData._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastConfession != _undefined && lastConfession != null)
          'lastConfession': (lastConfession as DateTime),
        if (lastKodas != _undefined && lastKodas != null)
          'lastKodas': (lastKodas as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Variables$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updatePersonSpiritData(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastConfession,
    DateTime? lastKodas,
  }) =>
      _res;
}

class Mutation$updatePersonSpiritData {
  Mutation$updatePersonSpiritData({
    this.insertHistoryConfessionHistoryOne,
    this.insertHistoryKodasHistoryOne,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData(
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
              .fromJson((l$insertHistoryConfessionHistoryOne
                  as Map<String, dynamic>)),
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
              .fromJson(
                  (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?
      insertHistoryConfessionHistoryOne;

  final Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    _resultData['insertHistoryConfessionHistoryOne'] =
        l$insertHistoryConfessionHistoryOne?.toJson();
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    _resultData['insertHistoryKodasHistoryOne'] =
        l$insertHistoryKodasHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertHistoryConfessionHistoryOne,
      l$insertHistoryKodasHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePersonSpiritData) ||
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

extension UtilityExtension$Mutation$updatePersonSpiritData
    on Mutation$updatePersonSpiritData {
  CopyWith$Mutation$updatePersonSpiritData<Mutation$updatePersonSpiritData>
      get copyWith => CopyWith$Mutation$updatePersonSpiritData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData<TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData(
    Mutation$updatePersonSpiritData instance,
    TRes Function(Mutation$updatePersonSpiritData) then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData;

  factory CopyWith$Mutation$updatePersonSpiritData.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData;

  TRes call({
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne;
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
}

class _CopyWithImpl$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData _instance;

  final TRes Function(Mutation$updatePersonSpiritData) _then;

  static const _undefined = {};

  TRes call({
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData(
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?),
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }

  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData(this._res);

  TRes _res;

  call({
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
          TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
              .stub(_res);
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
              .stub(_res);
}

const documentNodeMutationupdatePersonSpiritData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updatePersonSpiritData'),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne {
  Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
      person:
          Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person
              .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person
      person;

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
            is Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
    on Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne {
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
          Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne instance,
    TRes Function(
            Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne;

  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne;

  TRes call({
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person?
        person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
      TRes> get person;
}

class _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
      _instance;

  final TRes Function(
      Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person?
        person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
          TRes>
      get person =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person
              .stub(_res);
}

class Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person {
  Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person
    on Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person {
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
          Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person
        instance,
    TRes Function(
            Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person;

  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person
      _instance;

  final TRes Function(
          Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne {
  Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
      person:
          Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person
              .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person
      person;

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
            is Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
    on Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne {
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
          Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne;

  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne;

  TRes call({
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
      TRes> get person;
}

class _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne _instance;

  final TRes Function(
      Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
          TRes>
      get person =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person
              .stub(_res);
}

class Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person {
  Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person
    on Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person {
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
          Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person
        instance,
    TRes Function(
            Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person;

  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person
      _instance;

  final TRes Function(
          Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$deletePerson {
  factory Variables$Mutation$deletePerson({required UuidValue personId}) =>
      Variables$Mutation$deletePerson._({
        r'personId': personId,
      });

  Variables$Mutation$deletePerson._(this._$data);

  factory Variables$Mutation$deletePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    return Variables$Mutation$deletePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    return result$data;
  }

  CopyWith$Variables$Mutation$deletePerson<Variables$Mutation$deletePerson>
      get copyWith => CopyWith$Variables$Mutation$deletePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deletePerson) ||
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

abstract class CopyWith$Variables$Mutation$deletePerson<TRes> {
  factory CopyWith$Variables$Mutation$deletePerson(
    Variables$Mutation$deletePerson instance,
    TRes Function(Variables$Mutation$deletePerson) then,
  ) = _CopyWithImpl$Variables$Mutation$deletePerson;

  factory CopyWith$Variables$Mutation$deletePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deletePerson;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl$Variables$Mutation$deletePerson<TRes>
    implements CopyWith$Variables$Mutation$deletePerson<TRes> {
  _CopyWithImpl$Variables$Mutation$deletePerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deletePerson _instance;

  final TRes Function(Variables$Mutation$deletePerson) _then;

  static const _undefined = {};

  TRes call({Object? personId = _undefined}) =>
      _then(Variables$Mutation$deletePerson._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deletePerson<TRes>
    implements CopyWith$Variables$Mutation$deletePerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deletePerson(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Mutation$deletePerson {
  Mutation$deletePerson({
    this.deletePersonsByPk,
    required this.$__typename,
  });

  factory Mutation$deletePerson.fromJson(Map<String, dynamic> json) {
    final l$deletePersonsByPk = json['deletePersonsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$deletePerson(
      deletePersonsByPk: l$deletePersonsByPk == null
          ? null
          : Mutation$deletePerson$deletePersonsByPk.fromJson(
              (l$deletePersonsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$deletePerson$deletePersonsByPk? deletePersonsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePersonsByPk = deletePersonsByPk;
    _resultData['deletePersonsByPk'] = l$deletePersonsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePersonsByPk = deletePersonsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deletePersonsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deletePerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePersonsByPk = deletePersonsByPk;
    final lOther$deletePersonsByPk = other.deletePersonsByPk;
    if (l$deletePersonsByPk != lOther$deletePersonsByPk) {
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

extension UtilityExtension$Mutation$deletePerson on Mutation$deletePerson {
  CopyWith$Mutation$deletePerson<Mutation$deletePerson> get copyWith =>
      CopyWith$Mutation$deletePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deletePerson<TRes> {
  factory CopyWith$Mutation$deletePerson(
    Mutation$deletePerson instance,
    TRes Function(Mutation$deletePerson) then,
  ) = _CopyWithImpl$Mutation$deletePerson;

  factory CopyWith$Mutation$deletePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deletePerson;

  TRes call({
    Mutation$deletePerson$deletePersonsByPk? deletePersonsByPk,
    String? $__typename,
  });
  CopyWith$Mutation$deletePerson$deletePersonsByPk<TRes> get deletePersonsByPk;
}

class _CopyWithImpl$Mutation$deletePerson<TRes>
    implements CopyWith$Mutation$deletePerson<TRes> {
  _CopyWithImpl$Mutation$deletePerson(
    this._instance,
    this._then,
  );

  final Mutation$deletePerson _instance;

  final TRes Function(Mutation$deletePerson) _then;

  static const _undefined = {};

  TRes call({
    Object? deletePersonsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deletePerson(
        deletePersonsByPk: deletePersonsByPk == _undefined
            ? _instance.deletePersonsByPk
            : (deletePersonsByPk as Mutation$deletePerson$deletePersonsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$deletePerson$deletePersonsByPk<TRes> get deletePersonsByPk {
    final local$deletePersonsByPk = _instance.deletePersonsByPk;
    return local$deletePersonsByPk == null
        ? CopyWith$Mutation$deletePerson$deletePersonsByPk.stub(
            _then(_instance))
        : CopyWith$Mutation$deletePerson$deletePersonsByPk(
            local$deletePersonsByPk, (e) => call(deletePersonsByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$deletePerson<TRes>
    implements CopyWith$Mutation$deletePerson<TRes> {
  _CopyWithStubImpl$Mutation$deletePerson(this._res);

  TRes _res;

  call({
    Mutation$deletePerson$deletePersonsByPk? deletePersonsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$deletePerson$deletePersonsByPk<TRes>
      get deletePersonsByPk =>
          CopyWith$Mutation$deletePerson$deletePersonsByPk.stub(_res);
}

const documentNodeMutationdeletePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deletePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
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
        name: NameNode(value: 'deletePersonsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'personId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$deletePerson$deletePersonsByPk {
  Mutation$deletePerson$deletePersonsByPk({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$deletePerson$deletePersonsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$deletePerson$deletePersonsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deletePerson$deletePersonsByPk) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$deletePerson$deletePersonsByPk
    on Mutation$deletePerson$deletePersonsByPk {
  CopyWith$Mutation$deletePerson$deletePersonsByPk<
          Mutation$deletePerson$deletePersonsByPk>
      get copyWith => CopyWith$Mutation$deletePerson$deletePersonsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deletePerson$deletePersonsByPk<TRes> {
  factory CopyWith$Mutation$deletePerson$deletePersonsByPk(
    Mutation$deletePerson$deletePersonsByPk instance,
    TRes Function(Mutation$deletePerson$deletePersonsByPk) then,
  ) = _CopyWithImpl$Mutation$deletePerson$deletePersonsByPk;

  factory CopyWith$Mutation$deletePerson$deletePersonsByPk.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deletePerson$deletePersonsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$deletePerson$deletePersonsByPk<TRes>
    implements CopyWith$Mutation$deletePerson$deletePersonsByPk<TRes> {
  _CopyWithImpl$Mutation$deletePerson$deletePersonsByPk(
    this._instance,
    this._then,
  );

  final Mutation$deletePerson$deletePersonsByPk _instance;

  final TRes Function(Mutation$deletePerson$deletePersonsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deletePerson$deletePersonsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$deletePerson$deletePersonsByPk<TRes>
    implements CopyWith$Mutation$deletePerson$deletePersonsByPk<TRes> {
  _CopyWithStubImpl$Mutation$deletePerson$deletePersonsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updatePerson {
  factory Variables$Mutation$updatePerson({
    required UuidValue personId,
    required Input$PersonsSetInput newPerson,
    required List<Input$PersonsGroupsInsertInput> newGroups,
    List<UuidValue>? deleteGroups,
    required List<Input$PersonsServicesInsertInput> newServices,
    List<UuidValue>? deleteServices,
    required List<Input$PersonsTagsInsertInput> newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  }) =>
      Variables$Mutation$updatePerson._({
        r'personId': personId,
        r'newPerson': newPerson,
        r'newGroups': newGroups,
        if (deleteGroups != null) r'deleteGroups': deleteGroups,
        r'newServices': newServices,
        if (deleteServices != null) r'deleteServices': deleteServices,
        r'newTags': newTags,
        if (deleteTags != null) r'deleteTags': deleteTags,
        if (lastConfession != null) r'lastConfession': lastConfession,
        if (lastKodas != null) r'lastKodas': lastKodas,
        if (lastCall != null) r'lastCall': lastCall,
        if (lastVisit != null) r'lastVisit': lastVisit,
      });

  Variables$Mutation$updatePerson._(this._$data);

  factory Variables$Mutation$updatePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$newPerson = data['newPerson'];
    result$data['newPerson'] =
        Input$PersonsSetInput.fromJson((l$newPerson as Map<String, dynamic>));
    final l$newGroups = data['newGroups'];
    result$data['newGroups'] = (l$newGroups as List<dynamic>)
        .map((e) => Input$PersonsGroupsInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('deleteGroups')) {
      final l$deleteGroups = data['deleteGroups'];
      result$data['deleteGroups'] = (l$deleteGroups as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    final l$newServices = data['newServices'];
    result$data['newServices'] = (l$newServices as List<dynamic>)
        .map((e) => Input$PersonsServicesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('deleteServices')) {
      final l$deleteServices = data['deleteServices'];
      result$data['deleteServices'] = (l$deleteServices as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    final l$newTags = data['newTags'];
    result$data['newTags'] = (l$newTags as List<dynamic>)
        .map((e) =>
            Input$PersonsTagsInsertInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('deleteTags')) {
      final l$deleteTags = data['deleteTags'];
      result$data['deleteTags'] = (l$deleteTags as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('lastConfession')) {
      final l$lastConfession = data['lastConfession'];
      result$data['lastConfession'] =
          l$lastConfession == null ? null : dateFromString(l$lastConfession);
    }
    if (data.containsKey('lastKodas')) {
      final l$lastKodas = data['lastKodas'];
      result$data['lastKodas'] =
          l$lastKodas == null ? null : dateFromString(l$lastKodas);
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] =
          l$lastCall == null ? null : tstzFromString(l$lastCall);
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] =
          l$lastVisit == null ? null : tstzFromString(l$lastVisit);
    }
    return Variables$Mutation$updatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  Input$PersonsSetInput get newPerson =>
      (_$data['newPerson'] as Input$PersonsSetInput);
  List<Input$PersonsGroupsInsertInput> get newGroups =>
      (_$data['newGroups'] as List<Input$PersonsGroupsInsertInput>);
  List<UuidValue>? get deleteGroups =>
      (_$data['deleteGroups'] as List<UuidValue>?);
  List<Input$PersonsServicesInsertInput> get newServices =>
      (_$data['newServices'] as List<Input$PersonsServicesInsertInput>);
  List<UuidValue>? get deleteServices =>
      (_$data['deleteServices'] as List<UuidValue>?);
  List<Input$PersonsTagsInsertInput> get newTags =>
      (_$data['newTags'] as List<Input$PersonsTagsInsertInput>);
  List<UuidValue>? get deleteTags => (_$data['deleteTags'] as List<UuidValue>?);
  DateTime? get lastConfession => (_$data['lastConfession'] as DateTime?);
  DateTime? get lastKodas => (_$data['lastKodas'] as DateTime?);
  DateTime? get lastCall => (_$data['lastCall'] as DateTime?);
  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$newPerson = newPerson;
    result$data['newPerson'] = l$newPerson.toJson();
    final l$newGroups = newGroups;
    result$data['newGroups'] = l$newGroups.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deleteGroups')) {
      final l$deleteGroups = deleteGroups;
      result$data['deleteGroups'] =
          l$deleteGroups?.map((e) => uuidToString(e)).toList();
    }
    final l$newServices = newServices;
    result$data['newServices'] = l$newServices.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deleteServices')) {
      final l$deleteServices = deleteServices;
      result$data['deleteServices'] =
          l$deleteServices?.map((e) => uuidToString(e)).toList();
    }
    final l$newTags = newTags;
    result$data['newTags'] = l$newTags.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deleteTags')) {
      final l$deleteTags = deleteTags;
      result$data['deleteTags'] =
          l$deleteTags?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('lastConfession')) {
      final l$lastConfession = lastConfession;
      result$data['lastConfession'] =
          l$lastConfession == null ? null : dateToString(l$lastConfession);
    }
    if (_$data.containsKey('lastKodas')) {
      final l$lastKodas = lastKodas;
      result$data['lastKodas'] =
          l$lastKodas == null ? null : dateToString(l$lastKodas);
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] =
          l$lastCall == null ? null : tstzToString(l$lastCall);
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] =
          l$lastVisit == null ? null : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$updatePerson<Variables$Mutation$updatePerson>
      get copyWith => CopyWith$Variables$Mutation$updatePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updatePerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$newPerson = newPerson;
    final lOther$newPerson = other.newPerson;
    if (l$newPerson != lOther$newPerson) {
      return false;
    }
    final l$newGroups = newGroups;
    final lOther$newGroups = other.newGroups;
    if (l$newGroups.length != lOther$newGroups.length) {
      return false;
    }
    for (int i = 0; i < l$newGroups.length; i++) {
      final l$newGroups$entry = l$newGroups[i];
      final lOther$newGroups$entry = lOther$newGroups[i];
      if (l$newGroups$entry != lOther$newGroups$entry) {
        return false;
      }
    }
    final l$deleteGroups = deleteGroups;
    final lOther$deleteGroups = other.deleteGroups;
    if (_$data.containsKey('deleteGroups') !=
        other._$data.containsKey('deleteGroups')) {
      return false;
    }
    if (l$deleteGroups != null && lOther$deleteGroups != null) {
      if (l$deleteGroups.length != lOther$deleteGroups.length) {
        return false;
      }
      for (int i = 0; i < l$deleteGroups.length; i++) {
        final l$deleteGroups$entry = l$deleteGroups[i];
        final lOther$deleteGroups$entry = lOther$deleteGroups[i];
        if (l$deleteGroups$entry != lOther$deleteGroups$entry) {
          return false;
        }
      }
    } else if (l$deleteGroups != lOther$deleteGroups) {
      return false;
    }
    final l$newServices = newServices;
    final lOther$newServices = other.newServices;
    if (l$newServices.length != lOther$newServices.length) {
      return false;
    }
    for (int i = 0; i < l$newServices.length; i++) {
      final l$newServices$entry = l$newServices[i];
      final lOther$newServices$entry = lOther$newServices[i];
      if (l$newServices$entry != lOther$newServices$entry) {
        return false;
      }
    }
    final l$deleteServices = deleteServices;
    final lOther$deleteServices = other.deleteServices;
    if (_$data.containsKey('deleteServices') !=
        other._$data.containsKey('deleteServices')) {
      return false;
    }
    if (l$deleteServices != null && lOther$deleteServices != null) {
      if (l$deleteServices.length != lOther$deleteServices.length) {
        return false;
      }
      for (int i = 0; i < l$deleteServices.length; i++) {
        final l$deleteServices$entry = l$deleteServices[i];
        final lOther$deleteServices$entry = lOther$deleteServices[i];
        if (l$deleteServices$entry != lOther$deleteServices$entry) {
          return false;
        }
      }
    } else if (l$deleteServices != lOther$deleteServices) {
      return false;
    }
    final l$newTags = newTags;
    final lOther$newTags = other.newTags;
    if (l$newTags.length != lOther$newTags.length) {
      return false;
    }
    for (int i = 0; i < l$newTags.length; i++) {
      final l$newTags$entry = l$newTags[i];
      final lOther$newTags$entry = lOther$newTags[i];
      if (l$newTags$entry != lOther$newTags$entry) {
        return false;
      }
    }
    final l$deleteTags = deleteTags;
    final lOther$deleteTags = other.deleteTags;
    if (_$data.containsKey('deleteTags') !=
        other._$data.containsKey('deleteTags')) {
      return false;
    }
    if (l$deleteTags != null && lOther$deleteTags != null) {
      if (l$deleteTags.length != lOther$deleteTags.length) {
        return false;
      }
      for (int i = 0; i < l$deleteTags.length; i++) {
        final l$deleteTags$entry = l$deleteTags[i];
        final lOther$deleteTags$entry = lOther$deleteTags[i];
        if (l$deleteTags$entry != lOther$deleteTags$entry) {
          return false;
        }
      }
    } else if (l$deleteTags != lOther$deleteTags) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (_$data.containsKey('lastConfession') !=
        other._$data.containsKey('lastConfession')) {
      return false;
    }
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (_$data.containsKey('lastKodas') !=
        other._$data.containsKey('lastKodas')) {
      return false;
    }
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (_$data.containsKey('lastCall') !=
        other._$data.containsKey('lastCall')) {
      return false;
    }
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$newPerson = newPerson;
    final l$newGroups = newGroups;
    final l$deleteGroups = deleteGroups;
    final l$newServices = newServices;
    final l$deleteServices = deleteServices;
    final l$newTags = newTags;
    final l$deleteTags = deleteTags;
    final l$lastConfession = lastConfession;
    final l$lastKodas = lastKodas;
    final l$lastCall = lastCall;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      l$personId,
      l$newPerson,
      Object.hashAll(l$newGroups.map((v) => v)),
      _$data.containsKey('deleteGroups')
          ? l$deleteGroups == null
              ? null
              : Object.hashAll(l$deleteGroups.map((v) => v))
          : const {},
      Object.hashAll(l$newServices.map((v) => v)),
      _$data.containsKey('deleteServices')
          ? l$deleteServices == null
              ? null
              : Object.hashAll(l$deleteServices.map((v) => v))
          : const {},
      Object.hashAll(l$newTags.map((v) => v)),
      _$data.containsKey('deleteTags')
          ? l$deleteTags == null
              ? null
              : Object.hashAll(l$deleteTags.map((v) => v))
          : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updatePerson<TRes> {
  factory CopyWith$Variables$Mutation$updatePerson(
    Variables$Mutation$updatePerson instance,
    TRes Function(Variables$Mutation$updatePerson) then,
  ) = _CopyWithImpl$Variables$Mutation$updatePerson;

  factory CopyWith$Variables$Mutation$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updatePerson;

  TRes call({
    UuidValue? personId,
    Input$PersonsSetInput? newPerson,
    List<Input$PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input$PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input$PersonsTagsInsertInput>? newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  });
}

class _CopyWithImpl$Variables$Mutation$updatePerson<TRes>
    implements CopyWith$Variables$Mutation$updatePerson<TRes> {
  _CopyWithImpl$Variables$Mutation$updatePerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updatePerson _instance;

  final TRes Function(Variables$Mutation$updatePerson) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? newPerson = _undefined,
    Object? newGroups = _undefined,
    Object? deleteGroups = _undefined,
    Object? newServices = _undefined,
    Object? deleteServices = _undefined,
    Object? newTags = _undefined,
    Object? deleteTags = _undefined,
    Object? lastConfession = _undefined,
    Object? lastKodas = _undefined,
    Object? lastCall = _undefined,
    Object? lastVisit = _undefined,
  }) =>
      _then(Variables$Mutation$updatePerson._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (newPerson != _undefined && newPerson != null)
          'newPerson': (newPerson as Input$PersonsSetInput),
        if (newGroups != _undefined && newGroups != null)
          'newGroups': (newGroups as List<Input$PersonsGroupsInsertInput>),
        if (deleteGroups != _undefined)
          'deleteGroups': (deleteGroups as List<UuidValue>?),
        if (newServices != _undefined && newServices != null)
          'newServices':
              (newServices as List<Input$PersonsServicesInsertInput>),
        if (deleteServices != _undefined)
          'deleteServices': (deleteServices as List<UuidValue>?),
        if (newTags != _undefined && newTags != null)
          'newTags': (newTags as List<Input$PersonsTagsInsertInput>),
        if (deleteTags != _undefined)
          'deleteTags': (deleteTags as List<UuidValue>?),
        if (lastConfession != _undefined)
          'lastConfession': (lastConfession as DateTime?),
        if (lastKodas != _undefined) 'lastKodas': (lastKodas as DateTime?),
        if (lastCall != _undefined) 'lastCall': (lastCall as DateTime?),
        if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updatePerson<TRes>
    implements CopyWith$Variables$Mutation$updatePerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updatePerson(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    Input$PersonsSetInput? newPerson,
    List<Input$PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input$PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input$PersonsTagsInsertInput>? newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
  }) =>
      _res;
}

class Mutation$updatePerson {
  Mutation$updatePerson({
    this.updatePersonsByPk,
    this.insertPersonsServices,
    this.insertPersonsGroups,
    this.insertPersonsTags,
    this.deletePersonsTags,
    this.deletePersonsGroups,
    this.deletePersonsServices,
    this.insertHistoryConfessionHistoryOne,
    this.insertHistoryKodasHistoryOne,
    this.insertHistoryCallHistoryOne,
    this.insertHistoryVisitHistoryOne,
    required this.$__typename,
  });

  factory Mutation$updatePerson.fromJson(Map<String, dynamic> json) {
    final l$updatePersonsByPk = json['updatePersonsByPk'];
    final l$insertPersonsServices = json['insertPersonsServices'];
    final l$insertPersonsGroups = json['insertPersonsGroups'];
    final l$insertPersonsTags = json['insertPersonsTags'];
    final l$deletePersonsTags = json['deletePersonsTags'];
    final l$deletePersonsGroups = json['deletePersonsGroups'];
    final l$deletePersonsServices = json['deletePersonsServices'];
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$insertHistoryCallHistoryOne = json['insertHistoryCallHistoryOne'];
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson(
      updatePersonsByPk: l$updatePersonsByPk == null
          ? null
          : Mutation$updatePerson$updatePersonsByPk.fromJson(
              (l$updatePersonsByPk as Map<String, dynamic>)),
      insertPersonsServices: l$insertPersonsServices == null
          ? null
          : Mutation$updatePerson$insertPersonsServices.fromJson(
              (l$insertPersonsServices as Map<String, dynamic>)),
      insertPersonsGroups: l$insertPersonsGroups == null
          ? null
          : Mutation$updatePerson$insertPersonsGroups.fromJson(
              (l$insertPersonsGroups as Map<String, dynamic>)),
      insertPersonsTags: l$insertPersonsTags == null
          ? null
          : Mutation$updatePerson$insertPersonsTags.fromJson(
              (l$insertPersonsTags as Map<String, dynamic>)),
      deletePersonsTags: l$deletePersonsTags == null
          ? null
          : Mutation$updatePerson$deletePersonsTags.fromJson(
              (l$deletePersonsTags as Map<String, dynamic>)),
      deletePersonsGroups: l$deletePersonsGroups == null
          ? null
          : Mutation$updatePerson$deletePersonsGroups.fromJson(
              (l$deletePersonsGroups as Map<String, dynamic>)),
      deletePersonsServices: l$deletePersonsServices == null
          ? null
          : Mutation$updatePerson$deletePersonsServices.fromJson(
              (l$deletePersonsServices as Map<String, dynamic>)),
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation$updatePerson$insertHistoryConfessionHistoryOne.fromJson(
              (l$insertHistoryConfessionHistoryOne as Map<String, dynamic>)),
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation$updatePerson$insertHistoryKodasHistoryOne.fromJson(
              (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      insertHistoryCallHistoryOne: l$insertHistoryCallHistoryOne == null
          ? null
          : Mutation$updatePerson$insertHistoryCallHistoryOne.fromJson(
              (l$insertHistoryCallHistoryOne as Map<String, dynamic>)),
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation$updatePerson$insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$updatePersonsByPk? updatePersonsByPk;

  final Mutation$updatePerson$insertPersonsServices? insertPersonsServices;

  final Mutation$updatePerson$insertPersonsGroups? insertPersonsGroups;

  final Mutation$updatePerson$insertPersonsTags? insertPersonsTags;

  final Mutation$updatePerson$deletePersonsTags? deletePersonsTags;

  final Mutation$updatePerson$deletePersonsGroups? deletePersonsGroups;

  final Mutation$updatePerson$deletePersonsServices? deletePersonsServices;

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne?
      insertHistoryConfessionHistoryOne;

  final Mutation$updatePerson$insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final Mutation$updatePerson$insertHistoryCallHistoryOne?
      insertHistoryCallHistoryOne;

  final Mutation$updatePerson$insertHistoryVisitHistoryOne?
      insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePersonsByPk = updatePersonsByPk;
    _resultData['updatePersonsByPk'] = l$updatePersonsByPk?.toJson();
    final l$insertPersonsServices = insertPersonsServices;
    _resultData['insertPersonsServices'] = l$insertPersonsServices?.toJson();
    final l$insertPersonsGroups = insertPersonsGroups;
    _resultData['insertPersonsGroups'] = l$insertPersonsGroups?.toJson();
    final l$insertPersonsTags = insertPersonsTags;
    _resultData['insertPersonsTags'] = l$insertPersonsTags?.toJson();
    final l$deletePersonsTags = deletePersonsTags;
    _resultData['deletePersonsTags'] = l$deletePersonsTags?.toJson();
    final l$deletePersonsGroups = deletePersonsGroups;
    _resultData['deletePersonsGroups'] = l$deletePersonsGroups?.toJson();
    final l$deletePersonsServices = deletePersonsServices;
    _resultData['deletePersonsServices'] = l$deletePersonsServices?.toJson();
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    _resultData['insertHistoryConfessionHistoryOne'] =
        l$insertHistoryConfessionHistoryOne?.toJson();
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    _resultData['insertHistoryKodasHistoryOne'] =
        l$insertHistoryKodasHistoryOne?.toJson();
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    _resultData['insertHistoryCallHistoryOne'] =
        l$insertHistoryCallHistoryOne?.toJson();
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] =
        l$insertHistoryVisitHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePersonsByPk = updatePersonsByPk;
    final l$insertPersonsServices = insertPersonsServices;
    final l$insertPersonsGroups = insertPersonsGroups;
    final l$insertPersonsTags = insertPersonsTags;
    final l$deletePersonsTags = deletePersonsTags;
    final l$deletePersonsGroups = deletePersonsGroups;
    final l$deletePersonsServices = deletePersonsServices;
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePersonsByPk,
      l$insertPersonsServices,
      l$insertPersonsGroups,
      l$insertPersonsTags,
      l$deletePersonsTags,
      l$deletePersonsGroups,
      l$deletePersonsServices,
      l$insertHistoryConfessionHistoryOne,
      l$insertHistoryKodasHistoryOne,
      l$insertHistoryCallHistoryOne,
      l$insertHistoryVisitHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePersonsByPk = updatePersonsByPk;
    final lOther$updatePersonsByPk = other.updatePersonsByPk;
    if (l$updatePersonsByPk != lOther$updatePersonsByPk) {
      return false;
    }
    final l$insertPersonsServices = insertPersonsServices;
    final lOther$insertPersonsServices = other.insertPersonsServices;
    if (l$insertPersonsServices != lOther$insertPersonsServices) {
      return false;
    }
    final l$insertPersonsGroups = insertPersonsGroups;
    final lOther$insertPersonsGroups = other.insertPersonsGroups;
    if (l$insertPersonsGroups != lOther$insertPersonsGroups) {
      return false;
    }
    final l$insertPersonsTags = insertPersonsTags;
    final lOther$insertPersonsTags = other.insertPersonsTags;
    if (l$insertPersonsTags != lOther$insertPersonsTags) {
      return false;
    }
    final l$deletePersonsTags = deletePersonsTags;
    final lOther$deletePersonsTags = other.deletePersonsTags;
    if (l$deletePersonsTags != lOther$deletePersonsTags) {
      return false;
    }
    final l$deletePersonsGroups = deletePersonsGroups;
    final lOther$deletePersonsGroups = other.deletePersonsGroups;
    if (l$deletePersonsGroups != lOther$deletePersonsGroups) {
      return false;
    }
    final l$deletePersonsServices = deletePersonsServices;
    final lOther$deletePersonsServices = other.deletePersonsServices;
    if (l$deletePersonsServices != lOther$deletePersonsServices) {
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
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final lOther$insertHistoryKodasHistoryOne =
        other.insertHistoryKodasHistoryOne;
    if (l$insertHistoryKodasHistoryOne != lOther$insertHistoryKodasHistoryOne) {
      return false;
    }
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final lOther$insertHistoryCallHistoryOne =
        other.insertHistoryCallHistoryOne;
    if (l$insertHistoryCallHistoryOne != lOther$insertHistoryCallHistoryOne) {
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

extension UtilityExtension$Mutation$updatePerson on Mutation$updatePerson {
  CopyWith$Mutation$updatePerson<Mutation$updatePerson> get copyWith =>
      CopyWith$Mutation$updatePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePerson<TRes> {
  factory CopyWith$Mutation$updatePerson(
    Mutation$updatePerson instance,
    TRes Function(Mutation$updatePerson) then,
  ) = _CopyWithImpl$Mutation$updatePerson;

  factory CopyWith$Mutation$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson;

  TRes call({
    Mutation$updatePerson$updatePersonsByPk? updatePersonsByPk,
    Mutation$updatePerson$insertPersonsServices? insertPersonsServices,
    Mutation$updatePerson$insertPersonsGroups? insertPersonsGroups,
    Mutation$updatePerson$insertPersonsTags? insertPersonsTags,
    Mutation$updatePerson$deletePersonsTags? deletePersonsTags,
    Mutation$updatePerson$deletePersonsGroups? deletePersonsGroups,
    Mutation$updatePerson$deletePersonsServices? deletePersonsServices,
    Mutation$updatePerson$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePerson$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    Mutation$updatePerson$insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    Mutation$updatePerson$insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$updatePersonsByPk<TRes> get updatePersonsByPk;
  CopyWith$Mutation$updatePerson$insertPersonsServices<TRes>
      get insertPersonsServices;
  CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes>
      get insertPersonsGroups;
  CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> get insertPersonsTags;
  CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> get deletePersonsTags;
  CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes>
      get deletePersonsGroups;
  CopyWith$Mutation$updatePerson$deletePersonsServices<TRes>
      get deletePersonsServices;
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne;
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne;
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl$Mutation$updatePerson<TRes>
    implements CopyWith$Mutation$updatePerson<TRes> {
  _CopyWithImpl$Mutation$updatePerson(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson _instance;

  final TRes Function(Mutation$updatePerson) _then;

  static const _undefined = {};

  TRes call({
    Object? updatePersonsByPk = _undefined,
    Object? insertPersonsServices = _undefined,
    Object? insertPersonsGroups = _undefined,
    Object? insertPersonsTags = _undefined,
    Object? deletePersonsTags = _undefined,
    Object? deletePersonsGroups = _undefined,
    Object? deletePersonsServices = _undefined,
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? insertHistoryCallHistoryOne = _undefined,
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson(
        updatePersonsByPk: updatePersonsByPk == _undefined
            ? _instance.updatePersonsByPk
            : (updatePersonsByPk as Mutation$updatePerson$updatePersonsByPk?),
        insertPersonsServices: insertPersonsServices == _undefined
            ? _instance.insertPersonsServices
            : (insertPersonsServices
                as Mutation$updatePerson$insertPersonsServices?),
        insertPersonsGroups: insertPersonsGroups == _undefined
            ? _instance.insertPersonsGroups
            : (insertPersonsGroups
                as Mutation$updatePerson$insertPersonsGroups?),
        insertPersonsTags: insertPersonsTags == _undefined
            ? _instance.insertPersonsTags
            : (insertPersonsTags as Mutation$updatePerson$insertPersonsTags?),
        deletePersonsTags: deletePersonsTags == _undefined
            ? _instance.deletePersonsTags
            : (deletePersonsTags as Mutation$updatePerson$deletePersonsTags?),
        deletePersonsGroups: deletePersonsGroups == _undefined
            ? _instance.deletePersonsGroups
            : (deletePersonsGroups
                as Mutation$updatePerson$deletePersonsGroups?),
        deletePersonsServices: deletePersonsServices == _undefined
            ? _instance.deletePersonsServices
            : (deletePersonsServices
                as Mutation$updatePerson$deletePersonsServices?),
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation$updatePerson$insertHistoryConfessionHistoryOne?),
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation$updatePerson$insertHistoryKodasHistoryOne?),
        insertHistoryCallHistoryOne: insertHistoryCallHistoryOne == _undefined
            ? _instance.insertHistoryCallHistoryOne
            : (insertHistoryCallHistoryOne
                as Mutation$updatePerson$insertHistoryCallHistoryOne?),
        insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
            ? _instance.insertHistoryVisitHistoryOne
            : (insertHistoryVisitHistoryOne
                as Mutation$updatePerson$insertHistoryVisitHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$updatePersonsByPk<TRes> get updatePersonsByPk {
    final local$updatePersonsByPk = _instance.updatePersonsByPk;
    return local$updatePersonsByPk == null
        ? CopyWith$Mutation$updatePerson$updatePersonsByPk.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$updatePersonsByPk(
            local$updatePersonsByPk, (e) => call(updatePersonsByPk: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsServices<TRes>
      get insertPersonsServices {
    final local$insertPersonsServices = _instance.insertPersonsServices;
    return local$insertPersonsServices == null
        ? CopyWith$Mutation$updatePerson$insertPersonsServices.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsServices(
            local$insertPersonsServices, (e) => call(insertPersonsServices: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes>
      get insertPersonsGroups {
    final local$insertPersonsGroups = _instance.insertPersonsGroups;
    return local$insertPersonsGroups == null
        ? CopyWith$Mutation$updatePerson$insertPersonsGroups.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsGroups(
            local$insertPersonsGroups, (e) => call(insertPersonsGroups: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> get insertPersonsTags {
    final local$insertPersonsTags = _instance.insertPersonsTags;
    return local$insertPersonsTags == null
        ? CopyWith$Mutation$updatePerson$insertPersonsTags.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsTags(
            local$insertPersonsTags, (e) => call(insertPersonsTags: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> get deletePersonsTags {
    final local$deletePersonsTags = _instance.deletePersonsTags;
    return local$deletePersonsTags == null
        ? CopyWith$Mutation$updatePerson$deletePersonsTags.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsTags(
            local$deletePersonsTags, (e) => call(deletePersonsTags: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes>
      get deletePersonsGroups {
    final local$deletePersonsGroups = _instance.deletePersonsGroups;
    return local$deletePersonsGroups == null
        ? CopyWith$Mutation$updatePerson$deletePersonsGroups.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsGroups(
            local$deletePersonsGroups, (e) => call(deletePersonsGroups: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsServices<TRes>
      get deletePersonsServices {
    final local$deletePersonsServices = _instance.deletePersonsServices;
    return local$deletePersonsServices == null
        ? CopyWith$Mutation$updatePerson$deletePersonsServices.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsServices(
            local$deletePersonsServices, (e) => call(deletePersonsServices: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne {
    final local$insertHistoryCallHistoryOne =
        _instance.insertHistoryCallHistoryOne;
    return local$insertHistoryCallHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne(
            local$insertHistoryCallHistoryOne,
            (e) => call(insertHistoryCallHistoryOne: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson<TRes>
    implements CopyWith$Mutation$updatePerson<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson(this._res);

  TRes _res;

  call({
    Mutation$updatePerson$updatePersonsByPk? updatePersonsByPk,
    Mutation$updatePerson$insertPersonsServices? insertPersonsServices,
    Mutation$updatePerson$insertPersonsGroups? insertPersonsGroups,
    Mutation$updatePerson$insertPersonsTags? insertPersonsTags,
    Mutation$updatePerson$deletePersonsTags? deletePersonsTags,
    Mutation$updatePerson$deletePersonsGroups? deletePersonsGroups,
    Mutation$updatePerson$deletePersonsServices? deletePersonsServices,
    Mutation$updatePerson$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePerson$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    Mutation$updatePerson$insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    Mutation$updatePerson$insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$updatePersonsByPk<TRes>
      get updatePersonsByPk =>
          CopyWith$Mutation$updatePerson$updatePersonsByPk.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsServices<TRes>
      get insertPersonsServices =>
          CopyWith$Mutation$updatePerson$insertPersonsServices.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes>
      get insertPersonsGroups =>
          CopyWith$Mutation$updatePerson$insertPersonsGroups.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsTags<TRes>
      get insertPersonsTags =>
          CopyWith$Mutation$updatePerson$insertPersonsTags.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsTags<TRes>
      get deletePersonsTags =>
          CopyWith$Mutation$updatePerson$deletePersonsTags.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes>
      get deletePersonsGroups =>
          CopyWith$Mutation$updatePerson$deletePersonsGroups.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsServices<TRes>
      get deletePersonsServices =>
          CopyWith$Mutation$updatePerson$deletePersonsServices.stub(_res);
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne.stub(
              _res);
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne.stub(
              _res);
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne.stub(_res);
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne.stub(
              _res);
}

const documentNodeMutationupdatePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updatePerson'),
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
        variable: VariableNode(name: NameNode(value: 'newPerson')),
        type: NamedTypeNode(
          name: NameNode(value: 'PersonsSetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newGroups')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsGroupsInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteGroups')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newServices')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsServicesInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteServices')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newTags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsTagsInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteTags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastConfession')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastCall')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastVisit')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePersonsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pk_columns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'personId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'newPerson')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'photoUpdatedAt'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsServices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newServices')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsGroups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newGroups')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsTags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newTags')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsTags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'tagId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value: VariableNode(name: NameNode(value: 'deleteTags')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsGroups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'groupId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value: VariableNode(name: NameNode(value: 'deleteGroups')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsServices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'serviceId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value:
                        VariableNode(name: NameNode(value: 'deleteServices')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        ]),
      ),
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
]);

class Mutation$updatePerson$updatePersonsByPk {
  Mutation$updatePerson$updatePersonsByPk({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$updatePerson$updatePersonsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$updatePersonsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$updatePersonsByPk) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$updatePerson$updatePersonsByPk
    on Mutation$updatePerson$updatePersonsByPk {
  CopyWith$Mutation$updatePerson$updatePersonsByPk<
          Mutation$updatePerson$updatePersonsByPk>
      get copyWith => CopyWith$Mutation$updatePerson$updatePersonsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$updatePersonsByPk<TRes> {
  factory CopyWith$Mutation$updatePerson$updatePersonsByPk(
    Mutation$updatePerson$updatePersonsByPk instance,
    TRes Function(Mutation$updatePerson$updatePersonsByPk) then,
  ) = _CopyWithImpl$Mutation$updatePerson$updatePersonsByPk;

  factory CopyWith$Mutation$updatePerson$updatePersonsByPk.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$updatePersonsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$updatePersonsByPk<TRes>
    implements CopyWith$Mutation$updatePerson$updatePersonsByPk<TRes> {
  _CopyWithImpl$Mutation$updatePerson$updatePersonsByPk(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$updatePersonsByPk _instance;

  final TRes Function(Mutation$updatePerson$updatePersonsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$updatePersonsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$updatePersonsByPk<TRes>
    implements CopyWith$Mutation$updatePerson$updatePersonsByPk<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$updatePersonsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertPersonsServices {
  Mutation$updatePerson$insertPersonsServices({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsServices.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsServices(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsServices) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsServices
    on Mutation$updatePerson$insertPersonsServices {
  CopyWith$Mutation$updatePerson$insertPersonsServices<
          Mutation$updatePerson$insertPersonsServices>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsServices<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsServices(
    Mutation$updatePerson$insertPersonsServices instance,
    TRes Function(Mutation$updatePerson$insertPersonsServices) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsServices;

  factory CopyWith$Mutation$updatePerson$insertPersonsServices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsServices;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsServices<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsServices(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsServices _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsServices) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsServices(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsServices<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsServices(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertPersonsGroups {
  Mutation$updatePerson$insertPersonsGroups({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsGroups.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsGroups(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsGroups
    on Mutation$updatePerson$insertPersonsGroups {
  CopyWith$Mutation$updatePerson$insertPersonsGroups<
          Mutation$updatePerson$insertPersonsGroups>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsGroups(
    Mutation$updatePerson$insertPersonsGroups instance,
    TRes Function(Mutation$updatePerson$insertPersonsGroups) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsGroups;

  factory CopyWith$Mutation$updatePerson$insertPersonsGroups.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsGroups;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsGroups(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsGroups _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsGroups(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsGroups(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertPersonsTags {
  Mutation$updatePerson$insertPersonsTags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsTags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsTags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsTags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsTags
    on Mutation$updatePerson$insertPersonsTags {
  CopyWith$Mutation$updatePerson$insertPersonsTags<
          Mutation$updatePerson$insertPersonsTags>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsTags(
    Mutation$updatePerson$insertPersonsTags instance,
    TRes Function(Mutation$updatePerson$insertPersonsTags) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsTags;

  factory CopyWith$Mutation$updatePerson$insertPersonsTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsTags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsTags(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsTags _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsTags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsTags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsTags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsTags {
  Mutation$updatePerson$deletePersonsTags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsTags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsTags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsTags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsTags
    on Mutation$updatePerson$deletePersonsTags {
  CopyWith$Mutation$updatePerson$deletePersonsTags<
          Mutation$updatePerson$deletePersonsTags>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsTags(
    Mutation$updatePerson$deletePersonsTags instance,
    TRes Function(Mutation$updatePerson$deletePersonsTags) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsTags;

  factory CopyWith$Mutation$updatePerson$deletePersonsTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsTags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsTags(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsTags _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsTags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsTags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsTags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsGroups {
  Mutation$updatePerson$deletePersonsGroups({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsGroups.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsGroups(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsGroups
    on Mutation$updatePerson$deletePersonsGroups {
  CopyWith$Mutation$updatePerson$deletePersonsGroups<
          Mutation$updatePerson$deletePersonsGroups>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsGroups(
    Mutation$updatePerson$deletePersonsGroups instance,
    TRes Function(Mutation$updatePerson$deletePersonsGroups) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsGroups;

  factory CopyWith$Mutation$updatePerson$deletePersonsGroups.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsGroups;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsGroups(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsGroups _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsGroups(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsGroups(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsServices {
  Mutation$updatePerson$deletePersonsServices({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsServices.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsServices(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsServices) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsServices
    on Mutation$updatePerson$deletePersonsServices {
  CopyWith$Mutation$updatePerson$deletePersonsServices<
          Mutation$updatePerson$deletePersonsServices>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsServices<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsServices(
    Mutation$updatePerson$deletePersonsServices instance,
    TRes Function(Mutation$updatePerson$deletePersonsServices) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsServices;

  factory CopyWith$Mutation$updatePerson$deletePersonsServices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsServices;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsServices<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsServices(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsServices _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsServices) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsServices(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsServices<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsServices(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryConfessionHistoryOne {
  Mutation$updatePerson$insertHistoryConfessionHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryConfessionHistoryOne(
      person: Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
          .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryConfessionHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryConfessionHistoryOne
    on Mutation$updatePerson$insertHistoryConfessionHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
          Mutation$updatePerson$insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
    Mutation$updatePerson$insertHistoryConfessionHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryConfessionHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryConfessionHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryConfessionHistoryOne)
      _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryConfessionHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryConfessionHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryConfessionHistoryOne$person {
  Mutation$updatePerson$insertHistoryConfessionHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryConfessionHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$updatePerson$insertHistoryConfessionHistoryOne$person) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
    on Mutation$updatePerson$insertHistoryConfessionHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
          Mutation$updatePerson$insertHistoryConfessionHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
    Mutation$updatePerson$insertHistoryConfessionHistoryOne$person instance,
    TRes Function(
            Mutation$updatePerson$insertHistoryConfessionHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
      _instance;

  final TRes Function(
      Mutation$updatePerson$insertHistoryConfessionHistoryOne$person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryKodasHistoryOne {
  Mutation$updatePerson$insertHistoryKodasHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryKodasHistoryOne(
      person:
          Mutation$updatePerson$insertHistoryKodasHistoryOne$person.fromJson(
              (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryKodasHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryKodasHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryKodasHistoryOne
    on Mutation$updatePerson$insertHistoryKodasHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<
          Mutation$updatePerson$insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne(
    Mutation$updatePerson$insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryKodasHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryKodasHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryKodasHistoryOne$person {
  Mutation$updatePerson$insertHistoryKodasHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryKodasHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertHistoryKodasHistoryOne$person) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$updatePerson$insertHistoryKodasHistoryOne$person
    on Mutation$updatePerson$insertHistoryKodasHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
          Mutation$updatePerson$insertHistoryKodasHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
    Mutation$updatePerson$insertHistoryKodasHistoryOne$person instance,
    TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryKodasHistoryOne$person _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryCallHistoryOne {
  Mutation$updatePerson$insertHistoryCallHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryCallHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryCallHistoryOne(
      person: Mutation$updatePerson$insertHistoryCallHistoryOne$person.fromJson(
          (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryCallHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryCallHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryCallHistoryOne
    on Mutation$updatePerson$insertHistoryCallHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<
          Mutation$updatePerson$insertHistoryCallHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne(
    Mutation$updatePerson$insertHistoryCallHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryCallHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryCallHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryCallHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryCallHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryCallHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryCallHistoryOne$person {
  Mutation$updatePerson$insertHistoryCallHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryCallHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryCallHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertHistoryCallHistoryOne$person) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$updatePerson$insertHistoryCallHistoryOne$person
    on Mutation$updatePerson$insertHistoryCallHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
          Mutation$updatePerson$insertHistoryCallHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
    Mutation$updatePerson$insertHistoryCallHistoryOne$person instance,
    TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryCallHistoryOne$person _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryCallHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryVisitHistoryOne {
  Mutation$updatePerson$insertHistoryVisitHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryVisitHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryVisitHistoryOne(
      person:
          Mutation$updatePerson$insertHistoryVisitHistoryOne$person.fromJson(
              (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryVisitHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryVisitHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryVisitHistoryOne
    on Mutation$updatePerson$insertHistoryVisitHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<
          Mutation$updatePerson$insertHistoryVisitHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne(
    Mutation$updatePerson$insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryVisitHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryVisitHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryVisitHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryVisitHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryVisitHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryVisitHistoryOne$person {
  Mutation$updatePerson$insertHistoryVisitHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryVisitHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertHistoryVisitHistoryOne$person) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$updatePerson$insertHistoryVisitHistoryOne$person
    on Mutation$updatePerson$insertHistoryVisitHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
          Mutation$updatePerson$insertHistoryVisitHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
    Mutation$updatePerson$insertHistoryVisitHistoryOne$person instance,
    TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryVisitHistoryOne$person _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$insertPerson {
  factory Variables$Mutation$insertPerson(
          {required Input$PersonsInsertInput newPerson}) =>
      Variables$Mutation$insertPerson._({
        r'newPerson': newPerson,
      });

  Variables$Mutation$insertPerson._(this._$data);

  factory Variables$Mutation$insertPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newPerson = data['newPerson'];
    result$data['newPerson'] = Input$PersonsInsertInput.fromJson(
        (l$newPerson as Map<String, dynamic>));
    return Variables$Mutation$insertPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PersonsInsertInput get newPerson =>
      (_$data['newPerson'] as Input$PersonsInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newPerson = newPerson;
    result$data['newPerson'] = l$newPerson.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$insertPerson<Variables$Mutation$insertPerson>
      get copyWith => CopyWith$Variables$Mutation$insertPerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newPerson = newPerson;
    final lOther$newPerson = other.newPerson;
    if (l$newPerson != lOther$newPerson) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newPerson = newPerson;
    return Object.hashAll([l$newPerson]);
  }
}

abstract class CopyWith$Variables$Mutation$insertPerson<TRes> {
  factory CopyWith$Variables$Mutation$insertPerson(
    Variables$Mutation$insertPerson instance,
    TRes Function(Variables$Mutation$insertPerson) then,
  ) = _CopyWithImpl$Variables$Mutation$insertPerson;

  factory CopyWith$Variables$Mutation$insertPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertPerson;

  TRes call({Input$PersonsInsertInput? newPerson});
}

class _CopyWithImpl$Variables$Mutation$insertPerson<TRes>
    implements CopyWith$Variables$Mutation$insertPerson<TRes> {
  _CopyWithImpl$Variables$Mutation$insertPerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertPerson _instance;

  final TRes Function(Variables$Mutation$insertPerson) _then;

  static const _undefined = {};

  TRes call({Object? newPerson = _undefined}) =>
      _then(Variables$Mutation$insertPerson._({
        ..._instance._$data,
        if (newPerson != _undefined && newPerson != null)
          'newPerson': (newPerson as Input$PersonsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertPerson<TRes>
    implements CopyWith$Variables$Mutation$insertPerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertPerson(this._res);

  TRes _res;

  call({Input$PersonsInsertInput? newPerson}) => _res;
}

class Mutation$insertPerson {
  Mutation$insertPerson({
    this.insertPersonsOne,
    required this.$__typename,
  });

  factory Mutation$insertPerson.fromJson(Map<String, dynamic> json) {
    final l$insertPersonsOne = json['insertPersonsOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPerson(
      insertPersonsOne: l$insertPersonsOne == null
          ? null
          : Mutation$insertPerson$insertPersonsOne.fromJson(
              (l$insertPersonsOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$insertPerson$insertPersonsOne? insertPersonsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertPersonsOne = insertPersonsOne;
    _resultData['insertPersonsOne'] = l$insertPersonsOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertPersonsOne = insertPersonsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertPersonsOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$insertPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertPersonsOne = insertPersonsOne;
    final lOther$insertPersonsOne = other.insertPersonsOne;
    if (l$insertPersonsOne != lOther$insertPersonsOne) {
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

extension UtilityExtension$Mutation$insertPerson on Mutation$insertPerson {
  CopyWith$Mutation$insertPerson<Mutation$insertPerson> get copyWith =>
      CopyWith$Mutation$insertPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$insertPerson<TRes> {
  factory CopyWith$Mutation$insertPerson(
    Mutation$insertPerson instance,
    TRes Function(Mutation$insertPerson) then,
  ) = _CopyWithImpl$Mutation$insertPerson;

  factory CopyWith$Mutation$insertPerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPerson;

  TRes call({
    Mutation$insertPerson$insertPersonsOne? insertPersonsOne,
    String? $__typename,
  });
  CopyWith$Mutation$insertPerson$insertPersonsOne<TRes> get insertPersonsOne;
}

class _CopyWithImpl$Mutation$insertPerson<TRes>
    implements CopyWith$Mutation$insertPerson<TRes> {
  _CopyWithImpl$Mutation$insertPerson(
    this._instance,
    this._then,
  );

  final Mutation$insertPerson _instance;

  final TRes Function(Mutation$insertPerson) _then;

  static const _undefined = {};

  TRes call({
    Object? insertPersonsOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPerson(
        insertPersonsOne: insertPersonsOne == _undefined
            ? _instance.insertPersonsOne
            : (insertPersonsOne as Mutation$insertPerson$insertPersonsOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$insertPerson$insertPersonsOne<TRes> get insertPersonsOne {
    final local$insertPersonsOne = _instance.insertPersonsOne;
    return local$insertPersonsOne == null
        ? CopyWith$Mutation$insertPerson$insertPersonsOne.stub(_then(_instance))
        : CopyWith$Mutation$insertPerson$insertPersonsOne(
            local$insertPersonsOne, (e) => call(insertPersonsOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPerson<TRes>
    implements CopyWith$Mutation$insertPerson<TRes> {
  _CopyWithStubImpl$Mutation$insertPerson(this._res);

  TRes _res;

  call({
    Mutation$insertPerson$insertPersonsOne? insertPersonsOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$insertPerson$insertPersonsOne<TRes> get insertPersonsOne =>
      CopyWith$Mutation$insertPerson$insertPersonsOne.stub(_res);
}

const documentNodeMutationinsertPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newPerson')),
        type: NamedTypeNode(
          name: NameNode(value: 'PersonsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertPersonsOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newPerson')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Mutation$insertPerson$insertPersonsOne {
  Mutation$insertPerson$insertPersonsOne({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Mutation$insertPerson$insertPersonsOne.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPerson$insertPersonsOne(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$insertPerson$insertPersonsOne) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Mutation$insertPerson$insertPersonsOne
    on Mutation$insertPerson$insertPersonsOne {
  CopyWith$Mutation$insertPerson$insertPersonsOne<
          Mutation$insertPerson$insertPersonsOne>
      get copyWith => CopyWith$Mutation$insertPerson$insertPersonsOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$insertPerson$insertPersonsOne<TRes> {
  factory CopyWith$Mutation$insertPerson$insertPersonsOne(
    Mutation$insertPerson$insertPersonsOne instance,
    TRes Function(Mutation$insertPerson$insertPersonsOne) then,
  ) = _CopyWithImpl$Mutation$insertPerson$insertPersonsOne;

  factory CopyWith$Mutation$insertPerson$insertPersonsOne.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPerson$insertPersonsOne;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$insertPerson$insertPersonsOne<TRes>
    implements CopyWith$Mutation$insertPerson$insertPersonsOne<TRes> {
  _CopyWithImpl$Mutation$insertPerson$insertPersonsOne(
    this._instance,
    this._then,
  );

  final Mutation$insertPerson$insertPersonsOne _instance;

  final TRes Function(Mutation$insertPerson$insertPersonsOne) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPerson$insertPersonsOne(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$insertPerson$insertPersonsOne<TRes>
    implements CopyWith$Mutation$insertPerson$insertPersonsOne<TRes> {
  _CopyWithStubImpl$Mutation$insertPerson$insertPersonsOne(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}
