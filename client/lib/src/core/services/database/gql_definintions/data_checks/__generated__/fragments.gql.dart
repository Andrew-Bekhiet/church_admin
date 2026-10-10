import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_DataCheck {
  Fragment_DataCheck({
    this.familyId,
    this.isComplete,
    this.familyCheck,
    this.addressCheck,
    this.userOverride,
    this.details,
    this.$__typename = 'DataChecks',
  });

  factory Fragment_DataCheck.fromJson(Map<String, dynamic> json) {
    final l$familyId = json['familyId'];
    final l$isComplete = json['isComplete'];
    final l$familyCheck = json['familyCheck'];
    final l$addressCheck = json['addressCheck'];
    final l$userOverride = json['userOverride'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Fragment_DataCheck(
      familyId: l$familyId == null ? null : stringToUuid(l$familyId),
      isComplete: (l$isComplete as bool?),
      familyCheck: (l$familyCheck as bool?),
      addressCheck: (l$addressCheck as bool?),
      userOverride: (l$userOverride as bool?),
      details: (l$details as Json?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? familyId;

  final bool? isComplete;

  final bool? familyCheck;

  final bool? addressCheck;

  final bool? userOverride;

  final Json? details;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familyId = familyId;
    _resultData['familyId'] = l$familyId == null
        ? null
        : uuidToString(l$familyId);
    final l$isComplete = isComplete;
    _resultData['isComplete'] = l$isComplete;
    final l$familyCheck = familyCheck;
    _resultData['familyCheck'] = l$familyCheck;
    final l$addressCheck = addressCheck;
    _resultData['addressCheck'] = l$addressCheck;
    final l$userOverride = userOverride;
    _resultData['userOverride'] = l$userOverride;
    final l$details = details;
    _resultData['details'] = l$details;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$familyCheck = familyCheck;
    final l$addressCheck = addressCheck;
    final l$userOverride = userOverride;
    final l$details = details;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$familyId,
      l$isComplete,
      l$familyCheck,
      l$addressCheck,
      l$userOverride,
      l$details,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_DataCheck || runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$familyCheck = familyCheck;
    final lOther$familyCheck = other.familyCheck;
    if (l$familyCheck != lOther$familyCheck) {
      return false;
    }
    final l$addressCheck = addressCheck;
    final lOther$addressCheck = other.addressCheck;
    if (l$addressCheck != lOther$addressCheck) {
      return false;
    }
    final l$userOverride = userOverride;
    final lOther$userOverride = other.userOverride;
    if (l$userOverride != lOther$userOverride) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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

extension UtilityExtension_Fragment_DataCheck on Fragment_DataCheck {
  CopyWith_Fragment_DataCheck<Fragment_DataCheck> get copyWith =>
      CopyWith_Fragment_DataCheck(this, (i) => i);
}

abstract class CopyWith_Fragment_DataCheck<TRes> {
  factory CopyWith_Fragment_DataCheck(
    Fragment_DataCheck instance,
    TRes Function(Fragment_DataCheck) then,
  ) = _CopyWithImpl_Fragment_DataCheck;

  factory CopyWith_Fragment_DataCheck.stub(TRes res) =
      _CopyWithStubImpl_Fragment_DataCheck;

  TRes call({
    UuidValue? familyId,
    bool? isComplete,
    bool? familyCheck,
    bool? addressCheck,
    bool? userOverride,
    Json? details,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_DataCheck<TRes>
    implements CopyWith_Fragment_DataCheck<TRes> {
  _CopyWithImpl_Fragment_DataCheck(this._instance, this._then);

  final Fragment_DataCheck _instance;

  final TRes Function(Fragment_DataCheck) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? familyCheck = _undefined,
    Object? addressCheck = _undefined,
    Object? userOverride = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_DataCheck(
      familyId: familyId == _undefined
          ? _instance.familyId
          : (familyId as UuidValue?),
      isComplete: isComplete == _undefined
          ? _instance.isComplete
          : (isComplete as bool?),
      familyCheck: familyCheck == _undefined
          ? _instance.familyCheck
          : (familyCheck as bool?),
      addressCheck: addressCheck == _undefined
          ? _instance.addressCheck
          : (addressCheck as bool?),
      userOverride: userOverride == _undefined
          ? _instance.userOverride
          : (userOverride as bool?),
      details: details == _undefined ? _instance.details : (details as Json?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_DataCheck<TRes>
    implements CopyWith_Fragment_DataCheck<TRes> {
  _CopyWithStubImpl_Fragment_DataCheck(this._res);

  TRes _res;

  call({
    UuidValue? familyId,
    bool? isComplete,
    bool? familyCheck,
    bool? addressCheck,
    bool? userOverride,
    Json? details,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionDataCheck = FragmentDefinitionNode(
  name: NameNode(value: 'DataCheck'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'DataChecks'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'familyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isComplete'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'familyCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'addressCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userOverride'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'details'),
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
const documentNodeFragmentDataCheck = DocumentNode(
  definitions: [fragmentDefinitionDataCheck],
);
