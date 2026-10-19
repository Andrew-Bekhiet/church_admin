// Part 1 of the schema
part of "schema.graphql.dart";

class Input_NewPersonInput {
  factory Input_NewPersonInput({required String name, required bool gender}) =>
      Input_NewPersonInput._({r'name': name, r'gender': gender});

  Input_NewPersonInput._(this._$data);

  factory Input_NewPersonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$gender = data['gender'];
    result$data['gender'] = (l$gender as bool);
    return Input_NewPersonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  bool get gender => (_$data['gender'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$gender = gender;
    result$data['gender'] = l$gender;
    return result$data;
  }

  CopyWith_Input_NewPersonInput<Input_NewPersonInput> get copyWith =>
      CopyWith_Input_NewPersonInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_NewPersonInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$gender = gender;
    return Object.hashAll([l$name, l$gender]);
  }
}

abstract class CopyWith_Input_NewPersonInput<TRes> {
  factory CopyWith_Input_NewPersonInput(
    Input_NewPersonInput instance,
    TRes Function(Input_NewPersonInput) then,
  ) = _CopyWithImpl_Input_NewPersonInput;

  factory CopyWith_Input_NewPersonInput.stub(TRes res) =
      _CopyWithStubImpl_Input_NewPersonInput;

  TRes call({String? name, bool? gender});
}

class _CopyWithImpl_Input_NewPersonInput<TRes>
    implements CopyWith_Input_NewPersonInput<TRes> {
  _CopyWithImpl_Input_NewPersonInput(this._instance, this._then);

  final Input_NewPersonInput _instance;

  final TRes Function(Input_NewPersonInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? gender = _undefined}) => _then(
    Input_NewPersonInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (gender != _undefined && gender != null) 'gender': (gender as bool),
    }),
  );
}

class _CopyWithStubImpl_Input_NewPersonInput<TRes>
    implements CopyWith_Input_NewPersonInput<TRes> {
  _CopyWithStubImpl_Input_NewPersonInput(this._res);

  TRes _res;

  call({String? name, bool? gender}) => _res;
}

class Input_AdminOnInput {
  factory Input_AdminOnInput({
    bool? serviceWriteRelatedFamilies,
    int? serviceStudyYear,
    bool? serviceGender,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAllowRecordAttendance,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    String? adminOnService,
    String? adminOnGroup,
    String? adminOnArea,
  }) => Input_AdminOnInput._({
    if (serviceWriteRelatedFamilies != null)
      r'serviceWriteRelatedFamilies': serviceWriteRelatedFamilies,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceAllowRecordServantsAttendance != null)
      r'serviceAllowRecordServantsAttendance':
          serviceAllowRecordServantsAttendance,
    if (serviceAllowRecordAttendance != null)
      r'serviceAllowRecordAttendance': serviceAllowRecordAttendance,
    if (serviceAllowExport != null) r'serviceAllowExport': serviceAllowExport,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (groupWriteRelatedFamilies != null)
      r'groupWriteRelatedFamilies': groupWriteRelatedFamilies,
    if (groupAllowRecordServantsAttendance != null)
      r'groupAllowRecordServantsAttendance': groupAllowRecordServantsAttendance,
    if (groupAllowRecordAttendance != null)
      r'groupAllowRecordAttendance': groupAllowRecordAttendance,
    if (groupAllowExport != null) r'groupAllowExport': groupAllowExport,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
    if (areaAllowExport != null) r'areaAllowExport': areaAllowExport,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
  });

  Input_AdminOnInput._(this._$data);

  factory Input_AdminOnInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = data['serviceWriteRelatedFamilies'];
      result$data['serviceWriteRelatedFamilies'] =
          (l$serviceWriteRelatedFamilies as bool?);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          data['serviceAllowRecordServantsAttendance'];
      result$data['serviceAllowRecordServantsAttendance'] =
          (l$serviceAllowRecordServantsAttendance as bool?);
    }
    if (data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance =
          data['serviceAllowRecordAttendance'];
      result$data['serviceAllowRecordAttendance'] =
          (l$serviceAllowRecordAttendance as bool?);
    }
    if (data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = data['serviceAllowExport'];
      result$data['serviceAllowExport'] = (l$serviceAllowExport as bool?);
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = (l$serviceAllowEdit as bool?);
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = (l$serviceAdminOnUsers as bool?);
    }
    if (data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = data['groupWriteRelatedFamilies'];
      result$data['groupWriteRelatedFamilies'] =
          (l$groupWriteRelatedFamilies as bool?);
    }
    if (data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          data['groupAllowRecordServantsAttendance'];
      result$data['groupAllowRecordServantsAttendance'] =
          (l$groupAllowRecordServantsAttendance as bool?);
    }
    if (data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = data['groupAllowRecordAttendance'];
      result$data['groupAllowRecordAttendance'] =
          (l$groupAllowRecordAttendance as bool?);
    }
    if (data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = data['groupAllowExport'];
      result$data['groupAllowExport'] = (l$groupAllowExport as bool?);
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = (l$groupAllowEdit as bool?);
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = (l$groupAdminOnUsers as bool?);
    }
    if (data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = data['areaAllowExport'];
      result$data['areaAllowExport'] = (l$areaAllowExport as bool?);
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = (l$areaAllowEdit as bool?);
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = (l$areaAdminOnUsers as bool?);
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = (l$adminOnService as String?);
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = (l$adminOnGroup as String?);
    }
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = (l$adminOnArea as String?);
    }
    return Input_AdminOnInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get serviceWriteRelatedFamilies =>
      (_$data['serviceWriteRelatedFamilies'] as bool?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  bool? get serviceAllowRecordServantsAttendance =>
      (_$data['serviceAllowRecordServantsAttendance'] as bool?);

  bool? get serviceAllowRecordAttendance =>
      (_$data['serviceAllowRecordAttendance'] as bool?);

  bool? get serviceAllowExport => (_$data['serviceAllowExport'] as bool?);

  bool? get serviceAllowEdit => (_$data['serviceAllowEdit'] as bool?);

  bool? get serviceAdminOnUsers => (_$data['serviceAdminOnUsers'] as bool?);

  bool? get groupWriteRelatedFamilies =>
      (_$data['groupWriteRelatedFamilies'] as bool?);

  bool? get groupAllowRecordServantsAttendance =>
      (_$data['groupAllowRecordServantsAttendance'] as bool?);

  bool? get groupAllowRecordAttendance =>
      (_$data['groupAllowRecordAttendance'] as bool?);

  bool? get groupAllowExport => (_$data['groupAllowExport'] as bool?);

  bool? get groupAllowEdit => (_$data['groupAllowEdit'] as bool?);

  bool? get groupAdminOnUsers => (_$data['groupAdminOnUsers'] as bool?);

  bool? get areaAllowExport => (_$data['areaAllowExport'] as bool?);

  bool? get areaAllowEdit => (_$data['areaAllowEdit'] as bool?);

  bool? get areaAdminOnUsers => (_$data['areaAdminOnUsers'] as bool?);

  String? get adminOnService => (_$data['adminOnService'] as String?);

  String? get adminOnGroup => (_$data['adminOnGroup'] as String?);

  String? get adminOnArea => (_$data['adminOnArea'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
      result$data['serviceWriteRelatedFamilies'] =
          l$serviceWriteRelatedFamilies;
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          serviceAllowRecordServantsAttendance;
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance;
    }
    if (_$data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance;
    }
    if (_$data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = serviceAllowExport;
      result$data['serviceAllowExport'] = l$serviceAllowExport;
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit;
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    }
    if (_$data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
      result$data['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies;
    }
    if (_$data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          groupAllowRecordServantsAttendance;
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance;
    }
    if (_$data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
      result$data['groupAllowRecordAttendance'] = l$groupAllowRecordAttendance;
    }
    if (_$data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = groupAllowExport;
      result$data['groupAllowExport'] = l$groupAllowExport;
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit;
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers;
    }
    if (_$data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = areaAllowExport;
      result$data['areaAllowExport'] = l$areaAllowExport;
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit;
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers;
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService;
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup;
    }
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea;
    }
    return result$data;
  }

  CopyWith_Input_AdminOnInput<Input_AdminOnInput> get copyWith =>
      CopyWith_Input_AdminOnInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AdminOnInput || runtimeType != other.runtimeType) {
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
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
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
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (_$data.containsKey('serviceAllowExport') !=
        other._$data.containsKey('serviceAllowExport')) {
      return false;
    }
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
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
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (_$data.containsKey('serviceAdminOnUsers') !=
        other._$data.containsKey('serviceAdminOnUsers')) {
      return false;
    }
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
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
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final lOther$groupAllowRecordAttendance = other.groupAllowRecordAttendance;
    if (_$data.containsKey('groupAllowRecordAttendance') !=
        other._$data.containsKey('groupAllowRecordAttendance')) {
      return false;
    }
    if (l$groupAllowRecordAttendance != lOther$groupAllowRecordAttendance) {
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
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (_$data.containsKey('groupAllowEdit') !=
        other._$data.containsKey('groupAllowEdit')) {
      return false;
    }
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
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
    final l$areaAllowExport = areaAllowExport;
    final lOther$areaAllowExport = other.areaAllowExport;
    if (_$data.containsKey('areaAllowExport') !=
        other._$data.containsKey('areaAllowExport')) {
      return false;
    }
    if (l$areaAllowExport != lOther$areaAllowExport) {
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
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (_$data.containsKey('areaAdminOnUsers') !=
        other._$data.containsKey('areaAdminOnUsers')) {
      return false;
    }
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
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
    final l$adminOnGroup = adminOnGroup;
    final lOther$adminOnGroup = other.adminOnGroup;
    if (_$data.containsKey('adminOnGroup') !=
        other._$data.containsKey('adminOnGroup')) {
      return false;
    }
    if (l$adminOnGroup != lOther$adminOnGroup) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceGender = serviceGender;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$areaAllowExport = areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$adminOnService = adminOnService;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnArea = adminOnArea;
    return Object.hashAll([
      _$data.containsKey('serviceWriteRelatedFamilies')
          ? l$serviceWriteRelatedFamilies
          : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceAllowRecordServantsAttendance')
          ? l$serviceAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('serviceAllowRecordAttendance')
          ? l$serviceAllowRecordAttendance
          : const {},
      _$data.containsKey('serviceAllowExport')
          ? l$serviceAllowExport
          : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('groupWriteRelatedFamilies')
          ? l$groupWriteRelatedFamilies
          : const {},
      _$data.containsKey('groupAllowRecordServantsAttendance')
          ? l$groupAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('groupAllowRecordAttendance')
          ? l$groupAllowRecordAttendance
          : const {},
      _$data.containsKey('groupAllowExport') ? l$groupAllowExport : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('areaAllowExport') ? l$areaAllowExport : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
    ]);
  }
}

abstract class CopyWith_Input_AdminOnInput<TRes> {
  factory CopyWith_Input_AdminOnInput(
    Input_AdminOnInput instance,
    TRes Function(Input_AdminOnInput) then,
  ) = _CopyWithImpl_Input_AdminOnInput;

  factory CopyWith_Input_AdminOnInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AdminOnInput;

  TRes call({
    bool? serviceWriteRelatedFamilies,
    int? serviceStudyYear,
    bool? serviceGender,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAllowRecordAttendance,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    String? adminOnService,
    String? adminOnGroup,
    String? adminOnArea,
  });
}

class _CopyWithImpl_Input_AdminOnInput<TRes>
    implements CopyWith_Input_AdminOnInput<TRes> {
  _CopyWithImpl_Input_AdminOnInput(this._instance, this._then);

  final Input_AdminOnInput _instance;

  final TRes Function(Input_AdminOnInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? areaAllowExport = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? adminOnService = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnArea = _undefined,
  }) => _then(
    Input_AdminOnInput._({
      ..._instance._$data,
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies': (serviceWriteRelatedFamilies as bool?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceAllowRecordServantsAttendance != _undefined)
        'serviceAllowRecordServantsAttendance':
            (serviceAllowRecordServantsAttendance as bool?),
      if (serviceAllowRecordAttendance != _undefined)
        'serviceAllowRecordAttendance': (serviceAllowRecordAttendance as bool?),
      if (serviceAllowExport != _undefined)
        'serviceAllowExport': (serviceAllowExport as bool?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as bool?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as bool?),
      if (groupWriteRelatedFamilies != _undefined)
        'groupWriteRelatedFamilies': (groupWriteRelatedFamilies as bool?),
      if (groupAllowRecordServantsAttendance != _undefined)
        'groupAllowRecordServantsAttendance':
            (groupAllowRecordServantsAttendance as bool?),
      if (groupAllowRecordAttendance != _undefined)
        'groupAllowRecordAttendance': (groupAllowRecordAttendance as bool?),
      if (groupAllowExport != _undefined)
        'groupAllowExport': (groupAllowExport as bool?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as bool?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as bool?),
      if (areaAllowExport != _undefined)
        'areaAllowExport': (areaAllowExport as bool?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit': (areaAllowEdit as bool?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers': (areaAdminOnUsers as bool?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as String?),
      if (adminOnGroup != _undefined) 'adminOnGroup': (adminOnGroup as String?),
      if (adminOnArea != _undefined) 'adminOnArea': (adminOnArea as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AdminOnInput<TRes>
    implements CopyWith_Input_AdminOnInput<TRes> {
  _CopyWithStubImpl_Input_AdminOnInput(this._res);

  TRes _res;

  call({
    bool? serviceWriteRelatedFamilies,
    int? serviceStudyYear,
    bool? serviceGender,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAllowRecordAttendance,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    String? adminOnService,
    String? adminOnGroup,
    String? adminOnArea,
  }) => _res;
}

class Input_MeetingInput {
  factory Input_MeetingInput({
    bool? showKodasCheckbox,
    int? serviceStudyYear,
    bool? serviceGender,
    required String name,
    bool? isArchived,
    int? color,
    Enum_MeetingAudience? audience,
  }) => Input_MeetingInput._({
    if (showKodasCheckbox != null) r'showKodasCheckbox': showKodasCheckbox,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceGender != null) r'serviceGender': serviceGender,
    r'name': name,
    if (isArchived != null) r'isArchived': isArchived,
    if (color != null) r'color': color,
    if (audience != null) r'audience': audience,
  });

  Input_MeetingInput._(this._$data);

  factory Input_MeetingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = data['showKodasCheckbox'];
      result$data['showKodasCheckbox'] = (l$showKodasCheckbox as bool?);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_MeetingAudience((l$audience as String));
    }
    return Input_MeetingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get showKodasCheckbox => (_$data['showKodasCheckbox'] as bool?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  String get name => (_$data['name'] as String);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  int? get color => (_$data['color'] as int?);

  Enum_MeetingAudience? get audience =>
      (_$data['audience'] as Enum_MeetingAudience?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = showKodasCheckbox;
      result$data['showKodasCheckbox'] = l$showKodasCheckbox;
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_MeetingAudience(l$audience);
    }
    return result$data;
  }

  CopyWith_Input_MeetingInput<Input_MeetingInput> get copyWith =>
      CopyWith_Input_MeetingInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (_$data.containsKey('showKodasCheckbox') !=
        other._$data.containsKey('showKodasCheckbox')) {
      return false;
    }
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (_$data.containsKey('isArchived') !=
        other._$data.containsKey('isArchived')) {
      return false;
    }
    if (l$isArchived != lOther$isArchived) {
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
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$showKodasCheckbox = showKodasCheckbox;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceGender = serviceGender;
    final l$name = name;
    final l$isArchived = isArchived;
    final l$color = color;
    final l$audience = audience;
    return Object.hashAll([
      _$data.containsKey('showKodasCheckbox') ? l$showKodasCheckbox : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      l$name,
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('audience') ? l$audience : const {},
    ]);
  }
}

abstract class CopyWith_Input_MeetingInput<TRes> {
  factory CopyWith_Input_MeetingInput(
    Input_MeetingInput instance,
    TRes Function(Input_MeetingInput) then,
  ) = _CopyWithImpl_Input_MeetingInput;

  factory CopyWith_Input_MeetingInput.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingInput;

  TRes call({
    bool? showKodasCheckbox,
    int? serviceStudyYear,
    bool? serviceGender,
    String? name,
    bool? isArchived,
    int? color,
    Enum_MeetingAudience? audience,
  });
}

class _CopyWithImpl_Input_MeetingInput<TRes>
    implements CopyWith_Input_MeetingInput<TRes> {
  _CopyWithImpl_Input_MeetingInput(this._instance, this._then);

  final Input_MeetingInput _instance;

  final TRes Function(Input_MeetingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? showKodasCheckbox = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? name = _undefined,
    Object? isArchived = _undefined,
    Object? color = _undefined,
    Object? audience = _undefined,
  }) => _then(
    Input_MeetingInput._({
      ..._instance._$data,
      if (showKodasCheckbox != _undefined)
        'showKodasCheckbox': (showKodasCheckbox as bool?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (name != _undefined && name != null) 'name': (name as String),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (color != _undefined) 'color': (color as int?),
      if (audience != _undefined)
        'audience': (audience as Enum_MeetingAudience?),
    }),
  );
}

class _CopyWithStubImpl_Input_MeetingInput<TRes>
    implements CopyWith_Input_MeetingInput<TRes> {
  _CopyWithStubImpl_Input_MeetingInput(this._res);

  TRes _res;

  call({
    bool? showKodasCheckbox,
    int? serviceStudyYear,
    bool? serviceGender,
    String? name,
    bool? isArchived,
    int? color,
    Enum_MeetingAudience? audience,
  }) => _res;
}

class Input_ContactInput {
  factory Input_ContactInput({
    required String phone,
    String? label,
    required bool isMainPhone,
    String? id,
  }) => Input_ContactInput._({
    r'phone': phone,
    if (label != null) r'label': label,
    r'isMainPhone': isMainPhone,
    if (id != null) r'id': id,
  });

  Input_ContactInput._(this._$data);

  factory Input_ContactInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    final l$isMainPhone = data['isMainPhone'];
    result$data['isMainPhone'] = (l$isMainPhone as bool);
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input_ContactInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  String? get label => (_$data['label'] as String?);

  bool get isMainPhone => (_$data['isMainPhone'] as bool);

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    final l$isMainPhone = isMainPhone;
    result$data['isMainPhone'] = l$isMainPhone;
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith_Input_ContactInput<Input_ContactInput> get copyWith =>
      CopyWith_Input_ContactInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (l$isMainPhone != lOther$isMainPhone) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$label = label;
    final l$isMainPhone = isMainPhone;
    final l$id = id;
    return Object.hashAll([
      l$phone,
      _$data.containsKey('label') ? l$label : const {},
      l$isMainPhone,
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith_Input_ContactInput<TRes> {
  factory CopyWith_Input_ContactInput(
    Input_ContactInput instance,
    TRes Function(Input_ContactInput) then,
  ) = _CopyWithImpl_Input_ContactInput;

  factory CopyWith_Input_ContactInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactInput;

  TRes call({String? phone, String? label, bool? isMainPhone, String? id});
}

class _CopyWithImpl_Input_ContactInput<TRes>
    implements CopyWith_Input_ContactInput<TRes> {
  _CopyWithImpl_Input_ContactInput(this._instance, this._then);

  final Input_ContactInput _instance;

  final TRes Function(Input_ContactInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? label = _undefined,
    Object? isMainPhone = _undefined,
    Object? id = _undefined,
  }) => _then(
    Input_ContactInput._({
      ..._instance._$data,
      if (phone != _undefined && phone != null) 'phone': (phone as String),
      if (label != _undefined) 'label': (label as String?),
      if (isMainPhone != _undefined && isMainPhone != null)
        'isMainPhone': (isMainPhone as bool),
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ContactInput<TRes>
    implements CopyWith_Input_ContactInput<TRes> {
  _CopyWithStubImpl_Input_ContactInput(this._res);

  TRes _res;

  call({String? phone, String? label, bool? isMainPhone, String? id}) => _res;
}

class Input_FamilyContactInput {
  factory Input_FamilyContactInput({
    required String phone,
    required String personTypeId,
    String? label,
    required bool isMainPhone,
    String? id,
  }) => Input_FamilyContactInput._({
    r'phone': phone,
    r'personTypeId': personTypeId,
    if (label != null) r'label': label,
    r'isMainPhone': isMainPhone,
    if (id != null) r'id': id,
  });

  Input_FamilyContactInput._(this._$data);

  factory Input_FamilyContactInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$personTypeId = data['personTypeId'];
    result$data['personTypeId'] = (l$personTypeId as String);
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    final l$isMainPhone = data['isMainPhone'];
    result$data['isMainPhone'] = (l$isMainPhone as bool);
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input_FamilyContactInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  String get personTypeId => (_$data['personTypeId'] as String);

  String? get label => (_$data['label'] as String?);

  bool get isMainPhone => (_$data['isMainPhone'] as bool);

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$personTypeId = personTypeId;
    result$data['personTypeId'] = l$personTypeId;
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    final l$isMainPhone = isMainPhone;
    result$data['isMainPhone'] = l$isMainPhone;
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith_Input_FamilyContactInput<Input_FamilyContactInput> get copyWith =>
      CopyWith_Input_FamilyContactInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyContactInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (l$isMainPhone != lOther$isMainPhone) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$personTypeId = personTypeId;
    final l$label = label;
    final l$isMainPhone = isMainPhone;
    final l$id = id;
    return Object.hashAll([
      l$phone,
      l$personTypeId,
      _$data.containsKey('label') ? l$label : const {},
      l$isMainPhone,
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamilyContactInput<TRes> {
  factory CopyWith_Input_FamilyContactInput(
    Input_FamilyContactInput instance,
    TRes Function(Input_FamilyContactInput) then,
  ) = _CopyWithImpl_Input_FamilyContactInput;

  factory CopyWith_Input_FamilyContactInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactInput;

  TRes call({
    String? phone,
    String? personTypeId,
    String? label,
    bool? isMainPhone,
    String? id,
  });
}

class _CopyWithImpl_Input_FamilyContactInput<TRes>
    implements CopyWith_Input_FamilyContactInput<TRes> {
  _CopyWithImpl_Input_FamilyContactInput(this._instance, this._then);

  final Input_FamilyContactInput _instance;

  final TRes Function(Input_FamilyContactInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? personTypeId = _undefined,
    Object? label = _undefined,
    Object? isMainPhone = _undefined,
    Object? id = _undefined,
  }) => _then(
    Input_FamilyContactInput._({
      ..._instance._$data,
      if (phone != _undefined && phone != null) 'phone': (phone as String),
      if (personTypeId != _undefined && personTypeId != null)
        'personTypeId': (personTypeId as String),
      if (label != _undefined) 'label': (label as String?),
      if (isMainPhone != _undefined && isMainPhone != null)
        'isMainPhone': (isMainPhone as bool),
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilyContactInput<TRes>
    implements CopyWith_Input_FamilyContactInput<TRes> {
  _CopyWithStubImpl_Input_FamilyContactInput(this._res);

  TRes _res;

  call({
    String? phone,
    String? personTypeId,
    String? label,
    bool? isMainPhone,
    String? id,
  }) => _res;
}

class Input_AddressInput {
  factory Input_AddressInput({
    String? substreetName,
    String? streetId,
    int? storeyNumber,
    String? specialLandmark,
    String? houseCode,
    Json? geolocation,
    String? districtId,
    String? countryIsoCode,
    String? areaId,
    int? apartmentNumber,
  }) => Input_AddressInput._({
    if (substreetName != null) r'substreetName': substreetName,
    if (streetId != null) r'streetId': streetId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (houseCode != null) r'houseCode': houseCode,
    if (geolocation != null) r'geolocation': geolocation,
    if (districtId != null) r'districtId': districtId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (areaId != null) r'areaId': areaId,
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
  });

  Input_AddressInput._(this._$data);

  factory Input_AddressInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = (l$substreetName as String?);
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = (l$streetId as String?);
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = (l$storeyNumber as int?);
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = (l$specialLandmark as String?);
    }
    if (data.containsKey('houseCode')) {
      final l$houseCode = data['houseCode'];
      result$data['houseCode'] = (l$houseCode as String?);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Json?);
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = (l$districtId as String?);
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = (l$countryIsoCode as String?);
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = (l$areaId as String?);
    }
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = (l$apartmentNumber as int?);
    }
    return Input_AddressInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get substreetName => (_$data['substreetName'] as String?);

  String? get streetId => (_$data['streetId'] as String?);

  int? get storeyNumber => (_$data['storeyNumber'] as int?);

  String? get specialLandmark => (_$data['specialLandmark'] as String?);

  String? get houseCode => (_$data['houseCode'] as String?);

  Json? get geolocation => (_$data['geolocation'] as Json?);

  String? get districtId => (_$data['districtId'] as String?);

  String? get countryIsoCode => (_$data['countryIsoCode'] as String?);

  String? get areaId => (_$data['areaId'] as String?);

  int? get apartmentNumber => (_$data['apartmentNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName;
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId;
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber;
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark;
    }
    if (_$data.containsKey('houseCode')) {
      final l$houseCode = houseCode;
      result$data['houseCode'] = l$houseCode;
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId;
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode;
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId;
    }
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber;
    }
    return result$data;
  }

  CopyWith_Input_AddressInput<Input_AddressInput> get copyWith =>
      CopyWith_Input_AddressInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$substreetName = substreetName;
    final lOther$substreetName = other.substreetName;
    if (_$data.containsKey('substreetName') !=
        other._$data.containsKey('substreetName')) {
      return false;
    }
    if (l$substreetName != lOther$substreetName) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$houseCode = houseCode;
    final lOther$houseCode = other.houseCode;
    if (_$data.containsKey('houseCode') !=
        other._$data.containsKey('houseCode')) {
      return false;
    }
    if (l$houseCode != lOther$houseCode) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (_$data.containsKey('countryIsoCode') !=
        other._$data.containsKey('countryIsoCode')) {
      return false;
    }
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$substreetName = substreetName;
    final l$streetId = streetId;
    final l$storeyNumber = storeyNumber;
    final l$specialLandmark = specialLandmark;
    final l$houseCode = houseCode;
    final l$geolocation = geolocation;
    final l$districtId = districtId;
    final l$countryIsoCode = countryIsoCode;
    final l$areaId = areaId;
    final l$apartmentNumber = apartmentNumber;
    return Object.hashAll([
      _$data.containsKey('substreetName') ? l$substreetName : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('houseCode') ? l$houseCode : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressInput<TRes> {
  factory CopyWith_Input_AddressInput(
    Input_AddressInput instance,
    TRes Function(Input_AddressInput) then,
  ) = _CopyWithImpl_Input_AddressInput;

  factory CopyWith_Input_AddressInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressInput;

  TRes call({
    String? substreetName,
    String? streetId,
    int? storeyNumber,
    String? specialLandmark,
    String? houseCode,
    Json? geolocation,
    String? districtId,
    String? countryIsoCode,
    String? areaId,
    int? apartmentNumber,
  });
}

class _CopyWithImpl_Input_AddressInput<TRes>
    implements CopyWith_Input_AddressInput<TRes> {
  _CopyWithImpl_Input_AddressInput(this._instance, this._then);

  final Input_AddressInput _instance;

  final TRes Function(Input_AddressInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? substreetName = _undefined,
    Object? streetId = _undefined,
    Object? storeyNumber = _undefined,
    Object? specialLandmark = _undefined,
    Object? houseCode = _undefined,
    Object? geolocation = _undefined,
    Object? districtId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? areaId = _undefined,
    Object? apartmentNumber = _undefined,
  }) => _then(
    Input_AddressInput._({
      ..._instance._$data,
      if (substreetName != _undefined)
        'substreetName': (substreetName as String?),
      if (streetId != _undefined) 'streetId': (streetId as String?),
      if (storeyNumber != _undefined) 'storeyNumber': (storeyNumber as int?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as String?),
      if (houseCode != _undefined) 'houseCode': (houseCode as String?),
      if (geolocation != _undefined) 'geolocation': (geolocation as Json?),
      if (districtId != _undefined) 'districtId': (districtId as String?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as String?),
      if (areaId != _undefined) 'areaId': (areaId as String?),
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressInput<TRes>
    implements CopyWith_Input_AddressInput<TRes> {
  _CopyWithStubImpl_Input_AddressInput(this._res);

  TRes _res;

  call({
    String? substreetName,
    String? streetId,
    int? storeyNumber,
    String? specialLandmark,
    String? houseCode,
    Json? geolocation,
    String? districtId,
    String? countryIsoCode,
    String? areaId,
    int? apartmentNumber,
  }) => _res;
}

class Input_ServiceMembershipFilterIsOutsideServiceStudyYears {
  factory Input_ServiceMembershipFilterIsOutsideServiceStudyYears({
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
  }) => Input_ServiceMembershipFilterIsOutsideServiceStudyYears._({
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

  Input_ServiceMembershipFilterIsOutsideServiceStudyYears._(this._$data);

  factory Input_ServiceMembershipFilterIsOutsideServiceStudyYears.fromJson(
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
    return Input_ServiceMembershipFilterIsOutsideServiceStudyYears._(
      result$data,
    );
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

  CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears<
    Input_ServiceMembershipFilterIsOutsideServiceStudyYears
  >
  get copyWith =>
      CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServiceMembershipFilterIsOutsideServiceStudyYears ||
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

abstract class CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears<
  TRes
> {
  factory CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears(
    Input_ServiceMembershipFilterIsOutsideServiceStudyYears instance,
    TRes Function(Input_ServiceMembershipFilterIsOutsideServiceStudyYears) then,
  ) = _CopyWithImpl_Input_ServiceMembershipFilterIsOutsideServiceStudyYears;

  factory CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_ServiceMembershipFilterIsOutsideServiceStudyYears;

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

class _CopyWithImpl_Input_ServiceMembershipFilterIsOutsideServiceStudyYears<
  TRes
>
    implements
        CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears<TRes> {
  _CopyWithImpl_Input_ServiceMembershipFilterIsOutsideServiceStudyYears(
    this._instance,
    this._then,
  );

  final Input_ServiceMembershipFilterIsOutsideServiceStudyYears _instance;

  final TRes Function(Input_ServiceMembershipFilterIsOutsideServiceStudyYears)
  _then;

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
    Input_ServiceMembershipFilterIsOutsideServiceStudyYears._({
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

class _CopyWithStubImpl_Input_ServiceMembershipFilterIsOutsideServiceStudyYears<
  TRes
>
    implements
        CopyWith_Input_ServiceMembershipFilterIsOutsideServiceStudyYears<TRes> {
  _CopyWithStubImpl_Input_ServiceMembershipFilterIsOutsideServiceStudyYears(
    this._res,
  );

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

class Input_ServiceMembershipFilterServiceName {
  factory Input_ServiceMembershipFilterServiceName({
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
  }) => Input_ServiceMembershipFilterServiceName._({
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

  Input_ServiceMembershipFilterServiceName._(this._$data);

  factory Input_ServiceMembershipFilterServiceName.fromJson(
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
    return Input_ServiceMembershipFilterServiceName._(result$data);
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

  CopyWith_Input_ServiceMembershipFilterServiceName<
    Input_ServiceMembershipFilterServiceName
  >
  get copyWith =>
      CopyWith_Input_ServiceMembershipFilterServiceName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ServiceMembershipFilterServiceName ||
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
