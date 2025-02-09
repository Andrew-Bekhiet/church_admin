import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Class implements Fragment_ClassNoPhoto {
  Fragment_Class({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_Class.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_Class(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

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
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Class || runtimeType != other.runtimeType) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Class on Fragment_Class {
  CopyWith_Fragment_Class<Fragment_Class> get copyWith =>
      CopyWith_Fragment_Class(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_Class<TRes> {
  factory CopyWith_Fragment_Class(
    Fragment_Class instance,
    TRes Function(Fragment_Class) then,
  ) = _CopyWithImpl_Fragment_Class;

  factory CopyWith_Fragment_Class.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Class;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });
}

class _CopyWithImpl_Fragment_Class<TRes>
    implements CopyWith_Fragment_Class<TRes> {
  _CopyWithImpl_Fragment_Class(
    this._instance,
    this._then,
  );

  final Fragment_Class _instance;

  final TRes Function(Fragment_Class) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
  }) =>
      _then(Fragment_Class(
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
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
      ));
}

class _CopyWithStubImpl_Fragment_Class<TRes>
    implements CopyWith_Fragment_Class<TRes> {
  _CopyWithStubImpl_Fragment_Class(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
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
      name: NameNode(value: 'blurhash'),
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

class Fragment_ClassNoPhoto {
  Fragment_ClassNoPhoto({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
  });

  factory Fragment_ClassNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_ClassNoPhoto(
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
    if (other is! Fragment_ClassNoPhoto || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_ClassNoPhoto on Fragment_ClassNoPhoto {
  CopyWith_Fragment_ClassNoPhoto<Fragment_ClassNoPhoto> get copyWith =>
      CopyWith_Fragment_ClassNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_ClassNoPhoto<TRes> {
  factory CopyWith_Fragment_ClassNoPhoto(
    Fragment_ClassNoPhoto instance,
    TRes Function(Fragment_ClassNoPhoto) then,
  ) = _CopyWithImpl_Fragment_ClassNoPhoto;

  factory CopyWith_Fragment_ClassNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ClassNoPhoto;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_ClassNoPhoto<TRes>
    implements CopyWith_Fragment_ClassNoPhoto<TRes> {
  _CopyWithImpl_Fragment_ClassNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment_ClassNoPhoto _instance;

  final TRes Function(Fragment_ClassNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_ClassNoPhoto(
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

class _CopyWithStubImpl_Fragment_ClassNoPhoto<TRes>
    implements CopyWith_Fragment_ClassNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_ClassNoPhoto(this._res);

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
