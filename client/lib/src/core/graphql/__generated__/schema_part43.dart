// Part 43 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_StoreFilterInput<TRes> {
  factory CopyWith_Input_StoreFilterInput(
    Input_StoreFilterInput instance,
    TRes Function(Input_StoreFilterInput) then,
  ) = _CopyWithImpl_Input_StoreFilterInput;

  factory CopyWith_Input_StoreFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoreFilterInput;

  TRes call({
    List<Input_StoreFilterInput>? and,
    List<Input_StoreFilterInput>? or,
    List<Input_StoreFilterInput>? not,
    Input_StoreFilterId? id,
    Input_StoreFilterName? name,
    Input_StoreFilterAdminFamilyId? adminFamilyId,
    Input_StoreFilterColor? color,
    Input_StoreFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StoreFilterBlurhash? blurhash,
    Input_FamilyFilterInput? adminFamily,
    Input_AddressFilterInput? address,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StoreFilterAddressAreaName? addressAreaName,
    Input_StoreFilterAddressStreetName? addressStreetName,
    Input_StoreFilterAddressDistrictName? addressDistrictName,
    Input_StoreFilterAddressFullAddressText? addressFullAddressText,
    Input_StoreFilterAdminFamilyName? adminFamilyName,
    Input_StoreFilterLastEdit? lastEdit,
    Input_StoreFilterLastEditUserName? lastEditUserName,
    Input_StoreFilterUserCanEdit? userCanEdit,
    Input_StoreFilterWithinPolygon? withinPolygon,
  });
  TRes and(
    Iterable<Input_StoreFilterInput>? Function(
      Iterable<CopyWith_Input_StoreFilterInput<Input_StoreFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_StoreFilterInput>? Function(
      Iterable<CopyWith_Input_StoreFilterInput<Input_StoreFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_StoreFilterInput>? Function(
      Iterable<CopyWith_Input_StoreFilterInput<Input_StoreFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_StoreFilterId<TRes> get id;
  CopyWith_Input_StoreFilterName<TRes> get name;
  CopyWith_Input_StoreFilterAdminFamilyId<TRes> get adminFamilyId;
  CopyWith_Input_StoreFilterColor<TRes> get color;
  CopyWith_Input_StoreFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_StoreFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_FamilyFilterInput<TRes> get adminFamily;
  CopyWith_Input_AddressFilterInput<TRes> get address;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_EditFilterInput<TRes> get edits;
  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit;
  CopyWith_Input_VisitFilterInput<TRes> get visits;
  CopyWith_Input_StoreFilterAddressAreaName<TRes> get addressAreaName;
  CopyWith_Input_StoreFilterAddressStreetName<TRes> get addressStreetName;
  CopyWith_Input_StoreFilterAddressDistrictName<TRes> get addressDistrictName;
  CopyWith_Input_StoreFilterAddressFullAddressText<TRes>
  get addressFullAddressText;
  CopyWith_Input_StoreFilterAdminFamilyName<TRes> get adminFamilyName;
  CopyWith_Input_StoreFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_StoreFilterLastEditUserName<TRes> get lastEditUserName;
  CopyWith_Input_StoreFilterUserCanEdit<TRes> get userCanEdit;
  CopyWith_Input_StoreFilterWithinPolygon<TRes> get withinPolygon;
}

class _CopyWithImpl_Input_StoreFilterInput<TRes>
    implements CopyWith_Input_StoreFilterInput<TRes> {
  _CopyWithImpl_Input_StoreFilterInput(this._instance, this._then);

  final Input_StoreFilterInput _instance;

  final TRes Function(Input_StoreFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? adminFamilyId = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? adminFamily = _undefined,
    Object? address = _undefined,
    Object? latestEdit = _undefined,
    Object? edits = _undefined,
    Object? latestVisit = _undefined,
    Object? visits = _undefined,
    Object? addressAreaName = _undefined,
    Object? addressStreetName = _undefined,
    Object? addressDistrictName = _undefined,
    Object? addressFullAddressText = _undefined,
    Object? adminFamilyName = _undefined,
    Object? lastEdit = _undefined,
    Object? lastEditUserName = _undefined,
    Object? userCanEdit = _undefined,
    Object? withinPolygon = _undefined,
  }) => _then(
    Input_StoreFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_StoreFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_StoreFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_StoreFilterInput>?),
      if (id != _undefined) 'id': (id as Input_StoreFilterId?),
      if (name != _undefined) 'name': (name as Input_StoreFilterName?),
      if (adminFamilyId != _undefined)
        'adminFamilyId': (adminFamilyId as Input_StoreFilterAdminFamilyId?),
      if (color != _undefined) 'color': (color as Input_StoreFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_StoreFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StoreFilterBlurhash?),
      if (adminFamily != _undefined)
        'adminFamily': (adminFamily as Input_FamilyFilterInput?),
      if (address != _undefined)
        'address': (address as Input_AddressFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (edits != _undefined) 'edits': (edits as Input_EditFilterInput?),
      if (latestVisit != _undefined)
        'latestVisit': (latestVisit as Input_LatestVisitFilterInput?),
      if (visits != _undefined) 'visits': (visits as Input_VisitFilterInput?),
      if (addressAreaName != _undefined)
        'addressAreaName':
            (addressAreaName as Input_StoreFilterAddressAreaName?),
      if (addressStreetName != _undefined)
        'addressStreetName':
            (addressStreetName as Input_StoreFilterAddressStreetName?),
      if (addressDistrictName != _undefined)
        'addressDistrictName':
            (addressDistrictName as Input_StoreFilterAddressDistrictName?),
      if (addressFullAddressText != _undefined)
        'addressFullAddressText':
            (addressFullAddressText
                as Input_StoreFilterAddressFullAddressText?),
      if (adminFamilyName != _undefined)
        'adminFamilyName':
            (adminFamilyName as Input_StoreFilterAdminFamilyName?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_StoreFilterLastEdit?),
      if (lastEditUserName != _undefined)
        'lastEditUserName':
            (lastEditUserName as Input_StoreFilterLastEditUserName?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_StoreFilterUserCanEdit?),
      if (withinPolygon != _undefined)
        'withinPolygon': (withinPolygon as Input_StoreFilterWithinPolygon?),
    }),
  );

  TRes and(
    Iterable<Input_StoreFilterInput>? Function(
      Iterable<CopyWith_Input_StoreFilterInput<Input_StoreFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_StoreFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_StoreFilterInput>? Function(
      Iterable<CopyWith_Input_StoreFilterInput<Input_StoreFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_StoreFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_StoreFilterInput>? Function(
      Iterable<CopyWith_Input_StoreFilterInput<Input_StoreFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_StoreFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_StoreFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_StoreFilterId.stub(_then(_instance))
        : CopyWith_Input_StoreFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StoreFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StoreFilterName.stub(_then(_instance))
        : CopyWith_Input_StoreFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_StoreFilterAdminFamilyId<TRes> get adminFamilyId {
    final local$adminFamilyId = _instance.adminFamilyId;
    return local$adminFamilyId == null
        ? CopyWith_Input_StoreFilterAdminFamilyId.stub(_then(_instance))
        : CopyWith_Input_StoreFilterAdminFamilyId(
            local$adminFamilyId,
            (e) => call(adminFamilyId: e),
          );
  }

  CopyWith_Input_StoreFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_StoreFilterColor.stub(_then(_instance))
        : CopyWith_Input_StoreFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_StoreFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_StoreFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_StoreFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_StoreFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StoreFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_StoreFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get adminFamily {
    final local$adminFamily = _instance.adminFamily;
    return local$adminFamily == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$adminFamily,
            (e) => call(adminFamily: e),
          );
  }

  CopyWith_Input_AddressFilterInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressFilterInput.stub(_then(_instance))
        : CopyWith_Input_AddressFilterInput(
            local$address,
            (e) => call(address: e),
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

  CopyWith_Input_EditFilterInput<TRes> get edits {
    final local$edits = _instance.edits;
    return local$edits == null
        ? CopyWith_Input_EditFilterInput.stub(_then(_instance))
        : CopyWith_Input_EditFilterInput(local$edits, (e) => call(edits: e));
  }

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Input_LatestVisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestVisitFilterInput(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Input_VisitFilterInput<TRes> get visits {
    final local$visits = _instance.visits;
    return local$visits == null
        ? CopyWith_Input_VisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_VisitFilterInput(local$visits, (e) => call(visits: e));
  }

  CopyWith_Input_StoreFilterAddressAreaName<TRes> get addressAreaName {
    final local$addressAreaName = _instance.addressAreaName;
    return local$addressAreaName == null
        ? CopyWith_Input_StoreFilterAddressAreaName.stub(_then(_instance))
        : CopyWith_Input_StoreFilterAddressAreaName(
            local$addressAreaName,
            (e) => call(addressAreaName: e),
          );
  }

  CopyWith_Input_StoreFilterAddressStreetName<TRes> get addressStreetName {
    final local$addressStreetName = _instance.addressStreetName;
    return local$addressStreetName == null
        ? CopyWith_Input_StoreFilterAddressStreetName.stub(_then(_instance))
        : CopyWith_Input_StoreFilterAddressStreetName(
            local$addressStreetName,
            (e) => call(addressStreetName: e),
          );
  }

  CopyWith_Input_StoreFilterAddressDistrictName<TRes> get addressDistrictName {
    final local$addressDistrictName = _instance.addressDistrictName;
    return local$addressDistrictName == null
        ? CopyWith_Input_StoreFilterAddressDistrictName.stub(_then(_instance))
        : CopyWith_Input_StoreFilterAddressDistrictName(
            local$addressDistrictName,
            (e) => call(addressDistrictName: e),
          );
  }

  CopyWith_Input_StoreFilterAddressFullAddressText<TRes>
  get addressFullAddressText {
    final local$addressFullAddressText = _instance.addressFullAddressText;
    return local$addressFullAddressText == null
        ? CopyWith_Input_StoreFilterAddressFullAddressText.stub(
            _then(_instance),
          )
        : CopyWith_Input_StoreFilterAddressFullAddressText(
            local$addressFullAddressText,
            (e) => call(addressFullAddressText: e),
          );
  }

  CopyWith_Input_StoreFilterAdminFamilyName<TRes> get adminFamilyName {
    final local$adminFamilyName = _instance.adminFamilyName;
    return local$adminFamilyName == null
        ? CopyWith_Input_StoreFilterAdminFamilyName.stub(_then(_instance))
        : CopyWith_Input_StoreFilterAdminFamilyName(
            local$adminFamilyName,
            (e) => call(adminFamilyName: e),
          );
  }

  CopyWith_Input_StoreFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_StoreFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_StoreFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_StoreFilterLastEditUserName<TRes> get lastEditUserName {
    final local$lastEditUserName = _instance.lastEditUserName;
    return local$lastEditUserName == null
        ? CopyWith_Input_StoreFilterLastEditUserName.stub(_then(_instance))
        : CopyWith_Input_StoreFilterLastEditUserName(
            local$lastEditUserName,
            (e) => call(lastEditUserName: e),
          );
  }

  CopyWith_Input_StoreFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_StoreFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_StoreFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }

  CopyWith_Input_StoreFilterWithinPolygon<TRes> get withinPolygon {
    final local$withinPolygon = _instance.withinPolygon;
    return local$withinPolygon == null
        ? CopyWith_Input_StoreFilterWithinPolygon.stub(_then(_instance))
        : CopyWith_Input_StoreFilterWithinPolygon(
            local$withinPolygon,
            (e) => call(withinPolygon: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoreFilterInput<TRes>
    implements CopyWith_Input_StoreFilterInput<TRes> {
  _CopyWithStubImpl_Input_StoreFilterInput(this._res);

  TRes _res;

  call({
    List<Input_StoreFilterInput>? and,
    List<Input_StoreFilterInput>? or,
    List<Input_StoreFilterInput>? not,
    Input_StoreFilterId? id,
    Input_StoreFilterName? name,
    Input_StoreFilterAdminFamilyId? adminFamilyId,
    Input_StoreFilterColor? color,
    Input_StoreFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StoreFilterBlurhash? blurhash,
    Input_FamilyFilterInput? adminFamily,
    Input_AddressFilterInput? address,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StoreFilterAddressAreaName? addressAreaName,
    Input_StoreFilterAddressStreetName? addressStreetName,
    Input_StoreFilterAddressDistrictName? addressDistrictName,
    Input_StoreFilterAddressFullAddressText? addressFullAddressText,
    Input_StoreFilterAdminFamilyName? adminFamilyName,
    Input_StoreFilterLastEdit? lastEdit,
    Input_StoreFilterLastEditUserName? lastEditUserName,
    Input_StoreFilterUserCanEdit? userCanEdit,
    Input_StoreFilterWithinPolygon? withinPolygon,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_StoreFilterId<TRes> get id =>
      CopyWith_Input_StoreFilterId.stub(_res);

  CopyWith_Input_StoreFilterName<TRes> get name =>
      CopyWith_Input_StoreFilterName.stub(_res);

  CopyWith_Input_StoreFilterAdminFamilyId<TRes> get adminFamilyId =>
      CopyWith_Input_StoreFilterAdminFamilyId.stub(_res);

  CopyWith_Input_StoreFilterColor<TRes> get color =>
      CopyWith_Input_StoreFilterColor.stub(_res);

  CopyWith_Input_StoreFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_StoreFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_StoreFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_StoreFilterBlurhash.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get adminFamily =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get address =>
      CopyWith_Input_AddressFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_EditFilterInput<TRes> get edits =>
      CopyWith_Input_EditFilterInput.stub(_res);

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit =>
      CopyWith_Input_LatestVisitFilterInput.stub(_res);

  CopyWith_Input_VisitFilterInput<TRes> get visits =>
      CopyWith_Input_VisitFilterInput.stub(_res);

  CopyWith_Input_StoreFilterAddressAreaName<TRes> get addressAreaName =>
      CopyWith_Input_StoreFilterAddressAreaName.stub(_res);

  CopyWith_Input_StoreFilterAddressStreetName<TRes> get addressStreetName =>
      CopyWith_Input_StoreFilterAddressStreetName.stub(_res);

  CopyWith_Input_StoreFilterAddressDistrictName<TRes> get addressDistrictName =>
      CopyWith_Input_StoreFilterAddressDistrictName.stub(_res);

  CopyWith_Input_StoreFilterAddressFullAddressText<TRes>
  get addressFullAddressText =>
      CopyWith_Input_StoreFilterAddressFullAddressText.stub(_res);

  CopyWith_Input_StoreFilterAdminFamilyName<TRes> get adminFamilyName =>
      CopyWith_Input_StoreFilterAdminFamilyName.stub(_res);

  CopyWith_Input_StoreFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_StoreFilterLastEdit.stub(_res);

  CopyWith_Input_StoreFilterLastEditUserName<TRes> get lastEditUserName =>
      CopyWith_Input_StoreFilterLastEditUserName.stub(_res);

  CopyWith_Input_StoreFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_StoreFilterUserCanEdit.stub(_res);

  CopyWith_Input_StoreFilterWithinPolygon<TRes> get withinPolygon =>
      CopyWith_Input_StoreFilterWithinPolygon.stub(_res);
}

class Input_StoreSortInput {
  factory Input_StoreSortInput({
    Enum_SortOrder? order,
    required Enum_StoreSortField field,
    Input_StoreWithinPolygonFieldInput? withinPolygonInput,
  }) => Input_StoreSortInput._({
    if (order != null) r'order': order,
    r'field': field,
    if (withinPolygonInput != null) r'withinPolygonInput': withinPolygonInput,
  });

  Input_StoreSortInput._(this._$data);

  factory Input_StoreSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_StoreSortField((l$field as String));
    if (data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = data['withinPolygonInput'];
      result$data['withinPolygonInput'] = l$withinPolygonInput == null
          ? null
          : Input_StoreWithinPolygonFieldInput.fromJson(
              (l$withinPolygonInput as Map<String, dynamic>),
            );
    }
    return Input_StoreSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_StoreSortField get field => (_$data['field'] as Enum_StoreSortField);

  Input_StoreWithinPolygonFieldInput? get withinPolygonInput =>
      (_$data['withinPolygonInput'] as Input_StoreWithinPolygonFieldInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_StoreSortField(l$field);
    if (_$data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = withinPolygonInput;
      result$data['withinPolygonInput'] = l$withinPolygonInput?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StoreSortInput<Input_StoreSortInput> get copyWith =>
      CopyWith_Input_StoreSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StoreSortInput || runtimeType != other.runtimeType) {
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
    final l$withinPolygonInput = withinPolygonInput;
    final lOther$withinPolygonInput = other.withinPolygonInput;
    if (_$data.containsKey('withinPolygonInput') !=
        other._$data.containsKey('withinPolygonInput')) {
      return false;
    }
    if (l$withinPolygonInput != lOther$withinPolygonInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    final l$withinPolygonInput = withinPolygonInput;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
      _$data.containsKey('withinPolygonInput')
          ? l$withinPolygonInput
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_StoreSortInput<TRes> {
  factory CopyWith_Input_StoreSortInput(
    Input_StoreSortInput instance,
    TRes Function(Input_StoreSortInput) then,
  ) = _CopyWithImpl_Input_StoreSortInput;

  factory CopyWith_Input_StoreSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StoreSortInput;

  TRes call({
    Enum_SortOrder? order,
    Enum_StoreSortField? field,
    Input_StoreWithinPolygonFieldInput? withinPolygonInput,
  });
  CopyWith_Input_StoreWithinPolygonFieldInput<TRes> get withinPolygonInput;
}

class _CopyWithImpl_Input_StoreSortInput<TRes>
    implements CopyWith_Input_StoreSortInput<TRes> {
  _CopyWithImpl_Input_StoreSortInput(this._instance, this._then);

  final Input_StoreSortInput _instance;

  final TRes Function(Input_StoreSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? field = _undefined,
    Object? withinPolygonInput = _undefined,
  }) => _then(
    Input_StoreSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_StoreSortField),
      if (withinPolygonInput != _undefined)
        'withinPolygonInput':
            (withinPolygonInput as Input_StoreWithinPolygonFieldInput?),
    }),
  );

  CopyWith_Input_StoreWithinPolygonFieldInput<TRes> get withinPolygonInput {
    final local$withinPolygonInput = _instance.withinPolygonInput;
    return local$withinPolygonInput == null
        ? CopyWith_Input_StoreWithinPolygonFieldInput.stub(_then(_instance))
        : CopyWith_Input_StoreWithinPolygonFieldInput(
            local$withinPolygonInput,
            (e) => call(withinPolygonInput: e),
          );
  }
}

class _CopyWithStubImpl_Input_StoreSortInput<TRes>
    implements CopyWith_Input_StoreSortInput<TRes> {
  _CopyWithStubImpl_Input_StoreSortInput(this._res);

  TRes _res;

  call({
    Enum_SortOrder? order,
    Enum_StoreSortField? field,
    Input_StoreWithinPolygonFieldInput? withinPolygonInput,
  }) => _res;

  CopyWith_Input_StoreWithinPolygonFieldInput<TRes> get withinPolygonInput =>
      CopyWith_Input_StoreWithinPolygonFieldInput.stub(_res);
}

class Input_CreateDistrictInput {
  factory Input_CreateDistrictInput({required String name}) =>
      Input_CreateDistrictInput._({r'name': name});

  Input_CreateDistrictInput._(this._$data);

  factory Input_CreateDistrictInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input_CreateDistrictInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith_Input_CreateDistrictInput<Input_CreateDistrictInput> get copyWith =>
      CopyWith_Input_CreateDistrictInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateDistrictInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith_Input_CreateDistrictInput<TRes> {
  factory CopyWith_Input_CreateDistrictInput(
    Input_CreateDistrictInput instance,
    TRes Function(Input_CreateDistrictInput) then,
  ) = _CopyWithImpl_Input_CreateDistrictInput;

  factory CopyWith_Input_CreateDistrictInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateDistrictInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_CreateDistrictInput<TRes>
    implements CopyWith_Input_CreateDistrictInput<TRes> {
  _CopyWithImpl_Input_CreateDistrictInput(this._instance, this._then);

  final Input_CreateDistrictInput _instance;

  final TRes Function(Input_CreateDistrictInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_CreateDistrictInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
    }),
  );
}

class _CopyWithStubImpl_Input_CreateDistrictInput<TRes>
    implements CopyWith_Input_CreateDistrictInput<TRes> {
  _CopyWithStubImpl_Input_CreateDistrictInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_DistrictFilterName {
  factory Input_DistrictFilterName({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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
  }) => Input_DistrictFilterName._({
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

  Input_DistrictFilterName._(this._$data);

  factory Input_DistrictFilterName.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String))
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
    return Input_DistrictFilterName._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

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

  CopyWith_Input_DistrictFilterName<Input_DistrictFilterName> get copyWith =>
      CopyWith_Input_DistrictFilterName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictFilterName ||
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

abstract class CopyWith_Input_DistrictFilterName<TRes> {
  factory CopyWith_Input_DistrictFilterName(
    Input_DistrictFilterName instance,
    TRes Function(Input_DistrictFilterName) then,
  ) = _CopyWithImpl_Input_DistrictFilterName;

  factory CopyWith_Input_DistrictFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictFilterName;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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
  });
}

class _CopyWithImpl_Input_DistrictFilterName<TRes>
    implements CopyWith_Input_DistrictFilterName<TRes> {
  _CopyWithImpl_Input_DistrictFilterName(this._instance, this._then);

  final Input_DistrictFilterName _instance;

  final TRes Function(Input_DistrictFilterName) _then;

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
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_DistrictFilterName._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictFilterName<TRes>
    implements CopyWith_Input_DistrictFilterName<TRes> {
  _CopyWithStubImpl_Input_DistrictFilterName(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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
  }) => _res;
}

class Input_DistrictFilterId {
  factory Input_DistrictFilterId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_DistrictFilterId._({
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

  Input_DistrictFilterId._(this._$data);

  factory Input_DistrictFilterId.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String))
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_DistrictFilterId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

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

  CopyWith_Input_DistrictFilterId<Input_DistrictFilterId> get copyWith =>
      CopyWith_Input_DistrictFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictFilterId || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictFilterId<TRes> {
  factory CopyWith_Input_DistrictFilterId(
    Input_DistrictFilterId instance,
    TRes Function(Input_DistrictFilterId) then,
  ) = _CopyWithImpl_Input_DistrictFilterId;

  factory CopyWith_Input_DistrictFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictFilterId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_DistrictFilterId<TRes>
    implements CopyWith_Input_DistrictFilterId<TRes> {
  _CopyWithImpl_Input_DistrictFilterId(this._instance, this._then);

  final Input_DistrictFilterId _instance;

  final TRes Function(Input_DistrictFilterId) _then;

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
    Input_DistrictFilterId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictFilterId<TRes>
    implements CopyWith_Input_DistrictFilterId<TRes> {
  _CopyWithStubImpl_Input_DistrictFilterId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_DistrictFilterInput {
  factory Input_DistrictFilterInput({
    List<Input_DistrictFilterInput>? and,
    List<Input_DistrictFilterInput>? or,
    List<Input_DistrictFilterInput>? not,
    Input_DistrictFilterId? id,
    Input_DistrictFilterName? name,
    Input_AddressFilterInput? addresses,
  }) => Input_DistrictFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (addresses != null) r'addresses': addresses,
  });

  Input_DistrictFilterInput._(this._$data);

  factory Input_DistrictFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DistrictFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DistrictFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_DistrictFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_DistrictFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_DistrictFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = l$addresses == null
          ? null
          : Input_AddressFilterInput.fromJson(
              (l$addresses as Map<String, dynamic>),
            );
    }
    return Input_DistrictFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DistrictFilterInput>? get and =>
      (_$data['and'] as List<Input_DistrictFilterInput>?);

  List<Input_DistrictFilterInput>? get or =>
      (_$data['or'] as List<Input_DistrictFilterInput>?);

  List<Input_DistrictFilterInput>? get not =>
      (_$data['not'] as List<Input_DistrictFilterInput>?);

  Input_DistrictFilterId? get id => (_$data['id'] as Input_DistrictFilterId?);

  Input_DistrictFilterName? get name =>
      (_$data['name'] as Input_DistrictFilterName?);

  Input_AddressFilterInput? get addresses =>
      (_$data['addresses'] as Input_AddressFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput> get copyWith =>
      CopyWith_Input_DistrictFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (_$data.containsKey('addresses') !=
        other._$data.containsKey('addresses')) {
      return false;
    }
    if (l$addresses != lOther$addresses) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$name = name;
    final l$addresses = addresses;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('addresses') ? l$addresses : const {},
    ]);
  }
}

abstract class CopyWith_Input_DistrictFilterInput<TRes> {
  factory CopyWith_Input_DistrictFilterInput(
    Input_DistrictFilterInput instance,
    TRes Function(Input_DistrictFilterInput) then,
  ) = _CopyWithImpl_Input_DistrictFilterInput;

  factory CopyWith_Input_DistrictFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictFilterInput;

  TRes call({
    List<Input_DistrictFilterInput>? and,
    List<Input_DistrictFilterInput>? or,
    List<Input_DistrictFilterInput>? not,
    Input_DistrictFilterId? id,
    Input_DistrictFilterName? name,
    Input_AddressFilterInput? addresses,
  });
  TRes and(
    Iterable<Input_DistrictFilterInput>? Function(
      Iterable<CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_DistrictFilterInput>? Function(
      Iterable<CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_DistrictFilterInput>? Function(
      Iterable<CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_DistrictFilterId<TRes> get id;
  CopyWith_Input_DistrictFilterName<TRes> get name;
  CopyWith_Input_AddressFilterInput<TRes> get addresses;
}

class _CopyWithImpl_Input_DistrictFilterInput<TRes>
    implements CopyWith_Input_DistrictFilterInput<TRes> {
  _CopyWithImpl_Input_DistrictFilterInput(this._instance, this._then);

  final Input_DistrictFilterInput _instance;

  final TRes Function(Input_DistrictFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? addresses = _undefined,
  }) => _then(
    Input_DistrictFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_DistrictFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_DistrictFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_DistrictFilterInput>?),
      if (id != _undefined) 'id': (id as Input_DistrictFilterId?),
      if (name != _undefined) 'name': (name as Input_DistrictFilterName?),
      if (addresses != _undefined)
        'addresses': (addresses as Input_AddressFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_DistrictFilterInput>? Function(
      Iterable<CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_DistrictFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_DistrictFilterInput>? Function(
      Iterable<CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_DistrictFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_DistrictFilterInput>? Function(
      Iterable<CopyWith_Input_DistrictFilterInput<Input_DistrictFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_DistrictFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DistrictFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_DistrictFilterId.stub(_then(_instance))
        : CopyWith_Input_DistrictFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_DistrictFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_DistrictFilterName.stub(_then(_instance))
        : CopyWith_Input_DistrictFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_AddressFilterInput<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressFilterInput.stub(_then(_instance))
        : CopyWith_Input_AddressFilterInput(
            local$addresses,
            (e) => call(addresses: e),
          );
  }
}

class _CopyWithStubImpl_Input_DistrictFilterInput<TRes>
    implements CopyWith_Input_DistrictFilterInput<TRes> {
  _CopyWithStubImpl_Input_DistrictFilterInput(this._res);

  TRes _res;

  call({
    List<Input_DistrictFilterInput>? and,
    List<Input_DistrictFilterInput>? or,
    List<Input_DistrictFilterInput>? not,
    Input_DistrictFilterId? id,
    Input_DistrictFilterName? name,
    Input_AddressFilterInput? addresses,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_DistrictFilterId<TRes> get id =>
      CopyWith_Input_DistrictFilterId.stub(_res);

  CopyWith_Input_DistrictFilterName<TRes> get name =>
      CopyWith_Input_DistrictFilterName.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get addresses =>
      CopyWith_Input_AddressFilterInput.stub(_res);
}

class Input_DistrictSortInput {
  factory Input_DistrictSortInput({
    Enum_SortOrder? order,
    required Enum_DistrictSortField field,
  }) => Input_DistrictSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_DistrictSortInput._(this._$data);

  factory Input_DistrictSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_DistrictSortField((l$field as String));
    return Input_DistrictSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_DistrictSortField get field =>
      (_$data['field'] as Enum_DistrictSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_DistrictSortField(l$field);
    return result$data;
  }

  CopyWith_Input_DistrictSortInput<Input_DistrictSortInput> get copyWith =>
      CopyWith_Input_DistrictSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictSortInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictSortInput<TRes> {
  factory CopyWith_Input_DistrictSortInput(
    Input_DistrictSortInput instance,
    TRes Function(Input_DistrictSortInput) then,
  ) = _CopyWithImpl_Input_DistrictSortInput;

  factory CopyWith_Input_DistrictSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictSortInput;

  TRes call({Enum_SortOrder? order, Enum_DistrictSortField? field});
}

class _CopyWithImpl_Input_DistrictSortInput<TRes>
    implements CopyWith_Input_DistrictSortInput<TRes> {
  _CopyWithImpl_Input_DistrictSortInput(this._instance, this._then);

  final Input_DistrictSortInput _instance;

  final TRes Function(Input_DistrictSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_DistrictSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_DistrictSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictSortInput<TRes>
    implements CopyWith_Input_DistrictSortInput<TRes> {
  _CopyWithStubImpl_Input_DistrictSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_DistrictSortField? field}) => _res;
}

class Input_AreaStreetFilterStreetId {
  factory Input_AreaStreetFilterStreetId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_AreaStreetFilterStreetId._({
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

  Input_AreaStreetFilterStreetId._(this._$data);

  factory Input_AreaStreetFilterStreetId.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String))
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_AreaStreetFilterStreetId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

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

  CopyWith_Input_AreaStreetFilterStreetId<Input_AreaStreetFilterStreetId>
  get copyWith => CopyWith_Input_AreaStreetFilterStreetId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaStreetFilterStreetId ||
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

abstract class CopyWith_Input_AreaStreetFilterStreetId<TRes> {
  factory CopyWith_Input_AreaStreetFilterStreetId(
    Input_AreaStreetFilterStreetId instance,
    TRes Function(Input_AreaStreetFilterStreetId) then,
  ) = _CopyWithImpl_Input_AreaStreetFilterStreetId;

  factory CopyWith_Input_AreaStreetFilterStreetId.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaStreetFilterStreetId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AreaStreetFilterStreetId<TRes>
    implements CopyWith_Input_AreaStreetFilterStreetId<TRes> {
  _CopyWithImpl_Input_AreaStreetFilterStreetId(this._instance, this._then);

  final Input_AreaStreetFilterStreetId _instance;

  final TRes Function(Input_AreaStreetFilterStreetId) _then;

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
    Input_AreaStreetFilterStreetId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaStreetFilterStreetId<TRes>
    implements CopyWith_Input_AreaStreetFilterStreetId<TRes> {
  _CopyWithStubImpl_Input_AreaStreetFilterStreetId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_AreaStreetFilterAreaId {
  factory Input_AreaStreetFilterAreaId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_AreaStreetFilterAreaId._({
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

  Input_AreaStreetFilterAreaId._(this._$data);

  factory Input_AreaStreetFilterAreaId.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String))
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_AreaStreetFilterAreaId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

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

  CopyWith_Input_AreaStreetFilterAreaId<Input_AreaStreetFilterAreaId>
  get copyWith => CopyWith_Input_AreaStreetFilterAreaId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaStreetFilterAreaId ||
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
