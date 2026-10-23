// Part 37 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ClassFilterInput<TRes> {
  factory CopyWith_Input_ClassFilterInput(
    Input_ClassFilterInput instance,
    TRes Function(Input_ClassFilterInput) then,
  ) = _CopyWithImpl_Input_ClassFilterInput;

  factory CopyWith_Input_ClassFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassFilterInput;

  TRes call({
    List<Input_ClassFilterInput>? and,
    List<Input_ClassFilterInput>? or,
    List<Input_ClassFilterInput>? not,
    Input_ClassFilterId? id,
    Input_ClassFilterName? name,
    Input_ClassFilterServiceId? serviceId,
    Input_ClassFilterServiceStudyYear? serviceStudyYear,
    Input_ClassFilterServiceGender? serviceGender,
    Input_ClassFilterColor? color,
    Input_ClassFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ClassFilterBlurhash? blurhash,
    Input_ClassFilterServiceStudyYearTo? serviceStudyYearTo,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_MeetingFilterInput? meetings,
    Input_LatestEditFilterInput? latestEdit,
    Input_UserFilterInput? admins,
    Input_ClassFilterServiceName? serviceName,
    Input_ClassFilterLastEdit? lastEdit,
    Input_ClassFilterLastEditUserName? lastEditUserName,
    Input_ClassFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ClassFilterStudyYearToOrder? studyYearToOrder,
    Input_ClassFilterUserCanEdit? userCanEdit,
  });
  TRes and(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_ClassFilterId<TRes> get id;
  CopyWith_Input_ClassFilterName<TRes> get name;
  CopyWith_Input_ClassFilterServiceId<TRes> get serviceId;
  CopyWith_Input_ClassFilterServiceStudyYear<TRes> get serviceStudyYear;
  CopyWith_Input_ClassFilterServiceGender<TRes> get serviceGender;
  CopyWith_Input_ClassFilterColor<TRes> get color;
  CopyWith_Input_ClassFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_ClassFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_ClassFilterServiceStudyYearTo<TRes> get serviceStudyYearTo;
  CopyWith_Input_ServiceFilterInput<TRes> get service;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo;
  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships;
  CopyWith_Input_MeetingFilterInput<TRes> get meetings;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_UserFilterInput<TRes> get admins;
  CopyWith_Input_ClassFilterServiceName<TRes> get serviceName;
  CopyWith_Input_ClassFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_ClassFilterLastEditUserName<TRes> get lastEditUserName;
  CopyWith_Input_ClassFilterStudyYearFromOrder<TRes> get studyYearFromOrder;
  CopyWith_Input_ClassFilterStudyYearToOrder<TRes> get studyYearToOrder;
  CopyWith_Input_ClassFilterUserCanEdit<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_ClassFilterInput<TRes>
    implements CopyWith_Input_ClassFilterInput<TRes> {
  _CopyWithImpl_Input_ClassFilterInput(this._instance, this._then);

  final Input_ClassFilterInput _instance;

  final TRes Function(Input_ClassFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? serviceStudyYearTo = _undefined,
    Object? service = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? classMemberships = _undefined,
    Object? meetings = _undefined,
    Object? latestEdit = _undefined,
    Object? admins = _undefined,
    Object? serviceName = _undefined,
    Object? lastEdit = _undefined,
    Object? lastEditUserName = _undefined,
    Object? studyYearFromOrder = _undefined,
    Object? studyYearToOrder = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_ClassFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_ClassFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_ClassFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_ClassFilterInput>?),
      if (id != _undefined) 'id': (id as Input_ClassFilterId?),
      if (name != _undefined) 'name': (name as Input_ClassFilterName?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_ClassFilterServiceId?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear':
            (serviceStudyYear as Input_ClassFilterServiceStudyYear?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Input_ClassFilterServiceGender?),
      if (color != _undefined) 'color': (color as Input_ClassFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_ClassFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_ClassFilterBlurhash?),
      if (serviceStudyYearTo != _undefined)
        'serviceStudyYearTo':
            (serviceStudyYearTo as Input_ClassFilterServiceStudyYearTo?),
      if (service != _undefined)
        'service': (service as Input_ServiceFilterInput?),
      if (studyYearFrom != _undefined)
        'studyYearFrom': (studyYearFrom as Input_StudyYearFilterInput?),
      if (studyYearTo != _undefined)
        'studyYearTo': (studyYearTo as Input_StudyYearFilterInput?),
      if (classMemberships != _undefined)
        'classMemberships':
            (classMemberships as Input_ClassMembershipFilterInput?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_MeetingFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (admins != _undefined) 'admins': (admins as Input_UserFilterInput?),
      if (serviceName != _undefined)
        'serviceName': (serviceName as Input_ClassFilterServiceName?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_ClassFilterLastEdit?),
      if (lastEditUserName != _undefined)
        'lastEditUserName':
            (lastEditUserName as Input_ClassFilterLastEditUserName?),
      if (studyYearFromOrder != _undefined)
        'studyYearFromOrder':
            (studyYearFromOrder as Input_ClassFilterStudyYearFromOrder?),
      if (studyYearToOrder != _undefined)
        'studyYearToOrder':
            (studyYearToOrder as Input_ClassFilterStudyYearToOrder?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_ClassFilterUserCanEdit?),
    }),
  );

  TRes and(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_ClassFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_ClassFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_ClassFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ClassFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_ClassFilterId.stub(_then(_instance))
        : CopyWith_Input_ClassFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_ClassFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_ClassFilterName.stub(_then(_instance))
        : CopyWith_Input_ClassFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_ClassFilterServiceId<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_ClassFilterServiceId.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceId(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }

  CopyWith_Input_ClassFilterServiceStudyYear<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_ClassFilterServiceStudyYear.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceStudyYear(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_ClassFilterServiceGender<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_ClassFilterServiceGender.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceGender(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_ClassFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_ClassFilterColor.stub(_then(_instance))
        : CopyWith_Input_ClassFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_ClassFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_ClassFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_ClassFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_ClassFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_ClassFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_ClassFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_ClassFilterServiceStudyYearTo<TRes> get serviceStudyYearTo {
    final local$serviceStudyYearTo = _instance.serviceStudyYearTo;
    return local$serviceStudyYearTo == null
        ? CopyWith_Input_ClassFilterServiceStudyYearTo.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceStudyYearTo(
            local$serviceStudyYearTo,
            (e) => call(serviceStudyYearTo: e),
          );
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

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }

  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships {
    final local$classMemberships = _instance.classMemberships;
    return local$classMemberships == null
        ? CopyWith_Input_ClassMembershipFilterInput.stub(_then(_instance))
        : CopyWith_Input_ClassMembershipFilterInput(
            local$classMemberships,
            (e) => call(classMemberships: e),
          );
  }

  CopyWith_Input_MeetingFilterInput<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_MeetingFilterInput.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterInput(
            local$meetings,
            (e) => call(meetings: e),
          );
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get admins {
    final local$admins = _instance.admins;
    return local$admins == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$admins, (e) => call(admins: e));
  }

  CopyWith_Input_ClassFilterServiceName<TRes> get serviceName {
    final local$serviceName = _instance.serviceName;
    return local$serviceName == null
        ? CopyWith_Input_ClassFilterServiceName.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceName(
            local$serviceName,
            (e) => call(serviceName: e),
          );
  }

  CopyWith_Input_ClassFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_ClassFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_ClassFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_ClassFilterLastEditUserName<TRes> get lastEditUserName {
    final local$lastEditUserName = _instance.lastEditUserName;
    return local$lastEditUserName == null
        ? CopyWith_Input_ClassFilterLastEditUserName.stub(_then(_instance))
        : CopyWith_Input_ClassFilterLastEditUserName(
            local$lastEditUserName,
            (e) => call(lastEditUserName: e),
          );
  }

  CopyWith_Input_ClassFilterStudyYearFromOrder<TRes> get studyYearFromOrder {
    final local$studyYearFromOrder = _instance.studyYearFromOrder;
    return local$studyYearFromOrder == null
        ? CopyWith_Input_ClassFilterStudyYearFromOrder.stub(_then(_instance))
        : CopyWith_Input_ClassFilterStudyYearFromOrder(
            local$studyYearFromOrder,
            (e) => call(studyYearFromOrder: e),
          );
  }

  CopyWith_Input_ClassFilterStudyYearToOrder<TRes> get studyYearToOrder {
    final local$studyYearToOrder = _instance.studyYearToOrder;
    return local$studyYearToOrder == null
        ? CopyWith_Input_ClassFilterStudyYearToOrder.stub(_then(_instance))
        : CopyWith_Input_ClassFilterStudyYearToOrder(
            local$studyYearToOrder,
            (e) => call(studyYearToOrder: e),
          );
  }

  CopyWith_Input_ClassFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_ClassFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_ClassFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassFilterInput<TRes>
    implements CopyWith_Input_ClassFilterInput<TRes> {
  _CopyWithStubImpl_Input_ClassFilterInput(this._res);

  TRes _res;

  call({
    List<Input_ClassFilterInput>? and,
    List<Input_ClassFilterInput>? or,
    List<Input_ClassFilterInput>? not,
    Input_ClassFilterId? id,
    Input_ClassFilterName? name,
    Input_ClassFilterServiceId? serviceId,
    Input_ClassFilterServiceStudyYear? serviceStudyYear,
    Input_ClassFilterServiceGender? serviceGender,
    Input_ClassFilterColor? color,
    Input_ClassFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ClassFilterBlurhash? blurhash,
    Input_ClassFilterServiceStudyYearTo? serviceStudyYearTo,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_MeetingFilterInput? meetings,
    Input_LatestEditFilterInput? latestEdit,
    Input_UserFilterInput? admins,
    Input_ClassFilterServiceName? serviceName,
    Input_ClassFilterLastEdit? lastEdit,
    Input_ClassFilterLastEditUserName? lastEditUserName,
    Input_ClassFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ClassFilterStudyYearToOrder? studyYearToOrder,
    Input_ClassFilterUserCanEdit? userCanEdit,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_ClassFilterId<TRes> get id =>
      CopyWith_Input_ClassFilterId.stub(_res);

  CopyWith_Input_ClassFilterName<TRes> get name =>
      CopyWith_Input_ClassFilterName.stub(_res);

  CopyWith_Input_ClassFilterServiceId<TRes> get serviceId =>
      CopyWith_Input_ClassFilterServiceId.stub(_res);

  CopyWith_Input_ClassFilterServiceStudyYear<TRes> get serviceStudyYear =>
      CopyWith_Input_ClassFilterServiceStudyYear.stub(_res);

  CopyWith_Input_ClassFilterServiceGender<TRes> get serviceGender =>
      CopyWith_Input_ClassFilterServiceGender.stub(_res);

  CopyWith_Input_ClassFilterColor<TRes> get color =>
      CopyWith_Input_ClassFilterColor.stub(_res);

  CopyWith_Input_ClassFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_ClassFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_ClassFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_ClassFilterBlurhash.stub(_res);

  CopyWith_Input_ClassFilterServiceStudyYearTo<TRes> get serviceStudyYearTo =>
      CopyWith_Input_ClassFilterServiceStudyYearTo.stub(_res);

  CopyWith_Input_ServiceFilterInput<TRes> get service =>
      CopyWith_Input_ServiceFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships =>
      CopyWith_Input_ClassMembershipFilterInput.stub(_res);

  CopyWith_Input_MeetingFilterInput<TRes> get meetings =>
      CopyWith_Input_MeetingFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get admins =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_ClassFilterServiceName<TRes> get serviceName =>
      CopyWith_Input_ClassFilterServiceName.stub(_res);

  CopyWith_Input_ClassFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_ClassFilterLastEdit.stub(_res);

  CopyWith_Input_ClassFilterLastEditUserName<TRes> get lastEditUserName =>
      CopyWith_Input_ClassFilterLastEditUserName.stub(_res);

  CopyWith_Input_ClassFilterStudyYearFromOrder<TRes> get studyYearFromOrder =>
      CopyWith_Input_ClassFilterStudyYearFromOrder.stub(_res);

  CopyWith_Input_ClassFilterStudyYearToOrder<TRes> get studyYearToOrder =>
      CopyWith_Input_ClassFilterStudyYearToOrder.stub(_res);

  CopyWith_Input_ClassFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_ClassFilterUserCanEdit.stub(_res);
}

class Input_ClassSortInput {
  factory Input_ClassSortInput({
    Enum_SortOrder? order,
    required Enum_ClassSortField field,
  }) => Input_ClassSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_ClassSortInput._(this._$data);

  factory Input_ClassSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_ClassSortField((l$field as String));
    return Input_ClassSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_ClassSortField get field => (_$data['field'] as Enum_ClassSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_ClassSortField(l$field);
    return result$data;
  }

  CopyWith_Input_ClassSortInput<Input_ClassSortInput> get copyWith =>
      CopyWith_Input_ClassSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassSortInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassSortInput<TRes> {
  factory CopyWith_Input_ClassSortInput(
    Input_ClassSortInput instance,
    TRes Function(Input_ClassSortInput) then,
  ) = _CopyWithImpl_Input_ClassSortInput;

  factory CopyWith_Input_ClassSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassSortInput;

  TRes call({Enum_SortOrder? order, Enum_ClassSortField? field});
}

class _CopyWithImpl_Input_ClassSortInput<TRes>
    implements CopyWith_Input_ClassSortInput<TRes> {
  _CopyWithImpl_Input_ClassSortInput(this._instance, this._then);

  final Input_ClassSortInput _instance;

  final TRes Function(Input_ClassSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_ClassSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_ClassSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassSortInput<TRes>
    implements CopyWith_Input_ClassSortInput<TRes> {
  _CopyWithStubImpl_Input_ClassSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_ClassSortField? field}) => _res;
}

class Input_UpdateStreetInput {
  factory Input_UpdateStreetInput({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  }) => Input_UpdateStreetInput._({
    if (name != null) r'name': name,
    if (line != null) r'line': line,
    if (color != null) r'color': color,
    if (areas != null) r'areas': areas,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_UpdateStreetInput._(this._$data);

  factory Input_UpdateStreetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = (l$line as Json?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('areas')) {
      final l$areas = data['areas'];
      result$data['areas'] = (l$areas as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_UpdateStreetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Json? get line => (_$data['line'] as Json?);

  int? get color => (_$data['color'] as int?);

  List<String>? get areas => (_$data['areas'] as List<String>?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('areas')) {
      final l$areas = areas;
      result$data['areas'] = l$areas?.map((e) => e).toList();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_UpdateStreetInput<Input_UpdateStreetInput> get copyWith =>
      CopyWith_Input_UpdateStreetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateStreetInput || runtimeType != other.runtimeType) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (_$data.containsKey('areas') != other._$data.containsKey('areas')) {
      return false;
    }
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$line = line;
    final l$color = color;
    final l$areas = areas;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('areas')
          ? l$areas == null
                ? null
                : Object.hashAll(l$areas.map((v) => v))
          : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateStreetInput<TRes> {
  factory CopyWith_Input_UpdateStreetInput(
    Input_UpdateStreetInput instance,
    TRes Function(Input_UpdateStreetInput) then,
  ) = _CopyWithImpl_Input_UpdateStreetInput;

  factory CopyWith_Input_UpdateStreetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateStreetInput;

  TRes call({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  });
}

class _CopyWithImpl_Input_UpdateStreetInput<TRes>
    implements CopyWith_Input_UpdateStreetInput<TRes> {
  _CopyWithImpl_Input_UpdateStreetInput(this._instance, this._then);

  final Input_UpdateStreetInput _instance;

  final TRes Function(Input_UpdateStreetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? line = _undefined,
    Object? color = _undefined,
    Object? areas = _undefined,
    Object? lastVisit = _undefined,
  }) => _then(
    Input_UpdateStreetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (line != _undefined) 'line': (line as Json?),
      if (color != _undefined) 'color': (color as int?),
      if (areas != _undefined) 'areas': (areas as List<String>?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_UpdateStreetInput<TRes>
    implements CopyWith_Input_UpdateStreetInput<TRes> {
  _CopyWithStubImpl_Input_UpdateStreetInput(this._res);

  TRes _res;

  call({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  }) => _res;
}

class Input_CreateStreetInput {
  factory Input_CreateStreetInput({
    required String name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  }) => Input_CreateStreetInput._({
    r'name': name,
    if (line != null) r'line': line,
    if (color != null) r'color': color,
    if (areas != null) r'areas': areas,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_CreateStreetInput._(this._$data);

  factory Input_CreateStreetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = (l$line as Json?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('areas')) {
      final l$areas = data['areas'];
      result$data['areas'] = (l$areas as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_CreateStreetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Json? get line => (_$data['line'] as Json?);

  int? get color => (_$data['color'] as int?);

  List<String>? get areas => (_$data['areas'] as List<String>?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('areas')) {
      final l$areas = areas;
      result$data['areas'] = l$areas?.map((e) => e).toList();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_CreateStreetInput<Input_CreateStreetInput> get copyWith =>
      CopyWith_Input_CreateStreetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateStreetInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (_$data.containsKey('areas') != other._$data.containsKey('areas')) {
      return false;
    }
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$line = line;
    final l$color = color;
    final l$areas = areas;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      l$name,
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('areas')
          ? l$areas == null
                ? null
                : Object.hashAll(l$areas.map((v) => v))
          : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateStreetInput<TRes> {
  factory CopyWith_Input_CreateStreetInput(
    Input_CreateStreetInput instance,
    TRes Function(Input_CreateStreetInput) then,
  ) = _CopyWithImpl_Input_CreateStreetInput;

  factory CopyWith_Input_CreateStreetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateStreetInput;

  TRes call({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  });
}

class _CopyWithImpl_Input_CreateStreetInput<TRes>
    implements CopyWith_Input_CreateStreetInput<TRes> {
  _CopyWithImpl_Input_CreateStreetInput(this._instance, this._then);

  final Input_CreateStreetInput _instance;

  final TRes Function(Input_CreateStreetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? line = _undefined,
    Object? color = _undefined,
    Object? areas = _undefined,
    Object? lastVisit = _undefined,
  }) => _then(
    Input_CreateStreetInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (line != _undefined) 'line': (line as Json?),
      if (color != _undefined) 'color': (color as int?),
      if (areas != _undefined) 'areas': (areas as List<String>?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_CreateStreetInput<TRes>
    implements CopyWith_Input_CreateStreetInput<TRes> {
  _CopyWithStubImpl_Input_CreateStreetInput(this._res);

  TRes _res;

  call({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  }) => _res;
}

class Input_StreetWithinDistanceFieldInput {
  factory Input_StreetWithinDistanceFieldInput({
    required Json from,
    required double meters,
  }) => Input_StreetWithinDistanceFieldInput._({
    r'from': from,
    r'meters': meters,
  });

  Input_StreetWithinDistanceFieldInput._(this._$data);

  factory Input_StreetWithinDistanceFieldInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$from = data['from'];
    result$data['from'] = (l$from as Json);
    final l$meters = data['meters'];
    result$data['meters'] = (l$meters as num).toDouble();
    return Input_StreetWithinDistanceFieldInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json get from => (_$data['from'] as Json);

  double get meters => (_$data['meters'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$from = from;
    result$data['from'] = l$from;
    final l$meters = meters;
    result$data['meters'] = l$meters;
    return result$data;
  }

  CopyWith_Input_StreetWithinDistanceFieldInput<
    Input_StreetWithinDistanceFieldInput
  >
  get copyWith => CopyWith_Input_StreetWithinDistanceFieldInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetWithinDistanceFieldInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$meters = meters;
    final lOther$meters = other.meters;
    if (l$meters != lOther$meters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$from = from;
    final l$meters = meters;
    return Object.hashAll([l$from, l$meters]);
  }
}

abstract class CopyWith_Input_StreetWithinDistanceFieldInput<TRes> {
  factory CopyWith_Input_StreetWithinDistanceFieldInput(
    Input_StreetWithinDistanceFieldInput instance,
    TRes Function(Input_StreetWithinDistanceFieldInput) then,
  ) = _CopyWithImpl_Input_StreetWithinDistanceFieldInput;

  factory CopyWith_Input_StreetWithinDistanceFieldInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetWithinDistanceFieldInput;

  TRes call({Json? from, double? meters});
}

class _CopyWithImpl_Input_StreetWithinDistanceFieldInput<TRes>
    implements CopyWith_Input_StreetWithinDistanceFieldInput<TRes> {
  _CopyWithImpl_Input_StreetWithinDistanceFieldInput(
    this._instance,
    this._then,
  );

  final Input_StreetWithinDistanceFieldInput _instance;

  final TRes Function(Input_StreetWithinDistanceFieldInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? from = _undefined, Object? meters = _undefined}) => _then(
    Input_StreetWithinDistanceFieldInput._({
      ..._instance._$data,
      if (from != _undefined && from != null) 'from': (from as Json),
      if (meters != _undefined && meters != null) 'meters': (meters as double),
    }),
  );
}

class _CopyWithStubImpl_Input_StreetWithinDistanceFieldInput<TRes>
    implements CopyWith_Input_StreetWithinDistanceFieldInput<TRes> {
  _CopyWithStubImpl_Input_StreetWithinDistanceFieldInput(this._res);

  TRes _res;

  call({Json? from, double? meters}) => _res;
}

class Input_StreetFilterWithinDistance {
  factory Input_StreetFilterWithinDistance({
    Input_StreetWithinDistanceFieldInput? input,
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
  }) => Input_StreetFilterWithinDistance._({
    if (input != null) r'input': input,
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

  Input_StreetFilterWithinDistance._(this._$data);

  factory Input_StreetFilterWithinDistance.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_StreetWithinDistanceFieldInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
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
    return Input_StreetFilterWithinDistance._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetWithinDistanceFieldInput? get input =>
      (_$data['input'] as Input_StreetWithinDistanceFieldInput?);

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
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
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

  CopyWith_Input_StreetFilterWithinDistance<Input_StreetFilterWithinDistance>
  get copyWith => CopyWith_Input_StreetFilterWithinDistance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterWithinDistance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
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
    final l$input = input;
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
      _$data.containsKey('input') ? l$input : const {},
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

abstract class CopyWith_Input_StreetFilterWithinDistance<TRes> {
  factory CopyWith_Input_StreetFilterWithinDistance(
    Input_StreetFilterWithinDistance instance,
    TRes Function(Input_StreetFilterWithinDistance) then,
  ) = _CopyWithImpl_Input_StreetFilterWithinDistance;

  factory CopyWith_Input_StreetFilterWithinDistance.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterWithinDistance;

  TRes call({
    Input_StreetWithinDistanceFieldInput? input,
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
  CopyWith_Input_StreetWithinDistanceFieldInput<TRes> get input;
}

class _CopyWithImpl_Input_StreetFilterWithinDistance<TRes>
    implements CopyWith_Input_StreetFilterWithinDistance<TRes> {
  _CopyWithImpl_Input_StreetFilterWithinDistance(this._instance, this._then);

  final Input_StreetFilterWithinDistance _instance;

  final TRes Function(Input_StreetFilterWithinDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
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
    Input_StreetFilterWithinDistance._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input_StreetWithinDistanceFieldInput?),
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

  CopyWith_Input_StreetWithinDistanceFieldInput<TRes> get input {
    final local$input = _instance.input;
    return local$input == null
        ? CopyWith_Input_StreetWithinDistanceFieldInput.stub(_then(_instance))
        : CopyWith_Input_StreetWithinDistanceFieldInput(
            local$input,
            (e) => call(input: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetFilterWithinDistance<TRes>
    implements CopyWith_Input_StreetFilterWithinDistance<TRes> {
  _CopyWithStubImpl_Input_StreetFilterWithinDistance(this._res);

  TRes _res;

  call({
    Input_StreetWithinDistanceFieldInput? input,
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

  CopyWith_Input_StreetWithinDistanceFieldInput<TRes> get input =>
      CopyWith_Input_StreetWithinDistanceFieldInput.stub(_res);
}

class Input_StreetWithinPolygonFieldInput {
  factory Input_StreetWithinPolygonFieldInput({required Json polygon}) =>
      Input_StreetWithinPolygonFieldInput._({r'polygon': polygon});

  Input_StreetWithinPolygonFieldInput._(this._$data);

  factory Input_StreetWithinPolygonFieldInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$polygon = data['polygon'];
    result$data['polygon'] = (l$polygon as Json);
    return Input_StreetWithinPolygonFieldInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json get polygon => (_$data['polygon'] as Json);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$polygon = polygon;
    result$data['polygon'] = l$polygon;
    return result$data;
  }

  CopyWith_Input_StreetWithinPolygonFieldInput<
    Input_StreetWithinPolygonFieldInput
  >
  get copyWith => CopyWith_Input_StreetWithinPolygonFieldInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetWithinPolygonFieldInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != lOther$polygon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$polygon = polygon;
    return Object.hashAll([l$polygon]);
  }
}

abstract class CopyWith_Input_StreetWithinPolygonFieldInput<TRes> {
  factory CopyWith_Input_StreetWithinPolygonFieldInput(
    Input_StreetWithinPolygonFieldInput instance,
    TRes Function(Input_StreetWithinPolygonFieldInput) then,
  ) = _CopyWithImpl_Input_StreetWithinPolygonFieldInput;

  factory CopyWith_Input_StreetWithinPolygonFieldInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetWithinPolygonFieldInput;

  TRes call({Json? polygon});
}

class _CopyWithImpl_Input_StreetWithinPolygonFieldInput<TRes>
    implements CopyWith_Input_StreetWithinPolygonFieldInput<TRes> {
  _CopyWithImpl_Input_StreetWithinPolygonFieldInput(this._instance, this._then);

  final Input_StreetWithinPolygonFieldInput _instance;

  final TRes Function(Input_StreetWithinPolygonFieldInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? polygon = _undefined}) => _then(
    Input_StreetWithinPolygonFieldInput._({
      ..._instance._$data,
      if (polygon != _undefined && polygon != null)
        'polygon': (polygon as Json),
    }),
  );
}

class _CopyWithStubImpl_Input_StreetWithinPolygonFieldInput<TRes>
    implements CopyWith_Input_StreetWithinPolygonFieldInput<TRes> {
  _CopyWithStubImpl_Input_StreetWithinPolygonFieldInput(this._res);

  TRes _res;

  call({Json? polygon}) => _res;
}

class Input_StreetFilterWithinPolygon {
  factory Input_StreetFilterWithinPolygon({
    Input_StreetWithinPolygonFieldInput? input,
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
  }) => Input_StreetFilterWithinPolygon._({
    if (input != null) r'input': input,
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

  Input_StreetFilterWithinPolygon._(this._$data);

  factory Input_StreetFilterWithinPolygon.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_StreetWithinPolygonFieldInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
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
    return Input_StreetFilterWithinPolygon._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetWithinPolygonFieldInput? get input =>
      (_$data['input'] as Input_StreetWithinPolygonFieldInput?);

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
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
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

  CopyWith_Input_StreetFilterWithinPolygon<Input_StreetFilterWithinPolygon>
  get copyWith => CopyWith_Input_StreetFilterWithinPolygon(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterWithinPolygon ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
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
    final l$input = input;
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
      _$data.containsKey('input') ? l$input : const {},
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

abstract class CopyWith_Input_StreetFilterWithinPolygon<TRes> {
  factory CopyWith_Input_StreetFilterWithinPolygon(
    Input_StreetFilterWithinPolygon instance,
    TRes Function(Input_StreetFilterWithinPolygon) then,
  ) = _CopyWithImpl_Input_StreetFilterWithinPolygon;

  factory CopyWith_Input_StreetFilterWithinPolygon.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterWithinPolygon;

  TRes call({
    Input_StreetWithinPolygonFieldInput? input,
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
  CopyWith_Input_StreetWithinPolygonFieldInput<TRes> get input;
}

class _CopyWithImpl_Input_StreetFilterWithinPolygon<TRes>
    implements CopyWith_Input_StreetFilterWithinPolygon<TRes> {
  _CopyWithImpl_Input_StreetFilterWithinPolygon(this._instance, this._then);

  final Input_StreetFilterWithinPolygon _instance;

  final TRes Function(Input_StreetFilterWithinPolygon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
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
    Input_StreetFilterWithinPolygon._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input_StreetWithinPolygonFieldInput?),
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

  CopyWith_Input_StreetWithinPolygonFieldInput<TRes> get input {
    final local$input = _instance.input;
    return local$input == null
        ? CopyWith_Input_StreetWithinPolygonFieldInput.stub(_then(_instance))
        : CopyWith_Input_StreetWithinPolygonFieldInput(
            local$input,
            (e) => call(input: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetFilterWithinPolygon<TRes>
    implements CopyWith_Input_StreetFilterWithinPolygon<TRes> {
  _CopyWithStubImpl_Input_StreetFilterWithinPolygon(this._res);

  TRes _res;

  call({
    Input_StreetWithinPolygonFieldInput? input,
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

  CopyWith_Input_StreetWithinPolygonFieldInput<TRes> get input =>
      CopyWith_Input_StreetWithinPolygonFieldInput.stub(_res);
}

class Input_StreetFilterUserCanEdit {
  factory Input_StreetFilterUserCanEdit({
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
  }) => Input_StreetFilterUserCanEdit._({
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

  Input_StreetFilterUserCanEdit._(this._$data);

  factory Input_StreetFilterUserCanEdit.fromJson(Map<String, dynamic> data) {
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
    return Input_StreetFilterUserCanEdit._(result$data);
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

  CopyWith_Input_StreetFilterUserCanEdit<Input_StreetFilterUserCanEdit>
  get copyWith => CopyWith_Input_StreetFilterUserCanEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterUserCanEdit ||
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

abstract class CopyWith_Input_StreetFilterUserCanEdit<TRes> {
  factory CopyWith_Input_StreetFilterUserCanEdit(
    Input_StreetFilterUserCanEdit instance,
    TRes Function(Input_StreetFilterUserCanEdit) then,
  ) = _CopyWithImpl_Input_StreetFilterUserCanEdit;

  factory CopyWith_Input_StreetFilterUserCanEdit.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterUserCanEdit;

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

class _CopyWithImpl_Input_StreetFilterUserCanEdit<TRes>
    implements CopyWith_Input_StreetFilterUserCanEdit<TRes> {
  _CopyWithImpl_Input_StreetFilterUserCanEdit(this._instance, this._then);

  final Input_StreetFilterUserCanEdit _instance;

  final TRes Function(Input_StreetFilterUserCanEdit) _then;

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
    Input_StreetFilterUserCanEdit._({
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

class _CopyWithStubImpl_Input_StreetFilterUserCanEdit<TRes>
    implements CopyWith_Input_StreetFilterUserCanEdit<TRes> {
  _CopyWithStubImpl_Input_StreetFilterUserCanEdit(this._res);

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

class Input_StreetFilterLastVisitUserName {
  factory Input_StreetFilterLastVisitUserName({
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
  }) => Input_StreetFilterLastVisitUserName._({
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

  Input_StreetFilterLastVisitUserName._(this._$data);

  factory Input_StreetFilterLastVisitUserName.fromJson(
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
    return Input_StreetFilterLastVisitUserName._(result$data);
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

  CopyWith_Input_StreetFilterLastVisitUserName<
    Input_StreetFilterLastVisitUserName
  >
  get copyWith => CopyWith_Input_StreetFilterLastVisitUserName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterLastVisitUserName ||
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
