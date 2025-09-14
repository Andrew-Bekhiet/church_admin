// Part 21 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_GroupsOnConflict<TRes> {
  factory CopyWith_Input_GroupsOnConflict(
    Input_GroupsOnConflict instance,
    TRes Function(Input_GroupsOnConflict) then,
  ) = _CopyWithImpl_Input_GroupsOnConflict;

  factory CopyWith_Input_GroupsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsOnConflict;

  TRes call({
    Enum_GroupsConstraint? constraint,
    List<Enum_GroupsUpdateColumn>? updateColumns,
    Input_GroupsBoolExp? where,
  });
  CopyWith_Input_GroupsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_GroupsOnConflict<TRes>
    implements CopyWith_Input_GroupsOnConflict<TRes> {
  _CopyWithImpl_Input_GroupsOnConflict(this._instance, this._then);

  final Input_GroupsOnConflict _instance;

  final TRes Function(Input_GroupsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_GroupsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_GroupsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_GroupsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_GroupsBoolExp?),
    }),
  );

  CopyWith_Input_GroupsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_GroupsOnConflict<TRes>
    implements CopyWith_Input_GroupsOnConflict<TRes> {
  _CopyWithStubImpl_Input_GroupsOnConflict(this._res);

  TRes _res;

  call({
    Enum_GroupsConstraint? constraint,
    List<Enum_GroupsUpdateColumn>? updateColumns,
    Input_GroupsBoolExp? where,
  }) => _res;

  CopyWith_Input_GroupsBoolExp<TRes> get where =>
      CopyWith_Input_GroupsBoolExp.stub(_res);
}

class Input_GroupsOrderBy {
  factory Input_GroupsOrderBy({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistroyAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_PersonsGroupsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? validity,
  }) => Input_GroupsOrderBy._({
    if (adminUsersAggregate != null)
      r'adminUsersAggregate': adminUsersAggregate,
    if (attendanceDaysConstraintsAggregate != null)
      r'attendanceDaysConstraintsAggregate': attendanceDaysConstraintsAggregate,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistroyAggregate != null)
      r'editHistroyAggregate': editHistroyAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsOrderBy._(this._$data);

  factory Input_GroupsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = data['adminUsersAggregate'];
      result$data['adminUsersAggregate'] = l$adminUsersAggregate == null
          ? null
          : Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
              (l$adminUsersAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          data['attendanceDaysConstraintsAggregate'];
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.fromJson(
              (l$attendanceDaysConstraintsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
    }
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
    if (data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = data['editHistroyAggregate'];
      result$data['editHistroyAggregate'] = l$editHistroyAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateOrderBy.fromJson(
              (l$editHistroyAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
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
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsGroupsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesOrderBy.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = l$validity == null
          ? null
          : fromJson_Enum_OrderBy((l$validity as String));
    }
    return Input_GroupsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnAggregateOrderBy? get adminUsersAggregate =>
      (_$data['adminUsersAggregate']
          as Input_AuthUsersAdminOnAggregateOrderBy?);

  Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
  get attendanceDaysConstraintsAggregate =>
      (_$data['attendanceDaysConstraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?);

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistroyAggregate =>
      (_$data['editHistroyAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsGroupsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsGroupsAggregateOrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get validity => (_$data['validity'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = adminUsersAggregate;
      result$data['adminUsersAggregate'] = l$adminUsersAggregate?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          attendanceDaysConstraintsAggregate;
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
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
    if (_$data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = editHistroyAggregate;
      result$data['editHistroyAggregate'] = l$editHistroyAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity == null
          ? null
          : toJson_Enum_OrderBy(l$validity);
    }
    return result$data;
  }

  CopyWith_Input_GroupsOrderBy<Input_GroupsOrderBy> get copyWith =>
      CopyWith_Input_GroupsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminUsersAggregate = adminUsersAggregate;
    final lOther$adminUsersAggregate = other.adminUsersAggregate;
    if (_$data.containsKey('adminUsersAggregate') !=
        other._$data.containsKey('adminUsersAggregate')) {
      return false;
    }
    if (l$adminUsersAggregate != lOther$adminUsersAggregate) {
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
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
    final l$adminUsersAggregate = adminUsersAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistroyAggregate = editHistroyAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('adminUsersAggregate')
          ? l$adminUsersAggregate
          : const {},
      _$data.containsKey('attendanceDaysConstraintsAggregate')
          ? l$attendanceDaysConstraintsAggregate
          : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistroyAggregate')
          ? l$editHistroyAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsOrderBy<TRes> {
  factory CopyWith_Input_GroupsOrderBy(
    Input_GroupsOrderBy instance,
    TRes Function(Input_GroupsOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsOrderBy;

  factory CopyWith_Input_GroupsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsOrderBy;

  TRes call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistroyAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_PersonsGroupsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? validity,
  });
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminUsersAggregate;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate;
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistroyAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> get personsAggregate;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
}

class _CopyWithImpl_Input_GroupsOrderBy<TRes>
    implements CopyWith_Input_GroupsOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsOrderBy(this._instance, this._then);

  final Input_GroupsOrderBy _instance;

  final TRes Function(Input_GroupsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminUsersAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistroyAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsOrderBy._({
      ..._instance._$data,
      if (adminUsersAggregate != _undefined)
        'adminUsersAggregate':
            (adminUsersAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
      if (attendanceDaysConstraintsAggregate != _undefined)
        'attendanceDaysConstraintsAggregate':
            (attendanceDaysConstraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (editHistroyAggregate != _undefined)
        'editHistroyAggregate':
            (editHistroyAggregate as Input_HistoryEditHistoryAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsGroupsAggregateOrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (validity != _undefined) 'validity': (validity as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
  get adminUsersAggregate {
    final local$adminUsersAggregate = _instance.adminUsersAggregate;
    return local$adminUsersAggregate == null
        ? CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
            local$adminUsersAggregate,
            (e) => call(adminUsersAggregate: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistroyAggregate {
    final local$editHistroyAggregate = _instance.editHistroyAggregate;
    return local$editHistroyAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistroyAggregate,
            (e) => call(editHistroyAggregate: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsGroupsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
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
}

class _CopyWithStubImpl_Input_GroupsOrderBy<TRes>
    implements CopyWith_Input_GroupsOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminUsersAggregate,
    Input_HistoryAttendanceDaysConstraintsAggregateOrderBy?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistroyAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_PersonsGroupsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? validity,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
  get adminUsersAggregate =>
      CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy<TRes>
  get attendanceDaysConstraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateOrderBy.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistroyAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_PersonsGroupsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsGroupsAggregateOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);
}

class Input_GroupsPkColumnsInput {
  factory Input_GroupsPkColumnsInput({required UuidValue id}) =>
      Input_GroupsPkColumnsInput._({r'id': id});

  Input_GroupsPkColumnsInput._(this._$data);

  factory Input_GroupsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_GroupsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_GroupsPkColumnsInput<Input_GroupsPkColumnsInput>
  get copyWith => CopyWith_Input_GroupsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Input_GroupsPkColumnsInput<TRes> {
  factory CopyWith_Input_GroupsPkColumnsInput(
    Input_GroupsPkColumnsInput instance,
    TRes Function(Input_GroupsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_GroupsPkColumnsInput;

  factory CopyWith_Input_GroupsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_GroupsPkColumnsInput<TRes>
    implements CopyWith_Input_GroupsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_GroupsPkColumnsInput(this._instance, this._then);

  final Input_GroupsPkColumnsInput _instance;

  final TRes Function(Input_GroupsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_GroupsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsPkColumnsInput<TRes>
    implements CopyWith_Input_GroupsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_GroupsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_GroupsSetInput {
  factory Input_GroupsSetInput({
    int? color,
    String? name,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => Input_GroupsSetInput._({
    if (color != null) r'color': color,
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsSetInput._(this._$data);

  factory Input_GroupsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
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
    return Input_GroupsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTimeRange? get validity => (_$data['validity'] as DateTimeRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
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

  CopyWith_Input_GroupsSetInput<Input_GroupsSetInput> get copyWith =>
      CopyWith_Input_GroupsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsSetInput || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final l$name = name;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsSetInput<TRes> {
  factory CopyWith_Input_GroupsSetInput(
    Input_GroupsSetInput instance,
    TRes Function(Input_GroupsSetInput) then,
  ) = _CopyWithImpl_Input_GroupsSetInput;

  factory CopyWith_Input_GroupsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsSetInput;

  TRes call({
    int? color,
    String? name,
    UuidValue? serviceId,
    DateTimeRange? validity,
  });
}

class _CopyWithImpl_Input_GroupsSetInput<TRes>
    implements CopyWith_Input_GroupsSetInput<TRes> {
  _CopyWithImpl_Input_GroupsSetInput(this._instance, this._then);

  final Input_GroupsSetInput _instance;

  final TRes Function(Input_GroupsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (name != _undefined) 'name': (name as String?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (validity != _undefined) 'validity': (validity as DateTimeRange?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsSetInput<TRes>
    implements CopyWith_Input_GroupsSetInput<TRes> {
  _CopyWithStubImpl_Input_GroupsSetInput(this._res);

  TRes _res;

  call({
    int? color,
    String? name,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => _res;
}

class Input_GroupsStddevOrderBy {
  factory Input_GroupsStddevOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsStddevOrderBy._({if (color != null) r'color': color});

  Input_GroupsStddevOrderBy._(this._$data);

  factory Input_GroupsStddevOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsStddevOrderBy._(result$data);
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

  CopyWith_Input_GroupsStddevOrderBy<Input_GroupsStddevOrderBy> get copyWith =>
      CopyWith_Input_GroupsStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsStddevOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsStddevOrderBy<TRes> {
  factory CopyWith_Input_GroupsStddevOrderBy(
    Input_GroupsStddevOrderBy instance,
    TRes Function(Input_GroupsStddevOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsStddevOrderBy;

  factory CopyWith_Input_GroupsStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsStddevOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsStddevOrderBy<TRes>
    implements CopyWith_Input_GroupsStddevOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsStddevOrderBy(this._instance, this._then);

  final Input_GroupsStddevOrderBy _instance;

  final TRes Function(Input_GroupsStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsStddevOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsStddevOrderBy<TRes>
    implements CopyWith_Input_GroupsStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsStddevPopOrderBy {
  factory Input_GroupsStddevPopOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsStddevPopOrderBy._({if (color != null) r'color': color});

  Input_GroupsStddevPopOrderBy._(this._$data);

  factory Input_GroupsStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsStddevPopOrderBy._(result$data);
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

  CopyWith_Input_GroupsStddevPopOrderBy<Input_GroupsStddevPopOrderBy>
  get copyWith => CopyWith_Input_GroupsStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsStddevPopOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsStddevPopOrderBy<TRes> {
  factory CopyWith_Input_GroupsStddevPopOrderBy(
    Input_GroupsStddevPopOrderBy instance,
    TRes Function(Input_GroupsStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsStddevPopOrderBy;

  factory CopyWith_Input_GroupsStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsStddevPopOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsStddevPopOrderBy<TRes>
    implements CopyWith_Input_GroupsStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsStddevPopOrderBy(this._instance, this._then);

  final Input_GroupsStddevPopOrderBy _instance;

  final TRes Function(Input_GroupsStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsStddevPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsStddevPopOrderBy<TRes>
    implements CopyWith_Input_GroupsStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsStddevSampOrderBy {
  factory Input_GroupsStddevSampOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsStddevSampOrderBy._({if (color != null) r'color': color});

  Input_GroupsStddevSampOrderBy._(this._$data);

  factory Input_GroupsStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsStddevSampOrderBy._(result$data);
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

  CopyWith_Input_GroupsStddevSampOrderBy<Input_GroupsStddevSampOrderBy>
  get copyWith => CopyWith_Input_GroupsStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsStddevSampOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsStddevSampOrderBy<TRes> {
  factory CopyWith_Input_GroupsStddevSampOrderBy(
    Input_GroupsStddevSampOrderBy instance,
    TRes Function(Input_GroupsStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsStddevSampOrderBy;

  factory CopyWith_Input_GroupsStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsStddevSampOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsStddevSampOrderBy<TRes>
    implements CopyWith_Input_GroupsStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsStddevSampOrderBy(this._instance, this._then);

  final Input_GroupsStddevSampOrderBy _instance;

  final TRes Function(Input_GroupsStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsStddevSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsStddevSampOrderBy<TRes>
    implements CopyWith_Input_GroupsStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsStreamCursorInput {
  factory Input_GroupsStreamCursorInput({
    required Input_GroupsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_GroupsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_GroupsStreamCursorInput._(this._$data);

  factory Input_GroupsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_GroupsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_GroupsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_GroupsStreamCursorValueInput);

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

  CopyWith_Input_GroupsStreamCursorInput<Input_GroupsStreamCursorInput>
  get copyWith => CopyWith_Input_GroupsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsStreamCursorInput ||
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

abstract class CopyWith_Input_GroupsStreamCursorInput<TRes> {
  factory CopyWith_Input_GroupsStreamCursorInput(
    Input_GroupsStreamCursorInput instance,
    TRes Function(Input_GroupsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_GroupsStreamCursorInput;

  factory CopyWith_Input_GroupsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsStreamCursorInput;

  TRes call({
    Input_GroupsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_GroupsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_GroupsStreamCursorInput<TRes>
    implements CopyWith_Input_GroupsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_GroupsStreamCursorInput(this._instance, this._then);

  final Input_GroupsStreamCursorInput _instance;

  final TRes Function(Input_GroupsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_GroupsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_GroupsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_GroupsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_GroupsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_GroupsStreamCursorInput<TRes>
    implements CopyWith_Input_GroupsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_GroupsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_GroupsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_GroupsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_GroupsStreamCursorValueInput.stub(_res);
}

class Input_GroupsStreamCursorValueInput {
  factory Input_GroupsStreamCursorValueInput({
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => Input_GroupsStreamCursorValueInput._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsStreamCursorValueInput._(this._$data);

  factory Input_GroupsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt);
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
    return Input_GroupsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTimeRange? get validity => (_$data['validity'] as DateTimeRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
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

  CopyWith_Input_GroupsStreamCursorValueInput<
    Input_GroupsStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_GroupsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_GroupsStreamCursorValueInput(
    Input_GroupsStreamCursorValueInput instance,
    TRes Function(Input_GroupsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_GroupsStreamCursorValueInput;

  factory CopyWith_Input_GroupsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsStreamCursorValueInput;

  TRes call({
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? serviceId,
    DateTimeRange? validity,
  });
}

class _CopyWithImpl_Input_GroupsStreamCursorValueInput<TRes>
    implements CopyWith_Input_GroupsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_GroupsStreamCursorValueInput(this._instance, this._then);

  final Input_GroupsStreamCursorValueInput _instance;

  final TRes Function(Input_GroupsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsStreamCursorValueInput._({
      ..._instance._$data,
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (color != _undefined) 'color': (color as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (validity != _undefined) 'validity': (validity as DateTimeRange?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsStreamCursorValueInput<TRes>
    implements CopyWith_Input_GroupsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_GroupsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? blurhash,
    int? color,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => _res;
}

class Input_GroupsSumOrderBy {
  factory Input_GroupsSumOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsSumOrderBy._({if (color != null) r'color': color});

  Input_GroupsSumOrderBy._(this._$data);

  factory Input_GroupsSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsSumOrderBy._(result$data);
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

  CopyWith_Input_GroupsSumOrderBy<Input_GroupsSumOrderBy> get copyWith =>
      CopyWith_Input_GroupsSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsSumOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsSumOrderBy<TRes> {
  factory CopyWith_Input_GroupsSumOrderBy(
    Input_GroupsSumOrderBy instance,
    TRes Function(Input_GroupsSumOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsSumOrderBy;

  factory CopyWith_Input_GroupsSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsSumOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsSumOrderBy<TRes>
    implements CopyWith_Input_GroupsSumOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsSumOrderBy(this._instance, this._then);

  final Input_GroupsSumOrderBy _instance;

  final TRes Function(Input_GroupsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsSumOrderBy<TRes>
    implements CopyWith_Input_GroupsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsUpdates {
  factory Input_GroupsUpdates({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    required Input_GroupsBoolExp where,
  }) => Input_GroupsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_GroupsUpdates._(this._$data);

  factory Input_GroupsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_GroupsIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_GroupsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_GroupsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_GroupsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsIncInput? get $_inc => (_$data['_inc'] as Input_GroupsIncInput?);

  Input_GroupsSetInput? get $_set => (_$data['_set'] as Input_GroupsSetInput?);

  Input_GroupsBoolExp get where => (_$data['where'] as Input_GroupsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_GroupsUpdates<Input_GroupsUpdates> get copyWith =>
      CopyWith_Input_GroupsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsUpdates || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_GroupsUpdates<TRes> {
  factory CopyWith_Input_GroupsUpdates(
    Input_GroupsUpdates instance,
    TRes Function(Input_GroupsUpdates) then,
  ) = _CopyWithImpl_Input_GroupsUpdates;

  factory CopyWith_Input_GroupsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsUpdates;

  TRes call({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    Input_GroupsBoolExp? where,
  });
  CopyWith_Input_GroupsIncInput<TRes> get $_inc;
  CopyWith_Input_GroupsSetInput<TRes> get $_set;
  CopyWith_Input_GroupsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_GroupsUpdates<TRes>
    implements CopyWith_Input_GroupsUpdates<TRes> {
  _CopyWithImpl_Input_GroupsUpdates(this._instance, this._then);

  final Input_GroupsUpdates _instance;

  final TRes Function(Input_GroupsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_GroupsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_GroupsIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_GroupsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_GroupsBoolExp),
    }),
  );

  CopyWith_Input_GroupsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_GroupsIncInput.stub(_then(_instance))
        : CopyWith_Input_GroupsIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_GroupsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_GroupsSetInput.stub(_then(_instance))
        : CopyWith_Input_GroupsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_GroupsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_GroupsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_GroupsUpdates<TRes>
    implements CopyWith_Input_GroupsUpdates<TRes> {
  _CopyWithStubImpl_Input_GroupsUpdates(this._res);

  TRes _res;

  call({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    Input_GroupsBoolExp? where,
  }) => _res;

  CopyWith_Input_GroupsIncInput<TRes> get $_inc =>
      CopyWith_Input_GroupsIncInput.stub(_res);

  CopyWith_Input_GroupsSetInput<TRes> get $_set =>
      CopyWith_Input_GroupsSetInput.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get where =>
      CopyWith_Input_GroupsBoolExp.stub(_res);
}

class Input_GroupsVarPopOrderBy {
  factory Input_GroupsVarPopOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarPopOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarPopOrderBy._(this._$data);

  factory Input_GroupsVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarPopOrderBy._(result$data);
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

  CopyWith_Input_GroupsVarPopOrderBy<Input_GroupsVarPopOrderBy> get copyWith =>
      CopyWith_Input_GroupsVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarPopOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarPopOrderBy(
    Input_GroupsVarPopOrderBy instance,
    TRes Function(Input_GroupsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarPopOrderBy;

  factory CopyWith_Input_GroupsVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarPopOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarPopOrderBy<TRes>
    implements CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarPopOrderBy(this._instance, this._then);

  final Input_GroupsVarPopOrderBy _instance;

  final TRes Function(Input_GroupsVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarPopOrderBy<TRes>
    implements CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsVarSampOrderBy {
  factory Input_GroupsVarSampOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarSampOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarSampOrderBy._(this._$data);

  factory Input_GroupsVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarSampOrderBy._(result$data);
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

  CopyWith_Input_GroupsVarSampOrderBy<Input_GroupsVarSampOrderBy>
  get copyWith => CopyWith_Input_GroupsVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarSampOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarSampOrderBy(
    Input_GroupsVarSampOrderBy instance,
    TRes Function(Input_GroupsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarSampOrderBy;

  factory CopyWith_Input_GroupsVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarSampOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarSampOrderBy<TRes>
    implements CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarSampOrderBy(this._instance, this._then);

  final Input_GroupsVarSampOrderBy _instance;

  final TRes Function(Input_GroupsVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarSampOrderBy<TRes>
    implements CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsVarianceOrderBy {
  factory Input_GroupsVarianceOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarianceOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarianceOrderBy._(this._$data);

  factory Input_GroupsVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarianceOrderBy._(result$data);
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

  CopyWith_Input_GroupsVarianceOrderBy<Input_GroupsVarianceOrderBy>
  get copyWith => CopyWith_Input_GroupsVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarianceOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarianceOrderBy(
    Input_GroupsVarianceOrderBy instance,
    TRes Function(Input_GroupsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarianceOrderBy;

  factory CopyWith_Input_GroupsVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarianceOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarianceOrderBy<TRes>
    implements CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarianceOrderBy(this._instance, this._then);

  final Input_GroupsVarianceOrderBy _instance;

  final TRes Function(Input_GroupsVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarianceOrderBy<TRes>
    implements CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_HistoryAttendanceDaysBoolExp {
  factory Input_HistoryAttendanceDaysBoolExp({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_HistoryAttendanceDaysConstraintsBoolExp? constraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    constraintsAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
    Input_StringComparisonExp? notes,
  }) => Input_HistoryAttendanceDaysBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (confessionHistoryAggregate != null)
      r'confessionHistoryAggregate': confessionHistoryAggregate,
    if (constraints != null) r'constraints': constraints,
    if (constraintsAggregate != null)
      r'constraintsAggregate': constraintsAggregate,
    if (day != null) r'day': day,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
    if (kodasHistoryAggregate != null)
      r'kodasHistoryAggregate': kodasHistoryAggregate,
    if (notes != null) r'notes': notes,
  });

  Input_HistoryAttendanceDaysBoolExp._(this._$data);

  factory Input_HistoryAttendanceDaysBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
          ? null
          : Input_HistoryConfessionHistoryAggregateBoolExp.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('constraints')) {
      final l$constraints = data['constraints'];
      result$data['constraints'] = l$constraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$constraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = data['constraintsAggregate'];
      result$data['constraintsAggregate'] = l$constraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.fromJson(
              (l$constraintsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_DateComparisonExp.fromJson((l$day as Map<String, dynamic>));
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateBoolExp.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$notes as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceDaysBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryAttendanceDaysBoolExp>?);

  Input_HistoryAttendanceDaysBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryAttendanceDaysBoolExp?);

  List<Input_HistoryAttendanceDaysBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryAttendanceDaysBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_HistoryConfessionHistoryBoolExp? get confessionHistory =>
      (_$data['confessionHistory'] as Input_HistoryConfessionHistoryBoolExp?);

  Input_HistoryConfessionHistoryAggregateBoolExp?
  get confessionHistoryAggregate =>
      (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateBoolExp?);

  Input_HistoryAttendanceDaysConstraintsBoolExp? get constraints =>
      (_$data['constraints'] as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
  get constraintsAggregate =>
      (_$data['constraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?);

  Input_DateComparisonExp? get day =>
      (_$data['day'] as Input_DateComparisonExp?);

  Input_HistoryKodasHistoryBoolExp? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryBoolExp?);

  Input_HistoryKodasHistoryAggregateBoolExp? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateBoolExp?);

  Input_StringComparisonExp? get notes =>
      (_$data['notes'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] = l$confessionHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('constraints')) {
      final l$constraints = constraints;
      result$data['constraints'] = l$constraints?.toJson();
    }
    if (_$data.containsKey('constraintsAggregate')) {
      final l$constraintsAggregate = constraintsAggregate;
      result$data['constraintsAggregate'] = l$constraintsAggregate?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysBoolExp<
    Input_HistoryAttendanceDaysBoolExp
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysBoolExp ||
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
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
      return false;
    }
    final l$constraints = constraints;
    final lOther$constraints = other.constraints;
    if (_$data.containsKey('constraints') !=
        other._$data.containsKey('constraints')) {
      return false;
    }
    if (l$constraints != lOther$constraints) {
      return false;
    }
    final l$constraintsAggregate = constraintsAggregate;
    final lOther$constraintsAggregate = other.constraintsAggregate;
    if (_$data.containsKey('constraintsAggregate') !=
        other._$data.containsKey('constraintsAggregate')) {
      return false;
    }
    if (l$constraintsAggregate != lOther$constraintsAggregate) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$confessionHistory = confessionHistory;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$constraints = constraints;
    final l$constraintsAggregate = constraintsAggregate;
    final l$day = day;
    final l$kodasHistory = kodasHistory;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$notes = notes;
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
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('constraints') ? l$constraints : const {},
      _$data.containsKey('constraintsAggregate')
          ? l$constraintsAggregate
          : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}
