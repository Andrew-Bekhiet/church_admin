import '../../areas/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

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
    this.houseNumber,
    this.storeyNumber,
    this.apartmentNumber,
    this.specialLandmark,
    this.$__typename = 'Addresses',
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
    final l$houseNumber = json['houseNumber'];
    final l$storeyNumber = json['storeyNumber'];
    final l$apartmentNumber = json['apartmentNumber'];
    final l$specialLandmark = json['specialLandmark'];
    final l$$__typename = json['__typename'];
    return Fragment_Address(
      id: stringToUuid(l$id),
      countryIsoCode: (l$countryIsoCode as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      district: l$district == null
          ? null
          : Fragment_Address_district.fromJson(
              (l$district as Map<String, dynamic>),
            ),
      street: l$street == null
          ? null
          : Fragment_Street.fromJson((l$street as Map<String, dynamic>)),
      substreetName: (l$substreetName as String?),
      fullAddressText: (l$fullAddressText as String?),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      houseNumber: (l$houseNumber as int?),
      storeyNumber: (l$storeyNumber as int?),
      apartmentNumber: (l$apartmentNumber as int?),
      specialLandmark: (l$specialLandmark as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String countryIsoCode;

  final Fragment_Area? area;

  final Fragment_Address_district? district;

  final Fragment_Street? street;

  final String? substreetName;

  final String? fullAddressText;

  final Map<String, dynamic>? geolocation;

  final int? houseNumber;

  final int? storeyNumber;

  final int? apartmentNumber;

  final String? specialLandmark;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    final l$houseNumber = houseNumber;
    _resultData['houseNumber'] = l$houseNumber;
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
    final l$houseNumber = houseNumber;
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
      l$houseNumber,
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
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (l$houseNumber != lOther$houseNumber) {
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
    UuidValue? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_Address_district? district,
    Fragment_Street? street,
    String? substreetName,
    String? fullAddressText,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    int? storeyNumber,
    int? apartmentNumber,
    String? specialLandmark,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_Address_district<TRes> get district;
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
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
    Object? apartmentNumber = _undefined,
    Object? specialLandmark = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Address(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      countryIsoCode: countryIsoCode == _undefined || countryIsoCode == null
          ? _instance.countryIsoCode
          : (countryIsoCode as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      district: district == _undefined
          ? _instance.district
          : (district as Fragment_Address_district?),
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
          : (geolocation as Map<String, dynamic>?),
      houseNumber: houseNumber == _undefined
          ? _instance.houseNumber
          : (houseNumber as int?),
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

  CopyWith_Fragment_Address_district<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Fragment_Address_district.stub(_then(_instance))
        : CopyWith_Fragment_Address_district(
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

class _CopyWithStubImpl_Fragment_Address<TRes>
    implements CopyWith_Fragment_Address<TRes> {
  _CopyWithStubImpl_Fragment_Address(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_Address_district? district,
    Fragment_Street? street,
    String? substreetName,
    String? fullAddressText,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    int? storeyNumber,
    int? apartmentNumber,
    String? specialLandmark,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_Address_district<TRes> get district =>
      CopyWith_Fragment_Address_district.stub(_res);

  CopyWith_Fragment_Street<TRes> get street =>
      CopyWith_Fragment_Street.stub(_res);
}

const fragmentDefinitionAddress = FragmentDefinitionNode(
  name: NameNode(value: 'Address'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Addresses'), isNonNull: false),
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
        name: NameNode(value: 'houseNumber'),
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
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
  ],
);

class Fragment_Address_district {
  Fragment_Address_district({
    required this.id,
    required this.name,
    this.$__typename = 'Districts',
  });

  factory Fragment_Address_district.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_Address_district(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    if (other is! Fragment_Address_district ||
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

extension UtilityExtension_Fragment_Address_district
    on Fragment_Address_district {
  CopyWith_Fragment_Address_district<Fragment_Address_district> get copyWith =>
      CopyWith_Fragment_Address_district(this, (i) => i);
}

abstract class CopyWith_Fragment_Address_district<TRes> {
  factory CopyWith_Fragment_Address_district(
    Fragment_Address_district instance,
    TRes Function(Fragment_Address_district) then,
  ) = _CopyWithImpl_Fragment_Address_district;

  factory CopyWith_Fragment_Address_district.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Address_district;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_Address_district<TRes>
    implements CopyWith_Fragment_Address_district<TRes> {
  _CopyWithImpl_Fragment_Address_district(this._instance, this._then);

  final Fragment_Address_district _instance;

  final TRes Function(Fragment_Address_district) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Address_district(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Address_district<TRes>
    implements CopyWith_Fragment_Address_district<TRes> {
  _CopyWithStubImpl_Fragment_Address_district(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_EditHistory {
  Fragment_EditHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryEditHistory',
  });

  factory Fragment_EditHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_EditHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_EditHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_EditHistory on Fragment_EditHistory {
  CopyWith_Fragment_EditHistory<Fragment_EditHistory> get copyWith =>
      CopyWith_Fragment_EditHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_EditHistory<TRes> {
  factory CopyWith_Fragment_EditHistory(
    Fragment_EditHistory instance,
    TRes Function(Fragment_EditHistory) then,
  ) = _CopyWithImpl_Fragment_EditHistory;

  factory CopyWith_Fragment_EditHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_EditHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_EditHistory<TRes>
    implements CopyWith_Fragment_EditHistory<TRes> {
  _CopyWithImpl_Fragment_EditHistory(this._instance, this._then);

  final Fragment_EditHistory _instance;

  final TRes Function(Fragment_EditHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_EditHistory(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
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

class _CopyWithStubImpl_Fragment_EditHistory<TRes>
    implements CopyWith_Fragment_EditHistory<TRes> {
  _CopyWithStubImpl_Fragment_EditHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionEditHistory = FragmentDefinitionNode(
  name: NameNode(value: 'EditHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryEditHistory'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentEditHistory = DocumentNode(
  definitions: [
    fragmentDefinitionEditHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_AttendanceHistory {
  Fragment_AttendanceHistory({
    required this.time,
    required this.user,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment_AttendanceHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceHistory(
      time: tstzFromString(l$time),
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_AttendanceHistory
    on Fragment_AttendanceHistory {
  CopyWith_Fragment_AttendanceHistory<Fragment_AttendanceHistory>
  get copyWith => CopyWith_Fragment_AttendanceHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_AttendanceHistory<TRes> {
  factory CopyWith_Fragment_AttendanceHistory(
    Fragment_AttendanceHistory instance,
    TRes Function(Fragment_AttendanceHistory) then,
  ) = _CopyWithImpl_Fragment_AttendanceHistory;

  factory CopyWith_Fragment_AttendanceHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_AttendanceHistory<TRes>
    implements CopyWith_Fragment_AttendanceHistory<TRes> {
  _CopyWithImpl_Fragment_AttendanceHistory(this._instance, this._then);

  final Fragment_AttendanceHistory _instance;

  final TRes Function(Fragment_AttendanceHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_AttendanceHistory(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      user: user == _undefined || user == null
          ? _instance.user
          : (user as Fragment_User),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceHistory<TRes>
    implements CopyWith_Fragment_AttendanceHistory<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionAttendanceHistory = FragmentDefinitionNode(
  name: NameNode(value: 'AttendanceHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryAttendanceHistory'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'datetime'),
        alias: NameNode(value: 'time'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedByUser'),
        alias: NameNode(value: 'user'),
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
const documentNodeFragmentAttendanceHistory = DocumentNode(
  definitions: [
    fragmentDefinitionAttendanceHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_CallHistory {
  Fragment_CallHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Fragment_CallHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_CallHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_CallHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_CallHistory on Fragment_CallHistory {
  CopyWith_Fragment_CallHistory<Fragment_CallHistory> get copyWith =>
      CopyWith_Fragment_CallHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_CallHistory<TRes> {
  factory CopyWith_Fragment_CallHistory(
    Fragment_CallHistory instance,
    TRes Function(Fragment_CallHistory) then,
  ) = _CopyWithImpl_Fragment_CallHistory;

  factory CopyWith_Fragment_CallHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_CallHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_CallHistory<TRes>
    implements CopyWith_Fragment_CallHistory<TRes> {
  _CopyWithImpl_Fragment_CallHistory(this._instance, this._then);

  final Fragment_CallHistory _instance;

  final TRes Function(Fragment_CallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_CallHistory(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
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

class _CopyWithStubImpl_Fragment_CallHistory<TRes>
    implements CopyWith_Fragment_CallHistory<TRes> {
  _CopyWithStubImpl_Fragment_CallHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionCallHistory = FragmentDefinitionNode(
  name: NameNode(value: 'CallHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryCallHistory'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentCallHistory = DocumentNode(
  definitions: [
    fragmentDefinitionCallHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_VisitHistory {
  Fragment_VisitHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Fragment_VisitHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_VisitHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_VisitHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_VisitHistory on Fragment_VisitHistory {
  CopyWith_Fragment_VisitHistory<Fragment_VisitHistory> get copyWith =>
      CopyWith_Fragment_VisitHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_VisitHistory<TRes> {
  factory CopyWith_Fragment_VisitHistory(
    Fragment_VisitHistory instance,
    TRes Function(Fragment_VisitHistory) then,
  ) = _CopyWithImpl_Fragment_VisitHistory;

  factory CopyWith_Fragment_VisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_VisitHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_VisitHistory<TRes>
    implements CopyWith_Fragment_VisitHistory<TRes> {
  _CopyWithImpl_Fragment_VisitHistory(this._instance, this._then);

  final Fragment_VisitHistory _instance;

  final TRes Function(Fragment_VisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_VisitHistory(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
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

class _CopyWithStubImpl_Fragment_VisitHistory<TRes>
    implements CopyWith_Fragment_VisitHistory<TRes> {
  _CopyWithStubImpl_Fragment_VisitHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionVisitHistory = FragmentDefinitionNode(
  name: NameNode(value: 'VisitHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryVisitHistory'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentVisitHistory = DocumentNode(
  definitions: [
    fragmentDefinitionVisitHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_KodasHistory {
  Fragment_KodasHistory({
    this.time,
    required this.user,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Fragment_KodasHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_KodasHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_KodasHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_KodasHistory on Fragment_KodasHistory {
  CopyWith_Fragment_KodasHistory<Fragment_KodasHistory> get copyWith =>
      CopyWith_Fragment_KodasHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_KodasHistory<TRes> {
  factory CopyWith_Fragment_KodasHistory(
    Fragment_KodasHistory instance,
    TRes Function(Fragment_KodasHistory) then,
  ) = _CopyWithImpl_Fragment_KodasHistory;

  factory CopyWith_Fragment_KodasHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_KodasHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_KodasHistory<TRes>
    implements CopyWith_Fragment_KodasHistory<TRes> {
  _CopyWithImpl_Fragment_KodasHistory(this._instance, this._then);

  final Fragment_KodasHistory _instance;

  final TRes Function(Fragment_KodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_KodasHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined || user == null
          ? _instance.user
          : (user as Fragment_User),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_KodasHistory<TRes>
    implements CopyWith_Fragment_KodasHistory<TRes> {
  _CopyWithStubImpl_Fragment_KodasHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionKodasHistory = FragmentDefinitionNode(
  name: NameNode(value: 'KodasHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryKodasHistory'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentKodasHistory = DocumentNode(
  definitions: [
    fragmentDefinitionKodasHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_ConfessionHistory {
  Fragment_ConfessionHistory({
    this.time,
    required this.user,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Fragment_ConfessionHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_ConfessionHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ConfessionHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_ConfessionHistory
    on Fragment_ConfessionHistory {
  CopyWith_Fragment_ConfessionHistory<Fragment_ConfessionHistory>
  get copyWith => CopyWith_Fragment_ConfessionHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_ConfessionHistory<TRes> {
  factory CopyWith_Fragment_ConfessionHistory(
    Fragment_ConfessionHistory instance,
    TRes Function(Fragment_ConfessionHistory) then,
  ) = _CopyWithImpl_Fragment_ConfessionHistory;

  factory CopyWith_Fragment_ConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ConfessionHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_ConfessionHistory<TRes>
    implements CopyWith_Fragment_ConfessionHistory<TRes> {
  _CopyWithImpl_Fragment_ConfessionHistory(this._instance, this._then);

  final Fragment_ConfessionHistory _instance;

  final TRes Function(Fragment_ConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ConfessionHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined || user == null
          ? _instance.user
          : (user as Fragment_User),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_ConfessionHistory<TRes>
    implements CopyWith_Fragment_ConfessionHistory<TRes> {
  _CopyWithStubImpl_Fragment_ConfessionHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionConfessionHistory = FragmentDefinitionNode(
  name: NameNode(value: 'ConfessionHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryConfessionHistory'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentConfessionHistory = DocumentNode(
  definitions: [
    fragmentDefinitionConfessionHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_LatestEditHistory {
  Fragment_LatestEditHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestEdits',
  });

  factory Fragment_LatestEditHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestEditHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestEditHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestEditHistory
    on Fragment_LatestEditHistory {
  CopyWith_Fragment_LatestEditHistory<Fragment_LatestEditHistory>
  get copyWith => CopyWith_Fragment_LatestEditHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestEditHistory<TRes> {
  factory CopyWith_Fragment_LatestEditHistory(
    Fragment_LatestEditHistory instance,
    TRes Function(Fragment_LatestEditHistory) then,
  ) = _CopyWithImpl_Fragment_LatestEditHistory;

  factory CopyWith_Fragment_LatestEditHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestEditHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestEditHistory<TRes>
    implements CopyWith_Fragment_LatestEditHistory<TRes> {
  _CopyWithImpl_Fragment_LatestEditHistory(this._instance, this._then);

  final Fragment_LatestEditHistory _instance;

  final TRes Function(Fragment_LatestEditHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestEditHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
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

class _CopyWithStubImpl_Fragment_LatestEditHistory<TRes>
    implements CopyWith_Fragment_LatestEditHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestEditHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestEditHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestEditHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryLatestEdits'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentLatestEditHistory = DocumentNode(
  definitions: [
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_LatestCallHistory {
  Fragment_LatestCallHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestCalls',
  });

  factory Fragment_LatestCallHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestCallHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestCallHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestCallHistory
    on Fragment_LatestCallHistory {
  CopyWith_Fragment_LatestCallHistory<Fragment_LatestCallHistory>
  get copyWith => CopyWith_Fragment_LatestCallHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestCallHistory<TRes> {
  factory CopyWith_Fragment_LatestCallHistory(
    Fragment_LatestCallHistory instance,
    TRes Function(Fragment_LatestCallHistory) then,
  ) = _CopyWithImpl_Fragment_LatestCallHistory;

  factory CopyWith_Fragment_LatestCallHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestCallHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestCallHistory<TRes>
    implements CopyWith_Fragment_LatestCallHistory<TRes> {
  _CopyWithImpl_Fragment_LatestCallHistory(this._instance, this._then);

  final Fragment_LatestCallHistory _instance;

  final TRes Function(Fragment_LatestCallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestCallHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
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

class _CopyWithStubImpl_Fragment_LatestCallHistory<TRes>
    implements CopyWith_Fragment_LatestCallHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestCallHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestCallHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestCallHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryLatestCalls'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentLatestCallHistory = DocumentNode(
  definitions: [
    fragmentDefinitionLatestCallHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_LatestVisitHistory {
  Fragment_LatestVisitHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestVisits',
  });

  factory Fragment_LatestVisitHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestVisitHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestVisitHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestVisitHistory
    on Fragment_LatestVisitHistory {
  CopyWith_Fragment_LatestVisitHistory<Fragment_LatestVisitHistory>
  get copyWith => CopyWith_Fragment_LatestVisitHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestVisitHistory<TRes> {
  factory CopyWith_Fragment_LatestVisitHistory(
    Fragment_LatestVisitHistory instance,
    TRes Function(Fragment_LatestVisitHistory) then,
  ) = _CopyWithImpl_Fragment_LatestVisitHistory;

  factory CopyWith_Fragment_LatestVisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestVisitHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestVisitHistory<TRes>
    implements CopyWith_Fragment_LatestVisitHistory<TRes> {
  _CopyWithImpl_Fragment_LatestVisitHistory(this._instance, this._then);

  final Fragment_LatestVisitHistory _instance;

  final TRes Function(Fragment_LatestVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestVisitHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
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

class _CopyWithStubImpl_Fragment_LatestVisitHistory<TRes>
    implements CopyWith_Fragment_LatestVisitHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestVisitHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestVisitHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestVisitHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryLatestVisits'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentLatestVisitHistory = DocumentNode(
  definitions: [
    fragmentDefinitionLatestVisitHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_LatestFatherVisitHistory {
  Fragment_LatestFatherVisitHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestFatherVisits',
  });

  factory Fragment_LatestFatherVisitHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestFatherVisitHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestFatherVisitHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestFatherVisitHistory
    on Fragment_LatestFatherVisitHistory {
  CopyWith_Fragment_LatestFatherVisitHistory<Fragment_LatestFatherVisitHistory>
  get copyWith => CopyWith_Fragment_LatestFatherVisitHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestFatherVisitHistory<TRes> {
  factory CopyWith_Fragment_LatestFatherVisitHistory(
    Fragment_LatestFatherVisitHistory instance,
    TRes Function(Fragment_LatestFatherVisitHistory) then,
  ) = _CopyWithImpl_Fragment_LatestFatherVisitHistory;

  factory CopyWith_Fragment_LatestFatherVisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestFatherVisitHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestFatherVisitHistory<TRes>
    implements CopyWith_Fragment_LatestFatherVisitHistory<TRes> {
  _CopyWithImpl_Fragment_LatestFatherVisitHistory(this._instance, this._then);

  final Fragment_LatestFatherVisitHistory _instance;

  final TRes Function(Fragment_LatestFatherVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestFatherVisitHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
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

class _CopyWithStubImpl_Fragment_LatestFatherVisitHistory<TRes>
    implements CopyWith_Fragment_LatestFatherVisitHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestFatherVisitHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestFatherVisitHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestFatherVisitHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryLatestFatherVisits'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentLatestFatherVisitHistory = DocumentNode(
  definitions: [
    fragmentDefinitionLatestFatherVisitHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_LatestKodasHistory {
  Fragment_LatestKodasHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestKodases',
  });

  factory Fragment_LatestKodasHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestKodasHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestKodasHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestKodasHistory
    on Fragment_LatestKodasHistory {
  CopyWith_Fragment_LatestKodasHistory<Fragment_LatestKodasHistory>
  get copyWith => CopyWith_Fragment_LatestKodasHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestKodasHistory<TRes> {
  factory CopyWith_Fragment_LatestKodasHistory(
    Fragment_LatestKodasHistory instance,
    TRes Function(Fragment_LatestKodasHistory) then,
  ) = _CopyWithImpl_Fragment_LatestKodasHistory;

  factory CopyWith_Fragment_LatestKodasHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestKodasHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestKodasHistory<TRes>
    implements CopyWith_Fragment_LatestKodasHistory<TRes> {
  _CopyWithImpl_Fragment_LatestKodasHistory(this._instance, this._then);

  final Fragment_LatestKodasHistory _instance;

  final TRes Function(Fragment_LatestKodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestKodasHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
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

class _CopyWithStubImpl_Fragment_LatestKodasHistory<TRes>
    implements CopyWith_Fragment_LatestKodasHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestKodasHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestKodasHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestKodasHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryLatestKodases'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentLatestKodasHistory = DocumentNode(
  definitions: [
    fragmentDefinitionLatestKodasHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Fragment_LatestConfessionHistory {
  Fragment_LatestConfessionHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestConfessions',
  });

  factory Fragment_LatestConfessionHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestConfessionHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestConfessionHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestConfessionHistory
    on Fragment_LatestConfessionHistory {
  CopyWith_Fragment_LatestConfessionHistory<Fragment_LatestConfessionHistory>
  get copyWith => CopyWith_Fragment_LatestConfessionHistory(this, (i) => i);
}

abstract class CopyWith_Fragment_LatestConfessionHistory<TRes> {
  factory CopyWith_Fragment_LatestConfessionHistory(
    Fragment_LatestConfessionHistory instance,
    TRes Function(Fragment_LatestConfessionHistory) then,
  ) = _CopyWithImpl_Fragment_LatestConfessionHistory;

  factory CopyWith_Fragment_LatestConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestConfessionHistory;

  TRes call({DateTime? time, Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestConfessionHistory<TRes>
    implements CopyWith_Fragment_LatestConfessionHistory<TRes> {
  _CopyWithImpl_Fragment_LatestConfessionHistory(this._instance, this._then);

  final Fragment_LatestConfessionHistory _instance;

  final TRes Function(Fragment_LatestConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_LatestConfessionHistory(
      time: time == _undefined ? _instance.time : (time as DateTime?),
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

class _CopyWithStubImpl_Fragment_LatestConfessionHistory<TRes>
    implements CopyWith_Fragment_LatestConfessionHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestConfessionHistory(this._res);

  TRes _res;

  call({DateTime? time, Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestConfessionHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestConfessionHistory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'HistoryLatestConfessions'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
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
const documentNodeFragmentLatestConfessionHistory = DocumentNode(
  definitions: [
    fragmentDefinitionLatestConfessionHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);
