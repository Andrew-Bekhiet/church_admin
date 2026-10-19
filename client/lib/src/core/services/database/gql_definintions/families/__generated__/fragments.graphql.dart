import '../../areas/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/districts/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Family {
  Fragment_Family({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
  });

  factory Fragment_Family.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    return Fragment_Family(
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
    if (other is! Fragment_Family || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_Family on Fragment_Family {
  CopyWith_Fragment_Family<Fragment_Family> get copyWith =>
      CopyWith_Fragment_Family(this, (i) => i);
}

abstract class CopyWith_Fragment_Family<TRes> {
  factory CopyWith_Fragment_Family(
    Fragment_Family instance,
    TRes Function(Fragment_Family) then,
  ) = _CopyWithImpl_Fragment_Family;

  factory CopyWith_Fragment_Family.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Family;

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

class _CopyWithImpl_Fragment_Family<TRes>
    implements CopyWith_Fragment_Family<TRes> {
  _CopyWithImpl_Fragment_Family(this._instance, this._then);

  final Fragment_Family _instance;

  final TRes Function(Fragment_Family) _then;

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
    Fragment_Family(
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

class _CopyWithStubImpl_Fragment_Family<TRes>
    implements CopyWith_Fragment_Family<TRes> {
  _CopyWithStubImpl_Fragment_Family(this._res);

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

const fragmentDefinitionFamily = FragmentDefinitionNode(
  name: NameNode(value: 'Family'),
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
const documentNodeFragmentFamily = DocumentNode(
  definitions: [fragmentDefinitionFamily, fragmentDefinitionDataCheck],
);

class Fragment_FamilyWithAddress implements Fragment_Family {
  Fragment_FamilyWithAddress({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
    required this.status,
    this.deceasedSpouseName,
    this.marriageDate,
    this.address,
  });

  factory Fragment_FamilyWithAddress.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    final l$status = json['status'];
    final l$deceasedSpouseName = json['deceasedSpouseName'];
    final l$marriageDate = json['marriageDate'];
    final l$address = json['address'];
    return Fragment_FamilyWithAddress(
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
      status: (l$status as String),
      deceasedSpouseName: (l$deceasedSpouseName as String?),
      marriageDate: l$marriageDate == null
          ? null
          : dateFromString(l$marriageDate),
      address: l$address == null
          ? null
          : Fragment_Address.fromJson((l$address as Map<String, dynamic>)),
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

  final String status;

  final String? deceasedSpouseName;

  final DateTime? marriageDate;

  final Fragment_Address? address;

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
    final l$status = status;
    _resultData['status'] = l$status;
    final l$deceasedSpouseName = deceasedSpouseName;
    _resultData['deceasedSpouseName'] = l$deceasedSpouseName;
    final l$marriageDate = marriageDate;
    _resultData['marriageDate'] = l$marriageDate == null
        ? null
        : dateToString(l$marriageDate);
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
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
    final l$status = status;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$address = address;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
      l$status,
      l$deceasedSpouseName,
      l$marriageDate,
      l$address,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyWithAddress ||
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (l$marriageDate != lOther$marriageDate) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FamilyWithAddress
    on Fragment_FamilyWithAddress {
  CopyWith_Fragment_FamilyWithAddress<Fragment_FamilyWithAddress>
  get copyWith => CopyWith_Fragment_FamilyWithAddress(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyWithAddress<TRes> {
  factory CopyWith_Fragment_FamilyWithAddress(
    Fragment_FamilyWithAddress instance,
    TRes Function(Fragment_FamilyWithAddress) then,
  ) = _CopyWithImpl_Fragment_FamilyWithAddress;

  factory CopyWith_Fragment_FamilyWithAddress.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyWithAddress;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    Fragment_Address? address,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_Address<TRes> get address;
}

class _CopyWithImpl_Fragment_FamilyWithAddress<TRes>
    implements CopyWith_Fragment_FamilyWithAddress<TRes> {
  _CopyWithImpl_Fragment_FamilyWithAddress(this._instance, this._then);

  final Fragment_FamilyWithAddress _instance;

  final TRes Function(Fragment_FamilyWithAddress) _then;

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
    Object? status = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? address = _undefined,
  }) => _then(
    Fragment_FamilyWithAddress(
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
      status: status == _undefined || status == null
          ? _instance.status
          : (status as String),
      deceasedSpouseName: deceasedSpouseName == _undefined
          ? _instance.deceasedSpouseName
          : (deceasedSpouseName as String?),
      marriageDate: marriageDate == _undefined
          ? _instance.marriageDate
          : (marriageDate as DateTime?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_Address?),
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

  CopyWith_Fragment_Address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl_Fragment_FamilyWithAddress<TRes>
    implements CopyWith_Fragment_FamilyWithAddress<TRes> {
  _CopyWithStubImpl_Fragment_FamilyWithAddress(this._res);

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
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    Fragment_Address? address,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_Address<TRes> get address =>
      CopyWith_Fragment_Address.stub(_res);
}

const fragmentDefinitionFamilyWithAddress = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyWithAddress'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Family'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Family'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deceasedSpouseName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'marriageDate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Address'),
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
const documentNodeFragmentFamilyWithAddress = DocumentNode(
  definitions: [
    fragmentDefinitionFamilyWithAddress,
    fragmentDefinitionFamily,
    fragmentDefinitionDataCheck,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionDistrict,
    fragmentDefinitionStreet,
  ],
);

class Fragment_FamilyDetails
    implements Fragment_FamilyWithAddress, Fragment_Family {
  Fragment_FamilyDetails({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
    required this.status,
    this.deceasedSpouseName,
    this.marriageDate,
    this.address,
    this.church,
    this.notes,
    this.latestEdit,
    this.latestVisit,
    this.latestFatherVisit,
  });

  factory Fragment_FamilyDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    final l$status = json['status'];
    final l$deceasedSpouseName = json['deceasedSpouseName'];
    final l$marriageDate = json['marriageDate'];
    final l$address = json['address'];
    final l$church = json['church'];
    final l$notes = json['notes'];
    final l$latestEdit = json['latestEdit'];
    final l$latestVisit = json['latestVisit'];
    final l$latestFatherVisit = json['latestFatherVisit'];
    return Fragment_FamilyDetails(
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
      status: (l$status as String),
      deceasedSpouseName: (l$deceasedSpouseName as String?),
      marriageDate: l$marriageDate == null
          ? null
          : dateFromString(l$marriageDate),
      address: l$address == null
          ? null
          : Fragment_Address.fromJson((l$address as Map<String, dynamic>)),
      church: l$church == null
          ? null
          : Fragment_FamilyDetails_church.fromJson(
              (l$church as Map<String, dynamic>),
            ),
      notes: (l$notes as String?),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_LatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      latestVisit: l$latestVisit == null
          ? null
          : Fragment_LatestVisit.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            ),
      latestFatherVisit: l$latestFatherVisit == null
          ? null
          : Fragment_LatestFatherVisit.fromJson(
              (l$latestFatherVisit as Map<String, dynamic>),
            ),
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

  final String status;

  final String? deceasedSpouseName;

  final DateTime? marriageDate;

  final Fragment_Address? address;

  final Fragment_FamilyDetails_church? church;

  final String? notes;

  final Fragment_LatestEdit? latestEdit;

  final Fragment_LatestVisit? latestVisit;

  final Fragment_LatestFatherVisit? latestFatherVisit;

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
    final l$status = status;
    _resultData['status'] = l$status;
    final l$deceasedSpouseName = deceasedSpouseName;
    _resultData['deceasedSpouseName'] = l$deceasedSpouseName;
    final l$marriageDate = marriageDate;
    _resultData['marriageDate'] = l$marriageDate == null
        ? null
        : dateToString(l$marriageDate);
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$latestVisit = latestVisit;
    _resultData['latestVisit'] = l$latestVisit?.toJson();
    final l$latestFatherVisit = latestFatherVisit;
    _resultData['latestFatherVisit'] = l$latestFatherVisit?.toJson();
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
    final l$status = status;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$address = address;
    final l$church = church;
    final l$notes = notes;
    final l$latestEdit = latestEdit;
    final l$latestVisit = latestVisit;
    final l$latestFatherVisit = latestFatherVisit;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
      l$status,
      l$deceasedSpouseName,
      l$marriageDate,
      l$address,
      l$church,
      l$notes,
      l$latestEdit,
      l$latestVisit,
      l$latestFatherVisit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyDetails || runtimeType != other.runtimeType) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (l$marriageDate != lOther$marriageDate) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$latestFatherVisit = latestFatherVisit;
    final lOther$latestFatherVisit = other.latestFatherVisit;
    if (l$latestFatherVisit != lOther$latestFatherVisit) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FamilyDetails on Fragment_FamilyDetails {
  CopyWith_Fragment_FamilyDetails<Fragment_FamilyDetails> get copyWith =>
      CopyWith_Fragment_FamilyDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyDetails<TRes> {
  factory CopyWith_Fragment_FamilyDetails(
    Fragment_FamilyDetails instance,
    TRes Function(Fragment_FamilyDetails) then,
  ) = _CopyWithImpl_Fragment_FamilyDetails;

  factory CopyWith_Fragment_FamilyDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    Fragment_Address? address,
    Fragment_FamilyDetails_church? church,
    String? notes,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestVisit? latestVisit,
    Fragment_LatestFatherVisit? latestFatherVisit,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_Address<TRes> get address;
  CopyWith_Fragment_FamilyDetails_church<TRes> get church;
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_LatestVisit<TRes> get latestVisit;
  CopyWith_Fragment_LatestFatherVisit<TRes> get latestFatherVisit;
}

class _CopyWithImpl_Fragment_FamilyDetails<TRes>
    implements CopyWith_Fragment_FamilyDetails<TRes> {
  _CopyWithImpl_Fragment_FamilyDetails(this._instance, this._then);

  final Fragment_FamilyDetails _instance;

  final TRes Function(Fragment_FamilyDetails) _then;

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
    Object? status = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? address = _undefined,
    Object? church = _undefined,
    Object? notes = _undefined,
    Object? latestEdit = _undefined,
    Object? latestVisit = _undefined,
    Object? latestFatherVisit = _undefined,
  }) => _then(
    Fragment_FamilyDetails(
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
      status: status == _undefined || status == null
          ? _instance.status
          : (status as String),
      deceasedSpouseName: deceasedSpouseName == _undefined
          ? _instance.deceasedSpouseName
          : (deceasedSpouseName as String?),
      marriageDate: marriageDate == _undefined
          ? _instance.marriageDate
          : (marriageDate as DateTime?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_Address?),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_FamilyDetails_church?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_LatestEdit?),
      latestVisit: latestVisit == _undefined
          ? _instance.latestVisit
          : (latestVisit as Fragment_LatestVisit?),
      latestFatherVisit: latestFatherVisit == _undefined
          ? _instance.latestFatherVisit
          : (latestFatherVisit as Fragment_LatestFatherVisit?),
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

  CopyWith_Fragment_Address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(local$address, (e) => call(address: e));
  }

  CopyWith_Fragment_FamilyDetails_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FamilyDetails_church.stub(_then(_instance))
        : CopyWith_Fragment_FamilyDetails_church(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_LatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_LatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Fragment_LatestVisit.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisit(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Fragment_LatestFatherVisit<TRes> get latestFatherVisit {
    final local$latestFatherVisit = _instance.latestFatherVisit;
    return local$latestFatherVisit == null
        ? CopyWith_Fragment_LatestFatherVisit.stub(_then(_instance))
        : CopyWith_Fragment_LatestFatherVisit(
            local$latestFatherVisit,
            (e) => call(latestFatherVisit: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_FamilyDetails<TRes>
    implements CopyWith_Fragment_FamilyDetails<TRes> {
  _CopyWithStubImpl_Fragment_FamilyDetails(this._res);

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
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    Fragment_Address? address,
    Fragment_FamilyDetails_church? church,
    String? notes,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestVisit? latestVisit,
    Fragment_LatestFatherVisit? latestFatherVisit,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_Address<TRes> get address =>
      CopyWith_Fragment_Address.stub(_res);

  CopyWith_Fragment_FamilyDetails_church<TRes> get church =>
      CopyWith_Fragment_FamilyDetails_church.stub(_res);

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit =>
      CopyWith_Fragment_LatestVisit.stub(_res);

  CopyWith_Fragment_LatestFatherVisit<TRes> get latestFatherVisit =>
      CopyWith_Fragment_LatestFatherVisit.stub(_res);
}

const fragmentDefinitionFamilyDetails = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Family'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'FamilyWithAddress'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'church'),
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
        name: NameNode(value: 'notes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'latestEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestEdit'),
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
        name: NameNode(value: 'latestVisit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestVisit'),
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
        name: NameNode(value: 'latestFatherVisit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestFatherVisit'),
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
const documentNodeFragmentFamilyDetails = DocumentNode(
  definitions: [
    fragmentDefinitionFamilyDetails,
    fragmentDefinitionFamilyWithAddress,
    fragmentDefinitionFamily,
    fragmentDefinitionDataCheck,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionDistrict,
    fragmentDefinitionStreet,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
    fragmentDefinitionLatestVisit,
    fragmentDefinitionLatestFatherVisit,
  ],
);

class Fragment_FamilyDetails_church {
  Fragment_FamilyDetails_church({
    required this.id,
    required this.name,
    this.$__typename = 'Church',
  });

  factory Fragment_FamilyDetails_church.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyDetails_church(
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
    if (other is! Fragment_FamilyDetails_church ||
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

extension UtilityExtension_Fragment_FamilyDetails_church
    on Fragment_FamilyDetails_church {
  CopyWith_Fragment_FamilyDetails_church<Fragment_FamilyDetails_church>
  get copyWith => CopyWith_Fragment_FamilyDetails_church(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyDetails_church<TRes> {
  factory CopyWith_Fragment_FamilyDetails_church(
    Fragment_FamilyDetails_church instance,
    TRes Function(Fragment_FamilyDetails_church) then,
  ) = _CopyWithImpl_Fragment_FamilyDetails_church;

  factory CopyWith_Fragment_FamilyDetails_church.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyDetails_church;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FamilyDetails_church<TRes>
    implements CopyWith_Fragment_FamilyDetails_church<TRes> {
  _CopyWithImpl_Fragment_FamilyDetails_church(this._instance, this._then);

  final Fragment_FamilyDetails_church _instance;

  final TRes Function(Fragment_FamilyDetails_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyDetails_church(
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

class _CopyWithStubImpl_Fragment_FamilyDetails_church<TRes>
    implements CopyWith_Fragment_FamilyDetails_church<TRes> {
  _CopyWithStubImpl_Fragment_FamilyDetails_church(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
