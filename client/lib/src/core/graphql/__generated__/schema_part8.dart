// Part 8 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AuthUsersAdminOnStreamCursorInput<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnStreamCursorInput(
    Input_AuthUsersAdminOnStreamCursorInput instance,
    TRes Function(Input_AuthUsersAdminOnStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorInput;

  factory CopyWith_Input_AuthUsersAdminOnStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorInput;

  TRes call({
    Input_AuthUsersAdminOnStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnStreamCursorInput _instance;

  final TRes Function(Input_AuthUsersAdminOnStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_AuthUsersAdminOnStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput.stub(_res);
}

class Input_AuthUsersAdminOnStreamCursorValueInput {
  factory Input_AuthUsersAdminOnStreamCursorValueInput({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    bool? areaAllowExport,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAllowExport,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupWriteRelatedFamilies,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAllowExport,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceGender,
    int? serviceStudyYear,
    bool? serviceWriteRelatedFamilies,
    UuidValue? uid,
  }) => Input_AuthUsersAdminOnStreamCursorValueInput._({
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (areaAllowExport != null) r'areaAllowExport': areaAllowExport,
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
    if (serviceWriteRelatedFamilies != null)
      r'serviceWriteRelatedFamilies': serviceWriteRelatedFamilies,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersAdminOnStreamCursorValueInput._(this._$data);

  factory Input_AuthUsersAdminOnStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : stringToUuid(l$adminOnArea);
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : stringToUuid(l$adminOnGroup);
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : stringToUuid(l$adminOnService);
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = (l$areaAdminOnUsers as bool?);
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = (l$areaAllowEdit as bool?);
    }
    if (data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = data['areaAllowExport'];
      result$data['areaAllowExport'] = (l$areaAllowExport as bool?);
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = (l$groupAdminOnUsers as bool?);
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = (l$groupAllowEdit as bool?);
    }
    if (data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = data['groupAllowExport'];
      result$data['groupAllowExport'] = (l$groupAllowExport as bool?);
    }
    if (data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = data['groupAllowRecordAttendance'];
      result$data['groupAllowRecordAttendance'] =
          (l$groupAllowRecordAttendance as bool?);
    }
    if (data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          data['groupAllowRecordServantsAttendance'];
      result$data['groupAllowRecordServantsAttendance'] =
          (l$groupAllowRecordServantsAttendance as bool?);
    }
    if (data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = data['groupWriteRelatedFamilies'];
      result$data['groupWriteRelatedFamilies'] =
          (l$groupWriteRelatedFamilies as bool?);
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : stringToUuid(l$permissionId);
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = (l$serviceAdminOnUsers as bool?);
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = (l$serviceAllowEdit as bool?);
    }
    if (data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = data['serviceAllowExport'];
      result$data['serviceAllowExport'] = (l$serviceAllowExport as bool?);
    }
    if (data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance =
          data['serviceAllowRecordAttendance'];
      result$data['serviceAllowRecordAttendance'] =
          (l$serviceAllowRecordAttendance as bool?);
    }
    if (data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          data['serviceAllowRecordServantsAttendance'];
      result$data['serviceAllowRecordServantsAttendance'] =
          (l$serviceAllowRecordServantsAttendance as bool?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    if (data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = data['serviceWriteRelatedFamilies'];
      result$data['serviceWriteRelatedFamilies'] =
          (l$serviceWriteRelatedFamilies as bool?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    return Input_AuthUsersAdminOnStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get adminOnArea => (_$data['adminOnArea'] as UuidValue?);

  UuidValue? get adminOnGroup => (_$data['adminOnGroup'] as UuidValue?);

  UuidValue? get adminOnService => (_$data['adminOnService'] as UuidValue?);

  bool? get areaAdminOnUsers => (_$data['areaAdminOnUsers'] as bool?);

  bool? get areaAllowEdit => (_$data['areaAllowEdit'] as bool?);

  bool? get areaAllowExport => (_$data['areaAllowExport'] as bool?);

  bool? get groupAdminOnUsers => (_$data['groupAdminOnUsers'] as bool?);

  bool? get groupAllowEdit => (_$data['groupAllowEdit'] as bool?);

  bool? get groupAllowExport => (_$data['groupAllowExport'] as bool?);

  bool? get groupAllowRecordAttendance =>
      (_$data['groupAllowRecordAttendance'] as bool?);

  bool? get groupAllowRecordServantsAttendance =>
      (_$data['groupAllowRecordServantsAttendance'] as bool?);

  bool? get groupWriteRelatedFamilies =>
      (_$data['groupWriteRelatedFamilies'] as bool?);

  UuidValue? get permissionId => (_$data['permissionId'] as UuidValue?);

  bool? get serviceAdminOnUsers => (_$data['serviceAdminOnUsers'] as bool?);

  bool? get serviceAllowEdit => (_$data['serviceAllowEdit'] as bool?);

  bool? get serviceAllowExport => (_$data['serviceAllowExport'] as bool?);

  bool? get serviceAllowRecordAttendance =>
      (_$data['serviceAllowRecordAttendance'] as bool?);

  bool? get serviceAllowRecordServantsAttendance =>
      (_$data['serviceAllowRecordServantsAttendance'] as bool?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  bool? get serviceWriteRelatedFamilies =>
      (_$data['serviceWriteRelatedFamilies'] as bool?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : uuidToString(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : uuidToString(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : uuidToString(l$adminOnService);
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers;
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit;
    }
    if (_$data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = areaAllowExport;
      result$data['areaAllowExport'] = l$areaAllowExport;
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers;
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit;
    }
    if (_$data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = groupAllowExport;
      result$data['groupAllowExport'] = l$groupAllowExport;
    }
    if (_$data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
      result$data['groupAllowRecordAttendance'] = l$groupAllowRecordAttendance;
    }
    if (_$data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          groupAllowRecordServantsAttendance;
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance;
    }
    if (_$data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
      result$data['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies;
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId == null
          ? null
          : uuidToString(l$permissionId);
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit;
    }
    if (_$data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = serviceAllowExport;
      result$data['serviceAllowExport'] = l$serviceAllowExport;
    }
    if (_$data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance;
    }
    if (_$data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          serviceAllowRecordServantsAttendance;
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance;
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    if (_$data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
      result$data['serviceWriteRelatedFamilies'] =
          l$serviceWriteRelatedFamilies;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<
    Input_AuthUsersAdminOnStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnStreamCursorValueInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$adminOnArea = adminOnArea;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnService = adminOnService;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAllowExport = areaAllowExport;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$permissionId = permissionId;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('areaAllowExport') ? l$areaAllowExport : const {},
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
      _$data.containsKey('serviceWriteRelatedFamilies')
          ? l$serviceWriteRelatedFamilies
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput(
    Input_AuthUsersAdminOnStreamCursorValueInput instance,
    TRes Function(Input_AuthUsersAdminOnStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorValueInput;

  factory CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorValueInput;

  TRes call({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    bool? areaAllowExport,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAllowExport,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupWriteRelatedFamilies,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAllowExport,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceGender,
    int? serviceStudyYear,
    bool? serviceWriteRelatedFamilies,
    UuidValue? uid,
  });
}

class _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnStreamCursorValueInput _instance;

  final TRes Function(Input_AuthUsersAdminOnStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAllowExport = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? permissionId = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnStreamCursorValueInput._({
      ..._instance._$data,
      if (adminOnArea != _undefined) 'adminOnArea': (adminOnArea as UuidValue?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as UuidValue?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as UuidValue?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers': (areaAdminOnUsers as bool?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit': (areaAllowEdit as bool?),
      if (areaAllowExport != _undefined)
        'areaAllowExport': (areaAllowExport as bool?),
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
      if (permissionId != _undefined)
        'permissionId': (permissionId as UuidValue?),
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
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies': (serviceWriteRelatedFamilies as bool?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    bool? areaAllowExport,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAllowExport,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupWriteRelatedFamilies,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAllowExport,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceGender,
    int? serviceStudyYear,
    bool? serviceWriteRelatedFamilies,
    UuidValue? uid,
  }) => _res;
}

class Input_AuthUsersAdminOnSumOrderBy {
  factory Input_AuthUsersAdminOnSumOrderBy({Enum_OrderBy? serviceStudyYear}) =>
      Input_AuthUsersAdminOnSumOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_AuthUsersAdminOnSumOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnSumOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnSumOrderBy<Input_AuthUsersAdminOnSumOrderBy>
  get copyWith => CopyWith_Input_AuthUsersAdminOnSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnSumOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnSumOrderBy(
    Input_AuthUsersAdminOnSumOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnSumOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnSumOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnSumOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnSumOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnSumOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnSumOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnSumOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnSumOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnVarPopOrderBy {
  factory Input_AuthUsersAdminOnVarPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnVarPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnVarPopOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnVarPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnVarPopOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<
    Input_AuthUsersAdminOnVarPopOrderBy
  >
  get copyWith => CopyWith_Input_AuthUsersAdminOnVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnVarPopOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnVarPopOrderBy(
    Input_AuthUsersAdminOnVarPopOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnVarPopOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnVarPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnVarPopOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnVarPopOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnVarPopOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnVarPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnVarPopOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnVarSampOrderBy {
  factory Input_AuthUsersAdminOnVarSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnVarSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnVarSampOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnVarSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnVarSampOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<
    Input_AuthUsersAdminOnVarSampOrderBy
  >
  get copyWith => CopyWith_Input_AuthUsersAdminOnVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnVarSampOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnVarSampOrderBy(
    Input_AuthUsersAdminOnVarSampOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnVarSampOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnVarSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnVarSampOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnVarSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnVarSampOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnVarSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnVarSampOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnVarianceOrderBy {
  factory Input_AuthUsersAdminOnVarianceOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnVarianceOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnVarianceOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnVarianceOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnVarianceOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<
    Input_AuthUsersAdminOnVarianceOrderBy
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnVarianceOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnVarianceOrderBy(
    Input_AuthUsersAdminOnVarianceOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnVarianceOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnVarianceOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnVarianceOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnVarianceOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnVarianceOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnVarianceOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersDataBoolExp {
  factory Input_AuthUsersDataBoolExp({
    List<Input_AuthUsersDataBoolExp>? $_and,
    Input_AuthUsersDataBoolExp? $_not,
    List<Input_AuthUsersDataBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminOn,
    Input_StringComparisonExp? blurhash,
    Input_BooleanComparisonExp? currentUserCanManageThisUser,
    Input_StringComparisonExp? email,
    Input_UsersFcmTokensBoolExp? fcmTokens,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UsersPreferencesBoolExp? preferences,
    Input_UuidComparisonExp? uid,
  }) => Input_AuthUsersDataBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminOn != null) r'adminOn': adminOn,
    if (blurhash != null) r'blurhash': blurhash,
    if (currentUserCanManageThisUser != null)
      r'currentUserCanManageThisUser': currentUserCanManageThisUser,
    if (email != null) r'email': email,
    if (fcmTokens != null) r'fcmTokens': fcmTokens,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (permissions != null) r'permissions': permissions,
    if (person != null) r'person': person,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (preferences != null) r'preferences': preferences,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersDataBoolExp._(this._$data);

  factory Input_AuthUsersDataBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersDataBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersDataBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('adminOn')) {
      final l$adminOn = data['adminOn'];
      result$data['adminOn'] = l$adminOn == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$adminOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser =
          data['currentUserCanManageThisUser'];
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$currentUserCanManageThisUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$email as Map<String, dynamic>),
            );
    }
    if (data.containsKey('fcmTokens')) {
      final l$fcmTokens = data['fcmTokens'];
      result$data['fcmTokens'] = l$fcmTokens == null
          ? null
          : Input_UsersFcmTokensBoolExp.fromJson(
              (l$fcmTokens as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('permissions')) {
      final l$permissions = data['permissions'];
      result$data['permissions'] = l$permissions == null
          ? null
          : Input_AuthUsersPermissionsBoolExp.fromJson(
              (l$permissions as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('preferences')) {
      final l$preferences = data['preferences'];
      result$data['preferences'] = l$preferences == null
          ? null
          : Input_UsersPreferencesBoolExp.fromJson(
              (l$preferences as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    return Input_AuthUsersDataBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersDataBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AuthUsersDataBoolExp>?);

  Input_AuthUsersDataBoolExp? get $_not =>
      (_$data['_not'] as Input_AuthUsersDataBoolExp?);

  List<Input_AuthUsersDataBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AuthUsersDataBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminOn =>
      (_$data['adminOn'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BooleanComparisonExp? get currentUserCanManageThisUser =>
      (_$data['currentUserCanManageThisUser'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get email =>
      (_$data['email'] as Input_StringComparisonExp?);

  Input_UsersFcmTokensBoolExp? get fcmTokens =>
      (_$data['fcmTokens'] as Input_UsersFcmTokensBoolExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_AuthUsersPermissionsBoolExp? get permissions =>
      (_$data['permissions'] as Input_AuthUsersPermissionsBoolExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_UsersPreferencesBoolExp? get preferences =>
      (_$data['preferences'] as Input_UsersPreferencesBoolExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('adminOn')) {
      final l$adminOn = adminOn;
      result$data['adminOn'] = l$adminOn?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('fcmTokens')) {
      final l$fcmTokens = fcmTokens;
      result$data['fcmTokens'] = l$fcmTokens?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('permissions')) {
      final l$permissions = permissions;
      result$data['permissions'] = l$permissions?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('preferences')) {
      final l$preferences = preferences;
      result$data['preferences'] = l$preferences?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
  get copyWith => CopyWith_Input_AuthUsersDataBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataBoolExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (_$data.containsKey('adminOn') != other._$data.containsKey('adminOn')) {
      return false;
    }
    if (l$adminOn != lOther$adminOn) {
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
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (_$data.containsKey('currentUserCanManageThisUser') !=
        other._$data.containsKey('currentUserCanManageThisUser')) {
      return false;
    }
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$fcmTokens = fcmTokens;
    final lOther$fcmTokens = other.fcmTokens;
    if (_$data.containsKey('fcmTokens') !=
        other._$data.containsKey('fcmTokens')) {
      return false;
    }
    if (l$fcmTokens != lOther$fcmTokens) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (_$data.containsKey('permissions') !=
        other._$data.containsKey('permissions')) {
      return false;
    }
    if (l$permissions != lOther$permissions) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
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
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (_$data.containsKey('preferences') !=
        other._$data.containsKey('preferences')) {
      return false;
    }
    if (l$preferences != lOther$preferences) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminOn = adminOn;
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$email = email;
    final l$fcmTokens = fcmTokens;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$permissions = permissions;
    final l$person = person;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$preferences = preferences;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
                ? null
                : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
                ? null
                : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('adminOn') ? l$adminOn : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('currentUserCanManageThisUser')
          ? l$currentUserCanManageThisUser
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('fcmTokens') ? l$fcmTokens : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permissions') ? l$permissions : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('preferences') ? l$preferences : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersDataBoolExp<TRes> {
  factory CopyWith_Input_AuthUsersDataBoolExp(
    Input_AuthUsersDataBoolExp instance,
    TRes Function(Input_AuthUsersDataBoolExp) then,
  ) = _CopyWithImpl_Input_AuthUsersDataBoolExp;

  factory CopyWith_Input_AuthUsersDataBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataBoolExp;

  TRes call({
    List<Input_AuthUsersDataBoolExp>? $_and,
    Input_AuthUsersDataBoolExp? $_not,
    List<Input_AuthUsersDataBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminOn,
    Input_StringComparisonExp? blurhash,
    Input_BooleanComparisonExp? currentUserCanManageThisUser,
    Input_StringComparisonExp? email,
    Input_UsersFcmTokensBoolExp? fcmTokens,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UsersPreferencesBoolExp? preferences,
    Input_UuidComparisonExp? uid,
  });
  TRes $_and(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminOn;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BooleanComparisonExp<TRes> get currentUserCanManageThisUser;
  CopyWith_Input_StringComparisonExp<TRes> get email;
  CopyWith_Input_UsersFcmTokensBoolExp<TRes> get fcmTokens;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get permissions;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_UsersPreferencesBoolExp<TRes> get preferences;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
}

class _CopyWithImpl_Input_AuthUsersDataBoolExp<TRes>
    implements CopyWith_Input_AuthUsersDataBoolExp<TRes> {
  _CopyWithImpl_Input_AuthUsersDataBoolExp(this._instance, this._then);

  final Input_AuthUsersDataBoolExp _instance;

  final TRes Function(Input_AuthUsersDataBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminOn = _undefined,
    Object? blurhash = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? email = _undefined,
    Object? fcmTokens = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? preferences = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersDataBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_AuthUsersDataBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_AuthUsersDataBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_AuthUsersDataBoolExp>?),
      if (adminOn != _undefined)
        'adminOn': (adminOn as Input_AuthUsersAdminOnBoolExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (currentUserCanManageThisUser != _undefined)
        'currentUserCanManageThisUser':
            (currentUserCanManageThisUser as Input_BooleanComparisonExp?),
      if (email != _undefined) 'email': (email as Input_StringComparisonExp?),
      if (fcmTokens != _undefined)
        'fcmTokens': (fcmTokens as Input_UsersFcmTokensBoolExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (permissions != _undefined)
        'permissions': (permissions as Input_AuthUsersPermissionsBoolExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (preferences != _undefined)
        'preferences': (preferences as Input_UsersPreferencesBoolExp?),
      if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_AuthUsersDataBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_AuthUsersDataBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminOn {
    final local$adminOn = _instance.adminOn;
    return local$adminOn == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$adminOn,
            (e) => call(adminOn: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get currentUserCanManageThisUser {
    final local$currentUserCanManageThisUser =
        _instance.currentUserCanManageThisUser;
    return local$currentUserCanManageThisUser == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$currentUserCanManageThisUser,
            (e) => call(currentUserCanManageThisUser: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$email,
            (e) => call(email: e),
          );
  }

  CopyWith_Input_UsersFcmTokensBoolExp<TRes> get fcmTokens {
    final local$fcmTokens = _instance.fcmTokens;
    return local$fcmTokens == null
        ? CopyWith_Input_UsersFcmTokensBoolExp.stub(_then(_instance))
        : CopyWith_Input_UsersFcmTokensBoolExp(
            local$fcmTokens,
            (e) => call(fcmTokens: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get permissions {
    final local$permissions = _instance.permissions;
    return local$permissions == null
        ? CopyWith_Input_AuthUsersPermissionsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersPermissionsBoolExp(
            local$permissions,
            (e) => call(permissions: e),
          );
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get preferences {
    final local$preferences = _instance.preferences;
    return local$preferences == null
        ? CopyWith_Input_UsersPreferencesBoolExp.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesBoolExp(
            local$preferences,
            (e) => call(preferences: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataBoolExp<TRes>
    implements CopyWith_Input_AuthUsersDataBoolExp<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersDataBoolExp>? $_and,
    Input_AuthUsersDataBoolExp? $_not,
    List<Input_AuthUsersDataBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminOn,
    Input_StringComparisonExp? blurhash,
    Input_BooleanComparisonExp? currentUserCanManageThisUser,
    Input_StringComparisonExp? email,
    Input_UsersFcmTokensBoolExp? fcmTokens,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UsersPreferencesBoolExp? preferences,
    Input_UuidComparisonExp? uid,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get $_not =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminOn =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get currentUserCanManageThisUser =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get email =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_UsersFcmTokensBoolExp<TRes> get fcmTokens =>
      CopyWith_Input_UsersFcmTokensBoolExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get permissions =>
      CopyWith_Input_AuthUsersPermissionsBoolExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get preferences =>
      CopyWith_Input_UsersPreferencesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_AuthUsersDataOrderBy {
  factory Input_AuthUsersDataOrderBy({
    Input_AuthUsersAdminOnAggregateOrderBy? adminOnAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_UsersFcmTokensAggregateOrderBy? fcmTokensAggregate,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Input_UsersPreferencesOrderBy? preferences,
    Enum_OrderBy? uid,
  }) => Input_AuthUsersDataOrderBy._({
    if (adminOnAggregate != null) r'adminOnAggregate': adminOnAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (currentUserCanManageThisUser != null)
      r'currentUserCanManageThisUser': currentUserCanManageThisUser,
    if (email != null) r'email': email,
    if (fcmTokensAggregate != null) r'fcmTokensAggregate': fcmTokensAggregate,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (permissionsAggregate != null)
      r'permissionsAggregate': permissionsAggregate,
    if (person != null) r'person': person,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (preferences != null) r'preferences': preferences,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersDataOrderBy._(this._$data);

  factory Input_AuthUsersDataOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnAggregate')) {
      final l$adminOnAggregate = data['adminOnAggregate'];
      result$data['adminOnAggregate'] = l$adminOnAggregate == null
          ? null
          : Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
              (l$adminOnAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser =
          data['currentUserCanManageThisUser'];
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : fromJson_Enum_OrderBy((l$currentUserCanManageThisUser as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : fromJson_Enum_OrderBy((l$email as String));
    }
    if (data.containsKey('fcmTokensAggregate')) {
      final l$fcmTokensAggregate = data['fcmTokensAggregate'];
      result$data['fcmTokensAggregate'] = l$fcmTokensAggregate == null
          ? null
          : Input_UsersFcmTokensAggregateOrderBy.fromJson(
              (l$fcmTokensAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('permissionsAggregate')) {
      final l$permissionsAggregate = data['permissionsAggregate'];
      result$data['permissionsAggregate'] = l$permissionsAggregate == null
          ? null
          : Input_AuthUsersPermissionsAggregateOrderBy.fromJson(
              (l$permissionsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('preferences')) {
      final l$preferences = data['preferences'];
      result$data['preferences'] = l$preferences == null
          ? null
          : Input_UsersPreferencesOrderBy.fromJson(
              (l$preferences as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_AuthUsersDataOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnAggregateOrderBy? get adminOnAggregate =>
      (_$data['adminOnAggregate'] as Input_AuthUsersAdminOnAggregateOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get currentUserCanManageThisUser =>
      (_$data['currentUserCanManageThisUser'] as Enum_OrderBy?);

  Enum_OrderBy? get email => (_$data['email'] as Enum_OrderBy?);

  Input_UsersFcmTokensAggregateOrderBy? get fcmTokensAggregate =>
      (_$data['fcmTokensAggregate'] as Input_UsersFcmTokensAggregateOrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_AuthUsersPermissionsAggregateOrderBy? get permissionsAggregate =>
      (_$data['permissionsAggregate']
          as Input_AuthUsersPermissionsAggregateOrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_UsersPreferencesOrderBy? get preferences =>
      (_$data['preferences'] as Input_UsersPreferencesOrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnAggregate')) {
      final l$adminOnAggregate = adminOnAggregate;
      result$data['adminOnAggregate'] = l$adminOnAggregate?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : toJson_Enum_OrderBy(l$currentUserCanManageThisUser);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email == null
          ? null
          : toJson_Enum_OrderBy(l$email);
    }
    if (_$data.containsKey('fcmTokensAggregate')) {
      final l$fcmTokensAggregate = fcmTokensAggregate;
      result$data['fcmTokensAggregate'] = l$fcmTokensAggregate?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('permissionsAggregate')) {
      final l$permissionsAggregate = permissionsAggregate;
      result$data['permissionsAggregate'] = l$permissionsAggregate?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('preferences')) {
      final l$preferences = preferences;
      result$data['preferences'] = l$preferences?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataOrderBy<Input_AuthUsersDataOrderBy>
  get copyWith => CopyWith_Input_AuthUsersDataOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminOnAggregate = adminOnAggregate;
    final lOther$adminOnAggregate = other.adminOnAggregate;
    if (_$data.containsKey('adminOnAggregate') !=
        other._$data.containsKey('adminOnAggregate')) {
      return false;
    }
    if (l$adminOnAggregate != lOther$adminOnAggregate) {
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
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (_$data.containsKey('currentUserCanManageThisUser') !=
        other._$data.containsKey('currentUserCanManageThisUser')) {
      return false;
    }
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$fcmTokensAggregate = fcmTokensAggregate;
    final lOther$fcmTokensAggregate = other.fcmTokensAggregate;
    if (_$data.containsKey('fcmTokensAggregate') !=
        other._$data.containsKey('fcmTokensAggregate')) {
      return false;
    }
    if (l$fcmTokensAggregate != lOther$fcmTokensAggregate) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$permissionsAggregate = permissionsAggregate;
    final lOther$permissionsAggregate = other.permissionsAggregate;
    if (_$data.containsKey('permissionsAggregate') !=
        other._$data.containsKey('permissionsAggregate')) {
      return false;
    }
    if (l$permissionsAggregate != lOther$permissionsAggregate) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
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
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (_$data.containsKey('preferences') !=
        other._$data.containsKey('preferences')) {
      return false;
    }
    if (l$preferences != lOther$preferences) {
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
    final l$adminOnAggregate = adminOnAggregate;
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$email = email;
    final l$fcmTokensAggregate = fcmTokensAggregate;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$permissionsAggregate = permissionsAggregate;
    final l$person = person;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$preferences = preferences;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnAggregate') ? l$adminOnAggregate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('currentUserCanManageThisUser')
          ? l$currentUserCanManageThisUser
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('fcmTokensAggregate')
          ? l$fcmTokensAggregate
          : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permissionsAggregate')
          ? l$permissionsAggregate
          : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('preferences') ? l$preferences : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}
