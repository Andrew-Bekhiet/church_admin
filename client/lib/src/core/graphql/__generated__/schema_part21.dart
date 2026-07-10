// Part 21 of the schema
part of "schema.graphql.dart";

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
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryMeetingsOrderBy? defaultMeeting,
    Enum_OrderBy? defaultMeetingId,
    Input_HistoryEditHistoryAggregateOrderBy? editHistroyAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryMeetingsAggregateOrderBy? meetingsAggregate,
    Enum_OrderBy? name,
    Input_PersonsGroupsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? userCanEdit,
    Enum_OrderBy? validity,
  }) => Input_GroupsOrderBy._({
    if (adminUsersAggregate != null)
      r'adminUsersAggregate': adminUsersAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (defaultMeeting != null) r'defaultMeeting': defaultMeeting,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
    if (editHistroyAggregate != null)
      r'editHistroyAggregate': editHistroyAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (meetingsAggregate != null) r'meetingsAggregate': meetingsAggregate,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
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
    if (data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = data['defaultMeeting'];
      result$data['defaultMeeting'] = l$defaultMeeting == null
          ? null
          : Input_HistoryMeetingsOrderBy.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$defaultMeetingId as String));
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
    if (data.containsKey('meetingsAggregate')) {
      final l$meetingsAggregate = data['meetingsAggregate'];
      result$data['meetingsAggregate'] = l$meetingsAggregate == null
          ? null
          : Input_HistoryMeetingsAggregateOrderBy.fromJson(
              (l$meetingsAggregate as Map<String, dynamic>),
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
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : fromJson_Enum_OrderBy((l$userCanEdit as String));
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

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryMeetingsOrderBy? get defaultMeeting =>
      (_$data['defaultMeeting'] as Input_HistoryMeetingsOrderBy?);

  Enum_OrderBy? get defaultMeetingId =>
      (_$data['defaultMeetingId'] as Enum_OrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistroyAggregate =>
      (_$data['editHistroyAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Input_HistoryMeetingsAggregateOrderBy? get meetingsAggregate =>
      (_$data['meetingsAggregate'] as Input_HistoryMeetingsAggregateOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsGroupsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsGroupsAggregateOrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_ServicesOrderBy? get service =>
      (_$data['service'] as Input_ServicesOrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get userCanEdit => (_$data['userCanEdit'] as Enum_OrderBy?);

  Enum_OrderBy? get validity => (_$data['validity'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminUsersAggregate')) {
      final l$adminUsersAggregate = adminUsersAggregate;
      result$data['adminUsersAggregate'] = l$adminUsersAggregate?.toJson();
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
    if (_$data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = defaultMeeting;
      result$data['defaultMeeting'] = l$defaultMeeting?.toJson();
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : toJson_Enum_OrderBy(l$defaultMeetingId);
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
    if (_$data.containsKey('meetingsAggregate')) {
      final l$meetingsAggregate = meetingsAggregate;
      result$data['meetingsAggregate'] = l$meetingsAggregate?.toJson();
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
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : toJson_Enum_OrderBy(l$userCanEdit);
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
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (_$data.containsKey('defaultMeeting') !=
        other._$data.containsKey('defaultMeeting')) {
      return false;
    }
    if (l$defaultMeeting != lOther$defaultMeeting) {
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
    final l$meetingsAggregate = meetingsAggregate;
    final lOther$meetingsAggregate = other.meetingsAggregate;
    if (_$data.containsKey('meetingsAggregate') !=
        other._$data.containsKey('meetingsAggregate')) {
      return false;
    }
    if (l$meetingsAggregate != lOther$meetingsAggregate) {
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
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
    final l$blurhash = blurhash;
    final l$color = color;
    final l$defaultMeeting = defaultMeeting;
    final l$defaultMeetingId = defaultMeetingId;
    final l$editHistroyAggregate = editHistroyAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$meetingsAggregate = meetingsAggregate;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$userCanEdit = userCanEdit;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('adminUsersAggregate')
          ? l$adminUsersAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeeting') ? l$defaultMeeting : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
      _$data.containsKey('editHistroyAggregate')
          ? l$editHistroyAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('meetingsAggregate') ? l$meetingsAggregate : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
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
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryMeetingsOrderBy? defaultMeeting,
    Enum_OrderBy? defaultMeetingId,
    Input_HistoryEditHistoryAggregateOrderBy? editHistroyAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryMeetingsAggregateOrderBy? meetingsAggregate,
    Enum_OrderBy? name,
    Input_PersonsGroupsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? userCanEdit,
    Enum_OrderBy? validity,
  });
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminUsersAggregate;
  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get defaultMeeting;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistroyAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> get meetingsAggregate;
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
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? defaultMeeting = _undefined,
    Object? defaultMeetingId = _undefined,
    Object? editHistroyAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? meetingsAggregate = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
    Object? userCanEdit = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsOrderBy._({
      ..._instance._$data,
      if (adminUsersAggregate != _undefined)
        'adminUsersAggregate':
            (adminUsersAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (defaultMeeting != _undefined)
        'defaultMeeting': (defaultMeeting as Input_HistoryMeetingsOrderBy?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as Enum_OrderBy?),
      if (editHistroyAggregate != _undefined)
        'editHistroyAggregate':
            (editHistroyAggregate as Input_HistoryEditHistoryAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (meetingsAggregate != _undefined)
        'meetingsAggregate':
            (meetingsAggregate as Input_HistoryMeetingsAggregateOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsGroupsAggregateOrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (service != _undefined) 'service': (service as Input_ServicesOrderBy?),
      if (serviceId != _undefined) 'serviceId': (serviceId as Enum_OrderBy?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Enum_OrderBy?),
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

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get defaultMeeting {
    final local$defaultMeeting = _instance.defaultMeeting;
    return local$defaultMeeting == null
        ? CopyWith_Input_HistoryMeetingsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOrderBy(
            local$defaultMeeting,
            (e) => call(defaultMeeting: e),
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

  CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> get meetingsAggregate {
    final local$meetingsAggregate = _instance.meetingsAggregate;
    return local$meetingsAggregate == null
        ? CopyWith_Input_HistoryMeetingsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsAggregateOrderBy(
            local$meetingsAggregate,
            (e) => call(meetingsAggregate: e),
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
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Input_HistoryMeetingsOrderBy? defaultMeeting,
    Enum_OrderBy? defaultMeetingId,
    Input_HistoryEditHistoryAggregateOrderBy? editHistroyAggregate,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryMeetingsAggregateOrderBy? meetingsAggregate,
    Enum_OrderBy? name,
    Input_PersonsGroupsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Input_ServicesOrderBy? service,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? userCanEdit,
    Enum_OrderBy? validity,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
  get adminUsersAggregate =>
      CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get defaultMeeting =>
      CopyWith_Input_HistoryMeetingsOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
  get editHistroyAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> get meetingsAggregate =>
      CopyWith_Input_HistoryMeetingsAggregateOrderBy.stub(_res);

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
    UuidValue? defaultMeetingId,
    String? name,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => Input_GroupsSetInput._({
    if (color != null) r'color': color,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
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
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : stringToUuid(l$defaultMeetingId);
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

  UuidValue? get defaultMeetingId => (_$data['defaultMeetingId'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTimeRange? get validity => (_$data['validity'] as DateTimeRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : uuidToString(l$defaultMeetingId);
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
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
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
    final l$defaultMeetingId = defaultMeetingId;
    final l$name = name;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
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
    UuidValue? defaultMeetingId,
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
    Object? defaultMeetingId = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsSetInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as UuidValue?),
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
    UuidValue? defaultMeetingId,
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
    UuidValue? defaultMeetingId,
    UuidValue? id,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => Input_GroupsStreamCursorValueInput._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
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
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : stringToUuid(l$defaultMeetingId);
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

  UuidValue? get defaultMeetingId => (_$data['defaultMeetingId'] as UuidValue?);

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
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : uuidToString(l$defaultMeetingId);
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
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
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
    final l$defaultMeetingId = defaultMeetingId;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
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
    UuidValue? defaultMeetingId,
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
    Object? defaultMeetingId = _undefined,
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
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as UuidValue?),
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
    UuidValue? defaultMeetingId,
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
