import '../../gql/__generated__/fragments.graphql.dart';

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
          : Fragment_LatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      admins: (l$admins as List<dynamic>)
          .map((e) => Fragment_User.fromJson((e as Map<String, dynamic>)))
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

  final Fragment_LatestEdit? latestEdit;

  final List<Fragment_User> admins;

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
    Fragment_LatestEdit? latestEdit,
    List<Fragment_User>? admins,
  });
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  TRes admins(
    Iterable<Fragment_User> Function(
      Iterable<CopyWith_Fragment_User<Fragment_User>>,
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
          : (latestEdit as Fragment_LatestEdit?),
      admins: admins == _undefined || admins == null
          ? _instance.admins
          : (admins as List<Fragment_User>),
    ),
  );

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_LatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_LatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  TRes admins(
    Iterable<Fragment_User> Function(
      Iterable<CopyWith_Fragment_User<Fragment_User>>,
    )
    _fn,
  ) => call(
    admins: _fn(
      _instance.admins.map((e) => CopyWith_Fragment_User(e, (i) => i)),
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
    Fragment_LatestEdit? latestEdit,
    List<Fragment_User>? admins,
  }) => _res;

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

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
              name: NameNode(value: 'LatestEdit'),
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
              name: NameNode(value: 'User'),
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
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
  ],
);
