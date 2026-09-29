import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Contact {
  Fragment_Contact({
    required this.id,
    this.personId,
    this.familyId,
    this.personTypeId,
    this.personType,
    this.label,
    required this.phone,
    required this.isMainPhone,
    this.$__typename = 'Contacts',
  });

  factory Fragment_Contact.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$personId = json['personId'];
    final l$familyId = json['familyId'];
    final l$personTypeId = json['personTypeId'];
    final l$personType = json['personType'];
    final l$label = json['label'];
    final l$phone = json['phone'];
    final l$isMainPhone = json['isMainPhone'];
    final l$$__typename = json['__typename'];
    return Fragment_Contact(
      id: stringToUuid(l$id),
      personId: l$personId == null ? null : stringToUuid(l$personId),
      familyId: l$familyId == null ? null : stringToUuid(l$familyId),
      personTypeId: l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId),
      personType: l$personType == null
          ? null
          : Fragment_Contact_personType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      label: (l$label as String?),
      phone: (l$phone as String),
      isMainPhone: (l$isMainPhone as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue? personId;

  final UuidValue? familyId;

  final UuidValue? personTypeId;

  final Fragment_Contact_personType? personType;

  final String? label;

  final String phone;

  final bool isMainPhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
    final l$familyId = familyId;
    _resultData['familyId'] = l$familyId == null
        ? null
        : uuidToString(l$familyId);
    final l$personTypeId = personTypeId;
    _resultData['personTypeId'] = l$personTypeId == null
        ? null
        : uuidToString(l$personTypeId);
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
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
    final l$personId = personId;
    final l$familyId = familyId;
    final l$personTypeId = personTypeId;
    final l$personType = personType;
    final l$label = label;
    final l$phone = phone;
    final l$isMainPhone = isMainPhone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$personId,
      l$familyId,
      l$personTypeId,
      l$personType,
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
    if (other is! Fragment_Contact || runtimeType != other.runtimeType) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
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

extension UtilityExtension_Fragment_Contact on Fragment_Contact {
  CopyWith_Fragment_Contact<Fragment_Contact> get copyWith =>
      CopyWith_Fragment_Contact(this, (i) => i);
}

abstract class CopyWith_Fragment_Contact<TRes> {
  factory CopyWith_Fragment_Contact(
    Fragment_Contact instance,
    TRes Function(Fragment_Contact) then,
  ) = _CopyWithImpl_Fragment_Contact;

  factory CopyWith_Fragment_Contact.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Contact;

  TRes call({
    UuidValue? id,
    UuidValue? personId,
    UuidValue? familyId,
    UuidValue? personTypeId,
    Fragment_Contact_personType? personType,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  });
  CopyWith_Fragment_Contact_personType<TRes> get personType;
}

class _CopyWithImpl_Fragment_Contact<TRes>
    implements CopyWith_Fragment_Contact<TRes> {
  _CopyWithImpl_Fragment_Contact(this._instance, this._then);

  final Fragment_Contact _instance;

  final TRes Function(Fragment_Contact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? familyId = _undefined,
    Object? personTypeId = _undefined,
    Object? personType = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
    Object? isMainPhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Contact(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      familyId: familyId == _undefined
          ? _instance.familyId
          : (familyId as UuidValue?),
      personTypeId: personTypeId == _undefined
          ? _instance.personTypeId
          : (personTypeId as UuidValue?),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_Contact_personType?),
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

  CopyWith_Fragment_Contact_personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_Contact_personType.stub(_then(_instance))
        : CopyWith_Fragment_Contact_personType(
            local$personType,
            (e) => call(personType: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_Contact<TRes>
    implements CopyWith_Fragment_Contact<TRes> {
  _CopyWithStubImpl_Fragment_Contact(this._res);

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? personId,
    UuidValue? familyId,
    UuidValue? personTypeId,
    Fragment_Contact_personType? personType,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Contact_personType<TRes> get personType =>
      CopyWith_Fragment_Contact_personType.stub(_res);
}

const fragmentDefinitionContact = FragmentDefinitionNode(
  name: NameNode(value: 'Contact'),
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
        name: NameNode(value: 'personId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'familyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'personTypeId'),
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
const documentNodeFragmentContact = DocumentNode(
  definitions: [fragmentDefinitionContact],
);

class Fragment_Contact_personType {
  Fragment_Contact_personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment_Contact_personType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_Contact_personType(
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
    if (other is! Fragment_Contact_personType ||
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

extension UtilityExtension_Fragment_Contact_personType
    on Fragment_Contact_personType {
  CopyWith_Fragment_Contact_personType<Fragment_Contact_personType>
  get copyWith => CopyWith_Fragment_Contact_personType(this, (i) => i);
}

abstract class CopyWith_Fragment_Contact_personType<TRes> {
  factory CopyWith_Fragment_Contact_personType(
    Fragment_Contact_personType instance,
    TRes Function(Fragment_Contact_personType) then,
  ) = _CopyWithImpl_Fragment_Contact_personType;

  factory CopyWith_Fragment_Contact_personType.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Contact_personType;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_Contact_personType<TRes>
    implements CopyWith_Fragment_Contact_personType<TRes> {
  _CopyWithImpl_Fragment_Contact_personType(this._instance, this._then);

  final Fragment_Contact_personType _instance;

  final TRes Function(Fragment_Contact_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Contact_personType(
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

class _CopyWithStubImpl_Fragment_Contact_personType<TRes>
    implements CopyWith_Fragment_Contact_personType<TRes> {
  _CopyWithStubImpl_Fragment_Contact_personType(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_ResolvedContact {
  Fragment_ResolvedContact({
    this.id,
    this.personId,
    this.familyId,
    this.personTypeId,
    this.personType,
    this.label,
    this.phone,
    this.isMainPhone,
    this.$__typename = 'ResolvedContacts',
  });

  factory Fragment_ResolvedContact.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$personId = json['personId'];
    final l$familyId = json['familyId'];
    final l$personTypeId = json['personTypeId'];
    final l$personType = json['personType'];
    final l$label = json['label'];
    final l$phone = json['phone'];
    final l$isMainPhone = json['isMainPhone'];
    final l$$__typename = json['__typename'];
    return Fragment_ResolvedContact(
      id: l$id == null ? null : stringToUuid(l$id),
      personId: l$personId == null ? null : stringToUuid(l$personId),
      familyId: l$familyId == null ? null : stringToUuid(l$familyId),
      personTypeId: l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId),
      personType: l$personType == null
          ? null
          : Fragment_ResolvedContact_personType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      label: (l$label as String?),
      phone: (l$phone as String?),
      isMainPhone: (l$isMainPhone as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? id;

  final UuidValue? personId;

  final UuidValue? familyId;

  final UuidValue? personTypeId;

  final Fragment_ResolvedContact_personType? personType;

  final String? label;

  final String? phone;

  final bool? isMainPhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id == null ? null : uuidToString(l$id);
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
    final l$familyId = familyId;
    _resultData['familyId'] = l$familyId == null
        ? null
        : uuidToString(l$familyId);
    final l$personTypeId = personTypeId;
    _resultData['personTypeId'] = l$personTypeId == null
        ? null
        : uuidToString(l$personTypeId);
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
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
    final l$personId = personId;
    final l$familyId = familyId;
    final l$personTypeId = personTypeId;
    final l$personType = personType;
    final l$label = label;
    final l$phone = phone;
    final l$isMainPhone = isMainPhone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$personId,
      l$familyId,
      l$personTypeId,
      l$personType,
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
    if (other is! Fragment_ResolvedContact ||
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
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

extension UtilityExtension_Fragment_ResolvedContact
    on Fragment_ResolvedContact {
  CopyWith_Fragment_ResolvedContact<Fragment_ResolvedContact> get copyWith =>
      CopyWith_Fragment_ResolvedContact(this, (i) => i);
}

abstract class CopyWith_Fragment_ResolvedContact<TRes> {
  factory CopyWith_Fragment_ResolvedContact(
    Fragment_ResolvedContact instance,
    TRes Function(Fragment_ResolvedContact) then,
  ) = _CopyWithImpl_Fragment_ResolvedContact;

  factory CopyWith_Fragment_ResolvedContact.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ResolvedContact;

  TRes call({
    UuidValue? id,
    UuidValue? personId,
    UuidValue? familyId,
    UuidValue? personTypeId,
    Fragment_ResolvedContact_personType? personType,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  });
  CopyWith_Fragment_ResolvedContact_personType<TRes> get personType;
}

class _CopyWithImpl_Fragment_ResolvedContact<TRes>
    implements CopyWith_Fragment_ResolvedContact<TRes> {
  _CopyWithImpl_Fragment_ResolvedContact(this._instance, this._then);

  final Fragment_ResolvedContact _instance;

  final TRes Function(Fragment_ResolvedContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? familyId = _undefined,
    Object? personTypeId = _undefined,
    Object? personType = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
    Object? isMainPhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ResolvedContact(
      id: id == _undefined ? _instance.id : (id as UuidValue?),
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      familyId: familyId == _undefined
          ? _instance.familyId
          : (familyId as UuidValue?),
      personTypeId: personTypeId == _undefined
          ? _instance.personTypeId
          : (personTypeId as UuidValue?),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_ResolvedContact_personType?),
      label: label == _undefined ? _instance.label : (label as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      isMainPhone: isMainPhone == _undefined
          ? _instance.isMainPhone
          : (isMainPhone as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_ResolvedContact_personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_ResolvedContact_personType.stub(_then(_instance))
        : CopyWith_Fragment_ResolvedContact_personType(
            local$personType,
            (e) => call(personType: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_ResolvedContact<TRes>
    implements CopyWith_Fragment_ResolvedContact<TRes> {
  _CopyWithStubImpl_Fragment_ResolvedContact(this._res);

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? personId,
    UuidValue? familyId,
    UuidValue? personTypeId,
    Fragment_ResolvedContact_personType? personType,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_ResolvedContact_personType<TRes> get personType =>
      CopyWith_Fragment_ResolvedContact_personType.stub(_res);
}

const fragmentDefinitionResolvedContact = FragmentDefinitionNode(
  name: NameNode(value: 'ResolvedContact'),
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
        name: NameNode(value: 'familyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'effectivePersonTypeId'),
        alias: NameNode(value: 'personTypeId'),
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
const documentNodeFragmentResolvedContact = DocumentNode(
  definitions: [fragmentDefinitionResolvedContact],
);

class Fragment_ResolvedContact_personType {
  Fragment_ResolvedContact_personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment_ResolvedContact_personType.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_ResolvedContact_personType(
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
    if (other is! Fragment_ResolvedContact_personType ||
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

extension UtilityExtension_Fragment_ResolvedContact_personType
    on Fragment_ResolvedContact_personType {
  CopyWith_Fragment_ResolvedContact_personType<
    Fragment_ResolvedContact_personType
  >
  get copyWith => CopyWith_Fragment_ResolvedContact_personType(this, (i) => i);
}

abstract class CopyWith_Fragment_ResolvedContact_personType<TRes> {
  factory CopyWith_Fragment_ResolvedContact_personType(
    Fragment_ResolvedContact_personType instance,
    TRes Function(Fragment_ResolvedContact_personType) then,
  ) = _CopyWithImpl_Fragment_ResolvedContact_personType;

  factory CopyWith_Fragment_ResolvedContact_personType.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ResolvedContact_personType;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_ResolvedContact_personType<TRes>
    implements CopyWith_Fragment_ResolvedContact_personType<TRes> {
  _CopyWithImpl_Fragment_ResolvedContact_personType(this._instance, this._then);

  final Fragment_ResolvedContact_personType _instance;

  final TRes Function(Fragment_ResolvedContact_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ResolvedContact_personType(
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

class _CopyWithStubImpl_Fragment_ResolvedContact_personType<TRes>
    implements CopyWith_Fragment_ResolvedContact_personType<TRes> {
  _CopyWithStubImpl_Fragment_ResolvedContact_personType(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
