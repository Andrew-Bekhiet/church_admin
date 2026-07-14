// Part 60 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_storesAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_storesAggregateBoolExpCount(
    Input_storesAggregateBoolExpCount instance,
    TRes Function(Input_storesAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_storesAggregateBoolExpCount;

  factory CopyWith_Input_storesAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_storesAggregateBoolExpCount;

  TRes call({
    List<Enum_StoresSelectColumn>? arguments,
    bool? distinct,
    Input_StoresBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_StoresBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_storesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_storesAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_storesAggregateBoolExpCount(this._instance, this._then);

  final Input_storesAggregateBoolExpCount _instance;

  final TRes Function(Input_storesAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_storesAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_StoresSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_StoresBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_StoresBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_storesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_storesAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_storesAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_StoresSelectColumn>? arguments,
    bool? distinct,
    Input_StoresBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_StoresBoolExp<TRes> get filter =>
      CopyWith_Input_StoresBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

enum Enum_AddressesConstraint {
  addresses_family_id_idx,
  addresses_pk,
  addresses_store_id_idx,
  $unknown
  ;

  factory Enum_AddressesConstraint.fromJson(String value) =>
      fromJson_Enum_AddressesConstraint(value);

  String toJson() => toJson_Enum_AddressesConstraint(this);
}

String toJson_Enum_AddressesConstraint(Enum_AddressesConstraint e) {
  switch (e) {
    case Enum_AddressesConstraint.addresses_family_id_idx:
      return r'addresses_family_id_idx';
    case Enum_AddressesConstraint.addresses_pk:
      return r'addresses_pk';
    case Enum_AddressesConstraint.addresses_store_id_idx:
      return r'addresses_store_id_idx';
    case Enum_AddressesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AddressesConstraint fromJson_Enum_AddressesConstraint(String value) {
  switch (value) {
    case r'addresses_family_id_idx':
      return Enum_AddressesConstraint.addresses_family_id_idx;
    case r'addresses_pk':
      return Enum_AddressesConstraint.addresses_pk;
    case r'addresses_store_id_idx':
      return Enum_AddressesConstraint.addresses_store_id_idx;
    default:
      return Enum_AddressesConstraint.$unknown;
  }
}

enum Enum_AddressesSelectColumn {
  apartmentNumber,
  areaId,
  countryIsoCode,
  districtId,
  familyId,
  geolocation,
  houseNumber,
  id,
  specialLandmark,
  storeId,
  storeyNumber,
  streetId,
  substreetName,
  $unknown
  ;

  factory Enum_AddressesSelectColumn.fromJson(String value) =>
      fromJson_Enum_AddressesSelectColumn(value);

  String toJson() => toJson_Enum_AddressesSelectColumn(this);
}

String toJson_Enum_AddressesSelectColumn(Enum_AddressesSelectColumn e) {
  switch (e) {
    case Enum_AddressesSelectColumn.apartmentNumber:
      return r'apartmentNumber';
    case Enum_AddressesSelectColumn.areaId:
      return r'areaId';
    case Enum_AddressesSelectColumn.countryIsoCode:
      return r'countryIsoCode';
    case Enum_AddressesSelectColumn.districtId:
      return r'districtId';
    case Enum_AddressesSelectColumn.familyId:
      return r'familyId';
    case Enum_AddressesSelectColumn.geolocation:
      return r'geolocation';
    case Enum_AddressesSelectColumn.houseNumber:
      return r'houseNumber';
    case Enum_AddressesSelectColumn.id:
      return r'id';
    case Enum_AddressesSelectColumn.specialLandmark:
      return r'specialLandmark';
    case Enum_AddressesSelectColumn.storeId:
      return r'storeId';
    case Enum_AddressesSelectColumn.storeyNumber:
      return r'storeyNumber';
    case Enum_AddressesSelectColumn.streetId:
      return r'streetId';
    case Enum_AddressesSelectColumn.substreetName:
      return r'substreetName';
    case Enum_AddressesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AddressesSelectColumn fromJson_Enum_AddressesSelectColumn(String value) {
  switch (value) {
    case r'apartmentNumber':
      return Enum_AddressesSelectColumn.apartmentNumber;
    case r'areaId':
      return Enum_AddressesSelectColumn.areaId;
    case r'countryIsoCode':
      return Enum_AddressesSelectColumn.countryIsoCode;
    case r'districtId':
      return Enum_AddressesSelectColumn.districtId;
    case r'familyId':
      return Enum_AddressesSelectColumn.familyId;
    case r'geolocation':
      return Enum_AddressesSelectColumn.geolocation;
    case r'houseNumber':
      return Enum_AddressesSelectColumn.houseNumber;
    case r'id':
      return Enum_AddressesSelectColumn.id;
    case r'specialLandmark':
      return Enum_AddressesSelectColumn.specialLandmark;
    case r'storeId':
      return Enum_AddressesSelectColumn.storeId;
    case r'storeyNumber':
      return Enum_AddressesSelectColumn.storeyNumber;
    case r'streetId':
      return Enum_AddressesSelectColumn.streetId;
    case r'substreetName':
      return Enum_AddressesSelectColumn.substreetName;
    default:
      return Enum_AddressesSelectColumn.$unknown;
  }
}

enum Enum_AddressesUpdateColumn {
  apartmentNumber,
  areaId,
  countryIsoCode,
  districtId,
  familyId,
  geolocation,
  houseNumber,
  specialLandmark,
  storeId,
  storeyNumber,
  streetId,
  substreetName,
  $unknown
  ;

  factory Enum_AddressesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AddressesUpdateColumn(value);

  String toJson() => toJson_Enum_AddressesUpdateColumn(this);
}

String toJson_Enum_AddressesUpdateColumn(Enum_AddressesUpdateColumn e) {
  switch (e) {
    case Enum_AddressesUpdateColumn.apartmentNumber:
      return r'apartmentNumber';
    case Enum_AddressesUpdateColumn.areaId:
      return r'areaId';
    case Enum_AddressesUpdateColumn.countryIsoCode:
      return r'countryIsoCode';
    case Enum_AddressesUpdateColumn.districtId:
      return r'districtId';
    case Enum_AddressesUpdateColumn.familyId:
      return r'familyId';
    case Enum_AddressesUpdateColumn.geolocation:
      return r'geolocation';
    case Enum_AddressesUpdateColumn.houseNumber:
      return r'houseNumber';
    case Enum_AddressesUpdateColumn.specialLandmark:
      return r'specialLandmark';
    case Enum_AddressesUpdateColumn.storeId:
      return r'storeId';
    case Enum_AddressesUpdateColumn.storeyNumber:
      return r'storeyNumber';
    case Enum_AddressesUpdateColumn.streetId:
      return r'streetId';
    case Enum_AddressesUpdateColumn.substreetName:
      return r'substreetName';
    case Enum_AddressesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AddressesUpdateColumn fromJson_Enum_AddressesUpdateColumn(String value) {
  switch (value) {
    case r'apartmentNumber':
      return Enum_AddressesUpdateColumn.apartmentNumber;
    case r'areaId':
      return Enum_AddressesUpdateColumn.areaId;
    case r'countryIsoCode':
      return Enum_AddressesUpdateColumn.countryIsoCode;
    case r'districtId':
      return Enum_AddressesUpdateColumn.districtId;
    case r'familyId':
      return Enum_AddressesUpdateColumn.familyId;
    case r'geolocation':
      return Enum_AddressesUpdateColumn.geolocation;
    case r'houseNumber':
      return Enum_AddressesUpdateColumn.houseNumber;
    case r'specialLandmark':
      return Enum_AddressesUpdateColumn.specialLandmark;
    case r'storeId':
      return Enum_AddressesUpdateColumn.storeId;
    case r'storeyNumber':
      return Enum_AddressesUpdateColumn.storeyNumber;
    case r'streetId':
      return Enum_AddressesUpdateColumn.streetId;
    case r'substreetName':
      return Enum_AddressesUpdateColumn.substreetName;
    default:
      return Enum_AddressesUpdateColumn.$unknown;
  }
}

enum Enum_AreasConstraint {
  areas_pkey,
  $unknown
  ;

  factory Enum_AreasConstraint.fromJson(String value) =>
      fromJson_Enum_AreasConstraint(value);

  String toJson() => toJson_Enum_AreasConstraint(this);
}

String toJson_Enum_AreasConstraint(Enum_AreasConstraint e) {
  switch (e) {
    case Enum_AreasConstraint.areas_pkey:
      return r'areas_pkey';
    case Enum_AreasConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AreasConstraint fromJson_Enum_AreasConstraint(String value) {
  switch (value) {
    case r'areas_pkey':
      return Enum_AreasConstraint.areas_pkey;
    default:
      return Enum_AreasConstraint.$unknown;
  }
}

enum Enum_AreasSelectColumn {
  blurhash,
  bounds,
  color,
  id,
  name,
  photoUpdatedAt,
  $unknown
  ;

  factory Enum_AreasSelectColumn.fromJson(String value) =>
      fromJson_Enum_AreasSelectColumn(value);

  String toJson() => toJson_Enum_AreasSelectColumn(this);
}

String toJson_Enum_AreasSelectColumn(Enum_AreasSelectColumn e) {
  switch (e) {
    case Enum_AreasSelectColumn.blurhash:
      return r'blurhash';
    case Enum_AreasSelectColumn.bounds:
      return r'bounds';
    case Enum_AreasSelectColumn.color:
      return r'color';
    case Enum_AreasSelectColumn.id:
      return r'id';
    case Enum_AreasSelectColumn.name:
      return r'name';
    case Enum_AreasSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_AreasSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasSelectColumn fromJson_Enum_AreasSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_AreasSelectColumn.blurhash;
    case r'bounds':
      return Enum_AreasSelectColumn.bounds;
    case r'color':
      return Enum_AreasSelectColumn.color;
    case r'id':
      return Enum_AreasSelectColumn.id;
    case r'name':
      return Enum_AreasSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_AreasSelectColumn.photoUpdatedAt;
    default:
      return Enum_AreasSelectColumn.$unknown;
  }
}

enum Enum_AreasStreetsConstraint {
  areas_streets_pk,
  $unknown
  ;

  factory Enum_AreasStreetsConstraint.fromJson(String value) =>
      fromJson_Enum_AreasStreetsConstraint(value);

  String toJson() => toJson_Enum_AreasStreetsConstraint(this);
}

String toJson_Enum_AreasStreetsConstraint(Enum_AreasStreetsConstraint e) {
  switch (e) {
    case Enum_AreasStreetsConstraint.areas_streets_pk:
      return r'areas_streets_pk';
    case Enum_AreasStreetsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AreasStreetsConstraint fromJson_Enum_AreasStreetsConstraint(String value) {
  switch (value) {
    case r'areas_streets_pk':
      return Enum_AreasStreetsConstraint.areas_streets_pk;
    default:
      return Enum_AreasStreetsConstraint.$unknown;
  }
}

enum Enum_AreasStreetsSelectColumn {
  areaId,
  streetId,
  $unknown
  ;

  factory Enum_AreasStreetsSelectColumn.fromJson(String value) =>
      fromJson_Enum_AreasStreetsSelectColumn(value);

  String toJson() => toJson_Enum_AreasStreetsSelectColumn(this);
}

String toJson_Enum_AreasStreetsSelectColumn(Enum_AreasStreetsSelectColumn e) {
  switch (e) {
    case Enum_AreasStreetsSelectColumn.areaId:
      return r'areaId';
    case Enum_AreasStreetsSelectColumn.streetId:
      return r'streetId';
    case Enum_AreasStreetsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasStreetsSelectColumn fromJson_Enum_AreasStreetsSelectColumn(
  String value,
) {
  switch (value) {
    case r'areaId':
      return Enum_AreasStreetsSelectColumn.areaId;
    case r'streetId':
      return Enum_AreasStreetsSelectColumn.streetId;
    default:
      return Enum_AreasStreetsSelectColumn.$unknown;
  }
}

enum Enum_AreasStreetsUpdateColumn {
  $_PLACEHOLDER,
  $unknown
  ;

  factory Enum_AreasStreetsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AreasStreetsUpdateColumn(value);

  String toJson() => toJson_Enum_AreasStreetsUpdateColumn(this);
}

String toJson_Enum_AreasStreetsUpdateColumn(Enum_AreasStreetsUpdateColumn e) {
  switch (e) {
    case Enum_AreasStreetsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_AreasStreetsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasStreetsUpdateColumn fromJson_Enum_AreasStreetsUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_AreasStreetsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_AreasStreetsUpdateColumn.$unknown;
  }
}

enum Enum_AreasUpdateColumn {
  bounds,
  color,
  name,
  $unknown
  ;

  factory Enum_AreasUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AreasUpdateColumn(value);

  String toJson() => toJson_Enum_AreasUpdateColumn(this);
}

String toJson_Enum_AreasUpdateColumn(Enum_AreasUpdateColumn e) {
  switch (e) {
    case Enum_AreasUpdateColumn.bounds:
      return r'bounds';
    case Enum_AreasUpdateColumn.color:
      return r'color';
    case Enum_AreasUpdateColumn.name:
      return r'name';
    case Enum_AreasUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasUpdateColumn fromJson_Enum_AreasUpdateColumn(String value) {
  switch (value) {
    case r'bounds':
      return Enum_AreasUpdateColumn.bounds;
    case r'color':
      return Enum_AreasUpdateColumn.color;
    case r'name':
      return Enum_AreasUpdateColumn.name;
    default:
      return Enum_AreasUpdateColumn.$unknown;
  }
}

enum Enum_AuthUsersAdminOnConstraint {
  users_admin_on_area,
  users_admin_on_group,
  users_admin_on_pkey,
  users_admin_on_service,
  $unknown
  ;

  factory Enum_AuthUsersAdminOnConstraint.fromJson(String value) =>
      fromJson_Enum_AuthUsersAdminOnConstraint(value);

  String toJson() => toJson_Enum_AuthUsersAdminOnConstraint(this);
}

String toJson_Enum_AuthUsersAdminOnConstraint(
  Enum_AuthUsersAdminOnConstraint e,
) {
  switch (e) {
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_area:
      return r'users_admin_on_area';
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_group:
      return r'users_admin_on_group';
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_pkey:
      return r'users_admin_on_pkey';
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_service:
      return r'users_admin_on_service';
    case Enum_AuthUsersAdminOnConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersAdminOnConstraint fromJson_Enum_AuthUsersAdminOnConstraint(
  String value,
) {
  switch (value) {
    case r'users_admin_on_area':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_area;
    case r'users_admin_on_group':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_group;
    case r'users_admin_on_pkey':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_pkey;
    case r'users_admin_on_service':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_service;
    default:
      return Enum_AuthUsersAdminOnConstraint.$unknown;
  }
}

enum Enum_AuthUsersAdminOnSelectColumn {
  adminOnArea,
  adminOnGroup,
  adminOnService,
  areaAdminOnUsers,
  areaAllowEdit,
  areaAllowExport,
  groupAdminOnUsers,
  groupAllowEdit,
  groupAllowExport,
  groupAllowRecordAttendance,
  groupAllowRecordServantsAttendance,
  groupWriteRelatedFamilies,
  permissionId,
  serviceAdminOnUsers,
  serviceAllowEdit,
  serviceAllowExport,
  serviceAllowRecordAttendance,
  serviceAllowRecordServantsAttendance,
  serviceGender,
  serviceStudyYear,
  serviceWriteRelatedFamilies,
  uid,
  $unknown
  ;

  factory Enum_AuthUsersAdminOnSelectColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersAdminOnSelectColumn(value);

  String toJson() => toJson_Enum_AuthUsersAdminOnSelectColumn(this);
}

String toJson_Enum_AuthUsersAdminOnSelectColumn(
  Enum_AuthUsersAdminOnSelectColumn e,
) {
  switch (e) {
    case Enum_AuthUsersAdminOnSelectColumn.adminOnArea:
      return r'adminOnArea';
    case Enum_AuthUsersAdminOnSelectColumn.adminOnGroup:
      return r'adminOnGroup';
    case Enum_AuthUsersAdminOnSelectColumn.adminOnService:
      return r'adminOnService';
    case Enum_AuthUsersAdminOnSelectColumn.areaAdminOnUsers:
      return r'areaAdminOnUsers';
    case Enum_AuthUsersAdminOnSelectColumn.areaAllowEdit:
      return r'areaAllowEdit';
    case Enum_AuthUsersAdminOnSelectColumn.areaAllowExport:
      return r'areaAllowExport';
    case Enum_AuthUsersAdminOnSelectColumn.groupAdminOnUsers:
      return r'groupAdminOnUsers';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowEdit:
      return r'groupAllowEdit';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowExport:
      return r'groupAllowExport';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowRecordAttendance:
      return r'groupAllowRecordAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowRecordServantsAttendance:
      return r'groupAllowRecordServantsAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.groupWriteRelatedFamilies:
      return r'groupWriteRelatedFamilies';
    case Enum_AuthUsersAdminOnSelectColumn.permissionId:
      return r'permissionId';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAdminOnUsers:
      return r'serviceAdminOnUsers';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowEdit:
      return r'serviceAllowEdit';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowExport:
      return r'serviceAllowExport';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowRecordAttendance:
      return r'serviceAllowRecordAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowRecordServantsAttendance:
      return r'serviceAllowRecordServantsAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_AuthUsersAdminOnSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_AuthUsersAdminOnSelectColumn.serviceWriteRelatedFamilies:
      return r'serviceWriteRelatedFamilies';
    case Enum_AuthUsersAdminOnSelectColumn.uid:
      return r'uid';
    case Enum_AuthUsersAdminOnSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersAdminOnSelectColumn fromJson_Enum_AuthUsersAdminOnSelectColumn(
  String value,
) {
  switch (value) {
    case r'adminOnArea':
      return Enum_AuthUsersAdminOnSelectColumn.adminOnArea;
    case r'adminOnGroup':
      return Enum_AuthUsersAdminOnSelectColumn.adminOnGroup;
    case r'adminOnService':
      return Enum_AuthUsersAdminOnSelectColumn.adminOnService;
    case r'areaAdminOnUsers':
      return Enum_AuthUsersAdminOnSelectColumn.areaAdminOnUsers;
    case r'areaAllowEdit':
      return Enum_AuthUsersAdminOnSelectColumn.areaAllowEdit;
    case r'areaAllowExport':
      return Enum_AuthUsersAdminOnSelectColumn.areaAllowExport;
    case r'groupAdminOnUsers':
      return Enum_AuthUsersAdminOnSelectColumn.groupAdminOnUsers;
    case r'groupAllowEdit':
      return Enum_AuthUsersAdminOnSelectColumn.groupAllowEdit;
    case r'groupAllowExport':
      return Enum_AuthUsersAdminOnSelectColumn.groupAllowExport;
    case r'groupAllowRecordAttendance':
      return Enum_AuthUsersAdminOnSelectColumn.groupAllowRecordAttendance;
    case r'groupAllowRecordServantsAttendance':
      return Enum_AuthUsersAdminOnSelectColumn
          .groupAllowRecordServantsAttendance;
    case r'groupWriteRelatedFamilies':
      return Enum_AuthUsersAdminOnSelectColumn.groupWriteRelatedFamilies;
    case r'permissionId':
      return Enum_AuthUsersAdminOnSelectColumn.permissionId;
    case r'serviceAdminOnUsers':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAdminOnUsers;
    case r'serviceAllowEdit':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAllowEdit;
    case r'serviceAllowExport':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAllowExport;
    case r'serviceAllowRecordAttendance':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAllowRecordAttendance;
    case r'serviceAllowRecordServantsAttendance':
      return Enum_AuthUsersAdminOnSelectColumn
          .serviceAllowRecordServantsAttendance;
    case r'serviceGender':
      return Enum_AuthUsersAdminOnSelectColumn.serviceGender;
    case r'serviceStudyYear':
      return Enum_AuthUsersAdminOnSelectColumn.serviceStudyYear;
    case r'serviceWriteRelatedFamilies':
      return Enum_AuthUsersAdminOnSelectColumn.serviceWriteRelatedFamilies;
    case r'uid':
      return Enum_AuthUsersAdminOnSelectColumn.uid;
    default:
      return Enum_AuthUsersAdminOnSelectColumn.$unknown;
  }
}

enum Enum_AuthUsersAdminOnUpdateColumn {
  $_PLACEHOLDER,
  $unknown
  ;

  factory Enum_AuthUsersAdminOnUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersAdminOnUpdateColumn(value);

  String toJson() => toJson_Enum_AuthUsersAdminOnUpdateColumn(this);
}

String toJson_Enum_AuthUsersAdminOnUpdateColumn(
  Enum_AuthUsersAdminOnUpdateColumn e,
) {
  switch (e) {
    case Enum_AuthUsersAdminOnUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_AuthUsersAdminOnUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersAdminOnUpdateColumn fromJson_Enum_AuthUsersAdminOnUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_AuthUsersAdminOnUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_AuthUsersAdminOnUpdateColumn.$unknown;
  }
}

enum Enum_AuthUsersDataSelectColumn {
  blurhash,
  email,
  name,
  photoUpdatedAt,
  uid,
  $unknown
  ;

  factory Enum_AuthUsersDataSelectColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersDataSelectColumn(value);

  String toJson() => toJson_Enum_AuthUsersDataSelectColumn(this);
}

String toJson_Enum_AuthUsersDataSelectColumn(Enum_AuthUsersDataSelectColumn e) {
  switch (e) {
    case Enum_AuthUsersDataSelectColumn.blurhash:
      return r'blurhash';
    case Enum_AuthUsersDataSelectColumn.email:
      return r'email';
    case Enum_AuthUsersDataSelectColumn.name:
      return r'name';
    case Enum_AuthUsersDataSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_AuthUsersDataSelectColumn.uid:
      return r'uid';
    case Enum_AuthUsersDataSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersDataSelectColumn fromJson_Enum_AuthUsersDataSelectColumn(
  String value,
) {
  switch (value) {
    case r'blurhash':
      return Enum_AuthUsersDataSelectColumn.blurhash;
    case r'email':
      return Enum_AuthUsersDataSelectColumn.email;
    case r'name':
      return Enum_AuthUsersDataSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_AuthUsersDataSelectColumn.photoUpdatedAt;
    case r'uid':
      return Enum_AuthUsersDataSelectColumn.uid;
    default:
      return Enum_AuthUsersDataSelectColumn.$unknown;
  }
}

enum Enum_AuthUsersPermissionsConstraint {
  users_permissions_pkey,
  users_permissions_uid_permission_key,
  $unknown
  ;

  factory Enum_AuthUsersPermissionsConstraint.fromJson(String value) =>
      fromJson_Enum_AuthUsersPermissionsConstraint(value);

  String toJson() => toJson_Enum_AuthUsersPermissionsConstraint(this);
}

String toJson_Enum_AuthUsersPermissionsConstraint(
  Enum_AuthUsersPermissionsConstraint e,
) {
  switch (e) {
    case Enum_AuthUsersPermissionsConstraint.users_permissions_pkey:
      return r'users_permissions_pkey';
    case Enum_AuthUsersPermissionsConstraint
        .users_permissions_uid_permission_key:
      return r'users_permissions_uid_permission_key';
    case Enum_AuthUsersPermissionsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersPermissionsConstraint
fromJson_Enum_AuthUsersPermissionsConstraint(String value) {
  switch (value) {
    case r'users_permissions_pkey':
      return Enum_AuthUsersPermissionsConstraint.users_permissions_pkey;
    case r'users_permissions_uid_permission_key':
      return Enum_AuthUsersPermissionsConstraint
          .users_permissions_uid_permission_key;
    default:
      return Enum_AuthUsersPermissionsConstraint.$unknown;
  }
}

enum Enum_AuthUsersPermissionsSelectColumn {
  permission,
  uid,
  $unknown
  ;

  factory Enum_AuthUsersPermissionsSelectColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersPermissionsSelectColumn(value);

  String toJson() => toJson_Enum_AuthUsersPermissionsSelectColumn(this);
}

String toJson_Enum_AuthUsersPermissionsSelectColumn(
  Enum_AuthUsersPermissionsSelectColumn e,
) {
  switch (e) {
    case Enum_AuthUsersPermissionsSelectColumn.permission:
      return r'permission';
    case Enum_AuthUsersPermissionsSelectColumn.uid:
      return r'uid';
    case Enum_AuthUsersPermissionsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersPermissionsSelectColumn
fromJson_Enum_AuthUsersPermissionsSelectColumn(String value) {
  switch (value) {
    case r'permission':
      return Enum_AuthUsersPermissionsSelectColumn.permission;
    case r'uid':
      return Enum_AuthUsersPermissionsSelectColumn.uid;
    default:
      return Enum_AuthUsersPermissionsSelectColumn.$unknown;
  }
}

enum Enum_AuthUsersPermissionsUpdateColumn {
  $_PLACEHOLDER,
  $unknown
  ;

  factory Enum_AuthUsersPermissionsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersPermissionsUpdateColumn(value);

  String toJson() => toJson_Enum_AuthUsersPermissionsUpdateColumn(this);
}

String toJson_Enum_AuthUsersPermissionsUpdateColumn(
  Enum_AuthUsersPermissionsUpdateColumn e,
) {
  switch (e) {
    case Enum_AuthUsersPermissionsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_AuthUsersPermissionsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersPermissionsUpdateColumn
fromJson_Enum_AuthUsersPermissionsUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_AuthUsersPermissionsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_AuthUsersPermissionsUpdateColumn.$unknown;
  }
}

enum Enum_ChurchesConstraint {
  churches_name_key,
  churches_pkey,
  $unknown
  ;

  factory Enum_ChurchesConstraint.fromJson(String value) =>
      fromJson_Enum_ChurchesConstraint(value);

  String toJson() => toJson_Enum_ChurchesConstraint(this);
}

String toJson_Enum_ChurchesConstraint(Enum_ChurchesConstraint e) {
  switch (e) {
    case Enum_ChurchesConstraint.churches_name_key:
      return r'churches_name_key';
    case Enum_ChurchesConstraint.churches_pkey:
      return r'churches_pkey';
    case Enum_ChurchesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesConstraint fromJson_Enum_ChurchesConstraint(String value) {
  switch (value) {
    case r'churches_name_key':
      return Enum_ChurchesConstraint.churches_name_key;
    case r'churches_pkey':
      return Enum_ChurchesConstraint.churches_pkey;
    default:
      return Enum_ChurchesConstraint.$unknown;
  }
}

enum Enum_ChurchesSelectColumn {
  id,
  isHidden,
  name,
  $unknown
  ;

  factory Enum_ChurchesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ChurchesSelectColumn(value);

  String toJson() => toJson_Enum_ChurchesSelectColumn(this);
}

String toJson_Enum_ChurchesSelectColumn(Enum_ChurchesSelectColumn e) {
  switch (e) {
    case Enum_ChurchesSelectColumn.id:
      return r'id';
    case Enum_ChurchesSelectColumn.isHidden:
      return r'isHidden';
    case Enum_ChurchesSelectColumn.name:
      return r'name';
    case Enum_ChurchesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesSelectColumn fromJson_Enum_ChurchesSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_ChurchesSelectColumn.id;
    case r'isHidden':
      return Enum_ChurchesSelectColumn.isHidden;
    case r'name':
      return Enum_ChurchesSelectColumn.name;
    default:
      return Enum_ChurchesSelectColumn.$unknown;
  }
}

enum Enum_ChurchesUpdateColumn {
  name,
  $unknown
  ;

  factory Enum_ChurchesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ChurchesUpdateColumn(value);

  String toJson() => toJson_Enum_ChurchesUpdateColumn(this);
}

String toJson_Enum_ChurchesUpdateColumn(Enum_ChurchesUpdateColumn e) {
  switch (e) {
    case Enum_ChurchesUpdateColumn.name:
      return r'name';
    case Enum_ChurchesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesUpdateColumn fromJson_Enum_ChurchesUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_ChurchesUpdateColumn.name;
    default:
      return Enum_ChurchesUpdateColumn.$unknown;
  }
}

enum Enum_ClassesConstraint {
  classes_pkey,
  $unknown
  ;

  factory Enum_ClassesConstraint.fromJson(String value) =>
      fromJson_Enum_ClassesConstraint(value);

  String toJson() => toJson_Enum_ClassesConstraint(this);
}

String toJson_Enum_ClassesConstraint(Enum_ClassesConstraint e) {
  switch (e) {
    case Enum_ClassesConstraint.classes_pkey:
      return r'classes_pkey';
    case Enum_ClassesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesConstraint fromJson_Enum_ClassesConstraint(String value) {
  switch (value) {
    case r'classes_pkey':
      return Enum_ClassesConstraint.classes_pkey;
    default:
      return Enum_ClassesConstraint.$unknown;
  }
}

enum Enum_ClassesPersonsSelectColumn {
  classId,
  personId,
  $unknown
  ;

  factory Enum_ClassesPersonsSelectColumn.fromJson(String value) =>
      fromJson_Enum_ClassesPersonsSelectColumn(value);

  String toJson() => toJson_Enum_ClassesPersonsSelectColumn(this);
}

String toJson_Enum_ClassesPersonsSelectColumn(
  Enum_ClassesPersonsSelectColumn e,
) {
  switch (e) {
    case Enum_ClassesPersonsSelectColumn.classId:
      return r'classId';
    case Enum_ClassesPersonsSelectColumn.personId:
      return r'personId';
    case Enum_ClassesPersonsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesPersonsSelectColumn fromJson_Enum_ClassesPersonsSelectColumn(
  String value,
) {
  switch (value) {
    case r'classId':
      return Enum_ClassesPersonsSelectColumn.classId;
    case r'personId':
      return Enum_ClassesPersonsSelectColumn.personId;
    default:
      return Enum_ClassesPersonsSelectColumn.$unknown;
  }
}

enum Enum_ClassesSelectColumn {
  blurhash,
  color,
  id,
  name,
  photoUpdatedAt,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown
  ;

  factory Enum_ClassesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ClassesSelectColumn(value);

  String toJson() => toJson_Enum_ClassesSelectColumn(this);
}

String toJson_Enum_ClassesSelectColumn(Enum_ClassesSelectColumn e) {
  switch (e) {
    case Enum_ClassesSelectColumn.blurhash:
      return r'blurhash';
    case Enum_ClassesSelectColumn.color:
      return r'color';
    case Enum_ClassesSelectColumn.id:
      return r'id';
    case Enum_ClassesSelectColumn.name:
      return r'name';
    case Enum_ClassesSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_ClassesSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumn.serviceId:
      return r'serviceId';
    case Enum_ClassesSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_ClassesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumn fromJson_Enum_ClassesSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_ClassesSelectColumn.blurhash;
    case r'color':
      return Enum_ClassesSelectColumn.color;
    case r'id':
      return Enum_ClassesSelectColumn.id;
    case r'name':
      return Enum_ClassesSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_ClassesSelectColumn.photoUpdatedAt;
    case r'serviceGender':
      return Enum_ClassesSelectColumn.serviceGender;
    case r'serviceId':
      return Enum_ClassesSelectColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_ClassesSelectColumn.serviceStudyYear;
    default:
      return Enum_ClassesSelectColumn.$unknown;
  }
}

enum Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns {
  serviceGender,
  $unknown
  ;

  factory Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns e,
) {
  switch (e) {
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
          .serviceGender;
    default:
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns {
  serviceGender,
  $unknown
  ;

  factory Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns e,
) {
  switch (e) {
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
          .serviceGender;
    default:
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_ClassesUpdateColumn {
  color,
  name,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown
  ;

  factory Enum_ClassesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ClassesUpdateColumn(value);

  String toJson() => toJson_Enum_ClassesUpdateColumn(this);
}

String toJson_Enum_ClassesUpdateColumn(Enum_ClassesUpdateColumn e) {
  switch (e) {
    case Enum_ClassesUpdateColumn.color:
      return r'color';
    case Enum_ClassesUpdateColumn.name:
      return r'name';
    case Enum_ClassesUpdateColumn.serviceGender:
      return r'serviceGender';
    case Enum_ClassesUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_ClassesUpdateColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_ClassesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesUpdateColumn fromJson_Enum_ClassesUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_ClassesUpdateColumn.color;
    case r'name':
      return Enum_ClassesUpdateColumn.name;
    case r'serviceGender':
      return Enum_ClassesUpdateColumn.serviceGender;
    case r'serviceId':
      return Enum_ClassesUpdateColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_ClassesUpdateColumn.serviceStudyYear;
    default:
      return Enum_ClassesUpdateColumn.$unknown;
  }
}

enum Enum_CollegesConstraint {
  colleges_name_key,
  colleges_pkey,
  $unknown
  ;

  factory Enum_CollegesConstraint.fromJson(String value) =>
      fromJson_Enum_CollegesConstraint(value);

  String toJson() => toJson_Enum_CollegesConstraint(this);
}

String toJson_Enum_CollegesConstraint(Enum_CollegesConstraint e) {
  switch (e) {
    case Enum_CollegesConstraint.colleges_name_key:
      return r'colleges_name_key';
    case Enum_CollegesConstraint.colleges_pkey:
      return r'colleges_pkey';
    case Enum_CollegesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesConstraint fromJson_Enum_CollegesConstraint(String value) {
  switch (value) {
    case r'colleges_name_key':
      return Enum_CollegesConstraint.colleges_name_key;
    case r'colleges_pkey':
      return Enum_CollegesConstraint.colleges_pkey;
    default:
      return Enum_CollegesConstraint.$unknown;
  }
}

enum Enum_CollegesSelectColumn {
  id,
  name,
  universityId,
  $unknown
  ;

  factory Enum_CollegesSelectColumn.fromJson(String value) =>
      fromJson_Enum_CollegesSelectColumn(value);

  String toJson() => toJson_Enum_CollegesSelectColumn(this);
}

String toJson_Enum_CollegesSelectColumn(Enum_CollegesSelectColumn e) {
  switch (e) {
    case Enum_CollegesSelectColumn.id:
      return r'id';
    case Enum_CollegesSelectColumn.name:
      return r'name';
    case Enum_CollegesSelectColumn.universityId:
      return r'universityId';
    case Enum_CollegesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesSelectColumn fromJson_Enum_CollegesSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_CollegesSelectColumn.id;
    case r'name':
      return Enum_CollegesSelectColumn.name;
    case r'universityId':
      return Enum_CollegesSelectColumn.universityId;
    default:
      return Enum_CollegesSelectColumn.$unknown;
  }
}

enum Enum_CollegesUpdateColumn {
  name,
  $unknown
  ;

  factory Enum_CollegesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_CollegesUpdateColumn(value);

  String toJson() => toJson_Enum_CollegesUpdateColumn(this);
}

String toJson_Enum_CollegesUpdateColumn(Enum_CollegesUpdateColumn e) {
  switch (e) {
    case Enum_CollegesUpdateColumn.name:
      return r'name';
    case Enum_CollegesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesUpdateColumn fromJson_Enum_CollegesUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_CollegesUpdateColumn.name;
    default:
      return Enum_CollegesUpdateColumn.$unknown;
  }
}

enum Enum_CursorOrdering {
  ASC,
  DESC,
  $unknown
  ;

  factory Enum_CursorOrdering.fromJson(String value) =>
      fromJson_Enum_CursorOrdering(value);

  String toJson() => toJson_Enum_CursorOrdering(this);
}

String toJson_Enum_CursorOrdering(Enum_CursorOrdering e) {
  switch (e) {
    case Enum_CursorOrdering.ASC:
      return r'ASC';
    case Enum_CursorOrdering.DESC:
      return r'DESC';
    case Enum_CursorOrdering.$unknown:
      return r'$unknown';
  }
}

Enum_CursorOrdering fromJson_Enum_CursorOrdering(String value) {
  switch (value) {
    case r'ASC':
      return Enum_CursorOrdering.ASC;
    case r'DESC':
      return Enum_CursorOrdering.DESC;
    default:
      return Enum_CursorOrdering.$unknown;
  }
}

enum Enum_DistrictsConstraint {
  districts_pk,
  districts_unique_name,
  $unknown
  ;

  factory Enum_DistrictsConstraint.fromJson(String value) =>
      fromJson_Enum_DistrictsConstraint(value);

  String toJson() => toJson_Enum_DistrictsConstraint(this);
}

String toJson_Enum_DistrictsConstraint(Enum_DistrictsConstraint e) {
  switch (e) {
    case Enum_DistrictsConstraint.districts_pk:
      return r'districts_pk';
    case Enum_DistrictsConstraint.districts_unique_name:
      return r'districts_unique_name';
    case Enum_DistrictsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsConstraint fromJson_Enum_DistrictsConstraint(String value) {
  switch (value) {
    case r'districts_pk':
      return Enum_DistrictsConstraint.districts_pk;
    case r'districts_unique_name':
      return Enum_DistrictsConstraint.districts_unique_name;
    default:
      return Enum_DistrictsConstraint.$unknown;
  }
}

enum Enum_DistrictsSelectColumn {
  id,
  name,
  $unknown
  ;

  factory Enum_DistrictsSelectColumn.fromJson(String value) =>
      fromJson_Enum_DistrictsSelectColumn(value);

  String toJson() => toJson_Enum_DistrictsSelectColumn(this);
}

String toJson_Enum_DistrictsSelectColumn(Enum_DistrictsSelectColumn e) {
  switch (e) {
    case Enum_DistrictsSelectColumn.id:
      return r'id';
    case Enum_DistrictsSelectColumn.name:
      return r'name';
    case Enum_DistrictsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsSelectColumn fromJson_Enum_DistrictsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_DistrictsSelectColumn.id;
    case r'name':
      return Enum_DistrictsSelectColumn.name;
    default:
      return Enum_DistrictsSelectColumn.$unknown;
  }
}

enum Enum_DistrictsUpdateColumn {
  name,
  $unknown
  ;

  factory Enum_DistrictsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_DistrictsUpdateColumn(value);

  String toJson() => toJson_Enum_DistrictsUpdateColumn(this);
}

String toJson_Enum_DistrictsUpdateColumn(Enum_DistrictsUpdateColumn e) {
  switch (e) {
    case Enum_DistrictsUpdateColumn.name:
      return r'name';
    case Enum_DistrictsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsUpdateColumn fromJson_Enum_DistrictsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_DistrictsUpdateColumn.name;
    default:
      return Enum_DistrictsUpdateColumn.$unknown;
  }
}

enum Enum_FamiliesAdminsPhonesSelectColumn {
  aggregatedPhones,
  familyId,
  $unknown
  ;

  factory Enum_FamiliesAdminsPhonesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesAdminsPhonesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesAdminsPhonesSelectColumn(this);
}

String toJson_Enum_FamiliesAdminsPhonesSelectColumn(
  Enum_FamiliesAdminsPhonesSelectColumn e,
) {
  switch (e) {
    case Enum_FamiliesAdminsPhonesSelectColumn.aggregatedPhones:
      return r'aggregatedPhones';
    case Enum_FamiliesAdminsPhonesSelectColumn.familyId:
      return r'familyId';
    case Enum_FamiliesAdminsPhonesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesAdminsPhonesSelectColumn
fromJson_Enum_FamiliesAdminsPhonesSelectColumn(String value) {
  switch (value) {
    case r'aggregatedPhones':
      return Enum_FamiliesAdminsPhonesSelectColumn.aggregatedPhones;
    case r'familyId':
      return Enum_FamiliesAdminsPhonesSelectColumn.familyId;
    default:
      return Enum_FamiliesAdminsPhonesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesConstraint {
  families_pkey,
  $unknown
  ;

  factory Enum_FamiliesConstraint.fromJson(String value) =>
      fromJson_Enum_FamiliesConstraint(value);

  String toJson() => toJson_Enum_FamiliesConstraint(this);
}

String toJson_Enum_FamiliesConstraint(Enum_FamiliesConstraint e) {
  switch (e) {
    case Enum_FamiliesConstraint.families_pkey:
      return r'families_pkey';
    case Enum_FamiliesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesConstraint fromJson_Enum_FamiliesConstraint(String value) {
  switch (value) {
    case r'families_pkey':
      return Enum_FamiliesConstraint.families_pkey;
    default:
      return Enum_FamiliesConstraint.$unknown;
  }
}

enum Enum_FamiliesFamiliesConstraint {
  families_families_pkey,
  families_families_rel_id_key,
  $unknown
  ;

  factory Enum_FamiliesFamiliesConstraint.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesConstraint(value);

  String toJson() => toJson_Enum_FamiliesFamiliesConstraint(this);
}

String toJson_Enum_FamiliesFamiliesConstraint(
  Enum_FamiliesFamiliesConstraint e,
) {
  switch (e) {
    case Enum_FamiliesFamiliesConstraint.families_families_pkey:
      return r'families_families_pkey';
    case Enum_FamiliesFamiliesConstraint.families_families_rel_id_key:
      return r'families_families_rel_id_key';
    case Enum_FamiliesFamiliesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesFamiliesConstraint fromJson_Enum_FamiliesFamiliesConstraint(
  String value,
) {
  switch (value) {
    case r'families_families_pkey':
      return Enum_FamiliesFamiliesConstraint.families_families_pkey;
    case r'families_families_rel_id_key':
      return Enum_FamiliesFamiliesConstraint.families_families_rel_id_key;
    default:
      return Enum_FamiliesFamiliesConstraint.$unknown;
  }
}

enum Enum_FamiliesFamiliesSelectColumn {
  childFamilyId,
  parentFamilyId,
  $unknown
  ;

  factory Enum_FamiliesFamiliesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesFamiliesSelectColumn(this);
}

String toJson_Enum_FamiliesFamiliesSelectColumn(
  Enum_FamiliesFamiliesSelectColumn e,
) {
  switch (e) {
    case Enum_FamiliesFamiliesSelectColumn.childFamilyId:
      return r'childFamilyId';
    case Enum_FamiliesFamiliesSelectColumn.parentFamilyId:
      return r'parentFamilyId';
    case Enum_FamiliesFamiliesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesFamiliesSelectColumn fromJson_Enum_FamiliesFamiliesSelectColumn(
  String value,
) {
  switch (value) {
    case r'childFamilyId':
      return Enum_FamiliesFamiliesSelectColumn.childFamilyId;
    case r'parentFamilyId':
      return Enum_FamiliesFamiliesSelectColumn.parentFamilyId;
    default:
      return Enum_FamiliesFamiliesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesFamiliesUpdateColumn {
  $_PLACEHOLDER,
  $unknown
  ;

  factory Enum_FamiliesFamiliesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesUpdateColumn(value);

  String toJson() => toJson_Enum_FamiliesFamiliesUpdateColumn(this);
}

String toJson_Enum_FamiliesFamiliesUpdateColumn(
  Enum_FamiliesFamiliesUpdateColumn e,
) {
  switch (e) {
    case Enum_FamiliesFamiliesUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_FamiliesFamiliesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesFamiliesUpdateColumn fromJson_Enum_FamiliesFamiliesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_FamiliesFamiliesUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_FamiliesFamiliesUpdateColumn.$unknown;
  }
}

enum Enum_FamiliesSelectColumn {
  blurhash,
  churchId,
  color,
  deceasedSpouseName,
  id,
  marriageDate,
  name,
  notes,
  photoUpdatedAt,
  status,
  $unknown
  ;

  factory Enum_FamiliesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesSelectColumn(this);
}

String toJson_Enum_FamiliesSelectColumn(Enum_FamiliesSelectColumn e) {
  switch (e) {
    case Enum_FamiliesSelectColumn.blurhash:
      return r'blurhash';
    case Enum_FamiliesSelectColumn.churchId:
      return r'churchId';
    case Enum_FamiliesSelectColumn.color:
      return r'color';
    case Enum_FamiliesSelectColumn.deceasedSpouseName:
      return r'deceasedSpouseName';
    case Enum_FamiliesSelectColumn.id:
      return r'id';
    case Enum_FamiliesSelectColumn.marriageDate:
      return r'marriageDate';
    case Enum_FamiliesSelectColumn.name:
      return r'name';
    case Enum_FamiliesSelectColumn.notes:
      return r'notes';
    case Enum_FamiliesSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_FamiliesSelectColumn.status:
      return r'status';
    case Enum_FamiliesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesSelectColumn fromJson_Enum_FamiliesSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_FamiliesSelectColumn.blurhash;
    case r'churchId':
      return Enum_FamiliesSelectColumn.churchId;
    case r'color':
      return Enum_FamiliesSelectColumn.color;
    case r'deceasedSpouseName':
      return Enum_FamiliesSelectColumn.deceasedSpouseName;
    case r'id':
      return Enum_FamiliesSelectColumn.id;
    case r'marriageDate':
      return Enum_FamiliesSelectColumn.marriageDate;
    case r'name':
      return Enum_FamiliesSelectColumn.name;
    case r'notes':
      return Enum_FamiliesSelectColumn.notes;
    case r'photoUpdatedAt':
      return Enum_FamiliesSelectColumn.photoUpdatedAt;
    case r'status':
      return Enum_FamiliesSelectColumn.status;
    default:
      return Enum_FamiliesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesUpdateColumn {
  churchId,
  color,
  deceasedSpouseName,
  marriageDate,
  name,
  notes,
  status,
  $unknown
  ;

  factory Enum_FamiliesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesUpdateColumn(value);

  String toJson() => toJson_Enum_FamiliesUpdateColumn(this);
}

String toJson_Enum_FamiliesUpdateColumn(Enum_FamiliesUpdateColumn e) {
  switch (e) {
    case Enum_FamiliesUpdateColumn.churchId:
      return r'churchId';
    case Enum_FamiliesUpdateColumn.color:
      return r'color';
    case Enum_FamiliesUpdateColumn.deceasedSpouseName:
      return r'deceasedSpouseName';
    case Enum_FamiliesUpdateColumn.marriageDate:
      return r'marriageDate';
    case Enum_FamiliesUpdateColumn.name:
      return r'name';
    case Enum_FamiliesUpdateColumn.notes:
      return r'notes';
    case Enum_FamiliesUpdateColumn.status:
      return r'status';
    case Enum_FamiliesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesUpdateColumn fromJson_Enum_FamiliesUpdateColumn(String value) {
  switch (value) {
    case r'churchId':
      return Enum_FamiliesUpdateColumn.churchId;
    case r'color':
      return Enum_FamiliesUpdateColumn.color;
    case r'deceasedSpouseName':
      return Enum_FamiliesUpdateColumn.deceasedSpouseName;
    case r'marriageDate':
      return Enum_FamiliesUpdateColumn.marriageDate;
    case r'name':
      return Enum_FamiliesUpdateColumn.name;
    case r'notes':
      return Enum_FamiliesUpdateColumn.notes;
    case r'status':
      return Enum_FamiliesUpdateColumn.status;
    default:
      return Enum_FamiliesUpdateColumn.$unknown;
  }
}

enum Enum_FathersConstraint {
  fathers_name_key,
  fathers_pkey,
  $unknown
  ;

  factory Enum_FathersConstraint.fromJson(String value) =>
      fromJson_Enum_FathersConstraint(value);

  String toJson() => toJson_Enum_FathersConstraint(this);
}

String toJson_Enum_FathersConstraint(Enum_FathersConstraint e) {
  switch (e) {
    case Enum_FathersConstraint.fathers_name_key:
      return r'fathers_name_key';
    case Enum_FathersConstraint.fathers_pkey:
      return r'fathers_pkey';
    case Enum_FathersConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FathersConstraint fromJson_Enum_FathersConstraint(String value) {
  switch (value) {
    case r'fathers_name_key':
      return Enum_FathersConstraint.fathers_name_key;
    case r'fathers_pkey':
      return Enum_FathersConstraint.fathers_pkey;
    default:
      return Enum_FathersConstraint.$unknown;
  }
}

enum Enum_FathersSelectColumn {
  churchId,
  id,
  isHidden,
  name,
  $unknown
  ;

  factory Enum_FathersSelectColumn.fromJson(String value) =>
      fromJson_Enum_FathersSelectColumn(value);

  String toJson() => toJson_Enum_FathersSelectColumn(this);
}

String toJson_Enum_FathersSelectColumn(Enum_FathersSelectColumn e) {
  switch (e) {
    case Enum_FathersSelectColumn.churchId:
      return r'churchId';
    case Enum_FathersSelectColumn.id:
      return r'id';
    case Enum_FathersSelectColumn.isHidden:
      return r'isHidden';
    case Enum_FathersSelectColumn.name:
      return r'name';
    case Enum_FathersSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FathersSelectColumn fromJson_Enum_FathersSelectColumn(String value) {
  switch (value) {
    case r'churchId':
      return Enum_FathersSelectColumn.churchId;
    case r'id':
      return Enum_FathersSelectColumn.id;
    case r'isHidden':
      return Enum_FathersSelectColumn.isHidden;
    case r'name':
      return Enum_FathersSelectColumn.name;
    default:
      return Enum_FathersSelectColumn.$unknown;
  }
}

enum Enum_FathersUpdateColumn {
  name,
  $unknown
  ;

  factory Enum_FathersUpdateColumn.fromJson(String value) =>
      fromJson_Enum_FathersUpdateColumn(value);

  String toJson() => toJson_Enum_FathersUpdateColumn(this);
}

String toJson_Enum_FathersUpdateColumn(Enum_FathersUpdateColumn e) {
  switch (e) {
    case Enum_FathersUpdateColumn.name:
      return r'name';
    case Enum_FathersUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FathersUpdateColumn fromJson_Enum_FathersUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_FathersUpdateColumn.name;
    default:
      return Enum_FathersUpdateColumn.$unknown;
  }
}

enum Enum_GroupsConstraint {
  groups_default_meeting_id_key,
  groups_pkey,
  $unknown
  ;

  factory Enum_GroupsConstraint.fromJson(String value) =>
      fromJson_Enum_GroupsConstraint(value);

  String toJson() => toJson_Enum_GroupsConstraint(this);
}

String toJson_Enum_GroupsConstraint(Enum_GroupsConstraint e) {
  switch (e) {
    case Enum_GroupsConstraint.groups_default_meeting_id_key:
      return r'groups_default_meeting_id_key';
    case Enum_GroupsConstraint.groups_pkey:
      return r'groups_pkey';
    case Enum_GroupsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_GroupsConstraint fromJson_Enum_GroupsConstraint(String value) {
  switch (value) {
    case r'groups_default_meeting_id_key':
      return Enum_GroupsConstraint.groups_default_meeting_id_key;
    case r'groups_pkey':
      return Enum_GroupsConstraint.groups_pkey;
    default:
      return Enum_GroupsConstraint.$unknown;
  }
}

enum Enum_GroupsSelectColumn {
  blurhash,
  color,
  defaultMeetingId,
  id,
  name,
  photoUpdatedAt,
  serviceId,
  validity,
  $unknown
  ;

  factory Enum_GroupsSelectColumn.fromJson(String value) =>
      fromJson_Enum_GroupsSelectColumn(value);

  String toJson() => toJson_Enum_GroupsSelectColumn(this);
}

String toJson_Enum_GroupsSelectColumn(Enum_GroupsSelectColumn e) {
  switch (e) {
    case Enum_GroupsSelectColumn.blurhash:
      return r'blurhash';
    case Enum_GroupsSelectColumn.color:
      return r'color';
    case Enum_GroupsSelectColumn.defaultMeetingId:
      return r'defaultMeetingId';
    case Enum_GroupsSelectColumn.id:
      return r'id';
    case Enum_GroupsSelectColumn.name:
      return r'name';
    case Enum_GroupsSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_GroupsSelectColumn.serviceId:
      return r'serviceId';
    case Enum_GroupsSelectColumn.validity:
      return r'validity';
    case Enum_GroupsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_GroupsSelectColumn fromJson_Enum_GroupsSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_GroupsSelectColumn.blurhash;
    case r'color':
      return Enum_GroupsSelectColumn.color;
    case r'defaultMeetingId':
      return Enum_GroupsSelectColumn.defaultMeetingId;
    case r'id':
      return Enum_GroupsSelectColumn.id;
    case r'name':
      return Enum_GroupsSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_GroupsSelectColumn.photoUpdatedAt;
    case r'serviceId':
      return Enum_GroupsSelectColumn.serviceId;
    case r'validity':
      return Enum_GroupsSelectColumn.validity;
    default:
      return Enum_GroupsSelectColumn.$unknown;
  }
}

enum Enum_GroupsUpdateColumn {
  color,
  defaultMeetingId,
  name,
  serviceId,
  validity,
  $unknown
  ;

  factory Enum_GroupsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_GroupsUpdateColumn(value);

  String toJson() => toJson_Enum_GroupsUpdateColumn(this);
}

String toJson_Enum_GroupsUpdateColumn(Enum_GroupsUpdateColumn e) {
  switch (e) {
    case Enum_GroupsUpdateColumn.color:
      return r'color';
    case Enum_GroupsUpdateColumn.defaultMeetingId:
      return r'defaultMeetingId';
    case Enum_GroupsUpdateColumn.name:
      return r'name';
    case Enum_GroupsUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_GroupsUpdateColumn.validity:
      return r'validity';
    case Enum_GroupsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_GroupsUpdateColumn fromJson_Enum_GroupsUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_GroupsUpdateColumn.color;
    case r'defaultMeetingId':
      return Enum_GroupsUpdateColumn.defaultMeetingId;
    case r'name':
      return Enum_GroupsUpdateColumn.name;
    case r'serviceId':
      return Enum_GroupsUpdateColumn.serviceId;
    case r'validity':
      return Enum_GroupsUpdateColumn.validity;
    default:
      return Enum_GroupsUpdateColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraint {
  attendance_days_pkey,
  $unknown
  ;

  factory Enum_HistoryAttendanceDaysConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceDaysConstraint(value);

  String toJson() => toJson_Enum_HistoryAttendanceDaysConstraint(this);
}

String toJson_Enum_HistoryAttendanceDaysConstraint(
  Enum_HistoryAttendanceDaysConstraint e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraint.attendance_days_pkey:
      return r'attendance_days_pkey';
    case Enum_HistoryAttendanceDaysConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraint
fromJson_Enum_HistoryAttendanceDaysConstraint(String value) {
  switch (value) {
    case r'attendance_days_pkey':
      return Enum_HistoryAttendanceDaysConstraint.attendance_days_pkey;
    default:
      return Enum_HistoryAttendanceDaysConstraint.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysSelectColumn {
  day,
  $unknown
  ;

  factory Enum_HistoryAttendanceDaysSelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceDaysSelectColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceDaysSelectColumn(this);
}

String toJson_Enum_HistoryAttendanceDaysSelectColumn(
  Enum_HistoryAttendanceDaysSelectColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysSelectColumn.day:
      return r'day';
    case Enum_HistoryAttendanceDaysSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysSelectColumn
fromJson_Enum_HistoryAttendanceDaysSelectColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryAttendanceDaysSelectColumn.day;
    default:
      return Enum_HistoryAttendanceDaysSelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysUpdateColumn {
  day,
  $unknown
  ;

  factory Enum_HistoryAttendanceDaysUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceDaysUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceDaysUpdateColumn(this);
}

String toJson_Enum_HistoryAttendanceDaysUpdateColumn(
  Enum_HistoryAttendanceDaysUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysUpdateColumn.day:
      return r'day';
    case Enum_HistoryAttendanceDaysUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysUpdateColumn
fromJson_Enum_HistoryAttendanceDaysUpdateColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryAttendanceDaysUpdateColumn.day;
    default:
      return Enum_HistoryAttendanceDaysUpdateColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceHistoryConstraint {
  attendance_history_meeting_person_day_idx,
  attendance_history_pkey,
  $unknown
  ;

  factory Enum_HistoryAttendanceHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistoryConstraint(this);
}

String toJson_Enum_HistoryAttendanceHistoryConstraint(
  Enum_HistoryAttendanceHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistoryConstraint
        .attendance_history_meeting_person_day_idx:
      return r'attendance_history_meeting_person_day_idx';
    case Enum_HistoryAttendanceHistoryConstraint.attendance_history_pkey:
      return r'attendance_history_pkey';
    case Enum_HistoryAttendanceHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistoryConstraint
fromJson_Enum_HistoryAttendanceHistoryConstraint(String value) {
  switch (value) {
    case r'attendance_history_meeting_person_day_idx':
      return Enum_HistoryAttendanceHistoryConstraint
          .attendance_history_meeting_person_day_idx;
    case r'attendance_history_pkey':
      return Enum_HistoryAttendanceHistoryConstraint.attendance_history_pkey;
    default:
      return Enum_HistoryAttendanceHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumn {
  asServant,
  datetime,
  day,
  id,
  meetingId,
  personId,
  recordedBy,
  $unknown
  ;

  factory Enum_HistoryAttendanceHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistorySelectColumn(this);
}

String toJson_Enum_HistoryAttendanceHistorySelectColumn(
  Enum_HistoryAttendanceHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumn.asServant:
      return r'asServant';
    case Enum_HistoryAttendanceHistorySelectColumn.datetime:
      return r'datetime';
    case Enum_HistoryAttendanceHistorySelectColumn.day:
      return r'day';
    case Enum_HistoryAttendanceHistorySelectColumn.id:
      return r'id';
    case Enum_HistoryAttendanceHistorySelectColumn.meetingId:
      return r'meetingId';
    case Enum_HistoryAttendanceHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryAttendanceHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryAttendanceHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumn
fromJson_Enum_HistoryAttendanceHistorySelectColumn(String value) {
  switch (value) {
    case r'asServant':
      return Enum_HistoryAttendanceHistorySelectColumn.asServant;
    case r'datetime':
      return Enum_HistoryAttendanceHistorySelectColumn.datetime;
    case r'day':
      return Enum_HistoryAttendanceHistorySelectColumn.day;
    case r'id':
      return Enum_HistoryAttendanceHistorySelectColumn.id;
    case r'meetingId':
      return Enum_HistoryAttendanceHistorySelectColumn.meetingId;
    case r'personId':
      return Enum_HistoryAttendanceHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryAttendanceHistorySelectColumn.recordedBy;
    default:
      return Enum_HistoryAttendanceHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns {
  asServant,
  $unknown
  ;

  factory Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
        .asServant:
      return r'asServant';
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'asServant':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .asServant;
    default:
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns {
  asServant,
  $unknown
  ;

  factory Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
        .asServant:
      return r'asServant';
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'asServant':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .asServant;
    default:
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceHistoryUpdateColumn {
  datetime,
  $unknown
  ;

  factory Enum_HistoryAttendanceHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryAttendanceHistoryUpdateColumn(
  Enum_HistoryAttendanceHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistoryUpdateColumn.datetime:
      return r'datetime';
    case Enum_HistoryAttendanceHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistoryUpdateColumn
fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(String value) {
  switch (value) {
    case r'datetime':
      return Enum_HistoryAttendanceHistoryUpdateColumn.datetime;
    default:
      return Enum_HistoryAttendanceHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HistoryCallHistoryConstraint {
  call_history_pkey,
  $unknown
  ;

  factory Enum_HistoryCallHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryCallHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryCallHistoryConstraint(this);
}

String toJson_Enum_HistoryCallHistoryConstraint(
  Enum_HistoryCallHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryCallHistoryConstraint.call_history_pkey:
      return r'call_history_pkey';
    case Enum_HistoryCallHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryCallHistoryConstraint fromJson_Enum_HistoryCallHistoryConstraint(
  String value,
) {
  switch (value) {
    case r'call_history_pkey':
      return Enum_HistoryCallHistoryConstraint.call_history_pkey;
    default:
      return Enum_HistoryCallHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryCallHistorySelectColumn {
  personId,
  recordedBy,
  time,
  $unknown
  ;

  factory Enum_HistoryCallHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryCallHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryCallHistorySelectColumn(this);
}

String toJson_Enum_HistoryCallHistorySelectColumn(
  Enum_HistoryCallHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryCallHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryCallHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryCallHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryCallHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryCallHistorySelectColumn
fromJson_Enum_HistoryCallHistorySelectColumn(String value) {
  switch (value) {
    case r'personId':
      return Enum_HistoryCallHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryCallHistorySelectColumn.recordedBy;
    case r'time':
      return Enum_HistoryCallHistorySelectColumn.time;
    default:
      return Enum_HistoryCallHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryCallHistoryUpdateColumn {
  $_PLACEHOLDER,
  $unknown
  ;

  factory Enum_HistoryCallHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryCallHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryCallHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryCallHistoryUpdateColumn(
  Enum_HistoryCallHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryCallHistoryUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_HistoryCallHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryCallHistoryUpdateColumn
fromJson_Enum_HistoryCallHistoryUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_HistoryCallHistoryUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_HistoryCallHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HistoryConfessionHistoryConstraint {
  confession_history_day_id_person_id_key,
  confession_history_pkey,
  $unknown
  ;

  factory Enum_HistoryConfessionHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryConfessionHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryConfessionHistoryConstraint(this);
}

String toJson_Enum_HistoryConfessionHistoryConstraint(
  Enum_HistoryConfessionHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryConfessionHistoryConstraint
        .confession_history_day_id_person_id_key:
      return r'confession_history_day_id_person_id_key';
    case Enum_HistoryConfessionHistoryConstraint.confession_history_pkey:
      return r'confession_history_pkey';
    case Enum_HistoryConfessionHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryConfessionHistoryConstraint
fromJson_Enum_HistoryConfessionHistoryConstraint(String value) {
  switch (value) {
    case r'confession_history_day_id_person_id_key':
      return Enum_HistoryConfessionHistoryConstraint
          .confession_history_day_id_person_id_key;
    case r'confession_history_pkey':
      return Enum_HistoryConfessionHistoryConstraint.confession_history_pkey;
    default:
      return Enum_HistoryConfessionHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryConfessionHistorySelectColumn {
  dayId,
  id,
  personId,
  recordedBy,
  time,
  $unknown
  ;

  factory Enum_HistoryConfessionHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryConfessionHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryConfessionHistorySelectColumn(this);
}

String toJson_Enum_HistoryConfessionHistorySelectColumn(
  Enum_HistoryConfessionHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryConfessionHistorySelectColumn.dayId:
      return r'dayId';
    case Enum_HistoryConfessionHistorySelectColumn.id:
      return r'id';
    case Enum_HistoryConfessionHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryConfessionHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryConfessionHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryConfessionHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryConfessionHistorySelectColumn
fromJson_Enum_HistoryConfessionHistorySelectColumn(String value) {
  switch (value) {
    case r'dayId':
      return Enum_HistoryConfessionHistorySelectColumn.dayId;
    case r'id':
      return Enum_HistoryConfessionHistorySelectColumn.id;
    case r'personId':
      return Enum_HistoryConfessionHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryConfessionHistorySelectColumn.recordedBy;
    case r'time':
      return Enum_HistoryConfessionHistorySelectColumn.time;
    default:
      return Enum_HistoryConfessionHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryConfessionHistoryUpdateColumn {
  $_PLACEHOLDER,
  $unknown
  ;

  factory Enum_HistoryConfessionHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryConfessionHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryConfessionHistoryUpdateColumn(this);
}
