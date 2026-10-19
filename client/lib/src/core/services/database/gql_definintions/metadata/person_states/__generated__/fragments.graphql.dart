import 'package:gql/ast.dart';

class Fragment_PersonState {
  Fragment_PersonState({
    required this.id,
    required this.name,
    required this.color,
    this.$__typename = 'PersonState',
  });

  factory Fragment_PersonState.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonState(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$color, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonState || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PersonState on Fragment_PersonState {
  CopyWith_Fragment_PersonState<Fragment_PersonState> get copyWith =>
      CopyWith_Fragment_PersonState(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonState<TRes> {
  factory CopyWith_Fragment_PersonState(
    Fragment_PersonState instance,
    TRes Function(Fragment_PersonState) then,
  ) = _CopyWithImpl_Fragment_PersonState;

  factory CopyWith_Fragment_PersonState.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonState;

  TRes call({String? id, String? name, int? color, String? $__typename});
}

class _CopyWithImpl_Fragment_PersonState<TRes>
    implements CopyWith_Fragment_PersonState<TRes> {
  _CopyWithImpl_Fragment_PersonState(this._instance, this._then);

  final Fragment_PersonState _instance;

  final TRes Function(Fragment_PersonState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonState(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined || color == null
          ? _instance.color
          : (color as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PersonState<TRes>
    implements CopyWith_Fragment_PersonState<TRes> {
  _CopyWithStubImpl_Fragment_PersonState(this._res);

  TRes _res;

  call({String? id, String? name, int? color, String? $__typename}) => _res;
}

const fragmentDefinitionPersonState = FragmentDefinitionNode(
  name: NameNode(value: 'PersonState'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'PersonState'), isNonNull: false),
  ),
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
        name: NameNode(value: 'color'),
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
);
const documentNodeFragmentPersonState = DocumentNode(
  definitions: [fragmentDefinitionPersonState],
);
