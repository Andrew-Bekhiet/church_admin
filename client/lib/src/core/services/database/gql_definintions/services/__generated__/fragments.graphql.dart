import '../../groups/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_ServiceNoPhoto {
  Fragment_ServiceNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Service',
  });

  factory Fragment_ServiceNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_ServiceNoPhoto(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

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
    String? id,
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
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
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
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionServiceNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'ServiceNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Service'), isNonNull: false),
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

class Fragment_Service implements Fragment_ServiceNoPhoto {
  Fragment_Service({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Service',
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
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    String? id,
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
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
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
    String? id,
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
    on: NamedTypeNode(name: NameNode(value: 'Service'), isNonNull: false),
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

class Fragment_ServiceWithStudyYears
    implements Fragment_Service, Fragment_ServiceNoPhoto {
  Fragment_ServiceWithStudyYears({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Service',
    this.photoUpdatedAt,
    this.blurhash,
    this.studyYearFromId,
    this.studyYearToId,
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Fragment_ServiceWithStudyYears.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$studyYearFromId = json['studyYearFromId'];
    final l$studyYearToId = json['studyYearToId'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Fragment_ServiceWithStudyYears(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      studyYearFromId: (l$studyYearFromId as int?),
      studyYearToId: (l$studyYearToId as int?),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final int? studyYearFromId;

  final int? studyYearToId;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$studyYearFromId = studyYearFromId;
    _resultData['studyYearFromId'] = l$studyYearFromId;
    final l$studyYearToId = studyYearToId;
    _resultData['studyYearToId'] = l$studyYearToId;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
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
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearToId = studyYearToId;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$studyYearFromId,
      l$studyYearToId,
      l$studyYearFrom,
      l$studyYearTo,
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
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (l$studyYearToId != lOther$studyYearToId) {
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
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    int? studyYearFromId,
    int? studyYearToId,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
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
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearToId = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Fragment_ServiceWithStudyYears(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      studyYearFromId: studyYearFromId == _undefined
          ? _instance.studyYearFromId
          : (studyYearFromId as int?),
      studyYearToId: studyYearToId == _undefined
          ? _instance.studyYearToId
          : (studyYearToId as int?),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
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
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    int? studyYearFromId,
    int? studyYearToId,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

const fragmentDefinitionServiceWithStudyYears = FragmentDefinitionNode(
  name: NameNode(value: 'ServiceWithStudyYears'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Service'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Service'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'studyYearFromId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'studyYearToId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'studyYearFrom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'StudyYear'),
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
        name: NameNode(value: 'studyYearTo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'StudyYear'),
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
const documentNodeFragmentServiceWithStudyYears = DocumentNode(
  definitions: [
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
  ],
);

class Fragment_ServiceDetails
    implements
        Fragment_ServiceWithStudyYears,
        Fragment_Service,
        Fragment_ServiceNoPhoto {
  Fragment_ServiceDetails({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Service',
    this.photoUpdatedAt,
    this.blurhash,
    this.studyYearFromId,
    this.studyYearToId,
    this.studyYearFrom,
    this.studyYearTo,
    this.nextServiceId,
    this.nextService,
    this.defaultMeeting,
    required this.meetings,
    this.latestEdit,
    required this.admins,
  });

  factory Fragment_ServiceDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$studyYearFromId = json['studyYearFromId'];
    final l$studyYearToId = json['studyYearToId'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$nextServiceId = json['nextServiceId'];
    final l$nextService = json['nextService'];
    final l$defaultMeeting = json['defaultMeeting'];
    final l$meetings = json['meetings'];
    final l$latestEdit = json['latestEdit'];
    final l$admins = json['admins'];
    return Fragment_ServiceDetails(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      studyYearFromId: (l$studyYearFromId as int?),
      studyYearToId: (l$studyYearToId as int?),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
      nextServiceId: (l$nextServiceId as String?),
      nextService: l$nextService == null
          ? null
          : Fragment_Service.fromJson((l$nextService as Map<String, dynamic>)),
      defaultMeeting: l$defaultMeeting == null
          ? null
          : Fragment_OrgMeeting.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            ),
      meetings: (l$meetings as List<dynamic>)
          .map((e) => Fragment_OrgMeeting.fromJson((e as Map<String, dynamic>)))
          .toList(),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_OrgLatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      admins: (l$admins as List<dynamic>)
          .map((e) => Fragment_OrgUser.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final int? studyYearFromId;

  final int? studyYearToId;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  final String? nextServiceId;

  final Fragment_Service? nextService;

  final Fragment_OrgMeeting? defaultMeeting;

  final List<Fragment_OrgMeeting> meetings;

  final Fragment_OrgLatestEdit? latestEdit;

  final List<Fragment_OrgUser> admins;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$studyYearFromId = studyYearFromId;
    _resultData['studyYearFromId'] = l$studyYearFromId;
    final l$studyYearToId = studyYearToId;
    _resultData['studyYearToId'] = l$studyYearToId;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$nextServiceId = nextServiceId;
    _resultData['nextServiceId'] = l$nextServiceId;
    final l$nextService = nextService;
    _resultData['nextService'] = l$nextService?.toJson();
    final l$defaultMeeting = defaultMeeting;
    _resultData['defaultMeeting'] = l$defaultMeeting?.toJson();
    final l$meetings = meetings;
    _resultData['meetings'] = l$meetings.map((e) => e.toJson()).toList();
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
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearToId = studyYearToId;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$nextServiceId = nextServiceId;
    final l$nextService = nextService;
    final l$defaultMeeting = defaultMeeting;
    final l$meetings = meetings;
    final l$latestEdit = latestEdit;
    final l$admins = admins;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$studyYearFromId,
      l$studyYearToId,
      l$studyYearFrom,
      l$studyYearTo,
      l$nextServiceId,
      l$nextService,
      l$defaultMeeting,
      Object.hashAll(l$meetings.map((v) => v)),
      l$latestEdit,
      Object.hashAll(l$admins.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ServiceDetails || runtimeType != other.runtimeType) {
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
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (l$studyYearToId != lOther$studyYearToId) {
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
    final l$nextServiceId = nextServiceId;
    final lOther$nextServiceId = other.nextServiceId;
    if (l$nextServiceId != lOther$nextServiceId) {
      return false;
    }
    final l$nextService = nextService;
    final lOther$nextService = other.nextService;
    if (l$nextService != lOther$nextService) {
      return false;
    }
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (l$defaultMeeting != lOther$defaultMeeting) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (l$meetings.length != lOther$meetings.length) {
      return false;
    }
    for (int i = 0; i < l$meetings.length; i++) {
      final l$meetings$entry = l$meetings[i];
      final lOther$meetings$entry = lOther$meetings[i];
      if (l$meetings$entry != lOther$meetings$entry) {
        return false;
      }
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

extension UtilityExtension_Fragment_ServiceDetails on Fragment_ServiceDetails {
  CopyWith_Fragment_ServiceDetails<Fragment_ServiceDetails> get copyWith =>
      CopyWith_Fragment_ServiceDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_ServiceDetails<TRes> {
  factory CopyWith_Fragment_ServiceDetails(
    Fragment_ServiceDetails instance,
    TRes Function(Fragment_ServiceDetails) then,
  ) = _CopyWithImpl_Fragment_ServiceDetails;

  factory CopyWith_Fragment_ServiceDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ServiceDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    int? studyYearFromId,
    int? studyYearToId,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
    String? nextServiceId,
    Fragment_Service? nextService,
    Fragment_OrgMeeting? defaultMeeting,
    List<Fragment_OrgMeeting>? meetings,
    Fragment_OrgLatestEdit? latestEdit,
    List<Fragment_OrgUser>? admins,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
  CopyWith_Fragment_Service<TRes> get nextService;
  CopyWith_Fragment_OrgMeeting<TRes> get defaultMeeting;
  TRes meetings(
    Iterable<Fragment_OrgMeeting> Function(
      Iterable<CopyWith_Fragment_OrgMeeting<Fragment_OrgMeeting>>,
    )
    _fn,
  );
  CopyWith_Fragment_OrgLatestEdit<TRes> get latestEdit;
  TRes admins(
    Iterable<Fragment_OrgUser> Function(
      Iterable<CopyWith_Fragment_OrgUser<Fragment_OrgUser>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_ServiceDetails<TRes>
    implements CopyWith_Fragment_ServiceDetails<TRes> {
  _CopyWithImpl_Fragment_ServiceDetails(this._instance, this._then);

  final Fragment_ServiceDetails _instance;

  final TRes Function(Fragment_ServiceDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearToId = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? nextServiceId = _undefined,
    Object? nextService = _undefined,
    Object? defaultMeeting = _undefined,
    Object? meetings = _undefined,
    Object? latestEdit = _undefined,
    Object? admins = _undefined,
  }) => _then(
    Fragment_ServiceDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      studyYearFromId: studyYearFromId == _undefined
          ? _instance.studyYearFromId
          : (studyYearFromId as int?),
      studyYearToId: studyYearToId == _undefined
          ? _instance.studyYearToId
          : (studyYearToId as int?),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
      nextServiceId: nextServiceId == _undefined
          ? _instance.nextServiceId
          : (nextServiceId as String?),
      nextService: nextService == _undefined
          ? _instance.nextService
          : (nextService as Fragment_Service?),
      defaultMeeting: defaultMeeting == _undefined
          ? _instance.defaultMeeting
          : (defaultMeeting as Fragment_OrgMeeting?),
      meetings: meetings == _undefined || meetings == null
          ? _instance.meetings
          : (meetings as List<Fragment_OrgMeeting>),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_OrgLatestEdit?),
      admins: admins == _undefined || admins == null
          ? _instance.admins
          : (admins as List<Fragment_OrgUser>),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }

  CopyWith_Fragment_Service<TRes> get nextService {
    final local$nextService = _instance.nextService;
    return local$nextService == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(
            local$nextService,
            (e) => call(nextService: e),
          );
  }

  CopyWith_Fragment_OrgMeeting<TRes> get defaultMeeting {
    final local$defaultMeeting = _instance.defaultMeeting;
    return local$defaultMeeting == null
        ? CopyWith_Fragment_OrgMeeting.stub(_then(_instance))
        : CopyWith_Fragment_OrgMeeting(
            local$defaultMeeting,
            (e) => call(defaultMeeting: e),
          );
  }

  TRes meetings(
    Iterable<Fragment_OrgMeeting> Function(
      Iterable<CopyWith_Fragment_OrgMeeting<Fragment_OrgMeeting>>,
    )
    _fn,
  ) => call(
    meetings: _fn(
      _instance.meetings.map((e) => CopyWith_Fragment_OrgMeeting(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Fragment_OrgLatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_OrgLatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_OrgLatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  TRes admins(
    Iterable<Fragment_OrgUser> Function(
      Iterable<CopyWith_Fragment_OrgUser<Fragment_OrgUser>>,
    )
    _fn,
  ) => call(
    admins: _fn(
      _instance.admins.map((e) => CopyWith_Fragment_OrgUser(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_ServiceDetails<TRes>
    implements CopyWith_Fragment_ServiceDetails<TRes> {
  _CopyWithStubImpl_Fragment_ServiceDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    int? studyYearFromId,
    int? studyYearToId,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
    String? nextServiceId,
    Fragment_Service? nextService,
    Fragment_OrgMeeting? defaultMeeting,
    List<Fragment_OrgMeeting>? meetings,
    Fragment_OrgLatestEdit? latestEdit,
    List<Fragment_OrgUser>? admins,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_Service<TRes> get nextService =>
      CopyWith_Fragment_Service.stub(_res);

  CopyWith_Fragment_OrgMeeting<TRes> get defaultMeeting =>
      CopyWith_Fragment_OrgMeeting.stub(_res);

  meetings(_fn) => _res;

  CopyWith_Fragment_OrgLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_OrgLatestEdit.stub(_res);

  admins(_fn) => _res;
}

const fragmentDefinitionServiceDetails = FragmentDefinitionNode(
  name: NameNode(value: 'ServiceDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Service'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'ServiceWithStudyYears'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'nextServiceId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'nextService'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Service'),
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
        name: NameNode(value: 'defaultMeeting'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'OrgMeeting'),
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
        name: NameNode(value: 'meetings'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'OrgMeeting'),
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
              name: NameNode(value: 'OrgLatestEdit'),
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
              name: NameNode(value: 'OrgUser'),
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
const documentNodeFragmentServiceDetails = DocumentNode(
  definitions: [
    fragmentDefinitionServiceDetails,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);

class Fragment_OrgUser {
  Fragment_OrgUser({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
  });

  factory Fragment_OrgUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_OrgUser(
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
    if (other is! Fragment_OrgUser || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_OrgUser on Fragment_OrgUser {
  CopyWith_Fragment_OrgUser<Fragment_OrgUser> get copyWith =>
      CopyWith_Fragment_OrgUser(this, (i) => i);
}

abstract class CopyWith_Fragment_OrgUser<TRes> {
  factory CopyWith_Fragment_OrgUser(
    Fragment_OrgUser instance,
    TRes Function(Fragment_OrgUser) then,
  ) = _CopyWithImpl_Fragment_OrgUser;

  factory CopyWith_Fragment_OrgUser.stub(TRes res) =
      _CopyWithStubImpl_Fragment_OrgUser;

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

class _CopyWithImpl_Fragment_OrgUser<TRes>
    implements CopyWith_Fragment_OrgUser<TRes> {
  _CopyWithImpl_Fragment_OrgUser(this._instance, this._then);

  final Fragment_OrgUser _instance;

  final TRes Function(Fragment_OrgUser) _then;

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
    Fragment_OrgUser(
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

class _CopyWithStubImpl_Fragment_OrgUser<TRes>
    implements CopyWith_Fragment_OrgUser<TRes> {
  _CopyWithStubImpl_Fragment_OrgUser(this._res);

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

const fragmentDefinitionOrgUser = FragmentDefinitionNode(
  name: NameNode(value: 'OrgUser'),
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
const documentNodeFragmentOrgUser = DocumentNode(
  definitions: [fragmentDefinitionOrgUser],
);

class Fragment_OrgLatestEdit {
  Fragment_OrgLatestEdit({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestEdit',
  });

  factory Fragment_OrgLatestEdit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_OrgLatestEdit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_OrgUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_OrgUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
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
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_OrgLatestEdit || runtimeType != other.runtimeType) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
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

extension UtilityExtension_Fragment_OrgLatestEdit on Fragment_OrgLatestEdit {
  CopyWith_Fragment_OrgLatestEdit<Fragment_OrgLatestEdit> get copyWith =>
      CopyWith_Fragment_OrgLatestEdit(this, (i) => i);
}

abstract class CopyWith_Fragment_OrgLatestEdit<TRes> {
  factory CopyWith_Fragment_OrgLatestEdit(
    Fragment_OrgLatestEdit instance,
    TRes Function(Fragment_OrgLatestEdit) then,
  ) = _CopyWithImpl_Fragment_OrgLatestEdit;

  factory CopyWith_Fragment_OrgLatestEdit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_OrgLatestEdit;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_OrgUser? user,
    String? $__typename,
  });
  CopyWith_Fragment_OrgUser<TRes> get user;
}

class _CopyWithImpl_Fragment_OrgLatestEdit<TRes>
    implements CopyWith_Fragment_OrgLatestEdit<TRes> {
  _CopyWithImpl_Fragment_OrgLatestEdit(this._instance, this._then);

  final Fragment_OrgLatestEdit _instance;

  final TRes Function(Fragment_OrgLatestEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_OrgLatestEdit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_OrgUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_OrgUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_OrgUser.stub(_then(_instance))
        : CopyWith_Fragment_OrgUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_OrgLatestEdit<TRes>
    implements CopyWith_Fragment_OrgLatestEdit<TRes> {
  _CopyWithStubImpl_Fragment_OrgLatestEdit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_OrgUser? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_OrgUser<TRes> get user =>
      CopyWith_Fragment_OrgUser.stub(_res);
}

const fragmentDefinitionOrgLatestEdit = FragmentDefinitionNode(
  name: NameNode(value: 'OrgLatestEdit'),
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
        name: NameNode(value: 'recordedBy'),
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
              name: NameNode(value: 'OrgUser'),
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
const documentNodeFragmentOrgLatestEdit = DocumentNode(
  definitions: [fragmentDefinitionOrgLatestEdit, fragmentDefinitionOrgUser],
);

class Fragment_OrgMeeting {
  Fragment_OrgMeeting({
    required this.id,
    required this.name,
    required this.audience,
    this.color,
    required this.isArchived,
    required this.showKodasCheckbox,
    this.serviceId,
    this.serviceGender,
    this.serviceStudyYear,
    this.groupId,
    this.service,
    this.studyYear,
    this.group,
    this.$__typename = 'Meeting',
  });

  factory Fragment_OrgMeeting.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$audience = json['audience'];
    final l$color = json['color'];
    final l$isArchived = json['isArchived'];
    final l$showKodasCheckbox = json['showKodasCheckbox'];
    final l$serviceId = json['serviceId'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceStudyYear = json['serviceStudyYear'];
    final l$groupId = json['groupId'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment_OrgMeeting(
      id: (l$id as String),
      name: (l$name as String),
      audience: (l$audience as String),
      color: (l$color as int?),
      isArchived: (l$isArchived as bool),
      showKodasCheckbox: (l$showKodasCheckbox as bool),
      serviceId: (l$serviceId as String?),
      serviceGender: (l$serviceGender as bool?),
      serviceStudyYear: (l$serviceStudyYear as int?),
      groupId: (l$groupId as String?),
      service: l$service == null
          ? null
          : Fragment_ServiceNoPhoto.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      group: l$group == null
          ? null
          : Fragment_GroupNoPhoto.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String audience;

  final int? color;

  final bool isArchived;

  final bool showKodasCheckbox;

  final String? serviceId;

  final bool? serviceGender;

  final int? serviceStudyYear;

  final String? groupId;

  final Fragment_ServiceNoPhoto? service;

  final Fragment_StudyYear? studyYear;

  final Fragment_GroupNoPhoto? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$audience = audience;
    _resultData['audience'] = l$audience;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$isArchived = isArchived;
    _resultData['isArchived'] = l$isArchived;
    final l$showKodasCheckbox = showKodasCheckbox;
    _resultData['showKodasCheckbox'] = l$showKodasCheckbox;
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$audience = audience;
    final l$color = color;
    final l$isArchived = isArchived;
    final l$showKodasCheckbox = showKodasCheckbox;
    final l$serviceId = serviceId;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$groupId = groupId;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$audience,
      l$color,
      l$isArchived,
      l$showKodasCheckbox,
      l$serviceId,
      l$serviceGender,
      l$serviceStudyYear,
      l$groupId,
      l$service,
      l$studyYear,
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_OrgMeeting || runtimeType != other.runtimeType) {
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
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (l$audience != lOther$audience) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (l$isArchived != lOther$isArchived) {
      return false;
    }
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
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

extension UtilityExtension_Fragment_OrgMeeting on Fragment_OrgMeeting {
  CopyWith_Fragment_OrgMeeting<Fragment_OrgMeeting> get copyWith =>
      CopyWith_Fragment_OrgMeeting(this, (i) => i);
}

abstract class CopyWith_Fragment_OrgMeeting<TRes> {
  factory CopyWith_Fragment_OrgMeeting(
    Fragment_OrgMeeting instance,
    TRes Function(Fragment_OrgMeeting) then,
  ) = _CopyWithImpl_Fragment_OrgMeeting;

  factory CopyWith_Fragment_OrgMeeting.stub(TRes res) =
      _CopyWithStubImpl_Fragment_OrgMeeting;

  TRes call({
    String? id,
    String? name,
    String? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    String? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    String? groupId,
    Fragment_ServiceNoPhoto? service,
    Fragment_StudyYear? studyYear,
    Fragment_GroupNoPhoto? group,
    String? $__typename,
  });
  CopyWith_Fragment_ServiceNoPhoto<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_GroupNoPhoto<TRes> get group;
}

class _CopyWithImpl_Fragment_OrgMeeting<TRes>
    implements CopyWith_Fragment_OrgMeeting<TRes> {
  _CopyWithImpl_Fragment_OrgMeeting(this._instance, this._then);

  final Fragment_OrgMeeting _instance;

  final TRes Function(Fragment_OrgMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? isArchived = _undefined,
    Object? showKodasCheckbox = _undefined,
    Object? serviceId = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? groupId = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_OrgMeeting(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      audience: audience == _undefined || audience == null
          ? _instance.audience
          : (audience as String),
      color: color == _undefined ? _instance.color : (color as int?),
      isArchived: isArchived == _undefined || isArchived == null
          ? _instance.isArchived
          : (isArchived as bool),
      showKodasCheckbox:
          showKodasCheckbox == _undefined || showKodasCheckbox == null
          ? _instance.showKodasCheckbox
          : (showKodasCheckbox as bool),
      serviceId: serviceId == _undefined
          ? _instance.serviceId
          : (serviceId as String?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceStudyYear: serviceStudyYear == _undefined
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int?),
      groupId: groupId == _undefined ? _instance.groupId : (groupId as String?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceNoPhoto?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_GroupNoPhoto?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_ServiceNoPhoto<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceNoPhoto.stub(_then(_instance))
        : CopyWith_Fragment_ServiceNoPhoto(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Fragment_GroupNoPhoto<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_GroupNoPhoto.stub(_then(_instance))
        : CopyWith_Fragment_GroupNoPhoto(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_OrgMeeting<TRes>
    implements CopyWith_Fragment_OrgMeeting<TRes> {
  _CopyWithStubImpl_Fragment_OrgMeeting(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    String? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    String? groupId,
    Fragment_ServiceNoPhoto? service,
    Fragment_StudyYear? studyYear,
    Fragment_GroupNoPhoto? group,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_ServiceNoPhoto<TRes> get service =>
      CopyWith_Fragment_ServiceNoPhoto.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_GroupNoPhoto<TRes> get group =>
      CopyWith_Fragment_GroupNoPhoto.stub(_res);
}

const fragmentDefinitionOrgMeeting = FragmentDefinitionNode(
  name: NameNode(value: 'OrgMeeting'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Meeting'), isNonNull: false),
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
        name: NameNode(value: 'audience'),
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
        name: NameNode(value: 'isArchived'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'showKodasCheckbox'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'serviceId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'serviceGender'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'serviceStudyYear'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'groupId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'service'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ServiceNoPhoto'),
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
        name: NameNode(value: 'studyYear'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'StudyYear'),
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
        name: NameNode(value: 'group'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'GroupNoPhoto'),
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
const documentNodeFragmentOrgMeeting = DocumentNode(
  definitions: [
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionGroupNoPhoto,
  ],
);
