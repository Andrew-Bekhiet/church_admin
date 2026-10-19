import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_requestPhotoUpload {
  factory Variables_Mutation_requestPhotoUpload({
    required Enum_PhotoSubject subject,
    required String id,
    String? contentType,
  }) => Variables_Mutation_requestPhotoUpload._({
    r'subject': subject,
    r'id': id,
    if (contentType != null) r'contentType': contentType,
  });

  Variables_Mutation_requestPhotoUpload._(this._$data);

  factory Variables_Mutation_requestPhotoUpload.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$subject = data['subject'];
    result$data['subject'] = fromJson_Enum_PhotoSubject((l$subject as String));
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('contentType')) {
      final l$contentType = data['contentType'];
      result$data['contentType'] = (l$contentType as String?);
    }
    return Variables_Mutation_requestPhotoUpload._(result$data);
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

  CopyWith_Variables_Mutation_requestPhotoUpload<
    Variables_Mutation_requestPhotoUpload
  >
  get copyWith =>
      CopyWith_Variables_Mutation_requestPhotoUpload(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_requestPhotoUpload ||
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

abstract class CopyWith_Variables_Mutation_requestPhotoUpload<TRes> {
  factory CopyWith_Variables_Mutation_requestPhotoUpload(
    Variables_Mutation_requestPhotoUpload instance,
    TRes Function(Variables_Mutation_requestPhotoUpload) then,
  ) = _CopyWithImpl_Variables_Mutation_requestPhotoUpload;

  factory CopyWith_Variables_Mutation_requestPhotoUpload.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_requestPhotoUpload;

  TRes call({Enum_PhotoSubject? subject, String? id, String? contentType});
}

class _CopyWithImpl_Variables_Mutation_requestPhotoUpload<TRes>
    implements CopyWith_Variables_Mutation_requestPhotoUpload<TRes> {
  _CopyWithImpl_Variables_Mutation_requestPhotoUpload(
    this._instance,
    this._then,
  );

  final Variables_Mutation_requestPhotoUpload _instance;

  final TRes Function(Variables_Mutation_requestPhotoUpload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? subject = _undefined,
    Object? id = _undefined,
    Object? contentType = _undefined,
  }) => _then(
    Variables_Mutation_requestPhotoUpload._({
      ..._instance._$data,
      if (subject != _undefined && subject != null)
        'subject': (subject as Enum_PhotoSubject),
      if (id != _undefined && id != null) 'id': (id as String),
      if (contentType != _undefined) 'contentType': (contentType as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_requestPhotoUpload<TRes>
    implements CopyWith_Variables_Mutation_requestPhotoUpload<TRes> {
  _CopyWithStubImpl_Variables_Mutation_requestPhotoUpload(this._res);

  TRes _res;

  call({Enum_PhotoSubject? subject, String? id, String? contentType}) => _res;
}

class Mutation_requestPhotoUpload {
  Mutation_requestPhotoUpload({
    required this.requestPhotoUpload,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_requestPhotoUpload.fromJson(Map<String, dynamic> json) {
    final l$requestPhotoUpload = json['requestPhotoUpload'];
    final l$$__typename = json['__typename'];
    return Mutation_requestPhotoUpload(
      requestPhotoUpload: Fragment_PhotoLink.fromJson(
        (l$requestPhotoUpload as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_PhotoLink requestPhotoUpload;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$requestPhotoUpload = requestPhotoUpload;
    _resultData['requestPhotoUpload'] = l$requestPhotoUpload.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$requestPhotoUpload = requestPhotoUpload;
    final l$$__typename = $__typename;
    return Object.hashAll([l$requestPhotoUpload, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_requestPhotoUpload ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestPhotoUpload = requestPhotoUpload;
    final lOther$requestPhotoUpload = other.requestPhotoUpload;
    if (l$requestPhotoUpload != lOther$requestPhotoUpload) {
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

extension UtilityExtension_Mutation_requestPhotoUpload
    on Mutation_requestPhotoUpload {
  CopyWith_Mutation_requestPhotoUpload<Mutation_requestPhotoUpload>
  get copyWith => CopyWith_Mutation_requestPhotoUpload(this, (i) => i);
}

abstract class CopyWith_Mutation_requestPhotoUpload<TRes> {
  factory CopyWith_Mutation_requestPhotoUpload(
    Mutation_requestPhotoUpload instance,
    TRes Function(Mutation_requestPhotoUpload) then,
  ) = _CopyWithImpl_Mutation_requestPhotoUpload;

  factory CopyWith_Mutation_requestPhotoUpload.stub(TRes res) =
      _CopyWithStubImpl_Mutation_requestPhotoUpload;

  TRes call({Fragment_PhotoLink? requestPhotoUpload, String? $__typename});
  CopyWith_Fragment_PhotoLink<TRes> get requestPhotoUpload;
}

class _CopyWithImpl_Mutation_requestPhotoUpload<TRes>
    implements CopyWith_Mutation_requestPhotoUpload<TRes> {
  _CopyWithImpl_Mutation_requestPhotoUpload(this._instance, this._then);

  final Mutation_requestPhotoUpload _instance;

  final TRes Function(Mutation_requestPhotoUpload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestPhotoUpload = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_requestPhotoUpload(
      requestPhotoUpload:
          requestPhotoUpload == _undefined || requestPhotoUpload == null
          ? _instance.requestPhotoUpload
          : (requestPhotoUpload as Fragment_PhotoLink),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PhotoLink<TRes> get requestPhotoUpload {
    final local$requestPhotoUpload = _instance.requestPhotoUpload;
    return CopyWith_Fragment_PhotoLink(
      local$requestPhotoUpload,
      (e) => call(requestPhotoUpload: e),
    );
  }
}

class _CopyWithStubImpl_Mutation_requestPhotoUpload<TRes>
    implements CopyWith_Mutation_requestPhotoUpload<TRes> {
  _CopyWithStubImpl_Mutation_requestPhotoUpload(this._res);

  TRes _res;

  call({Fragment_PhotoLink? requestPhotoUpload, String? $__typename}) => _res;

  CopyWith_Fragment_PhotoLink<TRes> get requestPhotoUpload =>
      CopyWith_Fragment_PhotoLink.stub(_res);
}

const documentNodeMutationrequestPhotoUpload = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'requestPhotoUpload'),
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
            name: NameNode(value: 'requestPhotoUpload'),
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

class Variables_Mutation_deletePhoto {
  factory Variables_Mutation_deletePhoto({
    required Enum_PhotoSubject subject,
    required String id,
  }) => Variables_Mutation_deletePhoto._({r'subject': subject, r'id': id});

  Variables_Mutation_deletePhoto._(this._$data);

  factory Variables_Mutation_deletePhoto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$subject = data['subject'];
    result$data['subject'] = fromJson_Enum_PhotoSubject((l$subject as String));
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deletePhoto._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PhotoSubject get subject => (_$data['subject'] as Enum_PhotoSubject);

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$subject = subject;
    result$data['subject'] = toJson_Enum_PhotoSubject(l$subject);
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deletePhoto<Variables_Mutation_deletePhoto>
  get copyWith => CopyWith_Variables_Mutation_deletePhoto(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deletePhoto ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$subject = subject;
    final l$id = id;
    return Object.hashAll([l$subject, l$id]);
  }
}

abstract class CopyWith_Variables_Mutation_deletePhoto<TRes> {
  factory CopyWith_Variables_Mutation_deletePhoto(
    Variables_Mutation_deletePhoto instance,
    TRes Function(Variables_Mutation_deletePhoto) then,
  ) = _CopyWithImpl_Variables_Mutation_deletePhoto;

  factory CopyWith_Variables_Mutation_deletePhoto.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deletePhoto;

  TRes call({Enum_PhotoSubject? subject, String? id});
}

class _CopyWithImpl_Variables_Mutation_deletePhoto<TRes>
    implements CopyWith_Variables_Mutation_deletePhoto<TRes> {
  _CopyWithImpl_Variables_Mutation_deletePhoto(this._instance, this._then);

  final Variables_Mutation_deletePhoto _instance;

  final TRes Function(Variables_Mutation_deletePhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? subject = _undefined, Object? id = _undefined}) => _then(
    Variables_Mutation_deletePhoto._({
      ..._instance._$data,
      if (subject != _undefined && subject != null)
        'subject': (subject as Enum_PhotoSubject),
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deletePhoto<TRes>
    implements CopyWith_Variables_Mutation_deletePhoto<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deletePhoto(this._res);

  TRes _res;

  call({Enum_PhotoSubject? subject, String? id}) => _res;
}

class Mutation_deletePhoto {
  Mutation_deletePhoto({
    required this.deletePhoto,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deletePhoto.fromJson(Map<String, dynamic> json) {
    final l$deletePhoto = json['deletePhoto'];
    final l$$__typename = json['__typename'];
    return Mutation_deletePhoto(
      deletePhoto: (l$deletePhoto as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deletePhoto;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePhoto = deletePhoto;
    _resultData['deletePhoto'] = l$deletePhoto;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePhoto = deletePhoto;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deletePhoto, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deletePhoto || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePhoto = deletePhoto;
    final lOther$deletePhoto = other.deletePhoto;
    if (l$deletePhoto != lOther$deletePhoto) {
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

extension UtilityExtension_Mutation_deletePhoto on Mutation_deletePhoto {
  CopyWith_Mutation_deletePhoto<Mutation_deletePhoto> get copyWith =>
      CopyWith_Mutation_deletePhoto(this, (i) => i);
}

abstract class CopyWith_Mutation_deletePhoto<TRes> {
  factory CopyWith_Mutation_deletePhoto(
    Mutation_deletePhoto instance,
    TRes Function(Mutation_deletePhoto) then,
  ) = _CopyWithImpl_Mutation_deletePhoto;

  factory CopyWith_Mutation_deletePhoto.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deletePhoto;

  TRes call({bool? deletePhoto, String? $__typename});
}

class _CopyWithImpl_Mutation_deletePhoto<TRes>
    implements CopyWith_Mutation_deletePhoto<TRes> {
  _CopyWithImpl_Mutation_deletePhoto(this._instance, this._then);

  final Mutation_deletePhoto _instance;

  final TRes Function(Mutation_deletePhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePhoto = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deletePhoto(
      deletePhoto: deletePhoto == _undefined || deletePhoto == null
          ? _instance.deletePhoto
          : (deletePhoto as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_deletePhoto<TRes>
    implements CopyWith_Mutation_deletePhoto<TRes> {
  _CopyWithStubImpl_Mutation_deletePhoto(this._res);

  TRes _res;

  call({bool? deletePhoto, String? $__typename}) => _res;
}

const documentNodeMutationdeletePhoto = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deletePhoto'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deletePhoto'),
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
            ],
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
  ],
);

class Variables_Mutation_exportData {
  factory Variables_Mutation_exportData({
    List<String>? areasIds,
    List<String>? servicesIds,
    List<String>? classesIds,
    List<String>? groupsIds,
  }) => Variables_Mutation_exportData._({
    if (areasIds != null) r'areasIds': areasIds,
    if (servicesIds != null) r'servicesIds': servicesIds,
    if (classesIds != null) r'classesIds': classesIds,
    if (groupsIds != null) r'groupsIds': groupsIds,
  });

  Variables_Mutation_exportData._(this._$data);

  factory Variables_Mutation_exportData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areasIds')) {
      final l$areasIds = data['areasIds'];
      result$data['areasIds'] = (l$areasIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('servicesIds')) {
      final l$servicesIds = data['servicesIds'];
      result$data['servicesIds'] = (l$servicesIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('classesIds')) {
      final l$classesIds = data['classesIds'];
      result$data['classesIds'] = (l$classesIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('groupsIds')) {
      final l$groupsIds = data['groupsIds'];
      result$data['groupsIds'] = (l$groupsIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables_Mutation_exportData._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get areasIds => (_$data['areasIds'] as List<String>?);

  List<String>? get servicesIds => (_$data['servicesIds'] as List<String>?);

  List<String>? get classesIds => (_$data['classesIds'] as List<String>?);

  List<String>? get groupsIds => (_$data['groupsIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('areasIds')) {
      final l$areasIds = areasIds;
      result$data['areasIds'] = l$areasIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('servicesIds')) {
      final l$servicesIds = servicesIds;
      result$data['servicesIds'] = l$servicesIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('classesIds')) {
      final l$classesIds = classesIds;
      result$data['classesIds'] = l$classesIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('groupsIds')) {
      final l$groupsIds = groupsIds;
      result$data['groupsIds'] = l$groupsIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_exportData<Variables_Mutation_exportData>
  get copyWith => CopyWith_Variables_Mutation_exportData(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_exportData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areasIds = areasIds;
    final lOther$areasIds = other.areasIds;
    if (_$data.containsKey('areasIds') !=
        other._$data.containsKey('areasIds')) {
      return false;
    }
    if (l$areasIds != null && lOther$areasIds != null) {
      if (l$areasIds.length != lOther$areasIds.length) {
        return false;
      }
      for (int i = 0; i < l$areasIds.length; i++) {
        final l$areasIds$entry = l$areasIds[i];
        final lOther$areasIds$entry = lOther$areasIds[i];
        if (l$areasIds$entry != lOther$areasIds$entry) {
          return false;
        }
      }
    } else if (l$areasIds != lOther$areasIds) {
      return false;
    }
    final l$servicesIds = servicesIds;
    final lOther$servicesIds = other.servicesIds;
    if (_$data.containsKey('servicesIds') !=
        other._$data.containsKey('servicesIds')) {
      return false;
    }
    if (l$servicesIds != null && lOther$servicesIds != null) {
      if (l$servicesIds.length != lOther$servicesIds.length) {
        return false;
      }
      for (int i = 0; i < l$servicesIds.length; i++) {
        final l$servicesIds$entry = l$servicesIds[i];
        final lOther$servicesIds$entry = lOther$servicesIds[i];
        if (l$servicesIds$entry != lOther$servicesIds$entry) {
          return false;
        }
      }
    } else if (l$servicesIds != lOther$servicesIds) {
      return false;
    }
    final l$classesIds = classesIds;
    final lOther$classesIds = other.classesIds;
    if (_$data.containsKey('classesIds') !=
        other._$data.containsKey('classesIds')) {
      return false;
    }
    if (l$classesIds != null && lOther$classesIds != null) {
      if (l$classesIds.length != lOther$classesIds.length) {
        return false;
      }
      for (int i = 0; i < l$classesIds.length; i++) {
        final l$classesIds$entry = l$classesIds[i];
        final lOther$classesIds$entry = lOther$classesIds[i];
        if (l$classesIds$entry != lOther$classesIds$entry) {
          return false;
        }
      }
    } else if (l$classesIds != lOther$classesIds) {
      return false;
    }
    final l$groupsIds = groupsIds;
    final lOther$groupsIds = other.groupsIds;
    if (_$data.containsKey('groupsIds') !=
        other._$data.containsKey('groupsIds')) {
      return false;
    }
    if (l$groupsIds != null && lOther$groupsIds != null) {
      if (l$groupsIds.length != lOther$groupsIds.length) {
        return false;
      }
      for (int i = 0; i < l$groupsIds.length; i++) {
        final l$groupsIds$entry = l$groupsIds[i];
        final lOther$groupsIds$entry = lOther$groupsIds[i];
        if (l$groupsIds$entry != lOther$groupsIds$entry) {
          return false;
        }
      }
    } else if (l$groupsIds != lOther$groupsIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areasIds = areasIds;
    final l$servicesIds = servicesIds;
    final l$classesIds = classesIds;
    final l$groupsIds = groupsIds;
    return Object.hashAll([
      _$data.containsKey('areasIds')
          ? l$areasIds == null
                ? null
                : Object.hashAll(l$areasIds.map((v) => v))
          : const {},
      _$data.containsKey('servicesIds')
          ? l$servicesIds == null
                ? null
                : Object.hashAll(l$servicesIds.map((v) => v))
          : const {},
      _$data.containsKey('classesIds')
          ? l$classesIds == null
                ? null
                : Object.hashAll(l$classesIds.map((v) => v))
          : const {},
      _$data.containsKey('groupsIds')
          ? l$groupsIds == null
                ? null
                : Object.hashAll(l$groupsIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_exportData<TRes> {
  factory CopyWith_Variables_Mutation_exportData(
    Variables_Mutation_exportData instance,
    TRes Function(Variables_Mutation_exportData) then,
  ) = _CopyWithImpl_Variables_Mutation_exportData;

  factory CopyWith_Variables_Mutation_exportData.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_exportData;

  TRes call({
    List<String>? areasIds,
    List<String>? servicesIds,
    List<String>? classesIds,
    List<String>? groupsIds,
  });
}

class _CopyWithImpl_Variables_Mutation_exportData<TRes>
    implements CopyWith_Variables_Mutation_exportData<TRes> {
  _CopyWithImpl_Variables_Mutation_exportData(this._instance, this._then);

  final Variables_Mutation_exportData _instance;

  final TRes Function(Variables_Mutation_exportData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areasIds = _undefined,
    Object? servicesIds = _undefined,
    Object? classesIds = _undefined,
    Object? groupsIds = _undefined,
  }) => _then(
    Variables_Mutation_exportData._({
      ..._instance._$data,
      if (areasIds != _undefined) 'areasIds': (areasIds as List<String>?),
      if (servicesIds != _undefined)
        'servicesIds': (servicesIds as List<String>?),
      if (classesIds != _undefined) 'classesIds': (classesIds as List<String>?),
      if (groupsIds != _undefined) 'groupsIds': (groupsIds as List<String>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_exportData<TRes>
    implements CopyWith_Variables_Mutation_exportData<TRes> {
  _CopyWithStubImpl_Variables_Mutation_exportData(this._res);

  TRes _res;

  call({
    List<String>? areasIds,
    List<String>? servicesIds,
    List<String>? classesIds,
    List<String>? groupsIds,
  }) => _res;
}

class Mutation_exportData {
  Mutation_exportData({
    required this.exportData,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_exportData.fromJson(Map<String, dynamic> json) {
    final l$exportData = json['exportData'];
    final l$$__typename = json['__typename'];
    return Mutation_exportData(
      exportData: Mutation_exportData_exportData.fromJson(
        (l$exportData as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_exportData_exportData exportData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportData = exportData;
    _resultData['exportData'] = l$exportData.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportData = exportData;
    final l$$__typename = $__typename;
    return Object.hashAll([l$exportData, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_exportData || runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportData = exportData;
    final lOther$exportData = other.exportData;
    if (l$exportData != lOther$exportData) {
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

extension UtilityExtension_Mutation_exportData on Mutation_exportData {
  CopyWith_Mutation_exportData<Mutation_exportData> get copyWith =>
      CopyWith_Mutation_exportData(this, (i) => i);
}

abstract class CopyWith_Mutation_exportData<TRes> {
  factory CopyWith_Mutation_exportData(
    Mutation_exportData instance,
    TRes Function(Mutation_exportData) then,
  ) = _CopyWithImpl_Mutation_exportData;

  factory CopyWith_Mutation_exportData.stub(TRes res) =
      _CopyWithStubImpl_Mutation_exportData;

  TRes call({Mutation_exportData_exportData? exportData, String? $__typename});
  CopyWith_Mutation_exportData_exportData<TRes> get exportData;
}

class _CopyWithImpl_Mutation_exportData<TRes>
    implements CopyWith_Mutation_exportData<TRes> {
  _CopyWithImpl_Mutation_exportData(this._instance, this._then);

  final Mutation_exportData _instance;

  final TRes Function(Mutation_exportData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportData = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_exportData(
      exportData: exportData == _undefined || exportData == null
          ? _instance.exportData
          : (exportData as Mutation_exportData_exportData),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_exportData_exportData<TRes> get exportData {
    final local$exportData = _instance.exportData;
    return CopyWith_Mutation_exportData_exportData(
      local$exportData,
      (e) => call(exportData: e),
    );
  }
}

class _CopyWithStubImpl_Mutation_exportData<TRes>
    implements CopyWith_Mutation_exportData<TRes> {
  _CopyWithStubImpl_Mutation_exportData(this._res);

  TRes _res;

  call({Mutation_exportData_exportData? exportData, String? $__typename}) =>
      _res;

  CopyWith_Mutation_exportData_exportData<TRes> get exportData =>
      CopyWith_Mutation_exportData_exportData.stub(_res);
}

const documentNodeMutationexportData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'exportData'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'areasIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'servicesIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'classesIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupsIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
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
            name: NameNode(value: 'exportData'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'areasIds'),
                value: VariableNode(name: NameNode(value: 'areasIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'servicesIds'),
                value: VariableNode(name: NameNode(value: 'servicesIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'classesIds'),
                value: VariableNode(name: NameNode(value: 'classesIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'groupsIds'),
                value: VariableNode(name: NameNode(value: 'groupsIds')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'downloadUrl'),
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

class Mutation_exportData_exportData {
  Mutation_exportData_exportData({
    required this.downloadUrl,
    required this.expiresAt,
    this.$__typename = 'ExportDownloadLink',
  });

  factory Mutation_exportData_exportData.fromJson(Map<String, dynamic> json) {
    final l$downloadUrl = json['downloadUrl'];
    final l$expiresAt = json['expiresAt'];
    final l$$__typename = json['__typename'];
    return Mutation_exportData_exportData(
      downloadUrl: (l$downloadUrl as String),
      expiresAt: tstzFromString(l$expiresAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String downloadUrl;

  final DateTime expiresAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$downloadUrl = downloadUrl;
    _resultData['downloadUrl'] = l$downloadUrl;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = tstzToString(l$expiresAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$downloadUrl = downloadUrl;
    final l$expiresAt = expiresAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$downloadUrl, l$expiresAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_exportData_exportData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$downloadUrl = downloadUrl;
    final lOther$downloadUrl = other.downloadUrl;
    if (l$downloadUrl != lOther$downloadUrl) {
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

extension UtilityExtension_Mutation_exportData_exportData
    on Mutation_exportData_exportData {
  CopyWith_Mutation_exportData_exportData<Mutation_exportData_exportData>
  get copyWith => CopyWith_Mutation_exportData_exportData(this, (i) => i);
}

abstract class CopyWith_Mutation_exportData_exportData<TRes> {
  factory CopyWith_Mutation_exportData_exportData(
    Mutation_exportData_exportData instance,
    TRes Function(Mutation_exportData_exportData) then,
  ) = _CopyWithImpl_Mutation_exportData_exportData;

  factory CopyWith_Mutation_exportData_exportData.stub(TRes res) =
      _CopyWithStubImpl_Mutation_exportData_exportData;

  TRes call({String? downloadUrl, DateTime? expiresAt, String? $__typename});
}

class _CopyWithImpl_Mutation_exportData_exportData<TRes>
    implements CopyWith_Mutation_exportData_exportData<TRes> {
  _CopyWithImpl_Mutation_exportData_exportData(this._instance, this._then);

  final Mutation_exportData_exportData _instance;

  final TRes Function(Mutation_exportData_exportData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? downloadUrl = _undefined,
    Object? expiresAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_exportData_exportData(
      downloadUrl: downloadUrl == _undefined || downloadUrl == null
          ? _instance.downloadUrl
          : (downloadUrl as String),
      expiresAt: expiresAt == _undefined || expiresAt == null
          ? _instance.expiresAt
          : (expiresAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_exportData_exportData<TRes>
    implements CopyWith_Mutation_exportData_exportData<TRes> {
  _CopyWithStubImpl_Mutation_exportData_exportData(this._res);

  TRes _res;

  call({String? downloadUrl, DateTime? expiresAt, String? $__typename}) => _res;
}
