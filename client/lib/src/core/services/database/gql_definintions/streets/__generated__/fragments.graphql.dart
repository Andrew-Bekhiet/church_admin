import '../../areas/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Street {
  Fragment_Street({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Street',
  });

  factory Fragment_Street.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_Street(
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
    if (other is! Fragment_Street || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_Street on Fragment_Street {
  CopyWith_Fragment_Street<Fragment_Street> get copyWith =>
      CopyWith_Fragment_Street(this, (i) => i);
}

abstract class CopyWith_Fragment_Street<TRes> {
  factory CopyWith_Fragment_Street(
    Fragment_Street instance,
    TRes Function(Fragment_Street) then,
  ) = _CopyWithImpl_Fragment_Street;

  factory CopyWith_Fragment_Street.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Street;

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

class _CopyWithImpl_Fragment_Street<TRes>
    implements CopyWith_Fragment_Street<TRes> {
  _CopyWithImpl_Fragment_Street(this._instance, this._then);

  final Fragment_Street _instance;

  final TRes Function(Fragment_Street) _then;

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
    Fragment_Street(
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

class _CopyWithStubImpl_Fragment_Street<TRes>
    implements CopyWith_Fragment_Street<TRes> {
  _CopyWithStubImpl_Fragment_Street(this._res);

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

const fragmentDefinitionStreet = FragmentDefinitionNode(
  name: NameNode(value: 'Street'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Street'), isNonNull: false),
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
const documentNodeFragmentStreet = DocumentNode(
  definitions: [fragmentDefinitionStreet],
);

class Fragment_StreetWithLine implements Fragment_Street {
  Fragment_StreetWithLine({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Street',
    this.line,
  });

  factory Fragment_StreetWithLine.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$line = json['line'];
    return Fragment_StreetWithLine(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      line: (l$line as Json?),
    );
  }

  final String id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  final Json? line;

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
    final l$line = line;
    _resultData['line'] = l$line;
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
    final l$line = line;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
      l$line,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_StreetWithLine || runtimeType != other.runtimeType) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_StreetWithLine on Fragment_StreetWithLine {
  CopyWith_Fragment_StreetWithLine<Fragment_StreetWithLine> get copyWith =>
      CopyWith_Fragment_StreetWithLine(this, (i) => i);
}

abstract class CopyWith_Fragment_StreetWithLine<TRes> {
  factory CopyWith_Fragment_StreetWithLine(
    Fragment_StreetWithLine instance,
    TRes Function(Fragment_StreetWithLine) then,
  ) = _CopyWithImpl_Fragment_StreetWithLine;

  factory CopyWith_Fragment_StreetWithLine.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StreetWithLine;

  TRes call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? line,
  });
}

class _CopyWithImpl_Fragment_StreetWithLine<TRes>
    implements CopyWith_Fragment_StreetWithLine<TRes> {
  _CopyWithImpl_Fragment_StreetWithLine(this._instance, this._then);

  final Fragment_StreetWithLine _instance;

  final TRes Function(Fragment_StreetWithLine) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? line = _undefined,
  }) => _then(
    Fragment_StreetWithLine(
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
      line: line == _undefined ? _instance.line : (line as Json?),
    ),
  );
}

class _CopyWithStubImpl_Fragment_StreetWithLine<TRes>
    implements CopyWith_Fragment_StreetWithLine<TRes> {
  _CopyWithStubImpl_Fragment_StreetWithLine(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? line,
  }) => _res;
}

const fragmentDefinitionStreetWithLine = FragmentDefinitionNode(
  name: NameNode(value: 'StreetWithLine'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Street'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Street'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'line'),
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
const documentNodeFragmentStreetWithLine = DocumentNode(
  definitions: [fragmentDefinitionStreetWithLine, fragmentDefinitionStreet],
);

class Fragment_StreetDetails
    implements Fragment_StreetWithLine, Fragment_Street {
  Fragment_StreetDetails({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Street',
    this.line,
    required this.areas,
    this.latestEdit,
    this.latestVisit,
  });

  factory Fragment_StreetDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$line = json['line'];
    final l$areas = json['areas'];
    final l$latestEdit = json['latestEdit'];
    final l$latestVisit = json['latestVisit'];
    return Fragment_StreetDetails(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      line: (l$line as Json?),
      areas: (l$areas as List<dynamic>)
          .map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_LatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      latestVisit: l$latestVisit == null
          ? null
          : Fragment_LatestVisit.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  final Json? line;

  final List<Fragment_Area> areas;

  final Fragment_LatestEdit? latestEdit;

  final Fragment_LatestVisit? latestVisit;

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
    final l$line = line;
    _resultData['line'] = l$line;
    final l$areas = areas;
    _resultData['areas'] = l$areas.map((e) => e.toJson()).toList();
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$latestVisit = latestVisit;
    _resultData['latestVisit'] = l$latestVisit?.toJson();
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
    final l$line = line;
    final l$areas = areas;
    final l$latestEdit = latestEdit;
    final l$latestVisit = latestVisit;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
      l$line,
      Object.hashAll(l$areas.map((v) => v)),
      l$latestEdit,
      l$latestVisit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_StreetDetails || runtimeType != other.runtimeType) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas.length != lOther$areas.length) {
      return false;
    }
    for (int i = 0; i < l$areas.length; i++) {
      final l$areas$entry = l$areas[i];
      final lOther$areas$entry = lOther$areas[i];
      if (l$areas$entry != lOther$areas$entry) {
        return false;
      }
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_StreetDetails on Fragment_StreetDetails {
  CopyWith_Fragment_StreetDetails<Fragment_StreetDetails> get copyWith =>
      CopyWith_Fragment_StreetDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_StreetDetails<TRes> {
  factory CopyWith_Fragment_StreetDetails(
    Fragment_StreetDetails instance,
    TRes Function(Fragment_StreetDetails) then,
  ) = _CopyWithImpl_Fragment_StreetDetails;

  factory CopyWith_Fragment_StreetDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StreetDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? line,
    List<Fragment_Area>? areas,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestVisit? latestVisit,
  });
  TRes areas(
    Iterable<Fragment_Area> Function(
      Iterable<CopyWith_Fragment_Area<Fragment_Area>>,
    )
    _fn,
  );
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_LatestVisit<TRes> get latestVisit;
}

class _CopyWithImpl_Fragment_StreetDetails<TRes>
    implements CopyWith_Fragment_StreetDetails<TRes> {
  _CopyWithImpl_Fragment_StreetDetails(this._instance, this._then);

  final Fragment_StreetDetails _instance;

  final TRes Function(Fragment_StreetDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? line = _undefined,
    Object? areas = _undefined,
    Object? latestEdit = _undefined,
    Object? latestVisit = _undefined,
  }) => _then(
    Fragment_StreetDetails(
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
      line: line == _undefined ? _instance.line : (line as Json?),
      areas: areas == _undefined || areas == null
          ? _instance.areas
          : (areas as List<Fragment_Area>),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_LatestEdit?),
      latestVisit: latestVisit == _undefined
          ? _instance.latestVisit
          : (latestVisit as Fragment_LatestVisit?),
    ),
  );

  TRes areas(
    Iterable<Fragment_Area> Function(
      Iterable<CopyWith_Fragment_Area<Fragment_Area>>,
    )
    _fn,
  ) => call(
    areas: _fn(_instance.areas.map((e) => CopyWith_Fragment_Area(e, (i) => i)))
        .toList(),
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

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Fragment_LatestVisit.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisit(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_StreetDetails<TRes>
    implements CopyWith_Fragment_StreetDetails<TRes> {
  _CopyWithStubImpl_Fragment_StreetDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Json? line,
    List<Fragment_Area>? areas,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestVisit? latestVisit,
  }) => _res;

  areas(_fn) => _res;

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit =>
      CopyWith_Fragment_LatestVisit.stub(_res);
}

const fragmentDefinitionStreetDetails = FragmentDefinitionNode(
  name: NameNode(value: 'StreetDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Street'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'StreetWithLine'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'areas'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Area'),
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
        name: NameNode(value: 'latestVisit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestVisit'),
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
const documentNodeFragmentStreetDetails = DocumentNode(
  definitions: [
    fragmentDefinitionStreetDetails,
    fragmentDefinitionStreetWithLine,
    fragmentDefinitionStreet,
    fragmentDefinitionArea,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
    fragmentDefinitionLatestVisit,
  ],
);
