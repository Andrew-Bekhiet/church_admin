import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_PhotoLink {
  Fragment_PhotoLink({
    required this.url,
    required this.expiresAt,
    this.$__typename = 'PhotoLink',
  });

  factory Fragment_PhotoLink.fromJson(Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$expiresAt = json['expiresAt'];
    final l$$__typename = json['__typename'];
    return Fragment_PhotoLink(
      url: (l$url as String),
      expiresAt: tstzFromString(l$expiresAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final DateTime expiresAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = tstzToString(l$expiresAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$expiresAt = expiresAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$expiresAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PhotoLink || runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
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

extension UtilityExtension_Fragment_PhotoLink on Fragment_PhotoLink {
  CopyWith_Fragment_PhotoLink<Fragment_PhotoLink> get copyWith =>
      CopyWith_Fragment_PhotoLink(this, (i) => i);
}

abstract class CopyWith_Fragment_PhotoLink<TRes> {
  factory CopyWith_Fragment_PhotoLink(
    Fragment_PhotoLink instance,
    TRes Function(Fragment_PhotoLink) then,
  ) = _CopyWithImpl_Fragment_PhotoLink;

  factory CopyWith_Fragment_PhotoLink.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PhotoLink;

  TRes call({String? url, DateTime? expiresAt, String? $__typename});
}

class _CopyWithImpl_Fragment_PhotoLink<TRes>
    implements CopyWith_Fragment_PhotoLink<TRes> {
  _CopyWithImpl_Fragment_PhotoLink(this._instance, this._then);

  final Fragment_PhotoLink _instance;

  final TRes Function(Fragment_PhotoLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? expiresAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PhotoLink(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      expiresAt: expiresAt == _undefined || expiresAt == null
          ? _instance.expiresAt
          : (expiresAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PhotoLink<TRes>
    implements CopyWith_Fragment_PhotoLink<TRes> {
  _CopyWithStubImpl_Fragment_PhotoLink(this._res);

  TRes _res;

  call({String? url, DateTime? expiresAt, String? $__typename}) => _res;
}

const fragmentDefinitionPhotoLink = FragmentDefinitionNode(
  name: NameNode(value: 'PhotoLink'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'PhotoLink'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'url'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'expiresAt'),
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
const documentNodeFragmentPhotoLink = DocumentNode(
  definitions: [fragmentDefinitionPhotoLink],
);
