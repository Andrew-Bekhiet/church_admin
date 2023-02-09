import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment$Class implements Fragment$ClassNoPhoto {
  Fragment$Class({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
  });

  factory Fragment$Class.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    return Fragment$Class(
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
    if (!(other is Fragment$Class) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Class on Fragment$Class {
  CopyWith$Fragment$Class<Fragment$Class> get copyWith =>
      CopyWith$Fragment$Class(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Class<TRes> {
  factory CopyWith$Fragment$Class(
    Fragment$Class instance,
    TRes Function(Fragment$Class) then,
  ) = _CopyWithImpl$Fragment$Class;

  factory CopyWith$Fragment$Class.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Class;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl$Fragment$Class<TRes>
    implements CopyWith$Fragment$Class<TRes> {
  _CopyWithImpl$Fragment$Class(
    this._instance,
    this._then,
  );

  final Fragment$Class _instance;

  final TRes Function(Fragment$Class) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) =>
      _then(Fragment$Class(
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

class _CopyWithStubImpl$Fragment$Class<TRes>
    implements CopyWith$Fragment$Class<TRes> {
  _CopyWithStubImpl$Fragment$Class(this._res);

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

const fragmentDefinitionClass = FragmentDefinitionNode(
  name: NameNode(value: 'Class'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Classes'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'ClassNoPhoto'),
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
const documentNodeFragmentClass = DocumentNode(definitions: [
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
]);

class Fragment$ClassNoPhoto {
  Fragment$ClassNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Fragment$ClassNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$ClassNoPhoto(
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
    if (!(other is Fragment$ClassNoPhoto) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ClassNoPhoto on Fragment$ClassNoPhoto {
  CopyWith$Fragment$ClassNoPhoto<Fragment$ClassNoPhoto> get copyWith =>
      CopyWith$Fragment$ClassNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ClassNoPhoto<TRes> {
  factory CopyWith$Fragment$ClassNoPhoto(
    Fragment$ClassNoPhoto instance,
    TRes Function(Fragment$ClassNoPhoto) then,
  ) = _CopyWithImpl$Fragment$ClassNoPhoto;

  factory CopyWith$Fragment$ClassNoPhoto.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClassNoPhoto;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ClassNoPhoto<TRes>
    implements CopyWith$Fragment$ClassNoPhoto<TRes> {
  _CopyWithImpl$Fragment$ClassNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment$ClassNoPhoto _instance;

  final TRes Function(Fragment$ClassNoPhoto) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ClassNoPhoto(
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

class _CopyWithStubImpl$Fragment$ClassNoPhoto<TRes>
    implements CopyWith$Fragment$ClassNoPhoto<TRes> {
  _CopyWithStubImpl$Fragment$ClassNoPhoto(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionClassNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'ClassNoPhoto'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Classes'),
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
const documentNodeFragmentClassNoPhoto = DocumentNode(definitions: [
  fragmentDefinitionClassNoPhoto,
]);
