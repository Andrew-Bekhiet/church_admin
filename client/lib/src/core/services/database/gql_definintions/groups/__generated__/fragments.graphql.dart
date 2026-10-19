import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_GroupNoPhoto {
  Fragment_GroupNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Group',
  });

  factory Fragment_GroupNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_GroupNoPhoto(
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
    if (other is! Fragment_GroupNoPhoto || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_GroupNoPhoto on Fragment_GroupNoPhoto {
  CopyWith_Fragment_GroupNoPhoto<Fragment_GroupNoPhoto> get copyWith =>
      CopyWith_Fragment_GroupNoPhoto(this, (i) => i);
}

abstract class CopyWith_Fragment_GroupNoPhoto<TRes> {
  factory CopyWith_Fragment_GroupNoPhoto(
    Fragment_GroupNoPhoto instance,
    TRes Function(Fragment_GroupNoPhoto) then,
  ) = _CopyWithImpl_Fragment_GroupNoPhoto;

  factory CopyWith_Fragment_GroupNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_GroupNoPhoto;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_GroupNoPhoto<TRes>
    implements CopyWith_Fragment_GroupNoPhoto<TRes> {
  _CopyWithImpl_Fragment_GroupNoPhoto(this._instance, this._then);

  final Fragment_GroupNoPhoto _instance;

  final TRes Function(Fragment_GroupNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_GroupNoPhoto(
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

class _CopyWithStubImpl_Fragment_GroupNoPhoto<TRes>
    implements CopyWith_Fragment_GroupNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_GroupNoPhoto(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionGroupNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'GroupNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false),
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
const documentNodeFragmentGroupNoPhoto = DocumentNode(
  definitions: [fragmentDefinitionGroupNoPhoto],
);

class Fragment_Group implements Fragment_GroupNoPhoto {
  Fragment_Group({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Group',
    this.photoUpdatedAt,
    this.blurhash,
    required this.serviceId,
    this.validity,
  });

  factory Fragment_Group.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$serviceId = json['serviceId'];
    final l$validity = json['validity'];
    return Fragment_Group(
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
      validity: (l$validity as String?),
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

  final String? validity;

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
    final l$validity = validity;
    _resultData['validity'] = l$validity;
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
    final l$validity = validity;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$serviceId,
      l$validity,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Group || runtimeType != other.runtimeType) {
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
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (l$validity != lOther$validity) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Group on Fragment_Group {
  CopyWith_Fragment_Group<Fragment_Group> get copyWith =>
      CopyWith_Fragment_Group(this, (i) => i);
}

abstract class CopyWith_Fragment_Group<TRes> {
  factory CopyWith_Fragment_Group(
    Fragment_Group instance,
    TRes Function(Fragment_Group) then,
  ) = _CopyWithImpl_Fragment_Group;

  factory CopyWith_Fragment_Group.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Group;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    String? validity,
  });
}

class _CopyWithImpl_Fragment_Group<TRes>
    implements CopyWith_Fragment_Group<TRes> {
  _CopyWithImpl_Fragment_Group(this._instance, this._then);

  final Fragment_Group _instance;

  final TRes Function(Fragment_Group) _then;

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
    Object? validity = _undefined,
  }) => _then(
    Fragment_Group(
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
      validity: validity == _undefined
          ? _instance.validity
          : (validity as String?),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Group<TRes>
    implements CopyWith_Fragment_Group<TRes> {
  _CopyWithStubImpl_Fragment_Group(this._res);

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
    String? validity,
  }) => _res;
}

const fragmentDefinitionGroup = FragmentDefinitionNode(
  name: NameNode(value: 'Group'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
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
        name: NameNode(value: 'blurhash'),
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
        name: NameNode(value: 'validity'),
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
const documentNodeFragmentGroup = DocumentNode(
  definitions: [fragmentDefinitionGroup, fragmentDefinitionGroupNoPhoto],
);

class Fragment_GroupDetails implements Fragment_Group, Fragment_GroupNoPhoto {
  Fragment_GroupDetails({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Group',
    this.photoUpdatedAt,
    this.blurhash,
    required this.serviceId,
    this.validity,
    this.defaultMeeting,
    required this.meetings,
    this.service,
    this.latestEdit,
    required this.admins,
  });

  factory Fragment_GroupDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$serviceId = json['serviceId'];
    final l$validity = json['validity'];
    final l$defaultMeeting = json['defaultMeeting'];
    final l$meetings = json['meetings'];
    final l$service = json['service'];
    final l$latestEdit = json['latestEdit'];
    final l$admins = json['admins'];
    return Fragment_GroupDetails(
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
      validity: (l$validity as String?),
      defaultMeeting: l$defaultMeeting == null
          ? null
          : Fragment_OrgMeeting.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            ),
      meetings: (l$meetings as List<dynamic>)
          .map((e) => Fragment_OrgMeeting.fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
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

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String serviceId;

  final String? validity;

  final Fragment_OrgMeeting? defaultMeeting;

  final List<Fragment_OrgMeeting> meetings;

  final Fragment_ServiceWithStudyYears? service;

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
    final l$validity = validity;
    _resultData['validity'] = l$validity;
    final l$defaultMeeting = defaultMeeting;
    _resultData['defaultMeeting'] = l$defaultMeeting?.toJson();
    final l$meetings = meetings;
    _resultData['meetings'] = l$meetings.map((e) => e.toJson()).toList();
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
    final l$validity = validity;
    final l$defaultMeeting = defaultMeeting;
    final l$meetings = meetings;
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
      l$validity,
      l$defaultMeeting,
      Object.hashAll(l$meetings.map((v) => v)),
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
    if (other is! Fragment_GroupDetails || runtimeType != other.runtimeType) {
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
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (l$validity != lOther$validity) {
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

extension UtilityExtension_Fragment_GroupDetails on Fragment_GroupDetails {
  CopyWith_Fragment_GroupDetails<Fragment_GroupDetails> get copyWith =>
      CopyWith_Fragment_GroupDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_GroupDetails<TRes> {
  factory CopyWith_Fragment_GroupDetails(
    Fragment_GroupDetails instance,
    TRes Function(Fragment_GroupDetails) then,
  ) = _CopyWithImpl_Fragment_GroupDetails;

  factory CopyWith_Fragment_GroupDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_GroupDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    String? validity,
    Fragment_OrgMeeting? defaultMeeting,
    List<Fragment_OrgMeeting>? meetings,
    Fragment_ServiceWithStudyYears? service,
    Fragment_LatestEdit? latestEdit,
    List<Fragment_User>? admins,
  });
  CopyWith_Fragment_OrgMeeting<TRes> get defaultMeeting;
  TRes meetings(
    Iterable<Fragment_OrgMeeting> Function(
      Iterable<CopyWith_Fragment_OrgMeeting<Fragment_OrgMeeting>>,
    )
    _fn,
  );
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  TRes admins(
    Iterable<Fragment_User> Function(
      Iterable<CopyWith_Fragment_User<Fragment_User>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_GroupDetails<TRes>
    implements CopyWith_Fragment_GroupDetails<TRes> {
  _CopyWithImpl_Fragment_GroupDetails(this._instance, this._then);

  final Fragment_GroupDetails _instance;

  final TRes Function(Fragment_GroupDetails) _then;

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
    Object? validity = _undefined,
    Object? defaultMeeting = _undefined,
    Object? meetings = _undefined,
    Object? service = _undefined,
    Object? latestEdit = _undefined,
    Object? admins = _undefined,
  }) => _then(
    Fragment_GroupDetails(
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
      validity: validity == _undefined
          ? _instance.validity
          : (validity as String?),
      defaultMeeting: defaultMeeting == _undefined
          ? _instance.defaultMeeting
          : (defaultMeeting as Fragment_OrgMeeting?),
      meetings: meetings == _undefined || meetings == null
          ? _instance.meetings
          : (meetings as List<Fragment_OrgMeeting>),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_LatestEdit?),
      admins: admins == _undefined || admins == null
          ? _instance.admins
          : (admins as List<Fragment_User>),
    ),
  );

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

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }

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

class _CopyWithStubImpl_Fragment_GroupDetails<TRes>
    implements CopyWith_Fragment_GroupDetails<TRes> {
  _CopyWithStubImpl_Fragment_GroupDetails(this._res);

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
    String? validity,
    Fragment_OrgMeeting? defaultMeeting,
    List<Fragment_OrgMeeting>? meetings,
    Fragment_ServiceWithStudyYears? service,
    Fragment_LatestEdit? latestEdit,
    List<Fragment_User>? admins,
  }) => _res;

  CopyWith_Fragment_OrgMeeting<TRes> get defaultMeeting =>
      CopyWith_Fragment_OrgMeeting.stub(_res);

  meetings(_fn) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

  admins(_fn) => _res;
}

const fragmentDefinitionGroupDetails = FragmentDefinitionNode(
  name: NameNode(value: 'GroupDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Group'),
        directives: [],
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
const documentNodeFragmentGroupDetails = DocumentNode(
  definitions: [
    fragmentDefinitionGroupDetails,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
  ],
);
