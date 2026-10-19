import 'package:gql/ast.dart';

class Fragment_Father {
  Fragment_Father({
    required this.id,
    required this.name,
    this.churchId,
    required this.isHidden,
    this.$__typename = 'Father',
  });

  factory Fragment_Father.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$churchId = json['churchId'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    return Fragment_Father(
      id: (l$id as String),
      name: (l$name as String),
      churchId: (l$churchId as String?),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? churchId;

  final bool isHidden;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$churchId = churchId;
    _resultData['churchId'] = l$churchId;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$churchId = churchId;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$churchId,
      l$isHidden,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Father || runtimeType != other.runtimeType) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
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

extension UtilityExtension_Fragment_Father on Fragment_Father {
  CopyWith_Fragment_Father<Fragment_Father> get copyWith =>
      CopyWith_Fragment_Father(this, (i) => i);
}

abstract class CopyWith_Fragment_Father<TRes> {
  factory CopyWith_Fragment_Father(
    Fragment_Father instance,
    TRes Function(Fragment_Father) then,
  ) = _CopyWithImpl_Fragment_Father;

  factory CopyWith_Fragment_Father.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Father;

  TRes call({
    String? id,
    String? name,
    String? churchId,
    bool? isHidden,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_Father<TRes>
    implements CopyWith_Fragment_Father<TRes> {
  _CopyWithImpl_Fragment_Father(this._instance, this._then);

  final Fragment_Father _instance;

  final TRes Function(Fragment_Father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? churchId = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Father(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      churchId: churchId == _undefined
          ? _instance.churchId
          : (churchId as String?),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Father<TRes>
    implements CopyWith_Fragment_Father<TRes> {
  _CopyWithStubImpl_Fragment_Father(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? churchId,
    bool? isHidden,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionFather = FragmentDefinitionNode(
  name: NameNode(value: 'Father'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Father'), isNonNull: false),
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
        name: NameNode(value: 'churchId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isHidden'),
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
const documentNodeFragmentFather = DocumentNode(
  definitions: [fragmentDefinitionFather],
);
