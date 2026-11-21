import '../../users/__generated__/fragments.gql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_PersonFingerprintId {
  Fragment_PersonFingerprintId({
    required this.id,
    required this.employeeCode,
    required this.addedAt,
    required this.addedByUser,
    this.$__typename = 'PersonsFingerprintIds',
  });

  factory Fragment_PersonFingerprintId.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$employeeCode = json['employeeCode'];
    final l$addedAt = json['addedAt'];
    final l$addedByUser = json['addedByUser'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonFingerprintId(
      id: stringToUuid(l$id),
      employeeCode: (l$employeeCode as String),
      addedAt: tstzFromString(l$addedAt),
      addedByUser: Fragment_User.fromJson(
        (l$addedByUser as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String employeeCode;

  final DateTime addedAt;

  final Fragment_User addedByUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$employeeCode = employeeCode;
    _resultData['employeeCode'] = l$employeeCode;
    final l$addedAt = addedAt;
    _resultData['addedAt'] = tstzToString(l$addedAt);
    final l$addedByUser = addedByUser;
    _resultData['addedByUser'] = l$addedByUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$employeeCode = employeeCode;
    final l$addedAt = addedAt;
    final l$addedByUser = addedByUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$employeeCode,
      l$addedAt,
      l$addedByUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonFingerprintId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$employeeCode = employeeCode;
    final lOther$employeeCode = other.employeeCode;
    if (l$employeeCode != lOther$employeeCode) {
      return false;
    }
    final l$addedAt = addedAt;
    final lOther$addedAt = other.addedAt;
    if (l$addedAt != lOther$addedAt) {
      return false;
    }
    final l$addedByUser = addedByUser;
    final lOther$addedByUser = other.addedByUser;
    if (l$addedByUser != lOther$addedByUser) {
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

extension UtilityExtension_Fragment_PersonFingerprintId
    on Fragment_PersonFingerprintId {
  CopyWith_Fragment_PersonFingerprintId<Fragment_PersonFingerprintId>
  get copyWith => CopyWith_Fragment_PersonFingerprintId(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonFingerprintId<TRes> {
  factory CopyWith_Fragment_PersonFingerprintId(
    Fragment_PersonFingerprintId instance,
    TRes Function(Fragment_PersonFingerprintId) then,
  ) = _CopyWithImpl_Fragment_PersonFingerprintId;

  factory CopyWith_Fragment_PersonFingerprintId.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonFingerprintId;

  TRes call({
    UuidValue? id,
    String? employeeCode,
    DateTime? addedAt,
    Fragment_User? addedByUser,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get addedByUser;
}

class _CopyWithImpl_Fragment_PersonFingerprintId<TRes>
    implements CopyWith_Fragment_PersonFingerprintId<TRes> {
  _CopyWithImpl_Fragment_PersonFingerprintId(this._instance, this._then);

  final Fragment_PersonFingerprintId _instance;

  final TRes Function(Fragment_PersonFingerprintId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? employeeCode = _undefined,
    Object? addedAt = _undefined,
    Object? addedByUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonFingerprintId(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      employeeCode: employeeCode == _undefined || employeeCode == null
          ? _instance.employeeCode
          : (employeeCode as String),
      addedAt: addedAt == _undefined || addedAt == null
          ? _instance.addedAt
          : (addedAt as DateTime),
      addedByUser: addedByUser == _undefined || addedByUser == null
          ? _instance.addedByUser
          : (addedByUser as Fragment_User),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get addedByUser {
    final local$addedByUser = _instance.addedByUser;
    return CopyWith_Fragment_User(
      local$addedByUser,
      (e) => call(addedByUser: e),
    );
  }
}

class _CopyWithStubImpl_Fragment_PersonFingerprintId<TRes>
    implements CopyWith_Fragment_PersonFingerprintId<TRes> {
  _CopyWithStubImpl_Fragment_PersonFingerprintId(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? employeeCode,
    DateTime? addedAt,
    Fragment_User? addedByUser,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get addedByUser =>
      CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionPersonFingerprintId = FragmentDefinitionNode(
  name: NameNode(value: 'PersonFingerprintId'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PersonsFingerprintIds'),
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
        name: NameNode(value: 'employeeCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addedByUser'),
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
const documentNodeFragmentPersonFingerprintId = DocumentNode(
  definitions: [
    fragmentDefinitionPersonFingerprintId,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);
