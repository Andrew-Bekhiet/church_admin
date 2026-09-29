import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createTag {
  factory Variables_Mutation_createTag({
    required Input_TagsInsertInput object,
  }) => Variables_Mutation_createTag._({r'object': object});

  Variables_Mutation_createTag._(this._$data);

  factory Variables_Mutation_createTag.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_TagsInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createTag._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_TagsInsertInput get object =>
      (_$data['object'] as Input_TagsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createTag<Variables_Mutation_createTag>
  get copyWith => CopyWith_Variables_Mutation_createTag(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createTag ||
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

abstract class CopyWith_Variables_Mutation_createTag<TRes> {
  factory CopyWith_Variables_Mutation_createTag(
    Variables_Mutation_createTag instance,
    TRes Function(Variables_Mutation_createTag) then,
  ) = _CopyWithImpl_Variables_Mutation_createTag;

  factory CopyWith_Variables_Mutation_createTag.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createTag;

  TRes call({Input_TagsInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createTag<TRes>
    implements CopyWith_Variables_Mutation_createTag<TRes> {
  _CopyWithImpl_Variables_Mutation_createTag(this._instance, this._then);

  final Variables_Mutation_createTag _instance;

  final TRes Function(Variables_Mutation_createTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createTag._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_TagsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createTag<TRes>
    implements CopyWith_Variables_Mutation_createTag<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createTag(this._res);

  TRes _res;

  call({Input_TagsInsertInput? object}) => _res;
}

class Mutation_createTag {
  Mutation_createTag({this.insertTagsOne});

  factory Mutation_createTag.fromJson(Map<String, dynamic> json) {
    final l$insertTagsOne = json['insertTagsOne'];
    return Mutation_createTag(
      insertTagsOne: l$insertTagsOne == null
          ? null
          : Mutation_createTag_insertTagsOne.fromJson(
              (l$insertTagsOne as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_createTag_insertTagsOne? insertTagsOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertTagsOne = insertTagsOne;
    _resultData['insertTagsOne'] = l$insertTagsOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertTagsOne = insertTagsOne;
    return Object.hashAll([l$insertTagsOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createTag || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertTagsOne = insertTagsOne;
    final lOther$insertTagsOne = other.insertTagsOne;
    if (l$insertTagsOne != lOther$insertTagsOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_createTag on Mutation_createTag {
  CopyWith_Mutation_createTag<Mutation_createTag> get copyWith =>
      CopyWith_Mutation_createTag(this, (i) => i);
}

abstract class CopyWith_Mutation_createTag<TRes> {
  factory CopyWith_Mutation_createTag(
    Mutation_createTag instance,
    TRes Function(Mutation_createTag) then,
  ) = _CopyWithImpl_Mutation_createTag;

  factory CopyWith_Mutation_createTag.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createTag;

  TRes call({Mutation_createTag_insertTagsOne? insertTagsOne});
  CopyWith_Mutation_createTag_insertTagsOne<TRes> get insertTagsOne;
}

class _CopyWithImpl_Mutation_createTag<TRes>
    implements CopyWith_Mutation_createTag<TRes> {
  _CopyWithImpl_Mutation_createTag(this._instance, this._then);

  final Mutation_createTag _instance;

  final TRes Function(Mutation_createTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertTagsOne = _undefined}) => _then(
    Mutation_createTag(
      insertTagsOne: insertTagsOne == _undefined
          ? _instance.insertTagsOne
          : (insertTagsOne as Mutation_createTag_insertTagsOne?),
    ),
  );

  CopyWith_Mutation_createTag_insertTagsOne<TRes> get insertTagsOne {
    final local$insertTagsOne = _instance.insertTagsOne;
    return local$insertTagsOne == null
        ? CopyWith_Mutation_createTag_insertTagsOne.stub(_then(_instance))
        : CopyWith_Mutation_createTag_insertTagsOne(
            local$insertTagsOne,
            (e) => call(insertTagsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createTag<TRes>
    implements CopyWith_Mutation_createTag<TRes> {
  _CopyWithStubImpl_Mutation_createTag(this._res);

  TRes _res;

  call({Mutation_createTag_insertTagsOne? insertTagsOne}) => _res;

  CopyWith_Mutation_createTag_insertTagsOne<TRes> get insertTagsOne =>
      CopyWith_Mutation_createTag_insertTagsOne.stub(_res);
}

const documentNodeMutationcreateTag = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createTag'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'TagsInsertInput'),
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
            name: NameNode(value: 'insertTagsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'object')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(value: 'tags_name_key'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'updateColumns'),
                      value: EnumValueNode(name: NameNode(value: 'name')),
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

class Mutation_createTag_insertTagsOne {
  Mutation_createTag_insertTagsOne({
    required this.id,
    required this.name,
    this.$__typename = 'Tags',
  });

  factory Mutation_createTag_insertTagsOne.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createTag_insertTagsOne(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createTag_insertTagsOne ||
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

extension UtilityExtension_Mutation_createTag_insertTagsOne
    on Mutation_createTag_insertTagsOne {
  CopyWith_Mutation_createTag_insertTagsOne<Mutation_createTag_insertTagsOne>
  get copyWith => CopyWith_Mutation_createTag_insertTagsOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createTag_insertTagsOne<TRes> {
  factory CopyWith_Mutation_createTag_insertTagsOne(
    Mutation_createTag_insertTagsOne instance,
    TRes Function(Mutation_createTag_insertTagsOne) then,
  ) = _CopyWithImpl_Mutation_createTag_insertTagsOne;

  factory CopyWith_Mutation_createTag_insertTagsOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createTag_insertTagsOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createTag_insertTagsOne<TRes>
    implements CopyWith_Mutation_createTag_insertTagsOne<TRes> {
  _CopyWithImpl_Mutation_createTag_insertTagsOne(this._instance, this._then);

  final Mutation_createTag_insertTagsOne _instance;

  final TRes Function(Mutation_createTag_insertTagsOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createTag_insertTagsOne(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_createTag_insertTagsOne<TRes>
    implements CopyWith_Mutation_createTag_insertTagsOne<TRes> {
  _CopyWithStubImpl_Mutation_createTag_insertTagsOne(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
