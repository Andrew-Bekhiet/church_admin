import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createTag {
  factory Variables_Mutation_createTag({required Input_CreateTagInput input}) =>
      Variables_Mutation_createTag._({r'input': input});

  Variables_Mutation_createTag._(this._$data);

  factory Variables_Mutation_createTag.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateTagInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createTag._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateTagInput get input => (_$data['input'] as Input_CreateTagInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createTag<TRes> {
  factory CopyWith_Variables_Mutation_createTag(
    Variables_Mutation_createTag instance,
    TRes Function(Variables_Mutation_createTag) then,
  ) = _CopyWithImpl_Variables_Mutation_createTag;

  factory CopyWith_Variables_Mutation_createTag.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createTag;

  TRes call({Input_CreateTagInput? input});
}

class _CopyWithImpl_Variables_Mutation_createTag<TRes>
    implements CopyWith_Variables_Mutation_createTag<TRes> {
  _CopyWithImpl_Variables_Mutation_createTag(this._instance, this._then);

  final Variables_Mutation_createTag _instance;

  final TRes Function(Variables_Mutation_createTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createTag._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateTagInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createTag<TRes>
    implements CopyWith_Variables_Mutation_createTag<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createTag(this._res);

  TRes _res;

  call({Input_CreateTagInput? input}) => _res;
}

class Mutation_createTag {
  Mutation_createTag({this.createTag, this.$__typename = 'RootMutationType'});

  factory Mutation_createTag.fromJson(Map<String, dynamic> json) {
    final l$createTag = json['createTag'];
    final l$$__typename = json['__typename'];
    return Mutation_createTag(
      createTag: l$createTag == null
          ? null
          : Mutation_createTag_createTag.fromJson(
              (l$createTag as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createTag_createTag? createTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTag = createTag;
    _resultData['createTag'] = l$createTag?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTag = createTag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createTag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createTag || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTag = createTag;
    final lOther$createTag = other.createTag;
    if (l$createTag != lOther$createTag) {
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

  TRes call({Mutation_createTag_createTag? createTag, String? $__typename});
  CopyWith_Mutation_createTag_createTag<TRes> get createTag;
}

class _CopyWithImpl_Mutation_createTag<TRes>
    implements CopyWith_Mutation_createTag<TRes> {
  _CopyWithImpl_Mutation_createTag(this._instance, this._then);

  final Mutation_createTag _instance;

  final TRes Function(Mutation_createTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTag = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createTag(
      createTag: createTag == _undefined
          ? _instance.createTag
          : (createTag as Mutation_createTag_createTag?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createTag_createTag<TRes> get createTag {
    final local$createTag = _instance.createTag;
    return local$createTag == null
        ? CopyWith_Mutation_createTag_createTag.stub(_then(_instance))
        : CopyWith_Mutation_createTag_createTag(
            local$createTag,
            (e) => call(createTag: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createTag<TRes>
    implements CopyWith_Mutation_createTag<TRes> {
  _CopyWithStubImpl_Mutation_createTag(this._res);

  TRes _res;

  call({Mutation_createTag_createTag? createTag, String? $__typename}) => _res;

  CopyWith_Mutation_createTag_createTag<TRes> get createTag =>
      CopyWith_Mutation_createTag_createTag.stub(_res);
}

const documentNodeMutationcreateTag = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createTag'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateTagInput'),
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
            name: NameNode(value: 'createTag'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Tag'),
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
    fragmentDefinitionTag,
  ],
);

class Mutation_createTag_createTag {
  Mutation_createTag_createTag({
    this.result,
    this.$__typename = 'CreateTagResult',
  });

  factory Mutation_createTag_createTag.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createTag_createTag(
      result: l$result == null
          ? null
          : Fragment_Tag.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Tag? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createTag_createTag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_createTag_createTag
    on Mutation_createTag_createTag {
  CopyWith_Mutation_createTag_createTag<Mutation_createTag_createTag>
  get copyWith => CopyWith_Mutation_createTag_createTag(this, (i) => i);
}

abstract class CopyWith_Mutation_createTag_createTag<TRes> {
  factory CopyWith_Mutation_createTag_createTag(
    Mutation_createTag_createTag instance,
    TRes Function(Mutation_createTag_createTag) then,
  ) = _CopyWithImpl_Mutation_createTag_createTag;

  factory CopyWith_Mutation_createTag_createTag.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createTag_createTag;

  TRes call({Fragment_Tag? result, String? $__typename});
  CopyWith_Fragment_Tag<TRes> get result;
}

class _CopyWithImpl_Mutation_createTag_createTag<TRes>
    implements CopyWith_Mutation_createTag_createTag<TRes> {
  _CopyWithImpl_Mutation_createTag_createTag(this._instance, this._then);

  final Mutation_createTag_createTag _instance;

  final TRes Function(Mutation_createTag_createTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createTag_createTag(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Tag?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Tag<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Tag.stub(_then(_instance))
        : CopyWith_Fragment_Tag(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createTag_createTag<TRes>
    implements CopyWith_Mutation_createTag_createTag<TRes> {
  _CopyWithStubImpl_Mutation_createTag_createTag(this._res);

  TRes _res;

  call({Fragment_Tag? result, String? $__typename}) => _res;

  CopyWith_Fragment_Tag<TRes> get result => CopyWith_Fragment_Tag.stub(_res);
}
