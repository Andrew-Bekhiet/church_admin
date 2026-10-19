import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_photoDownloadUrl {
  factory Variables_Query_photoDownloadUrl({
    required Enum_PhotoSubject subject,
    required String id,
    String? contentType,
  }) => Variables_Query_photoDownloadUrl._({
    r'subject': subject,
    r'id': id,
    if (contentType != null) r'contentType': contentType,
  });

  Variables_Query_photoDownloadUrl._(this._$data);

  factory Variables_Query_photoDownloadUrl.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subject = data['subject'];
    result$data['subject'] = fromJson_Enum_PhotoSubject((l$subject as String));
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('contentType')) {
      final l$contentType = data['contentType'];
      result$data['contentType'] = (l$contentType as String?);
    }
    return Variables_Query_photoDownloadUrl._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PhotoSubject get subject => (_$data['subject'] as Enum_PhotoSubject);

  String get id => (_$data['id'] as String);

  String? get contentType => (_$data['contentType'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subject = subject;
    result$data['subject'] = toJson_Enum_PhotoSubject(l$subject);
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('contentType')) {
      final l$contentType = contentType;
      result$data['contentType'] = l$contentType;
    }
    return result$data;
  }

  CopyWith_Variables_Query_photoDownloadUrl<Variables_Query_photoDownloadUrl>
  get copyWith => CopyWith_Variables_Query_photoDownloadUrl(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_photoDownloadUrl ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contentType = contentType;
    final lOther$contentType = other.contentType;
    if (_$data.containsKey('contentType') !=
        other._$data.containsKey('contentType')) {
      return false;
    }
    if (l$contentType != lOther$contentType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$subject = subject;
    final l$id = id;
    final l$contentType = contentType;
    return Object.hashAll([
      l$subject,
      l$id,
      _$data.containsKey('contentType') ? l$contentType : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_photoDownloadUrl<TRes> {
  factory CopyWith_Variables_Query_photoDownloadUrl(
    Variables_Query_photoDownloadUrl instance,
    TRes Function(Variables_Query_photoDownloadUrl) then,
  ) = _CopyWithImpl_Variables_Query_photoDownloadUrl;

  factory CopyWith_Variables_Query_photoDownloadUrl.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_photoDownloadUrl;

  TRes call({Enum_PhotoSubject? subject, String? id, String? contentType});
}

class _CopyWithImpl_Variables_Query_photoDownloadUrl<TRes>
    implements CopyWith_Variables_Query_photoDownloadUrl<TRes> {
  _CopyWithImpl_Variables_Query_photoDownloadUrl(this._instance, this._then);

  final Variables_Query_photoDownloadUrl _instance;

  final TRes Function(Variables_Query_photoDownloadUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? subject = _undefined,
    Object? id = _undefined,
    Object? contentType = _undefined,
  }) => _then(
    Variables_Query_photoDownloadUrl._({
      ..._instance._$data,
      if (subject != _undefined && subject != null)
        'subject': (subject as Enum_PhotoSubject),
      if (id != _undefined && id != null) 'id': (id as String),
      if (contentType != _undefined) 'contentType': (contentType as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_photoDownloadUrl<TRes>
    implements CopyWith_Variables_Query_photoDownloadUrl<TRes> {
  _CopyWithStubImpl_Variables_Query_photoDownloadUrl(this._res);

  TRes _res;

  call({Enum_PhotoSubject? subject, String? id, String? contentType}) => _res;
}

class Query_photoDownloadUrl {
  Query_photoDownloadUrl({
    required this.photoDownloadUrl,
    this.$__typename = 'RootQueryType',
  });

  factory Query_photoDownloadUrl.fromJson(Map<String, dynamic> json) {
    final l$photoDownloadUrl = json['photoDownloadUrl'];
    final l$$__typename = json['__typename'];
    return Query_photoDownloadUrl(
      photoDownloadUrl: Fragment_PhotoLink.fromJson(
        (l$photoDownloadUrl as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_PhotoLink photoDownloadUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$photoDownloadUrl = photoDownloadUrl;
    _resultData['photoDownloadUrl'] = l$photoDownloadUrl.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$photoDownloadUrl = photoDownloadUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$photoDownloadUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_photoDownloadUrl || runtimeType != other.runtimeType) {
      return false;
    }
    final l$photoDownloadUrl = photoDownloadUrl;
    final lOther$photoDownloadUrl = other.photoDownloadUrl;
    if (l$photoDownloadUrl != lOther$photoDownloadUrl) {
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

extension UtilityExtension_Query_photoDownloadUrl on Query_photoDownloadUrl {
  CopyWith_Query_photoDownloadUrl<Query_photoDownloadUrl> get copyWith =>
      CopyWith_Query_photoDownloadUrl(this, (i) => i);
}

abstract class CopyWith_Query_photoDownloadUrl<TRes> {
  factory CopyWith_Query_photoDownloadUrl(
    Query_photoDownloadUrl instance,
    TRes Function(Query_photoDownloadUrl) then,
  ) = _CopyWithImpl_Query_photoDownloadUrl;

  factory CopyWith_Query_photoDownloadUrl.stub(TRes res) =
      _CopyWithStubImpl_Query_photoDownloadUrl;

  TRes call({Fragment_PhotoLink? photoDownloadUrl, String? $__typename});
  CopyWith_Fragment_PhotoLink<TRes> get photoDownloadUrl;
}

class _CopyWithImpl_Query_photoDownloadUrl<TRes>
    implements CopyWith_Query_photoDownloadUrl<TRes> {
  _CopyWithImpl_Query_photoDownloadUrl(this._instance, this._then);

  final Query_photoDownloadUrl _instance;

  final TRes Function(Query_photoDownloadUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? photoDownloadUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_photoDownloadUrl(
      photoDownloadUrl:
          photoDownloadUrl == _undefined || photoDownloadUrl == null
          ? _instance.photoDownloadUrl
          : (photoDownloadUrl as Fragment_PhotoLink),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PhotoLink<TRes> get photoDownloadUrl {
    final local$photoDownloadUrl = _instance.photoDownloadUrl;
    return CopyWith_Fragment_PhotoLink(
      local$photoDownloadUrl,
      (e) => call(photoDownloadUrl: e),
    );
  }
}

class _CopyWithStubImpl_Query_photoDownloadUrl<TRes>
    implements CopyWith_Query_photoDownloadUrl<TRes> {
  _CopyWithStubImpl_Query_photoDownloadUrl(this._res);

  TRes _res;

  call({Fragment_PhotoLink? photoDownloadUrl, String? $__typename}) => _res;

  CopyWith_Fragment_PhotoLink<TRes> get photoDownloadUrl =>
      CopyWith_Fragment_PhotoLink.stub(_res);
}

const documentNodeQueryphotoDownloadUrl = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'photoDownloadUrl'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'subject')),
          type: NamedTypeNode(
            name: NameNode(value: 'PhotoSubject'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'contentType')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'photoDownloadUrl'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'subject'),
                value: VariableNode(name: NameNode(value: 'subject')),
              ),
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'contentType'),
                value: VariableNode(name: NameNode(value: 'contentType')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'PhotoLink'),
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
    ),
    fragmentDefinitionPhotoLink,
  ],
);

class Variables_Query_appDownloadLink {
  factory Variables_Query_appDownloadLink({
    required Enum_AppPlatform platform,
  }) => Variables_Query_appDownloadLink._({r'platform': platform});

  Variables_Query_appDownloadLink._(this._$data);

  factory Variables_Query_appDownloadLink.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$platform = data['platform'];
    result$data['platform'] = fromJson_Enum_AppPlatform((l$platform as String));
    return Variables_Query_appDownloadLink._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AppPlatform get platform => (_$data['platform'] as Enum_AppPlatform);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$platform = platform;
    result$data['platform'] = toJson_Enum_AppPlatform(l$platform);
    return result$data;
  }

  CopyWith_Variables_Query_appDownloadLink<Variables_Query_appDownloadLink>
  get copyWith => CopyWith_Variables_Query_appDownloadLink(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_appDownloadLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$platform = platform;
    final lOther$platform = other.platform;
    if (l$platform != lOther$platform) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$platform = platform;
    return Object.hashAll([l$platform]);
  }
}

abstract class CopyWith_Variables_Query_appDownloadLink<TRes> {
  factory CopyWith_Variables_Query_appDownloadLink(
    Variables_Query_appDownloadLink instance,
    TRes Function(Variables_Query_appDownloadLink) then,
  ) = _CopyWithImpl_Variables_Query_appDownloadLink;

  factory CopyWith_Variables_Query_appDownloadLink.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_appDownloadLink;

  TRes call({Enum_AppPlatform? platform});
}

class _CopyWithImpl_Variables_Query_appDownloadLink<TRes>
    implements CopyWith_Variables_Query_appDownloadLink<TRes> {
  _CopyWithImpl_Variables_Query_appDownloadLink(this._instance, this._then);

  final Variables_Query_appDownloadLink _instance;

  final TRes Function(Variables_Query_appDownloadLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? platform = _undefined}) => _then(
    Variables_Query_appDownloadLink._({
      ..._instance._$data,
      if (platform != _undefined && platform != null)
        'platform': (platform as Enum_AppPlatform),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_appDownloadLink<TRes>
    implements CopyWith_Variables_Query_appDownloadLink<TRes> {
  _CopyWithStubImpl_Variables_Query_appDownloadLink(this._res);

  TRes _res;

  call({Enum_AppPlatform? platform}) => _res;
}

class Query_appDownloadLink {
  Query_appDownloadLink({
    required this.appDownloadLink,
    this.$__typename = 'RootQueryType',
  });

  factory Query_appDownloadLink.fromJson(Map<String, dynamic> json) {
    final l$appDownloadLink = json['appDownloadLink'];
    final l$$__typename = json['__typename'];
    return Query_appDownloadLink(
      appDownloadLink: Query_appDownloadLink_appDownloadLink.fromJson(
        (l$appDownloadLink as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_appDownloadLink_appDownloadLink appDownloadLink;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$appDownloadLink = appDownloadLink;
    _resultData['appDownloadLink'] = l$appDownloadLink.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$appDownloadLink = appDownloadLink;
    final l$$__typename = $__typename;
    return Object.hashAll([l$appDownloadLink, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_appDownloadLink || runtimeType != other.runtimeType) {
      return false;
    }
    final l$appDownloadLink = appDownloadLink;
    final lOther$appDownloadLink = other.appDownloadLink;
    if (l$appDownloadLink != lOther$appDownloadLink) {
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

extension UtilityExtension_Query_appDownloadLink on Query_appDownloadLink {
  CopyWith_Query_appDownloadLink<Query_appDownloadLink> get copyWith =>
      CopyWith_Query_appDownloadLink(this, (i) => i);
}

abstract class CopyWith_Query_appDownloadLink<TRes> {
  factory CopyWith_Query_appDownloadLink(
    Query_appDownloadLink instance,
    TRes Function(Query_appDownloadLink) then,
  ) = _CopyWithImpl_Query_appDownloadLink;

  factory CopyWith_Query_appDownloadLink.stub(TRes res) =
      _CopyWithStubImpl_Query_appDownloadLink;

  TRes call({
    Query_appDownloadLink_appDownloadLink? appDownloadLink,
    String? $__typename,
  });
  CopyWith_Query_appDownloadLink_appDownloadLink<TRes> get appDownloadLink;
}

class _CopyWithImpl_Query_appDownloadLink<TRes>
    implements CopyWith_Query_appDownloadLink<TRes> {
  _CopyWithImpl_Query_appDownloadLink(this._instance, this._then);

  final Query_appDownloadLink _instance;

  final TRes Function(Query_appDownloadLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? appDownloadLink = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_appDownloadLink(
      appDownloadLink: appDownloadLink == _undefined || appDownloadLink == null
          ? _instance.appDownloadLink
          : (appDownloadLink as Query_appDownloadLink_appDownloadLink),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_appDownloadLink_appDownloadLink<TRes> get appDownloadLink {
    final local$appDownloadLink = _instance.appDownloadLink;
    return CopyWith_Query_appDownloadLink_appDownloadLink(
      local$appDownloadLink,
      (e) => call(appDownloadLink: e),
    );
  }
}

class _CopyWithStubImpl_Query_appDownloadLink<TRes>
    implements CopyWith_Query_appDownloadLink<TRes> {
  _CopyWithStubImpl_Query_appDownloadLink(this._res);

  TRes _res;

  call({
    Query_appDownloadLink_appDownloadLink? appDownloadLink,
    String? $__typename,
  }) => _res;

  CopyWith_Query_appDownloadLink_appDownloadLink<TRes> get appDownloadLink =>
      CopyWith_Query_appDownloadLink_appDownloadLink.stub(_res);
}

const documentNodeQueryappDownloadLink = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'appDownloadLink'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'platform')),
          type: NamedTypeNode(
            name: NameNode(value: 'AppPlatform'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'appDownloadLink'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'platform'),
                value: VariableNode(name: NameNode(value: 'platform')),
              ),
            ],
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
                  name: NameNode(value: 'version'),
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
    ),
  ],
);

class Query_appDownloadLink_appDownloadLink {
  Query_appDownloadLink_appDownloadLink({
    required this.url,
    required this.expiresAt,
    required this.version,
    this.$__typename = 'AppDownloadLink',
  });

  factory Query_appDownloadLink_appDownloadLink.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$expiresAt = json['expiresAt'];
    final l$version = json['version'];
    final l$$__typename = json['__typename'];
    return Query_appDownloadLink_appDownloadLink(
      url: (l$url as String),
      expiresAt: tstzFromString(l$expiresAt),
      version: (l$version as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final DateTime expiresAt;

  final String version;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = tstzToString(l$expiresAt);
    final l$version = version;
    _resultData['version'] = l$version;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$expiresAt = expiresAt;
    final l$version = version;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$expiresAt, l$version, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_appDownloadLink_appDownloadLink ||
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
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
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

extension UtilityExtension_Query_appDownloadLink_appDownloadLink
    on Query_appDownloadLink_appDownloadLink {
  CopyWith_Query_appDownloadLink_appDownloadLink<
    Query_appDownloadLink_appDownloadLink
  >
  get copyWith =>
      CopyWith_Query_appDownloadLink_appDownloadLink(this, (i) => i);
}

abstract class CopyWith_Query_appDownloadLink_appDownloadLink<TRes> {
  factory CopyWith_Query_appDownloadLink_appDownloadLink(
    Query_appDownloadLink_appDownloadLink instance,
    TRes Function(Query_appDownloadLink_appDownloadLink) then,
  ) = _CopyWithImpl_Query_appDownloadLink_appDownloadLink;

  factory CopyWith_Query_appDownloadLink_appDownloadLink.stub(TRes res) =
      _CopyWithStubImpl_Query_appDownloadLink_appDownloadLink;

  TRes call({
    String? url,
    DateTime? expiresAt,
    String? version,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_appDownloadLink_appDownloadLink<TRes>
    implements CopyWith_Query_appDownloadLink_appDownloadLink<TRes> {
  _CopyWithImpl_Query_appDownloadLink_appDownloadLink(
    this._instance,
    this._then,
  );

  final Query_appDownloadLink_appDownloadLink _instance;

  final TRes Function(Query_appDownloadLink_appDownloadLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? expiresAt = _undefined,
    Object? version = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_appDownloadLink_appDownloadLink(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      expiresAt: expiresAt == _undefined || expiresAt == null
          ? _instance.expiresAt
          : (expiresAt as DateTime),
      version: version == _undefined || version == null
          ? _instance.version
          : (version as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_appDownloadLink_appDownloadLink<TRes>
    implements CopyWith_Query_appDownloadLink_appDownloadLink<TRes> {
  _CopyWithStubImpl_Query_appDownloadLink_appDownloadLink(this._res);

  TRes _res;

  call({
    String? url,
    DateTime? expiresAt,
    String? version,
    String? $__typename,
  }) => _res;
}
