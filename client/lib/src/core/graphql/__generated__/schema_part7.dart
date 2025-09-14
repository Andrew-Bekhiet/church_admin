// Part 7 of the schema
part of "schema.graphql.dart";


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
    Input_ClassesAggregateOrderBy? classesAggregate,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupAdminOnUsers,
    Enum_OrderBy? groupAllowEdit,
    Enum_OrderBy? permissionId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceAdminOnUsers,
    Enum_OrderBy? serviceAllowEdit,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? serviceStudyYearData,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_AuthUsersAdminOnOrderBy._({
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (area != null) r'area': area,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (group != null) r'group': group,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (permissionId != null) r'permissionId': permissionId,
    if (service != null) r'service': service,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceStudyYearData != null)
      r'serviceStudyYearData': serviceStudyYearData,
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

  Input_ClassesAggregateOrderBy? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateOrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupAdminOnUsers =>
      (_$data['groupAdminOnUsers'] as Enum_OrderBy?);

  Enum_OrderBy? get groupAllowEdit =>
      (_$data['groupAllowEdit'] as Enum_OrderBy?);

  Enum_OrderBy? get permissionId => (_$data['permissionId'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceAdminOnUsers =>
      (_$data['serviceAdminOnUsers'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceAllowEdit =>
      (_$data['serviceAllowEdit'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceGender => (_$data['serviceGender'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get serviceStudyYearData =>
      (_$data['serviceStudyYearData'] as Input_StudyYearsOrderBy?);

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
    final l$classesAggregate = classesAggregate;
    final l$group = group;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$permissionId = permissionId;
    final l$service = service;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceStudyYearData')
          ? l$serviceStudyYearData
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
    Input_ClassesAggregateOrderBy? classesAggregate,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupAdminOnUsers,
    Enum_OrderBy? groupAllowEdit,
    Enum_OrderBy? permissionId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceAdminOnUsers,
    Enum_OrderBy? serviceAllowEdit,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? serviceStudyYearData,
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
    Object? classesAggregate = _undefined,
    Object? group = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? permissionId = _undefined,
    Object? service = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearData = _undefined,
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
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesAggregateOrderBy?),
      if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as Enum_OrderBy?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as Enum_OrderBy?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as Enum_OrderBy?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as Enum_OrderBy?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      if (serviceStudyYearData != _undefined)
        'serviceStudyYearData':
            (serviceStudyYearData as Input_StudyYearsOrderBy?),
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
    Input_ClassesAggregateOrderBy? classesAggregate,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupAdminOnUsers,
    Enum_OrderBy? groupAllowEdit,
    Enum_OrderBy? permissionId,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceAdminOnUsers,
    Enum_OrderBy? serviceAllowEdit,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? serviceStudyYearData,
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
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceGender,
    int? serviceStudyYear,
    UuidValue? uid,
  }) => Input_AuthUsersAdminOnStreamCursorValueInput._({
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (permissionId != null) r'permissionId': permissionId,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
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
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = (l$groupAdminOnUsers as bool?);
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = (l$groupAllowEdit as bool?);
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
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
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

  bool? get groupAdminOnUsers => (_$data['groupAdminOnUsers'] as bool?);

  bool? get groupAllowEdit => (_$data['groupAllowEdit'] as bool?);

  UuidValue? get permissionId => (_$data['permissionId'] as UuidValue?);

  bool? get serviceAdminOnUsers => (_$data['serviceAdminOnUsers'] as bool?);

  bool? get serviceAllowEdit => (_$data['serviceAllowEdit'] as bool?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

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
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers;
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit;
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
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
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
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$permissionId = permissionId;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
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
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceGender,
    int? serviceStudyYear,
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
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? permissionId = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
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
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as bool?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as bool?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as UuidValue?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as bool?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as bool?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
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
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceGender,
    int? serviceStudyYear,
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
    Input_StringComparisonExp? email,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UuidComparisonExp? uid,
  }) => Input_AuthUsersDataBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminOn != null) r'adminOn': adminOn,
    if (blurhash != null) r'blurhash': blurhash,
    if (email != null) r'email': email,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (permissions != null) r'permissions': permissions,
    if (person != null) r'person': person,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
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
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$email as Map<String, dynamic>),
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

  Input_StringComparisonExp? get email =>
      (_$data['email'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
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
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
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
    final l$email = email;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$permissions = permissions;
    final l$person = person;
    final l$photoUpdatedAt = photoUpdatedAt;
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
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permissions') ? l$permissions : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}
