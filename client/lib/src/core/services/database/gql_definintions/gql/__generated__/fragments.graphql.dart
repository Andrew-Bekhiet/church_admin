import '../../areas/__generated__/fragments.graphql.dart';
import '../../metadata/districts/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_User {
  Fragment_User({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
  });

  factory Fragment_User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_User(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_User || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_User on Fragment_User {
  CopyWith_Fragment_User<Fragment_User> get copyWith =>
      CopyWith_Fragment_User(this, (i) => i);
}

abstract class CopyWith_Fragment_User<TRes> {
  factory CopyWith_Fragment_User(
    Fragment_User instance,
    TRes Function(Fragment_User) then,
  ) = _CopyWithImpl_Fragment_User;

  factory CopyWith_Fragment_User.stub(TRes res) =
      _CopyWithStubImpl_Fragment_User;

  TRes call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_User<TRes>
    implements CopyWith_Fragment_User<TRes> {
  _CopyWithImpl_Fragment_User(this._instance, this._then);

  final Fragment_User _instance;

  final TRes Function(Fragment_User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_User(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_User<TRes>
    implements CopyWith_Fragment_User<TRes> {
  _CopyWithStubImpl_Fragment_User(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
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
        name: NameNode(value: 'uid'),
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
        name: NameNode(value: 'email'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentUser = DocumentNode(
  definitions: [fragmentDefinitionUser],
);

class Fragment_Address {
  Fragment_Address({
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

  factory Fragment_Address.fromJson(Map<String, dynamic> json) {
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
    return Fragment_Address(
      id: (l$id as String),
      countryIsoCode: (l$countryIsoCode as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      district: l$district == null
          ? null
          : Fragment_District.fromJson((l$district as Map<String, dynamic>)),
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

  final Fragment_District? district;

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
    if (other is! Fragment_Address || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_Address on Fragment_Address {
  CopyWith_Fragment_Address<Fragment_Address> get copyWith =>
      CopyWith_Fragment_Address(this, (i) => i);
}

abstract class CopyWith_Fragment_Address<TRes> {
  factory CopyWith_Fragment_Address(
    Fragment_Address instance,
    TRes Function(Fragment_Address) then,
  ) = _CopyWithImpl_Fragment_Address;

  factory CopyWith_Fragment_Address.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Address;

  TRes call({
    String? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_District? district,
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
  CopyWith_Fragment_District<TRes> get district;
  CopyWith_Fragment_Street<TRes> get street;
}

class _CopyWithImpl_Fragment_Address<TRes>
    implements CopyWith_Fragment_Address<TRes> {
  _CopyWithImpl_Fragment_Address(this._instance, this._then);

  final Fragment_Address _instance;

  final TRes Function(Fragment_Address) _then;

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
    Fragment_Address(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      countryIsoCode: countryIsoCode == _undefined || countryIsoCode == null
          ? _instance.countryIsoCode
          : (countryIsoCode as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      district: district == _undefined
          ? _instance.district
          : (district as Fragment_District?),
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

  CopyWith_Fragment_District<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Fragment_District.stub(_then(_instance))
        : CopyWith_Fragment_District(local$district, (e) => call(district: e));
  }

  CopyWith_Fragment_Street<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(local$street, (e) => call(street: e));
  }
}

class _CopyWithStubImpl_Fragment_Address<TRes>
    implements CopyWith_Fragment_Address<TRes> {
  _CopyWithStubImpl_Fragment_Address(this._res);

  TRes _res;

  call({
    String? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_District? district,
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

  CopyWith_Fragment_District<TRes> get district =>
      CopyWith_Fragment_District.stub(_res);

  CopyWith_Fragment_Street<TRes> get street =>
      CopyWith_Fragment_Street.stub(_res);
}

const fragmentDefinitionAddress = FragmentDefinitionNode(
  name: NameNode(value: 'Address'),
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
            FragmentSpreadNode(
              name: NameNode(value: 'District'),
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
const documentNodeFragmentAddress = DocumentNode(
  definitions: [
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionDistrict,
    fragmentDefinitionStreet,
  ],
);

class Fragment_LatestEdit {
  Fragment_LatestEdit({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestEdit',
  });

  factory Fragment_LatestEdit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestEdit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_LatestEdit on Fragment_LatestEdit {
  CopyWith_Fragment_LatestEdit<Fragment_LatestEdit> get copyWith =>
      CopyWith_Fragment_LatestEdit(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestEdit<TRes> {
  factory CopyWith_Fragment_LatestEdit(
    Fragment_LatestEdit instance,
    TRes Function(Fragment_LatestEdit) then,
  ) = _CopyWithImpl_Fragment_LatestEdit;

  factory CopyWith_Fragment_LatestEdit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestEdit;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestEdit<TRes>
    implements CopyWith_Fragment_LatestEdit<TRes> {
  _CopyWithImpl_Fragment_LatestEdit(this._instance, this._then);

  final Fragment_LatestEdit _instance;

  final TRes Function(Fragment_LatestEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestEdit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestEdit<TRes>
    implements CopyWith_Fragment_LatestEdit<TRes> {
  _CopyWithStubImpl_Fragment_LatestEdit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestEdit = FragmentDefinitionNode(
  name: NameNode(value: 'LatestEdit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LatestEdit'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
const documentNodeFragmentLatestEdit = DocumentNode(
  definitions: [fragmentDefinitionLatestEdit, fragmentDefinitionUser],
);

class Fragment_LatestVisit {
  Fragment_LatestVisit({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestVisit',
  });

  factory Fragment_LatestVisit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestVisit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestVisit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_LatestVisit on Fragment_LatestVisit {
  CopyWith_Fragment_LatestVisit<Fragment_LatestVisit> get copyWith =>
      CopyWith_Fragment_LatestVisit(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestVisit<TRes> {
  factory CopyWith_Fragment_LatestVisit(
    Fragment_LatestVisit instance,
    TRes Function(Fragment_LatestVisit) then,
  ) = _CopyWithImpl_Fragment_LatestVisit;

  factory CopyWith_Fragment_LatestVisit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestVisit;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestVisit<TRes>
    implements CopyWith_Fragment_LatestVisit<TRes> {
  _CopyWithImpl_Fragment_LatestVisit(this._instance, this._then);

  final Fragment_LatestVisit _instance;

  final TRes Function(Fragment_LatestVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestVisit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestVisit<TRes>
    implements CopyWith_Fragment_LatestVisit<TRes> {
  _CopyWithStubImpl_Fragment_LatestVisit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestVisit = FragmentDefinitionNode(
  name: NameNode(value: 'LatestVisit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LatestVisit'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
const documentNodeFragmentLatestVisit = DocumentNode(
  definitions: [fragmentDefinitionLatestVisit, fragmentDefinitionUser],
);

class Fragment_LatestFatherVisit {
  Fragment_LatestFatherVisit({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestFatherVisit',
  });

  factory Fragment_LatestFatherVisit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestFatherVisit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestFatherVisit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_LatestFatherVisit
    on Fragment_LatestFatherVisit {
  CopyWith_Fragment_LatestFatherVisit<Fragment_LatestFatherVisit>
  get copyWith => CopyWith_Fragment_LatestFatherVisit(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestFatherVisit<TRes> {
  factory CopyWith_Fragment_LatestFatherVisit(
    Fragment_LatestFatherVisit instance,
    TRes Function(Fragment_LatestFatherVisit) then,
  ) = _CopyWithImpl_Fragment_LatestFatherVisit;

  factory CopyWith_Fragment_LatestFatherVisit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestFatherVisit;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestFatherVisit<TRes>
    implements CopyWith_Fragment_LatestFatherVisit<TRes> {
  _CopyWithImpl_Fragment_LatestFatherVisit(this._instance, this._then);

  final Fragment_LatestFatherVisit _instance;

  final TRes Function(Fragment_LatestFatherVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestFatherVisit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestFatherVisit<TRes>
    implements CopyWith_Fragment_LatestFatherVisit<TRes> {
  _CopyWithStubImpl_Fragment_LatestFatherVisit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestFatherVisit = FragmentDefinitionNode(
  name: NameNode(value: 'LatestFatherVisit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'LatestFatherVisit'),
      isNonNull: false,
    ),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
const documentNodeFragmentLatestFatherVisit = DocumentNode(
  definitions: [fragmentDefinitionLatestFatherVisit, fragmentDefinitionUser],
);

class Fragment_LatestCall {
  Fragment_LatestCall({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestCall',
  });

  factory Fragment_LatestCall.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestCall(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestCall || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_LatestCall on Fragment_LatestCall {
  CopyWith_Fragment_LatestCall<Fragment_LatestCall> get copyWith =>
      CopyWith_Fragment_LatestCall(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestCall<TRes> {
  factory CopyWith_Fragment_LatestCall(
    Fragment_LatestCall instance,
    TRes Function(Fragment_LatestCall) then,
  ) = _CopyWithImpl_Fragment_LatestCall;

  factory CopyWith_Fragment_LatestCall.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestCall;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestCall<TRes>
    implements CopyWith_Fragment_LatestCall<TRes> {
  _CopyWithImpl_Fragment_LatestCall(this._instance, this._then);

  final Fragment_LatestCall _instance;

  final TRes Function(Fragment_LatestCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestCall(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestCall<TRes>
    implements CopyWith_Fragment_LatestCall<TRes> {
  _CopyWithStubImpl_Fragment_LatestCall(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestCall = FragmentDefinitionNode(
  name: NameNode(value: 'LatestCall'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LatestCall'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
const documentNodeFragmentLatestCall = DocumentNode(
  definitions: [fragmentDefinitionLatestCall, fragmentDefinitionUser],
);

class Fragment_LatestConfession {
  Fragment_LatestConfession({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestConfession',
  });

  factory Fragment_LatestConfession.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestConfession(
      id: (l$id as String),
      time: l$time == null ? null : dateFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestConfession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_LatestConfession
    on Fragment_LatestConfession {
  CopyWith_Fragment_LatestConfession<Fragment_LatestConfession> get copyWith =>
      CopyWith_Fragment_LatestConfession(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestConfession<TRes> {
  factory CopyWith_Fragment_LatestConfession(
    Fragment_LatestConfession instance,
    TRes Function(Fragment_LatestConfession) then,
  ) = _CopyWithImpl_Fragment_LatestConfession;

  factory CopyWith_Fragment_LatestConfession.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestConfession;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestConfession<TRes>
    implements CopyWith_Fragment_LatestConfession<TRes> {
  _CopyWithImpl_Fragment_LatestConfession(this._instance, this._then);

  final Fragment_LatestConfession _instance;

  final TRes Function(Fragment_LatestConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestConfession(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestConfession<TRes>
    implements CopyWith_Fragment_LatestConfession<TRes> {
  _CopyWithStubImpl_Fragment_LatestConfession(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestConfession = FragmentDefinitionNode(
  name: NameNode(value: 'LatestConfession'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'LatestConfession'),
      isNonNull: false,
    ),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
const documentNodeFragmentLatestConfession = DocumentNode(
  definitions: [fragmentDefinitionLatestConfession, fragmentDefinitionUser],
);

class Fragment_LatestKodas {
  Fragment_LatestKodas({
    required this.id,
    this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'LatestKodas',
  });

  factory Fragment_LatestKodas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestKodas(
      id: (l$id as String),
      time: l$time == null ? null : dateFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestKodas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_LatestKodas on Fragment_LatestKodas {
  CopyWith_Fragment_LatestKodas<Fragment_LatestKodas> get copyWith =>
      CopyWith_Fragment_LatestKodas(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestKodas<TRes> {
  factory CopyWith_Fragment_LatestKodas(
    Fragment_LatestKodas instance,
    TRes Function(Fragment_LatestKodas) then,
  ) = _CopyWithImpl_Fragment_LatestKodas;

  factory CopyWith_Fragment_LatestKodas.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestKodas;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestKodas<TRes>
    implements CopyWith_Fragment_LatestKodas<TRes> {
  _CopyWithImpl_Fragment_LatestKodas(this._instance, this._then);

  final Fragment_LatestKodas _instance;

  final TRes Function(Fragment_LatestKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestKodas(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestKodas<TRes>
    implements CopyWith_Fragment_LatestKodas<TRes> {
  _CopyWithStubImpl_Fragment_LatestKodas(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestKodas = FragmentDefinitionNode(
  name: NameNode(value: 'LatestKodas'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LatestKodas'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
const documentNodeFragmentLatestKodas = DocumentNode(
  definitions: [fragmentDefinitionLatestKodas, fragmentDefinitionUser],
);
