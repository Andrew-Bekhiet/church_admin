// Part 46 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AddressFilterCountryIsoCode<TRes> {
  factory CopyWith_Input_AddressFilterCountryIsoCode(
    Input_AddressFilterCountryIsoCode instance,
    TRes Function(Input_AddressFilterCountryIsoCode) then,
  ) = _CopyWithImpl_Input_AddressFilterCountryIsoCode;

  factory CopyWith_Input_AddressFilterCountryIsoCode.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressFilterCountryIsoCode;

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

class _CopyWithImpl_Input_AddressFilterCountryIsoCode<TRes>
    implements CopyWith_Input_AddressFilterCountryIsoCode<TRes> {
  _CopyWithImpl_Input_AddressFilterCountryIsoCode(this._instance, this._then);

  final Input_AddressFilterCountryIsoCode _instance;

  final TRes Function(Input_AddressFilterCountryIsoCode) _then;

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
    Input_AddressFilterCountryIsoCode._({
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

class _CopyWithStubImpl_Input_AddressFilterCountryIsoCode<TRes>
    implements CopyWith_Input_AddressFilterCountryIsoCode<TRes> {
  _CopyWithStubImpl_Input_AddressFilterCountryIsoCode(this._res);

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

class Input_AddressFilterId {
  factory Input_AddressFilterId({
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
  }) => Input_AddressFilterId._({
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

  Input_AddressFilterId._(this._$data);

  factory Input_AddressFilterId.fromJson(Map<String, dynamic> data) {
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
    return Input_AddressFilterId._(result$data);
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

  CopyWith_Input_AddressFilterId<Input_AddressFilterId> get copyWith =>
      CopyWith_Input_AddressFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressFilterId || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_AddressFilterId<TRes> {
  factory CopyWith_Input_AddressFilterId(
    Input_AddressFilterId instance,
    TRes Function(Input_AddressFilterId) then,
  ) = _CopyWithImpl_Input_AddressFilterId;

  factory CopyWith_Input_AddressFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressFilterId;

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

class _CopyWithImpl_Input_AddressFilterId<TRes>
    implements CopyWith_Input_AddressFilterId<TRes> {
  _CopyWithImpl_Input_AddressFilterId(this._instance, this._then);

  final Input_AddressFilterId _instance;

  final TRes Function(Input_AddressFilterId) _then;

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
    Input_AddressFilterId._({
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

class _CopyWithStubImpl_Input_AddressFilterId<TRes>
    implements CopyWith_Input_AddressFilterId<TRes> {
  _CopyWithStubImpl_Input_AddressFilterId(this._res);

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

class Input_AddressFilterInput {
  factory Input_AddressFilterInput({
    List<Input_AddressFilterInput>? and,
    List<Input_AddressFilterInput>? or,
    List<Input_AddressFilterInput>? not,
    Input_AddressFilterId? id,
    Input_AddressFilterCountryIsoCode? countryIsoCode,
    Input_AddressFilterDistrictId? districtId,
    Input_AddressFilterAreaId? areaId,
    Input_AddressFilterStreetId? streetId,
    Input_AddressFilterSubstreetName? substreetName,
    Input_AddressFilterGeolocation? geolocation,
    Input_AddressFilterStoreyNumber? storeyNumber,
    Input_AddressFilterHouseNumber? houseNumber,
    Input_AddressFilterApartmentNumber? apartmentNumber,
    Input_AddressFilterSpecialLandmark? specialLandmark,
    Input_AddressFilterFamilyId? familyId,
    Input_AddressFilterStoreId? storeId,
    Input_AddressFilterHouseCode? houseCode,
    Input_AreaFilterInput? area,
    Input_DistrictFilterInput? district,
    Input_FamilyFilterInput? family,
    Input_StoreFilterInput? store,
    Input_StreetFilterInput? street,
    Input_AddressFilterFullAddressText? fullAddressText,
    Input_AddressFilterWithinPolygon? withinPolygon,
  }) => Input_AddressFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (districtId != null) r'districtId': districtId,
    if (areaId != null) r'areaId': areaId,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
    if (geolocation != null) r'geolocation': geolocation,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (familyId != null) r'familyId': familyId,
    if (storeId != null) r'storeId': storeId,
    if (houseCode != null) r'houseCode': houseCode,
    if (area != null) r'area': area,
    if (district != null) r'district': district,
    if (family != null) r'family': family,
    if (store != null) r'store': store,
    if (street != null) r'street': street,
    if (fullAddressText != null) r'fullAddressText': fullAddressText,
    if (withinPolygon != null) r'withinPolygon': withinPolygon,
  });

  Input_AddressFilterInput._(this._$data);

  factory Input_AddressFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_AddressFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_AddressFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_AddressFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_AddressFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : Input_AddressFilterCountryIsoCode.fromJson(
              (l$countryIsoCode as Map<String, dynamic>),
            );
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : Input_AddressFilterDistrictId.fromJson(
              (l$districtId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : Input_AddressFilterAreaId.fromJson(
              (l$areaId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : Input_AddressFilterStreetId.fromJson(
              (l$streetId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = l$substreetName == null
          ? null
          : Input_AddressFilterSubstreetName.fromJson(
              (l$substreetName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = l$geolocation == null
          ? null
          : Input_AddressFilterGeolocation.fromJson(
              (l$geolocation as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : Input_AddressFilterStoreyNumber.fromJson(
              (l$storeyNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : Input_AddressFilterHouseNumber.fromJson(
              (l$houseNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : Input_AddressFilterApartmentNumber.fromJson(
              (l$apartmentNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : Input_AddressFilterSpecialLandmark.fromJson(
              (l$specialLandmark as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_AddressFilterFamilyId.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : Input_AddressFilterStoreId.fromJson(
              (l$storeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('houseCode')) {
      final l$houseCode = data['houseCode'];
      result$data['houseCode'] = l$houseCode == null
          ? null
          : Input_AddressFilterHouseCode.fromJson(
              (l$houseCode as Map<String, dynamic>),
            );
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreaFilterInput.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = l$district == null
          ? null
          : Input_DistrictFilterInput.fromJson(
              (l$district as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoreFilterInput.fromJson((l$store as Map<String, dynamic>));
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetFilterInput.fromJson(
              (l$street as Map<String, dynamic>),
            );
    }
    if (data.containsKey('fullAddressText')) {
      final l$fullAddressText = data['fullAddressText'];
      result$data['fullAddressText'] = l$fullAddressText == null
          ? null
          : Input_AddressFilterFullAddressText.fromJson(
              (l$fullAddressText as Map<String, dynamic>),
            );
    }
    if (data.containsKey('withinPolygon')) {
      final l$withinPolygon = data['withinPolygon'];
      result$data['withinPolygon'] = l$withinPolygon == null
          ? null
          : Input_AddressFilterWithinPolygon.fromJson(
              (l$withinPolygon as Map<String, dynamic>),
            );
    }
    return Input_AddressFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AddressFilterInput>? get and =>
      (_$data['and'] as List<Input_AddressFilterInput>?);

  List<Input_AddressFilterInput>? get or =>
      (_$data['or'] as List<Input_AddressFilterInput>?);

  List<Input_AddressFilterInput>? get not =>
      (_$data['not'] as List<Input_AddressFilterInput>?);

  Input_AddressFilterId? get id => (_$data['id'] as Input_AddressFilterId?);

  Input_AddressFilterCountryIsoCode? get countryIsoCode =>
      (_$data['countryIsoCode'] as Input_AddressFilterCountryIsoCode?);

  Input_AddressFilterDistrictId? get districtId =>
      (_$data['districtId'] as Input_AddressFilterDistrictId?);

  Input_AddressFilterAreaId? get areaId =>
      (_$data['areaId'] as Input_AddressFilterAreaId?);

  Input_AddressFilterStreetId? get streetId =>
      (_$data['streetId'] as Input_AddressFilterStreetId?);

  Input_AddressFilterSubstreetName? get substreetName =>
      (_$data['substreetName'] as Input_AddressFilterSubstreetName?);

  Input_AddressFilterGeolocation? get geolocation =>
      (_$data['geolocation'] as Input_AddressFilterGeolocation?);

  Input_AddressFilterStoreyNumber? get storeyNumber =>
      (_$data['storeyNumber'] as Input_AddressFilterStoreyNumber?);

  Input_AddressFilterHouseNumber? get houseNumber =>
      (_$data['houseNumber'] as Input_AddressFilterHouseNumber?);

  Input_AddressFilterApartmentNumber? get apartmentNumber =>
      (_$data['apartmentNumber'] as Input_AddressFilterApartmentNumber?);

  Input_AddressFilterSpecialLandmark? get specialLandmark =>
      (_$data['specialLandmark'] as Input_AddressFilterSpecialLandmark?);

  Input_AddressFilterFamilyId? get familyId =>
      (_$data['familyId'] as Input_AddressFilterFamilyId?);

  Input_AddressFilterStoreId? get storeId =>
      (_$data['storeId'] as Input_AddressFilterStoreId?);

  Input_AddressFilterHouseCode? get houseCode =>
      (_$data['houseCode'] as Input_AddressFilterHouseCode?);

  Input_AreaFilterInput? get area => (_$data['area'] as Input_AreaFilterInput?);

  Input_DistrictFilterInput? get district =>
      (_$data['district'] as Input_DistrictFilterInput?);

  Input_FamilyFilterInput? get family =>
      (_$data['family'] as Input_FamilyFilterInput?);

  Input_StoreFilterInput? get store =>
      (_$data['store'] as Input_StoreFilterInput?);

  Input_StreetFilterInput? get street =>
      (_$data['street'] as Input_StreetFilterInput?);

  Input_AddressFilterFullAddressText? get fullAddressText =>
      (_$data['fullAddressText'] as Input_AddressFilterFullAddressText?);

  Input_AddressFilterWithinPolygon? get withinPolygon =>
      (_$data['withinPolygon'] as Input_AddressFilterWithinPolygon?);

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
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode?.toJson();
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId?.toJson();
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName?.toJson();
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation?.toJson();
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber?.toJson();
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber?.toJson();
    }
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber?.toJson();
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId?.toJson();
    }
    if (_$data.containsKey('houseCode')) {
      final l$houseCode = houseCode;
      result$data['houseCode'] = l$houseCode?.toJson();
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('fullAddressText')) {
      final l$fullAddressText = fullAddressText;
      result$data['fullAddressText'] = l$fullAddressText?.toJson();
    }
    if (_$data.containsKey('withinPolygon')) {
      final l$withinPolygon = withinPolygon;
      result$data['withinPolygon'] = l$withinPolygon?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AddressFilterInput<Input_AddressFilterInput> get copyWith =>
      CopyWith_Input_AddressFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressFilterInput ||
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
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
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
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
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
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
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
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
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
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
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
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
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
    final l$withinPolygon = withinPolygon;
    final lOther$withinPolygon = other.withinPolygon;
    if (_$data.containsKey('withinPolygon') !=
        other._$data.containsKey('withinPolygon')) {
      return false;
    }
    if (l$withinPolygon != lOther$withinPolygon) {
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
    final l$countryIsoCode = countryIsoCode;
    final l$districtId = districtId;
    final l$areaId = areaId;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    final l$geolocation = geolocation;
    final l$storeyNumber = storeyNumber;
    final l$houseNumber = houseNumber;
    final l$apartmentNumber = apartmentNumber;
    final l$specialLandmark = specialLandmark;
    final l$familyId = familyId;
    final l$storeId = storeId;
    final l$houseCode = houseCode;
    final l$area = area;
    final l$district = district;
    final l$family = family;
    final l$store = store;
    final l$street = street;
    final l$fullAddressText = fullAddressText;
    final l$withinPolygon = withinPolygon;
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
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('houseCode') ? l$houseCode : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('district') ? l$district : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('store') ? l$store : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('fullAddressText') ? l$fullAddressText : const {},
      _$data.containsKey('withinPolygon') ? l$withinPolygon : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressFilterInput<TRes> {
  factory CopyWith_Input_AddressFilterInput(
    Input_AddressFilterInput instance,
    TRes Function(Input_AddressFilterInput) then,
  ) = _CopyWithImpl_Input_AddressFilterInput;

  factory CopyWith_Input_AddressFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressFilterInput;

  TRes call({
    List<Input_AddressFilterInput>? and,
    List<Input_AddressFilterInput>? or,
    List<Input_AddressFilterInput>? not,
    Input_AddressFilterId? id,
    Input_AddressFilterCountryIsoCode? countryIsoCode,
    Input_AddressFilterDistrictId? districtId,
    Input_AddressFilterAreaId? areaId,
    Input_AddressFilterStreetId? streetId,
    Input_AddressFilterSubstreetName? substreetName,
    Input_AddressFilterGeolocation? geolocation,
    Input_AddressFilterStoreyNumber? storeyNumber,
    Input_AddressFilterHouseNumber? houseNumber,
    Input_AddressFilterApartmentNumber? apartmentNumber,
    Input_AddressFilterSpecialLandmark? specialLandmark,
    Input_AddressFilterFamilyId? familyId,
    Input_AddressFilterStoreId? storeId,
    Input_AddressFilterHouseCode? houseCode,
    Input_AreaFilterInput? area,
    Input_DistrictFilterInput? district,
    Input_FamilyFilterInput? family,
    Input_StoreFilterInput? store,
    Input_StreetFilterInput? street,
    Input_AddressFilterFullAddressText? fullAddressText,
    Input_AddressFilterWithinPolygon? withinPolygon,
  });
  TRes and(
    Iterable<Input_AddressFilterInput>? Function(
      Iterable<CopyWith_Input_AddressFilterInput<Input_AddressFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_AddressFilterInput>? Function(
      Iterable<CopyWith_Input_AddressFilterInput<Input_AddressFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_AddressFilterInput>? Function(
      Iterable<CopyWith_Input_AddressFilterInput<Input_AddressFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_AddressFilterId<TRes> get id;
  CopyWith_Input_AddressFilterCountryIsoCode<TRes> get countryIsoCode;
  CopyWith_Input_AddressFilterDistrictId<TRes> get districtId;
  CopyWith_Input_AddressFilterAreaId<TRes> get areaId;
  CopyWith_Input_AddressFilterStreetId<TRes> get streetId;
  CopyWith_Input_AddressFilterSubstreetName<TRes> get substreetName;
  CopyWith_Input_AddressFilterGeolocation<TRes> get geolocation;
  CopyWith_Input_AddressFilterStoreyNumber<TRes> get storeyNumber;
  CopyWith_Input_AddressFilterHouseNumber<TRes> get houseNumber;
  CopyWith_Input_AddressFilterApartmentNumber<TRes> get apartmentNumber;
  CopyWith_Input_AddressFilterSpecialLandmark<TRes> get specialLandmark;
  CopyWith_Input_AddressFilterFamilyId<TRes> get familyId;
  CopyWith_Input_AddressFilterStoreId<TRes> get storeId;
  CopyWith_Input_AddressFilterHouseCode<TRes> get houseCode;
  CopyWith_Input_AreaFilterInput<TRes> get area;
  CopyWith_Input_DistrictFilterInput<TRes> get district;
  CopyWith_Input_FamilyFilterInput<TRes> get family;
  CopyWith_Input_StoreFilterInput<TRes> get store;
  CopyWith_Input_StreetFilterInput<TRes> get street;
  CopyWith_Input_AddressFilterFullAddressText<TRes> get fullAddressText;
  CopyWith_Input_AddressFilterWithinPolygon<TRes> get withinPolygon;
}

class _CopyWithImpl_Input_AddressFilterInput<TRes>
    implements CopyWith_Input_AddressFilterInput<TRes> {
  _CopyWithImpl_Input_AddressFilterInput(this._instance, this._then);

  final Input_AddressFilterInput _instance;

  final TRes Function(Input_AddressFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? countryIsoCode = _undefined,
    Object? districtId = _undefined,
    Object? areaId = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
    Object? geolocation = _undefined,
    Object? storeyNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? apartmentNumber = _undefined,
    Object? specialLandmark = _undefined,
    Object? familyId = _undefined,
    Object? storeId = _undefined,
    Object? houseCode = _undefined,
    Object? area = _undefined,
    Object? district = _undefined,
    Object? family = _undefined,
    Object? store = _undefined,
    Object? street = _undefined,
    Object? fullAddressText = _undefined,
    Object? withinPolygon = _undefined,
  }) => _then(
    Input_AddressFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_AddressFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_AddressFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_AddressFilterInput>?),
      if (id != _undefined) 'id': (id as Input_AddressFilterId?),
      if (countryIsoCode != _undefined)
        'countryIsoCode':
            (countryIsoCode as Input_AddressFilterCountryIsoCode?),
      if (districtId != _undefined)
        'districtId': (districtId as Input_AddressFilterDistrictId?),
      if (areaId != _undefined)
        'areaId': (areaId as Input_AddressFilterAreaId?),
      if (streetId != _undefined)
        'streetId': (streetId as Input_AddressFilterStreetId?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as Input_AddressFilterSubstreetName?),
      if (geolocation != _undefined)
        'geolocation': (geolocation as Input_AddressFilterGeolocation?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Input_AddressFilterStoreyNumber?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Input_AddressFilterHouseNumber?),
      if (apartmentNumber != _undefined)
        'apartmentNumber':
            (apartmentNumber as Input_AddressFilterApartmentNumber?),
      if (specialLandmark != _undefined)
        'specialLandmark':
            (specialLandmark as Input_AddressFilterSpecialLandmark?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_AddressFilterFamilyId?),
      if (storeId != _undefined)
        'storeId': (storeId as Input_AddressFilterStoreId?),
      if (houseCode != _undefined)
        'houseCode': (houseCode as Input_AddressFilterHouseCode?),
      if (area != _undefined) 'area': (area as Input_AreaFilterInput?),
      if (district != _undefined)
        'district': (district as Input_DistrictFilterInput?),
      if (family != _undefined) 'family': (family as Input_FamilyFilterInput?),
      if (store != _undefined) 'store': (store as Input_StoreFilterInput?),
      if (street != _undefined) 'street': (street as Input_StreetFilterInput?),
      if (fullAddressText != _undefined)
        'fullAddressText':
            (fullAddressText as Input_AddressFilterFullAddressText?),
      if (withinPolygon != _undefined)
        'withinPolygon': (withinPolygon as Input_AddressFilterWithinPolygon?),
    }),
  );

  TRes and(
    Iterable<Input_AddressFilterInput>? Function(
      Iterable<CopyWith_Input_AddressFilterInput<Input_AddressFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_AddressFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_AddressFilterInput>? Function(
      Iterable<CopyWith_Input_AddressFilterInput<Input_AddressFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_AddressFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_AddressFilterInput>? Function(
      Iterable<CopyWith_Input_AddressFilterInput<Input_AddressFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_AddressFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AddressFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_AddressFilterId.stub(_then(_instance))
        : CopyWith_Input_AddressFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_AddressFilterCountryIsoCode<TRes> get countryIsoCode {
    final local$countryIsoCode = _instance.countryIsoCode;
    return local$countryIsoCode == null
        ? CopyWith_Input_AddressFilterCountryIsoCode.stub(_then(_instance))
        : CopyWith_Input_AddressFilterCountryIsoCode(
            local$countryIsoCode,
            (e) => call(countryIsoCode: e),
          );
  }

  CopyWith_Input_AddressFilterDistrictId<TRes> get districtId {
    final local$districtId = _instance.districtId;
    return local$districtId == null
        ? CopyWith_Input_AddressFilterDistrictId.stub(_then(_instance))
        : CopyWith_Input_AddressFilterDistrictId(
            local$districtId,
            (e) => call(districtId: e),
          );
  }

  CopyWith_Input_AddressFilterAreaId<TRes> get areaId {
    final local$areaId = _instance.areaId;
    return local$areaId == null
        ? CopyWith_Input_AddressFilterAreaId.stub(_then(_instance))
        : CopyWith_Input_AddressFilterAreaId(
            local$areaId,
            (e) => call(areaId: e),
          );
  }

  CopyWith_Input_AddressFilterStreetId<TRes> get streetId {
    final local$streetId = _instance.streetId;
    return local$streetId == null
        ? CopyWith_Input_AddressFilterStreetId.stub(_then(_instance))
        : CopyWith_Input_AddressFilterStreetId(
            local$streetId,
            (e) => call(streetId: e),
          );
  }

  CopyWith_Input_AddressFilterSubstreetName<TRes> get substreetName {
    final local$substreetName = _instance.substreetName;
    return local$substreetName == null
        ? CopyWith_Input_AddressFilterSubstreetName.stub(_then(_instance))
        : CopyWith_Input_AddressFilterSubstreetName(
            local$substreetName,
            (e) => call(substreetName: e),
          );
  }

  CopyWith_Input_AddressFilterGeolocation<TRes> get geolocation {
    final local$geolocation = _instance.geolocation;
    return local$geolocation == null
        ? CopyWith_Input_AddressFilterGeolocation.stub(_then(_instance))
        : CopyWith_Input_AddressFilterGeolocation(
            local$geolocation,
            (e) => call(geolocation: e),
          );
  }

  CopyWith_Input_AddressFilterStoreyNumber<TRes> get storeyNumber {
    final local$storeyNumber = _instance.storeyNumber;
    return local$storeyNumber == null
        ? CopyWith_Input_AddressFilterStoreyNumber.stub(_then(_instance))
        : CopyWith_Input_AddressFilterStoreyNumber(
            local$storeyNumber,
            (e) => call(storeyNumber: e),
          );
  }

  CopyWith_Input_AddressFilterHouseNumber<TRes> get houseNumber {
    final local$houseNumber = _instance.houseNumber;
    return local$houseNumber == null
        ? CopyWith_Input_AddressFilterHouseNumber.stub(_then(_instance))
        : CopyWith_Input_AddressFilterHouseNumber(
            local$houseNumber,
            (e) => call(houseNumber: e),
          );
  }

  CopyWith_Input_AddressFilterApartmentNumber<TRes> get apartmentNumber {
    final local$apartmentNumber = _instance.apartmentNumber;
    return local$apartmentNumber == null
        ? CopyWith_Input_AddressFilterApartmentNumber.stub(_then(_instance))
        : CopyWith_Input_AddressFilterApartmentNumber(
            local$apartmentNumber,
            (e) => call(apartmentNumber: e),
          );
  }

  CopyWith_Input_AddressFilterSpecialLandmark<TRes> get specialLandmark {
    final local$specialLandmark = _instance.specialLandmark;
    return local$specialLandmark == null
        ? CopyWith_Input_AddressFilterSpecialLandmark.stub(_then(_instance))
        : CopyWith_Input_AddressFilterSpecialLandmark(
            local$specialLandmark,
            (e) => call(specialLandmark: e),
          );
  }

  CopyWith_Input_AddressFilterFamilyId<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_AddressFilterFamilyId.stub(_then(_instance))
        : CopyWith_Input_AddressFilterFamilyId(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_AddressFilterStoreId<TRes> get storeId {
    final local$storeId = _instance.storeId;
    return local$storeId == null
        ? CopyWith_Input_AddressFilterStoreId.stub(_then(_instance))
        : CopyWith_Input_AddressFilterStoreId(
            local$storeId,
            (e) => call(storeId: e),
          );
  }

  CopyWith_Input_AddressFilterHouseCode<TRes> get houseCode {
    final local$houseCode = _instance.houseCode;
    return local$houseCode == null
        ? CopyWith_Input_AddressFilterHouseCode.stub(_then(_instance))
        : CopyWith_Input_AddressFilterHouseCode(
            local$houseCode,
            (e) => call(houseCode: e),
          );
  }

  CopyWith_Input_AreaFilterInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreaFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaFilterInput(local$area, (e) => call(area: e));
  }

  CopyWith_Input_DistrictFilterInput<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Input_DistrictFilterInput.stub(_then(_instance))
        : CopyWith_Input_DistrictFilterInput(
            local$district,
            (e) => call(district: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$family,
            (e) => call(family: e),
          );
  }

  CopyWith_Input_StoreFilterInput<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoreFilterInput.stub(_then(_instance))
        : CopyWith_Input_StoreFilterInput(local$store, (e) => call(store: e));
  }

  CopyWith_Input_StreetFilterInput<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetFilterInput.stub(_then(_instance))
        : CopyWith_Input_StreetFilterInput(
            local$street,
            (e) => call(street: e),
          );
  }

  CopyWith_Input_AddressFilterFullAddressText<TRes> get fullAddressText {
    final local$fullAddressText = _instance.fullAddressText;
    return local$fullAddressText == null
        ? CopyWith_Input_AddressFilterFullAddressText.stub(_then(_instance))
        : CopyWith_Input_AddressFilterFullAddressText(
            local$fullAddressText,
            (e) => call(fullAddressText: e),
          );
  }

  CopyWith_Input_AddressFilterWithinPolygon<TRes> get withinPolygon {
    final local$withinPolygon = _instance.withinPolygon;
    return local$withinPolygon == null
        ? CopyWith_Input_AddressFilterWithinPolygon.stub(_then(_instance))
        : CopyWith_Input_AddressFilterWithinPolygon(
            local$withinPolygon,
            (e) => call(withinPolygon: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressFilterInput<TRes>
    implements CopyWith_Input_AddressFilterInput<TRes> {
  _CopyWithStubImpl_Input_AddressFilterInput(this._res);

  TRes _res;

  call({
    List<Input_AddressFilterInput>? and,
    List<Input_AddressFilterInput>? or,
    List<Input_AddressFilterInput>? not,
    Input_AddressFilterId? id,
    Input_AddressFilterCountryIsoCode? countryIsoCode,
    Input_AddressFilterDistrictId? districtId,
    Input_AddressFilterAreaId? areaId,
    Input_AddressFilterStreetId? streetId,
    Input_AddressFilterSubstreetName? substreetName,
    Input_AddressFilterGeolocation? geolocation,
    Input_AddressFilterStoreyNumber? storeyNumber,
    Input_AddressFilterHouseNumber? houseNumber,
    Input_AddressFilterApartmentNumber? apartmentNumber,
    Input_AddressFilterSpecialLandmark? specialLandmark,
    Input_AddressFilterFamilyId? familyId,
    Input_AddressFilterStoreId? storeId,
    Input_AddressFilterHouseCode? houseCode,
    Input_AreaFilterInput? area,
    Input_DistrictFilterInput? district,
    Input_FamilyFilterInput? family,
    Input_StoreFilterInput? store,
    Input_StreetFilterInput? street,
    Input_AddressFilterFullAddressText? fullAddressText,
    Input_AddressFilterWithinPolygon? withinPolygon,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_AddressFilterId<TRes> get id =>
      CopyWith_Input_AddressFilterId.stub(_res);

  CopyWith_Input_AddressFilterCountryIsoCode<TRes> get countryIsoCode =>
      CopyWith_Input_AddressFilterCountryIsoCode.stub(_res);

  CopyWith_Input_AddressFilterDistrictId<TRes> get districtId =>
      CopyWith_Input_AddressFilterDistrictId.stub(_res);

  CopyWith_Input_AddressFilterAreaId<TRes> get areaId =>
      CopyWith_Input_AddressFilterAreaId.stub(_res);

  CopyWith_Input_AddressFilterStreetId<TRes> get streetId =>
      CopyWith_Input_AddressFilterStreetId.stub(_res);

  CopyWith_Input_AddressFilterSubstreetName<TRes> get substreetName =>
      CopyWith_Input_AddressFilterSubstreetName.stub(_res);

  CopyWith_Input_AddressFilterGeolocation<TRes> get geolocation =>
      CopyWith_Input_AddressFilterGeolocation.stub(_res);

  CopyWith_Input_AddressFilterStoreyNumber<TRes> get storeyNumber =>
      CopyWith_Input_AddressFilterStoreyNumber.stub(_res);

  CopyWith_Input_AddressFilterHouseNumber<TRes> get houseNumber =>
      CopyWith_Input_AddressFilterHouseNumber.stub(_res);

  CopyWith_Input_AddressFilterApartmentNumber<TRes> get apartmentNumber =>
      CopyWith_Input_AddressFilterApartmentNumber.stub(_res);

  CopyWith_Input_AddressFilterSpecialLandmark<TRes> get specialLandmark =>
      CopyWith_Input_AddressFilterSpecialLandmark.stub(_res);

  CopyWith_Input_AddressFilterFamilyId<TRes> get familyId =>
      CopyWith_Input_AddressFilterFamilyId.stub(_res);

  CopyWith_Input_AddressFilterStoreId<TRes> get storeId =>
      CopyWith_Input_AddressFilterStoreId.stub(_res);

  CopyWith_Input_AddressFilterHouseCode<TRes> get houseCode =>
      CopyWith_Input_AddressFilterHouseCode.stub(_res);

  CopyWith_Input_AreaFilterInput<TRes> get area =>
      CopyWith_Input_AreaFilterInput.stub(_res);

  CopyWith_Input_DistrictFilterInput<TRes> get district =>
      CopyWith_Input_DistrictFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get family =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_StoreFilterInput<TRes> get store =>
      CopyWith_Input_StoreFilterInput.stub(_res);

  CopyWith_Input_StreetFilterInput<TRes> get street =>
      CopyWith_Input_StreetFilterInput.stub(_res);

  CopyWith_Input_AddressFilterFullAddressText<TRes> get fullAddressText =>
      CopyWith_Input_AddressFilterFullAddressText.stub(_res);

  CopyWith_Input_AddressFilterWithinPolygon<TRes> get withinPolygon =>
      CopyWith_Input_AddressFilterWithinPolygon.stub(_res);
}

class Input_AddressSortInput {
  factory Input_AddressSortInput({
    Enum_SortOrder? order,
    required Enum_AddressSortField field,
    Input_AddressWithinPolygonFieldInput? withinPolygonInput,
  }) => Input_AddressSortInput._({
    if (order != null) r'order': order,
    r'field': field,
    if (withinPolygonInput != null) r'withinPolygonInput': withinPolygonInput,
  });

  Input_AddressSortInput._(this._$data);

  factory Input_AddressSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_AddressSortField((l$field as String));
    if (data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = data['withinPolygonInput'];
      result$data['withinPolygonInput'] = l$withinPolygonInput == null
          ? null
          : Input_AddressWithinPolygonFieldInput.fromJson(
              (l$withinPolygonInput as Map<String, dynamic>),
            );
    }
    return Input_AddressSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_AddressSortField get field => (_$data['field'] as Enum_AddressSortField);

  Input_AddressWithinPolygonFieldInput? get withinPolygonInput =>
      (_$data['withinPolygonInput'] as Input_AddressWithinPolygonFieldInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_AddressSortField(l$field);
    if (_$data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = withinPolygonInput;
      result$data['withinPolygonInput'] = l$withinPolygonInput?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AddressSortInput<Input_AddressSortInput> get copyWith =>
      CopyWith_Input_AddressSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressSortInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_AddressSortInput<TRes> {
  factory CopyWith_Input_AddressSortInput(
    Input_AddressSortInput instance,
    TRes Function(Input_AddressSortInput) then,
  ) = _CopyWithImpl_Input_AddressSortInput;

  factory CopyWith_Input_AddressSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressSortInput;

  TRes call({
    Enum_SortOrder? order,
    Enum_AddressSortField? field,
    Input_AddressWithinPolygonFieldInput? withinPolygonInput,
  });
  CopyWith_Input_AddressWithinPolygonFieldInput<TRes> get withinPolygonInput;
}

class _CopyWithImpl_Input_AddressSortInput<TRes>
    implements CopyWith_Input_AddressSortInput<TRes> {
  _CopyWithImpl_Input_AddressSortInput(this._instance, this._then);

  final Input_AddressSortInput _instance;

  final TRes Function(Input_AddressSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? field = _undefined,
    Object? withinPolygonInput = _undefined,
  }) => _then(
    Input_AddressSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_AddressSortField),
      if (withinPolygonInput != _undefined)
        'withinPolygonInput':
            (withinPolygonInput as Input_AddressWithinPolygonFieldInput?),
    }),
  );

  CopyWith_Input_AddressWithinPolygonFieldInput<TRes> get withinPolygonInput {
    final local$withinPolygonInput = _instance.withinPolygonInput;
    return local$withinPolygonInput == null
        ? CopyWith_Input_AddressWithinPolygonFieldInput.stub(_then(_instance))
        : CopyWith_Input_AddressWithinPolygonFieldInput(
            local$withinPolygonInput,
            (e) => call(withinPolygonInput: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressSortInput<TRes>
    implements CopyWith_Input_AddressSortInput<TRes> {
  _CopyWithStubImpl_Input_AddressSortInput(this._res);

  TRes _res;

  call({
    Enum_SortOrder? order,
    Enum_AddressSortField? field,
    Input_AddressWithinPolygonFieldInput? withinPolygonInput,
  }) => _res;

  CopyWith_Input_AddressWithinPolygonFieldInput<TRes> get withinPolygonInput =>
      CopyWith_Input_AddressWithinPolygonFieldInput.stub(_res);
}

class Input_RosterEntryFilterBlurhash {
  factory Input_RosterEntryFilterBlurhash({
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
  }) => Input_RosterEntryFilterBlurhash._({
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

  Input_RosterEntryFilterBlurhash._(this._$data);

  factory Input_RosterEntryFilterBlurhash.fromJson(Map<String, dynamic> data) {
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
    return Input_RosterEntryFilterBlurhash._(result$data);
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

  CopyWith_Input_RosterEntryFilterBlurhash<Input_RosterEntryFilterBlurhash>
  get copyWith => CopyWith_Input_RosterEntryFilterBlurhash(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_RosterEntryFilterBlurhash ||
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

abstract class CopyWith_Input_RosterEntryFilterBlurhash<TRes> {
  factory CopyWith_Input_RosterEntryFilterBlurhash(
    Input_RosterEntryFilterBlurhash instance,
    TRes Function(Input_RosterEntryFilterBlurhash) then,
  ) = _CopyWithImpl_Input_RosterEntryFilterBlurhash;

  factory CopyWith_Input_RosterEntryFilterBlurhash.stub(TRes res) =
      _CopyWithStubImpl_Input_RosterEntryFilterBlurhash;

  TRes call({
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
  });
}

class _CopyWithImpl_Input_RosterEntryFilterBlurhash<TRes>
    implements CopyWith_Input_RosterEntryFilterBlurhash<TRes> {
  _CopyWithImpl_Input_RosterEntryFilterBlurhash(this._instance, this._then);

  final Input_RosterEntryFilterBlurhash _instance;

  final TRes Function(Input_RosterEntryFilterBlurhash) _then;

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
    Input_RosterEntryFilterBlurhash._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
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

class _CopyWithStubImpl_Input_RosterEntryFilterBlurhash<TRes>
    implements CopyWith_Input_RosterEntryFilterBlurhash<TRes> {
  _CopyWithStubImpl_Input_RosterEntryFilterBlurhash(this._res);

  TRes _res;

  call({
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
  }) => _res;
}

class Input_RosterEntryFilterPhotoUpdatedAt {
  factory Input_RosterEntryFilterPhotoUpdatedAt({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime?>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => Input_RosterEntryFilterPhotoUpdatedAt._({
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

  Input_RosterEntryFilterPhotoUpdatedAt._(this._$data);

  factory Input_RosterEntryFilterPhotoUpdatedAt.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null ? null : tstzFromString(l$eq);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = l$notEq == null ? null : tstzFromString(l$notEq);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : tstzFromString(e))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzFromString(l$lessThan);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzFromString(l$greaterThan);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzFromString(l$lessThanOrEqual);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzFromString(l$greaterThanOrEqual);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzFromString(l$isDistinctFrom);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzFromString(l$isNotDistinctFrom);
    }
    return Input_RosterEntryFilterPhotoUpdatedAt._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get notEq => (_$data['notEq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  DateTime? get lessThan => (_$data['lessThan'] as DateTime?);

  DateTime? get greaterThan => (_$data['greaterThan'] as DateTime?);

  DateTime? get lessThanOrEqual => (_$data['lessThanOrEqual'] as DateTime?);

  DateTime? get greaterThanOrEqual =>
      (_$data['greaterThanOrEqual'] as DateTime?);

  DateTime? get isDistinctFrom => (_$data['isDistinctFrom'] as DateTime?);

  DateTime? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : tstzToString(l$eq);
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq == null ? null : tstzToString(l$notEq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in
          ?.map((e) => e == null ? null : tstzToString(e))
          .toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzToString(l$lessThan);
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzToString(l$greaterThan);
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzToString(l$lessThanOrEqual);
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzToString(l$greaterThanOrEqual);
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzToString(l$isDistinctFrom);
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzToString(l$isNotDistinctFrom);
    }
    return result$data;
  }

  CopyWith_Input_RosterEntryFilterPhotoUpdatedAt<
    Input_RosterEntryFilterPhotoUpdatedAt
  >
  get copyWith =>
      CopyWith_Input_RosterEntryFilterPhotoUpdatedAt(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_RosterEntryFilterPhotoUpdatedAt ||
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
