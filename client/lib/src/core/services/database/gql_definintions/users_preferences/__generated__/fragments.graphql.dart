import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_UserPreferences {
  Fragment_UserPreferences({
    required this.id,
    required this.uid,
    required this.orderByPreferences,
    required this.secondLinePreferences,
    this.darkTheme,
    required this.greatFeastTheme,
    this.lastHomeMode,
    required this.updatedAt,
    this.$__typename = 'UserPreferences',
  });

  factory Fragment_UserPreferences.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$orderByPreferences = json['orderByPreferences'];
    final l$secondLinePreferences = json['secondLinePreferences'];
    final l$darkTheme = json['darkTheme'];
    final l$greatFeastTheme = json['greatFeastTheme'];
    final l$lastHomeMode = json['lastHomeMode'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Fragment_UserPreferences(
      id: (l$id as String),
      uid: (l$uid as String),
      orderByPreferences: (l$orderByPreferences as Json),
      secondLinePreferences: (l$secondLinePreferences as Json),
      darkTheme: (l$darkTheme as bool?),
      greatFeastTheme: (l$greatFeastTheme as bool),
      lastHomeMode: (l$lastHomeMode as String?),
      updatedAt: tstzFromString(l$updatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String uid;

  final Json orderByPreferences;

  final Json secondLinePreferences;

  final bool? darkTheme;

  final bool greatFeastTheme;

  final String? lastHomeMode;

  final DateTime updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$orderByPreferences = orderByPreferences;
    _resultData['orderByPreferences'] = l$orderByPreferences;
    final l$secondLinePreferences = secondLinePreferences;
    _resultData['secondLinePreferences'] = l$secondLinePreferences;
    final l$darkTheme = darkTheme;
    _resultData['darkTheme'] = l$darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    _resultData['greatFeastTheme'] = l$greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    _resultData['lastHomeMode'] = l$lastHomeMode;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = tstzToString(l$updatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$orderByPreferences = orderByPreferences;
    final l$secondLinePreferences = secondLinePreferences;
    final l$darkTheme = darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$uid,
      l$orderByPreferences,
      l$secondLinePreferences,
      l$darkTheme,
      l$greatFeastTheme,
      l$lastHomeMode,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserPreferences ||
        runtimeType != other.runtimeType) {
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
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    final l$secondLinePreferences = secondLinePreferences;
    final lOther$secondLinePreferences = other.secondLinePreferences;
    if (l$secondLinePreferences != lOther$secondLinePreferences) {
      return false;
    }
    final l$darkTheme = darkTheme;
    final lOther$darkTheme = other.darkTheme;
    if (l$darkTheme != lOther$darkTheme) {
      return false;
    }
    final l$greatFeastTheme = greatFeastTheme;
    final lOther$greatFeastTheme = other.greatFeastTheme;
    if (l$greatFeastTheme != lOther$greatFeastTheme) {
      return false;
    }
    final l$lastHomeMode = lastHomeMode;
    final lOther$lastHomeMode = other.lastHomeMode;
    if (l$lastHomeMode != lOther$lastHomeMode) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension_Fragment_UserPreferences
    on Fragment_UserPreferences {
  CopyWith_Fragment_UserPreferences<Fragment_UserPreferences> get copyWith =>
      CopyWith_Fragment_UserPreferences(this, (i) => i);
}

abstract class CopyWith_Fragment_UserPreferences<TRes> {
  factory CopyWith_Fragment_UserPreferences(
    Fragment_UserPreferences instance,
    TRes Function(Fragment_UserPreferences) then,
  ) = _CopyWithImpl_Fragment_UserPreferences;

  factory CopyWith_Fragment_UserPreferences.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserPreferences;

  TRes call({
    String? id,
    String? uid,
    Json? orderByPreferences,
    Json? secondLinePreferences,
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserPreferences<TRes>
    implements CopyWith_Fragment_UserPreferences<TRes> {
  _CopyWithImpl_Fragment_UserPreferences(this._instance, this._then);

  final Fragment_UserPreferences _instance;

  final TRes Function(Fragment_UserPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? orderByPreferences = _undefined,
    Object? secondLinePreferences = _undefined,
    Object? darkTheme = _undefined,
    Object? greatFeastTheme = _undefined,
    Object? lastHomeMode = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserPreferences(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      orderByPreferences:
          orderByPreferences == _undefined || orderByPreferences == null
          ? _instance.orderByPreferences
          : (orderByPreferences as Json),
      secondLinePreferences:
          secondLinePreferences == _undefined || secondLinePreferences == null
          ? _instance.secondLinePreferences
          : (secondLinePreferences as Json),
      darkTheme: darkTheme == _undefined
          ? _instance.darkTheme
          : (darkTheme as bool?),
      greatFeastTheme: greatFeastTheme == _undefined || greatFeastTheme == null
          ? _instance.greatFeastTheme
          : (greatFeastTheme as bool),
      lastHomeMode: lastHomeMode == _undefined
          ? _instance.lastHomeMode
          : (lastHomeMode as String?),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserPreferences<TRes>
    implements CopyWith_Fragment_UserPreferences<TRes> {
  _CopyWithStubImpl_Fragment_UserPreferences(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    Json? orderByPreferences,
    Json? secondLinePreferences,
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUserPreferences = FragmentDefinitionNode(
  name: NameNode(value: 'UserPreferences'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'UserPreferences'),
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
        name: NameNode(value: 'uid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'orderByPreferences'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'secondLinePreferences'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'darkTheme'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'greatFeastTheme'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'lastHomeMode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
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
const documentNodeFragmentUserPreferences = DocumentNode(
  definitions: [fragmentDefinitionUserPreferences],
);
