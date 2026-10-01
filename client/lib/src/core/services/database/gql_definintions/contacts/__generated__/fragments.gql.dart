import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_PhoneContact {
  Fragment_PhoneContact({
    required this.id,
    this.label,
    required this.phone,
    required this.isMainPhone,
    this.$__typename = 'Contacts',
  });

  factory Fragment_PhoneContact.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$label = json['label'];
    final l$phone = json['phone'];
    final l$isMainPhone = json['isMainPhone'];
    final l$$__typename = json['__typename'];
    return Fragment_PhoneContact(
      id: stringToUuid(l$id),
      label: (l$label as String?),
      phone: (l$phone as String),
      isMainPhone: (l$isMainPhone as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String? label;

  final String phone;

  final bool isMainPhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$label = label;
    _resultData['label'] = l$label;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$isMainPhone = isMainPhone;
    _resultData['isMainPhone'] = l$isMainPhone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$label = label;
    final l$phone = phone;
    final l$isMainPhone = isMainPhone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$label,
      l$phone,
      l$isMainPhone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PhoneContact || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PhoneContact on Fragment_PhoneContact {
  CopyWith_Fragment_PhoneContact<Fragment_PhoneContact> get copyWith =>
      CopyWith_Fragment_PhoneContact(this, (i) => i);
}

abstract class CopyWith_Fragment_PhoneContact<TRes> {
  factory CopyWith_Fragment_PhoneContact(
    Fragment_PhoneContact instance,
    TRes Function(Fragment_PhoneContact) then,
  ) = _CopyWithImpl_Fragment_PhoneContact;

  factory CopyWith_Fragment_PhoneContact.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PhoneContact;

  TRes call({
    UuidValue? id,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_PhoneContact<TRes>
    implements CopyWith_Fragment_PhoneContact<TRes> {
  _CopyWithImpl_Fragment_PhoneContact(this._instance, this._then);

  final Fragment_PhoneContact _instance;

  final TRes Function(Fragment_PhoneContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
    Object? isMainPhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PhoneContact(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      label: label == _undefined ? _instance.label : (label as String?),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone as String),
      isMainPhone: isMainPhone == _undefined || isMainPhone == null
          ? _instance.isMainPhone
          : (isMainPhone as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PhoneContact<TRes>
    implements CopyWith_Fragment_PhoneContact<TRes> {
  _CopyWithStubImpl_Fragment_PhoneContact(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPhoneContact = FragmentDefinitionNode(
  name: NameNode(value: 'PhoneContact'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Contacts'), isNonNull: false),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentPhoneContact = DocumentNode(
  definitions: [fragmentDefinitionPhoneContact],
);

class Fragment_FamilyPhoneContact {
  Fragment_FamilyPhoneContact({
    this.id,
    this.personId,
    this.label,
    this.phone,
    this.isMainPhone,
    this.personType,
    this.$__typename = 'ResolvedContacts',
  });

  factory Fragment_FamilyPhoneContact.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$personId = json['personId'];
    final l$label = json['label'];
    final l$phone = json['phone'];
    final l$isMainPhone = json['isMainPhone'];
    final l$personType = json['personType'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyPhoneContact(
      id: l$id == null ? null : stringToUuid(l$id),
      personId: l$personId == null ? null : stringToUuid(l$personId),
      label: (l$label as String?),
      phone: (l$phone as String?),
      isMainPhone: (l$isMainPhone as bool?),
      personType: l$personType == null
          ? null
          : Fragment_FamilyPhoneContact_personType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? id;

  final UuidValue? personId;

  final String? label;

  final String? phone;

  final bool? isMainPhone;

  final Fragment_FamilyPhoneContact_personType? personType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id == null ? null : uuidToString(l$id);
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
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
    if (other is! Fragment_FamilyPhoneContact ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_FamilyPhoneContact
    on Fragment_FamilyPhoneContact {
  CopyWith_Fragment_FamilyPhoneContact<Fragment_FamilyPhoneContact>
  get copyWith => CopyWith_Fragment_FamilyPhoneContact(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyPhoneContact<TRes> {
  factory CopyWith_Fragment_FamilyPhoneContact(
    Fragment_FamilyPhoneContact instance,
    TRes Function(Fragment_FamilyPhoneContact) then,
  ) = _CopyWithImpl_Fragment_FamilyPhoneContact;

  factory CopyWith_Fragment_FamilyPhoneContact.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyPhoneContact;

  TRes call({
    UuidValue? id,
    UuidValue? personId,
    String? label,
    String? phone,
    bool? isMainPhone,
    Fragment_FamilyPhoneContact_personType? personType,
    String? $__typename,
  });
  CopyWith_Fragment_FamilyPhoneContact_personType<TRes> get personType;
}

class _CopyWithImpl_Fragment_FamilyPhoneContact<TRes>
    implements CopyWith_Fragment_FamilyPhoneContact<TRes> {
  _CopyWithImpl_Fragment_FamilyPhoneContact(this._instance, this._then);

  final Fragment_FamilyPhoneContact _instance;

  final TRes Function(Fragment_FamilyPhoneContact) _then;

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
    Fragment_FamilyPhoneContact(
      id: id == _undefined ? _instance.id : (id as UuidValue?),
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      label: label == _undefined ? _instance.label : (label as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      isMainPhone: isMainPhone == _undefined
          ? _instance.isMainPhone
          : (isMainPhone as bool?),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_FamilyPhoneContact_personType?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_FamilyPhoneContact_personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_FamilyPhoneContact_personType.stub(_then(_instance))
        : CopyWith_Fragment_FamilyPhoneContact_personType(
            local$personType,
            (e) => call(personType: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_FamilyPhoneContact<TRes>
    implements CopyWith_Fragment_FamilyPhoneContact<TRes> {
  _CopyWithStubImpl_Fragment_FamilyPhoneContact(this._res);

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? personId,
    String? label,
    String? phone,
    bool? isMainPhone,
    Fragment_FamilyPhoneContact_personType? personType,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_FamilyPhoneContact_personType<TRes> get personType =>
      CopyWith_Fragment_FamilyPhoneContact_personType.stub(_res);
}

const fragmentDefinitionFamilyPhoneContact = FragmentDefinitionNode(
  name: NameNode(value: 'FamilyPhoneContact'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'ResolvedContacts'),
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
              name: NameNode(value: 'order'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isFamilyAdmin'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isHidden'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentFamilyPhoneContact = DocumentNode(
  definitions: [fragmentDefinitionFamilyPhoneContact],
);

class Fragment_FamilyPhoneContact_personType {
  Fragment_FamilyPhoneContact_personType({
    required this.id,
    required this.name,
    required this.order,
    required this.isFamilyAdmin,
    required this.isHidden,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment_FamilyPhoneContact_personType.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$isFamilyAdmin = json['isFamilyAdmin'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    return Fragment_FamilyPhoneContact_personType(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      isFamilyAdmin: (l$isFamilyAdmin as bool),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final bool isFamilyAdmin;

  final bool isHidden;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isFamilyAdmin = isFamilyAdmin;
    _resultData['isFamilyAdmin'] = l$isFamilyAdmin;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$isFamilyAdmin,
      l$isHidden,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FamilyPhoneContact_personType ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
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

extension UtilityExtension_Fragment_FamilyPhoneContact_personType
    on Fragment_FamilyPhoneContact_personType {
  CopyWith_Fragment_FamilyPhoneContact_personType<
    Fragment_FamilyPhoneContact_personType
  >
  get copyWith =>
      CopyWith_Fragment_FamilyPhoneContact_personType(this, (i) => i);
}

abstract class CopyWith_Fragment_FamilyPhoneContact_personType<TRes> {
  factory CopyWith_Fragment_FamilyPhoneContact_personType(
    Fragment_FamilyPhoneContact_personType instance,
    TRes Function(Fragment_FamilyPhoneContact_personType) then,
  ) = _CopyWithImpl_Fragment_FamilyPhoneContact_personType;

  factory CopyWith_Fragment_FamilyPhoneContact_personType.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FamilyPhoneContact_personType;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FamilyPhoneContact_personType<TRes>
    implements CopyWith_Fragment_FamilyPhoneContact_personType<TRes> {
  _CopyWithImpl_Fragment_FamilyPhoneContact_personType(
    this._instance,
    this._then,
  );

  final Fragment_FamilyPhoneContact_personType _instance;

  final TRes Function(Fragment_FamilyPhoneContact_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FamilyPhoneContact_personType(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      isFamilyAdmin: isFamilyAdmin == _undefined || isFamilyAdmin == null
          ? _instance.isFamilyAdmin
          : (isFamilyAdmin as bool),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FamilyPhoneContact_personType<TRes>
    implements CopyWith_Fragment_FamilyPhoneContact_personType<TRes> {
  _CopyWithStubImpl_Fragment_FamilyPhoneContact_personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  }) => _res;
}
