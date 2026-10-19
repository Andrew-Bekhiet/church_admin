import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Meeting {
  Fragment_Meeting({
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

  factory Fragment_Meeting.fromJson(Map<String, dynamic> json) {
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
    return Fragment_Meeting(
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
          : Fragment_MeetingService.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      group: l$group == null
          ? null
          : Fragment_MeetingGroup.fromJson((l$group as Map<String, dynamic>)),
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

  final Fragment_MeetingService? service;

  final Fragment_StudyYear? studyYear;

  final Fragment_MeetingGroup? group;

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
    if (other is! Fragment_Meeting || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_Meeting on Fragment_Meeting {
  CopyWith_Fragment_Meeting<Fragment_Meeting> get copyWith =>
      CopyWith_Fragment_Meeting(this, (i) => i);
}

abstract class CopyWith_Fragment_Meeting<TRes> {
  factory CopyWith_Fragment_Meeting(
    Fragment_Meeting instance,
    TRes Function(Fragment_Meeting) then,
  ) = _CopyWithImpl_Fragment_Meeting;

  factory CopyWith_Fragment_Meeting.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Meeting;

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
    Fragment_MeetingService? service,
    Fragment_StudyYear? studyYear,
    Fragment_MeetingGroup? group,
    String? $__typename,
  });
  CopyWith_Fragment_MeetingService<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_MeetingGroup<TRes> get group;
}

class _CopyWithImpl_Fragment_Meeting<TRes>
    implements CopyWith_Fragment_Meeting<TRes> {
  _CopyWithImpl_Fragment_Meeting(this._instance, this._then);

  final Fragment_Meeting _instance;

  final TRes Function(Fragment_Meeting) _then;

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
    Fragment_Meeting(
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
          : (service as Fragment_MeetingService?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_MeetingGroup?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_MeetingService<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_MeetingService.stub(_then(_instance))
        : CopyWith_Fragment_MeetingService(
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

  CopyWith_Fragment_MeetingGroup<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_MeetingGroup.stub(_then(_instance))
        : CopyWith_Fragment_MeetingGroup(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_Meeting<TRes>
    implements CopyWith_Fragment_Meeting<TRes> {
  _CopyWithStubImpl_Fragment_Meeting(this._res);

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
    Fragment_MeetingService? service,
    Fragment_StudyYear? studyYear,
    Fragment_MeetingGroup? group,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_MeetingService<TRes> get service =>
      CopyWith_Fragment_MeetingService.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_MeetingGroup<TRes> get group =>
      CopyWith_Fragment_MeetingGroup.stub(_res);
}

const fragmentDefinitionMeeting = FragmentDefinitionNode(
  name: NameNode(value: 'Meeting'),
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
              name: NameNode(value: 'MeetingService'),
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
              name: NameNode(value: 'MeetingGroup'),
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
const documentNodeFragmentMeeting = DocumentNode(
  definitions: [
    fragmentDefinitionMeeting,
    fragmentDefinitionMeetingService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionMeetingGroup,
  ],
);

class Fragment_MeetingService {
  Fragment_MeetingService({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Service',
  });

  factory Fragment_MeetingService.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_MeetingService(
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
    if (other is! Fragment_MeetingService || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_MeetingService on Fragment_MeetingService {
  CopyWith_Fragment_MeetingService<Fragment_MeetingService> get copyWith =>
      CopyWith_Fragment_MeetingService(this, (i) => i);
}

abstract class CopyWith_Fragment_MeetingService<TRes> {
  factory CopyWith_Fragment_MeetingService(
    Fragment_MeetingService instance,
    TRes Function(Fragment_MeetingService) then,
  ) = _CopyWithImpl_Fragment_MeetingService;

  factory CopyWith_Fragment_MeetingService.stub(TRes res) =
      _CopyWithStubImpl_Fragment_MeetingService;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_MeetingService<TRes>
    implements CopyWith_Fragment_MeetingService<TRes> {
  _CopyWithImpl_Fragment_MeetingService(this._instance, this._then);

  final Fragment_MeetingService _instance;

  final TRes Function(Fragment_MeetingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_MeetingService(
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

class _CopyWithStubImpl_Fragment_MeetingService<TRes>
    implements CopyWith_Fragment_MeetingService<TRes> {
  _CopyWithStubImpl_Fragment_MeetingService(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionMeetingService = FragmentDefinitionNode(
  name: NameNode(value: 'MeetingService'),
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
const documentNodeFragmentMeetingService = DocumentNode(
  definitions: [fragmentDefinitionMeetingService],
);

class Fragment_MeetingGroup {
  Fragment_MeetingGroup({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Group',
  });

  factory Fragment_MeetingGroup.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_MeetingGroup(
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
    if (other is! Fragment_MeetingGroup || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_MeetingGroup on Fragment_MeetingGroup {
  CopyWith_Fragment_MeetingGroup<Fragment_MeetingGroup> get copyWith =>
      CopyWith_Fragment_MeetingGroup(this, (i) => i);
}

abstract class CopyWith_Fragment_MeetingGroup<TRes> {
  factory CopyWith_Fragment_MeetingGroup(
    Fragment_MeetingGroup instance,
    TRes Function(Fragment_MeetingGroup) then,
  ) = _CopyWithImpl_Fragment_MeetingGroup;

  factory CopyWith_Fragment_MeetingGroup.stub(TRes res) =
      _CopyWithStubImpl_Fragment_MeetingGroup;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_MeetingGroup<TRes>
    implements CopyWith_Fragment_MeetingGroup<TRes> {
  _CopyWithImpl_Fragment_MeetingGroup(this._instance, this._then);

  final Fragment_MeetingGroup _instance;

  final TRes Function(Fragment_MeetingGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_MeetingGroup(
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

class _CopyWithStubImpl_Fragment_MeetingGroup<TRes>
    implements CopyWith_Fragment_MeetingGroup<TRes> {
  _CopyWithStubImpl_Fragment_MeetingGroup(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionMeetingGroup = FragmentDefinitionNode(
  name: NameNode(value: 'MeetingGroup'),
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
const documentNodeFragmentMeetingGroup = DocumentNode(
  definitions: [fragmentDefinitionMeetingGroup],
);

class Fragment_AttendanceRecord {
  Fragment_AttendanceRecord({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    required this.recordedBy,
    this.recordedByUser,
    this.$__typename = 'AttendanceRecord',
  });

  factory Fragment_AttendanceRecord.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$recordedBy = json['recordedBy'];
    final l$recordedByUser = json['recordedByUser'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceRecord(
      id: (l$id as String),
      meetingId: (l$meetingId as String),
      personId: (l$personId as String),
      datetime: tstzFromString(l$datetime),
      asServant: (l$asServant as bool),
      recordedBy: (l$recordedBy as String),
      recordedByUser: l$recordedByUser == null
          ? null
          : Fragment_User.fromJson((l$recordedByUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String meetingId;

  final String personId;

  final DateTime datetime;

  final bool asServant;

  final String recordedBy;

  final Fragment_User? recordedByUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId;
    final l$personId = personId;
    _resultData['personId'] = l$personId;
    final l$datetime = datetime;
    _resultData['datetime'] = tstzToString(l$datetime);
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$recordedByUser = recordedByUser;
    _resultData['recordedByUser'] = l$recordedByUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$datetime = datetime;
    final l$asServant = asServant;
    final l$recordedBy = recordedBy;
    final l$recordedByUser = recordedByUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$meetingId,
      l$personId,
      l$datetime,
      l$asServant,
      l$recordedBy,
      l$recordedByUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (l$recordedByUser != lOther$recordedByUser) {
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

extension UtilityExtension_Fragment_AttendanceRecord
    on Fragment_AttendanceRecord {
  CopyWith_Fragment_AttendanceRecord<Fragment_AttendanceRecord> get copyWith =>
      CopyWith_Fragment_AttendanceRecord(this, (i) => i);
}

abstract class CopyWith_Fragment_AttendanceRecord<TRes> {
  factory CopyWith_Fragment_AttendanceRecord(
    Fragment_AttendanceRecord instance,
    TRes Function(Fragment_AttendanceRecord) then,
  ) = _CopyWithImpl_Fragment_AttendanceRecord;

  factory CopyWith_Fragment_AttendanceRecord.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceRecord;

  TRes call({
    String? id,
    String? meetingId,
    String? personId,
    DateTime? datetime,
    bool? asServant,
    String? recordedBy,
    Fragment_User? recordedByUser,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get recordedByUser;
}

class _CopyWithImpl_Fragment_AttendanceRecord<TRes>
    implements CopyWith_Fragment_AttendanceRecord<TRes> {
  _CopyWithImpl_Fragment_AttendanceRecord(this._instance, this._then);

  final Fragment_AttendanceRecord _instance;

  final TRes Function(Fragment_AttendanceRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? datetime = _undefined,
    Object? asServant = _undefined,
    Object? recordedBy = _undefined,
    Object? recordedByUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_AttendanceRecord(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as String),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as String),
      datetime: datetime == _undefined || datetime == null
          ? _instance.datetime
          : (datetime as DateTime),
      asServant: asServant == _undefined || asServant == null
          ? _instance.asServant
          : (asServant as bool),
      recordedBy: recordedBy == _undefined || recordedBy == null
          ? _instance.recordedBy
          : (recordedBy as String),
      recordedByUser: recordedByUser == _undefined
          ? _instance.recordedByUser
          : (recordedByUser as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get recordedByUser {
    final local$recordedByUser = _instance.recordedByUser;
    return local$recordedByUser == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(
            local$recordedByUser,
            (e) => call(recordedByUser: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_AttendanceRecord<TRes>
    implements CopyWith_Fragment_AttendanceRecord<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? meetingId,
    String? personId,
    DateTime? datetime,
    bool? asServant,
    String? recordedBy,
    Fragment_User? recordedByUser,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get recordedByUser =>
      CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionAttendanceRecord = FragmentDefinitionNode(
  name: NameNode(value: 'AttendanceRecord'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'AttendanceRecord'),
      isNonNull: false,
    ),
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
        name: NameNode(value: 'meetingId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'personId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'datetime'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'asServant'),
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
        name: NameNode(value: 'recordedByUser'),
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
const documentNodeFragmentAttendanceRecord = DocumentNode(
  definitions: [fragmentDefinitionAttendanceRecord, fragmentDefinitionUser],
);

class Fragment_RosterEntry {
  Fragment_RosterEntry({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.asServant,
    this.name,
    this.phones,
    this.gender,
    this.color,
    this.studyYearId,
    this.studyYearName,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'RosterEntry',
  });

  factory Fragment_RosterEntry.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$asServant = json['asServant'];
    final l$name = json['name'];
    final l$phones = json['phones'];
    final l$gender = json['gender'];
    final l$color = json['color'];
    final l$studyYearId = json['studyYearId'];
    final l$studyYearName = json['studyYearName'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_RosterEntry(
      id: (l$id as String),
      meetingId: (l$meetingId as String),
      personId: (l$personId as String),
      asServant: (l$asServant as bool),
      name: (l$name as String?),
      phones: (l$phones as List<dynamic>?)?.map((e) => (e as String)).toList(),
      gender: (l$gender as bool?),
      color: (l$color as int?),
      studyYearId: (l$studyYearId as int?),
      studyYearName: (l$studyYearName as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String meetingId;

  final String personId;

  final bool asServant;

  final String? name;

  final List<String>? phones;

  final bool? gender;

  final int? color;

  final int? studyYearId;

  final String? studyYearName;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId;
    final l$personId = personId;
    _resultData['personId'] = l$personId;
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$phones = phones;
    _resultData['phones'] = l$phones?.map((e) => e).toList();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
    final l$studyYearName = studyYearName;
    _resultData['studyYearName'] = l$studyYearName;
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
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$asServant = asServant;
    final l$name = name;
    final l$phones = phones;
    final l$gender = gender;
    final l$color = color;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$meetingId,
      l$personId,
      l$asServant,
      l$name,
      l$phones == null ? null : Object.hashAll(l$phones.map((v) => v)),
      l$gender,
      l$color,
      l$studyYearId,
      l$studyYearName,
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
    if (other is! Fragment_RosterEntry || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$phones = phones;
    final lOther$phones = other.phones;
    if (l$phones != null && lOther$phones != null) {
      if (l$phones.length != lOther$phones.length) {
        return false;
      }
      for (int i = 0; i < l$phones.length; i++) {
        final l$phones$entry = l$phones[i];
        final lOther$phones$entry = lOther$phones[i];
        if (l$phones$entry != lOther$phones$entry) {
          return false;
        }
      }
    } else if (l$phones != lOther$phones) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$studyYearName = studyYearName;
    final lOther$studyYearName = other.studyYearName;
    if (l$studyYearName != lOther$studyYearName) {
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

extension UtilityExtension_Fragment_RosterEntry on Fragment_RosterEntry {
  CopyWith_Fragment_RosterEntry<Fragment_RosterEntry> get copyWith =>
      CopyWith_Fragment_RosterEntry(this, (i) => i);
}

abstract class CopyWith_Fragment_RosterEntry<TRes> {
  factory CopyWith_Fragment_RosterEntry(
    Fragment_RosterEntry instance,
    TRes Function(Fragment_RosterEntry) then,
  ) = _CopyWithImpl_Fragment_RosterEntry;

  factory CopyWith_Fragment_RosterEntry.stub(TRes res) =
      _CopyWithStubImpl_Fragment_RosterEntry;

  TRes call({
    String? id,
    String? meetingId,
    String? personId,
    bool? asServant,
    String? name,
    List<String>? phones,
    bool? gender,
    int? color,
    int? studyYearId,
    String? studyYearName,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_RosterEntry<TRes>
    implements CopyWith_Fragment_RosterEntry<TRes> {
  _CopyWithImpl_Fragment_RosterEntry(this._instance, this._then);

  final Fragment_RosterEntry _instance;

  final TRes Function(Fragment_RosterEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? asServant = _undefined,
    Object? name = _undefined,
    Object? phones = _undefined,
    Object? gender = _undefined,
    Object? color = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_RosterEntry(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as String),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as String),
      asServant: asServant == _undefined || asServant == null
          ? _instance.asServant
          : (asServant as bool),
      name: name == _undefined ? _instance.name : (name as String?),
      phones: phones == _undefined
          ? _instance.phones
          : (phones as List<String>?),
      gender: gender == _undefined ? _instance.gender : (gender as bool?),
      color: color == _undefined ? _instance.color : (color as int?),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      studyYearName: studyYearName == _undefined
          ? _instance.studyYearName
          : (studyYearName as String?),
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

class _CopyWithStubImpl_Fragment_RosterEntry<TRes>
    implements CopyWith_Fragment_RosterEntry<TRes> {
  _CopyWithStubImpl_Fragment_RosterEntry(this._res);

  TRes _res;

  call({
    String? id,
    String? meetingId,
    String? personId,
    bool? asServant,
    String? name,
    List<String>? phones,
    bool? gender,
    int? color,
    int? studyYearId,
    String? studyYearName,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionRosterEntry = FragmentDefinitionNode(
  name: NameNode(value: 'RosterEntry'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'RosterEntry'), isNonNull: false),
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
        name: NameNode(value: 'meetingId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'personId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'asServant'),
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
        name: NameNode(value: 'phones'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'gender'),
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
        name: NameNode(value: 'studyYearId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'studyYearName'),
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
const documentNodeFragmentRosterEntry = DocumentNode(
  definitions: [fragmentDefinitionRosterEntry],
);
