// Part 8 of the schema
part of "schema.graphql.dart";

class _CopyWithImpl_Input_AuthUsersAdminOnInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnInsertInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnInsertInput(this._instance, this._then);

  final Input_AuthUsersAdminOnInsertInput _instance;

  final TRes Function(Input_AuthUsersAdminOnInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? area = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAllowExport = _undefined,
    Object? classes = _undefined,
    Object? group = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? service = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnInsertInput._({
      ..._instance._$data,
      if (adminOnArea != _undefined) 'adminOnArea': (adminOnArea as UuidValue?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as UuidValue?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as UuidValue?),
      if (area != _undefined) 'area': (area as Input_AreasObjRelInsertInput?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers': (areaAdminOnUsers as bool?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit': (areaAllowEdit as bool?),
      if (areaAllowExport != _undefined)
        'areaAllowExport': (areaAllowExport as bool?),
      if (classes != _undefined)
        'classes': (classes as Input_ClassesArrRelInsertInput?),
      if (group != _undefined)
        'group': (group as Input_GroupsObjRelInsertInput?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as bool?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as bool?),
      if (groupAllowExport != _undefined)
        'groupAllowExport': (groupAllowExport as bool?),
      if (groupAllowRecordAttendance != _undefined)
        'groupAllowRecordAttendance': (groupAllowRecordAttendance as bool?),
      if (groupAllowRecordServantsAttendance != _undefined)
        'groupAllowRecordServantsAttendance':
            (groupAllowRecordServantsAttendance as bool?),
      if (groupWriteRelatedFamilies != _undefined)
        'groupWriteRelatedFamilies': (groupWriteRelatedFamilies as bool?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as bool?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as bool?),
      if (serviceAllowExport != _undefined)
        'serviceAllowExport': (serviceAllowExport as bool?),
      if (serviceAllowRecordAttendance != _undefined)
        'serviceAllowRecordAttendance': (serviceAllowRecordAttendance as bool?),
      if (serviceAllowRecordServantsAttendance != _undefined)
        'serviceAllowRecordServantsAttendance':
            (serviceAllowRecordServantsAttendance as bool?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (serviceStudyYearData != _undefined)
        'serviceStudyYearData':
            (serviceStudyYearData as Input_StudyYearsObjRelInsertInput?),
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies': (serviceWriteRelatedFamilies as bool?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
      if (user != _undefined)
        'user': (user as Input_AuthUsersDataObjRelInsertInput?),
    }),
  );

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasObjRelInsertInput(
            local$area,
            (e) => call(area: e),
          );
  }

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ClassesArrRelInsertInput(
            local$classes,
            (e) => call(classes: e),
          );
  }

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group,
            (e) => call(group: e),
          );
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$serviceStudyYearData,
            (e) => call(serviceStudyYearData: e),
          );
  }

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataObjRelInsertInput(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnInsertInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnInsertInput(this._res);

  TRes _res;

  call({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    Input_AreasObjRelInsertInput? area,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    bool? areaAllowExport,
    Input_ClassesArrRelInsertInput? classes,
    Input_GroupsObjRelInsertInput? group,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAllowExport,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupWriteRelatedFamilies,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAllowExport,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceGender,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? serviceStudyYearData,
    bool? serviceWriteRelatedFamilies,
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
  }) => _res;

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area =>
      CopyWith_Input_AreasObjRelInsertInput.stub(_res);

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes =>
      CopyWith_Input_ClassesArrRelInsertInput.stub(_res);

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group =>
      CopyWith_Input_GroupsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get serviceStudyYearData =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);

  CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> get user =>
      CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(_res);
}

class Input_AuthUsersAdminOnMaxOrderBy {
  factory Input_AuthUsersAdminOnMaxOrderBy({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  }) => Input_AuthUsersAdminOnMaxOrderBy._({
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (permissionId != null) r'permissionId': permissionId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersAdminOnMaxOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnArea as String));
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnGroup as String));
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnService as String));
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : fromJson_Enum_OrderBy((l$permissionId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_AuthUsersAdminOnMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get adminOnArea => (_$data['adminOnArea'] as Enum_OrderBy?);

  Enum_OrderBy? get adminOnGroup => (_$data['adminOnGroup'] as Enum_OrderBy?);

  Enum_OrderBy? get adminOnService =>
      (_$data['adminOnService'] as Enum_OrderBy?);

  Enum_OrderBy? get permissionId => (_$data['permissionId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnService);
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId == null
          ? null
          : toJson_Enum_OrderBy(l$permissionId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<Input_AuthUsersAdminOnMaxOrderBy>
  get copyWith => CopyWith_Input_AuthUsersAdminOnMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminOnArea = adminOnArea;
    final lOther$adminOnArea = other.adminOnArea;
    if (_$data.containsKey('adminOnArea') !=
        other._$data.containsKey('adminOnArea')) {
      return false;
    }
    if (l$adminOnArea != lOther$adminOnArea) {
      return false;
    }
    final l$adminOnGroup = adminOnGroup;
    final lOther$adminOnGroup = other.adminOnGroup;
    if (_$data.containsKey('adminOnGroup') !=
        other._$data.containsKey('adminOnGroup')) {
      return false;
    }
    if (l$adminOnGroup != lOther$adminOnGroup) {
      return false;
    }
    final l$adminOnService = adminOnService;
    final lOther$adminOnService = other.adminOnService;
    if (_$data.containsKey('adminOnService') !=
        other._$data.containsKey('adminOnService')) {
      return false;
    }
    if (l$adminOnService != lOther$adminOnService) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (_$data.containsKey('permissionId') !=
        other._$data.containsKey('permissionId')) {
      return false;
    }
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminOnArea = adminOnArea;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnService = adminOnService;
    final l$permissionId = permissionId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnMaxOrderBy(
    Input_AuthUsersAdminOnMaxOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnMaxOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnMaxOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnMaxOrderBy;

  TRes call({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  });
}

class _CopyWithImpl_Input_AuthUsersAdminOnMaxOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnMaxOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnMaxOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? permissionId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnMaxOrderBy._({
      ..._instance._$data,
      if (adminOnArea != _undefined)
        'adminOnArea': (adminOnArea as Enum_OrderBy?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as Enum_OrderBy?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as Enum_OrderBy?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnMaxOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  }) => _res;
}

class Input_AuthUsersAdminOnMinOrderBy {
  factory Input_AuthUsersAdminOnMinOrderBy({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  }) => Input_AuthUsersAdminOnMinOrderBy._({
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (permissionId != null) r'permissionId': permissionId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersAdminOnMinOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnArea as String));
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnGroup as String));
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnService as String));
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : fromJson_Enum_OrderBy((l$permissionId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_AuthUsersAdminOnMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get adminOnArea => (_$data['adminOnArea'] as Enum_OrderBy?);

  Enum_OrderBy? get adminOnGroup => (_$data['adminOnGroup'] as Enum_OrderBy?);

  Enum_OrderBy? get adminOnService =>
      (_$data['adminOnService'] as Enum_OrderBy?);

  Enum_OrderBy? get permissionId => (_$data['permissionId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnService);
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId == null
          ? null
          : toJson_Enum_OrderBy(l$permissionId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnMinOrderBy<Input_AuthUsersAdminOnMinOrderBy>
  get copyWith => CopyWith_Input_AuthUsersAdminOnMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminOnArea = adminOnArea;
    final lOther$adminOnArea = other.adminOnArea;
    if (_$data.containsKey('adminOnArea') !=
        other._$data.containsKey('adminOnArea')) {
      return false;
    }
    if (l$adminOnArea != lOther$adminOnArea) {
      return false;
    }
    final l$adminOnGroup = adminOnGroup;
    final lOther$adminOnGroup = other.adminOnGroup;
    if (_$data.containsKey('adminOnGroup') !=
        other._$data.containsKey('adminOnGroup')) {
      return false;
    }
    if (l$adminOnGroup != lOther$adminOnGroup) {
      return false;
    }
    final l$adminOnService = adminOnService;
    final lOther$adminOnService = other.adminOnService;
    if (_$data.containsKey('adminOnService') !=
        other._$data.containsKey('adminOnService')) {
      return false;
    }
    if (l$adminOnService != lOther$adminOnService) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (_$data.containsKey('permissionId') !=
        other._$data.containsKey('permissionId')) {
      return false;
    }
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminOnArea = adminOnArea;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnService = adminOnService;
    final l$permissionId = permissionId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnMinOrderBy(
    Input_AuthUsersAdminOnMinOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnMinOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnMinOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnMinOrderBy;

  TRes call({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  });
}

class _CopyWithImpl_Input_AuthUsersAdminOnMinOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnMinOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnMinOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? permissionId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnMinOrderBy._({
      ..._instance._$data,
      if (adminOnArea != _undefined)
        'adminOnArea': (adminOnArea as Enum_OrderBy?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as Enum_OrderBy?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as Enum_OrderBy?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnMinOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  }) => _res;
}

class Input_AuthUsersAdminOnOnConflict {
  factory Input_AuthUsersAdminOnOnConflict({
    required Enum_AuthUsersAdminOnConstraint constraint,
    List<Enum_AuthUsersAdminOnUpdateColumn>? updateColumns,
    Input_AuthUsersAdminOnBoolExp? where,
  }) => Input_AuthUsersAdminOnOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_AuthUsersAdminOnOnConflict._(this._$data);

  factory Input_AuthUsersAdminOnOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_AuthUsersAdminOnConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_AuthUsersAdminOnUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersAdminOnOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AuthUsersAdminOnConstraint get constraint =>
      (_$data['constraint'] as Enum_AuthUsersAdminOnConstraint);

  List<Enum_AuthUsersAdminOnUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_AuthUsersAdminOnUpdateColumn>?);

  Input_AuthUsersAdminOnBoolExp? get where =>
      (_$data['where'] as Input_AuthUsersAdminOnBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_AuthUsersAdminOnConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_AuthUsersAdminOnUpdateColumn>)
              .map((e) => toJson_Enum_AuthUsersAdminOnUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnOnConflict<Input_AuthUsersAdminOnOnConflict>
  get copyWith => CopyWith_Input_AuthUsersAdminOnOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnOnConflict ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$updateColumns = updateColumns;
    final lOther$updateColumns = other.updateColumns;
    if (_$data.containsKey('updateColumns') !=
        other._$data.containsKey('updateColumns')) {
      return false;
    }
    if (l$updateColumns != null && lOther$updateColumns != null) {
      if (l$updateColumns.length != lOther$updateColumns.length) {
        return false;
      }
      for (int i = 0; i < l$updateColumns.length; i++) {
        final l$updateColumns$entry = l$updateColumns[i];
        final lOther$updateColumns$entry = lOther$updateColumns[i];
        if (l$updateColumns$entry != lOther$updateColumns$entry) {
          return false;
        }
      }
    } else if (l$updateColumns != lOther$updateColumns) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$updateColumns = updateColumns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      _$data.containsKey('updateColumns')
          ? l$updateColumns == null
                ? null
                : Object.hashAll(l$updateColumns.map((v) => v))
          : const {},
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnOnConflict(
    Input_AuthUsersAdminOnOnConflict instance,
    TRes Function(Input_AuthUsersAdminOnOnConflict) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnOnConflict;

  factory CopyWith_Input_AuthUsersAdminOnOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnOnConflict;

  TRes call({
    Enum_AuthUsersAdminOnConstraint? constraint,
    List<Enum_AuthUsersAdminOnUpdateColumn>? updateColumns,
    Input_AuthUsersAdminOnBoolExp? where,
  });
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AuthUsersAdminOnOnConflict<TRes>
    implements CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnOnConflict(this._instance, this._then);

  final Input_AuthUsersAdminOnOnConflict _instance;

  final TRes Function(Input_AuthUsersAdminOnOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_AuthUsersAdminOnConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_AuthUsersAdminOnUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_AuthUsersAdminOnBoolExp?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnOnConflict<TRes>
    implements CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnOnConflict(this._res);

  TRes _res;

  call({
    Enum_AuthUsersAdminOnConstraint? constraint,
    List<Enum_AuthUsersAdminOnUpdateColumn>? updateColumns,
    Input_AuthUsersAdminOnBoolExp? where,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get where =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);
}

class Input_AuthUsersAdminOnOrderBy {
  factory Input_AuthUsersAdminOnOrderBy({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaAdminOnUsers,
    Enum_OrderBy? areaAllowEdit,
    Enum_OrderBy? areaAllowExport,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupAdminOnUsers,
    Enum_OrderBy? groupAllowEdit,
    Enum_OrderBy? groupAllowExport,
    Enum_OrderBy? groupAllowRecordAttendance,
    Enum_OrderBy? groupAllowRecordServantsAttendance,
    Enum_OrderBy? groupWriteRelatedFamilies,
    Enum_OrderBy? permissionId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceAdminOnUsers,
    Enum_OrderBy? serviceAllowEdit,
    Enum_OrderBy? serviceAllowExport,
    Enum_OrderBy? serviceAllowRecordAttendance,
    Enum_OrderBy? serviceAllowRecordServantsAttendance,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? serviceStudyYearData,
    Enum_OrderBy? serviceWriteRelatedFamilies,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_AuthUsersAdminOnOrderBy._({
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (area != null) r'area': area,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (areaAllowExport != null) r'areaAllowExport': areaAllowExport,
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (group != null) r'group': group,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (groupAllowExport != null) r'groupAllowExport': groupAllowExport,
    if (groupAllowRecordAttendance != null)
      r'groupAllowRecordAttendance': groupAllowRecordAttendance,
    if (groupAllowRecordServantsAttendance != null)
      r'groupAllowRecordServantsAttendance': groupAllowRecordServantsAttendance,
    if (groupWriteRelatedFamilies != null)
      r'groupWriteRelatedFamilies': groupWriteRelatedFamilies,
    if (permissionId != null) r'permissionId': permissionId,
    if (service != null) r'service': service,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceAllowExport != null) r'serviceAllowExport': serviceAllowExport,
    if (serviceAllowRecordAttendance != null)
      r'serviceAllowRecordAttendance': serviceAllowRecordAttendance,
    if (serviceAllowRecordServantsAttendance != null)
      r'serviceAllowRecordServantsAttendance':
          serviceAllowRecordServantsAttendance,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceStudyYearData != null)
      r'serviceStudyYearData': serviceStudyYearData,
    if (serviceWriteRelatedFamilies != null)
      r'serviceWriteRelatedFamilies': serviceWriteRelatedFamilies,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
  });

  Input_AuthUsersAdminOnOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnArea as String));
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnGroup as String));
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : fromJson_Enum_OrderBy((l$adminOnService as String));
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasOrderBy.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers == null
          ? null
          : fromJson_Enum_OrderBy((l$areaAdminOnUsers as String));
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = l$areaAllowEdit == null
          ? null
          : fromJson_Enum_OrderBy((l$areaAllowEdit as String));
    }
    if (data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = data['areaAllowExport'];
      result$data['areaAllowExport'] = l$areaAllowExport == null
          ? null
          : fromJson_Enum_OrderBy((l$areaAllowExport as String));
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateOrderBy.fromJson(
              (l$classesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsOrderBy.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers == null
          ? null
          : fromJson_Enum_OrderBy((l$groupAdminOnUsers as String));
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = l$groupAllowEdit == null
          ? null
          : fromJson_Enum_OrderBy((l$groupAllowEdit as String));
    }
    if (data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = data['groupAllowExport'];
      result$data['groupAllowExport'] = l$groupAllowExport == null
          ? null
          : fromJson_Enum_OrderBy((l$groupAllowExport as String));
    }
    if (data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = data['groupAllowRecordAttendance'];
      result$data['groupAllowRecordAttendance'] =
          l$groupAllowRecordAttendance == null
          ? null
          : fromJson_Enum_OrderBy((l$groupAllowRecordAttendance as String));
    }
    if (data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          data['groupAllowRecordServantsAttendance'];
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance == null
          ? null
          : fromJson_Enum_OrderBy(
              (l$groupAllowRecordServantsAttendance as String),
            );
    }
    if (data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = data['groupWriteRelatedFamilies'];
      result$data['groupWriteRelatedFamilies'] =
          l$groupWriteRelatedFamilies == null
          ? null
          : fromJson_Enum_OrderBy((l$groupWriteRelatedFamilies as String));
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : fromJson_Enum_OrderBy((l$permissionId as String));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesOrderBy.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceAdminOnUsers as String));
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = l$serviceAllowEdit == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceAllowEdit as String));
    }
    if (data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = data['serviceAllowExport'];
      result$data['serviceAllowExport'] = l$serviceAllowExport == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceAllowExport as String));
    }
    if (data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance =
          data['serviceAllowRecordAttendance'];
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceAllowRecordAttendance as String));
    }
    if (data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          data['serviceAllowRecordServantsAttendance'];
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance == null
          ? null
          : fromJson_Enum_OrderBy(
              (l$serviceAllowRecordServantsAttendance as String),
            );
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceGender as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = data['serviceStudyYearData'];
      result$data['serviceStudyYearData'] = l$serviceStudyYearData == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = data['serviceWriteRelatedFamilies'];
      result$data['serviceWriteRelatedFamilies'] =
          l$serviceWriteRelatedFamilies == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceWriteRelatedFamilies as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersAdminOnOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get adminOnArea => (_$data['adminOnArea'] as Enum_OrderBy?);

  Enum_OrderBy? get adminOnGroup => (_$data['adminOnGroup'] as Enum_OrderBy?);

  Enum_OrderBy? get adminOnService =>
      (_$data['adminOnService'] as Enum_OrderBy?);

  Input_AreasOrderBy? get area => (_$data['area'] as Input_AreasOrderBy?);

  Enum_OrderBy? get areaAdminOnUsers =>
      (_$data['areaAdminOnUsers'] as Enum_OrderBy?);

  Enum_OrderBy? get areaAllowEdit => (_$data['areaAllowEdit'] as Enum_OrderBy?);

  Enum_OrderBy? get areaAllowExport =>
      (_$data['areaAllowExport'] as Enum_OrderBy?);

  Input_ClassesAggregateOrderBy? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateOrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupAdminOnUsers =>
      (_$data['groupAdminOnUsers'] as Enum_OrderBy?);

  Enum_OrderBy? get groupAllowEdit =>
      (_$data['groupAllowEdit'] as Enum_OrderBy?);

  Enum_OrderBy? get groupAllowExport =>
      (_$data['groupAllowExport'] as Enum_OrderBy?);

  Enum_OrderBy? get groupAllowRecordAttendance =>
      (_$data['groupAllowRecordAttendance'] as Enum_OrderBy?);

  Enum_OrderBy? get groupAllowRecordServantsAttendance =>
      (_$data['groupAllowRecordServantsAttendance'] as Enum_OrderBy?);

  Enum_OrderBy? get groupWriteRelatedFamilies =>
      (_$data['groupWriteRelatedFamilies'] as Enum_OrderBy?);

  Enum_OrderBy? get permissionId => (_$data['permissionId'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceAdminOnUsers =>
      (_$data['serviceAdminOnUsers'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceAllowEdit =>
      (_$data['serviceAllowEdit'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceAllowExport =>
      (_$data['serviceAllowExport'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceAllowRecordAttendance =>
      (_$data['serviceAllowRecordAttendance'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceAllowRecordServantsAttendance =>
      (_$data['serviceAllowRecordServantsAttendance'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceGender => (_$data['serviceGender'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get serviceStudyYearData =>
      (_$data['serviceStudyYearData'] as Input_StudyYearsOrderBy?);

  Enum_OrderBy? get serviceWriteRelatedFamilies =>
      (_$data['serviceWriteRelatedFamilies'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnService);
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers == null
          ? null
          : toJson_Enum_OrderBy(l$areaAdminOnUsers);
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit == null
          ? null
          : toJson_Enum_OrderBy(l$areaAllowEdit);
    }
    if (_$data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = areaAllowExport;
      result$data['areaAllowExport'] = l$areaAllowExport == null
          ? null
          : toJson_Enum_OrderBy(l$areaAllowExport);
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers == null
          ? null
          : toJson_Enum_OrderBy(l$groupAdminOnUsers);
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit == null
          ? null
          : toJson_Enum_OrderBy(l$groupAllowEdit);
    }
    if (_$data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = groupAllowExport;
      result$data['groupAllowExport'] = l$groupAllowExport == null
          ? null
          : toJson_Enum_OrderBy(l$groupAllowExport);
    }
    if (_$data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
      result$data['groupAllowRecordAttendance'] =
          l$groupAllowRecordAttendance == null
          ? null
          : toJson_Enum_OrderBy(l$groupAllowRecordAttendance);
    }
    if (_$data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          groupAllowRecordServantsAttendance;
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance == null
          ? null
          : toJson_Enum_OrderBy(l$groupAllowRecordServantsAttendance);
    }
    if (_$data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
      result$data['groupWriteRelatedFamilies'] =
          l$groupWriteRelatedFamilies == null
          ? null
          : toJson_Enum_OrderBy(l$groupWriteRelatedFamilies);
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId == null
          ? null
          : toJson_Enum_OrderBy(l$permissionId);
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers == null
          ? null
          : toJson_Enum_OrderBy(l$serviceAdminOnUsers);
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit == null
          ? null
          : toJson_Enum_OrderBy(l$serviceAllowEdit);
    }
    if (_$data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = serviceAllowExport;
      result$data['serviceAllowExport'] = l$serviceAllowExport == null
          ? null
          : toJson_Enum_OrderBy(l$serviceAllowExport);
    }
    if (_$data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance == null
          ? null
          : toJson_Enum_OrderBy(l$serviceAllowRecordAttendance);
    }
    if (_$data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          serviceAllowRecordServantsAttendance;
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance == null
          ? null
          : toJson_Enum_OrderBy(l$serviceAllowRecordServantsAttendance);
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : toJson_Enum_OrderBy(l$serviceGender);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = serviceStudyYearData;
      result$data['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
    }
    if (_$data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
      result$data['serviceWriteRelatedFamilies'] =
          l$serviceWriteRelatedFamilies == null
          ? null
          : toJson_Enum_OrderBy(l$serviceWriteRelatedFamilies);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnOrderBy<Input_AuthUsersAdminOnOrderBy>
  get copyWith => CopyWith_Input_AuthUsersAdminOnOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminOnArea = adminOnArea;
    final lOther$adminOnArea = other.adminOnArea;
    if (_$data.containsKey('adminOnArea') !=
        other._$data.containsKey('adminOnArea')) {
      return false;
    }
    if (l$adminOnArea != lOther$adminOnArea) {
      return false;
    }
    final l$adminOnGroup = adminOnGroup;
    final lOther$adminOnGroup = other.adminOnGroup;
    if (_$data.containsKey('adminOnGroup') !=
        other._$data.containsKey('adminOnGroup')) {
      return false;
    }
    if (l$adminOnGroup != lOther$adminOnGroup) {
      return false;
    }
    final l$adminOnService = adminOnService;
    final lOther$adminOnService = other.adminOnService;
    if (_$data.containsKey('adminOnService') !=
        other._$data.containsKey('adminOnService')) {
      return false;
    }
    if (l$adminOnService != lOther$adminOnService) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (_$data.containsKey('areaAdminOnUsers') !=
        other._$data.containsKey('areaAdminOnUsers')) {
      return false;
    }
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
      return false;
    }
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (_$data.containsKey('areaAllowEdit') !=
        other._$data.containsKey('areaAllowEdit')) {
      return false;
    }
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
      return false;
    }
    final l$areaAllowExport = areaAllowExport;
    final lOther$areaAllowExport = other.areaAllowExport;
    if (_$data.containsKey('areaAllowExport') !=
        other._$data.containsKey('areaAllowExport')) {
      return false;
    }
    if (l$areaAllowExport != lOther$areaAllowExport) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (_$data.containsKey('groupAdminOnUsers') !=
        other._$data.containsKey('groupAdminOnUsers')) {
      return false;
    }
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
      return false;
    }
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (_$data.containsKey('groupAllowEdit') !=
        other._$data.containsKey('groupAllowEdit')) {
      return false;
    }
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAllowExport = groupAllowExport;
    final lOther$groupAllowExport = other.groupAllowExport;
    if (_$data.containsKey('groupAllowExport') !=
        other._$data.containsKey('groupAllowExport')) {
      return false;
    }
    if (l$groupAllowExport != lOther$groupAllowExport) {
      return false;
    }
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final lOther$groupAllowRecordAttendance = other.groupAllowRecordAttendance;
    if (_$data.containsKey('groupAllowRecordAttendance') !=
        other._$data.containsKey('groupAllowRecordAttendance')) {
      return false;
    }
    if (l$groupAllowRecordAttendance != lOther$groupAllowRecordAttendance) {
      return false;
    }
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final lOther$groupAllowRecordServantsAttendance =
        other.groupAllowRecordServantsAttendance;
    if (_$data.containsKey('groupAllowRecordServantsAttendance') !=
        other._$data.containsKey('groupAllowRecordServantsAttendance')) {
      return false;
    }
    if (l$groupAllowRecordServantsAttendance !=
        lOther$groupAllowRecordServantsAttendance) {
      return false;
    }
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final lOther$groupWriteRelatedFamilies = other.groupWriteRelatedFamilies;
    if (_$data.containsKey('groupWriteRelatedFamilies') !=
        other._$data.containsKey('groupWriteRelatedFamilies')) {
      return false;
    }
    if (l$groupWriteRelatedFamilies != lOther$groupWriteRelatedFamilies) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (_$data.containsKey('permissionId') !=
        other._$data.containsKey('permissionId')) {
      return false;
    }
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (_$data.containsKey('serviceAdminOnUsers') !=
        other._$data.containsKey('serviceAdminOnUsers')) {
      return false;
    }
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
      return false;
    }
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (_$data.containsKey('serviceAllowEdit') !=
        other._$data.containsKey('serviceAllowEdit')) {
      return false;
    }
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (_$data.containsKey('serviceAllowExport') !=
        other._$data.containsKey('serviceAllowExport')) {
      return false;
    }
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
      return false;
    }
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final lOther$serviceAllowRecordAttendance =
        other.serviceAllowRecordAttendance;
    if (_$data.containsKey('serviceAllowRecordAttendance') !=
        other._$data.containsKey('serviceAllowRecordAttendance')) {
      return false;
    }
    if (l$serviceAllowRecordAttendance != lOther$serviceAllowRecordAttendance) {
      return false;
    }
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final lOther$serviceAllowRecordServantsAttendance =
        other.serviceAllowRecordServantsAttendance;
    if (_$data.containsKey('serviceAllowRecordServantsAttendance') !=
        other._$data.containsKey('serviceAllowRecordServantsAttendance')) {
      return false;
    }
    if (l$serviceAllowRecordServantsAttendance !=
        lOther$serviceAllowRecordServantsAttendance) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$serviceStudyYearData = serviceStudyYearData;
    final lOther$serviceStudyYearData = other.serviceStudyYearData;
    if (_$data.containsKey('serviceStudyYearData') !=
        other._$data.containsKey('serviceStudyYearData')) {
      return false;
    }
    if (l$serviceStudyYearData != lOther$serviceStudyYearData) {
      return false;
    }
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final lOther$serviceWriteRelatedFamilies =
        other.serviceWriteRelatedFamilies;
    if (_$data.containsKey('serviceWriteRelatedFamilies') !=
        other._$data.containsKey('serviceWriteRelatedFamilies')) {
      return false;
    }
    if (l$serviceWriteRelatedFamilies != lOther$serviceWriteRelatedFamilies) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminOnArea = adminOnArea;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnService = adminOnService;
    final l$area = area;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAllowExport = areaAllowExport;
    final l$classesAggregate = classesAggregate;
    final l$group = group;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$permissionId = permissionId;
    final l$service = service;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('areaAllowExport') ? l$areaAllowExport : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('groupAllowExport') ? l$groupAllowExport : const {},
      _$data.containsKey('groupAllowRecordAttendance')
          ? l$groupAllowRecordAttendance
          : const {},
      _$data.containsKey('groupAllowRecordServantsAttendance')
          ? l$groupAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('groupWriteRelatedFamilies')
          ? l$groupWriteRelatedFamilies
          : const {},
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceAllowExport')
          ? l$serviceAllowExport
          : const {},
      _$data.containsKey('serviceAllowRecordAttendance')
          ? l$serviceAllowRecordAttendance
          : const {},
      _$data.containsKey('serviceAllowRecordServantsAttendance')
          ? l$serviceAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceStudyYearData')
          ? l$serviceStudyYearData
          : const {},
      _$data.containsKey('serviceWriteRelatedFamilies')
          ? l$serviceWriteRelatedFamilies
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnOrderBy(
    Input_AuthUsersAdminOnOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnOrderBy;

  TRes call({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaAdminOnUsers,
    Enum_OrderBy? areaAllowEdit,
    Enum_OrderBy? areaAllowExport,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupAdminOnUsers,
    Enum_OrderBy? groupAllowEdit,
    Enum_OrderBy? groupAllowExport,
    Enum_OrderBy? groupAllowRecordAttendance,
    Enum_OrderBy? groupAllowRecordServantsAttendance,
    Enum_OrderBy? groupWriteRelatedFamilies,
    Enum_OrderBy? permissionId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceAdminOnUsers,
    Enum_OrderBy? serviceAllowEdit,
    Enum_OrderBy? serviceAllowExport,
    Enum_OrderBy? serviceAllowRecordAttendance,
    Enum_OrderBy? serviceAllowRecordServantsAttendance,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? serviceStudyYearData,
    Enum_OrderBy? serviceWriteRelatedFamilies,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_AreasOrderBy<TRes> get area;
  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get serviceStudyYearData;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_AuthUsersAdminOnOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? area = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAllowExport = _undefined,
    Object? classesAggregate = _undefined,
    Object? group = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? permissionId = _undefined,
    Object? service = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnOrderBy._({
      ..._instance._$data,
      if (adminOnArea != _undefined)
        'adminOnArea': (adminOnArea as Enum_OrderBy?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as Enum_OrderBy?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as Enum_OrderBy?),
      if (area != _undefined) 'area': (area as Input_AreasOrderBy?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers': (areaAdminOnUsers as Enum_OrderBy?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit': (areaAllowEdit as Enum_OrderBy?),
      if (areaAllowExport != _undefined)
        'areaAllowExport': (areaAllowExport as Enum_OrderBy?),
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesAggregateOrderBy?),
      if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as Enum_OrderBy?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as Enum_OrderBy?),
      if (groupAllowExport != _undefined)
        'groupAllowExport': (groupAllowExport as Enum_OrderBy?),
      if (groupAllowRecordAttendance != _undefined)
        'groupAllowRecordAttendance':
            (groupAllowRecordAttendance as Enum_OrderBy?),
      if (groupAllowRecordServantsAttendance != _undefined)
        'groupAllowRecordServantsAttendance':
            (groupAllowRecordServantsAttendance as Enum_OrderBy?),
      if (groupWriteRelatedFamilies != _undefined)
        'groupWriteRelatedFamilies':
            (groupWriteRelatedFamilies as Enum_OrderBy?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as Enum_OrderBy?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as Enum_OrderBy?),
      if (serviceAllowExport != _undefined)
        'serviceAllowExport': (serviceAllowExport as Enum_OrderBy?),
      if (serviceAllowRecordAttendance != _undefined)
        'serviceAllowRecordAttendance':
            (serviceAllowRecordAttendance as Enum_OrderBy?),
      if (serviceAllowRecordServantsAttendance != _undefined)
        'serviceAllowRecordServantsAttendance':
            (serviceAllowRecordServantsAttendance as Enum_OrderBy?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (serviceStudyYearData != _undefined)
        'serviceStudyYearData':
            (serviceStudyYearData as Input_StudyYearsOrderBy?),
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies':
            (serviceWriteRelatedFamilies as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
    }),
  );

  CopyWith_Input_AreasOrderBy<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasOrderBy(local$area, (e) => call(area: e));
  }

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateOrderBy(
            local$classesAggregate,
            (e) => call(classesAggregate: e),
          );
  }

  CopyWith_Input_GroupsOrderBy<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsOrderBy(local$group, (e) => call(group: e));
  }

  CopyWith_Input_ServicesOrderBy<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesOrderBy.stub(_then(_instance))
        : CopyWith_Input_ServicesOrderBy(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$serviceStudyYearData,
            (e) => call(serviceStudyYearData: e),
          );
  }

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaAdminOnUsers,
    Enum_OrderBy? areaAllowEdit,
    Enum_OrderBy? areaAllowExport,
    Input_ClassesAggregateOrderBy? classesAggregate,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupAdminOnUsers,
    Enum_OrderBy? groupAllowEdit,
    Enum_OrderBy? groupAllowExport,
    Enum_OrderBy? groupAllowRecordAttendance,
    Enum_OrderBy? groupAllowRecordServantsAttendance,
    Enum_OrderBy? groupWriteRelatedFamilies,
    Enum_OrderBy? permissionId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceAdminOnUsers,
    Enum_OrderBy? serviceAllowEdit,
    Enum_OrderBy? serviceAllowExport,
    Enum_OrderBy? serviceAllowRecordAttendance,
    Enum_OrderBy? serviceAllowRecordServantsAttendance,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? serviceStudyYearData,
    Enum_OrderBy? serviceWriteRelatedFamilies,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
  }) => _res;

  CopyWith_Input_AreasOrderBy<TRes> get area =>
      CopyWith_Input_AreasOrderBy.stub(_res);

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateOrderBy.stub(_res);

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get serviceStudyYearData =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_AuthUsersAdminOnStddevOrderBy {
  factory Input_AuthUsersAdminOnStddevOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnStddevOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnStddevOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnStddevOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnStddevOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<
    Input_AuthUsersAdminOnStddevOrderBy
  >
  get copyWith => CopyWith_Input_AuthUsersAdminOnStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnStddevOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnStddevOrderBy(
    Input_AuthUsersAdminOnStddevOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnStddevOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnStddevOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnStddevOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnStddevOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnStddevOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnStddevOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnStddevOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnStddevOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnStddevPopOrderBy {
  factory Input_AuthUsersAdminOnStddevPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnStddevPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnStddevPopOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnStddevPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnStddevPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<
    Input_AuthUsersAdminOnStddevPopOrderBy
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnStddevPopOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy(
    Input_AuthUsersAdminOnStddevPopOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnStddevPopOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnStddevPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnStddevPopOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnStddevPopOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnStddevPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnStddevPopOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnStddevSampOrderBy {
  factory Input_AuthUsersAdminOnStddevSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnStddevSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnStddevSampOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnStddevSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnStddevSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<
    Input_AuthUsersAdminOnStddevSampOrderBy
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnStddevSampOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy(
    Input_AuthUsersAdminOnStddevSampOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnStddevSampOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnStddevSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnStddevSampOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnStddevSampOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnStddevSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnStddevSampOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnStreamCursorInput {
  factory Input_AuthUsersAdminOnStreamCursorInput({
    required Input_AuthUsersAdminOnStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_AuthUsersAdminOnStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_AuthUsersAdminOnStreamCursorInput._(this._$data);

  factory Input_AuthUsersAdminOnStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_AuthUsersAdminOnStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_AuthUsersAdminOnStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_AuthUsersAdminOnStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnStreamCursorInput<
    Input_AuthUsersAdminOnStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnStreamCursorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initialValue = initialValue;
    final lOther$initialValue = other.initialValue;
    if (l$initialValue != lOther$initialValue) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initialValue = initialValue;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initialValue,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}
