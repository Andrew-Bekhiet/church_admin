import 'package:gql/ast.dart';

class Fragment_DataCheck {
  Fragment_DataCheck({
    required this.id,
    required this.familyId,
    this.isComplete,
    this.completenessPercent,
    this.familyCheck,
    this.addressCheck,
    this.userOverride,
    this.details,
    this.$__typename = 'DataCheck',
  });

  factory Fragment_DataCheck.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$familyId = json['familyId'];
    final l$isComplete = json['isComplete'];
    final l$completenessPercent = json['completenessPercent'];
    final l$familyCheck = json['familyCheck'];
    final l$addressCheck = json['addressCheck'];
    final l$userOverride = json['userOverride'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Fragment_DataCheck(
      id: (l$id as String),
      familyId: (l$familyId as String),
      isComplete: (l$isComplete as bool?),
      completenessPercent: (l$completenessPercent as int?),
      familyCheck: (l$familyCheck as bool?),
      addressCheck: (l$addressCheck as bool?),
      userOverride: (l$userOverride as bool?),
      details: (l$details as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String familyId;

  final bool? isComplete;

  final int? completenessPercent;

  final bool? familyCheck;

  final bool? addressCheck;

  final bool? userOverride;

  final List<String>? details;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$familyId = familyId;
    _resultData['familyId'] = l$familyId;
    final l$isComplete = isComplete;
    _resultData['isComplete'] = l$isComplete;
    final l$completenessPercent = completenessPercent;
    _resultData['completenessPercent'] = l$completenessPercent;
    final l$familyCheck = familyCheck;
    _resultData['familyCheck'] = l$familyCheck;
    final l$addressCheck = addressCheck;
    _resultData['addressCheck'] = l$addressCheck;
    final l$userOverride = userOverride;
    _resultData['userOverride'] = l$userOverride;
    final l$details = details;
    _resultData['details'] = l$details?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$completenessPercent = completenessPercent;
    final l$familyCheck = familyCheck;
    final l$addressCheck = addressCheck;
    final l$userOverride = userOverride;
    final l$details = details;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$familyId,
      l$isComplete,
      l$completenessPercent,
      l$familyCheck,
      l$addressCheck,
      l$userOverride,
      l$details == null ? null : Object.hashAll(l$details.map((v) => v)),
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$completenessPercent = completenessPercent;
    final lOther$completenessPercent = other.completenessPercent;
    if (l$completenessPercent != lOther$completenessPercent) {
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
    if (l$details != null && lOther$details != null) {
      if (l$details.length != lOther$details.length) {
        return false;
      }
      for (int i = 0; i < l$details.length; i++) {
        final l$details$entry = l$details[i];
        final lOther$details$entry = lOther$details[i];
        if (l$details$entry != lOther$details$entry) {
          return false;
        }
      }
    } else if (l$details != lOther$details) {
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
    String? id,
    String? familyId,
    bool? isComplete,
    int? completenessPercent,
    bool? familyCheck,
    bool? addressCheck,
    bool? userOverride,
    List<String>? details,
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
    Object? id = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? completenessPercent = _undefined,
    Object? familyCheck = _undefined,
    Object? addressCheck = _undefined,
    Object? userOverride = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_DataCheck(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      familyId: familyId == _undefined || familyId == null
          ? _instance.familyId
          : (familyId as String),
      isComplete: isComplete == _undefined
          ? _instance.isComplete
          : (isComplete as bool?),
      completenessPercent: completenessPercent == _undefined
          ? _instance.completenessPercent
          : (completenessPercent as int?),
      familyCheck: familyCheck == _undefined
          ? _instance.familyCheck
          : (familyCheck as bool?),
      addressCheck: addressCheck == _undefined
          ? _instance.addressCheck
          : (addressCheck as bool?),
      userOverride: userOverride == _undefined
          ? _instance.userOverride
          : (userOverride as bool?),
      details: details == _undefined
          ? _instance.details
          : (details as List<String>?),
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
    String? id,
    String? familyId,
    bool? isComplete,
    int? completenessPercent,
    bool? familyCheck,
    bool? addressCheck,
    bool? userOverride,
    List<String>? details,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionDataCheck = FragmentDefinitionNode(
  name: NameNode(value: 'DataCheck'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'DataCheck'), isNonNull: false),
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
        name: NameNode(value: 'completenessPercent'),
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
