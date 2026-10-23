// Part 31 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ServiceFilterId<TRes> {
  factory CopyWith_Input_ServiceFilterId(
    Input_ServiceFilterId instance,
    TRes Function(Input_ServiceFilterId) then,
  ) = _CopyWithImpl_Input_ServiceFilterId;

  factory CopyWith_Input_ServiceFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_ServiceFilterId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_ServiceFilterId<TRes>
    implements CopyWith_Input_ServiceFilterId<TRes> {
  _CopyWithImpl_Input_ServiceFilterId(this._instance, this._then);

  final Input_ServiceFilterId _instance;

  final TRes Function(Input_ServiceFilterId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_ServiceFilterId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ServiceFilterId<TRes>
    implements CopyWith_Input_ServiceFilterId<TRes> {
  _CopyWithStubImpl_Input_ServiceFilterId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_ServiceFilterInput {
  factory Input_ServiceFilterInput({
    List<Input_ServiceFilterInput>? and,
    List<Input_ServiceFilterInput>? or,
    List<Input_ServiceFilterInput>? not,
    Input_ServiceFilterId? id,
    Input_ServiceFilterName? name,
    Input_ServiceFilterStudyYearFromId? studyYearFromId,
    Input_ServiceFilterStudyYearToId? studyYearToId,
    Input_ServiceFilterNextServiceId? nextServiceId,
    Input_ServiceFilterColor? color,
    Input_ServiceFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ServiceFilterBlurhash? blurhash,
    Input_ServiceFilterDefaultMeetingId? defaultMeetingId,
    Input_MeetingFilterInput? defaultMeeting,
    Input_ServiceFilterInput? nextService,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassFilterInput? classes,
    Input_GroupFilterInput? groups,
    Input_MeetingFilterInput? meetings,
    Input_ServiceMembershipFilterInput? serviceMemberships,
    Input_UserFilterInput? admins,
    Input_LatestEditFilterInput? latestEdit,
    Input_ServiceFilterNextServiceName? nextServiceName,
    Input_ServiceFilterDefaultMeetingName? defaultMeetingName,
    Input_ServiceFilterLastEdit? lastEdit,
    Input_ServiceFilterLastEditUserName? lastEditUserName,
    Input_ServiceFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ServiceFilterStudyYearToOrder? studyYearToOrder,
    Input_ServiceFilterUserCanEdit? userCanEdit,
  }) => Input_ServiceFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (studyYearFromId != null) r'studyYearFromId': studyYearFromId,
    if (studyYearToId != null) r'studyYearToId': studyYearToId,
    if (nextServiceId != null) r'nextServiceId': nextServiceId,
    if (color != null) r'color': color,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
    if (defaultMeeting != null) r'defaultMeeting': defaultMeeting,
    if (nextService != null) r'nextService': nextService,
    if (studyYearFrom != null) r'studyYearFrom': studyYearFrom,
    if (studyYearTo != null) r'studyYearTo': studyYearTo,
    if (classes != null) r'classes': classes,
    if (groups != null) r'groups': groups,
    if (meetings != null) r'meetings': meetings,
    if (serviceMemberships != null) r'serviceMemberships': serviceMemberships,
    if (admins != null) r'admins': admins,
    if (latestEdit != null) r'latestEdit': latestEdit,
    if (nextServiceName != null) r'nextServiceName': nextServiceName,
    if (defaultMeetingName != null) r'defaultMeetingName': defaultMeetingName,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastEditUserName != null) r'lastEditUserName': lastEditUserName,
    if (studyYearFromOrder != null) r'studyYearFromOrder': studyYearFromOrder,
    if (studyYearToOrder != null) r'studyYearToOrder': studyYearToOrder,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_ServiceFilterInput._(this._$data);

  factory Input_ServiceFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_ServiceFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_ServiceFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_ServiceFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_ServiceFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_ServiceFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = data['studyYearFromId'];
      result$data['studyYearFromId'] = l$studyYearFromId == null
          ? null
          : Input_ServiceFilterStudyYearFromId.fromJson(
              (l$studyYearFromId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearToId')) {
      final l$studyYearToId = data['studyYearToId'];
      result$data['studyYearToId'] = l$studyYearToId == null
          ? null
          : Input_ServiceFilterStudyYearToId.fromJson(
              (l$studyYearToId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('nextServiceId')) {
      final l$nextServiceId = data['nextServiceId'];
      result$data['nextServiceId'] = l$nextServiceId == null
          ? null
          : Input_ServiceFilterNextServiceId.fromJson(
              (l$nextServiceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_ServiceFilterColor.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_ServiceFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_ServiceFilterBlurhash.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : Input_ServiceFilterDefaultMeetingId.fromJson(
              (l$defaultMeetingId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = data['defaultMeeting'];
      result$data['defaultMeeting'] = l$defaultMeeting == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('nextService')) {
      final l$nextService = data['nextService'];
      result$data['nextService'] = l$nextService == null
          ? null
          : Input_ServiceFilterInput.fromJson(
              (l$nextService as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = data['studyYearFrom'];
      result$data['studyYearFrom'] = l$studyYearFrom == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearTo')) {
      final l$studyYearTo = data['studyYearTo'];
      result$data['studyYearTo'] = l$studyYearTo == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassFilterInput.fromJson(
              (l$classes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input_GroupFilterInput.fromJson((l$groups as Map<String, dynamic>));
    }
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$meetings as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceMemberships')) {
      final l$serviceMemberships = data['serviceMemberships'];
      result$data['serviceMemberships'] = l$serviceMemberships == null
          ? null
          : Input_ServiceMembershipFilterInput.fromJson(
              (l$serviceMemberships as Map<String, dynamic>),
            );
    }
    if (data.containsKey('admins')) {
      final l$admins = data['admins'];
      result$data['admins'] = l$admins == null
          ? null
          : Input_UserFilterInput.fromJson((l$admins as Map<String, dynamic>));
    }
    if (data.containsKey('latestEdit')) {
      final l$latestEdit = data['latestEdit'];
      result$data['latestEdit'] = l$latestEdit == null
          ? null
          : Input_LatestEditFilterInput.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('nextServiceName')) {
      final l$nextServiceName = data['nextServiceName'];
      result$data['nextServiceName'] = l$nextServiceName == null
          ? null
          : Input_ServiceFilterNextServiceName.fromJson(
              (l$nextServiceName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingName')) {
      final l$defaultMeetingName = data['defaultMeetingName'];
      result$data['defaultMeetingName'] = l$defaultMeetingName == null
          ? null
          : Input_ServiceFilterDefaultMeetingName.fromJson(
              (l$defaultMeetingName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_ServiceFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = data['lastEditUserName'];
      result$data['lastEditUserName'] = l$lastEditUserName == null
          ? null
          : Input_ServiceFilterLastEditUserName.fromJson(
              (l$lastEditUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearFromOrder')) {
      final l$studyYearFromOrder = data['studyYearFromOrder'];
      result$data['studyYearFromOrder'] = l$studyYearFromOrder == null
          ? null
          : Input_ServiceFilterStudyYearFromOrder.fromJson(
              (l$studyYearFromOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearToOrder')) {
      final l$studyYearToOrder = data['studyYearToOrder'];
      result$data['studyYearToOrder'] = l$studyYearToOrder == null
          ? null
          : Input_ServiceFilterStudyYearToOrder.fromJson(
              (l$studyYearToOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_ServiceFilterUserCanEdit.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_ServiceFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ServiceFilterInput>? get and =>
      (_$data['and'] as List<Input_ServiceFilterInput>?);

  List<Input_ServiceFilterInput>? get or =>
      (_$data['or'] as List<Input_ServiceFilterInput>?);

  List<Input_ServiceFilterInput>? get not =>
      (_$data['not'] as List<Input_ServiceFilterInput>?);

  Input_ServiceFilterId? get id => (_$data['id'] as Input_ServiceFilterId?);

  Input_ServiceFilterName? get name =>
      (_$data['name'] as Input_ServiceFilterName?);

  Input_ServiceFilterStudyYearFromId? get studyYearFromId =>
      (_$data['studyYearFromId'] as Input_ServiceFilterStudyYearFromId?);

  Input_ServiceFilterStudyYearToId? get studyYearToId =>
      (_$data['studyYearToId'] as Input_ServiceFilterStudyYearToId?);

  Input_ServiceFilterNextServiceId? get nextServiceId =>
      (_$data['nextServiceId'] as Input_ServiceFilterNextServiceId?);

  Input_ServiceFilterColor? get color =>
      (_$data['color'] as Input_ServiceFilterColor?);

  Input_ServiceFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_ServiceFilterPhotoUpdatedAt?);

  Input_ServiceFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_ServiceFilterBlurhash?);

  Input_ServiceFilterDefaultMeetingId? get defaultMeetingId =>
      (_$data['defaultMeetingId'] as Input_ServiceFilterDefaultMeetingId?);

  Input_MeetingFilterInput? get defaultMeeting =>
      (_$data['defaultMeeting'] as Input_MeetingFilterInput?);

  Input_ServiceFilterInput? get nextService =>
      (_$data['nextService'] as Input_ServiceFilterInput?);

  Input_StudyYearFilterInput? get studyYearFrom =>
      (_$data['studyYearFrom'] as Input_StudyYearFilterInput?);

  Input_StudyYearFilterInput? get studyYearTo =>
      (_$data['studyYearTo'] as Input_StudyYearFilterInput?);

  Input_ClassFilterInput? get classes =>
      (_$data['classes'] as Input_ClassFilterInput?);

  Input_GroupFilterInput? get groups =>
      (_$data['groups'] as Input_GroupFilterInput?);

  Input_MeetingFilterInput? get meetings =>
      (_$data['meetings'] as Input_MeetingFilterInput?);

  Input_ServiceMembershipFilterInput? get serviceMemberships =>
      (_$data['serviceMemberships'] as Input_ServiceMembershipFilterInput?);

  Input_UserFilterInput? get admins =>
      (_$data['admins'] as Input_UserFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_ServiceFilterNextServiceName? get nextServiceName =>
      (_$data['nextServiceName'] as Input_ServiceFilterNextServiceName?);

  Input_ServiceFilterDefaultMeetingName? get defaultMeetingName =>
      (_$data['defaultMeetingName'] as Input_ServiceFilterDefaultMeetingName?);

  Input_ServiceFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_ServiceFilterLastEdit?);

  Input_ServiceFilterLastEditUserName? get lastEditUserName =>
      (_$data['lastEditUserName'] as Input_ServiceFilterLastEditUserName?);

  Input_ServiceFilterStudyYearFromOrder? get studyYearFromOrder =>
      (_$data['studyYearFromOrder'] as Input_ServiceFilterStudyYearFromOrder?);

  Input_ServiceFilterStudyYearToOrder? get studyYearToOrder =>
      (_$data['studyYearToOrder'] as Input_ServiceFilterStudyYearToOrder?);

  Input_ServiceFilterUserCanEdit? get userCanEdit =>
      (_$data['userCanEdit'] as Input_ServiceFilterUserCanEdit?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('studyYearFromId')) {
      final l$studyYearFromId = studyYearFromId;
      result$data['studyYearFromId'] = l$studyYearFromId?.toJson();
    }
    if (_$data.containsKey('studyYearToId')) {
      final l$studyYearToId = studyYearToId;
      result$data['studyYearToId'] = l$studyYearToId?.toJson();
    }
    if (_$data.containsKey('nextServiceId')) {
      final l$nextServiceId = nextServiceId;
      result$data['nextServiceId'] = l$nextServiceId?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId?.toJson();
    }
    if (_$data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = defaultMeeting;
      result$data['defaultMeeting'] = l$defaultMeeting?.toJson();
    }
    if (_$data.containsKey('nextService')) {
      final l$nextService = nextService;
      result$data['nextService'] = l$nextService?.toJson();
    }
    if (_$data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = studyYearFrom;
      result$data['studyYearFrom'] = l$studyYearFrom?.toJson();
    }
    if (_$data.containsKey('studyYearTo')) {
      final l$studyYearTo = studyYearTo;
      result$data['studyYearTo'] = l$studyYearTo?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('serviceMemberships')) {
      final l$serviceMemberships = serviceMemberships;
      result$data['serviceMemberships'] = l$serviceMemberships?.toJson();
    }
    if (_$data.containsKey('admins')) {
      final l$admins = admins;
      result$data['admins'] = l$admins?.toJson();
    }
    if (_$data.containsKey('latestEdit')) {
      final l$latestEdit = latestEdit;
      result$data['latestEdit'] = l$latestEdit?.toJson();
    }
    if (_$data.containsKey('nextServiceName')) {
      final l$nextServiceName = nextServiceName;
      result$data['nextServiceName'] = l$nextServiceName?.toJson();
    }
    if (_$data.containsKey('defaultMeetingName')) {
      final l$defaultMeetingName = defaultMeetingName;
      result$data['defaultMeetingName'] = l$defaultMeetingName?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = lastEditUserName;
      result$data['lastEditUserName'] = l$lastEditUserName?.toJson();
    }
    if (_$data.containsKey('studyYearFromOrder')) {
      final l$studyYearFromOrder = studyYearFromOrder;
      result$data['studyYearFromOrder'] = l$studyYearFromOrder?.toJson();
    }
    if (_$data.containsKey('studyYearToOrder')) {
      final l$studyYearToOrder = studyYearToOrder;
      result$data['studyYearToOrder'] = l$studyYearToOrder?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput> get copyWith =>
      CopyWith_Input_ServiceFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServiceFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$studyYearFromId = studyYearFromId;
    final lOther$studyYearFromId = other.studyYearFromId;
    if (_$data.containsKey('studyYearFromId') !=
        other._$data.containsKey('studyYearFromId')) {
      return false;
    }
    if (l$studyYearFromId != lOther$studyYearFromId) {
      return false;
    }
    final l$studyYearToId = studyYearToId;
    final lOther$studyYearToId = other.studyYearToId;
    if (_$data.containsKey('studyYearToId') !=
        other._$data.containsKey('studyYearToId')) {
      return false;
    }
    if (l$studyYearToId != lOther$studyYearToId) {
      return false;
    }
    final l$nextServiceId = nextServiceId;
    final lOther$nextServiceId = other.nextServiceId;
    if (_$data.containsKey('nextServiceId') !=
        other._$data.containsKey('nextServiceId')) {
      return false;
    }
    if (l$nextServiceId != lOther$nextServiceId) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
      return false;
    }
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (_$data.containsKey('defaultMeeting') !=
        other._$data.containsKey('defaultMeeting')) {
      return false;
    }
    if (l$defaultMeeting != lOther$defaultMeeting) {
      return false;
    }
    final l$nextService = nextService;
    final lOther$nextService = other.nextService;
    if (_$data.containsKey('nextService') !=
        other._$data.containsKey('nextService')) {
      return false;
    }
    if (l$nextService != lOther$nextService) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (_$data.containsKey('studyYearFrom') !=
        other._$data.containsKey('studyYearFrom')) {
      return false;
    }
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (_$data.containsKey('studyYearTo') !=
        other._$data.containsKey('studyYearTo')) {
      return false;
    }
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != lOther$groups) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (_$data.containsKey('meetings') !=
        other._$data.containsKey('meetings')) {
      return false;
    }
    if (l$meetings != lOther$meetings) {
      return false;
    }
    final l$serviceMemberships = serviceMemberships;
    final lOther$serviceMemberships = other.serviceMemberships;
    if (_$data.containsKey('serviceMemberships') !=
        other._$data.containsKey('serviceMemberships')) {
      return false;
    }
    if (l$serviceMemberships != lOther$serviceMemberships) {
      return false;
    }
    final l$admins = admins;
    final lOther$admins = other.admins;
    if (_$data.containsKey('admins') != other._$data.containsKey('admins')) {
      return false;
    }
    if (l$admins != lOther$admins) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (_$data.containsKey('latestEdit') !=
        other._$data.containsKey('latestEdit')) {
      return false;
    }
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$nextServiceName = nextServiceName;
    final lOther$nextServiceName = other.nextServiceName;
    if (_$data.containsKey('nextServiceName') !=
        other._$data.containsKey('nextServiceName')) {
      return false;
    }
    if (l$nextServiceName != lOther$nextServiceName) {
      return false;
    }
    final l$defaultMeetingName = defaultMeetingName;
    final lOther$defaultMeetingName = other.defaultMeetingName;
    if (_$data.containsKey('defaultMeetingName') !=
        other._$data.containsKey('defaultMeetingName')) {
      return false;
    }
    if (l$defaultMeetingName != lOther$defaultMeetingName) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastEditUserName = lastEditUserName;
    final lOther$lastEditUserName = other.lastEditUserName;
    if (_$data.containsKey('lastEditUserName') !=
        other._$data.containsKey('lastEditUserName')) {
      return false;
    }
    if (l$lastEditUserName != lOther$lastEditUserName) {
      return false;
    }
    final l$studyYearFromOrder = studyYearFromOrder;
    final lOther$studyYearFromOrder = other.studyYearFromOrder;
    if (_$data.containsKey('studyYearFromOrder') !=
        other._$data.containsKey('studyYearFromOrder')) {
      return false;
    }
    if (l$studyYearFromOrder != lOther$studyYearFromOrder) {
      return false;
    }
    final l$studyYearToOrder = studyYearToOrder;
    final lOther$studyYearToOrder = other.studyYearToOrder;
    if (_$data.containsKey('studyYearToOrder') !=
        other._$data.containsKey('studyYearToOrder')) {
      return false;
    }
    if (l$studyYearToOrder != lOther$studyYearToOrder) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$name = name;
    final l$studyYearFromId = studyYearFromId;
    final l$studyYearToId = studyYearToId;
    final l$nextServiceId = nextServiceId;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$defaultMeetingId = defaultMeetingId;
    final l$defaultMeeting = defaultMeeting;
    final l$nextService = nextService;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$classes = classes;
    final l$groups = groups;
    final l$meetings = meetings;
    final l$serviceMemberships = serviceMemberships;
    final l$admins = admins;
    final l$latestEdit = latestEdit;
    final l$nextServiceName = nextServiceName;
    final l$defaultMeetingName = defaultMeetingName;
    final l$lastEdit = lastEdit;
    final l$lastEditUserName = lastEditUserName;
    final l$studyYearFromOrder = studyYearFromOrder;
    final l$studyYearToOrder = studyYearToOrder;
    final l$userCanEdit = userCanEdit;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('studyYearFromId') ? l$studyYearFromId : const {},
      _$data.containsKey('studyYearToId') ? l$studyYearToId : const {},
      _$data.containsKey('nextServiceId') ? l$nextServiceId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
      _$data.containsKey('defaultMeeting') ? l$defaultMeeting : const {},
      _$data.containsKey('nextService') ? l$nextService : const {},
      _$data.containsKey('studyYearFrom') ? l$studyYearFrom : const {},
      _$data.containsKey('studyYearTo') ? l$studyYearTo : const {},
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('serviceMemberships')
          ? l$serviceMemberships
          : const {},
      _$data.containsKey('admins') ? l$admins : const {},
      _$data.containsKey('latestEdit') ? l$latestEdit : const {},
      _$data.containsKey('nextServiceName') ? l$nextServiceName : const {},
      _$data.containsKey('defaultMeetingName')
          ? l$defaultMeetingName
          : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastEditUserName') ? l$lastEditUserName : const {},
      _$data.containsKey('studyYearFromOrder')
          ? l$studyYearFromOrder
          : const {},
      _$data.containsKey('studyYearToOrder') ? l$studyYearToOrder : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}

abstract class CopyWith_Input_ServiceFilterInput<TRes> {
  factory CopyWith_Input_ServiceFilterInput(
    Input_ServiceFilterInput instance,
    TRes Function(Input_ServiceFilterInput) then,
  ) = _CopyWithImpl_Input_ServiceFilterInput;

  factory CopyWith_Input_ServiceFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ServiceFilterInput;

  TRes call({
    List<Input_ServiceFilterInput>? and,
    List<Input_ServiceFilterInput>? or,
    List<Input_ServiceFilterInput>? not,
    Input_ServiceFilterId? id,
    Input_ServiceFilterName? name,
    Input_ServiceFilterStudyYearFromId? studyYearFromId,
    Input_ServiceFilterStudyYearToId? studyYearToId,
    Input_ServiceFilterNextServiceId? nextServiceId,
    Input_ServiceFilterColor? color,
    Input_ServiceFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ServiceFilterBlurhash? blurhash,
    Input_ServiceFilterDefaultMeetingId? defaultMeetingId,
    Input_MeetingFilterInput? defaultMeeting,
    Input_ServiceFilterInput? nextService,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassFilterInput? classes,
    Input_GroupFilterInput? groups,
    Input_MeetingFilterInput? meetings,
    Input_ServiceMembershipFilterInput? serviceMemberships,
    Input_UserFilterInput? admins,
    Input_LatestEditFilterInput? latestEdit,
    Input_ServiceFilterNextServiceName? nextServiceName,
    Input_ServiceFilterDefaultMeetingName? defaultMeetingName,
    Input_ServiceFilterLastEdit? lastEdit,
    Input_ServiceFilterLastEditUserName? lastEditUserName,
    Input_ServiceFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ServiceFilterStudyYearToOrder? studyYearToOrder,
    Input_ServiceFilterUserCanEdit? userCanEdit,
  });
  TRes and(
    Iterable<Input_ServiceFilterInput>? Function(
      Iterable<CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_ServiceFilterInput>? Function(
      Iterable<CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_ServiceFilterInput>? Function(
      Iterable<CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_ServiceFilterId<TRes> get id;
  CopyWith_Input_ServiceFilterName<TRes> get name;
  CopyWith_Input_ServiceFilterStudyYearFromId<TRes> get studyYearFromId;
  CopyWith_Input_ServiceFilterStudyYearToId<TRes> get studyYearToId;
  CopyWith_Input_ServiceFilterNextServiceId<TRes> get nextServiceId;
  CopyWith_Input_ServiceFilterColor<TRes> get color;
  CopyWith_Input_ServiceFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_ServiceFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_ServiceFilterDefaultMeetingId<TRes> get defaultMeetingId;
  CopyWith_Input_MeetingFilterInput<TRes> get defaultMeeting;
  CopyWith_Input_ServiceFilterInput<TRes> get nextService;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo;
  CopyWith_Input_ClassFilterInput<TRes> get classes;
  CopyWith_Input_GroupFilterInput<TRes> get groups;
  CopyWith_Input_MeetingFilterInput<TRes> get meetings;
  CopyWith_Input_ServiceMembershipFilterInput<TRes> get serviceMemberships;
  CopyWith_Input_UserFilterInput<TRes> get admins;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_ServiceFilterNextServiceName<TRes> get nextServiceName;
  CopyWith_Input_ServiceFilterDefaultMeetingName<TRes> get defaultMeetingName;
  CopyWith_Input_ServiceFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_ServiceFilterLastEditUserName<TRes> get lastEditUserName;
  CopyWith_Input_ServiceFilterStudyYearFromOrder<TRes> get studyYearFromOrder;
  CopyWith_Input_ServiceFilterStudyYearToOrder<TRes> get studyYearToOrder;
  CopyWith_Input_ServiceFilterUserCanEdit<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_ServiceFilterInput<TRes>
    implements CopyWith_Input_ServiceFilterInput<TRes> {
  _CopyWithImpl_Input_ServiceFilterInput(this._instance, this._then);

  final Input_ServiceFilterInput _instance;

  final TRes Function(Input_ServiceFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? studyYearFromId = _undefined,
    Object? studyYearToId = _undefined,
    Object? nextServiceId = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? defaultMeetingId = _undefined,
    Object? defaultMeeting = _undefined,
    Object? nextService = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? meetings = _undefined,
    Object? serviceMemberships = _undefined,
    Object? admins = _undefined,
    Object? latestEdit = _undefined,
    Object? nextServiceName = _undefined,
    Object? defaultMeetingName = _undefined,
    Object? lastEdit = _undefined,
    Object? lastEditUserName = _undefined,
    Object? studyYearFromOrder = _undefined,
    Object? studyYearToOrder = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_ServiceFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_ServiceFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_ServiceFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_ServiceFilterInput>?),
      if (id != _undefined) 'id': (id as Input_ServiceFilterId?),
      if (name != _undefined) 'name': (name as Input_ServiceFilterName?),
      if (studyYearFromId != _undefined)
        'studyYearFromId':
            (studyYearFromId as Input_ServiceFilterStudyYearFromId?),
      if (studyYearToId != _undefined)
        'studyYearToId': (studyYearToId as Input_ServiceFilterStudyYearToId?),
      if (nextServiceId != _undefined)
        'nextServiceId': (nextServiceId as Input_ServiceFilterNextServiceId?),
      if (color != _undefined) 'color': (color as Input_ServiceFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt':
            (photoUpdatedAt as Input_ServiceFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_ServiceFilterBlurhash?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId':
            (defaultMeetingId as Input_ServiceFilterDefaultMeetingId?),
      if (defaultMeeting != _undefined)
        'defaultMeeting': (defaultMeeting as Input_MeetingFilterInput?),
      if (nextService != _undefined)
        'nextService': (nextService as Input_ServiceFilterInput?),
      if (studyYearFrom != _undefined)
        'studyYearFrom': (studyYearFrom as Input_StudyYearFilterInput?),
      if (studyYearTo != _undefined)
        'studyYearTo': (studyYearTo as Input_StudyYearFilterInput?),
      if (classes != _undefined)
        'classes': (classes as Input_ClassFilterInput?),
      if (groups != _undefined) 'groups': (groups as Input_GroupFilterInput?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_MeetingFilterInput?),
      if (serviceMemberships != _undefined)
        'serviceMemberships':
            (serviceMemberships as Input_ServiceMembershipFilterInput?),
      if (admins != _undefined) 'admins': (admins as Input_UserFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (nextServiceName != _undefined)
        'nextServiceName':
            (nextServiceName as Input_ServiceFilterNextServiceName?),
      if (defaultMeetingName != _undefined)
        'defaultMeetingName':
            (defaultMeetingName as Input_ServiceFilterDefaultMeetingName?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_ServiceFilterLastEdit?),
      if (lastEditUserName != _undefined)
        'lastEditUserName':
            (lastEditUserName as Input_ServiceFilterLastEditUserName?),
      if (studyYearFromOrder != _undefined)
        'studyYearFromOrder':
            (studyYearFromOrder as Input_ServiceFilterStudyYearFromOrder?),
      if (studyYearToOrder != _undefined)
        'studyYearToOrder':
            (studyYearToOrder as Input_ServiceFilterStudyYearToOrder?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_ServiceFilterUserCanEdit?),
    }),
  );

  TRes and(
    Iterable<Input_ServiceFilterInput>? Function(
      Iterable<CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_ServiceFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_ServiceFilterInput>? Function(
      Iterable<CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_ServiceFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_ServiceFilterInput>? Function(
      Iterable<CopyWith_Input_ServiceFilterInput<Input_ServiceFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_ServiceFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ServiceFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_ServiceFilterId.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_ServiceFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_ServiceFilterName.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_ServiceFilterStudyYearFromId<TRes> get studyYearFromId {
    final local$studyYearFromId = _instance.studyYearFromId;
    return local$studyYearFromId == null
        ? CopyWith_Input_ServiceFilterStudyYearFromId.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterStudyYearFromId(
            local$studyYearFromId,
            (e) => call(studyYearFromId: e),
          );
  }

  CopyWith_Input_ServiceFilterStudyYearToId<TRes> get studyYearToId {
    final local$studyYearToId = _instance.studyYearToId;
    return local$studyYearToId == null
        ? CopyWith_Input_ServiceFilterStudyYearToId.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterStudyYearToId(
            local$studyYearToId,
            (e) => call(studyYearToId: e),
          );
  }

  CopyWith_Input_ServiceFilterNextServiceId<TRes> get nextServiceId {
    final local$nextServiceId = _instance.nextServiceId;
    return local$nextServiceId == null
        ? CopyWith_Input_ServiceFilterNextServiceId.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterNextServiceId(
            local$nextServiceId,
            (e) => call(nextServiceId: e),
          );
  }

  CopyWith_Input_ServiceFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_ServiceFilterColor.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_ServiceFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_ServiceFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_ServiceFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_ServiceFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_ServiceFilterDefaultMeetingId<TRes> get defaultMeetingId {
    final local$defaultMeetingId = _instance.defaultMeetingId;
    return local$defaultMeetingId == null
        ? CopyWith_Input_ServiceFilterDefaultMeetingId.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterDefaultMeetingId(
            local$defaultMeetingId,
            (e) => call(defaultMeetingId: e),
          );
  }

  CopyWith_Input_MeetingFilterInput<TRes> get defaultMeeting {
    final local$defaultMeeting = _instance.defaultMeeting;
    return local$defaultMeeting == null
        ? CopyWith_Input_MeetingFilterInput.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterInput(
            local$defaultMeeting,
            (e) => call(defaultMeeting: e),
          );
  }

  CopyWith_Input_ServiceFilterInput<TRes> get nextService {
    final local$nextService = _instance.nextService;
    return local$nextService == null
        ? CopyWith_Input_ServiceFilterInput.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterInput(
            local$nextService,
            (e) => call(nextService: e),
          );
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }

  CopyWith_Input_ClassFilterInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassFilterInput.stub(_then(_instance))
        : CopyWith_Input_ClassFilterInput(
            local$classes,
            (e) => call(classes: e),
          );
  }

  CopyWith_Input_GroupFilterInput<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Input_GroupFilterInput.stub(_then(_instance))
        : CopyWith_Input_GroupFilterInput(local$groups, (e) => call(groups: e));
  }

  CopyWith_Input_MeetingFilterInput<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_MeetingFilterInput.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterInput(
            local$meetings,
            (e) => call(meetings: e),
          );
  }

  CopyWith_Input_ServiceMembershipFilterInput<TRes> get serviceMemberships {
    final local$serviceMemberships = _instance.serviceMemberships;
    return local$serviceMemberships == null
        ? CopyWith_Input_ServiceMembershipFilterInput.stub(_then(_instance))
        : CopyWith_Input_ServiceMembershipFilterInput(
            local$serviceMemberships,
            (e) => call(serviceMemberships: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get admins {
    final local$admins = _instance.admins;
    return local$admins == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$admins, (e) => call(admins: e));
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_ServiceFilterNextServiceName<TRes> get nextServiceName {
    final local$nextServiceName = _instance.nextServiceName;
    return local$nextServiceName == null
        ? CopyWith_Input_ServiceFilterNextServiceName.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterNextServiceName(
            local$nextServiceName,
            (e) => call(nextServiceName: e),
          );
  }

  CopyWith_Input_ServiceFilterDefaultMeetingName<TRes> get defaultMeetingName {
    final local$defaultMeetingName = _instance.defaultMeetingName;
    return local$defaultMeetingName == null
        ? CopyWith_Input_ServiceFilterDefaultMeetingName.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterDefaultMeetingName(
            local$defaultMeetingName,
            (e) => call(defaultMeetingName: e),
          );
  }

  CopyWith_Input_ServiceFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_ServiceFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_ServiceFilterLastEditUserName<TRes> get lastEditUserName {
    final local$lastEditUserName = _instance.lastEditUserName;
    return local$lastEditUserName == null
        ? CopyWith_Input_ServiceFilterLastEditUserName.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterLastEditUserName(
            local$lastEditUserName,
            (e) => call(lastEditUserName: e),
          );
  }

  CopyWith_Input_ServiceFilterStudyYearFromOrder<TRes> get studyYearFromOrder {
    final local$studyYearFromOrder = _instance.studyYearFromOrder;
    return local$studyYearFromOrder == null
        ? CopyWith_Input_ServiceFilterStudyYearFromOrder.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterStudyYearFromOrder(
            local$studyYearFromOrder,
            (e) => call(studyYearFromOrder: e),
          );
  }

  CopyWith_Input_ServiceFilterStudyYearToOrder<TRes> get studyYearToOrder {
    final local$studyYearToOrder = _instance.studyYearToOrder;
    return local$studyYearToOrder == null
        ? CopyWith_Input_ServiceFilterStudyYearToOrder.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterStudyYearToOrder(
            local$studyYearToOrder,
            (e) => call(studyYearToOrder: e),
          );
  }

  CopyWith_Input_ServiceFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_ServiceFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_ServiceFilterInput<TRes>
    implements CopyWith_Input_ServiceFilterInput<TRes> {
  _CopyWithStubImpl_Input_ServiceFilterInput(this._res);

  TRes _res;

  call({
    List<Input_ServiceFilterInput>? and,
    List<Input_ServiceFilterInput>? or,
    List<Input_ServiceFilterInput>? not,
    Input_ServiceFilterId? id,
    Input_ServiceFilterName? name,
    Input_ServiceFilterStudyYearFromId? studyYearFromId,
    Input_ServiceFilterStudyYearToId? studyYearToId,
    Input_ServiceFilterNextServiceId? nextServiceId,
    Input_ServiceFilterColor? color,
    Input_ServiceFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ServiceFilterBlurhash? blurhash,
    Input_ServiceFilterDefaultMeetingId? defaultMeetingId,
    Input_MeetingFilterInput? defaultMeeting,
    Input_ServiceFilterInput? nextService,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassFilterInput? classes,
    Input_GroupFilterInput? groups,
    Input_MeetingFilterInput? meetings,
    Input_ServiceMembershipFilterInput? serviceMemberships,
    Input_UserFilterInput? admins,
    Input_LatestEditFilterInput? latestEdit,
    Input_ServiceFilterNextServiceName? nextServiceName,
    Input_ServiceFilterDefaultMeetingName? defaultMeetingName,
    Input_ServiceFilterLastEdit? lastEdit,
    Input_ServiceFilterLastEditUserName? lastEditUserName,
    Input_ServiceFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ServiceFilterStudyYearToOrder? studyYearToOrder,
    Input_ServiceFilterUserCanEdit? userCanEdit,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_ServiceFilterId<TRes> get id =>
      CopyWith_Input_ServiceFilterId.stub(_res);

  CopyWith_Input_ServiceFilterName<TRes> get name =>
      CopyWith_Input_ServiceFilterName.stub(_res);

  CopyWith_Input_ServiceFilterStudyYearFromId<TRes> get studyYearFromId =>
      CopyWith_Input_ServiceFilterStudyYearFromId.stub(_res);

  CopyWith_Input_ServiceFilterStudyYearToId<TRes> get studyYearToId =>
      CopyWith_Input_ServiceFilterStudyYearToId.stub(_res);

  CopyWith_Input_ServiceFilterNextServiceId<TRes> get nextServiceId =>
      CopyWith_Input_ServiceFilterNextServiceId.stub(_res);

  CopyWith_Input_ServiceFilterColor<TRes> get color =>
      CopyWith_Input_ServiceFilterColor.stub(_res);

  CopyWith_Input_ServiceFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_ServiceFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_ServiceFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_ServiceFilterBlurhash.stub(_res);

  CopyWith_Input_ServiceFilterDefaultMeetingId<TRes> get defaultMeetingId =>
      CopyWith_Input_ServiceFilterDefaultMeetingId.stub(_res);

  CopyWith_Input_MeetingFilterInput<TRes> get defaultMeeting =>
      CopyWith_Input_MeetingFilterInput.stub(_res);

  CopyWith_Input_ServiceFilterInput<TRes> get nextService =>
      CopyWith_Input_ServiceFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_ClassFilterInput<TRes> get classes =>
      CopyWith_Input_ClassFilterInput.stub(_res);

  CopyWith_Input_GroupFilterInput<TRes> get groups =>
      CopyWith_Input_GroupFilterInput.stub(_res);

  CopyWith_Input_MeetingFilterInput<TRes> get meetings =>
      CopyWith_Input_MeetingFilterInput.stub(_res);

  CopyWith_Input_ServiceMembershipFilterInput<TRes> get serviceMemberships =>
      CopyWith_Input_ServiceMembershipFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get admins =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_ServiceFilterNextServiceName<TRes> get nextServiceName =>
      CopyWith_Input_ServiceFilterNextServiceName.stub(_res);

  CopyWith_Input_ServiceFilterDefaultMeetingName<TRes> get defaultMeetingName =>
      CopyWith_Input_ServiceFilterDefaultMeetingName.stub(_res);

  CopyWith_Input_ServiceFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_ServiceFilterLastEdit.stub(_res);

  CopyWith_Input_ServiceFilterLastEditUserName<TRes> get lastEditUserName =>
      CopyWith_Input_ServiceFilterLastEditUserName.stub(_res);

  CopyWith_Input_ServiceFilterStudyYearFromOrder<TRes> get studyYearFromOrder =>
      CopyWith_Input_ServiceFilterStudyYearFromOrder.stub(_res);

  CopyWith_Input_ServiceFilterStudyYearToOrder<TRes> get studyYearToOrder =>
      CopyWith_Input_ServiceFilterStudyYearToOrder.stub(_res);

  CopyWith_Input_ServiceFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_ServiceFilterUserCanEdit.stub(_res);
}

class Input_ServiceSortInput {
  factory Input_ServiceSortInput({
    Enum_SortOrder? order,
    required Enum_ServiceSortField field,
  }) => Input_ServiceSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_ServiceSortInput._(this._$data);

  factory Input_ServiceSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_ServiceSortField((l$field as String));
    return Input_ServiceSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_ServiceSortField get field => (_$data['field'] as Enum_ServiceSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_ServiceSortField(l$field);
    return result$data;
  }

  CopyWith_Input_ServiceSortInput<Input_ServiceSortInput> get copyWith =>
      CopyWith_Input_ServiceSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServiceSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_ServiceSortInput<TRes> {
  factory CopyWith_Input_ServiceSortInput(
    Input_ServiceSortInput instance,
    TRes Function(Input_ServiceSortInput) then,
  ) = _CopyWithImpl_Input_ServiceSortInput;

  factory CopyWith_Input_ServiceSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ServiceSortInput;

  TRes call({Enum_SortOrder? order, Enum_ServiceSortField? field});
}

class _CopyWithImpl_Input_ServiceSortInput<TRes>
    implements CopyWith_Input_ServiceSortInput<TRes> {
  _CopyWithImpl_Input_ServiceSortInput(this._instance, this._then);

  final Input_ServiceSortInput _instance;

  final TRes Function(Input_ServiceSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_ServiceSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_ServiceSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_ServiceSortInput<TRes>
    implements CopyWith_Input_ServiceSortInput<TRes> {
  _CopyWithStubImpl_Input_ServiceSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_ServiceSortField? field}) => _res;
}

class Input_UpdateGroupInput {
  factory Input_UpdateGroupInput({
    String? name,
    String? serviceId,
    String? validity,
    int? color,
    String? defaultMeetingId,
  }) => Input_UpdateGroupInput._({
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
    if (color != null) r'color': color,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
  });

  Input_UpdateGroupInput._(this._$data);

  factory Input_UpdateGroupInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = (l$serviceId as String?);
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = (l$validity as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = (l$defaultMeetingId as String?);
    }
    return Input_UpdateGroupInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get serviceId => (_$data['serviceId'] as String?);

  String? get validity => (_$data['validity'] as String?);

  int? get color => (_$data['color'] as int?);

  String? get defaultMeetingId => (_$data['defaultMeetingId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId;
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId;
    }
    return result$data;
  }

  CopyWith_Input_UpdateGroupInput<Input_UpdateGroupInput> get copyWith =>
      CopyWith_Input_UpdateGroupInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateGroupInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (_$data.containsKey('validity') !=
        other._$data.containsKey('validity')) {
      return false;
    }
    if (l$validity != lOther$validity) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$serviceId = serviceId;
    final l$validity = validity;
    final l$color = color;
    final l$defaultMeetingId = defaultMeetingId;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateGroupInput<TRes> {
  factory CopyWith_Input_UpdateGroupInput(
    Input_UpdateGroupInput instance,
    TRes Function(Input_UpdateGroupInput) then,
  ) = _CopyWithImpl_Input_UpdateGroupInput;

  factory CopyWith_Input_UpdateGroupInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateGroupInput;

  TRes call({
    String? name,
    String? serviceId,
    String? validity,
    int? color,
    String? defaultMeetingId,
  });
}

class _CopyWithImpl_Input_UpdateGroupInput<TRes>
    implements CopyWith_Input_UpdateGroupInput<TRes> {
  _CopyWithImpl_Input_UpdateGroupInput(this._instance, this._then);

  final Input_UpdateGroupInput _instance;

  final TRes Function(Input_UpdateGroupInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
    Object? color = _undefined,
    Object? defaultMeetingId = _undefined,
  }) => _then(
    Input_UpdateGroupInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (serviceId != _undefined) 'serviceId': (serviceId as String?),
      if (validity != _undefined) 'validity': (validity as String?),
      if (color != _undefined) 'color': (color as int?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UpdateGroupInput<TRes>
    implements CopyWith_Input_UpdateGroupInput<TRes> {
  _CopyWithStubImpl_Input_UpdateGroupInput(this._res);

  TRes _res;

  call({
    String? name,
    String? serviceId,
    String? validity,
    int? color,
    String? defaultMeetingId,
  }) => _res;
}

class Input_CreateGroupInput {
  factory Input_CreateGroupInput({
    required String name,
    required String serviceId,
    String? validity,
    int? color,
  }) => Input_CreateGroupInput._({
    r'name': name,
    r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
    if (color != null) r'color': color,
  });

  Input_CreateGroupInput._(this._$data);

  factory Input_CreateGroupInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = (l$serviceId as String);
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = (l$validity as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_CreateGroupInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get serviceId => (_$data['serviceId'] as String);

  String? get validity => (_$data['validity'] as String?);

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$serviceId = serviceId;
    result$data['serviceId'] = l$serviceId;
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    return result$data;
  }

  CopyWith_Input_CreateGroupInput<Input_CreateGroupInput> get copyWith =>
      CopyWith_Input_CreateGroupInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateGroupInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (_$data.containsKey('validity') !=
        other._$data.containsKey('validity')) {
      return false;
    }
    if (l$validity != lOther$validity) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$serviceId = serviceId;
    final l$validity = validity;
    final l$color = color;
    return Object.hashAll([
      l$name,
      l$serviceId,
      _$data.containsKey('validity') ? l$validity : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateGroupInput<TRes> {
  factory CopyWith_Input_CreateGroupInput(
    Input_CreateGroupInput instance,
    TRes Function(Input_CreateGroupInput) then,
  ) = _CopyWithImpl_Input_CreateGroupInput;

  factory CopyWith_Input_CreateGroupInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateGroupInput;

  TRes call({String? name, String? serviceId, String? validity, int? color});
}

class _CopyWithImpl_Input_CreateGroupInput<TRes>
    implements CopyWith_Input_CreateGroupInput<TRes> {
  _CopyWithImpl_Input_CreateGroupInput(this._instance, this._then);

  final Input_CreateGroupInput _instance;

  final TRes Function(Input_CreateGroupInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
    Object? color = _undefined,
  }) => _then(
    Input_CreateGroupInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (serviceId != _undefined && serviceId != null)
        'serviceId': (serviceId as String),
      if (validity != _undefined) 'validity': (validity as String?),
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_CreateGroupInput<TRes>
    implements CopyWith_Input_CreateGroupInput<TRes> {
  _CopyWithStubImpl_Input_CreateGroupInput(this._res);

  TRes _res;

  call({String? name, String? serviceId, String? validity, int? color}) => _res;
}

class Input_GroupFilterUserCanEdit {
  factory Input_GroupFilterUserCanEdit({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_GroupFilterUserCanEdit._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_GroupFilterUserCanEdit._(this._$data);

  factory Input_GroupFilterUserCanEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_GroupFilterUserCanEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool>? get $in => (_$data['in'] as List<bool>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_GroupFilterUserCanEdit<Input_GroupFilterUserCanEdit>
  get copyWith => CopyWith_Input_GroupFilterUserCanEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupFilterUserCanEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupFilterUserCanEdit<TRes> {
  factory CopyWith_Input_GroupFilterUserCanEdit(
    Input_GroupFilterUserCanEdit instance,
    TRes Function(Input_GroupFilterUserCanEdit) then,
  ) = _CopyWithImpl_Input_GroupFilterUserCanEdit;

  factory CopyWith_Input_GroupFilterUserCanEdit.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupFilterUserCanEdit;

  TRes call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_GroupFilterUserCanEdit<TRes>
    implements CopyWith_Input_GroupFilterUserCanEdit<TRes> {
  _CopyWithImpl_Input_GroupFilterUserCanEdit(this._instance, this._then);

  final Input_GroupFilterUserCanEdit _instance;

  final TRes Function(Input_GroupFilterUserCanEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_GroupFilterUserCanEdit._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupFilterUserCanEdit<TRes>
    implements CopyWith_Input_GroupFilterUserCanEdit<TRes> {
  _CopyWithStubImpl_Input_GroupFilterUserCanEdit(this._res);

  TRes _res;

  call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;
}

class Input_GroupFilterLastEditUserName {
  factory Input_GroupFilterLastEditUserName({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_GroupFilterLastEditUserName._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_GroupFilterLastEditUserName._(this._$data);

  factory Input_GroupFilterLastEditUserName.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_GroupFilterLastEditUserName._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_GroupFilterLastEditUserName<Input_GroupFilterLastEditUserName>
  get copyWith => CopyWith_Input_GroupFilterLastEditUserName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupFilterLastEditUserName ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}
