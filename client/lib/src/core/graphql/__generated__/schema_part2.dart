// Part 2 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AddressesInsertInput<TRes> {
  factory CopyWith_Input_AddressesInsertInput(
    Input_AddressesInsertInput instance,
    TRes Function(Input_AddressesInsertInput) then,
  ) = _CopyWithImpl_Input_AddressesInsertInput;

  factory CopyWith_Input_AddressesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesInsertInput;

  TRes call({
    int? apartmentNumber,
    Input_AreasObjRelInsertInput? area,
    UuidValue? areaId,
    String? countryIsoCode,
    Input_DistrictsObjRelInsertInput? district,
    UuidValue? districtId,
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    String? specialLandmark,
    Input_StoresObjRelInsertInput? store,
    UuidValue? storeId,
    int? storeyNumber,
    Input_StreetsObjRelInsertInput? street,
    UuidValue? streetId,
    String? substreetName,
  });
  CopyWith_Input_AreasObjRelInsertInput<TRes> get area;
  CopyWith_Input_DistrictsObjRelInsertInput<TRes> get district;
  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family;
  CopyWith_Input_StoresObjRelInsertInput<TRes> get store;
  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street;
}

class _CopyWithImpl_Input_AddressesInsertInput<TRes>
    implements CopyWith_Input_AddressesInsertInput<TRes> {
  _CopyWithImpl_Input_AddressesInsertInput(this._instance, this._then);

  final Input_AddressesInsertInput _instance;

  final TRes Function(Input_AddressesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? district = _undefined,
    Object? districtId = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? geolocation = _undefined,
    Object? houseNumber = _undefined,
    Object? specialLandmark = _undefined,
    Object? store = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesInsertInput._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as int?),
      if (area != _undefined) 'area': (area as Input_AreasObjRelInsertInput?),
      if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as String?),
      if (district != _undefined)
        'district': (district as Input_DistrictsObjRelInsertInput?),
      if (districtId != _undefined) 'districtId': (districtId as UuidValue?),
      if (family != _undefined)
        'family': (family as Input_FamiliesObjRelInsertInput?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (geolocation != _undefined)
        'geolocation': (geolocation as Map<String, dynamic>?),
      if (houseNumber != _undefined) 'houseNumber': (houseNumber as int?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as String?),
      if (store != _undefined)
        'store': (store as Input_StoresObjRelInsertInput?),
      if (storeId != _undefined) 'storeId': (storeId as UuidValue?),
      if (storeyNumber != _undefined) 'storeyNumber': (storeyNumber as int?),
      if (street != _undefined)
        'street': (street as Input_StreetsObjRelInsertInput?),
      if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as String?),
    }),
  );

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_AreasObjRelInsertInput(
            local$area,
            (e) => call(area: e),
          );
  }

  CopyWith_Input_DistrictsObjRelInsertInput<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Input_DistrictsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_DistrictsObjRelInsertInput(
            local$district,
            (e) => call(district: e),
          );
  }

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesObjRelInsertInput(
            local$family,
            (e) => call(family: e),
          );
  }

  CopyWith_Input_StoresObjRelInsertInput<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoresObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StoresObjRelInsertInput(
            local$store,
            (e) => call(store: e),
          );
  }

  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StreetsObjRelInsertInput(
            local$street,
            (e) => call(street: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressesInsertInput<TRes>
    implements CopyWith_Input_AddressesInsertInput<TRes> {
  _CopyWithStubImpl_Input_AddressesInsertInput(this._res);

  TRes _res;

  call({
    int? apartmentNumber,
    Input_AreasObjRelInsertInput? area,
    UuidValue? areaId,
    String? countryIsoCode,
    Input_DistrictsObjRelInsertInput? district,
    UuidValue? districtId,
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    String? specialLandmark,
    Input_StoresObjRelInsertInput? store,
    UuidValue? storeId,
    int? storeyNumber,
    Input_StreetsObjRelInsertInput? street,
    UuidValue? streetId,
    String? substreetName,
  }) => _res;

  CopyWith_Input_AreasObjRelInsertInput<TRes> get area =>
      CopyWith_Input_AreasObjRelInsertInput.stub(_res);

  CopyWith_Input_DistrictsObjRelInsertInput<TRes> get district =>
      CopyWith_Input_DistrictsObjRelInsertInput.stub(_res);

  CopyWith_Input_FamiliesObjRelInsertInput<TRes> get family =>
      CopyWith_Input_FamiliesObjRelInsertInput.stub(_res);

  CopyWith_Input_StoresObjRelInsertInput<TRes> get store =>
      CopyWith_Input_StoresObjRelInsertInput.stub(_res);

  CopyWith_Input_StreetsObjRelInsertInput<TRes> get street =>
      CopyWith_Input_StreetsObjRelInsertInput.stub(_res);
}

class Input_AddressesMaxOrderBy {
  factory Input_AddressesMaxOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Enum_OrderBy? districtId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  }) => Input_AddressesMaxOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (districtId != null) r'districtId': districtId,
    if (familyId != null) r'familyId': familyId,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (id != null) r'id': id,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesMaxOrderBy._(this._$data);

  factory Input_AddressesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : fromJson_Enum_OrderBy((l$areaId as String));
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : fromJson_Enum_OrderBy((l$countryIsoCode as String));
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : fromJson_Enum_OrderBy((l$districtId as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : fromJson_Enum_OrderBy((l$specialLandmark as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : fromJson_Enum_OrderBy((l$streetId as String));
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = l$substreetName == null
          ? null
          : fromJson_Enum_OrderBy((l$substreetName as String));
    }
    return Input_AddressesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get areaId => (_$data['areaId'] as Enum_OrderBy?);

  Enum_OrderBy? get countryIsoCode =>
      (_$data['countryIsoCode'] as Enum_OrderBy?);

  Enum_OrderBy? get districtId => (_$data['districtId'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get specialLandmark =>
      (_$data['specialLandmark'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get streetId => (_$data['streetId'] as Enum_OrderBy?);

  Enum_OrderBy? get substreetName => (_$data['substreetName'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null
          ? null
          : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : toJson_Enum_OrderBy(l$countryIsoCode);
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId == null
          ? null
          : toJson_Enum_OrderBy(l$districtId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : toJson_Enum_OrderBy(l$specialLandmark);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : toJson_Enum_OrderBy(l$streetId);
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName == null
          ? null
          : toJson_Enum_OrderBy(l$substreetName);
    }
    return result$data;
  }

  CopyWith_Input_AddressesMaxOrderBy<Input_AddressesMaxOrderBy> get copyWith =>
      CopyWith_Input_AddressesMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
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
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
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
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$districtId = districtId;
    final l$familyId = familyId;
    final l$houseNumber = houseNumber;
    final l$id = id;
    final l$specialLandmark = specialLandmark;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesMaxOrderBy<TRes> {
  factory CopyWith_Input_AddressesMaxOrderBy(
    Input_AddressesMaxOrderBy instance,
    TRes Function(Input_AddressesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesMaxOrderBy;

  factory CopyWith_Input_AddressesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesMaxOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Enum_OrderBy? districtId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  });
}

class _CopyWithImpl_Input_AddressesMaxOrderBy<TRes>
    implements CopyWith_Input_AddressesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesMaxOrderBy(this._instance, this._then);

  final Input_AddressesMaxOrderBy _instance;

  final TRes Function(Input_AddressesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? districtId = _undefined,
    Object? familyId = _undefined,
    Object? houseNumber = _undefined,
    Object? id = _undefined,
    Object? specialLandmark = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesMaxOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as Enum_OrderBy?),
      if (districtId != _undefined) 'districtId': (districtId as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as Enum_OrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
      if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesMaxOrderBy<TRes>
    implements CopyWith_Input_AddressesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Enum_OrderBy? districtId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  }) => _res;
}

class Input_AddressesMinOrderBy {
  factory Input_AddressesMinOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Enum_OrderBy? districtId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  }) => Input_AddressesMinOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (districtId != null) r'districtId': districtId,
    if (familyId != null) r'familyId': familyId,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (id != null) r'id': id,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesMinOrderBy._(this._$data);

  factory Input_AddressesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : fromJson_Enum_OrderBy((l$areaId as String));
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : fromJson_Enum_OrderBy((l$countryIsoCode as String));
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : fromJson_Enum_OrderBy((l$districtId as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : fromJson_Enum_OrderBy((l$specialLandmark as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : fromJson_Enum_OrderBy((l$streetId as String));
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = l$substreetName == null
          ? null
          : fromJson_Enum_OrderBy((l$substreetName as String));
    }
    return Input_AddressesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get areaId => (_$data['areaId'] as Enum_OrderBy?);

  Enum_OrderBy? get countryIsoCode =>
      (_$data['countryIsoCode'] as Enum_OrderBy?);

  Enum_OrderBy? get districtId => (_$data['districtId'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get specialLandmark =>
      (_$data['specialLandmark'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get streetId => (_$data['streetId'] as Enum_OrderBy?);

  Enum_OrderBy? get substreetName => (_$data['substreetName'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null
          ? null
          : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : toJson_Enum_OrderBy(l$countryIsoCode);
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId == null
          ? null
          : toJson_Enum_OrderBy(l$districtId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : toJson_Enum_OrderBy(l$specialLandmark);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : toJson_Enum_OrderBy(l$streetId);
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName == null
          ? null
          : toJson_Enum_OrderBy(l$substreetName);
    }
    return result$data;
  }

  CopyWith_Input_AddressesMinOrderBy<Input_AddressesMinOrderBy> get copyWith =>
      CopyWith_Input_AddressesMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
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
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
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
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$districtId = districtId;
    final l$familyId = familyId;
    final l$houseNumber = houseNumber;
    final l$id = id;
    final l$specialLandmark = specialLandmark;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesMinOrderBy<TRes> {
  factory CopyWith_Input_AddressesMinOrderBy(
    Input_AddressesMinOrderBy instance,
    TRes Function(Input_AddressesMinOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesMinOrderBy;

  factory CopyWith_Input_AddressesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesMinOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Enum_OrderBy? districtId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  });
}

class _CopyWithImpl_Input_AddressesMinOrderBy<TRes>
    implements CopyWith_Input_AddressesMinOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesMinOrderBy(this._instance, this._then);

  final Input_AddressesMinOrderBy _instance;

  final TRes Function(Input_AddressesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? districtId = _undefined,
    Object? familyId = _undefined,
    Object? houseNumber = _undefined,
    Object? id = _undefined,
    Object? specialLandmark = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesMinOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as Enum_OrderBy?),
      if (districtId != _undefined) 'districtId': (districtId as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as Enum_OrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
      if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesMinOrderBy<TRes>
    implements CopyWith_Input_AddressesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Enum_OrderBy? districtId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  }) => _res;
}

class Input_AddressesObjRelInsertInput {
  factory Input_AddressesObjRelInsertInput({
    required Input_AddressesInsertInput data,
    Input_AddressesOnConflict? onConflict,
  }) => Input_AddressesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_AddressesObjRelInsertInput._(this._$data);

  factory Input_AddressesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_AddressesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AddressesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_AddressesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesInsertInput get data =>
      (_$data['data'] as Input_AddressesInsertInput);

  Input_AddressesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AddressesOnConflict?);

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

  CopyWith_Input_AddressesObjRelInsertInput<Input_AddressesObjRelInsertInput>
  get copyWith => CopyWith_Input_AddressesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesObjRelInsertInput ||
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

abstract class CopyWith_Input_AddressesObjRelInsertInput<TRes> {
  factory CopyWith_Input_AddressesObjRelInsertInput(
    Input_AddressesObjRelInsertInput instance,
    TRes Function(Input_AddressesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_AddressesObjRelInsertInput;

  factory CopyWith_Input_AddressesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesObjRelInsertInput;

  TRes call({
    Input_AddressesInsertInput? data,
    Input_AddressesOnConflict? onConflict,
  });
  CopyWith_Input_AddressesInsertInput<TRes> get data;
  CopyWith_Input_AddressesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AddressesObjRelInsertInput<TRes>
    implements CopyWith_Input_AddressesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_AddressesObjRelInsertInput(this._instance, this._then);

  final Input_AddressesObjRelInsertInput _instance;

  final TRes Function(Input_AddressesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AddressesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_AddressesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AddressesOnConflict?),
        }),
      );

  CopyWith_Input_AddressesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_AddressesInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_AddressesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AddressesOnConflict.stub(_then(_instance))
        : CopyWith_Input_AddressesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressesObjRelInsertInput<TRes>
    implements CopyWith_Input_AddressesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AddressesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_AddressesInsertInput? data,
    Input_AddressesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_AddressesInsertInput<TRes> get data =>
      CopyWith_Input_AddressesInsertInput.stub(_res);

  CopyWith_Input_AddressesOnConflict<TRes> get onConflict =>
      CopyWith_Input_AddressesOnConflict.stub(_res);
}

class Input_AddressesOnConflict {
  factory Input_AddressesOnConflict({
    required Enum_AddressesConstraint constraint,
    List<Enum_AddressesUpdateColumn>? updateColumns,
    Input_AddressesBoolExp? where,
  }) => Input_AddressesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_AddressesOnConflict._(this._$data);

  factory Input_AddressesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_AddressesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_AddressesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_AddressesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_AddressesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AddressesConstraint get constraint =>
      (_$data['constraint'] as Enum_AddressesConstraint);

  List<Enum_AddressesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_AddressesUpdateColumn>?);

  Input_AddressesBoolExp? get where =>
      (_$data['where'] as Input_AddressesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_AddressesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_AddressesUpdateColumn>)
              .map((e) => toJson_Enum_AddressesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AddressesOnConflict<Input_AddressesOnConflict> get copyWith =>
      CopyWith_Input_AddressesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesOnConflict ||
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

abstract class CopyWith_Input_AddressesOnConflict<TRes> {
  factory CopyWith_Input_AddressesOnConflict(
    Input_AddressesOnConflict instance,
    TRes Function(Input_AddressesOnConflict) then,
  ) = _CopyWithImpl_Input_AddressesOnConflict;

  factory CopyWith_Input_AddressesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesOnConflict;

  TRes call({
    Enum_AddressesConstraint? constraint,
    List<Enum_AddressesUpdateColumn>? updateColumns,
    Input_AddressesBoolExp? where,
  });
  CopyWith_Input_AddressesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AddressesOnConflict<TRes>
    implements CopyWith_Input_AddressesOnConflict<TRes> {
  _CopyWithImpl_Input_AddressesOnConflict(this._instance, this._then);

  final Input_AddressesOnConflict _instance;

  final TRes Function(Input_AddressesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AddressesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_AddressesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_AddressesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_AddressesBoolExp?),
    }),
  );

  CopyWith_Input_AddressesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_AddressesOnConflict<TRes>
    implements CopyWith_Input_AddressesOnConflict<TRes> {
  _CopyWithStubImpl_Input_AddressesOnConflict(this._res);

  TRes _res;

  call({
    Enum_AddressesConstraint? constraint,
    List<Enum_AddressesUpdateColumn>? updateColumns,
    Input_AddressesBoolExp? where,
  }) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get where =>
      CopyWith_Input_AddressesBoolExp.stub(_res);
}

class Input_AddressesOrderBy {
  factory Input_AddressesOrderBy({
    Enum_OrderBy? apartmentNumber,
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Input_DistrictsOrderBy? district,
    Enum_OrderBy? districtId,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fullAddressText,
    Enum_OrderBy? geolocation,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Input_StoresOrderBy? store,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  }) => Input_AddressesOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (area != null) r'area': area,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (district != null) r'district': district,
    if (districtId != null) r'districtId': districtId,
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (fullAddressText != null) r'fullAddressText': fullAddressText,
    if (geolocation != null) r'geolocation': geolocation,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (id != null) r'id': id,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (store != null) r'store': store,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (street != null) r'street': street,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesOrderBy._(this._$data);

  factory Input_AddressesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasOrderBy.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : fromJson_Enum_OrderBy((l$areaId as String));
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : fromJson_Enum_OrderBy((l$countryIsoCode as String));
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = l$district == null
          ? null
          : Input_DistrictsOrderBy.fromJson(
              (l$district as Map<String, dynamic>),
            );
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : fromJson_Enum_OrderBy((l$districtId as String));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('fullAddressText')) {
      final l$fullAddressText = data['fullAddressText'];
      result$data['fullAddressText'] = l$fullAddressText == null
          ? null
          : fromJson_Enum_OrderBy((l$fullAddressText as String));
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = l$geolocation == null
          ? null
          : fromJson_Enum_OrderBy((l$geolocation as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : fromJson_Enum_OrderBy((l$specialLandmark as String));
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoresOrderBy.fromJson((l$store as Map<String, dynamic>));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetsOrderBy.fromJson((l$street as Map<String, dynamic>));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : fromJson_Enum_OrderBy((l$streetId as String));
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = l$substreetName == null
          ? null
          : fromJson_Enum_OrderBy((l$substreetName as String));
    }
    return Input_AddressesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Input_AreasOrderBy? get area => (_$data['area'] as Input_AreasOrderBy?);

  Enum_OrderBy? get areaId => (_$data['areaId'] as Enum_OrderBy?);

  Enum_OrderBy? get countryIsoCode =>
      (_$data['countryIsoCode'] as Enum_OrderBy?);

  Input_DistrictsOrderBy? get district =>
      (_$data['district'] as Input_DistrictsOrderBy?);

  Enum_OrderBy? get districtId => (_$data['districtId'] as Enum_OrderBy?);

  Input_FamiliesOrderBy? get family =>
      (_$data['family'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get fullAddressText =>
      (_$data['fullAddressText'] as Enum_OrderBy?);

  Enum_OrderBy? get geolocation => (_$data['geolocation'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get specialLandmark =>
      (_$data['specialLandmark'] as Enum_OrderBy?);

  Input_StoresOrderBy? get store => (_$data['store'] as Input_StoresOrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Input_StreetsOrderBy? get street =>
      (_$data['street'] as Input_StreetsOrderBy?);

  Enum_OrderBy? get streetId => (_$data['streetId'] as Enum_OrderBy?);

  Enum_OrderBy? get substreetName => (_$data['substreetName'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null
          ? null
          : toJson_Enum_OrderBy(l$areaId);
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : toJson_Enum_OrderBy(l$countryIsoCode);
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district?.toJson();
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId == null
          ? null
          : toJson_Enum_OrderBy(l$districtId);
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('fullAddressText')) {
      final l$fullAddressText = fullAddressText;
      result$data['fullAddressText'] = l$fullAddressText == null
          ? null
          : toJson_Enum_OrderBy(l$fullAddressText);
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation == null
          ? null
          : toJson_Enum_OrderBy(l$geolocation);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : toJson_Enum_OrderBy(l$specialLandmark);
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : toJson_Enum_OrderBy(l$streetId);
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName == null
          ? null
          : toJson_Enum_OrderBy(l$substreetName);
    }
    return result$data;
  }

  CopyWith_Input_AddressesOrderBy<Input_AddressesOrderBy> get copyWith =>
      CopyWith_Input_AddressesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesOrderBy || runtimeType != other.runtimeType) {
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
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
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
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (_$data.containsKey('countryIsoCode') !=
        other._$data.containsKey('countryIsoCode')) {
      return false;
    }
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (_$data.containsKey('district') !=
        other._$data.containsKey('district')) {
      return false;
    }
    if (l$district != lOther$district) {
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fullAddressText = fullAddressText;
    final lOther$fullAddressText = other.fullAddressText;
    if (_$data.containsKey('fullAddressText') !=
        other._$data.containsKey('fullAddressText')) {
      return false;
    }
    if (l$fullAddressText != lOther$fullAddressText) {
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
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
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
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$store = store;
    final lOther$store = other.store;
    if (_$data.containsKey('store') != other._$data.containsKey('store')) {
      return false;
    }
    if (l$store != lOther$store) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
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
    final l$substreetName = substreetName;
    final lOther$substreetName = other.substreetName;
    if (_$data.containsKey('substreetName') !=
        other._$data.containsKey('substreetName')) {
      return false;
    }
    if (l$substreetName != lOther$substreetName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$area = area;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$district = district;
    final l$districtId = districtId;
    final l$family = family;
    final l$familyId = familyId;
    final l$fullAddressText = fullAddressText;
    final l$geolocation = geolocation;
    final l$houseNumber = houseNumber;
    final l$id = id;
    final l$specialLandmark = specialLandmark;
    final l$store = store;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$street = street;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('district') ? l$district : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fullAddressText') ? l$fullAddressText : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('store') ? l$store : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesOrderBy<TRes> {
  factory CopyWith_Input_AddressesOrderBy(
    Input_AddressesOrderBy instance,
    TRes Function(Input_AddressesOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesOrderBy;

  factory CopyWith_Input_AddressesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Input_DistrictsOrderBy? district,
    Enum_OrderBy? districtId,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fullAddressText,
    Enum_OrderBy? geolocation,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Input_StoresOrderBy? store,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  });
  CopyWith_Input_AreasOrderBy<TRes> get area;
  CopyWith_Input_DistrictsOrderBy<TRes> get district;
  CopyWith_Input_FamiliesOrderBy<TRes> get family;
  CopyWith_Input_StoresOrderBy<TRes> get store;
  CopyWith_Input_StreetsOrderBy<TRes> get street;
}

class _CopyWithImpl_Input_AddressesOrderBy<TRes>
    implements CopyWith_Input_AddressesOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesOrderBy(this._instance, this._then);

  final Input_AddressesOrderBy _instance;

  final TRes Function(Input_AddressesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? district = _undefined,
    Object? districtId = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? fullAddressText = _undefined,
    Object? geolocation = _undefined,
    Object? houseNumber = _undefined,
    Object? id = _undefined,
    Object? specialLandmark = _undefined,
    Object? store = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (area != _undefined) 'area': (area as Input_AreasOrderBy?),
      if (areaId != _undefined) 'areaId': (areaId as Enum_OrderBy?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as Enum_OrderBy?),
      if (district != _undefined)
        'district': (district as Input_DistrictsOrderBy?),
      if (districtId != _undefined) 'districtId': (districtId as Enum_OrderBy?),
      if (family != _undefined) 'family': (family as Input_FamiliesOrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (fullAddressText != _undefined)
        'fullAddressText': (fullAddressText as Enum_OrderBy?),
      if (geolocation != _undefined)
        'geolocation': (geolocation as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as Enum_OrderBy?),
      if (store != _undefined) 'store': (store as Input_StoresOrderBy?),
      if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
      if (street != _undefined) 'street': (street as Input_StreetsOrderBy?),
      if (streetId != _undefined) 'streetId': (streetId as Enum_OrderBy?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AreasOrderBy<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasOrderBy.stub(_then(_instance))
        : CopyWith_Input_AreasOrderBy(local$area, (e) => call(area: e));
  }

  CopyWith_Input_DistrictsOrderBy<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Input_DistrictsOrderBy.stub(_then(_instance))
        : CopyWith_Input_DistrictsOrderBy(
            local$district,
            (e) => call(district: e),
          );
  }

  CopyWith_Input_FamiliesOrderBy<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$family, (e) => call(family: e));
  }

  CopyWith_Input_StoresOrderBy<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoresOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresOrderBy(local$store, (e) => call(store: e));
  }

  CopyWith_Input_StreetsOrderBy<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StreetsOrderBy(local$street, (e) => call(street: e));
  }
}

class _CopyWithStubImpl_Input_AddressesOrderBy<TRes>
    implements CopyWith_Input_AddressesOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Input_AreasOrderBy? area,
    Enum_OrderBy? areaId,
    Enum_OrderBy? countryIsoCode,
    Input_DistrictsOrderBy? district,
    Enum_OrderBy? districtId,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fullAddressText,
    Enum_OrderBy? geolocation,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? id,
    Enum_OrderBy? specialLandmark,
    Input_StoresOrderBy? store,
    Enum_OrderBy? storeId,
    Enum_OrderBy? storeyNumber,
    Input_StreetsOrderBy? street,
    Enum_OrderBy? streetId,
    Enum_OrderBy? substreetName,
  }) => _res;

  CopyWith_Input_AreasOrderBy<TRes> get area =>
      CopyWith_Input_AreasOrderBy.stub(_res);

  CopyWith_Input_DistrictsOrderBy<TRes> get district =>
      CopyWith_Input_DistrictsOrderBy.stub(_res);

  CopyWith_Input_FamiliesOrderBy<TRes> get family =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);

  CopyWith_Input_StoresOrderBy<TRes> get store =>
      CopyWith_Input_StoresOrderBy.stub(_res);

  CopyWith_Input_StreetsOrderBy<TRes> get street =>
      CopyWith_Input_StreetsOrderBy.stub(_res);
}

class Input_AddressesPkColumnsInput {
  factory Input_AddressesPkColumnsInput({required UuidValue id}) =>
      Input_AddressesPkColumnsInput._({r'id': id});

  Input_AddressesPkColumnsInput._(this._$data);

  factory Input_AddressesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_AddressesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_AddressesPkColumnsInput<Input_AddressesPkColumnsInput>
  get copyWith => CopyWith_Input_AddressesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesPkColumnsInput ||
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

abstract class CopyWith_Input_AddressesPkColumnsInput<TRes> {
  factory CopyWith_Input_AddressesPkColumnsInput(
    Input_AddressesPkColumnsInput instance,
    TRes Function(Input_AddressesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_AddressesPkColumnsInput;

  factory CopyWith_Input_AddressesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_AddressesPkColumnsInput<TRes>
    implements CopyWith_Input_AddressesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_AddressesPkColumnsInput(this._instance, this._then);

  final Input_AddressesPkColumnsInput _instance;

  final TRes Function(Input_AddressesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_AddressesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesPkColumnsInput<TRes>
    implements CopyWith_Input_AddressesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_AddressesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_AddressesSetInput {
  factory Input_AddressesSetInput({
    int? apartmentNumber,
    UuidValue? areaId,
    String? countryIsoCode,
    UuidValue? districtId,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    String? specialLandmark,
    UuidValue? storeId,
    int? storeyNumber,
    UuidValue? streetId,
    String? substreetName,
  }) => Input_AddressesSetInput._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (districtId != null) r'districtId': districtId,
    if (familyId != null) r'familyId': familyId,
    if (geolocation != null) r'geolocation': geolocation,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesSetInput._(this._$data);

  factory Input_AddressesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = (l$apartmentNumber as int?);
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = (l$countryIsoCode as String?);
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : stringToUuid(l$districtId);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = (l$houseNumber as int?);
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = (l$specialLandmark as String?);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : stringToUuid(l$storeId);
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = (l$storeyNumber as int?);
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : stringToUuid(l$streetId);
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = (l$substreetName as String?);
    }
    return Input_AddressesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get apartmentNumber => (_$data['apartmentNumber'] as int?);

  UuidValue? get areaId => (_$data['areaId'] as UuidValue?);

  String? get countryIsoCode => (_$data['countryIsoCode'] as String?);

  UuidValue? get districtId => (_$data['districtId'] as UuidValue?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  int? get houseNumber => (_$data['houseNumber'] as int?);

  String? get specialLandmark => (_$data['specialLandmark'] as String?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  int? get storeyNumber => (_$data['storeyNumber'] as int?);

  UuidValue? get streetId => (_$data['streetId'] as UuidValue?);

  String? get substreetName => (_$data['substreetName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber;
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null ? null : uuidToString(l$areaId);
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode;
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId == null
          ? null
          : uuidToString(l$districtId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber;
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark;
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : uuidToString(l$storeId);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber;
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : uuidToString(l$streetId);
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName;
    }
    return result$data;
  }

  CopyWith_Input_AddressesSetInput<Input_AddressesSetInput> get copyWith =>
      CopyWith_Input_AddressesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesSetInput || runtimeType != other.runtimeType) {
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
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
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
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
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
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
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
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$districtId = districtId;
    final l$familyId = familyId;
    final l$geolocation = geolocation;
    final l$houseNumber = houseNumber;
    final l$specialLandmark = specialLandmark;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}
