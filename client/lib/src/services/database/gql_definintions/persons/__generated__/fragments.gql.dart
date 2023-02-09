import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment$Person implements Fragment$PersonNoPhoto {
  Fragment$Person({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
  });

  factory Fragment$Person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    return Fragment$Person(
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
    if (!(other is Fragment$Person) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Person on Fragment$Person {
  CopyWith$Fragment$Person<Fragment$Person> get copyWith =>
      CopyWith$Fragment$Person(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Person<TRes> {
  factory CopyWith$Fragment$Person(
    Fragment$Person instance,
    TRes Function(Fragment$Person) then,
  ) = _CopyWithImpl$Fragment$Person;

  factory CopyWith$Fragment$Person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl$Fragment$Person<TRes>
    implements CopyWith$Fragment$Person<TRes> {
  _CopyWithImpl$Fragment$Person(
    this._instance,
    this._then,
  );

  final Fragment$Person _instance;

  final TRes Function(Fragment$Person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) =>
      _then(Fragment$Person(
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

class _CopyWithStubImpl$Fragment$Person<TRes>
    implements CopyWith$Fragment$Person<TRes> {
  _CopyWithStubImpl$Fragment$Person(this._res);

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

const fragmentDefinitionPerson = FragmentDefinitionNode(
  name: NameNode(value: 'Person'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Persons'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'PersonNoPhoto'),
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
const documentNodeFragmentPerson = DocumentNode(definitions: [
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Fragment$PersonNoPhoto {
  Fragment$PersonNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Fragment$PersonNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonNoPhoto(
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
    if (!(other is Fragment$PersonNoPhoto) ||
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

extension UtilityExtension$Fragment$PersonNoPhoto on Fragment$PersonNoPhoto {
  CopyWith$Fragment$PersonNoPhoto<Fragment$PersonNoPhoto> get copyWith =>
      CopyWith$Fragment$PersonNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PersonNoPhoto<TRes> {
  factory CopyWith$Fragment$PersonNoPhoto(
    Fragment$PersonNoPhoto instance,
    TRes Function(Fragment$PersonNoPhoto) then,
  ) = _CopyWithImpl$Fragment$PersonNoPhoto;

  factory CopyWith$Fragment$PersonNoPhoto.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonNoPhoto;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PersonNoPhoto<TRes>
    implements CopyWith$Fragment$PersonNoPhoto<TRes> {
  _CopyWithImpl$Fragment$PersonNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment$PersonNoPhoto _instance;

  final TRes Function(Fragment$PersonNoPhoto) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonNoPhoto(
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

class _CopyWithStubImpl$Fragment$PersonNoPhoto<TRes>
    implements CopyWith$Fragment$PersonNoPhoto<TRes> {
  _CopyWithStubImpl$Fragment$PersonNoPhoto(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPersonNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'PersonNoPhoto'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Persons'),
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
const documentNodeFragmentPersonNoPhoto = DocumentNode(definitions: [
  fragmentDefinitionPersonNoPhoto,
]);
