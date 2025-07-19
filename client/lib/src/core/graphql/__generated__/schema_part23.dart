// Part 23 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(
    Input_HistoryAttendanceDaysConstraintsMaxOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsMaxOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsMaxOrderBy._({
        ..._instance._$data,
        if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysConstraintsMinOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsMinOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsMinOrderBy._({
        if (dayId != null) r'dayId': dayId,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsMinOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsMinOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] =
          l$dayId == null ? null : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] =
          l$dayId == null ? null : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<
          Input_HistoryAttendanceDaysConstraintsMinOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
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
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
    Input_HistoryAttendanceDaysConstraintsMinOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsMinOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsMinOrderBy._({
        ..._instance._$data,
        if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysConstraintsOnConflict {
  factory Input_HistoryAttendanceDaysConstraintsOnConflict({
    required Enum_HistoryAttendanceDaysConstraintsConstraint constraint,
    List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysConstraintsBoolExp? where,
  }) =>
      Input_HistoryAttendanceDaysConstraintsOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_HistoryAttendanceDaysConstraintsOnConflict._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsOnConflict.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_HistoryAttendanceDaysConstraintsConstraint(
            (l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) =>
              fromJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(
                  (e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysConstraintsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceDaysConstraintsConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryAttendanceDaysConstraintsConstraint);

  List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>?);

  Input_HistoryAttendanceDaysConstraintsBoolExp? get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_HistoryAttendanceDaysConstraintsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] = (l$updateColumns
              as List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>)
          .map((e) =>
              toJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(e))
          .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<
          Input_HistoryAttendanceDaysConstraintsOnConflict>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsOnConflict ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict(
    Input_HistoryAttendanceDaysConstraintsOnConflict instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOnConflict;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOnConflict;

  TRes call({
    Enum_HistoryAttendanceDaysConstraintsConstraint? constraint,
    List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysConstraintsBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint':
              (constraint as Enum_HistoryAttendanceDaysConstraintsConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns': (updateColumns
              as List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>),
        if (where != _undefined)
          'where': (where as Input_HistoryAttendanceDaysConstraintsBoolExp?),
      }));

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceDaysConstraintsConstraint? constraint,
    List<Enum_HistoryAttendanceDaysConstraintsUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysConstraintsBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsOrderBy({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsOrderBy._({
        if (day != null) r'day': day,
        if (dayId != null) r'dayId': dayId,
        if (group != null) r'group': group,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (service != null) r'service': service,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
        if (studyYear != null) r'studyYear': studyYear,
      });

  Input_HistoryAttendanceDaysConstraintsOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysOrderBy.fromJson(
              (l$day as Map<String, dynamic>));
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] =
          l$dayId == null ? null : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsOrderBy.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesOrderBy.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceGender as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYear as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysConstraintsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysOrderBy? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysOrderBy?);

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Input_GroupsOrderBy? get group => (_$data['group'] as Input_GroupsOrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceGender => (_$data['serviceGender'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] =
          l$dayId == null ? null : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] =
          l$serviceGender == null ? null : toJson_Enum_OrderBy(l$serviceGender);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<
          Input_HistoryAttendanceDaysConstraintsOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$dayId = dayId;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy(
    Input_HistoryAttendanceDaysConstraintsOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOrderBy;

  TRes call({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  });
  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day;
  CopyWith_Input_GroupsOrderBy<TRes> get group;
  CopyWith_Input_ServicesOrderBy<TRes> get service;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsOrderBy._({
        ..._instance._$data,
        if (day != _undefined)
          'day': (day as Input_HistoryAttendanceDaysOrderBy?),
        if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
        if (group != _undefined) 'group': (group as Input_GroupsOrderBy?),
        if (groupId != _undefined) 'groupId': (groupId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (service != _undefined)
          'service': (service as Input_ServicesOrderBy?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as Enum_OrderBy?),
        if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
        if (studyYear != _undefined)
          'studyYear': (studyYear as Input_StudyYearsOrderBy?),
      }));

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysOrderBy(
            local$day, (e) => call(day: e));
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
            local$service, (e) => call(service: e));
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYear, (e) => call(studyYear: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Input_GroupsOrderBy? group,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceGender,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
    Input_StudyYearsOrderBy? studyYear,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(_res);

  CopyWith_Input_GroupsOrderBy<TRes> get group =>
      CopyWith_Input_GroupsOrderBy.stub(_res);

  CopyWith_Input_ServicesOrderBy<TRes> get service =>
      CopyWith_Input_ServicesOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsStddevOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsStddevOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStddevOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStddevOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStddevOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<
          Input_HistoryAttendanceDaysConstraintsStddevOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStddevOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
    Input_HistoryAttendanceDaysConstraintsStddevOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStddevOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsStddevOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsStddevOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._(
        result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<
          Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
    Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevPopOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._(
        result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<
          Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
    Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStddevSampOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsStreamCursorInput {
  factory Input_HistoryAttendanceDaysConstraintsStreamCursorInput({
    required Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput
        initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_HistoryAttendanceDaysConstraintsStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_HistoryAttendanceDaysConstraintsStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryAttendanceDaysConstraintsStreamCursorInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput
      get initialValue => (_$data['initialValue']
          as Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput<
          Input_HistoryAttendanceDaysConstraintsStreamCursorInput>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput(
    Input_HistoryAttendanceDaysConstraintsStreamCursorInput instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorInput;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorInput;

  TRes call({
    Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<TRes>
      get initialValue;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorInput<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStreamCursorInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsStreamCursorInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue': (initialValue
              as Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<TRes>
      get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorInput<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorInput(
      this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<TRes>
      get initialValue =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput
              .stub(_res);
}

class Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput {
  factory Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) =>
      Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput._({
        if (dayId != null) r'dayId': dayId,
        if (groupId != null) r'groupId': groupId,
        if (id != null) r'id': id,
        if (serviceGender != null) r'serviceGender': serviceGender,
        if (serviceId != null) r'serviceId': serviceId,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] =
          l$groupId == null ? null : stringToUuid(l$groupId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] =
          l$serviceId == null ? null : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] =
          l$groupId == null ? null : uuidToString(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] =
          l$serviceId == null ? null : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
          Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
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
    final l$dayId = dayId;
    final l$groupId = groupId;
    final l$id = id;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
    Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput)
        then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput;

  TRes call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
            TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput _instance;

  final TRes Function(
      Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput._({
        ..._instance._$data,
        if (dayId != _undefined) 'dayId': (dayId as DateTime?),
        if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
        if (id != _undefined) 'id': (id as UuidValue?),
        if (serviceGender != _undefined)
          'serviceGender': (serviceGender as bool?),
        if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as int?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput<
            TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsStreamCursorValueInput(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    UuidValue? groupId,
    UuidValue? id,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) =>
      _res;
}

class Input_HistoryAttendanceDaysConstraintsSumOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsSumOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsSumOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsSumOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsSumOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsSumOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<
          Input_HistoryAttendanceDaysConstraintsSumOrderBy>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsSumOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy(
    Input_HistoryAttendanceDaysConstraintsSumOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsSumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsSumOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsSumOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysConstraintsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsVarPopOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<
          Input_HistoryAttendanceDaysConstraintsVarPopOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsVarPopOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
    Input_HistoryAttendanceDaysConstraintsVarPopOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsVarPopOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsVarPopOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsVarPopOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarPopOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsVarSampOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<
          Input_HistoryAttendanceDaysConstraintsVarSampOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsVarSampOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
    Input_HistoryAttendanceDaysConstraintsVarSampOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsVarSampOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsVarSampOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsVarSampOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarSampOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysConstraintsVarianceOrderBy {
  factory Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
          {Enum_OrderBy? serviceStudyYear}) =>
      Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._(result$data);
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<
          Input_HistoryAttendanceDaysConstraintsVarianceOrderBy>
      get copyWith =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysConstraintsVarianceOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<
    TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
    Input_HistoryAttendanceDaysConstraintsVarianceOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysConstraintsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy.stub(
          TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysConstraintsVarianceOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysConstraintsVarianceOrderBy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) =>
      _then(Input_HistoryAttendanceDaysConstraintsVarianceOrderBy._({
        ..._instance._$data,
        if (serviceStudyYear != _undefined)
          'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<
        TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysConstraintsVarianceOrderBy(
      this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryAttendanceDaysInsertInput {
  factory Input_HistoryAttendanceDaysInsertInput({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? notes,
  }) =>
      Input_HistoryAttendanceDaysInsertInput._({
        if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
        if (confessionHistory != null) r'confessionHistory': confessionHistory,
        if (constraints != null) r'constraints': constraints,
        if (day != null) r'day': day,
        if (kodasHistory != null) r'kodasHistory': kodasHistory,
        if (notes != null) r'notes': notes,
      });

  Input_HistoryAttendanceDaysInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>));
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryArrRelInsertInput.fromJson(
              (l$confessionHistory as Map<String, dynamic>));
    }
    if (data.containsKey('constraints')) {
      final l$constraints = data['constraints'];
      result$data['constraints'] = l$constraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              (l$constraints as Map<String, dynamic>));
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryArrRelInsertInput.fromJson(
              (l$kodasHistory as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input_HistoryAttendanceDaysInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  Input_HistoryConfessionHistoryArrRelInsertInput? get confessionHistory =>
      (_$data['confessionHistory']
          as Input_HistoryConfessionHistoryArrRelInsertInput?);

  Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? get constraints =>
      (_$data['constraints']
          as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?);

  DateTime? get day => (_$data['day'] as DateTime?);

  Input_HistoryKodasHistoryArrRelInsertInput? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryArrRelInsertInput?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('constraints')) {
      final l$constraints = constraints;
      result$data['constraints'] = l$constraints?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysInsertInput<
          Input_HistoryAttendanceDaysInsertInput>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
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
    final l$attendanceHistory = attendanceHistory;
    final l$confessionHistory = confessionHistory;
    final l$constraints = constraints;
    final l$day = day;
    final l$kodasHistory = kodasHistory;
    final l$notes = notes;
    return Object.hashAll([
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('constraints') ? l$constraints : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysInsertInput(
    Input_HistoryAttendanceDaysInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput;

  TRes call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? notes,
  });
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
      get attendanceHistory;
  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
      get confessionHistory;
  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
      get constraints;
  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistory = _undefined,
    Object? confessionHistory = _undefined,
    Object? constraints = _undefined,
    Object? day = _undefined,
    Object? kodasHistory = _undefined,
    Object? notes = _undefined,
  }) =>
      _then(Input_HistoryAttendanceDaysInsertInput._({
        ..._instance._$data,
        if (attendanceHistory != _undefined)
          'attendanceHistory': (attendanceHistory
              as Input_HistoryAttendanceHistoryArrRelInsertInput?),
        if (confessionHistory != _undefined)
          'confessionHistory': (confessionHistory
              as Input_HistoryConfessionHistoryArrRelInsertInput?),
        if (constraints != _undefined)
          'constraints': (constraints
              as Input_HistoryAttendanceDaysConstraintsArrRelInsertInput?),
        if (day != _undefined) 'day': (day as DateTime?),
        if (kodasHistory != _undefined)
          'kodasHistory':
              (kodasHistory as Input_HistoryKodasHistoryArrRelInsertInput?),
        if (notes != _undefined) 'notes': (notes as String?),
      }));

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
      get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            local$attendanceHistory, (e) => call(attendanceHistory: e));
  }

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
      get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput(
            local$confessionHistory, (e) => call(confessionHistory: e));
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
      get constraints {
    final local$constraints = _instance.constraints;
    return local$constraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput(
            local$constraints, (e) => call(constraints: e));
  }

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(
            _then(_instance))
        : CopyWith_Input_HistoryKodasHistoryArrRelInsertInput(
            local$kodasHistory, (e) => call(kodasHistory: e));
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    Input_HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
    String? notes,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
      get attendanceHistory =>
          CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
      get confessionHistory =>
          CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput<TRes>
      get constraints =>
          CopyWith_Input_HistoryAttendanceDaysConstraintsArrRelInsertInput.stub(
              _res);

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(_res);
}

class Input_HistoryAttendanceDaysObjRelInsertInput {
  factory Input_HistoryAttendanceDaysObjRelInsertInput({
    required Input_HistoryAttendanceDaysInsertInput data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  }) =>
      Input_HistoryAttendanceDaysObjRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_HistoryAttendanceDaysObjRelInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysObjRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_HistoryAttendanceDaysInsertInput.fromJson(
        (l$data as Map<String, dynamic>));
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryAttendanceDaysOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_HistoryAttendanceDaysObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysInsertInput get data =>
      (_$data['data'] as Input_HistoryAttendanceDaysInsertInput);

  Input_HistoryAttendanceDaysOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryAttendanceDaysOnConflict?);

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

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<
          Input_HistoryAttendanceDaysObjRelInsertInput>
      get copyWith => CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysObjRelInsertInput ||
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
