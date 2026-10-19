import '../../metadata/person_types/__generated__/fragments.graphql.dart';

import 'package:gql/ast.dart';

class Fragment_Contact {
  Fragment_Contact({
    required this.id,
    this.label,
    required this.phone,
    required this.isMainPhone,
    this.$__typename = 'Contact',
  });

  factory Fragment_Contact.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$label = json['label'];
    final l$phone = json['phone'];
    final l$isMainPhone = json['isMainPhone'];
    final l$$__typename = json['__typename'];
    return Fragment_Contact(
      id: (l$id as String),
      label: (l$label as String?),
      phone: (l$phone as String),
      isMainPhone: (l$isMainPhone as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? label;

  final String phone;

  final bool isMainPhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    if (other is! Fragment_Contact || runtimeType != other.runtimeType) {
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
    String? id,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_Contact<TRes>
    implements CopyWith_Fragment_Contact<TRes> {
  _CopyWithImpl_Fragment_Contact(this._instance, this._then);

  final Fragment_Contact _instance;

  final TRes Function(Fragment_Contact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
    Object? isMainPhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Contact(
      id: id == _undefined || id == null ? _instance.id : (id as String),
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

class _CopyWithStubImpl_Fragment_Contact<TRes>
    implements CopyWith_Fragment_Contact<TRes> {
  _CopyWithStubImpl_Fragment_Contact(this._res);

  TRes _res;

  call({
    String? id,
    String? label,
    String? phone,
    bool? isMainPhone,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionContact = FragmentDefinitionNode(
  name: NameNode(value: 'Contact'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Contact'), isNonNull: false),
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
const documentNodeFragmentContact = DocumentNode(
  definitions: [fragmentDefinitionContact],
);

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
