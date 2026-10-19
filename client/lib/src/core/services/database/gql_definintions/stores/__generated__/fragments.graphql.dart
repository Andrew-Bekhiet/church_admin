import '../../areas/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Store {
  Fragment_Store({
    required this.id,
    required this.name,
    this.color,
    this.adminFamilyId,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Store',
  });

  factory Fragment_Store.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$adminFamilyId = json['adminFamilyId'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_Store(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      adminFamilyId: (l$adminFamilyId as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final String? adminFamilyId;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$adminFamilyId = adminFamilyId;
    _resultData['adminFamilyId'] = l$adminFamilyId;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$adminFamilyId = adminFamilyId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$adminFamilyId,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Store || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$adminFamilyId = adminFamilyId;
    final lOther$adminFamilyId = other.adminFamilyId;
    if (l$adminFamilyId != lOther$adminFamilyId) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Store on Fragment_Store {
  CopyWith_Fragment_Store<Fragment_Store> get copyWith =>
      CopyWith_Fragment_Store(this, (i) => i);
}

abstract class CopyWith_Fragment_Store<TRes> {
  factory CopyWith_Fragment_Store(
    Fragment_Store instance,
    TRes Function(Fragment_Store) then,
  ) = _CopyWithImpl_Fragment_Store;

  factory CopyWith_Fragment_Store.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Store;

  TRes call({
    String? id,
    String? name,
    int? color,
    String? adminFamilyId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_Store<TRes>
    implements CopyWith_Fragment_Store<TRes> {
  _CopyWithImpl_Fragment_Store(this._instance, this._then);

  final Fragment_Store _instance;

  final TRes Function(Fragment_Store) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? adminFamilyId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Store(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      adminFamilyId: adminFamilyId == _undefined
          ? _instance.adminFamilyId
          : (adminFamilyId as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Store<TRes>
    implements CopyWith_Fragment_Store<TRes> {
  _CopyWithStubImpl_Fragment_Store(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    String? adminFamilyId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionStore = FragmentDefinitionNode(
  name: NameNode(value: 'Store'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Store'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'adminFamilyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'photoUpdatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'blurhash'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentStore = DocumentNode(
  definitions: [fragmentDefinitionStore],
);

class Fragment_StoreDetails implements Fragment_Store {
  Fragment_StoreDetails({
    required this.id,
    required this.name,
    this.color,
    this.adminFamilyId,
    this.photoUpdatedAt,
    this.blurhash,
    required this.userCanEdit,
    this.$__typename = 'Store',
    this.address,
    this.latestEdit,
    this.adminFamily,
  });

  factory Fragment_StoreDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$adminFamilyId = json['adminFamilyId'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$address = json['address'];
    final l$latestEdit = json['latestEdit'];
    final l$adminFamily = json['adminFamily'];
    return Fragment_StoreDetails(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      adminFamilyId: (l$adminFamilyId as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      address: l$address == null
          ? null
          : Fragment_StoreAddress.fromJson((l$address as Map<String, dynamic>)),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_PlaceLatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      adminFamily: l$adminFamily == null
          ? null
          : Fragment_StoreAdminFamily.fromJson(
              (l$adminFamily as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final String? adminFamilyId;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool userCanEdit;

  final String $__typename;

  final Fragment_StoreAddress? address;

  final Fragment_PlaceLatestEdit? latestEdit;

  final Fragment_StoreAdminFamily? adminFamily;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$adminFamilyId = adminFamilyId;
    _resultData['adminFamilyId'] = l$adminFamilyId;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$adminFamily = adminFamily;
    _resultData['adminFamily'] = l$adminFamily?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$adminFamilyId = adminFamilyId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$address = address;
    final l$latestEdit = latestEdit;
    final l$adminFamily = adminFamily;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$adminFamilyId,
      l$photoUpdatedAt,
      l$blurhash,
      l$userCanEdit,
      l$$__typename,
      l$address,
      l$latestEdit,
      l$adminFamily,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_StoreDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$adminFamilyId = adminFamilyId;
    final lOther$adminFamilyId = other.adminFamilyId;
    if (l$adminFamilyId != lOther$adminFamilyId) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$adminFamily = adminFamily;
    final lOther$adminFamily = other.adminFamily;
    if (l$adminFamily != lOther$adminFamily) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_StoreDetails on Fragment_StoreDetails {
  CopyWith_Fragment_StoreDetails<Fragment_StoreDetails> get copyWith =>
      CopyWith_Fragment_StoreDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_StoreDetails<TRes> {
  factory CopyWith_Fragment_StoreDetails(
    Fragment_StoreDetails instance,
    TRes Function(Fragment_StoreDetails) then,
  ) = _CopyWithImpl_Fragment_StoreDetails;

  factory CopyWith_Fragment_StoreDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StoreDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    String? adminFamilyId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Fragment_StoreAddress? address,
    Fragment_PlaceLatestEdit? latestEdit,
    Fragment_StoreAdminFamily? adminFamily,
  });
  CopyWith_Fragment_StoreAddress<TRes> get address;
  CopyWith_Fragment_PlaceLatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_StoreAdminFamily<TRes> get adminFamily;
}

class _CopyWithImpl_Fragment_StoreDetails<TRes>
    implements CopyWith_Fragment_StoreDetails<TRes> {
  _CopyWithImpl_Fragment_StoreDetails(this._instance, this._then);

  final Fragment_StoreDetails _instance;

  final TRes Function(Fragment_StoreDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? adminFamilyId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? address = _undefined,
    Object? latestEdit = _undefined,
    Object? adminFamily = _undefined,
  }) => _then(
    Fragment_StoreDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      adminFamilyId: adminFamilyId == _undefined
          ? _instance.adminFamilyId
          : (adminFamilyId as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_StoreAddress?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_PlaceLatestEdit?),
      adminFamily: adminFamily == _undefined
          ? _instance.adminFamily
          : (adminFamily as Fragment_StoreAdminFamily?),
    ),
  );

  CopyWith_Fragment_StoreAddress<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_StoreAddress.stub(_then(_instance))
        : CopyWith_Fragment_StoreAddress(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Fragment_PlaceLatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_PlaceLatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_PlaceLatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Fragment_StoreAdminFamily<TRes> get adminFamily {
    final local$adminFamily = _instance.adminFamily;
    return local$adminFamily == null
        ? CopyWith_Fragment_StoreAdminFamily.stub(_then(_instance))
        : CopyWith_Fragment_StoreAdminFamily(
            local$adminFamily,
            (e) => call(adminFamily: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_StoreDetails<TRes>
    implements CopyWith_Fragment_StoreDetails<TRes> {
  _CopyWithStubImpl_Fragment_StoreDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    String? adminFamilyId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? userCanEdit,
    String? $__typename,
    Fragment_StoreAddress? address,
    Fragment_PlaceLatestEdit? latestEdit,
    Fragment_StoreAdminFamily? adminFamily,
  }) => _res;

  CopyWith_Fragment_StoreAddress<TRes> get address =>
      CopyWith_Fragment_StoreAddress.stub(_res);

  CopyWith_Fragment_PlaceLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_PlaceLatestEdit.stub(_res);

  CopyWith_Fragment_StoreAdminFamily<TRes> get adminFamily =>
      CopyWith_Fragment_StoreAdminFamily.stub(_res);
}

const fragmentDefinitionStoreDetails = FragmentDefinitionNode(
  name: NameNode(value: 'StoreDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Store'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Store'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'StoreAddress'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'latestEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PlaceLatestEdit'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'adminFamily'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'StoreAdminFamily'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentStoreDetails = DocumentNode(
  definitions: [
    fragmentDefinitionStoreDetails,
    fragmentDefinitionStore,
    fragmentDefinitionStoreAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
    fragmentDefinitionPlaceLatestEdit,
    fragmentDefinitionPlaceUser,
    fragmentDefinitionStoreAdminFamily,
    fragmentDefinitionDataCheck,
  ],
);

class Fragment_StoreAddress {
  Fragment_StoreAddress({
    required this.id,
    required this.countryIsoCode,
    this.area,
    this.district,
    this.street,
    this.substreetName,
    this.fullAddressText,
    this.geolocation,
    this.houseCode,
    this.storeyNumber,
    this.apartmentNumber,
    this.specialLandmark,
    this.$__typename = 'Address',
  });

  factory Fragment_StoreAddress.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$countryIsoCode = json['countryIsoCode'];
    final l$area = json['area'];
    final l$district = json['district'];
    final l$street = json['street'];
    final l$substreetName = json['substreetName'];
    final l$fullAddressText = json['fullAddressText'];
    final l$geolocation = json['geolocation'];
    final l$houseCode = json['houseCode'];
    final l$storeyNumber = json['storeyNumber'];
    final l$apartmentNumber = json['apartmentNumber'];
    final l$specialLandmark = json['specialLandmark'];
    final l$$__typename = json['__typename'];
    return Fragment_StoreAddress(
      id: (l$id as String),
      countryIsoCode: (l$countryIsoCode as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      district: l$district == null
          ? null
          : Fragment_StoreAddress_district.fromJson(
              (l$district as Map<String, dynamic>),
            ),
      street: l$street == null
          ? null
          : Fragment_Street.fromJson((l$street as Map<String, dynamic>)),
      substreetName: (l$substreetName as String?),
      fullAddressText: (l$fullAddressText as String?),
      geolocation: (l$geolocation as Json?),
      houseCode: (l$houseCode as String?),
      storeyNumber: (l$storeyNumber as int?),
      apartmentNumber: (l$apartmentNumber as int?),
      specialLandmark: (l$specialLandmark as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String countryIsoCode;

  final Fragment_Area? area;

  final Fragment_StoreAddress_district? district;

  final Fragment_Street? street;

  final String? substreetName;

  final String? fullAddressText;

  final Json? geolocation;

  final String? houseCode;

  final int? storeyNumber;

  final int? apartmentNumber;

  final String? specialLandmark;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$countryIsoCode = countryIsoCode;
    _resultData['countryIsoCode'] = l$countryIsoCode;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$district = district;
    _resultData['district'] = l$district?.toJson();
    final l$street = street;
    _resultData['street'] = l$street?.toJson();
    final l$substreetName = substreetName;
    _resultData['substreetName'] = l$substreetName;
    final l$fullAddressText = fullAddressText;
    _resultData['fullAddressText'] = l$fullAddressText;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$houseCode = houseCode;
    _resultData['houseCode'] = l$houseCode;
    final l$storeyNumber = storeyNumber;
    _resultData['storeyNumber'] = l$storeyNumber;
    final l$apartmentNumber = apartmentNumber;
    _resultData['apartmentNumber'] = l$apartmentNumber;
    final l$specialLandmark = specialLandmark;
    _resultData['specialLandmark'] = l$specialLandmark;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$countryIsoCode = countryIsoCode;
    final l$area = area;
    final l$district = district;
    final l$street = street;
    final l$substreetName = substreetName;
    final l$fullAddressText = fullAddressText;
    final l$geolocation = geolocation;
    final l$houseCode = houseCode;
    final l$storeyNumber = storeyNumber;
    final l$apartmentNumber = apartmentNumber;
    final l$specialLandmark = specialLandmark;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$countryIsoCode,
      l$area,
      l$district,
      l$street,
      l$substreetName,
      l$fullAddressText,
      l$geolocation,
      l$houseCode,
      l$storeyNumber,
      l$apartmentNumber,
      l$specialLandmark,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_StoreAddress || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (l$district != lOther$district) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (l$street != lOther$street) {
      return false;
    }
    final l$substreetName = substreetName;
    final lOther$substreetName = other.substreetName;
    if (l$substreetName != lOther$substreetName) {
      return false;
    }
    final l$fullAddressText = fullAddressText;
    final lOther$fullAddressText = other.fullAddressText;
    if (l$fullAddressText != lOther$fullAddressText) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$houseCode = houseCode;
    final lOther$houseCode = other.houseCode;
    if (l$houseCode != lOther$houseCode) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_StoreAddress on Fragment_StoreAddress {
  CopyWith_Fragment_StoreAddress<Fragment_StoreAddress> get copyWith =>
      CopyWith_Fragment_StoreAddress(this, (i) => i);
}

abstract class CopyWith_Fragment_StoreAddress<TRes> {
  factory CopyWith_Fragment_StoreAddress(
    Fragment_StoreAddress instance,
    TRes Function(Fragment_StoreAddress) then,
  ) = _CopyWithImpl_Fragment_StoreAddress;

  factory CopyWith_Fragment_StoreAddress.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StoreAddress;

  TRes call({
    String? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_StoreAddress_district? district,
    Fragment_Street? street,
    String? substreetName,
    String? fullAddressText,
    Json? geolocation,
    String? houseCode,
    int? storeyNumber,
    int? apartmentNumber,
    String? specialLandmark,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_StoreAddress_district<TRes> get district;
  CopyWith_Fragment_Street<TRes> get street;
}

class _CopyWithImpl_Fragment_StoreAddress<TRes>
    implements CopyWith_Fragment_StoreAddress<TRes> {
  _CopyWithImpl_Fragment_StoreAddress(this._instance, this._then);

  final Fragment_StoreAddress _instance;

  final TRes Function(Fragment_StoreAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? countryIsoCode = _undefined,
    Object? area = _undefined,
    Object? district = _undefined,
    Object? street = _undefined,
    Object? substreetName = _undefined,
    Object? fullAddressText = _undefined,
    Object? geolocation = _undefined,
    Object? houseCode = _undefined,
    Object? storeyNumber = _undefined,
    Object? apartmentNumber = _undefined,
    Object? specialLandmark = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_StoreAddress(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      countryIsoCode: countryIsoCode == _undefined || countryIsoCode == null
          ? _instance.countryIsoCode
          : (countryIsoCode as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      district: district == _undefined
          ? _instance.district
          : (district as Fragment_StoreAddress_district?),
      street: street == _undefined
          ? _instance.street
          : (street as Fragment_Street?),
      substreetName: substreetName == _undefined
          ? _instance.substreetName
          : (substreetName as String?),
      fullAddressText: fullAddressText == _undefined
          ? _instance.fullAddressText
          : (fullAddressText as String?),
      geolocation: geolocation == _undefined
          ? _instance.geolocation
          : (geolocation as Json?),
      houseCode: houseCode == _undefined
          ? _instance.houseCode
          : (houseCode as String?),
      storeyNumber: storeyNumber == _undefined
          ? _instance.storeyNumber
          : (storeyNumber as int?),
      apartmentNumber: apartmentNumber == _undefined
          ? _instance.apartmentNumber
          : (apartmentNumber as int?),
      specialLandmark: specialLandmark == _undefined
          ? _instance.specialLandmark
          : (specialLandmark as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Fragment_StoreAddress_district<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Fragment_StoreAddress_district.stub(_then(_instance))
        : CopyWith_Fragment_StoreAddress_district(
            local$district,
            (e) => call(district: e),
          );
  }

  CopyWith_Fragment_Street<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(local$street, (e) => call(street: e));
  }
}

class _CopyWithStubImpl_Fragment_StoreAddress<TRes>
    implements CopyWith_Fragment_StoreAddress<TRes> {
  _CopyWithStubImpl_Fragment_StoreAddress(this._res);

  TRes _res;

  call({
    String? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_StoreAddress_district? district,
    Fragment_Street? street,
    String? substreetName,
    String? fullAddressText,
    Json? geolocation,
    String? houseCode,
    int? storeyNumber,
    int? apartmentNumber,
    String? specialLandmark,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_StoreAddress_district<TRes> get district =>
      CopyWith_Fragment_StoreAddress_district.stub(_res);

  CopyWith_Fragment_Street<TRes> get street =>
      CopyWith_Fragment_Street.stub(_res);
}

const fragmentDefinitionStoreAddress = FragmentDefinitionNode(
  name: NameNode(value: 'StoreAddress'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Address'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'countryIsoCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'area'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Area'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'district'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'street'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Street'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'substreetName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fullAddressText'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'geolocation'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'houseCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'storeyNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'apartmentNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'specialLandmark'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentStoreAddress = DocumentNode(
  definitions: [
    fragmentDefinitionStoreAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
  ],
);

class Fragment_StoreAddress_district {
  Fragment_StoreAddress_district({
    required this.id,
    required this.name,
    this.$__typename = 'District',
  });

  factory Fragment_StoreAddress_district.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_StoreAddress_district(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_StoreAddress_district ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_StoreAddress_district
    on Fragment_StoreAddress_district {
  CopyWith_Fragment_StoreAddress_district<Fragment_StoreAddress_district>
  get copyWith => CopyWith_Fragment_StoreAddress_district(this, (i) => i);
}

abstract class CopyWith_Fragment_StoreAddress_district<TRes> {
  factory CopyWith_Fragment_StoreAddress_district(
    Fragment_StoreAddress_district instance,
    TRes Function(Fragment_StoreAddress_district) then,
  ) = _CopyWithImpl_Fragment_StoreAddress_district;

  factory CopyWith_Fragment_StoreAddress_district.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StoreAddress_district;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_StoreAddress_district<TRes>
    implements CopyWith_Fragment_StoreAddress_district<TRes> {
  _CopyWithImpl_Fragment_StoreAddress_district(this._instance, this._then);

  final Fragment_StoreAddress_district _instance;

  final TRes Function(Fragment_StoreAddress_district) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_StoreAddress_district(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_StoreAddress_district<TRes>
    implements CopyWith_Fragment_StoreAddress_district<TRes> {
  _CopyWithStubImpl_Fragment_StoreAddress_district(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Fragment_StoreAdminFamily {
  Fragment_StoreAdminFamily({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
  });

  factory Fragment_StoreAdminFamily.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    return Fragment_StoreAdminFamily(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_StoreAdminFamily ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_StoreAdminFamily
    on Fragment_StoreAdminFamily {
  CopyWith_Fragment_StoreAdminFamily<Fragment_StoreAdminFamily> get copyWith =>
      CopyWith_Fragment_StoreAdminFamily(this, (i) => i);
}

abstract class CopyWith_Fragment_StoreAdminFamily<TRes> {
  factory CopyWith_Fragment_StoreAdminFamily(
    Fragment_StoreAdminFamily instance,
    TRes Function(Fragment_StoreAdminFamily) then,
  ) = _CopyWithImpl_Fragment_StoreAdminFamily;

  factory CopyWith_Fragment_StoreAdminFamily.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StoreAdminFamily;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
}

class _CopyWithImpl_Fragment_StoreAdminFamily<TRes>
    implements CopyWith_Fragment_StoreAdminFamily<TRes> {
  _CopyWithImpl_Fragment_StoreAdminFamily(this._instance, this._then);

  final Fragment_StoreAdminFamily _instance;

  final TRes Function(Fragment_StoreAdminFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_StoreAdminFamily(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_StoreAdminFamily<TRes>
    implements CopyWith_Fragment_StoreAdminFamily<TRes> {
  _CopyWithStubImpl_Fragment_StoreAdminFamily(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);
}

const fragmentDefinitionStoreAdminFamily = FragmentDefinitionNode(
  name: NameNode(value: 'StoreAdminFamily'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Family'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'photoUpdatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'blurhash'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'dataCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DataCheck'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentStoreAdminFamily = DocumentNode(
  definitions: [
    fragmentDefinitionStoreAdminFamily,
    fragmentDefinitionDataCheck,
  ],
);
