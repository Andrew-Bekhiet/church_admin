import 'package:gql/ast.dart';

class Fragment_College {
  Fragment_College({
    required this.id,
    required this.name,
    this.universityId,
    this.$__typename = 'College',
  });

  factory Fragment_College.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$universityId = json['universityId'];
    final l$$__typename = json['__typename'];
    return Fragment_College(
      id: (l$id as String),
      name: (l$name as String),
      universityId: (l$universityId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? universityId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$universityId = universityId;
    _resultData['universityId'] = l$universityId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$universityId = universityId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$universityId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_College || runtimeType != other.runtimeType) {
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
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (l$universityId != lOther$universityId) {
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

extension UtilityExtension_Fragment_College on Fragment_College {
  CopyWith_Fragment_College<Fragment_College> get copyWith =>
      CopyWith_Fragment_College(this, (i) => i);
}

abstract class CopyWith_Fragment_College<TRes> {
  factory CopyWith_Fragment_College(
    Fragment_College instance,
    TRes Function(Fragment_College) then,
  ) = _CopyWithImpl_Fragment_College;

  factory CopyWith_Fragment_College.stub(TRes res) =
      _CopyWithStubImpl_Fragment_College;

  TRes call({
    String? id,
    String? name,
    String? universityId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_College<TRes>
    implements CopyWith_Fragment_College<TRes> {
  _CopyWithImpl_Fragment_College(this._instance, this._then);

  final Fragment_College _instance;

  final TRes Function(Fragment_College) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? universityId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_College(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      universityId: universityId == _undefined
          ? _instance.universityId
          : (universityId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_College<TRes>
    implements CopyWith_Fragment_College<TRes> {
  _CopyWithStubImpl_Fragment_College(this._res);

  TRes _res;

  call({String? id, String? name, String? universityId, String? $__typename}) =>
      _res;
}

const fragmentDefinitionCollege = FragmentDefinitionNode(
  name: NameNode(value: 'College'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'College'), isNonNull: false),
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
        name: NameNode(value: 'universityId'),
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
const documentNodeFragmentCollege = DocumentNode(
  definitions: [fragmentDefinitionCollege],
);
