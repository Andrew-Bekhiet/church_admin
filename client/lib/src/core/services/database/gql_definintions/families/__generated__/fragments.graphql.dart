import '../../areas/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../metadata/person_types/__generated__/fragments.graphql.dart';
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
          : Fragment_FamilyAddress.fromJson(
              (l$address as Map<String, dynamic>),
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

  final Fragment_FamilyAddress? address;

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
    Fragment_FamilyAddress? address,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_FamilyAddress<TRes> get address;
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
          : (address as Fragment_FamilyAddress?),
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

  CopyWith_Fragment_FamilyAddress<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_FamilyAddress.stub(_then(_instance))
        : CopyWith_Fragment_FamilyAddress(
            local$address,
            (e) => call(address: e),
          );
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
    Fragment_FamilyAddress? address,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_FamilyAddress<TRes> get address =>
      CopyWith_Fragment_FamilyAddress.stub(_res);
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
              name: NameNode(value: 'FamilyAddress'),
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
    fragmentDefinitionFamilyAddress,
    fragmentDefinitionArea,
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
          : Fragment_FamilyAddress.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      church: l$church == null
          ? null
          : Fragment_FamilyDetails_church.fromJson(
              (l$church as Map<String, dynamic>),
            ),
      notes: (l$notes as String?),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_FamilyLatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      latestVisit: l$latestVisit == null
          ? null
          : Fragment_FamilyLatestVisit.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            ),
      latestFatherVisit: l$latestFatherVisit == null
          ? null
          : Fragment_FamilyLatestFatherVisit.fromJson(
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

  final Fragment_FamilyAddress? address;

  final Fragment_FamilyDetails_church? church;

  final String? notes;

  final Fragment_FamilyLatestEdit? latestEdit;

  final Fragment_FamilyLatestVisit? latestVisit;

  final Fragment_FamilyLatestFatherVisit? latestFatherVisit;

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
    Fragment_FamilyAddress? address,
    Fragment_FamilyDetails_church? church,
    String? notes,
    Fragment_FamilyLatestEdit? latestEdit,
    Fragment_FamilyLatestVisit? latestVisit,
    Fragment_FamilyLatestFatherVisit? latestFatherVisit,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_FamilyAddress<TRes> get address;
  CopyWith_Fragment_FamilyDetails_church<TRes> get church;
  CopyWith_Fragment_FamilyLatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_FamilyLatestVisit<TRes> get latestVisit;
  CopyWith_Fragment_FamilyLatestFatherVisit<TRes> get latestFatherVisit;
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
          : (address as Fragment_FamilyAddress?),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_FamilyDetails_church?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_FamilyLatestEdit?),
      latestVisit: latestVisit == _undefined
          ? _instance.latestVisit
          : (latestVisit as Fragment_FamilyLatestVisit?),
      latestFatherVisit: latestFatherVisit == _undefined
          ? _instance.latestFatherVisit
          : (latestFatherVisit as Fragment_FamilyLatestFatherVisit?),
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

  CopyWith_Fragment_FamilyAddress<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_FamilyAddress.stub(_then(_instance))
        : CopyWith_Fragment_FamilyAddress(
            local$address,
            (e) => call(address: e),
          );
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

  CopyWith_Fragment_FamilyLatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_FamilyLatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_FamilyLatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Fragment_FamilyLatestVisit<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Fragment_FamilyLatestVisit.stub(_then(_instance))
        : CopyWith_Fragment_FamilyLatestVisit(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Fragment_FamilyLatestFatherVisit<TRes> get latestFatherVisit {
    final local$latestFatherVisit = _instance.latestFatherVisit;
    return local$latestFatherVisit == null
        ? CopyWith_Fragment_FamilyLatestFatherVisit.stub(_then(_instance))
        : CopyWith_Fragment_FamilyLatestFatherVisit(
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
    Fragment_FamilyAddress? address,
    Fragment_FamilyDetails_church? church,
    String? notes,
    Fragment_FamilyLatestEdit? latestEdit,
    Fragment_FamilyLatestVisit? latestVisit,
    Fragment_FamilyLatestFatherVisit? latestFatherVisit,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_FamilyAddress<TRes> get address =>
      CopyWith_Fragment_FamilyAddress.stub(_res);

  CopyWith_Fragment_FamilyDetails_church<TRes> get church =>
      CopyWith_Fragment_FamilyDetails_church.stub(_res);

  CopyWith_Fragment_FamilyLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_FamilyLatestEdit.stub(_res);

  CopyWith_Fragment_FamilyLatestVisit<TRes> get latestVisit =>
      CopyWith_Fragment_FamilyLatestVisit.stub(_res);

  CopyWith_Fragment_FamilyLatestFatherVisit<TRes> get latestFatherVisit =>
      CopyWith_Fragment_FamilyLatestFatherVisit.stub(_res);
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
              name: NameNode(value: 'FamilyLatestEdit'),
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
              name: NameNode(value: 'FamilyLatestVisit'),
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
              name: NameNode(value: 'FamilyLatestFatherVisit'),
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
    fragmentDefinitionFamilyAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
    fragmentDefinitionFamilyLatestEdit,
    fragmentDefinitionFamilyUser,
    fragmentDefinitionFamilyLatestVisit,
    fragmentDefinitionFamilyLatestFatherVisit,
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

class Fragment_FamilyAddress {
  Fragment_FamilyAddress({
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

  factory Fragment_FamilyAddress.fromJson(Map<String, dynamic> json) {
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
    return Fragment_FamilyAddress(
      id: (l$id as String),
      countryIsoCode: (l$countryIsoCode as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      district: l$district == null
          ? null
          : Fragment_FamilyAddress_district.fromJson(
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

  final Fragment_FamilyAddress_district? district;

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
    if (other is! Fragment_FamilyAddress || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_FamilyAddress on Fragment_FamilyAddress {
  CopyWith_Fragment_FamilyAddress<Fragment_FamilyAddress> get copyWith =>
      CopyWith_Fragment_FamilyAddress(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyAddress<TRes> {
  factory CopyWith_Fragment_FamilyAddress(
    Fragment_FamilyAddress instance,
    TRes Function(Fragment_FamilyAddress) then,
  ) = _CopyWithImpl_Fragment_FamilyAddress;

  factory CopyWith_Fragment_FamilyAddress.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyAddress;

  TRes call({
    String? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_FamilyAddress_district? district,
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
  CopyWith_Fragment_FamilyAddress_district<TRes> get district;
  CopyWith_Fragment_Street<TRes> get street;
}

class _CopyWithImpl_Fragment_FamilyAddress<TRes>
    implements CopyWith_Fragment_FamilyAddress<TRes> {
  _CopyWithImpl_Fragment_FamilyAddress(this._instance, this._then);

  final Fragment_FamilyAddress _instance;

  final TRes Function(Fragment_FamilyAddress) _then;

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
    Fragment_FamilyAddress(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      countryIsoCode: countryIsoCode == _undefined || countryIsoCode == null
          ? _instance.countryIsoCode
          : (countryIsoCode as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      district: district == _undefined
          ? _instance.district
          : (district as Fragment_FamilyAddress_district?),
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

  CopyWith_Fragment_FamilyAddress_district<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Fragment_FamilyAddress_district.stub(_then(_instance))
        : CopyWith_Fragment_FamilyAddress_district(
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

class _CopyWithStubImpl_Fragment_FamilyAddress<TRes>
    implements CopyWith_Fragment_FamilyAddress<TRes> {
  _CopyWithStubImpl_Fragment_FamilyAddress(this._res);

  TRes _res;

  call({
    String? id,
    String? countryIsoCode,
    Fragment_Area? area,
    Fragment_FamilyAddress_district? district,
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

  CopyWith_Fragment_FamilyAddress_district<TRes> get district =>
      CopyWith_Fragment_FamilyAddress_district.stub(_res);

  CopyWith_Fragment_Street<TRes> get street =>
      CopyWith_Fragment_Street.stub(_res);
}

const fragmentDefinitionFamilyAddress = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyAddress'),
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
const documentNodeFragmentFamilyAddress = DocumentNode(
  definitions: [
    fragmentDefinitionFamilyAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
  ],
);

class Fragment_FamilyAddress_district {
  Fragment_FamilyAddress_district({
    required this.id,
    required this.name,
    this.$__typename = 'District',
  });

  factory Fragment_FamilyAddress_district.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyAddress_district(
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
    if (other is! Fragment_FamilyAddress_district ||
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

extension UtilityExtension_Fragment_FamilyAddress_district
    on Fragment_FamilyAddress_district {
  CopyWith_Fragment_FamilyAddress_district<Fragment_FamilyAddress_district>
  get copyWith => CopyWith_Fragment_FamilyAddress_district(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyAddress_district<TRes> {
  factory CopyWith_Fragment_FamilyAddress_district(
    Fragment_FamilyAddress_district instance,
    TRes Function(Fragment_FamilyAddress_district) then,
  ) = _CopyWithImpl_Fragment_FamilyAddress_district;

  factory CopyWith_Fragment_FamilyAddress_district.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyAddress_district;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FamilyAddress_district<TRes>
    implements CopyWith_Fragment_FamilyAddress_district<TRes> {
  _CopyWithImpl_Fragment_FamilyAddress_district(this._instance, this._then);

  final Fragment_FamilyAddress_district _instance;

  final TRes Function(Fragment_FamilyAddress_district) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyAddress_district(
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

class _CopyWithStubImpl_Fragment_FamilyAddress_district<TRes>
    implements CopyWith_Fragment_FamilyAddress_district<TRes> {
  _CopyWithStubImpl_Fragment_FamilyAddress_district(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Fragment_FamilyContact {
  Fragment_FamilyContact({
    required this.id,
    this.personId,
    this.label,
    this.phone,
    this.isMainPhone,
    this.personType,
    this.$__typename = 'FamilyContact',
  });

  factory Fragment_FamilyContact.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$personId = json['personId'];
    final l$label = json['label'];
    final l$phone = json['phone'];
    final l$isMainPhone = json['isMainPhone'];
    final l$personType = json['personType'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyContact(
      id: (l$id as String),
      personId: (l$personId as String?),
      label: (l$label as String?),
      phone: (l$phone as String?),
      isMainPhone: (l$isMainPhone as bool?),
      personType: l$personType == null
          ? null
          : Fragment_PersonType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? personId;

  final String? label;

  final String? phone;

  final bool? isMainPhone;

  final Fragment_PersonType? personType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$personId = personId;
    _resultData['personId'] = l$personId;
    final l$label = label;
    _resultData['label'] = l$label;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$isMainPhone = isMainPhone;
    _resultData['isMainPhone'] = l$isMainPhone;
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$personId = personId;
    final l$label = label;
    final l$phone = phone;
    final l$isMainPhone = isMainPhone;
    final l$personType = personType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$personId,
      l$label,
      l$phone,
      l$isMainPhone,
      l$personType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyContact || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (l$label != lOther$label) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (l$isMainPhone != lOther$isMainPhone) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
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

extension UtilityExtension_Fragment_FamilyContact on Fragment_FamilyContact {
  CopyWith_Fragment_FamilyContact<Fragment_FamilyContact> get copyWith =>
      CopyWith_Fragment_FamilyContact(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyContact<TRes> {
  factory CopyWith_Fragment_FamilyContact(
    Fragment_FamilyContact instance,
    TRes Function(Fragment_FamilyContact) then,
  ) = _CopyWithImpl_Fragment_FamilyContact;

  factory CopyWith_Fragment_FamilyContact.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyContact;

  TRes call({
    String? id,
    String? personId,
    String? label,
    String? phone,
    bool? isMainPhone,
    Fragment_PersonType? personType,
    String? $__typename,
  });
  CopyWith_Fragment_PersonType<TRes> get personType;
}

class _CopyWithImpl_Fragment_FamilyContact<TRes>
    implements CopyWith_Fragment_FamilyContact<TRes> {
  _CopyWithImpl_Fragment_FamilyContact(this._instance, this._then);

  final Fragment_FamilyContact _instance;

  final TRes Function(Fragment_FamilyContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
    Object? isMainPhone = _undefined,
    Object? personType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyContact(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      personId: personId == _undefined
          ? _instance.personId
          : (personId as String?),
      label: label == _undefined ? _instance.label : (label as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      isMainPhone: isMainPhone == _undefined
          ? _instance.isMainPhone
          : (isMainPhone as bool?),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_PersonType?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PersonType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_PersonType.stub(_then(_instance))
        : CopyWith_Fragment_PersonType(
            local$personType,
            (e) => call(personType: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_FamilyContact<TRes>
    implements CopyWith_Fragment_FamilyContact<TRes> {
  _CopyWithStubImpl_Fragment_FamilyContact(this._res);

  TRes _res;

  call({
    String? id,
    String? personId,
    String? label,
    String? phone,
    bool? isMainPhone,
    Fragment_PersonType? personType,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_PersonType<TRes> get personType =>
      CopyWith_Fragment_PersonType.stub(_res);
}

const fragmentDefinitionFamilyContact = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyContact'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'FamilyContact'), isNonNull: false),
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
        name: NameNode(value: 'personId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'label'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isMainPhone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'personType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PersonType'),
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
const documentNodeFragmentFamilyContact = DocumentNode(
  definitions: [fragmentDefinitionFamilyContact, fragmentDefinitionPersonType],
);

class Fragment_FamilyUser {
  Fragment_FamilyUser({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
  });

  factory Fragment_FamilyUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyUser(
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
    if (other is! Fragment_FamilyUser || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_FamilyUser on Fragment_FamilyUser {
  CopyWith_Fragment_FamilyUser<Fragment_FamilyUser> get copyWith =>
      CopyWith_Fragment_FamilyUser(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyUser<TRes> {
  factory CopyWith_Fragment_FamilyUser(
    Fragment_FamilyUser instance,
    TRes Function(Fragment_FamilyUser) then,
  ) = _CopyWithImpl_Fragment_FamilyUser;

  factory CopyWith_Fragment_FamilyUser.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyUser;

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

class _CopyWithImpl_Fragment_FamilyUser<TRes>
    implements CopyWith_Fragment_FamilyUser<TRes> {
  _CopyWithImpl_Fragment_FamilyUser(this._instance, this._then);

  final Fragment_FamilyUser _instance;

  final TRes Function(Fragment_FamilyUser) _then;

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
    Fragment_FamilyUser(
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

class _CopyWithStubImpl_Fragment_FamilyUser<TRes>
    implements CopyWith_Fragment_FamilyUser<TRes> {
  _CopyWithStubImpl_Fragment_FamilyUser(this._res);

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

const fragmentDefinitionFamilyUser = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyUser'),
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
const documentNodeFragmentFamilyUser = DocumentNode(
  definitions: [fragmentDefinitionFamilyUser],
);

class Fragment_FamilyLatestEdit {
  Fragment_FamilyLatestEdit({
    required this.id,
    this.time,
    this.user,
    this.$__typename = 'LatestEdit',
  });

  factory Fragment_FamilyLatestEdit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyLatestEdit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_FamilyUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final Fragment_FamilyUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyLatestEdit ||
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

extension UtilityExtension_Fragment_FamilyLatestEdit
    on Fragment_FamilyLatestEdit {
  CopyWith_Fragment_FamilyLatestEdit<Fragment_FamilyLatestEdit> get copyWith =>
      CopyWith_Fragment_FamilyLatestEdit(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyLatestEdit<TRes> {
  factory CopyWith_Fragment_FamilyLatestEdit(
    Fragment_FamilyLatestEdit instance,
    TRes Function(Fragment_FamilyLatestEdit) then,
  ) = _CopyWithImpl_Fragment_FamilyLatestEdit;

  factory CopyWith_Fragment_FamilyLatestEdit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyLatestEdit;

  TRes call({
    String? id,
    DateTime? time,
    Fragment_FamilyUser? user,
    String? $__typename,
  });
  CopyWith_Fragment_FamilyUser<TRes> get user;
}

class _CopyWithImpl_Fragment_FamilyLatestEdit<TRes>
    implements CopyWith_Fragment_FamilyLatestEdit<TRes> {
  _CopyWithImpl_Fragment_FamilyLatestEdit(this._instance, this._then);

  final Fragment_FamilyLatestEdit _instance;

  final TRes Function(Fragment_FamilyLatestEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyLatestEdit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment_FamilyUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_FamilyUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_FamilyUser.stub(_then(_instance))
        : CopyWith_Fragment_FamilyUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_FamilyLatestEdit<TRes>
    implements CopyWith_Fragment_FamilyLatestEdit<TRes> {
  _CopyWithStubImpl_Fragment_FamilyLatestEdit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    Fragment_FamilyUser? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_FamilyUser<TRes> get user =>
      CopyWith_Fragment_FamilyUser.stub(_res);
}

const fragmentDefinitionFamilyLatestEdit = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyLatestEdit'),
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
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'FamilyUser'),
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
const documentNodeFragmentFamilyLatestEdit = DocumentNode(
  definitions: [
    fragmentDefinitionFamilyLatestEdit,
    fragmentDefinitionFamilyUser,
  ],
);

class Fragment_FamilyLatestVisit {
  Fragment_FamilyLatestVisit({
    required this.id,
    this.time,
    this.user,
    this.$__typename = 'LatestVisit',
  });

  factory Fragment_FamilyLatestVisit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyLatestVisit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_FamilyUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final Fragment_FamilyUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyLatestVisit ||
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

extension UtilityExtension_Fragment_FamilyLatestVisit
    on Fragment_FamilyLatestVisit {
  CopyWith_Fragment_FamilyLatestVisit<Fragment_FamilyLatestVisit>
  get copyWith => CopyWith_Fragment_FamilyLatestVisit(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyLatestVisit<TRes> {
  factory CopyWith_Fragment_FamilyLatestVisit(
    Fragment_FamilyLatestVisit instance,
    TRes Function(Fragment_FamilyLatestVisit) then,
  ) = _CopyWithImpl_Fragment_FamilyLatestVisit;

  factory CopyWith_Fragment_FamilyLatestVisit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyLatestVisit;

  TRes call({
    String? id,
    DateTime? time,
    Fragment_FamilyUser? user,
    String? $__typename,
  });
  CopyWith_Fragment_FamilyUser<TRes> get user;
}

class _CopyWithImpl_Fragment_FamilyLatestVisit<TRes>
    implements CopyWith_Fragment_FamilyLatestVisit<TRes> {
  _CopyWithImpl_Fragment_FamilyLatestVisit(this._instance, this._then);

  final Fragment_FamilyLatestVisit _instance;

  final TRes Function(Fragment_FamilyLatestVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyLatestVisit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment_FamilyUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_FamilyUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_FamilyUser.stub(_then(_instance))
        : CopyWith_Fragment_FamilyUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_FamilyLatestVisit<TRes>
    implements CopyWith_Fragment_FamilyLatestVisit<TRes> {
  _CopyWithStubImpl_Fragment_FamilyLatestVisit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    Fragment_FamilyUser? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_FamilyUser<TRes> get user =>
      CopyWith_Fragment_FamilyUser.stub(_res);
}

const fragmentDefinitionFamilyLatestVisit = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyLatestVisit'),
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
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'FamilyUser'),
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
const documentNodeFragmentFamilyLatestVisit = DocumentNode(
  definitions: [
    fragmentDefinitionFamilyLatestVisit,
    fragmentDefinitionFamilyUser,
  ],
);

class Fragment_FamilyLatestFatherVisit {
  Fragment_FamilyLatestFatherVisit({
    required this.id,
    this.time,
    this.user,
    this.$__typename = 'LatestFatherVisit',
  });

  factory Fragment_FamilyLatestFatherVisit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyLatestFatherVisit(
      id: (l$id as String),
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_FamilyUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final Fragment_FamilyUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyLatestFatherVisit ||
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

extension UtilityExtension_Fragment_FamilyLatestFatherVisit
    on Fragment_FamilyLatestFatherVisit {
  CopyWith_Fragment_FamilyLatestFatherVisit<Fragment_FamilyLatestFatherVisit>
  get copyWith => CopyWith_Fragment_FamilyLatestFatherVisit(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyLatestFatherVisit<TRes> {
  factory CopyWith_Fragment_FamilyLatestFatherVisit(
    Fragment_FamilyLatestFatherVisit instance,
    TRes Function(Fragment_FamilyLatestFatherVisit) then,
  ) = _CopyWithImpl_Fragment_FamilyLatestFatherVisit;

  factory CopyWith_Fragment_FamilyLatestFatherVisit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyLatestFatherVisit;

  TRes call({
    String? id,
    DateTime? time,
    Fragment_FamilyUser? user,
    String? $__typename,
  });
  CopyWith_Fragment_FamilyUser<TRes> get user;
}

class _CopyWithImpl_Fragment_FamilyLatestFatherVisit<TRes>
    implements CopyWith_Fragment_FamilyLatestFatherVisit<TRes> {
  _CopyWithImpl_Fragment_FamilyLatestFatherVisit(this._instance, this._then);

  final Fragment_FamilyLatestFatherVisit _instance;

  final TRes Function(Fragment_FamilyLatestFatherVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyLatestFatherVisit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment_FamilyUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_FamilyUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_FamilyUser.stub(_then(_instance))
        : CopyWith_Fragment_FamilyUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_FamilyLatestFatherVisit<TRes>
    implements CopyWith_Fragment_FamilyLatestFatherVisit<TRes> {
  _CopyWithStubImpl_Fragment_FamilyLatestFatherVisit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    Fragment_FamilyUser? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_FamilyUser<TRes> get user =>
      CopyWith_Fragment_FamilyUser.stub(_res);
}

const fragmentDefinitionFamilyLatestFatherVisit = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyLatestFatherVisit'),
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
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'FamilyUser'),
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
const documentNodeFragmentFamilyLatestFatherVisit = DocumentNode(
  definitions: [
    fragmentDefinitionFamilyLatestFatherVisit,
    fragmentDefinitionFamilyUser,
  ],
);
