import '../../groups/__generated__/fragments.gql.dart';
import '../../metadata/study_years/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
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
    this.$__typename = 'HistoryMeetings',
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
      id: stringToUuid(l$id),
      name: (l$name as String),
      audience: (l$audience as String),
      color: (l$color as int?),
      isArchived: (l$isArchived as bool),
      showKodasCheckbox: (l$showKodasCheckbox as bool),
      serviceId: l$serviceId == null ? null : stringToUuid(l$serviceId),
      serviceGender: (l$serviceGender as bool?),
      serviceStudyYear: (l$serviceStudyYear as int?),
      groupId: l$groupId == null ? null : stringToUuid(l$groupId),
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

  final UuidValue id;

  final String name;

  final String audience;

  final int? color;

  final bool isArchived;

  final bool showKodasCheckbox;

  final UuidValue? serviceId;

  final bool? serviceGender;

  final int? serviceStudyYear;

  final UuidValue? groupId;

  final Fragment_ServiceNoPhoto? service;

  final Fragment_StudyYear? studyYear;

  final Fragment_GroupNoPhoto? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    _resultData['serviceId'] = l$serviceId == null
        ? null
        : uuidToString(l$serviceId);
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId == null ? null : uuidToString(l$groupId);
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
    UuidValue? id,
    String? name,
    String? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    UuidValue? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    UuidValue? groupId,
    Fragment_ServiceNoPhoto? service,
    Fragment_StudyYear? studyYear,
    Fragment_GroupNoPhoto? group,
    String? $__typename,
  });
  CopyWith_Fragment_ServiceNoPhoto<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_GroupNoPhoto<TRes> get group;
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
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
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
          : (serviceId as UuidValue?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceStudyYear: serviceStudyYear == _undefined
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int?),
      groupId: groupId == _undefined
          ? _instance.groupId
          : (groupId as UuidValue?),
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

class _CopyWithStubImpl_Fragment_Meeting<TRes>
    implements CopyWith_Fragment_Meeting<TRes> {
  _CopyWithStubImpl_Fragment_Meeting(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    UuidValue? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    UuidValue? groupId,
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

const fragmentDefinitionMeeting = FragmentDefinitionNode(
  name: NameNode(value: 'Meeting'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryMeetings'),
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
const documentNodeFragmentMeeting = DocumentNode(
  definitions: [
    fragmentDefinitionMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionGroupNoPhoto,
  ],
);
