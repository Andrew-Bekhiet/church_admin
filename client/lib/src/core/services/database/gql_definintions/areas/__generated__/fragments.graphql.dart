import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Area {
  Fragment_Area({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Area',
  });

  factory Fragment_Area.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_Area(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Area || runtimeType != other.runtimeType) {
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
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

extension UtilityExtension_Fragment_Area on Fragment_Area {
  CopyWith_Fragment_Area<Fragment_Area> get copyWith =>
      CopyWith_Fragment_Area(this, (i) => i);
}

abstract class CopyWith_Fragment_Area<TRes> {
  factory CopyWith_Fragment_Area(
    Fragment_Area instance,
    TRes Function(Fragment_Area) then,
  ) = _CopyWithImpl_Fragment_Area;

  factory CopyWith_Fragment_Area.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Area;

  TRes call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_Area<TRes>
    implements CopyWith_Fragment_Area<TRes> {
  _CopyWithImpl_Fragment_Area(this._instance, this._then);

  final Fragment_Area _instance;

  final TRes Function(Fragment_Area) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Area(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Area<TRes>
    implements CopyWith_Fragment_Area<TRes> {
  _CopyWithStubImpl_Fragment_Area(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionArea = FragmentDefinitionNode(
  name: NameNode(value: 'Area'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Area'), isNonNull: false),
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
        name: NameNode(value: 'userCanEdit'),
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
const documentNodeFragmentArea = DocumentNode(
  definitions: [fragmentDefinitionArea],
);

class Fragment_AreaWithBounds implements Fragment_Area {
  Fragment_AreaWithBounds({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Area',
    this.bounds,
  });

  factory Fragment_AreaWithBounds.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$bounds = json['bounds'];
    return Fragment_AreaWithBounds(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      bounds: (l$bounds as Json?),
    );
  }

  final String id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  final Json? bounds;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$bounds = bounds;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
      l$bounds,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AreaWithBounds || runtimeType != other.runtimeType) {
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_AreaWithBounds on Fragment_AreaWithBounds {
  CopyWith_Fragment_AreaWithBounds<Fragment_AreaWithBounds> get copyWith =>
      CopyWith_Fragment_AreaWithBounds(this, (i) => i);
}

abstract class CopyWith_Fragment_AreaWithBounds<TRes> {
  factory CopyWith_Fragment_AreaWithBounds(
    Fragment_AreaWithBounds instance,
    TRes Function(Fragment_AreaWithBounds) then,
  ) = _CopyWithImpl_Fragment_AreaWithBounds;

  factory CopyWith_Fragment_AreaWithBounds.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AreaWithBounds;

  TRes call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? bounds,
  });
}

class _CopyWithImpl_Fragment_AreaWithBounds<TRes>
    implements CopyWith_Fragment_AreaWithBounds<TRes> {
  _CopyWithImpl_Fragment_AreaWithBounds(this._instance, this._then);

  final Fragment_AreaWithBounds _instance;

  final TRes Function(Fragment_AreaWithBounds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? bounds = _undefined,
  }) => _then(
    Fragment_AreaWithBounds(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      bounds: bounds == _undefined ? _instance.bounds : (bounds as Json?),
    ),
  );
}

class _CopyWithStubImpl_Fragment_AreaWithBounds<TRes>
    implements CopyWith_Fragment_AreaWithBounds<TRes> {
  _CopyWithStubImpl_Fragment_AreaWithBounds(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? bounds,
  }) => _res;
}

const fragmentDefinitionAreaWithBounds = FragmentDefinitionNode(
  name: NameNode(value: 'AreaWithBounds'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Area'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Area'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'bounds'),
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
const documentNodeFragmentAreaWithBounds = DocumentNode(
  definitions: [fragmentDefinitionAreaWithBounds, fragmentDefinitionArea],
);

class Fragment_AreaDetails implements Fragment_AreaWithBounds, Fragment_Area {
  Fragment_AreaDetails({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Area',
    this.bounds,
    this.latestEdit,
    required this.admins,
  });

  factory Fragment_AreaDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$bounds = json['bounds'];
    final l$latestEdit = json['latestEdit'];
    final l$admins = json['admins'];
    return Fragment_AreaDetails(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      bounds: (l$bounds as Json?),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_PlaceLatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      admins: (l$admins as List<dynamic>)
          .map((e) => Fragment_PlaceUser.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  final Json? bounds;

  final Fragment_PlaceLatestEdit? latestEdit;

  final List<Fragment_PlaceUser> admins;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$admins = admins;
    _resultData['admins'] = l$admins.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$bounds = bounds;
    final l$latestEdit = latestEdit;
    final l$admins = admins;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
      l$bounds,
      l$latestEdit,
      Object.hashAll(l$admins.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AreaDetails || runtimeType != other.runtimeType) {
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$admins = admins;
    final lOther$admins = other.admins;
    if (l$admins.length != lOther$admins.length) {
      return false;
    }
    for (int i = 0; i < l$admins.length; i++) {
      final l$admins$entry = l$admins[i];
      final lOther$admins$entry = lOther$admins[i];
      if (l$admins$entry != lOther$admins$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Fragment_AreaDetails on Fragment_AreaDetails {
  CopyWith_Fragment_AreaDetails<Fragment_AreaDetails> get copyWith =>
      CopyWith_Fragment_AreaDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_AreaDetails<TRes> {
  factory CopyWith_Fragment_AreaDetails(
    Fragment_AreaDetails instance,
    TRes Function(Fragment_AreaDetails) then,
  ) = _CopyWithImpl_Fragment_AreaDetails;

  factory CopyWith_Fragment_AreaDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AreaDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? bounds,
    Fragment_PlaceLatestEdit? latestEdit,
    List<Fragment_PlaceUser>? admins,
  });
  CopyWith_Fragment_PlaceLatestEdit<TRes> get latestEdit;
  TRes admins(
    Iterable<Fragment_PlaceUser> Function(
      Iterable<CopyWith_Fragment_PlaceUser<Fragment_PlaceUser>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_AreaDetails<TRes>
    implements CopyWith_Fragment_AreaDetails<TRes> {
  _CopyWithImpl_Fragment_AreaDetails(this._instance, this._then);

  final Fragment_AreaDetails _instance;

  final TRes Function(Fragment_AreaDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? bounds = _undefined,
    Object? latestEdit = _undefined,
    Object? admins = _undefined,
  }) => _then(
    Fragment_AreaDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      bounds: bounds == _undefined ? _instance.bounds : (bounds as Json?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_PlaceLatestEdit?),
      admins: admins == _undefined || admins == null
          ? _instance.admins
          : (admins as List<Fragment_PlaceUser>),
    ),
  );

  CopyWith_Fragment_PlaceLatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_PlaceLatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_PlaceLatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  TRes admins(
    Iterable<Fragment_PlaceUser> Function(
      Iterable<CopyWith_Fragment_PlaceUser<Fragment_PlaceUser>>,
    )
    _fn,
  ) => call(
    admins: _fn(
      _instance.admins.map((e) => CopyWith_Fragment_PlaceUser(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_AreaDetails<TRes>
    implements CopyWith_Fragment_AreaDetails<TRes> {
  _CopyWithStubImpl_Fragment_AreaDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? bounds,
    Fragment_PlaceLatestEdit? latestEdit,
    List<Fragment_PlaceUser>? admins,
  }) => _res;

  CopyWith_Fragment_PlaceLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_PlaceLatestEdit.stub(_res);

  admins(_fn) => _res;
}

const fragmentDefinitionAreaDetails = FragmentDefinitionNode(
  name: NameNode(value: 'AreaDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Area'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'AreaWithBounds'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'latestEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PlaceLatestEdit'),
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
        name: NameNode(value: 'admins'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PlaceUser'),
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
);
const documentNodeFragmentAreaDetails = DocumentNode(
  definitions: [
    fragmentDefinitionAreaDetails,
    fragmentDefinitionAreaWithBounds,
    fragmentDefinitionArea,
    fragmentDefinitionPlaceLatestEdit,
    fragmentDefinitionPlaceUser,
  ],
);

class Fragment_PlaceUser {
  Fragment_PlaceUser({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
  });

  factory Fragment_PlaceUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_PlaceUser(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PlaceUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PlaceUser on Fragment_PlaceUser {
  CopyWith_Fragment_PlaceUser<Fragment_PlaceUser> get copyWith =>
      CopyWith_Fragment_PlaceUser(this, (i) => i);
}

abstract class CopyWith_Fragment_PlaceUser<TRes> {
  factory CopyWith_Fragment_PlaceUser(
    Fragment_PlaceUser instance,
    TRes Function(Fragment_PlaceUser) then,
  ) = _CopyWithImpl_Fragment_PlaceUser;

  factory CopyWith_Fragment_PlaceUser.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PlaceUser;

  TRes call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_PlaceUser<TRes>
    implements CopyWith_Fragment_PlaceUser<TRes> {
  _CopyWithImpl_Fragment_PlaceUser(this._instance, this._then);

  final Fragment_PlaceUser _instance;

  final TRes Function(Fragment_PlaceUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PlaceUser(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PlaceUser<TRes>
    implements CopyWith_Fragment_PlaceUser<TRes> {
  _CopyWithStubImpl_Fragment_PlaceUser(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPlaceUser = FragmentDefinitionNode(
  name: NameNode(value: 'PlaceUser'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
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
        name: NameNode(value: 'uid'),
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
        name: NameNode(value: 'email'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
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
    ],
  ),
);
const documentNodeFragmentPlaceUser = DocumentNode(
  definitions: [fragmentDefinitionPlaceUser],
);

class Fragment_PlaceLatestEdit {
  Fragment_PlaceLatestEdit({
    required this.id,
    this.time,
    this.user,
    this.$__typename = 'LatestEdit',
  });

  factory Fragment_PlaceLatestEdit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_PlaceLatestEdit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_PlaceUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final Fragment_PlaceUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PlaceLatestEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_PlaceLatestEdit
    on Fragment_PlaceLatestEdit {
  CopyWith_Fragment_PlaceLatestEdit<Fragment_PlaceLatestEdit> get copyWith =>
      CopyWith_Fragment_PlaceLatestEdit(this, (i) => i);
}

abstract class CopyWith_Fragment_PlaceLatestEdit<TRes> {
  factory CopyWith_Fragment_PlaceLatestEdit(
    Fragment_PlaceLatestEdit instance,
    TRes Function(Fragment_PlaceLatestEdit) then,
  ) = _CopyWithImpl_Fragment_PlaceLatestEdit;

  factory CopyWith_Fragment_PlaceLatestEdit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PlaceLatestEdit;

  TRes call({
    String? id,
    DateTime? time,
    Fragment_PlaceUser? user,
    String? $__typename,
  });
  CopyWith_Fragment_PlaceUser<TRes> get user;
}

class _CopyWithImpl_Fragment_PlaceLatestEdit<TRes>
    implements CopyWith_Fragment_PlaceLatestEdit<TRes> {
  _CopyWithImpl_Fragment_PlaceLatestEdit(this._instance, this._then);

  final Fragment_PlaceLatestEdit _instance;

  final TRes Function(Fragment_PlaceLatestEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PlaceLatestEdit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined ? _instance.user : (user as Fragment_PlaceUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PlaceUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_PlaceUser.stub(_then(_instance))
        : CopyWith_Fragment_PlaceUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_PlaceLatestEdit<TRes>
    implements CopyWith_Fragment_PlaceLatestEdit<TRes> {
  _CopyWithStubImpl_Fragment_PlaceLatestEdit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    Fragment_PlaceUser? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_PlaceUser<TRes> get user =>
      CopyWith_Fragment_PlaceUser.stub(_res);
}

const fragmentDefinitionPlaceLatestEdit = FragmentDefinitionNode(
  name: NameNode(value: 'PlaceLatestEdit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LatestEdit'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PlaceUser'),
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
);
const documentNodeFragmentPlaceLatestEdit = DocumentNode(
  definitions: [fragmentDefinitionPlaceLatestEdit, fragmentDefinitionPlaceUser],
);

class Fragment_PlaceLatestVisit {
  Fragment_PlaceLatestVisit({
    required this.id,
    this.time,
    this.user,
    this.$__typename = 'LatestVisit',
  });

  factory Fragment_PlaceLatestVisit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_PlaceLatestVisit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_PlaceUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final Fragment_PlaceUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PlaceLatestVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_PlaceLatestVisit
    on Fragment_PlaceLatestVisit {
  CopyWith_Fragment_PlaceLatestVisit<Fragment_PlaceLatestVisit> get copyWith =>
      CopyWith_Fragment_PlaceLatestVisit(this, (i) => i);
}

abstract class CopyWith_Fragment_PlaceLatestVisit<TRes> {
  factory CopyWith_Fragment_PlaceLatestVisit(
    Fragment_PlaceLatestVisit instance,
    TRes Function(Fragment_PlaceLatestVisit) then,
  ) = _CopyWithImpl_Fragment_PlaceLatestVisit;

  factory CopyWith_Fragment_PlaceLatestVisit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PlaceLatestVisit;

  TRes call({
    String? id,
    DateTime? time,
    Fragment_PlaceUser? user,
    String? $__typename,
  });
  CopyWith_Fragment_PlaceUser<TRes> get user;
}

class _CopyWithImpl_Fragment_PlaceLatestVisit<TRes>
    implements CopyWith_Fragment_PlaceLatestVisit<TRes> {
  _CopyWithImpl_Fragment_PlaceLatestVisit(this._instance, this._then);

  final Fragment_PlaceLatestVisit _instance;

  final TRes Function(Fragment_PlaceLatestVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PlaceLatestVisit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined ? _instance.user : (user as Fragment_PlaceUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PlaceUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_PlaceUser.stub(_then(_instance))
        : CopyWith_Fragment_PlaceUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_PlaceLatestVisit<TRes>
    implements CopyWith_Fragment_PlaceLatestVisit<TRes> {
  _CopyWithStubImpl_Fragment_PlaceLatestVisit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    Fragment_PlaceUser? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_PlaceUser<TRes> get user =>
      CopyWith_Fragment_PlaceUser.stub(_res);
}

const fragmentDefinitionPlaceLatestVisit = FragmentDefinitionNode(
  name: NameNode(value: 'PlaceLatestVisit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LatestVisit'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PlaceUser'),
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
);
const documentNodeFragmentPlaceLatestVisit = DocumentNode(
  definitions: [
    fragmentDefinitionPlaceLatestVisit,
    fragmentDefinitionPlaceUser,
  ],
);
