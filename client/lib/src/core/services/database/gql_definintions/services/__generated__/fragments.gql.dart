import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Service implements Fragment_ServiceNoPhoto {
  Fragment_Service({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_Service.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_Service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

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
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
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
    if (other is! Fragment_Service || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_Service on Fragment_Service {
  CopyWith_Fragment_Service<Fragment_Service> get copyWith =>
      CopyWith_Fragment_Service(this, (i) => i);
}

abstract class CopyWith_Fragment_Service<TRes> {
  factory CopyWith_Fragment_Service(
    Fragment_Service instance,
    TRes Function(Fragment_Service) then,
  ) = _CopyWithImpl_Fragment_Service;

  factory CopyWith_Fragment_Service.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });
}

class _CopyWithImpl_Fragment_Service<TRes>
    implements CopyWith_Fragment_Service<TRes> {
  _CopyWithImpl_Fragment_Service(this._instance, this._then);

  final Fragment_Service _instance;

  final TRes Function(Fragment_Service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
  }) => _then(
    Fragment_Service(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Service<TRes>
    implements CopyWith_Fragment_Service<TRes> {
  _CopyWithStubImpl_Fragment_Service(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  }) => _res;
}

const fragmentDefinitionService = FragmentDefinitionNode(
  name: NameNode(value: 'Service'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Services'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'ServiceNoPhoto'),
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
    ],
  ),
);
const documentNodeFragmentService = DocumentNode(
  definitions: [fragmentDefinitionService, fragmentDefinitionServiceNoPhoto],
);

class Fragment_ServiceWithStudyYears implements Fragment_ServiceNoPhoto {
  Fragment_ServiceWithStudyYears({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Services',
    this.studyYearFrom,
    this.studyYearTo,
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_ServiceWithStudyYears.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_ServiceWithStudyYears(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_ServiceWithStudyYears_studyYearFrom.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_ServiceWithStudyYears_studyYearTo.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final Fragment_ServiceWithStudyYears_studyYearFrom? studyYearFrom;

  final Fragment_ServiceWithStudyYears_studyYearTo? studyYearTo;

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
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
      l$photoUpdatedAt,
      l$blurhash,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ServiceWithStudyYears ||
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
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
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

extension UtilityExtension_Fragment_ServiceWithStudyYears
    on Fragment_ServiceWithStudyYears {
  CopyWith_Fragment_ServiceWithStudyYears<Fragment_ServiceWithStudyYears>
  get copyWith => CopyWith_Fragment_ServiceWithStudyYears(this, (i) => i);
}

abstract class CopyWith_Fragment_ServiceWithStudyYears<TRes> {
  factory CopyWith_Fragment_ServiceWithStudyYears(
    Fragment_ServiceWithStudyYears instance,
    TRes Function(Fragment_ServiceWithStudyYears) then,
  ) = _CopyWithImpl_Fragment_ServiceWithStudyYears;

  factory CopyWith_Fragment_ServiceWithStudyYears.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ServiceWithStudyYears;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    Fragment_ServiceWithStudyYears_studyYearFrom? studyYearFrom,
    Fragment_ServiceWithStudyYears_studyYearTo? studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });
  CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<TRes> get studyYearFrom;
  CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<TRes> get studyYearTo;
}

class _CopyWithImpl_Fragment_ServiceWithStudyYears<TRes>
    implements CopyWith_Fragment_ServiceWithStudyYears<TRes> {
  _CopyWithImpl_Fragment_ServiceWithStudyYears(this._instance, this._then);

  final Fragment_ServiceWithStudyYears _instance;

  final TRes Function(Fragment_ServiceWithStudyYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
  }) => _then(
    Fragment_ServiceWithStudyYears(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_ServiceWithStudyYears_studyYearFrom?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_ServiceWithStudyYears_studyYearTo?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<TRes>
  get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_ServiceWithStudyYears_studyYearTo.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_ServiceWithStudyYears_studyYearTo(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_ServiceWithStudyYears<TRes>
    implements CopyWith_Fragment_ServiceWithStudyYears<TRes> {
  _CopyWithStubImpl_Fragment_ServiceWithStudyYears(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    Fragment_ServiceWithStudyYears_studyYearFrom? studyYearFrom,
    Fragment_ServiceWithStudyYears_studyYearTo? studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<TRes>
  get studyYearFrom =>
      CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom.stub(_res);

  CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<TRes> get studyYearTo =>
      CopyWith_Fragment_ServiceWithStudyYears_studyYearTo.stub(_res);
}

const fragmentDefinitionServiceWithStudyYears = FragmentDefinitionNode(
  name: NameNode(value: 'ServiceWithStudyYears'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Services'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'ServiceNoPhoto'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'studyYearFrom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'order'),
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
        name: NameNode(value: 'studyYearTo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'order'),
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
const documentNodeFragmentServiceWithStudyYears = DocumentNode(
  definitions: [
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionServiceNoPhoto,
  ],
);

class Fragment_ServiceWithStudyYears_studyYearFrom {
  Fragment_ServiceWithStudyYears_studyYearFrom({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_ServiceWithStudyYears_studyYearFrom.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_ServiceWithStudyYears_studyYearFrom(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$order, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ServiceWithStudyYears_studyYearFrom ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension_Fragment_ServiceWithStudyYears_studyYearFrom
    on Fragment_ServiceWithStudyYears_studyYearFrom {
  CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<
    Fragment_ServiceWithStudyYears_studyYearFrom
  >
  get copyWith =>
      CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom(this, (i) => i);
}

abstract class CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<TRes> {
  factory CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom(
    Fragment_ServiceWithStudyYears_studyYearFrom instance,
    TRes Function(Fragment_ServiceWithStudyYears_studyYearFrom) then,
  ) = _CopyWithImpl_Fragment_ServiceWithStudyYears_studyYearFrom;

  factory CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ServiceWithStudyYears_studyYearFrom;

  TRes call({int? order, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_ServiceWithStudyYears_studyYearFrom<TRes>
    implements CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<TRes> {
  _CopyWithImpl_Fragment_ServiceWithStudyYears_studyYearFrom(
    this._instance,
    this._then,
  );

  final Fragment_ServiceWithStudyYears_studyYearFrom _instance;

  final TRes Function(Fragment_ServiceWithStudyYears_studyYearFrom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ServiceWithStudyYears_studyYearFrom(
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_ServiceWithStudyYears_studyYearFrom<TRes>
    implements CopyWith_Fragment_ServiceWithStudyYears_studyYearFrom<TRes> {
  _CopyWithStubImpl_Fragment_ServiceWithStudyYears_studyYearFrom(this._res);

  TRes _res;

  call({int? order, String? name, String? $__typename}) => _res;
}

class Fragment_ServiceWithStudyYears_studyYearTo {
  Fragment_ServiceWithStudyYears_studyYearTo({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_ServiceWithStudyYears_studyYearTo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_ServiceWithStudyYears_studyYearTo(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$order, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ServiceWithStudyYears_studyYearTo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension_Fragment_ServiceWithStudyYears_studyYearTo
    on Fragment_ServiceWithStudyYears_studyYearTo {
  CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<
    Fragment_ServiceWithStudyYears_studyYearTo
  >
  get copyWith =>
      CopyWith_Fragment_ServiceWithStudyYears_studyYearTo(this, (i) => i);
}

abstract class CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<TRes> {
  factory CopyWith_Fragment_ServiceWithStudyYears_studyYearTo(
    Fragment_ServiceWithStudyYears_studyYearTo instance,
    TRes Function(Fragment_ServiceWithStudyYears_studyYearTo) then,
  ) = _CopyWithImpl_Fragment_ServiceWithStudyYears_studyYearTo;

  factory CopyWith_Fragment_ServiceWithStudyYears_studyYearTo.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ServiceWithStudyYears_studyYearTo;

  TRes call({int? order, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_ServiceWithStudyYears_studyYearTo<TRes>
    implements CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<TRes> {
  _CopyWithImpl_Fragment_ServiceWithStudyYears_studyYearTo(
    this._instance,
    this._then,
  );

  final Fragment_ServiceWithStudyYears_studyYearTo _instance;

  final TRes Function(Fragment_ServiceWithStudyYears_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ServiceWithStudyYears_studyYearTo(
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_ServiceWithStudyYears_studyYearTo<TRes>
    implements CopyWith_Fragment_ServiceWithStudyYears_studyYearTo<TRes> {
  _CopyWithStubImpl_Fragment_ServiceWithStudyYears_studyYearTo(this._res);

  TRes _res;

  call({int? order, String? name, String? $__typename}) => _res;
}

class Fragment_ServiceNoPhoto {
  Fragment_ServiceNoPhoto({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Services',
  });

  factory Fragment_ServiceNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_ServiceNoPhoto(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
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
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ServiceNoPhoto || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_ServiceNoPhoto on Fragment_ServiceNoPhoto {
  CopyWith_Fragment_ServiceNoPhoto<Fragment_ServiceNoPhoto> get copyWith =>
      CopyWith_Fragment_ServiceNoPhoto(this, (i) => i);
}

abstract class CopyWith_Fragment_ServiceNoPhoto<TRes> {
  factory CopyWith_Fragment_ServiceNoPhoto(
    Fragment_ServiceNoPhoto instance,
    TRes Function(Fragment_ServiceNoPhoto) then,
  ) = _CopyWithImpl_Fragment_ServiceNoPhoto;

  factory CopyWith_Fragment_ServiceNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ServiceNoPhoto;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_ServiceNoPhoto<TRes>
    implements CopyWith_Fragment_ServiceNoPhoto<TRes> {
  _CopyWithImpl_Fragment_ServiceNoPhoto(this._instance, this._then);

  final Fragment_ServiceNoPhoto _instance;

  final TRes Function(Fragment_ServiceNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ServiceNoPhoto(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_ServiceNoPhoto<TRes>
    implements CopyWith_Fragment_ServiceNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_ServiceNoPhoto(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionServiceNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'ServiceNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Services'), isNonNull: false),
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
const documentNodeFragmentServiceNoPhoto = DocumentNode(
  definitions: [fragmentDefinitionServiceNoPhoto],
);
