// Part 6 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
    Input_AuthUsersAdminOnArrRelInsertInput instance,
    TRes Function(Input_AuthUsersAdminOnArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnArrRelInsertInput;

  factory CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnArrRelInsertInput;

  TRes call({
    List<Input_AuthUsersAdminOnInsertInput>? data,
    Input_AuthUsersAdminOnOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_AuthUsersAdminOnInsertInput> Function(
              Iterable<
                  CopyWith_Input_AuthUsersAdminOnInsertInput<
                      Input_AuthUsersAdminOnInsertInput>>)
          _fn);
  CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AuthUsersAdminOnArrRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnArrRelInsertInput _instance;

  final TRes Function(Input_AuthUsersAdminOnArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_AuthUsersAdminOnArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_AuthUsersAdminOnInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_AuthUsersAdminOnOnConflict?),
      }));

  TRes data(
          Iterable<Input_AuthUsersAdminOnInsertInput> Function(
                  Iterable<
                      CopyWith_Input_AuthUsersAdminOnInsertInput<
                          Input_AuthUsersAdminOnInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data
              .map((e) => CopyWith_Input_AuthUsersAdminOnInsertInput(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AuthUsersAdminOnOnConflict.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnArrRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersAdminOnInsertInput>? data,
    Input_AuthUsersAdminOnOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> get onConflict =>
      CopyWith_Input_AuthUsersAdminOnOnConflict.stub(_res);
}

class Input_AuthUsersAdminOnAvgOrderBy {
  factory Input_AuthUsersAdminOnAvgOrderBy({Enum_OrderBy? serviceStudyYear}) =>
      Input_AuthUsersAdminOnAvgOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_AuthUsersAdminOnAvgOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnAvgOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<Input_AuthUsersAdminOnAvgOrderBy>
      get copyWith => CopyWith_Input_AuthUsersAdminOnAvgOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnAvgOrderBy ||
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
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {}
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnAvgOrderBy(
    Input_AuthUsersAdminOnAvgOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnAvgOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnAvgOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnAvgOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnAvgOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnAvgOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnAvgOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_AuthUsersAdminOnAvgOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnAvgOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnBoolExp {
  factory Input_AuthUsersAdminOnBoolExp({
    List<Input_AuthUsersAdminOnBoolExp>? $_and,
    Input_AuthUsersAdminOnBoolExp? $_not,
    List<Input_AuthUsersAdminOnBoolExp>? $_or,
    Input_UuidComparisonExp? adminOnArea,
    Input_UuidComparisonExp? adminOnGroup,
    Input_UuidComparisonExp? adminOnService,
    Input_AreasBoolExp? area,
    Input_BooleanComparisonExp? areaAdminOnUsers,
    Input_BooleanComparisonExp? areaAllowEdit,
    Input_ClassesBoolExp? classes,
    Input_GroupsBoolExp? group,
    Input_BooleanComparisonExp? groupAdminOnUsers,
    Input_BooleanComparisonExp? groupAllowEdit,
    Input_UuidComparisonExp? permissionId,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceAdminOnUsers,
    Input_BooleanComparisonExp? serviceAllowEdit,
    Input_BooleanComparisonExp? serviceGender,
    Input_SmallintComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? serviceStudyYearData,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) =>
      Input_AuthUsersAdminOnBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (adminOnArea != null) r'adminOnArea': adminOnArea,
        if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
        if (adminOnService != null) r'adminOnService': adminOnService,
        if (area != null) r'area': area,
        if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
        if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
        if (classes != null) r'classes': classes,
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

  Input_AuthUsersAdminOnBoolExp._(this._$data);

  factory Input_AuthUsersAdminOnBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_AuthUsersAdminOnBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_AuthUsersAdminOnBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$adminOnArea as Map<String, dynamic>));
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$adminOnGroup as Map<String, dynamic>));
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$adminOnService as Map<String, dynamic>));
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasBoolExp.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$areaAdminOnUsers as Map<String, dynamic>));
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = l$areaAllowEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$areaAllowEdit as Map<String, dynamic>));
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$classes as Map<String, dynamic>));
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAdminOnUsers as Map<String, dynamic>));
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = l$groupAllowEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAllowEdit as Map<String, dynamic>));
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$permissionId as Map<String, dynamic>));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAdminOnUsers as Map<String, dynamic>));
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = l$serviceAllowEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAllowEdit as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceGender as Map<String, dynamic>));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>));
    }
    if (data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = data['serviceStudyYearData'];
      result$data['serviceStudyYearData'] = l$serviceStudyYearData == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>));
    }
    return Input_AuthUsersAdminOnBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersAdminOnBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AuthUsersAdminOnBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get $_not =>
      (_$data['_not'] as Input_AuthUsersAdminOnBoolExp?);

  List<Input_AuthUsersAdminOnBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AuthUsersAdminOnBoolExp>?);

  Input_UuidComparisonExp? get adminOnArea =>
      (_$data['adminOnArea'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get adminOnGroup =>
      (_$data['adminOnGroup'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get adminOnService =>
      (_$data['adminOnService'] as Input_UuidComparisonExp?);

  Input_AreasBoolExp? get area => (_$data['area'] as Input_AreasBoolExp?);

  Input_BooleanComparisonExp? get areaAdminOnUsers =>
      (_$data['areaAdminOnUsers'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get areaAllowEdit =>
      (_$data['areaAllowEdit'] as Input_BooleanComparisonExp?);

  Input_ClassesBoolExp? get classes =>
      (_$data['classes'] as Input_ClassesBoolExp?);

  Input_GroupsBoolExp? get group => (_$data['group'] as Input_GroupsBoolExp?);

  Input_BooleanComparisonExp? get groupAdminOnUsers =>
      (_$data['groupAdminOnUsers'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get groupAllowEdit =>
      (_$data['groupAllowEdit'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get permissionId =>
      (_$data['permissionId'] as Input_UuidComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_BooleanComparisonExp? get serviceAdminOnUsers =>
      (_$data['serviceAdminOnUsers'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceAllowEdit =>
      (_$data['serviceAllowEdit'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceGender =>
      (_$data['serviceGender'] as Input_BooleanComparisonExp?);

  Input_SmallintComparisonExp? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_SmallintComparisonExp?);

  Input_StudyYearsBoolExp? get serviceStudyYearData =>
      (_$data['serviceStudyYearData'] as Input_StudyYearsBoolExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

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
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea?.toJson();
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup?.toJson();
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService?.toJson();
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit?.toJson();
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender?.toJson();
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear?.toJson();
    }
    if (_$data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = serviceStudyYearData;
      result$data['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnBoolExp<Input_AuthUsersAdminOnBoolExp>
      get copyWith => CopyWith_Input_AuthUsersAdminOnBoolExp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnBoolExp ||
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminOnArea = adminOnArea;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnService = adminOnService;
    final l$area = area;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$areaAllowEdit = areaAllowEdit;
    final l$classes = classes;
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
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('classes') ? l$classes : const {},
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

abstract class CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnBoolExp(
    Input_AuthUsersAdminOnBoolExp instance,
    TRes Function(Input_AuthUsersAdminOnBoolExp) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnBoolExp;

  factory CopyWith_Input_AuthUsersAdminOnBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnBoolExp;

  TRes call({
    List<Input_AuthUsersAdminOnBoolExp>? $_and,
    Input_AuthUsersAdminOnBoolExp? $_not,
    List<Input_AuthUsersAdminOnBoolExp>? $_or,
    Input_UuidComparisonExp? adminOnArea,
    Input_UuidComparisonExp? adminOnGroup,
    Input_UuidComparisonExp? adminOnService,
    Input_AreasBoolExp? area,
    Input_BooleanComparisonExp? areaAdminOnUsers,
    Input_BooleanComparisonExp? areaAllowEdit,
    Input_ClassesBoolExp? classes,
    Input_GroupsBoolExp? group,
    Input_BooleanComparisonExp? groupAdminOnUsers,
    Input_BooleanComparisonExp? groupAllowEdit,
    Input_UuidComparisonExp? permissionId,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceAdminOnUsers,
    Input_BooleanComparisonExp? serviceAllowEdit,
    Input_BooleanComparisonExp? serviceGender,
    Input_SmallintComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? serviceStudyYearData,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
      Iterable<Input_AuthUsersAdminOnBoolExp>? Function(
              Iterable<
                  CopyWith_Input_AuthUsersAdminOnBoolExp<
                      Input_AuthUsersAdminOnBoolExp>>?)
          _fn);
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_AuthUsersAdminOnBoolExp>? Function(
              Iterable<
                  CopyWith_Input_AuthUsersAdminOnBoolExp<
                      Input_AuthUsersAdminOnBoolExp>>?)
          _fn);
  CopyWith_Input_UuidComparisonExp<TRes> get adminOnArea;
  CopyWith_Input_UuidComparisonExp<TRes> get adminOnGroup;
  CopyWith_Input_UuidComparisonExp<TRes> get adminOnService;
  CopyWith_Input_AreasBoolExp<TRes> get area;
  CopyWith_Input_BooleanComparisonExp<TRes> get areaAdminOnUsers;
  CopyWith_Input_BooleanComparisonExp<TRes> get areaAllowEdit;
  CopyWith_Input_ClassesBoolExp<TRes> get classes;
  CopyWith_Input_GroupsBoolExp<TRes> get group;
  CopyWith_Input_BooleanComparisonExp<TRes> get groupAdminOnUsers;
  CopyWith_Input_BooleanComparisonExp<TRes> get groupAllowEdit;
  CopyWith_Input_UuidComparisonExp<TRes> get permissionId;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceAdminOnUsers;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceAllowEdit;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender;
  CopyWith_Input_SmallintComparisonExp<TRes> get serviceStudyYear;
  CopyWith_Input_StudyYearsBoolExp<TRes> get serviceStudyYearData;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_AuthUsersAdminOnBoolExp<TRes>
    implements CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnBoolExp(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnBoolExp _instance;

  final TRes Function(Input_AuthUsersAdminOnBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? area = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? classes = _undefined,
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
  }) =>
      _then(Input_AuthUsersAdminOnBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_AuthUsersAdminOnBoolExp>?),
        if ($_not != _undefined)
          '_not': ($_not as Input_AuthUsersAdminOnBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_AuthUsersAdminOnBoolExp>?),
        if (adminOnArea != _undefined)
          'adminOnArea': (adminOnArea as Input_UuidComparisonExp?),
        if (adminOnGroup != _undefined)
          'adminOnGroup': (adminOnGroup as Input_UuidComparisonExp?),
        if (adminOnService != _undefined)
          'adminOnService': (adminOnService as Input_UuidComparisonExp?),
        if (area != _undefined) 'area': (area as Input_AreasBoolExp?),
        if (areaAdminOnUsers != _undefined)
          'areaAdminOnUsers': (areaAdminOnUsers as Input_BooleanComparisonExp?),
        if (areaAllowEdit != _undefined)
          'areaAllowEdit': (areaAllowEdit as Input_BooleanComparisonExp?),
        if (classes != _undefined)
          'classes': (classes as Input_ClassesBoolExp?),
        if (group != _undefined) 'group': (group as Input_GroupsBoolExp?),
        if (groupAdminOnUsers != _undefined)
          'groupAdminOnUsers':
              (groupAdminOnUsers as Input_BooleanComparisonExp?),
        if (groupAllowEdit != _undefined)
          'groupAllowEdit': (groupAllowEdit as Input_BooleanComparisonExp?),
        if (permissionId != _undefined)
          'permissionId': (permissionId as Input_UuidComparisonExp?),
        if (service != _undefined)
          'service': (service as Input_ServicesBoolExp?),
        if (serviceAdminOnUsers != _undefined)
          'serviceAdminOnUsers':
              (serviceAdminOnUsers as Input_BooleanComparisonExp?),
        if (serviceAllowEdit != _undefined)
          'serviceAllowEdit': (serviceAllowEdit as Input_BooleanComparisonExp?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as Input_BooleanComparisonExp?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear':
              (serviceStudyYear as Input_SmallintComparisonExp?),
        if (serviceStudyYearData != _undefined)
          'serviceStudyYearData':
              (serviceStudyYearData as Input_StudyYearsBoolExp?),
        if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
        if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
      }));

  TRes $_and(
          Iterable<Input_AuthUsersAdminOnBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_AuthUsersAdminOnBoolExp<
                          Input_AuthUsersAdminOnBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and
              ?.map((e) => CopyWith_Input_AuthUsersAdminOnBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_AuthUsersAdminOnBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_AuthUsersAdminOnBoolExp<
                          Input_AuthUsersAdminOnBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(
              _instance.$_or?.map((e) => CopyWith_Input_AuthUsersAdminOnBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_UuidComparisonExp<TRes> get adminOnArea {
    final local$adminOnArea = _instance.adminOnArea;
    return local$adminOnArea == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$adminOnArea, (e) => call(adminOnArea: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get adminOnGroup {
    final local$adminOnGroup = _instance.adminOnGroup;
    return local$adminOnGroup == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$adminOnGroup, (e) => call(adminOnGroup: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get adminOnService {
    final local$adminOnService = _instance.adminOnService;
    return local$adminOnService == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$adminOnService, (e) => call(adminOnService: e));
  }

  CopyWith_Input_AreasBoolExp<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasBoolExp(local$area, (e) => call(area: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get areaAdminOnUsers {
    final local$areaAdminOnUsers = _instance.areaAdminOnUsers;
    return local$areaAdminOnUsers == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$areaAdminOnUsers, (e) => call(areaAdminOnUsers: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get areaAllowEdit {
    final local$areaAllowEdit = _instance.areaAllowEdit;
    return local$areaAllowEdit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$areaAllowEdit, (e) => call(areaAllowEdit: e));
  }

  CopyWith_Input_ClassesBoolExp<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$classes, (e) => call(classes: e));
  }

  CopyWith_Input_GroupsBoolExp<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$group, (e) => call(group: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get groupAdminOnUsers {
    final local$groupAdminOnUsers = _instance.groupAdminOnUsers;
    return local$groupAdminOnUsers == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$groupAdminOnUsers, (e) => call(groupAdminOnUsers: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get groupAllowEdit {
    final local$groupAllowEdit = _instance.groupAllowEdit;
    return local$groupAllowEdit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$groupAllowEdit, (e) => call(groupAllowEdit: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get permissionId {
    final local$permissionId = _instance.permissionId;
    return local$permissionId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$permissionId, (e) => call(permissionId: e));
  }

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service, (e) => call(service: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceAdminOnUsers {
    final local$serviceAdminOnUsers = _instance.serviceAdminOnUsers;
    return local$serviceAdminOnUsers == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$serviceAdminOnUsers, (e) => call(serviceAdminOnUsers: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceAllowEdit {
    final local$serviceAllowEdit = _instance.serviceAllowEdit;
    return local$serviceAllowEdit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$serviceAllowEdit, (e) => call(serviceAllowEdit: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$serviceGender, (e) => call(serviceGender: e));
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$serviceStudyYear, (e) => call(serviceStudyYear: e));
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnBoolExp<TRes>
    implements CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersAdminOnBoolExp>? $_and,
    Input_AuthUsersAdminOnBoolExp? $_not,
    List<Input_AuthUsersAdminOnBoolExp>? $_or,
    Input_UuidComparisonExp? adminOnArea,
    Input_UuidComparisonExp? adminOnGroup,
    Input_UuidComparisonExp? adminOnService,
    Input_AreasBoolExp? area,
    Input_BooleanComparisonExp? areaAdminOnUsers,
    Input_BooleanComparisonExp? areaAllowEdit,
    Input_ClassesBoolExp? classes,
    Input_GroupsBoolExp? group,
    Input_BooleanComparisonExp? groupAdminOnUsers,
    Input_BooleanComparisonExp? groupAllowEdit,
    Input_UuidComparisonExp? permissionId,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceAdminOnUsers,
    Input_BooleanComparisonExp? serviceAllowEdit,
    Input_BooleanComparisonExp? serviceGender,
    Input_SmallintComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? serviceStudyYearData,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get $_not =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get adminOnArea =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get adminOnGroup =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get adminOnService =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AreasBoolExp<TRes> get area =>
      CopyWith_Input_AreasBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get areaAdminOnUsers =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get areaAllowEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_ClassesBoolExp<TRes> get classes =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get group =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get groupAdminOnUsers =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get groupAllowEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get permissionId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceAdminOnUsers =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceAllowEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get serviceStudyYear =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get serviceStudyYearData =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_AuthUsersAdminOnInsertInput {
  factory Input_AuthUsersAdminOnInsertInput({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    Input_AreasObjRelInsertInput? area,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    Input_ClassesArrRelInsertInput? classes,
    Input_GroupsObjRelInsertInput? group,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceGender,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? serviceStudyYearData,
    UuidValue? uid,
  }) =>
      Input_AuthUsersAdminOnInsertInput._({
        if (adminOnArea != null) r'adminOnArea': adminOnArea,
        if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
        if (adminOnService != null) r'adminOnService': adminOnService,
        if (area != null) r'area': area,
        if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
        if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
        if (classes != null) r'classes': classes,
        if (group != null) r'group': group,
        if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
        if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
        if (service != null) r'service': service,
        if (serviceAdminOnUsers != null)
          r'serviceAdminOnUsers': serviceAdminOnUsers,
        if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (serviceStudyYearData != null)
          r'serviceStudyYearData': serviceStudyYearData,
        if (uid != null) r'uid': uid,
      });

  Input_AuthUsersAdminOnInsertInput._(this._$data);

  factory Input_AuthUsersAdminOnInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] =
          l$adminOnArea == null ? null : stringToUuid(l$adminOnArea);
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] =
          l$adminOnGroup == null ? null : stringToUuid(l$adminOnGroup);
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] =
          l$adminOnService == null ? null : stringToUuid(l$adminOnService);
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasObjRelInsertInput.fromJson(
              (l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = (l$areaAdminOnUsers as bool?);
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = (l$areaAllowEdit as bool?);
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesArrRelInsertInput.fromJson(
              (l$classes as Map<String, dynamic>));
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsObjRelInsertInput.fromJson(
              (l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = (l$groupAdminOnUsers as bool?);
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = (l$groupAllowEdit as bool?);
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>));
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
    if (data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = data['serviceStudyYearData'];
      result$data['serviceStudyYearData'] = l$serviceStudyYearData == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    return Input_AuthUsersAdminOnInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get adminOnArea => (_$data['adminOnArea'] as UuidValue?);

  UuidValue? get adminOnGroup => (_$data['adminOnGroup'] as UuidValue?);

  UuidValue? get adminOnService => (_$data['adminOnService'] as UuidValue?);

  Input_AreasObjRelInsertInput? get area =>
      (_$data['area'] as Input_AreasObjRelInsertInput?);

  bool? get areaAdminOnUsers => (_$data['areaAdminOnUsers'] as bool?);

  bool? get areaAllowEdit => (_$data['areaAllowEdit'] as bool?);

  Input_ClassesArrRelInsertInput? get classes =>
      (_$data['classes'] as Input_ClassesArrRelInsertInput?);

  Input_GroupsObjRelInsertInput? get group =>
      (_$data['group'] as Input_GroupsObjRelInsertInput?);

  bool? get groupAdminOnUsers => (_$data['groupAdminOnUsers'] as bool?);

  bool? get groupAllowEdit => (_$data['groupAllowEdit'] as bool?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  bool? get serviceAdminOnUsers => (_$data['serviceAdminOnUsers'] as bool?);

  bool? get serviceAllowEdit => (_$data['serviceAllowEdit'] as bool?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Input_StudyYearsObjRelInsertInput? get serviceStudyYearData =>
      (_$data['serviceStudyYearData'] as Input_StudyYearsObjRelInsertInput?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] =
          l$adminOnArea == null ? null : uuidToString(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] =
          l$adminOnGroup == null ? null : uuidToString(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] =
          l$adminOnService == null ? null : uuidToString(l$adminOnService);
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers;
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit;
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers;
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit;
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
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
    if (_$data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = serviceStudyYearData;
      result$data['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnInsertInput<Input_AuthUsersAdminOnInsertInput>
      get copyWith => CopyWith_Input_AuthUsersAdminOnInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnInsertInput ||
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
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
    final l$classes = classes;
    final l$group = group;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$service = service;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
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
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnInsertInput<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnInsertInput(
    Input_AuthUsersAdminOnInsertInput instance,
    TRes Function(Input_AuthUsersAdminOnInsertInput) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnInsertInput;

  factory CopyWith_Input_AuthUsersAdminOnInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnInsertInput;

  TRes call({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    Input_AreasObjRelInsertInput? area,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    Input_ClassesArrRelInsertInput? classes,
    Input_GroupsObjRelInsertInput? group,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceGender,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? serviceStudyYearData,
    UuidValue? uid,
  });
  CopyWith_Input_AreasObjRelInsertInput<TRes> get area;
  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes;
  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get serviceStudyYearData;
}

class _CopyWithImpl_Input_AuthUsersAdminOnInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnInsertInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnInsertInput(
    this._instance,
    this._then,
  );

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
    Object? classes = _undefined,
    Object? group = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? service = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? uid = _undefined,
  }) =>
      _then(Input_AuthUsersAdminOnInsertInput._({
        ..._instance._$data,
        if (adminOnArea != _undefined)
          'adminOnArea': (adminOnArea as UuidValue?),
        if (adminOnGroup != _undefined)
          'adminOnGroup': (adminOnGroup as UuidValue?),
        if (adminOnService != _undefined)
          'adminOnService': (adminOnService as UuidValue?),
        if (area != _undefined) 'area': (area as Input_AreasObjRelInsertInput?),
        if (areaAdminOnUsers != _undefined)
          'areaAdminOnUsers': (areaAdminOnUsers as bool?),
        if (areaAllowEdit != _undefined)
          'areaAllowEdit': (areaAllowEdit as bool?),
        if (classes != _undefined)
          'classes': (classes as Input_ClassesArrRelInsertInput?),
        if (group != _undefined)
          'group': (group as Input_GroupsObjRelInsertInput?),
        if (groupAdminOnUsers != _undefined)
          'groupAdminOnUsers': (groupAdminOnUsers as bool?),
        if (groupAllowEdit != _undefined)
          'groupAllowEdit': (groupAllowEdit as bool?),
        if (service != _undefined)
          'service': (service as Input_ServicesObjRelInsertInput?),
        if (serviceAdminOnUsers != _undefined)
          'serviceAdminOnUsers': (serviceAdminOnUsers as bool?),
        if (serviceAllowEdit != _undefined)
          'serviceAllowEdit': (serviceAllowEdit as bool?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as bool?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as int?),
        if (serviceStudyYearData != _undefined)
          'serviceStudyYearData':
              (serviceStudyYearData as Input_StudyYearsObjRelInsertInput?),
        if (uid != _undefined) 'uid': (uid as UuidValue?),
      }));

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasObjRelInsertInput(
            local$area, (e) => call(area: e));
  }

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ClassesArrRelInsertInput(
            local$classes, (e) => call(classes: e));
  }

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group, (e) => call(group: e));
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service, (e) => call(service: e));
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
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
    Input_ClassesArrRelInsertInput? classes,
    Input_GroupsObjRelInsertInput? group,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceGender,
    int? serviceStudyYear,
    Input_StudyYearsObjRelInsertInput? serviceStudyYearData,
    UuidValue? uid,
  }) =>
      _res;

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
}

class Input_AuthUsersAdminOnMaxOrderBy {
  factory Input_AuthUsersAdminOnMaxOrderBy({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  }) =>
      Input_AuthUsersAdminOnMaxOrderBy._({
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
      result$data['uid'] =
          l$uid == null ? null : fromJson_Enum_OrderBy((l$uid as String));
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
      result$data['adminOnArea'] =
          l$adminOnArea == null ? null : toJson_Enum_OrderBy(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] =
          l$adminOnGroup == null ? null : toJson_Enum_OrderBy(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnService);
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] =
          l$permissionId == null ? null : toJson_Enum_OrderBy(l$permissionId);
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
      get copyWith => CopyWith_Input_AuthUsersAdminOnMaxOrderBy(
            this,
            (i) => i,
          );

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
  _CopyWithImpl_Input_AuthUsersAdminOnMaxOrderBy(
    this._instance,
    this._then,
  );

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
  }) =>
      _then(Input_AuthUsersAdminOnMaxOrderBy._({
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
      }));
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
  }) =>
      _res;
}

class Input_AuthUsersAdminOnMinOrderBy {
  factory Input_AuthUsersAdminOnMinOrderBy({
    Enum_OrderBy? adminOnArea,
    Enum_OrderBy? adminOnGroup,
    Enum_OrderBy? adminOnService,
    Enum_OrderBy? permissionId,
    Enum_OrderBy? serviceStudyYear,
    Enum_OrderBy? uid,
  }) =>
      Input_AuthUsersAdminOnMinOrderBy._({
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
      result$data['uid'] =
          l$uid == null ? null : fromJson_Enum_OrderBy((l$uid as String));
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
      result$data['adminOnArea'] =
          l$adminOnArea == null ? null : toJson_Enum_OrderBy(l$adminOnArea);
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] =
          l$adminOnGroup == null ? null : toJson_Enum_OrderBy(l$adminOnGroup);
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : toJson_Enum_OrderBy(l$adminOnService);
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] =
          l$permissionId == null ? null : toJson_Enum_OrderBy(l$permissionId);
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
      get copyWith => CopyWith_Input_AuthUsersAdminOnMinOrderBy(
            this,
            (i) => i,
          );

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
  _CopyWithImpl_Input_AuthUsersAdminOnMinOrderBy(
    this._instance,
    this._then,
  );

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
  }) =>
      _then(Input_AuthUsersAdminOnMinOrderBy._({
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
      }));
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
  }) =>
      _res;
}

class Input_AuthUsersAdminOnOnConflict {
  factory Input_AuthUsersAdminOnOnConflict({
    required Enum_AuthUsersAdminOnConstraint constraint,
    List<Enum_AuthUsersAdminOnUpdateColumn>? updateColumns,
    Input_AuthUsersAdminOnBoolExp? where,
  }) =>
      Input_AuthUsersAdminOnOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_AuthUsersAdminOnOnConflict._(this._$data);

  factory Input_AuthUsersAdminOnOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_AuthUsersAdminOnConstraint((l$constraint as String));
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
              (l$where as Map<String, dynamic>));
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
    result$data['constraint'] =
        toJson_Enum_AuthUsersAdminOnConstraint(l$constraint);
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
      get copyWith => CopyWith_Input_AuthUsersAdminOnOnConflict(
            this,
            (i) => i,
          );

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
