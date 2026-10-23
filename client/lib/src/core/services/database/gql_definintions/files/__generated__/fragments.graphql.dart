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

class Fragment_PhotoUploadLink {
  Fragment_PhotoUploadLink({
    required this.url,
    required this.expiresAt,
    required this.headers,
    required this.confirmationToken,
    this.$__typename = 'PhotoUploadLink',
  });

  factory Fragment_PhotoUploadLink.fromJson(Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$expiresAt = json['expiresAt'];
    final l$headers = json['headers'];
    final l$confirmationToken = json['confirmationToken'];
    final l$$__typename = json['__typename'];
    return Fragment_PhotoUploadLink(
      url: (l$url as String),
      expiresAt: tstzFromString(l$expiresAt),
      headers: (l$headers as List<dynamic>)
          .map(
            (e) => Fragment_PhotoUploadLink_headers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      confirmationToken: (l$confirmationToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final DateTime expiresAt;

  final List<Fragment_PhotoUploadLink_headers> headers;

  final String confirmationToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = tstzToString(l$expiresAt);
    final l$headers = headers;
    _resultData['headers'] = l$headers.map((e) => e.toJson()).toList();
    final l$confirmationToken = confirmationToken;
    _resultData['confirmationToken'] = l$confirmationToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$expiresAt = expiresAt;
    final l$headers = headers;
    final l$confirmationToken = confirmationToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$expiresAt,
      Object.hashAll(l$headers.map((v) => v)),
      l$confirmationToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PhotoUploadLink ||
        runtimeType != other.runtimeType) {
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
    final l$headers = headers;
    final lOther$headers = other.headers;
    if (l$headers.length != lOther$headers.length) {
      return false;
    }
    for (int i = 0; i < l$headers.length; i++) {
      final l$headers$entry = l$headers[i];
      final lOther$headers$entry = lOther$headers[i];
      if (l$headers$entry != lOther$headers$entry) {
        return false;
      }
    }
    final l$confirmationToken = confirmationToken;
    final lOther$confirmationToken = other.confirmationToken;
    if (l$confirmationToken != lOther$confirmationToken) {
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

extension UtilityExtension_Fragment_PhotoUploadLink
    on Fragment_PhotoUploadLink {
  CopyWith_Fragment_PhotoUploadLink<Fragment_PhotoUploadLink> get copyWith =>
      CopyWith_Fragment_PhotoUploadLink(this, (i) => i);
}

abstract class CopyWith_Fragment_PhotoUploadLink<TRes> {
  factory CopyWith_Fragment_PhotoUploadLink(
    Fragment_PhotoUploadLink instance,
    TRes Function(Fragment_PhotoUploadLink) then,
  ) = _CopyWithImpl_Fragment_PhotoUploadLink;

  factory CopyWith_Fragment_PhotoUploadLink.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PhotoUploadLink;

  TRes call({
    String? url,
    DateTime? expiresAt,
    List<Fragment_PhotoUploadLink_headers>? headers,
    String? confirmationToken,
    String? $__typename,
  });
  TRes headers(
    Iterable<Fragment_PhotoUploadLink_headers> Function(
      Iterable<
        CopyWith_Fragment_PhotoUploadLink_headers<
          Fragment_PhotoUploadLink_headers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_PhotoUploadLink<TRes>
    implements CopyWith_Fragment_PhotoUploadLink<TRes> {
  _CopyWithImpl_Fragment_PhotoUploadLink(this._instance, this._then);

  final Fragment_PhotoUploadLink _instance;

  final TRes Function(Fragment_PhotoUploadLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? expiresAt = _undefined,
    Object? headers = _undefined,
    Object? confirmationToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PhotoUploadLink(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      expiresAt: expiresAt == _undefined || expiresAt == null
          ? _instance.expiresAt
          : (expiresAt as DateTime),
      headers: headers == _undefined || headers == null
          ? _instance.headers
          : (headers as List<Fragment_PhotoUploadLink_headers>),
      confirmationToken:
          confirmationToken == _undefined || confirmationToken == null
          ? _instance.confirmationToken
          : (confirmationToken as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes headers(
    Iterable<Fragment_PhotoUploadLink_headers> Function(
      Iterable<
        CopyWith_Fragment_PhotoUploadLink_headers<
          Fragment_PhotoUploadLink_headers
        >
      >,
    )
    _fn,
  ) => call(
    headers: _fn(
      _instance.headers.map(
        (e) => CopyWith_Fragment_PhotoUploadLink_headers(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_PhotoUploadLink<TRes>
    implements CopyWith_Fragment_PhotoUploadLink<TRes> {
  _CopyWithStubImpl_Fragment_PhotoUploadLink(this._res);

  TRes _res;

  call({
    String? url,
    DateTime? expiresAt,
    List<Fragment_PhotoUploadLink_headers>? headers,
    String? confirmationToken,
    String? $__typename,
  }) => _res;

  headers(_fn) => _res;
}

const fragmentDefinitionPhotoUploadLink = FragmentDefinitionNode(
  name: NameNode(value: 'PhotoUploadLink'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PhotoUploadLink'),
      isNonNull: false,
    ),
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
        name: NameNode(value: 'headers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'value'),
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
        name: NameNode(value: 'confirmationToken'),
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
const documentNodeFragmentPhotoUploadLink = DocumentNode(
  definitions: [fragmentDefinitionPhotoUploadLink],
);

class Fragment_PhotoUploadLink_headers {
  Fragment_PhotoUploadLink_headers({
    required this.name,
    required this.value,
    this.$__typename = 'HttpHeader',
  });

  factory Fragment_PhotoUploadLink_headers.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment_PhotoUploadLink_headers(
      name: (l$name as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PhotoUploadLink_headers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension_Fragment_PhotoUploadLink_headers
    on Fragment_PhotoUploadLink_headers {
  CopyWith_Fragment_PhotoUploadLink_headers<Fragment_PhotoUploadLink_headers>
  get copyWith => CopyWith_Fragment_PhotoUploadLink_headers(this, (i) => i);
}

abstract class CopyWith_Fragment_PhotoUploadLink_headers<TRes> {
  factory CopyWith_Fragment_PhotoUploadLink_headers(
    Fragment_PhotoUploadLink_headers instance,
    TRes Function(Fragment_PhotoUploadLink_headers) then,
  ) = _CopyWithImpl_Fragment_PhotoUploadLink_headers;

  factory CopyWith_Fragment_PhotoUploadLink_headers.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PhotoUploadLink_headers;

  TRes call({String? name, String? value, String? $__typename});
}

class _CopyWithImpl_Fragment_PhotoUploadLink_headers<TRes>
    implements CopyWith_Fragment_PhotoUploadLink_headers<TRes> {
  _CopyWithImpl_Fragment_PhotoUploadLink_headers(this._instance, this._then);

  final Fragment_PhotoUploadLink_headers _instance;

  final TRes Function(Fragment_PhotoUploadLink_headers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PhotoUploadLink_headers(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PhotoUploadLink_headers<TRes>
    implements CopyWith_Fragment_PhotoUploadLink_headers<TRes> {
  _CopyWithStubImpl_Fragment_PhotoUploadLink_headers(this._res);

  TRes _res;

  call({String? name, String? value, String? $__typename}) => _res;
}
