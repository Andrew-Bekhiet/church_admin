import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment$Group implements Fragment$GroupNoPhoto {
  Fragment$Group({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
  });

  factory Fragment$Group.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    return Fragment$Group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Group) || runtimeType != other.runtimeType) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Group on Fragment$Group {
  CopyWith$Fragment$Group<Fragment$Group> get copyWith =>
      CopyWith$Fragment$Group(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Group<TRes> {
  factory CopyWith$Fragment$Group(
    Fragment$Group instance,
    TRes Function(Fragment$Group) then,
  ) = _CopyWithImpl$Fragment$Group;

  factory CopyWith$Fragment$Group.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl$Fragment$Group<TRes>
    implements CopyWith$Fragment$Group<TRes> {
  _CopyWithImpl$Fragment$Group(
    this._instance,
    this._then,
  );

  final Fragment$Group _instance;

  final TRes Function(Fragment$Group) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) =>
      _then(Fragment$Group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
      ));
}

class _CopyWithStubImpl$Fragment$Group<TRes>
    implements CopyWith$Fragment$Group<TRes> {
  _CopyWithStubImpl$Fragment$Group(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
  }) =>
      _res;
}

const fragmentDefinitionGroup = FragmentDefinitionNode(
  name: NameNode(value: 'Group'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Groups'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'GroupNoPhoto'),
      directives: [],
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
);
const documentNodeFragmentGroup = DocumentNode(definitions: [
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);

class Fragment$GroupNoPhoto {
  Fragment$GroupNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Fragment$GroupNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$GroupNoPhoto(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GroupNoPhoto) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$GroupNoPhoto on Fragment$GroupNoPhoto {
  CopyWith$Fragment$GroupNoPhoto<Fragment$GroupNoPhoto> get copyWith =>
      CopyWith$Fragment$GroupNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$GroupNoPhoto<TRes> {
  factory CopyWith$Fragment$GroupNoPhoto(
    Fragment$GroupNoPhoto instance,
    TRes Function(Fragment$GroupNoPhoto) then,
  ) = _CopyWithImpl$Fragment$GroupNoPhoto;

  factory CopyWith$Fragment$GroupNoPhoto.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GroupNoPhoto;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GroupNoPhoto<TRes>
    implements CopyWith$Fragment$GroupNoPhoto<TRes> {
  _CopyWithImpl$Fragment$GroupNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment$GroupNoPhoto _instance;

  final TRes Function(Fragment$GroupNoPhoto) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GroupNoPhoto(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GroupNoPhoto<TRes>
    implements CopyWith$Fragment$GroupNoPhoto<TRes> {
  _CopyWithStubImpl$Fragment$GroupNoPhoto(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionGroupNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'GroupNoPhoto'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Groups'),
    isNonNull: false,
  )),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentGroupNoPhoto = DocumentNode(definitions: [
  fragmentDefinitionGroupNoPhoto,
]);
