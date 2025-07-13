import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createHobby {
  factory Variables_Mutation_createHobby(
          {required Input_HobbiesInsertInput object}) =>
      Variables_Mutation_createHobby._({
        r'object': object,
      });

  Variables_Mutation_createHobby._(this._$data);

  factory Variables_Mutation_createHobby.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] =
        Input_HobbiesInsertInput.fromJson((l$object as Map<String, dynamic>));
    return Variables_Mutation_createHobby._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HobbiesInsertInput get object =>
      (_$data['object'] as Input_HobbiesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createHobby<Variables_Mutation_createHobby>
      get copyWith => CopyWith_Variables_Mutation_createHobby(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createHobby ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$object = object;
    final lOther$object = other.object;
    if (l$object != lOther$object) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$object = object;
    return Object.hashAll([l$object]);
  }
}

abstract class CopyWith_Variables_Mutation_createHobby<TRes> {
  factory CopyWith_Variables_Mutation_createHobby(
    Variables_Mutation_createHobby instance,
    TRes Function(Variables_Mutation_createHobby) then,
  ) = _CopyWithImpl_Variables_Mutation_createHobby;

  factory CopyWith_Variables_Mutation_createHobby.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createHobby;

  TRes call({Input_HobbiesInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createHobby<TRes>
    implements CopyWith_Variables_Mutation_createHobby<TRes> {
  _CopyWithImpl_Variables_Mutation_createHobby(
    this._instance,
    this._then,
  );

  final Variables_Mutation_createHobby _instance;

  final TRes Function(Variables_Mutation_createHobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) =>
      _then(Variables_Mutation_createHobby._({
        ..._instance._$data,
        if (object != _undefined && object != null)
          'object': (object as Input_HobbiesInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_createHobby<TRes>
    implements CopyWith_Variables_Mutation_createHobby<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createHobby(this._res);

  TRes _res;

  call({Input_HobbiesInsertInput? object}) => _res;
}

class Mutation_createHobby {
  Mutation_createHobby({
    this.insertHobbiesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createHobby.fromJson(Map<String, dynamic> json) {
    final l$insertHobbiesOne = json['insertHobbiesOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createHobby(
      insertHobbiesOne: l$insertHobbiesOne == null
          ? null
          : Mutation_createHobby_insertHobbiesOne.fromJson(
              (l$insertHobbiesOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createHobby_insertHobbiesOne? insertHobbiesOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHobbiesOne = insertHobbiesOne;
    _resultData['insertHobbiesOne'] = l$insertHobbiesOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHobbiesOne = insertHobbiesOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertHobbiesOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createHobby || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHobbiesOne = insertHobbiesOne;
    final lOther$insertHobbiesOne = other.insertHobbiesOne;
    if (l$insertHobbiesOne != lOther$insertHobbiesOne) {
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

extension UtilityExtension_Mutation_createHobby on Mutation_createHobby {
  CopyWith_Mutation_createHobby<Mutation_createHobby> get copyWith =>
      CopyWith_Mutation_createHobby(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_createHobby<TRes> {
  factory CopyWith_Mutation_createHobby(
    Mutation_createHobby instance,
    TRes Function(Mutation_createHobby) then,
  ) = _CopyWithImpl_Mutation_createHobby;

  factory CopyWith_Mutation_createHobby.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createHobby;

  TRes call({
    Mutation_createHobby_insertHobbiesOne? insertHobbiesOne,
    String? $__typename,
  });
  CopyWith_Mutation_createHobby_insertHobbiesOne<TRes> get insertHobbiesOne;
}

class _CopyWithImpl_Mutation_createHobby<TRes>
    implements CopyWith_Mutation_createHobby<TRes> {
  _CopyWithImpl_Mutation_createHobby(
    this._instance,
    this._then,
  );

  final Mutation_createHobby _instance;

  final TRes Function(Mutation_createHobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHobbiesOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_createHobby(
        insertHobbiesOne: insertHobbiesOne == _undefined
            ? _instance.insertHobbiesOne
            : (insertHobbiesOne as Mutation_createHobby_insertHobbiesOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_createHobby_insertHobbiesOne<TRes> get insertHobbiesOne {
    final local$insertHobbiesOne = _instance.insertHobbiesOne;
    return local$insertHobbiesOne == null
        ? CopyWith_Mutation_createHobby_insertHobbiesOne.stub(_then(_instance))
        : CopyWith_Mutation_createHobby_insertHobbiesOne(
            local$insertHobbiesOne, (e) => call(insertHobbiesOne: e));
  }
}

class _CopyWithStubImpl_Mutation_createHobby<TRes>
    implements CopyWith_Mutation_createHobby<TRes> {
  _CopyWithStubImpl_Mutation_createHobby(this._res);

  TRes _res;

  call({
    Mutation_createHobby_insertHobbiesOne? insertHobbiesOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_createHobby_insertHobbiesOne<TRes> get insertHobbiesOne =>
      CopyWith_Mutation_createHobby_insertHobbiesOne.stub(_res);
}

const documentNodeMutationcreateHobby = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createHobby'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'object')),
        type: NamedTypeNode(
          name: NameNode(value: 'HobbiesInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHobbiesOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'object')),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'hobbies_name_key')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'updateColumns'),
                value: EnumValueNode(name: NameNode(value: 'name')),
              ),
            ]),
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

class Mutation_createHobby_insertHobbiesOne {
  Mutation_createHobby_insertHobbiesOne({
    required this.id,
    required this.name,
    this.$__typename = 'Hobbies',
  });

  factory Mutation_createHobby_insertHobbiesOne.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createHobby_insertHobbiesOne(
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
    if (other is! Mutation_createHobby_insertHobbiesOne ||
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

extension UtilityExtension_Mutation_createHobby_insertHobbiesOne
    on Mutation_createHobby_insertHobbiesOne {
  CopyWith_Mutation_createHobby_insertHobbiesOne<
          Mutation_createHobby_insertHobbiesOne>
      get copyWith => CopyWith_Mutation_createHobby_insertHobbiesOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_createHobby_insertHobbiesOne<TRes> {
  factory CopyWith_Mutation_createHobby_insertHobbiesOne(
    Mutation_createHobby_insertHobbiesOne instance,
    TRes Function(Mutation_createHobby_insertHobbiesOne) then,
  ) = _CopyWithImpl_Mutation_createHobby_insertHobbiesOne;

  factory CopyWith_Mutation_createHobby_insertHobbiesOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createHobby_insertHobbiesOne;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_createHobby_insertHobbiesOne<TRes>
    implements CopyWith_Mutation_createHobby_insertHobbiesOne<TRes> {
  _CopyWithImpl_Mutation_createHobby_insertHobbiesOne(
    this._instance,
    this._then,
  );

  final Mutation_createHobby_insertHobbiesOne _instance;

  final TRes Function(Mutation_createHobby_insertHobbiesOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_createHobby_insertHobbiesOne(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_createHobby_insertHobbiesOne<TRes>
    implements CopyWith_Mutation_createHobby_insertHobbiesOne<TRes> {
  _CopyWithStubImpl_Mutation_createHobby_insertHobbiesOne(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
