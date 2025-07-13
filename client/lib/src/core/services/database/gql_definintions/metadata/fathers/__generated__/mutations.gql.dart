import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createFather {
  factory Variables_Mutation_createFather(
          {required Input_FathersInsertInput object}) =>
      Variables_Mutation_createFather._({
        r'object': object,
      });

  Variables_Mutation_createFather._(this._$data);

  factory Variables_Mutation_createFather.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] =
        Input_FathersInsertInput.fromJson((l$object as Map<String, dynamic>));
    return Variables_Mutation_createFather._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FathersInsertInput get object =>
      (_$data['object'] as Input_FathersInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createFather<Variables_Mutation_createFather>
      get copyWith => CopyWith_Variables_Mutation_createFather(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createFather ||
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

abstract class CopyWith_Variables_Mutation_createFather<TRes> {
  factory CopyWith_Variables_Mutation_createFather(
    Variables_Mutation_createFather instance,
    TRes Function(Variables_Mutation_createFather) then,
  ) = _CopyWithImpl_Variables_Mutation_createFather;

  factory CopyWith_Variables_Mutation_createFather.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createFather;

  TRes call({Input_FathersInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createFather<TRes>
    implements CopyWith_Variables_Mutation_createFather<TRes> {
  _CopyWithImpl_Variables_Mutation_createFather(
    this._instance,
    this._then,
  );

  final Variables_Mutation_createFather _instance;

  final TRes Function(Variables_Mutation_createFather) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) =>
      _then(Variables_Mutation_createFather._({
        ..._instance._$data,
        if (object != _undefined && object != null)
          'object': (object as Input_FathersInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_createFather<TRes>
    implements CopyWith_Variables_Mutation_createFather<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createFather(this._res);

  TRes _res;

  call({Input_FathersInsertInput? object}) => _res;
}

class Mutation_createFather {
  Mutation_createFather({
    this.insertFathersOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createFather.fromJson(Map<String, dynamic> json) {
    final l$insertFathersOne = json['insertFathersOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createFather(
      insertFathersOne: l$insertFathersOne == null
          ? null
          : Mutation_createFather_insertFathersOne.fromJson(
              (l$insertFathersOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createFather_insertFathersOne? insertFathersOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertFathersOne = insertFathersOne;
    _resultData['insertFathersOne'] = l$insertFathersOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertFathersOne = insertFathersOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertFathersOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createFather || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertFathersOne = insertFathersOne;
    final lOther$insertFathersOne = other.insertFathersOne;
    if (l$insertFathersOne != lOther$insertFathersOne) {
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

extension UtilityExtension_Mutation_createFather on Mutation_createFather {
  CopyWith_Mutation_createFather<Mutation_createFather> get copyWith =>
      CopyWith_Mutation_createFather(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_createFather<TRes> {
  factory CopyWith_Mutation_createFather(
    Mutation_createFather instance,
    TRes Function(Mutation_createFather) then,
  ) = _CopyWithImpl_Mutation_createFather;

  factory CopyWith_Mutation_createFather.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createFather;

  TRes call({
    Mutation_createFather_insertFathersOne? insertFathersOne,
    String? $__typename,
  });
  CopyWith_Mutation_createFather_insertFathersOne<TRes> get insertFathersOne;
}

class _CopyWithImpl_Mutation_createFather<TRes>
    implements CopyWith_Mutation_createFather<TRes> {
  _CopyWithImpl_Mutation_createFather(
    this._instance,
    this._then,
  );

  final Mutation_createFather _instance;

  final TRes Function(Mutation_createFather) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertFathersOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_createFather(
        insertFathersOne: insertFathersOne == _undefined
            ? _instance.insertFathersOne
            : (insertFathersOne as Mutation_createFather_insertFathersOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_createFather_insertFathersOne<TRes> get insertFathersOne {
    final local$insertFathersOne = _instance.insertFathersOne;
    return local$insertFathersOne == null
        ? CopyWith_Mutation_createFather_insertFathersOne.stub(_then(_instance))
        : CopyWith_Mutation_createFather_insertFathersOne(
            local$insertFathersOne, (e) => call(insertFathersOne: e));
  }
}

class _CopyWithStubImpl_Mutation_createFather<TRes>
    implements CopyWith_Mutation_createFather<TRes> {
  _CopyWithStubImpl_Mutation_createFather(this._res);

  TRes _res;

  call({
    Mutation_createFather_insertFathersOne? insertFathersOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_createFather_insertFathersOne<TRes> get insertFathersOne =>
      CopyWith_Mutation_createFather_insertFathersOne.stub(_res);
}

const documentNodeMutationcreateFather = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createFather'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'object')),
        type: NamedTypeNode(
          name: NameNode(value: 'FathersInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertFathersOne'),
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
                value: EnumValueNode(name: NameNode(value: 'fathers_name_key')),
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

class Mutation_createFather_insertFathersOne {
  Mutation_createFather_insertFathersOne({
    required this.id,
    required this.name,
    this.$__typename = 'Fathers',
  });

  factory Mutation_createFather_insertFathersOne.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createFather_insertFathersOne(
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
    if (other is! Mutation_createFather_insertFathersOne ||
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

extension UtilityExtension_Mutation_createFather_insertFathersOne
    on Mutation_createFather_insertFathersOne {
  CopyWith_Mutation_createFather_insertFathersOne<
          Mutation_createFather_insertFathersOne>
      get copyWith => CopyWith_Mutation_createFather_insertFathersOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_createFather_insertFathersOne<TRes> {
  factory CopyWith_Mutation_createFather_insertFathersOne(
    Mutation_createFather_insertFathersOne instance,
    TRes Function(Mutation_createFather_insertFathersOne) then,
  ) = _CopyWithImpl_Mutation_createFather_insertFathersOne;

  factory CopyWith_Mutation_createFather_insertFathersOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createFather_insertFathersOne;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_createFather_insertFathersOne<TRes>
    implements CopyWith_Mutation_createFather_insertFathersOne<TRes> {
  _CopyWithImpl_Mutation_createFather_insertFathersOne(
    this._instance,
    this._then,
  );

  final Mutation_createFather_insertFathersOne _instance;

  final TRes Function(Mutation_createFather_insertFathersOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_createFather_insertFathersOne(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_createFather_insertFathersOne<TRes>
    implements CopyWith_Mutation_createFather_insertFathersOne<TRes> {
  _CopyWithStubImpl_Mutation_createFather_insertFathersOne(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
