import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_ClassNoPhoto {
  Fragment_ClassNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Class',
  });

  factory Fragment_ClassNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_ClassNoPhoto(
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

extension UtilityExtension_Fragment_ClassNoPhoto on Fragment_ClassNoPhoto {
  CopyWith_Fragment_ClassNoPhoto<Fragment_ClassNoPhoto> get copyWith =>
      CopyWith_Fragment_ClassNoPhoto(this, (i) => i);
}

abstract class CopyWith_Fragment_ClassNoPhoto<TRes> {
  factory CopyWith_Fragment_ClassNoPhoto(
    Fragment_ClassNoPhoto instance,
    TRes Function(Fragment_ClassNoPhoto) then,
  ) = _CopyWithImpl_Fragment_ClassNoPhoto;

  factory CopyWith_Fragment_ClassNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ClassNoPhoto;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_ClassNoPhoto<TRes>
    implements CopyWith_Fragment_ClassNoPhoto<TRes> {
  _CopyWithImpl_Fragment_ClassNoPhoto(this._instance, this._then);

  final Fragment_ClassNoPhoto _instance;

  final TRes Function(Fragment_ClassNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ClassNoPhoto(
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

class _CopyWithStubImpl_Fragment_ClassNoPhoto<TRes>
    implements CopyWith_Fragment_ClassNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_ClassNoPhoto(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionClassNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'ClassNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Class'), isNonNull: false),
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
const documentNodeFragmentClassNoPhoto = DocumentNode(
  definitions: [fragmentDefinitionClassNoPhoto],
);

class Fragment_Class implements Fragment_ClassNoPhoto {
  Fragment_Class({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Class',
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_Class.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_Class(
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

extension UtilityExtension_Fragment_Class on Fragment_Class {
  CopyWith_Fragment_Class<Fragment_Class> get copyWith =>
      CopyWith_Fragment_Class(this, (i) => i);
}

abstract class CopyWith_Fragment_Class<TRes> {
  factory CopyWith_Fragment_Class(
    Fragment_Class instance,
    TRes Function(Fragment_Class) then,
  ) = _CopyWithImpl_Fragment_Class;

  factory CopyWith_Fragment_Class.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Class;

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

class _CopyWithImpl_Fragment_Class<TRes>
    implements CopyWith_Fragment_Class<TRes> {
  _CopyWithImpl_Fragment_Class(this._instance, this._then);

  final Fragment_Class _instance;

  final TRes Function(Fragment_Class) _then;

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
    Fragment_Class(
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

class _CopyWithStubImpl_Fragment_Class<TRes>
    implements CopyWith_Fragment_Class<TRes> {
  _CopyWithStubImpl_Fragment_Class(this._res);

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

const fragmentDefinitionClass = FragmentDefinitionNode(
  name: NameNode(value: 'Class'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Class'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
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
    ],
  ),
);
const documentNodeFragmentClass = DocumentNode(
  definitions: [fragmentDefinitionClass, fragmentDefinitionClassNoPhoto],
);

class Fragment_ClassWithStudyYears
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Fragment_ClassWithStudyYears({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Class',
    this.photoUpdatedAt,
    this.blurhash,
    required this.serviceId,
    required this.serviceStudyYear,
    required this.serviceStudyYearTo,
    this.serviceGender,
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Fragment_ClassWithStudyYears.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$serviceId = json['serviceId'];
    final l$serviceStudyYear = json['serviceStudyYear'];
    final l$serviceStudyYearTo = json['serviceStudyYearTo'];
    final l$serviceGender = json['serviceGender'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Fragment_ClassWithStudyYears(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      serviceId: (l$serviceId as String),
      serviceStudyYear: (l$serviceStudyYear as int),
      serviceStudyYearTo: (l$serviceStudyYearTo as int),
      serviceGender: (l$serviceGender as bool?),
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

  final String serviceId;

  final int serviceStudyYear;

  final int serviceStudyYearTo;

  final bool? serviceGender;

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
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    _resultData['serviceStudyYearTo'] = l$serviceStudyYearTo;
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
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
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final l$serviceGender = serviceGender;
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
      l$serviceId,
      l$serviceStudyYear,
      l$serviceStudyYearTo,
      l$serviceGender,
      l$studyYearFrom,
      l$studyYearTo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ClassWithStudyYears ||
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final lOther$serviceStudyYearTo = other.serviceStudyYearTo;
    if (l$serviceStudyYearTo != lOther$serviceStudyYearTo) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
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

extension UtilityExtension_Fragment_ClassWithStudyYears
    on Fragment_ClassWithStudyYears {
  CopyWith_Fragment_ClassWithStudyYears<Fragment_ClassWithStudyYears>
  get copyWith => CopyWith_Fragment_ClassWithStudyYears(this, (i) => i);
}

abstract class CopyWith_Fragment_ClassWithStudyYears<TRes> {
  factory CopyWith_Fragment_ClassWithStudyYears(
    Fragment_ClassWithStudyYears instance,
    TRes Function(Fragment_ClassWithStudyYears) then,
  ) = _CopyWithImpl_Fragment_ClassWithStudyYears;

  factory CopyWith_Fragment_ClassWithStudyYears.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ClassWithStudyYears;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    int? serviceStudyYear,
    int? serviceStudyYearTo,
    bool? serviceGender,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
}

class _CopyWithImpl_Fragment_ClassWithStudyYears<TRes>
    implements CopyWith_Fragment_ClassWithStudyYears<TRes> {
  _CopyWithImpl_Fragment_ClassWithStudyYears(this._instance, this._then);

  final Fragment_ClassWithStudyYears _instance;

  final TRes Function(Fragment_ClassWithStudyYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearTo = _undefined,
    Object? serviceGender = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Fragment_ClassWithStudyYears(
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
      serviceId: serviceId == _undefined || serviceId == null
          ? _instance.serviceId
          : (serviceId as String),
      serviceStudyYear:
          serviceStudyYear == _undefined || serviceStudyYear == null
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int),
      serviceStudyYearTo:
          serviceStudyYearTo == _undefined || serviceStudyYearTo == null
          ? _instance.serviceStudyYearTo
          : (serviceStudyYearTo as int),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
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

class _CopyWithStubImpl_Fragment_ClassWithStudyYears<TRes>
    implements CopyWith_Fragment_ClassWithStudyYears<TRes> {
  _CopyWithStubImpl_Fragment_ClassWithStudyYears(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    int? serviceStudyYear,
    int? serviceStudyYearTo,
    bool? serviceGender,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

const fragmentDefinitionClassWithStudyYears = FragmentDefinitionNode(
  name: NameNode(value: 'ClassWithStudyYears'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Class'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Class'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'serviceId'),
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
        name: NameNode(value: 'serviceStudyYearTo'),
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
const documentNodeFragmentClassWithStudyYears = DocumentNode(
  definitions: [
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
  ],
);

class Fragment_ClassDetails
    implements
        Fragment_ClassWithStudyYears,
        Fragment_Class,
        Fragment_ClassNoPhoto {
  Fragment_ClassDetails({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Class',
    this.photoUpdatedAt,
    this.blurhash,
    required this.serviceId,
    required this.serviceStudyYear,
    required this.serviceStudyYearTo,
    this.serviceGender,
    this.studyYearFrom,
    this.studyYearTo,
    this.service,
    this.latestEdit,
    required this.admins,
  });

  factory Fragment_ClassDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$serviceId = json['serviceId'];
    final l$serviceStudyYear = json['serviceStudyYear'];
    final l$serviceStudyYearTo = json['serviceStudyYearTo'];
    final l$serviceGender = json['serviceGender'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$service = json['service'];
    final l$latestEdit = json['latestEdit'];
    final l$admins = json['admins'];
    return Fragment_ClassDetails(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      serviceId: (l$serviceId as String),
      serviceStudyYear: (l$serviceStudyYear as int),
      serviceStudyYearTo: (l$serviceStudyYearTo as int),
      serviceGender: (l$serviceGender as bool?),
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
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
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

  final String serviceId;

  final int serviceStudyYear;

  final int serviceStudyYearTo;

  final bool? serviceGender;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  final Fragment_ServiceWithStudyYears? service;

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
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    _resultData['serviceStudyYearTo'] = l$serviceStudyYearTo;
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
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
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final l$serviceGender = serviceGender;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$service = service;
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
      l$serviceId,
      l$serviceStudyYear,
      l$serviceStudyYearTo,
      l$serviceGender,
      l$studyYearFrom,
      l$studyYearTo,
      l$service,
      l$latestEdit,
      Object.hashAll(l$admins.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ClassDetails || runtimeType != other.runtimeType) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final lOther$serviceStudyYearTo = other.serviceStudyYearTo;
    if (l$serviceStudyYearTo != lOther$serviceStudyYearTo) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Fragment_ClassDetails on Fragment_ClassDetails {
  CopyWith_Fragment_ClassDetails<Fragment_ClassDetails> get copyWith =>
      CopyWith_Fragment_ClassDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_ClassDetails<TRes> {
  factory CopyWith_Fragment_ClassDetails(
    Fragment_ClassDetails instance,
    TRes Function(Fragment_ClassDetails) then,
  ) = _CopyWithImpl_Fragment_ClassDetails;

  factory CopyWith_Fragment_ClassDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ClassDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    int? serviceStudyYear,
    int? serviceStudyYearTo,
    bool? serviceGender,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
    Fragment_ServiceWithStudyYears? service,
    Fragment_OrgLatestEdit? latestEdit,
    List<Fragment_OrgUser>? admins,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
  CopyWith_Fragment_OrgLatestEdit<TRes> get latestEdit;
  TRes admins(
    Iterable<Fragment_OrgUser> Function(
      Iterable<CopyWith_Fragment_OrgUser<Fragment_OrgUser>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_ClassDetails<TRes>
    implements CopyWith_Fragment_ClassDetails<TRes> {
  _CopyWithImpl_Fragment_ClassDetails(this._instance, this._then);

  final Fragment_ClassDetails _instance;

  final TRes Function(Fragment_ClassDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearTo = _undefined,
    Object? serviceGender = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? service = _undefined,
    Object? latestEdit = _undefined,
    Object? admins = _undefined,
  }) => _then(
    Fragment_ClassDetails(
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
      serviceId: serviceId == _undefined || serviceId == null
          ? _instance.serviceId
          : (serviceId as String),
      serviceStudyYear:
          serviceStudyYear == _undefined || serviceStudyYear == null
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int),
      serviceStudyYearTo:
          serviceStudyYearTo == _undefined || serviceStudyYearTo == null
          ? _instance.serviceStudyYearTo
          : (serviceStudyYearTo as int),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
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

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }

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

class _CopyWithStubImpl_Fragment_ClassDetails<TRes>
    implements CopyWith_Fragment_ClassDetails<TRes> {
  _CopyWithStubImpl_Fragment_ClassDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    int? serviceStudyYear,
    int? serviceStudyYearTo,
    bool? serviceGender,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
    Fragment_ServiceWithStudyYears? service,
    Fragment_OrgLatestEdit? latestEdit,
    List<Fragment_OrgUser>? admins,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);

  CopyWith_Fragment_OrgLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_OrgLatestEdit.stub(_res);

  admins(_fn) => _res;
}

const fragmentDefinitionClassDetails = FragmentDefinitionNode(
  name: NameNode(value: 'ClassDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Class'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'ClassWithStudyYears'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'service'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ServiceWithStudyYears'),
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
const documentNodeFragmentClassDetails = DocumentNode(
  definitions: [
    fragmentDefinitionClassDetails,
    fragmentDefinitionClassWithStudyYears,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);
