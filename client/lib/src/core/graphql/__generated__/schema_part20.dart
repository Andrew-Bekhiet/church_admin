// Part 20 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  factory CopyWith_Input_GroupsArrRelInsertInput(
    Input_GroupsArrRelInsertInput instance,
    TRes Function(Input_GroupsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_GroupsArrRelInsertInput;

  factory CopyWith_Input_GroupsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsArrRelInsertInput;

  TRes call({
    List<Input_GroupsInsertInput>? data,
    Input_GroupsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_GroupsInsertInput> Function(
      Iterable<CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_GroupsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_GroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_GroupsArrRelInsertInput(this._instance, this._then);

  final Input_GroupsArrRelInsertInput _instance;

  final TRes Function(Input_GroupsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_GroupsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_GroupsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_GroupsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_GroupsInsertInput> Function(
      Iterable<CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_GroupsInsertInput(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_GroupsOnConflict.stub(_then(_instance))
        : CopyWith_Input_GroupsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_GroupsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_GroupsInsertInput>? data,
    Input_GroupsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict =>
      CopyWith_Input_GroupsOnConflict.stub(_res);
}

class Input_GroupsAvgOrderBy {
  factory Input_GroupsAvgOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsAvgOrderBy._({if (color != null) r'color': color});

  Input_GroupsAvgOrderBy._(this._$data);

  factory Input_GroupsAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_GroupsAvgOrderBy<Input_GroupsAvgOrderBy> get copyWith =>
      CopyWith_Input_GroupsAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsAvgOrderBy || runtimeType != other.runtimeType) {
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
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsAvgOrderBy<TRes> {
  factory CopyWith_Input_GroupsAvgOrderBy(
    Input_GroupsAvgOrderBy instance,
    TRes Function(Input_GroupsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsAvgOrderBy;

  factory CopyWith_Input_GroupsAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAvgOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsAvgOrderBy<TRes>
    implements CopyWith_Input_GroupsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsAvgOrderBy(this._instance, this._then);

  final Input_GroupsAvgOrderBy _instance;

  final TRes Function(Input_GroupsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsAvgOrderBy<TRes>
    implements CopyWith_Input_GroupsAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsBoolExp {
  factory Input_GroupsBoolExp({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_DaterangeComparisonExp? validity,
  }) => Input_GroupsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (attendanceDaysConstraints != null)
      r'attendanceDaysConstraints': attendanceDaysConstraints,
    if (attendanceDaysConstraintsAggregate != null)
      r'attendanceDaysConstraintsAggregate': attendanceDaysConstraintsAggregate,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistroy != null) r'editHistroy': editHistroy,
    if (editHistroyAggregate != null)
      r'editHistroyAggregate': editHistroyAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsBoolExp._(this._$data);

  factory Input_GroupsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$adminUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = data['attendanceDaysConstraints'];
      result$data['attendanceDaysConstraints'] =
          l$attendanceDaysConstraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$attendanceDaysConstraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          data['attendanceDaysConstraintsAggregate'];
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.fromJson(
              (l$attendanceDaysConstraintsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateBoolExp.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
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
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistroy')) {
      final l$editHistroy = data['editHistroy'];
      result$data['editHistroy'] = l$editHistroy == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistroy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = data['editHistroyAggregate'];
      result$data['editHistroyAggregate'] = l$editHistroyAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistroyAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
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
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsGroupsBoolExp.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = l$validity == null
          ? null
          : Input_DaterangeComparisonExp.fromJson(
              (l$validity as Map<String, dynamic>),
            );
    }
    return Input_GroupsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_GroupsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_GroupsBoolExp>?);

  Input_GroupsBoolExp? get $_not => (_$data['_not'] as Input_GroupsBoolExp?);

  List<Input_GroupsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_GroupsBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_HistoryAttendanceDaysConstraintsBoolExp?
  get attendanceDaysConstraints =>
      (_$data['attendanceDaysConstraints']
          as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
  get attendanceDaysConstraintsAggregate =>
      (_$data['attendanceDaysConstraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistroy =>
      (_$data['editHistroy'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistroyAggregate =>
      (_$data['editHistroyAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsGroupsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsGroupsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_DaterangeComparisonExp? get validity =>
      (_$data['validity'] as Input_DaterangeComparisonExp?);

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
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = attendanceDaysConstraints;
      result$data['attendanceDaysConstraints'] = l$attendanceDaysConstraints
          ?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          attendanceDaysConstraintsAggregate;
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate?.toJson();
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('editHistroy')) {
      final l$editHistroy = editHistroy;
      result$data['editHistroy'] = l$editHistroy?.toJson();
    }
    if (_$data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = editHistroyAggregate;
      result$data['editHistroyAggregate'] = l$editHistroyAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp> get copyWith =>
      CopyWith_Input_GroupsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsBoolExp || runtimeType != other.runtimeType) {
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
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
      return false;
    }
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final lOther$attendanceDaysConstraints = other.attendanceDaysConstraints;
    if (_$data.containsKey('attendanceDaysConstraints') !=
        other._$data.containsKey('attendanceDaysConstraints')) {
      return false;
    }
    if (l$attendanceDaysConstraints != lOther$attendanceDaysConstraints) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (_$data.containsKey('attendanceDaysConstraintsAggregate') !=
        other._$data.containsKey('attendanceDaysConstraintsAggregate')) {
      return false;
    }
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (_$data.containsKey('attendanceHistory') !=
        other._$data.containsKey('attendanceHistory')) {
      return false;
    }
    if (l$attendanceHistory != lOther$attendanceHistory) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (_$data.containsKey('attendanceHistoryAggregate') !=
        other._$data.containsKey('attendanceHistoryAggregate')) {
      return false;
    }
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$editHistroy = editHistroy;
    final lOther$editHistroy = other.editHistroy;
    if (_$data.containsKey('editHistroy') !=
        other._$data.containsKey('editHistroy')) {
      return false;
    }
    if (l$editHistroy != lOther$editHistroy) {
      return false;
    }
    final l$editHistroyAggregate = editHistroyAggregate;
    final lOther$editHistroyAggregate = other.editHistroyAggregate;
    if (_$data.containsKey('editHistroyAggregate') !=
        other._$data.containsKey('editHistroyAggregate')) {
      return false;
    }
    if (l$editHistroyAggregate != lOther$editHistroyAggregate) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminUsers = adminUsers;
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistroy = editHistroy;
    final l$editHistroyAggregate = editHistroyAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$validity = validity;
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
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('attendanceDaysConstraints')
          ? l$attendanceDaysConstraints
          : const {},
      _$data.containsKey('attendanceDaysConstraintsAggregate')
          ? l$attendanceDaysConstraintsAggregate
          : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistroy') ? l$editHistroy : const {},
      _$data.containsKey('editHistroyAggregate')
          ? l$editHistroyAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsBoolExp<TRes> {
  factory CopyWith_Input_GroupsBoolExp(
    Input_GroupsBoolExp instance,
    TRes Function(Input_GroupsBoolExp) then,
  ) = _CopyWithImpl_Input_GroupsBoolExp;

  factory CopyWith_Input_GroupsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsBoolExp;

  TRes call({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_DaterangeComparisonExp? validity,
  });
  TRes $_and(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_GroupsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers;
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate;
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistroy;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistroyAggregate;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsGroupsBoolExp<TRes> get persons;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
  CopyWith_Input_DaterangeComparisonExp<TRes> get validity;
}

class _CopyWithImpl_Input_GroupsBoolExp<TRes>
    implements CopyWith_Input_GroupsBoolExp<TRes> {
  _CopyWithImpl_Input_GroupsBoolExp(this._instance, this._then);

  final Input_GroupsBoolExp _instance;

  final TRes Function(Input_GroupsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminUsers = _undefined,
    Object? attendanceDaysConstraints = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistroy = _undefined,
    Object? editHistroyAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_GroupsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_GroupsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_GroupsBoolExp>?),
      if (adminUsers != _undefined)
        'adminUsers': (adminUsers as Input_AuthUsersAdminOnBoolExp?),
      if (attendanceDaysConstraints != _undefined)
        'attendanceDaysConstraints':
            (attendanceDaysConstraints
                as Input_HistoryAttendanceDaysConstraintsBoolExp?),
      if (attendanceDaysConstraintsAggregate != _undefined)
        'attendanceDaysConstraintsAggregate':
            (attendanceDaysConstraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (editHistroy != _undefined)
        'editHistroy': (editHistroy as Input_HistoryEditHistoryBoolExp?),
      if (editHistroyAggregate != _undefined)
        'editHistroyAggregate':
            (editHistroyAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsGroupsBoolExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
      if (validity != _undefined)
        'validity': (validity as Input_DaterangeComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_GroupsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_GroupsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_GroupsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$adminUsers,
            (e) => call(adminUsers: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
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

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistroy {
    final local$editHistroy = _instance.editHistroy;
    return local$editHistroy == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistroy,
            (e) => call(editHistroy: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistroyAggregate {
    final local$editHistroyAggregate = _instance.editHistroyAggregate;
    return local$editHistroyAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistroyAggregate,
            (e) => call(editHistroyAggregate: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
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

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsGroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsBoolExp(
            local$persons,
            (e) => call(persons: e),
          );
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

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }

  CopyWith_Input_DaterangeComparisonExp<TRes> get validity {
    final local$validity = _instance.validity;
    return local$validity == null
        ? CopyWith_Input_DaterangeComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DaterangeComparisonExp(
            local$validity,
            (e) => call(validity: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsBoolExp<TRes>
    implements CopyWith_Input_GroupsBoolExp<TRes> {
  _CopyWithStubImpl_Input_GroupsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_DaterangeComparisonExp? validity,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_GroupsBoolExp<TRes> get $_not =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistroy =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistroyAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsGroupsBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_DaterangeComparisonExp<TRes> get validity =>
      CopyWith_Input_DaterangeComparisonExp.stub(_res);
}

class Input_GroupsIncInput {
  factory Input_GroupsIncInput({int? color}) =>
      Input_GroupsIncInput._({if (color != null) r'color': color});

  Input_GroupsIncInput._(this._$data);

  factory Input_GroupsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_GroupsIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    return result$data;
  }

  CopyWith_Input_GroupsIncInput<Input_GroupsIncInput> get copyWith =>
      CopyWith_Input_GroupsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsIncInput || runtimeType != other.runtimeType) {
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
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsIncInput<TRes> {
  factory CopyWith_Input_GroupsIncInput(
    Input_GroupsIncInput instance,
    TRes Function(Input_GroupsIncInput) then,
  ) = _CopyWithImpl_Input_GroupsIncInput;

  factory CopyWith_Input_GroupsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_GroupsIncInput<TRes>
    implements CopyWith_Input_GroupsIncInput<TRes> {
  _CopyWithImpl_Input_GroupsIncInput(this._instance, this._then);

  final Input_GroupsIncInput _instance;

  final TRes Function(Input_GroupsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsIncInput<TRes>
    implements CopyWith_Input_GroupsIncInput<TRes> {
  _CopyWithStubImpl_Input_GroupsIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_GroupsInsertInput {
  factory Input_GroupsInsertInput({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
    attendanceDaysConstraints,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    int? color,
    String? name,
    Input_PersonsGroupsArrRelInsertInput? persons,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => Input_GroupsInsertInput._({
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (attendanceDaysConstraints != null)
      r'attendanceDaysConstraints': attendanceDaysConstraints,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (color != null) r'color': color,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsInsertInput._(this._$data);

  factory Input_GroupsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnArrRelInsertInput.fromJson(
              (l$adminUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = data['attendanceDaysConstraints'];
      result$data['attendanceDaysConstraints'] =
          l$attendanceDaysConstraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              (l$attendanceDaysConstraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsGroupsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = l$validity == null
          ? null
          : dateRangeFromString(l$validity);
    }
    return Input_GroupsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnArrRelInsertInput? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnArrRelInsertInput?);

  Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
  get attendanceDaysConstraints =>
      (_$data['attendanceDaysConstraints']
          as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?);

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsGroupsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsGroupsArrRelInsertInput?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTimeRange? get validity => (_$data['validity'] as DateTimeRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = attendanceDaysConstraints;
      result$data['attendanceDaysConstraints'] = l$attendanceDaysConstraints
          ?.toJson();
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity == null
          ? null
          : dateRangeToString(l$validity);
    }
    return result$data;
  }

  CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput> get copyWith =>
      CopyWith_Input_GroupsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsInsertInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
      return false;
    }
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final lOther$attendanceDaysConstraints = other.attendanceDaysConstraints;
    if (_$data.containsKey('attendanceDaysConstraints') !=
        other._$data.containsKey('attendanceDaysConstraints')) {
      return false;
    }
    if (l$attendanceDaysConstraints != lOther$attendanceDaysConstraints) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (_$data.containsKey('attendanceHistory') !=
        other._$data.containsKey('attendanceHistory')) {
      return false;
    }
    if (l$attendanceHistory != lOther$attendanceHistory) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$adminUsers = adminUsers;
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final l$attendanceHistory = attendanceHistory;
    final l$color = color;
    final l$name = name;
    final l$persons = persons;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('attendanceDaysConstraints')
          ? l$attendanceDaysConstraints
          : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsInsertInput<TRes> {
  factory CopyWith_Input_GroupsInsertInput(
    Input_GroupsInsertInput instance,
    TRes Function(Input_GroupsInsertInput) then,
  ) = _CopyWithImpl_Input_GroupsInsertInput;

  factory CopyWith_Input_GroupsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsInsertInput;

  TRes call({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
    attendanceDaysConstraints,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    int? color,
    String? name,
    Input_PersonsGroupsArrRelInsertInput? persons,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
    DateTimeRange? validity,
  });
  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers;
  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get attendanceDaysConstraints;
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory;
  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get persons;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
}

class _CopyWithImpl_Input_GroupsInsertInput<TRes>
    implements CopyWith_Input_GroupsInsertInput<TRes> {
  _CopyWithImpl_Input_GroupsInsertInput(this._instance, this._then);

  final Input_GroupsInsertInput _instance;

  final TRes Function(Input_GroupsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminUsers = _undefined,
    Object? attendanceDaysConstraints = _undefined,
    Object? attendanceHistory = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsInsertInput._({
      ..._instance._$data,
      if (adminUsers != _undefined)
        'adminUsers': (adminUsers as Input_AuthUsersAdminOnArrRelInsertInput?),
      if (attendanceDaysConstraints != _undefined)
        'attendanceDaysConstraints':
            (attendanceDaysConstraints
                as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory
                as Input_HistoryAttendanceHistoryArrRelInsertInput?),
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsGroupsArrRelInsertInput?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (validity != _undefined) 'validity': (validity as DateTimeRange?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
            local$adminUsers,
            (e) => call(adminUsers: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
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
}

class _CopyWithStubImpl_Input_GroupsInsertInput<TRes>
    implements CopyWith_Input_GroupsInsertInput<TRes> {
  _CopyWithStubImpl_Input_GroupsInsertInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?
    attendanceDaysConstraints,
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    int? color,
    String? name,
    Input_PersonsGroupsArrRelInsertInput? persons,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
  get attendanceDaysConstraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);
}

class Input_GroupsMaxOrderBy {
  factory Input_GroupsMaxOrderBy({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  }) => Input_GroupsMaxOrderBy._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_GroupsMaxOrderBy._(this._$data);

  factory Input_GroupsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_GroupsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_GroupsMaxOrderBy<Input_GroupsMaxOrderBy> get copyWith =>
      CopyWith_Input_GroupsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsMaxOrderBy || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsMaxOrderBy<TRes> {
  factory CopyWith_Input_GroupsMaxOrderBy(
    Input_GroupsMaxOrderBy instance,
    TRes Function(Input_GroupsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsMaxOrderBy;

  factory CopyWith_Input_GroupsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsMaxOrderBy;

  TRes call({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  });
}

class _CopyWithImpl_Input_GroupsMaxOrderBy<TRes>
    implements CopyWith_Input_GroupsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsMaxOrderBy(this._instance, this._then);

  final Input_GroupsMaxOrderBy _instance;

  final TRes Function(Input_GroupsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_GroupsMaxOrderBy._({
      ..._instance._$data,
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsMaxOrderBy<TRes>
    implements CopyWith_Input_GroupsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  }) => _res;
}

class Input_GroupsMinOrderBy {
  factory Input_GroupsMinOrderBy({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  }) => Input_GroupsMinOrderBy._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_GroupsMinOrderBy._(this._$data);

  factory Input_GroupsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_GroupsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_GroupsMinOrderBy<Input_GroupsMinOrderBy> get copyWith =>
      CopyWith_Input_GroupsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsMinOrderBy || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsMinOrderBy<TRes> {
  factory CopyWith_Input_GroupsMinOrderBy(
    Input_GroupsMinOrderBy instance,
    TRes Function(Input_GroupsMinOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsMinOrderBy;

  factory CopyWith_Input_GroupsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsMinOrderBy;

  TRes call({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  });
}

class _CopyWithImpl_Input_GroupsMinOrderBy<TRes>
    implements CopyWith_Input_GroupsMinOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsMinOrderBy(this._instance, this._then);

  final Input_GroupsMinOrderBy _instance;

  final TRes Function(Input_GroupsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? serviceId = _undefined,
  }) => _then(
    Input_GroupsMinOrderBy._({
      ..._instance._$data,
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsMinOrderBy<TRes>
    implements CopyWith_Input_GroupsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  }) => _res;
}

class Input_GroupsObjRelInsertInput {
  factory Input_GroupsObjRelInsertInput({
    required Input_GroupsInsertInput data,
    Input_GroupsOnConflict? onConflict,
  }) => Input_GroupsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_GroupsObjRelInsertInput._(this._$data);

  factory Input_GroupsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_GroupsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_GroupsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_GroupsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsInsertInput get data =>
      (_$data['data'] as Input_GroupsInsertInput);

  Input_GroupsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_GroupsOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GroupsObjRelInsertInput<Input_GroupsObjRelInsertInput>
  get copyWith => CopyWith_Input_GroupsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsObjRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$onConflict = onConflict;
    final lOther$onConflict = other.onConflict;
    if (_$data.containsKey('onConflict') !=
        other._$data.containsKey('onConflict')) {
      return false;
    }
    if (l$onConflict != lOther$onConflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$onConflict = onConflict;
    return Object.hashAll([
      l$data,
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsObjRelInsertInput<TRes> {
  factory CopyWith_Input_GroupsObjRelInsertInput(
    Input_GroupsObjRelInsertInput instance,
    TRes Function(Input_GroupsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_GroupsObjRelInsertInput;

  factory CopyWith_Input_GroupsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsObjRelInsertInput;

  TRes call({
    Input_GroupsInsertInput? data,
    Input_GroupsOnConflict? onConflict,
  });
  CopyWith_Input_GroupsInsertInput<TRes> get data;
  CopyWith_Input_GroupsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_GroupsObjRelInsertInput<TRes>
    implements CopyWith_Input_GroupsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_GroupsObjRelInsertInput(this._instance, this._then);

  final Input_GroupsObjRelInsertInput _instance;

  final TRes Function(Input_GroupsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_GroupsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_GroupsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_GroupsOnConflict?),
        }),
      );

  CopyWith_Input_GroupsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_GroupsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_GroupsOnConflict.stub(_then(_instance))
        : CopyWith_Input_GroupsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsObjRelInsertInput<TRes>
    implements CopyWith_Input_GroupsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_GroupsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_GroupsInsertInput? data, Input_GroupsOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_GroupsInsertInput<TRes> get data =>
      CopyWith_Input_GroupsInsertInput.stub(_res);

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict =>
      CopyWith_Input_GroupsOnConflict.stub(_res);
}

class Input_GroupsOnConflict {
  factory Input_GroupsOnConflict({
    required Enum_GroupsConstraint constraint,
    List<Enum_GroupsUpdateColumn>? updateColumns,
    Input_GroupsBoolExp? where,
  }) => Input_GroupsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_GroupsOnConflict._(this._$data);

  factory Input_GroupsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_GroupsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_GroupsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_GroupsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_GroupsConstraint get constraint =>
      (_$data['constraint'] as Enum_GroupsConstraint);

  List<Enum_GroupsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_GroupsUpdateColumn>?);

  Input_GroupsBoolExp? get where => (_$data['where'] as Input_GroupsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_GroupsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_GroupsUpdateColumn>)
              .map((e) => toJson_Enum_GroupsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GroupsOnConflict<Input_GroupsOnConflict> get copyWith =>
      CopyWith_Input_GroupsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsOnConflict || runtimeType != other.runtimeType) {
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
