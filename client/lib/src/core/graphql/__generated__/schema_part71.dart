// Part 71 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ScopeGrantFilterInput<TRes> {
  factory CopyWith_Input_ScopeGrantFilterInput(
    Input_ScopeGrantFilterInput instance,
    TRes Function(Input_ScopeGrantFilterInput) then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterInput;

  factory CopyWith_Input_ScopeGrantFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ScopeGrantFilterInput;

  TRes call({
    List<Input_ScopeGrantFilterInput>? and,
    List<Input_ScopeGrantFilterInput>? or,
    List<Input_ScopeGrantFilterInput>? not,
    Input_ScopeGrantFilterPermissionId? permissionId,
    Input_ScopeGrantFilterUid? uid,
    Input_ScopeGrantFilterAdminOnService? adminOnService,
    Input_ScopeGrantFilterServiceGender? serviceGender,
    Input_ScopeGrantFilterServiceStudyYear? serviceStudyYear,
    Input_ScopeGrantFilterServiceAllowEdit? serviceAllowEdit,
    Input_ScopeGrantFilterServiceAdminOnUsers? serviceAdminOnUsers,
    Input_ScopeGrantFilterAdminOnGroup? adminOnGroup,
    Input_ScopeGrantFilterGroupAllowEdit? groupAllowEdit,
    Input_ScopeGrantFilterGroupAdminOnUsers? groupAdminOnUsers,
    Input_ScopeGrantFilterAdminOnArea? adminOnArea,
    Input_ScopeGrantFilterAreaAllowEdit? areaAllowEdit,
    Input_ScopeGrantFilterAreaAdminOnUsers? areaAdminOnUsers,
    Input_ScopeGrantFilterServiceWriteRelatedFamilies?
    serviceWriteRelatedFamilies,
    Input_ScopeGrantFilterGroupWriteRelatedFamilies? groupWriteRelatedFamilies,
    Input_ScopeGrantFilterAreaAllowExport? areaAllowExport,
    Input_ScopeGrantFilterServiceAllowExport? serviceAllowExport,
    Input_ScopeGrantFilterGroupAllowExport? groupAllowExport,
    Input_ScopeGrantFilterServiceAllowRecordAttendance?
    serviceAllowRecordAttendance,
    Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?
    serviceAllowRecordServantsAttendance,
    Input_ScopeGrantFilterGroupAllowRecordAttendance?
    groupAllowRecordAttendance,
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?
    groupAllowRecordServantsAttendance,
    Input_AreaFilterInput? area,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_UserFilterInput? user,
    Input_StudyYearFilterInput? studyYear,
    Input_ClassFilterInput? classes,
  });
  TRes and(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ScopeGrantFilterPermissionId<TRes> get permissionId;
  CopyWith_Input_ScopeGrantFilterUid<TRes> get uid;
  CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> get adminOnService;
  CopyWith_Input_ScopeGrantFilterServiceGender<TRes> get serviceGender;
  CopyWith_Input_ScopeGrantFilterServiceStudyYear<TRes> get serviceStudyYear;
  CopyWith_Input_ScopeGrantFilterServiceAllowEdit<TRes> get serviceAllowEdit;
  CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers<TRes>
  get serviceAdminOnUsers;
  CopyWith_Input_ScopeGrantFilterAdminOnGroup<TRes> get adminOnGroup;
  CopyWith_Input_ScopeGrantFilterGroupAllowEdit<TRes> get groupAllowEdit;
  CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers<TRes> get groupAdminOnUsers;
  CopyWith_Input_ScopeGrantFilterAdminOnArea<TRes> get adminOnArea;
  CopyWith_Input_ScopeGrantFilterAreaAllowEdit<TRes> get areaAllowEdit;
  CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers<TRes> get areaAdminOnUsers;
  CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies<TRes>
  get serviceWriteRelatedFamilies;
  CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies<TRes>
  get groupWriteRelatedFamilies;
  CopyWith_Input_ScopeGrantFilterAreaAllowExport<TRes> get areaAllowExport;
  CopyWith_Input_ScopeGrantFilterServiceAllowExport<TRes>
  get serviceAllowExport;
  CopyWith_Input_ScopeGrantFilterGroupAllowExport<TRes> get groupAllowExport;
  CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance<TRes>
  get serviceAllowRecordAttendance;
  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<TRes>
  get serviceAllowRecordServantsAttendance;
  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
  get groupAllowRecordAttendance;
  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<TRes>
  get groupAllowRecordServantsAttendance;
  CopyWith_Input_AreaFilterInput<TRes> get area;
  CopyWith_Input_GroupFilterInput<TRes> get group;
  CopyWith_Input_ServiceFilterInput<TRes> get service;
  CopyWith_Input_UserFilterInput<TRes> get user;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear;
  CopyWith_Input_ClassFilterInput<TRes> get classes;
}

class _CopyWithImpl_Input_ScopeGrantFilterInput<TRes>
    implements CopyWith_Input_ScopeGrantFilterInput<TRes> {
  _CopyWithImpl_Input_ScopeGrantFilterInput(this._instance, this._then);

  final Input_ScopeGrantFilterInput _instance;

  final TRes Function(Input_ScopeGrantFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? permissionId = _undefined,
    Object? uid = _undefined,
    Object? adminOnService = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? adminOnGroup = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? adminOnArea = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? areaAllowExport = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? groupAllowExport = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? area = _undefined,
    Object? group = _undefined,
    Object? service = _undefined,
    Object? user = _undefined,
    Object? studyYear = _undefined,
    Object? classes = _undefined,
  }) => _then(
    Input_ScopeGrantFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_ScopeGrantFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_ScopeGrantFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_ScopeGrantFilterInput>?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as Input_ScopeGrantFilterPermissionId?),
      if (uid != _undefined) 'uid': (uid as Input_ScopeGrantFilterUid?),
      if (adminOnService != _undefined)
        'adminOnService':
            (adminOnService as Input_ScopeGrantFilterAdminOnService?),
      if (serviceGender != _undefined)
        'serviceGender':
            (serviceGender as Input_ScopeGrantFilterServiceGender?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear':
            (serviceStudyYear as Input_ScopeGrantFilterServiceStudyYear?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit':
            (serviceAllowEdit as Input_ScopeGrantFilterServiceAllowEdit?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers':
            (serviceAdminOnUsers as Input_ScopeGrantFilterServiceAdminOnUsers?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as Input_ScopeGrantFilterAdminOnGroup?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit':
            (groupAllowEdit as Input_ScopeGrantFilterGroupAllowEdit?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers':
            (groupAdminOnUsers as Input_ScopeGrantFilterGroupAdminOnUsers?),
      if (adminOnArea != _undefined)
        'adminOnArea': (adminOnArea as Input_ScopeGrantFilterAdminOnArea?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit':
            (areaAllowEdit as Input_ScopeGrantFilterAreaAllowEdit?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers':
            (areaAdminOnUsers as Input_ScopeGrantFilterAreaAdminOnUsers?),
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies':
            (serviceWriteRelatedFamilies
                as Input_ScopeGrantFilterServiceWriteRelatedFamilies?),
      if (groupWriteRelatedFamilies != _undefined)
        'groupWriteRelatedFamilies':
            (groupWriteRelatedFamilies
                as Input_ScopeGrantFilterGroupWriteRelatedFamilies?),
      if (areaAllowExport != _undefined)
        'areaAllowExport':
            (areaAllowExport as Input_ScopeGrantFilterAreaAllowExport?),
      if (serviceAllowExport != _undefined)
        'serviceAllowExport':
            (serviceAllowExport as Input_ScopeGrantFilterServiceAllowExport?),
      if (groupAllowExport != _undefined)
        'groupAllowExport':
            (groupAllowExport as Input_ScopeGrantFilterGroupAllowExport?),
      if (serviceAllowRecordAttendance != _undefined)
        'serviceAllowRecordAttendance':
            (serviceAllowRecordAttendance
                as Input_ScopeGrantFilterServiceAllowRecordAttendance?),
      if (serviceAllowRecordServantsAttendance != _undefined)
        'serviceAllowRecordServantsAttendance':
            (serviceAllowRecordServantsAttendance
                as Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?),
      if (groupAllowRecordAttendance != _undefined)
        'groupAllowRecordAttendance':
            (groupAllowRecordAttendance
                as Input_ScopeGrantFilterGroupAllowRecordAttendance?),
      if (groupAllowRecordServantsAttendance != _undefined)
        'groupAllowRecordServantsAttendance':
            (groupAllowRecordServantsAttendance
                as Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?),
      if (area != _undefined) 'area': (area as Input_AreaFilterInput?),
      if (group != _undefined) 'group': (group as Input_GroupFilterInput?),
      if (service != _undefined)
        'service': (service as Input_ServiceFilterInput?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearFilterInput?),
      if (classes != _undefined)
        'classes': (classes as Input_ClassFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_ScopeGrantFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_ScopeGrantFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_ScopeGrantFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ScopeGrantFilterPermissionId<TRes> get permissionId {
    final local$permissionId = _instance.permissionId;
    return local$permissionId == null
        ? CopyWith_Input_ScopeGrantFilterPermissionId.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterPermissionId(
            local$permissionId,
            (e) => call(permissionId: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterUid<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_ScopeGrantFilterUid.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterUid(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> get adminOnService {
    final local$adminOnService = _instance.adminOnService;
    return local$adminOnService == null
        ? CopyWith_Input_ScopeGrantFilterAdminOnService.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAdminOnService(
            local$adminOnService,
            (e) => call(adminOnService: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceGender<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_ScopeGrantFilterServiceGender.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterServiceGender(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceStudyYear<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_ScopeGrantFilterServiceStudyYear.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterServiceStudyYear(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowEdit<TRes> get serviceAllowEdit {
    final local$serviceAllowEdit = _instance.serviceAllowEdit;
    return local$serviceAllowEdit == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowEdit.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterServiceAllowEdit(
            local$serviceAllowEdit,
            (e) => call(serviceAllowEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers<TRes>
  get serviceAdminOnUsers {
    final local$serviceAdminOnUsers = _instance.serviceAdminOnUsers;
    return local$serviceAdminOnUsers == null
        ? CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers(
            local$serviceAdminOnUsers,
            (e) => call(serviceAdminOnUsers: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAdminOnGroup<TRes> get adminOnGroup {
    final local$adminOnGroup = _instance.adminOnGroup;
    return local$adminOnGroup == null
        ? CopyWith_Input_ScopeGrantFilterAdminOnGroup.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAdminOnGroup(
            local$adminOnGroup,
            (e) => call(adminOnGroup: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowEdit<TRes> get groupAllowEdit {
    final local$groupAllowEdit = _instance.groupAllowEdit;
    return local$groupAllowEdit == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowEdit.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterGroupAllowEdit(
            local$groupAllowEdit,
            (e) => call(groupAllowEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers<TRes> get groupAdminOnUsers {
    final local$groupAdminOnUsers = _instance.groupAdminOnUsers;
    return local$groupAdminOnUsers == null
        ? CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers(
            local$groupAdminOnUsers,
            (e) => call(groupAdminOnUsers: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAdminOnArea<TRes> get adminOnArea {
    final local$adminOnArea = _instance.adminOnArea;
    return local$adminOnArea == null
        ? CopyWith_Input_ScopeGrantFilterAdminOnArea.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAdminOnArea(
            local$adminOnArea,
            (e) => call(adminOnArea: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAreaAllowEdit<TRes> get areaAllowEdit {
    final local$areaAllowEdit = _instance.areaAllowEdit;
    return local$areaAllowEdit == null
        ? CopyWith_Input_ScopeGrantFilterAreaAllowEdit.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAreaAllowEdit(
            local$areaAllowEdit,
            (e) => call(areaAllowEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers<TRes> get areaAdminOnUsers {
    final local$areaAdminOnUsers = _instance.areaAdminOnUsers;
    return local$areaAdminOnUsers == null
        ? CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers(
            local$areaAdminOnUsers,
            (e) => call(areaAdminOnUsers: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies<TRes>
  get serviceWriteRelatedFamilies {
    final local$serviceWriteRelatedFamilies =
        _instance.serviceWriteRelatedFamilies;
    return local$serviceWriteRelatedFamilies == null
        ? CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies(
            local$serviceWriteRelatedFamilies,
            (e) => call(serviceWriteRelatedFamilies: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies<TRes>
  get groupWriteRelatedFamilies {
    final local$groupWriteRelatedFamilies = _instance.groupWriteRelatedFamilies;
    return local$groupWriteRelatedFamilies == null
        ? CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies(
            local$groupWriteRelatedFamilies,
            (e) => call(groupWriteRelatedFamilies: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAreaAllowExport<TRes> get areaAllowExport {
    final local$areaAllowExport = _instance.areaAllowExport;
    return local$areaAllowExport == null
        ? CopyWith_Input_ScopeGrantFilterAreaAllowExport.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAreaAllowExport(
            local$areaAllowExport,
            (e) => call(areaAllowExport: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowExport<TRes>
  get serviceAllowExport {
    final local$serviceAllowExport = _instance.serviceAllowExport;
    return local$serviceAllowExport == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowExport.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAllowExport(
            local$serviceAllowExport,
            (e) => call(serviceAllowExport: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowExport<TRes> get groupAllowExport {
    final local$groupAllowExport = _instance.groupAllowExport;
    return local$groupAllowExport == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowExport.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterGroupAllowExport(
            local$groupAllowExport,
            (e) => call(groupAllowExport: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance<TRes>
  get serviceAllowRecordAttendance {
    final local$serviceAllowRecordAttendance =
        _instance.serviceAllowRecordAttendance;
    return local$serviceAllowRecordAttendance == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance(
            local$serviceAllowRecordAttendance,
            (e) => call(serviceAllowRecordAttendance: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<TRes>
  get serviceAllowRecordServantsAttendance {
    final local$serviceAllowRecordServantsAttendance =
        _instance.serviceAllowRecordServantsAttendance;
    return local$serviceAllowRecordServantsAttendance == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance(
            local$serviceAllowRecordServantsAttendance,
            (e) => call(serviceAllowRecordServantsAttendance: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
  get groupAllowRecordAttendance {
    final local$groupAllowRecordAttendance =
        _instance.groupAllowRecordAttendance;
    return local$groupAllowRecordAttendance == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance(
            local$groupAllowRecordAttendance,
            (e) => call(groupAllowRecordAttendance: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<TRes>
  get groupAllowRecordServantsAttendance {
    final local$groupAllowRecordServantsAttendance =
        _instance.groupAllowRecordServantsAttendance;
    return local$groupAllowRecordServantsAttendance == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance(
            local$groupAllowRecordServantsAttendance,
            (e) => call(groupAllowRecordServantsAttendance: e),
          );
  }

  CopyWith_Input_AreaFilterInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreaFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaFilterInput(local$area, (e) => call(area: e));
  }

  CopyWith_Input_GroupFilterInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupFilterInput.stub(_then(_instance))
        : CopyWith_Input_GroupFilterInput(local$group, (e) => call(group: e));
  }

  CopyWith_Input_ServiceFilterInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServiceFilterInput.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterInput(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYear,
            (e) => call(studyYear: e),
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
}

class _CopyWithStubImpl_Input_ScopeGrantFilterInput<TRes>
    implements CopyWith_Input_ScopeGrantFilterInput<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantFilterInput(this._res);

  TRes _res;

  call({
    List<Input_ScopeGrantFilterInput>? and,
    List<Input_ScopeGrantFilterInput>? or,
    List<Input_ScopeGrantFilterInput>? not,
    Input_ScopeGrantFilterPermissionId? permissionId,
    Input_ScopeGrantFilterUid? uid,
    Input_ScopeGrantFilterAdminOnService? adminOnService,
    Input_ScopeGrantFilterServiceGender? serviceGender,
    Input_ScopeGrantFilterServiceStudyYear? serviceStudyYear,
    Input_ScopeGrantFilterServiceAllowEdit? serviceAllowEdit,
    Input_ScopeGrantFilterServiceAdminOnUsers? serviceAdminOnUsers,
    Input_ScopeGrantFilterAdminOnGroup? adminOnGroup,
    Input_ScopeGrantFilterGroupAllowEdit? groupAllowEdit,
    Input_ScopeGrantFilterGroupAdminOnUsers? groupAdminOnUsers,
    Input_ScopeGrantFilterAdminOnArea? adminOnArea,
    Input_ScopeGrantFilterAreaAllowEdit? areaAllowEdit,
    Input_ScopeGrantFilterAreaAdminOnUsers? areaAdminOnUsers,
    Input_ScopeGrantFilterServiceWriteRelatedFamilies?
    serviceWriteRelatedFamilies,
    Input_ScopeGrantFilterGroupWriteRelatedFamilies? groupWriteRelatedFamilies,
    Input_ScopeGrantFilterAreaAllowExport? areaAllowExport,
    Input_ScopeGrantFilterServiceAllowExport? serviceAllowExport,
    Input_ScopeGrantFilterGroupAllowExport? groupAllowExport,
    Input_ScopeGrantFilterServiceAllowRecordAttendance?
    serviceAllowRecordAttendance,
    Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?
    serviceAllowRecordServantsAttendance,
    Input_ScopeGrantFilterGroupAllowRecordAttendance?
    groupAllowRecordAttendance,
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?
    groupAllowRecordServantsAttendance,
    Input_AreaFilterInput? area,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_UserFilterInput? user,
    Input_StudyYearFilterInput? studyYear,
    Input_ClassFilterInput? classes,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_ScopeGrantFilterPermissionId<TRes> get permissionId =>
      CopyWith_Input_ScopeGrantFilterPermissionId.stub(_res);

  CopyWith_Input_ScopeGrantFilterUid<TRes> get uid =>
      CopyWith_Input_ScopeGrantFilterUid.stub(_res);

  CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> get adminOnService =>
      CopyWith_Input_ScopeGrantFilterAdminOnService.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceGender<TRes> get serviceGender =>
      CopyWith_Input_ScopeGrantFilterServiceGender.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceStudyYear<TRes> get serviceStudyYear =>
      CopyWith_Input_ScopeGrantFilterServiceStudyYear.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowEdit<TRes> get serviceAllowEdit =>
      CopyWith_Input_ScopeGrantFilterServiceAllowEdit.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers<TRes>
  get serviceAdminOnUsers =>
      CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers.stub(_res);

  CopyWith_Input_ScopeGrantFilterAdminOnGroup<TRes> get adminOnGroup =>
      CopyWith_Input_ScopeGrantFilterAdminOnGroup.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAllowEdit<TRes> get groupAllowEdit =>
      CopyWith_Input_ScopeGrantFilterGroupAllowEdit.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers<TRes>
  get groupAdminOnUsers =>
      CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers.stub(_res);

  CopyWith_Input_ScopeGrantFilterAdminOnArea<TRes> get adminOnArea =>
      CopyWith_Input_ScopeGrantFilterAdminOnArea.stub(_res);

  CopyWith_Input_ScopeGrantFilterAreaAllowEdit<TRes> get areaAllowEdit =>
      CopyWith_Input_ScopeGrantFilterAreaAllowEdit.stub(_res);

  CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers<TRes> get areaAdminOnUsers =>
      CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies<TRes>
  get serviceWriteRelatedFamilies =>
      CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies<TRes>
  get groupWriteRelatedFamilies =>
      CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies.stub(_res);

  CopyWith_Input_ScopeGrantFilterAreaAllowExport<TRes> get areaAllowExport =>
      CopyWith_Input_ScopeGrantFilterAreaAllowExport.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowExport<TRes>
  get serviceAllowExport =>
      CopyWith_Input_ScopeGrantFilterServiceAllowExport.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAllowExport<TRes> get groupAllowExport =>
      CopyWith_Input_ScopeGrantFilterGroupAllowExport.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance<TRes>
  get serviceAllowRecordAttendance =>
      CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<TRes>
  get serviceAllowRecordServantsAttendance =>
      CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance.stub(
        _res,
      );

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
  get groupAllowRecordAttendance =>
      CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<TRes>
  get groupAllowRecordServantsAttendance =>
      CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.stub(
        _res,
      );

  CopyWith_Input_AreaFilterInput<TRes> get area =>
      CopyWith_Input_AreaFilterInput.stub(_res);

  CopyWith_Input_GroupFilterInput<TRes> get group =>
      CopyWith_Input_GroupFilterInput.stub(_res);

  CopyWith_Input_ServiceFilterInput<TRes> get service =>
      CopyWith_Input_ServiceFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_ClassFilterInput<TRes> get classes =>
      CopyWith_Input_ClassFilterInput.stub(_res);
}

class Input_ScopeGrantSortInput {
  factory Input_ScopeGrantSortInput({
    Enum_SortOrder? order,
    required Enum_ScopeGrantSortField field,
  }) => Input_ScopeGrantSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_ScopeGrantSortInput._(this._$data);

  factory Input_ScopeGrantSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_ScopeGrantSortField(
      (l$field as String),
    );
    return Input_ScopeGrantSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_ScopeGrantSortField get field =>
      (_$data['field'] as Enum_ScopeGrantSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_ScopeGrantSortField(l$field);
    return result$data;
  }

  CopyWith_Input_ScopeGrantSortInput<Input_ScopeGrantSortInput> get copyWith =>
      CopyWith_Input_ScopeGrantSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantSortInput ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ScopeGrantSortInput<TRes> {
  factory CopyWith_Input_ScopeGrantSortInput(
    Input_ScopeGrantSortInput instance,
    TRes Function(Input_ScopeGrantSortInput) then,
  ) = _CopyWithImpl_Input_ScopeGrantSortInput;

  factory CopyWith_Input_ScopeGrantSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ScopeGrantSortInput;

  TRes call({Enum_SortOrder? order, Enum_ScopeGrantSortField? field});
}

class _CopyWithImpl_Input_ScopeGrantSortInput<TRes>
    implements CopyWith_Input_ScopeGrantSortInput<TRes> {
  _CopyWithImpl_Input_ScopeGrantSortInput(this._instance, this._then);

  final Input_ScopeGrantSortInput _instance;

  final TRes Function(Input_ScopeGrantSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_ScopeGrantSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_ScopeGrantSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_ScopeGrantSortInput<TRes>
    implements CopyWith_Input_ScopeGrantSortInput<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_ScopeGrantSortField? field}) => _res;
}

class Input_UpdateMyPreferencesInput {
  factory Input_UpdateMyPreferencesInput({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferencesPatch,
    Json? secondLinePreferencesPatch,
  }) => Input_UpdateMyPreferencesInput._({
    if (darkTheme != null) r'darkTheme': darkTheme,
    if (greatFeastTheme != null) r'greatFeastTheme': greatFeastTheme,
    if (lastHomeMode != null) r'lastHomeMode': lastHomeMode,
    if (orderByPreferencesPatch != null)
      r'orderByPreferencesPatch': orderByPreferencesPatch,
    if (secondLinePreferencesPatch != null)
      r'secondLinePreferencesPatch': secondLinePreferencesPatch,
  });

  Input_UpdateMyPreferencesInput._(this._$data);

  factory Input_UpdateMyPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('darkTheme')) {
      final l$darkTheme = data['darkTheme'];
      result$data['darkTheme'] = (l$darkTheme as bool?);
    }
    if (data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = data['greatFeastTheme'];
      result$data['greatFeastTheme'] = (l$greatFeastTheme as bool?);
    }
    if (data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = data['lastHomeMode'];
      result$data['lastHomeMode'] = (l$lastHomeMode as String?);
    }
    if (data.containsKey('orderByPreferencesPatch')) {
      final l$orderByPreferencesPatch = data['orderByPreferencesPatch'];
      result$data['orderByPreferencesPatch'] =
          (l$orderByPreferencesPatch as Json?);
    }
    if (data.containsKey('secondLinePreferencesPatch')) {
      final l$secondLinePreferencesPatch = data['secondLinePreferencesPatch'];
      result$data['secondLinePreferencesPatch'] =
          (l$secondLinePreferencesPatch as Json?);
    }
    return Input_UpdateMyPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get darkTheme => (_$data['darkTheme'] as bool?);

  bool? get greatFeastTheme => (_$data['greatFeastTheme'] as bool?);

  String? get lastHomeMode => (_$data['lastHomeMode'] as String?);

  Json? get orderByPreferencesPatch =>
      (_$data['orderByPreferencesPatch'] as Json?);

  Json? get secondLinePreferencesPatch =>
      (_$data['secondLinePreferencesPatch'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('darkTheme')) {
      final l$darkTheme = darkTheme;
      result$data['darkTheme'] = l$darkTheme;
    }
    if (_$data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = greatFeastTheme;
      result$data['greatFeastTheme'] = l$greatFeastTheme;
    }
    if (_$data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = lastHomeMode;
      result$data['lastHomeMode'] = l$lastHomeMode;
    }
    if (_$data.containsKey('orderByPreferencesPatch')) {
      final l$orderByPreferencesPatch = orderByPreferencesPatch;
      result$data['orderByPreferencesPatch'] = l$orderByPreferencesPatch;
    }
    if (_$data.containsKey('secondLinePreferencesPatch')) {
      final l$secondLinePreferencesPatch = secondLinePreferencesPatch;
      result$data['secondLinePreferencesPatch'] = l$secondLinePreferencesPatch;
    }
    return result$data;
  }

  CopyWith_Input_UpdateMyPreferencesInput<Input_UpdateMyPreferencesInput>
  get copyWith => CopyWith_Input_UpdateMyPreferencesInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateMyPreferencesInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$darkTheme = darkTheme;
    final lOther$darkTheme = other.darkTheme;
    if (_$data.containsKey('darkTheme') !=
        other._$data.containsKey('darkTheme')) {
      return false;
    }
    if (l$darkTheme != lOther$darkTheme) {
      return false;
    }
    final l$greatFeastTheme = greatFeastTheme;
    final lOther$greatFeastTheme = other.greatFeastTheme;
    if (_$data.containsKey('greatFeastTheme') !=
        other._$data.containsKey('greatFeastTheme')) {
      return false;
    }
    if (l$greatFeastTheme != lOther$greatFeastTheme) {
      return false;
    }
    final l$lastHomeMode = lastHomeMode;
    final lOther$lastHomeMode = other.lastHomeMode;
    if (_$data.containsKey('lastHomeMode') !=
        other._$data.containsKey('lastHomeMode')) {
      return false;
    }
    if (l$lastHomeMode != lOther$lastHomeMode) {
      return false;
    }
    final l$orderByPreferencesPatch = orderByPreferencesPatch;
    final lOther$orderByPreferencesPatch = other.orderByPreferencesPatch;
    if (_$data.containsKey('orderByPreferencesPatch') !=
        other._$data.containsKey('orderByPreferencesPatch')) {
      return false;
    }
    if (l$orderByPreferencesPatch != lOther$orderByPreferencesPatch) {
      return false;
    }
    final l$secondLinePreferencesPatch = secondLinePreferencesPatch;
    final lOther$secondLinePreferencesPatch = other.secondLinePreferencesPatch;
    if (_$data.containsKey('secondLinePreferencesPatch') !=
        other._$data.containsKey('secondLinePreferencesPatch')) {
      return false;
    }
    if (l$secondLinePreferencesPatch != lOther$secondLinePreferencesPatch) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$darkTheme = darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    final l$orderByPreferencesPatch = orderByPreferencesPatch;
    final l$secondLinePreferencesPatch = secondLinePreferencesPatch;
    return Object.hashAll([
      _$data.containsKey('darkTheme') ? l$darkTheme : const {},
      _$data.containsKey('greatFeastTheme') ? l$greatFeastTheme : const {},
      _$data.containsKey('lastHomeMode') ? l$lastHomeMode : const {},
      _$data.containsKey('orderByPreferencesPatch')
          ? l$orderByPreferencesPatch
          : const {},
      _$data.containsKey('secondLinePreferencesPatch')
          ? l$secondLinePreferencesPatch
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateMyPreferencesInput<TRes> {
  factory CopyWith_Input_UpdateMyPreferencesInput(
    Input_UpdateMyPreferencesInput instance,
    TRes Function(Input_UpdateMyPreferencesInput) then,
  ) = _CopyWithImpl_Input_UpdateMyPreferencesInput;

  factory CopyWith_Input_UpdateMyPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateMyPreferencesInput;

  TRes call({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferencesPatch,
    Json? secondLinePreferencesPatch,
  });
}

class _CopyWithImpl_Input_UpdateMyPreferencesInput<TRes>
    implements CopyWith_Input_UpdateMyPreferencesInput<TRes> {
  _CopyWithImpl_Input_UpdateMyPreferencesInput(this._instance, this._then);

  final Input_UpdateMyPreferencesInput _instance;

  final TRes Function(Input_UpdateMyPreferencesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? darkTheme = _undefined,
    Object? greatFeastTheme = _undefined,
    Object? lastHomeMode = _undefined,
    Object? orderByPreferencesPatch = _undefined,
    Object? secondLinePreferencesPatch = _undefined,
  }) => _then(
    Input_UpdateMyPreferencesInput._({
      ..._instance._$data,
      if (darkTheme != _undefined) 'darkTheme': (darkTheme as bool?),
      if (greatFeastTheme != _undefined)
        'greatFeastTheme': (greatFeastTheme as bool?),
      if (lastHomeMode != _undefined) 'lastHomeMode': (lastHomeMode as String?),
      if (orderByPreferencesPatch != _undefined)
        'orderByPreferencesPatch': (orderByPreferencesPatch as Json?),
      if (secondLinePreferencesPatch != _undefined)
        'secondLinePreferencesPatch': (secondLinePreferencesPatch as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_UpdateMyPreferencesInput<TRes>
    implements CopyWith_Input_UpdateMyPreferencesInput<TRes> {
  _CopyWithStubImpl_Input_UpdateMyPreferencesInput(this._res);

  TRes _res;

  call({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferencesPatch,
    Json? secondLinePreferencesPatch,
  }) => _res;
}

class Input_UserPreferencesFilterSecondLinePreferences {
  factory Input_UserPreferencesFilterSecondLinePreferences({
    bool? isNil,
    Json? eq,
    Json? notEq,
    List<Json>? $in,
    Json? lessThan,
    Json? greaterThan,
    Json? lessThanOrEqual,
    Json? greaterThanOrEqual,
    Json? isDistinctFrom,
    Json? isNotDistinctFrom,
  }) => Input_UserPreferencesFilterSecondLinePreferences._({
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

  Input_UserPreferencesFilterSecondLinePreferences._(this._$data);

  factory Input_UserPreferencesFilterSecondLinePreferences.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as Json?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as Json?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as Json))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as Json?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as Json?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as Json?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as Json?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as Json?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as Json?);
    }
    return Input_UserPreferencesFilterSecondLinePreferences._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  Json? get eq => (_$data['eq'] as Json?);

  Json? get notEq => (_$data['notEq'] as Json?);

  List<Json>? get $in => (_$data['in'] as List<Json>?);

  Json? get lessThan => (_$data['lessThan'] as Json?);

  Json? get greaterThan => (_$data['greaterThan'] as Json?);

  Json? get lessThanOrEqual => (_$data['lessThanOrEqual'] as Json?);

  Json? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as Json?);

  Json? get isDistinctFrom => (_$data['isDistinctFrom'] as Json?);

  Json? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as Json?);

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

  CopyWith_Input_UserPreferencesFilterSecondLinePreferences<
    Input_UserPreferencesFilterSecondLinePreferences
  >
  get copyWith =>
      CopyWith_Input_UserPreferencesFilterSecondLinePreferences(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPreferencesFilterSecondLinePreferences ||
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

abstract class CopyWith_Input_UserPreferencesFilterSecondLinePreferences<TRes> {
  factory CopyWith_Input_UserPreferencesFilterSecondLinePreferences(
    Input_UserPreferencesFilterSecondLinePreferences instance,
    TRes Function(Input_UserPreferencesFilterSecondLinePreferences) then,
  ) = _CopyWithImpl_Input_UserPreferencesFilterSecondLinePreferences;

  factory CopyWith_Input_UserPreferencesFilterSecondLinePreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_UserPreferencesFilterSecondLinePreferences;

  TRes call({
    bool? isNil,
    Json? eq,
    Json? notEq,
    List<Json>? $in,
    Json? lessThan,
    Json? greaterThan,
    Json? lessThanOrEqual,
    Json? greaterThanOrEqual,
    Json? isDistinctFrom,
    Json? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_UserPreferencesFilterSecondLinePreferences<TRes>
    implements CopyWith_Input_UserPreferencesFilterSecondLinePreferences<TRes> {
  _CopyWithImpl_Input_UserPreferencesFilterSecondLinePreferences(
    this._instance,
    this._then,
  );

  final Input_UserPreferencesFilterSecondLinePreferences _instance;

  final TRes Function(Input_UserPreferencesFilterSecondLinePreferences) _then;

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
    Input_UserPreferencesFilterSecondLinePreferences._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as Json?),
      if (notEq != _undefined) 'notEq': (notEq as Json?),
      if ($in != _undefined) 'in': ($in as List<Json>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as Json?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as Json?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as Json?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as Json?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as Json?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_UserPreferencesFilterSecondLinePreferences<TRes>
    implements CopyWith_Input_UserPreferencesFilterSecondLinePreferences<TRes> {
  _CopyWithStubImpl_Input_UserPreferencesFilterSecondLinePreferences(this._res);

  TRes _res;

  call({
    bool? isNil,
    Json? eq,
    Json? notEq,
    List<Json>? $in,
    Json? lessThan,
    Json? greaterThan,
    Json? lessThanOrEqual,
    Json? greaterThanOrEqual,
    Json? isDistinctFrom,
    Json? isNotDistinctFrom,
  }) => _res;
}

class Input_UserPreferencesFilterUpdatedAt {
  factory Input_UserPreferencesFilterUpdatedAt({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => Input_UserPreferencesFilterUpdatedAt._({
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

  Input_UserPreferencesFilterUpdatedAt._(this._$data);

  factory Input_UserPreferencesFilterUpdatedAt.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null ? null : tstzFromString(l$eq);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = l$notEq == null ? null : tstzFromString(l$notEq);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzFromString(l$lessThan);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzFromString(l$greaterThan);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzFromString(l$lessThanOrEqual);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzFromString(l$greaterThanOrEqual);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzFromString(l$isDistinctFrom);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzFromString(l$isNotDistinctFrom);
    }
    return Input_UserPreferencesFilterUpdatedAt._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get notEq => (_$data['notEq'] as DateTime?);

  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);

  DateTime? get lessThan => (_$data['lessThan'] as DateTime?);

  DateTime? get greaterThan => (_$data['greaterThan'] as DateTime?);

  DateTime? get lessThanOrEqual => (_$data['lessThanOrEqual'] as DateTime?);

  DateTime? get greaterThanOrEqual =>
      (_$data['greaterThanOrEqual'] as DateTime?);

  DateTime? get isDistinctFrom => (_$data['isDistinctFrom'] as DateTime?);

  DateTime? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : tstzToString(l$eq);
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq == null ? null : tstzToString(l$notEq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => tstzToString(e)).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzToString(l$lessThan);
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzToString(l$greaterThan);
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzToString(l$lessThanOrEqual);
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzToString(l$greaterThanOrEqual);
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzToString(l$isDistinctFrom);
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzToString(l$isNotDistinctFrom);
    }
    return result$data;
  }

  CopyWith_Input_UserPreferencesFilterUpdatedAt<
    Input_UserPreferencesFilterUpdatedAt
  >
  get copyWith => CopyWith_Input_UserPreferencesFilterUpdatedAt(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPreferencesFilterUpdatedAt ||
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

abstract class CopyWith_Input_UserPreferencesFilterUpdatedAt<TRes> {
  factory CopyWith_Input_UserPreferencesFilterUpdatedAt(
    Input_UserPreferencesFilterUpdatedAt instance,
    TRes Function(Input_UserPreferencesFilterUpdatedAt) then,
  ) = _CopyWithImpl_Input_UserPreferencesFilterUpdatedAt;

  factory CopyWith_Input_UserPreferencesFilterUpdatedAt.stub(TRes res) =
      _CopyWithStubImpl_Input_UserPreferencesFilterUpdatedAt;

  TRes call({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_UserPreferencesFilterUpdatedAt<TRes>
    implements CopyWith_Input_UserPreferencesFilterUpdatedAt<TRes> {
  _CopyWithImpl_Input_UserPreferencesFilterUpdatedAt(
    this._instance,
    this._then,
  );

  final Input_UserPreferencesFilterUpdatedAt _instance;

  final TRes Function(Input_UserPreferencesFilterUpdatedAt) _then;

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
    Input_UserPreferencesFilterUpdatedAt._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as DateTime?),
      if (notEq != _undefined) 'notEq': (notEq as DateTime?),
      if ($in != _undefined) 'in': ($in as List<DateTime>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as DateTime?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as DateTime?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as DateTime?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as DateTime?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as DateTime?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_UserPreferencesFilterUpdatedAt<TRes>
    implements CopyWith_Input_UserPreferencesFilterUpdatedAt<TRes> {
  _CopyWithStubImpl_Input_UserPreferencesFilterUpdatedAt(this._res);

  TRes _res;

  call({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => _res;
}

class Input_UserPreferencesFilterLastHomeMode {
  factory Input_UserPreferencesFilterLastHomeMode({
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
  }) => Input_UserPreferencesFilterLastHomeMode._({
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

  Input_UserPreferencesFilterLastHomeMode._(this._$data);

  factory Input_UserPreferencesFilterLastHomeMode.fromJson(
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
    return Input_UserPreferencesFilterLastHomeMode._(result$data);
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

  CopyWith_Input_UserPreferencesFilterLastHomeMode<
    Input_UserPreferencesFilterLastHomeMode
  >
  get copyWith =>
      CopyWith_Input_UserPreferencesFilterLastHomeMode(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPreferencesFilterLastHomeMode ||
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

abstract class CopyWith_Input_UserPreferencesFilterLastHomeMode<TRes> {
  factory CopyWith_Input_UserPreferencesFilterLastHomeMode(
    Input_UserPreferencesFilterLastHomeMode instance,
    TRes Function(Input_UserPreferencesFilterLastHomeMode) then,
  ) = _CopyWithImpl_Input_UserPreferencesFilterLastHomeMode;

  factory CopyWith_Input_UserPreferencesFilterLastHomeMode.stub(TRes res) =
      _CopyWithStubImpl_Input_UserPreferencesFilterLastHomeMode;

  TRes call({
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
  });
}

class _CopyWithImpl_Input_UserPreferencesFilterLastHomeMode<TRes>
    implements CopyWith_Input_UserPreferencesFilterLastHomeMode<TRes> {
  _CopyWithImpl_Input_UserPreferencesFilterLastHomeMode(
    this._instance,
    this._then,
  );

  final Input_UserPreferencesFilterLastHomeMode _instance;

  final TRes Function(Input_UserPreferencesFilterLastHomeMode) _then;

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
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_UserPreferencesFilterLastHomeMode._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UserPreferencesFilterLastHomeMode<TRes>
    implements CopyWith_Input_UserPreferencesFilterLastHomeMode<TRes> {
  _CopyWithStubImpl_Input_UserPreferencesFilterLastHomeMode(this._res);

  TRes _res;

  call({
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
  }) => _res;
}

class Input_UserPreferencesFilterGreatFeastTheme {
  factory Input_UserPreferencesFilterGreatFeastTheme({
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
  }) => Input_UserPreferencesFilterGreatFeastTheme._({
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

  Input_UserPreferencesFilterGreatFeastTheme._(this._$data);

  factory Input_UserPreferencesFilterGreatFeastTheme.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_UserPreferencesFilterGreatFeastTheme._(result$data);
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

  CopyWith_Input_UserPreferencesFilterGreatFeastTheme<
    Input_UserPreferencesFilterGreatFeastTheme
  >
  get copyWith =>
      CopyWith_Input_UserPreferencesFilterGreatFeastTheme(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPreferencesFilterGreatFeastTheme ||
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
