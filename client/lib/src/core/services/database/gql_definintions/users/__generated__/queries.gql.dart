import '../../classes/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_analyzeUserAttendance {
  factory Variables_Query_analyzeUserAttendance({
    required DateTime dateFrom,
    required DateTime dateTo,
    required UuidValue personId,
    required UuidValue userId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
  }) => Variables_Query_analyzeUserAttendance._({
    r'dateFrom': dateFrom,
    r'dateTo': dateTo,
    r'personId': personId,
    r'userId': userId,
    if (groupsIds != null) r'groupsIds': groupsIds,
    if (classesIds != null) r'classesIds': classesIds,
    if (servicesIds != null) r'servicesIds': servicesIds,
  });

  Variables_Query_analyzeUserAttendance._(this._$data);

  factory Variables_Query_analyzeUserAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$dateFrom = data['dateFrom'];
    result$data['dateFrom'] = dateFromString(l$dateFrom);
    final l$dateTo = data['dateTo'];
    result$data['dateTo'] = dateFromString(l$dateTo);
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$userId = data['userId'];
    result$data['userId'] = stringToUuid(l$userId);
    if (data.containsKey('groupsIds')) {
      final l$groupsIds = data['groupsIds'];
      result$data['groupsIds'] = (l$groupsIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('classesIds')) {
      final l$classesIds = data['classesIds'];
      result$data['classesIds'] = (l$classesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('servicesIds')) {
      final l$servicesIds = data['servicesIds'];
      result$data['servicesIds'] = (l$servicesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    return Variables_Query_analyzeUserAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get dateFrom => (_$data['dateFrom'] as DateTime);

  DateTime get dateTo => (_$data['dateTo'] as DateTime);

  UuidValue get personId => (_$data['personId'] as UuidValue);

  UuidValue get userId => (_$data['userId'] as UuidValue);

  List<UuidValue>? get groupsIds => (_$data['groupsIds'] as List<UuidValue>?);

  List<UuidValue>? get classesIds => (_$data['classesIds'] as List<UuidValue>?);

  List<UuidValue>? get servicesIds =>
      (_$data['servicesIds'] as List<UuidValue>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dateFrom = dateFrom;
    result$data['dateFrom'] = dateToString(l$dateFrom);
    final l$dateTo = dateTo;
    result$data['dateTo'] = dateToString(l$dateTo);
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$userId = userId;
    result$data['userId'] = uuidToString(l$userId);
    if (_$data.containsKey('groupsIds')) {
      final l$groupsIds = groupsIds;
      result$data['groupsIds'] = l$groupsIds
          ?.map((e) => uuidToString(e))
          .toList();
    }
    if (_$data.containsKey('classesIds')) {
      final l$classesIds = classesIds;
      result$data['classesIds'] = l$classesIds
          ?.map((e) => uuidToString(e))
          .toList();
    }
    if (_$data.containsKey('servicesIds')) {
      final l$servicesIds = servicesIds;
      result$data['servicesIds'] = l$servicesIds
          ?.map((e) => uuidToString(e))
          .toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_analyzeUserAttendance<
    Variables_Query_analyzeUserAttendance
  >
  get copyWith =>
      CopyWith_Variables_Query_analyzeUserAttendance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_analyzeUserAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dateFrom = dateFrom;
    final lOther$dateFrom = other.dateFrom;
    if (l$dateFrom != lOther$dateFrom) {
      return false;
    }
    final l$dateTo = dateTo;
    final lOther$dateTo = other.dateTo;
    if (l$dateTo != lOther$dateTo) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$dateFrom = dateFrom;
    final l$dateTo = dateTo;
    final l$personId = personId;
    final l$userId = userId;
    final l$groupsIds = groupsIds;
    final l$classesIds = classesIds;
    final l$servicesIds = servicesIds;
    return Object.hashAll([
      l$dateFrom,
      l$dateTo,
      l$personId,
      l$userId,
      _$data.containsKey('groupsIds')
          ? l$groupsIds == null
                ? null
                : Object.hashAll(l$groupsIds.map((v) => v))
          : const {},
      _$data.containsKey('classesIds')
          ? l$classesIds == null
                ? null
                : Object.hashAll(l$classesIds.map((v) => v))
          : const {},
      _$data.containsKey('servicesIds')
          ? l$servicesIds == null
                ? null
                : Object.hashAll(l$servicesIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_analyzeUserAttendance<TRes> {
  factory CopyWith_Variables_Query_analyzeUserAttendance(
    Variables_Query_analyzeUserAttendance instance,
    TRes Function(Variables_Query_analyzeUserAttendance) then,
  ) = _CopyWithImpl_Variables_Query_analyzeUserAttendance;

  factory CopyWith_Variables_Query_analyzeUserAttendance.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_analyzeUserAttendance;

  TRes call({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    UuidValue? userId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
  });
}

class _CopyWithImpl_Variables_Query_analyzeUserAttendance<TRes>
    implements CopyWith_Variables_Query_analyzeUserAttendance<TRes> {
  _CopyWithImpl_Variables_Query_analyzeUserAttendance(
    this._instance,
    this._then,
  );

  final Variables_Query_analyzeUserAttendance _instance;

  final TRes Function(Variables_Query_analyzeUserAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dateFrom = _undefined,
    Object? dateTo = _undefined,
    Object? personId = _undefined,
    Object? userId = _undefined,
    Object? groupsIds = _undefined,
    Object? classesIds = _undefined,
    Object? servicesIds = _undefined,
  }) => _then(
    Variables_Query_analyzeUserAttendance._({
      ..._instance._$data,
      if (dateFrom != _undefined && dateFrom != null)
        'dateFrom': (dateFrom as DateTime),
      if (dateTo != _undefined && dateTo != null)
        'dateTo': (dateTo as DateTime),
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
      if (userId != _undefined && userId != null)
        'userId': (userId as UuidValue),
      if (groupsIds != _undefined) 'groupsIds': (groupsIds as List<UuidValue>?),
      if (classesIds != _undefined)
        'classesIds': (classesIds as List<UuidValue>?),
      if (servicesIds != _undefined)
        'servicesIds': (servicesIds as List<UuidValue>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_analyzeUserAttendance<TRes>
    implements CopyWith_Variables_Query_analyzeUserAttendance<TRes> {
  _CopyWithStubImpl_Variables_Query_analyzeUserAttendance(this._res);

  TRes _res;

  call({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    UuidValue? userId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
  }) => _res;
}

class Query_analyzeUserAttendance {
  Query_analyzeUserAttendance({
    this.authUsersDataByPk,
    this.$__typename = 'query_root',
  });

  factory Query_analyzeUserAttendance.fromJson(Map<String, dynamic> json) {
    final l$authUsersDataByPk = json['authUsersDataByPk'];
    final l$$__typename = json['__typename'];
    return Query_analyzeUserAttendance(
      authUsersDataByPk: l$authUsersDataByPk == null
          ? null
          : Query_analyzeUserAttendance_authUsersDataByPk.fromJson(
              (l$authUsersDataByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_analyzeUserAttendance_authUsersDataByPk? authUsersDataByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authUsersDataByPk = authUsersDataByPk;
    _resultData['authUsersDataByPk'] = l$authUsersDataByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authUsersDataByPk = authUsersDataByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([l$authUsersDataByPk, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_analyzeUserAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authUsersDataByPk = authUsersDataByPk;
    final lOther$authUsersDataByPk = other.authUsersDataByPk;
    if (l$authUsersDataByPk != lOther$authUsersDataByPk) {
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

extension UtilityExtension_Query_analyzeUserAttendance
    on Query_analyzeUserAttendance {
  CopyWith_Query_analyzeUserAttendance<Query_analyzeUserAttendance>
  get copyWith => CopyWith_Query_analyzeUserAttendance(this, (i) => i);
}

abstract class CopyWith_Query_analyzeUserAttendance<TRes> {
  factory CopyWith_Query_analyzeUserAttendance(
    Query_analyzeUserAttendance instance,
    TRes Function(Query_analyzeUserAttendance) then,
  ) = _CopyWithImpl_Query_analyzeUserAttendance;

  factory CopyWith_Query_analyzeUserAttendance.stub(TRes res) =
      _CopyWithStubImpl_Query_analyzeUserAttendance;

  TRes call({
    Query_analyzeUserAttendance_authUsersDataByPk? authUsersDataByPk,
    String? $__typename,
  });
  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<TRes>
  get authUsersDataByPk;
}

class _CopyWithImpl_Query_analyzeUserAttendance<TRes>
    implements CopyWith_Query_analyzeUserAttendance<TRes> {
  _CopyWithImpl_Query_analyzeUserAttendance(this._instance, this._then);

  final Query_analyzeUserAttendance _instance;

  final TRes Function(Query_analyzeUserAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authUsersDataByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_analyzeUserAttendance(
      authUsersDataByPk: authUsersDataByPk == _undefined
          ? _instance.authUsersDataByPk
          : (authUsersDataByPk
                as Query_analyzeUserAttendance_authUsersDataByPk?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<TRes>
  get authUsersDataByPk {
    final local$authUsersDataByPk = _instance.authUsersDataByPk;
    return local$authUsersDataByPk == null
        ? CopyWith_Query_analyzeUserAttendance_authUsersDataByPk.stub(
            _then(_instance),
          )
        : CopyWith_Query_analyzeUserAttendance_authUsersDataByPk(
            local$authUsersDataByPk,
            (e) => call(authUsersDataByPk: e),
          );
  }
}

class _CopyWithStubImpl_Query_analyzeUserAttendance<TRes>
    implements CopyWith_Query_analyzeUserAttendance<TRes> {
  _CopyWithStubImpl_Query_analyzeUserAttendance(this._res);

  TRes _res;

  call({
    Query_analyzeUserAttendance_authUsersDataByPk? authUsersDataByPk,
    String? $__typename,
  }) => _res;

  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<TRes>
  get authUsersDataByPk =>
      CopyWith_Query_analyzeUserAttendance_authUsersDataByPk.stub(_res);
}

const documentNodeQueryanalyzeUserAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'analyzeUserAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'dateFrom')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'dateTo')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupsIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'classesIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'servicesIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
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
            name: NameNode(value: 'authUsersDataByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'uid'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'User'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'AttendanceFields'),
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
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
    fragmentDefinitionAttendanceFields,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Query_analyzeUserAttendance_authUsersDataByPk
    implements Fragment_User, Fragment_UserNoPhoto, Fragment_AttendanceFields {
  Query_analyzeUserAttendance_authUsersDataByPk({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    this.blurhash,
    required this.servicesHistory,
    required this.classesHistory,
    required this.groupsHistory,
  });

  factory Query_analyzeUserAttendance_authUsersDataByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$servicesHistory = json['servicesHistory'];
    final l$classesHistory = json['classesHistory'];
    final l$groupsHistory = json['groupsHistory'];
    return Query_analyzeUserAttendance_authUsersDataByPk(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      servicesHistory: (l$servicesHistory as List<dynamic>)
          .map(
            (e) =>
                Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      classesHistory: (l$classesHistory as List<dynamic>)
          .map(
            (e) =>
                Query_analyzeUserAttendance_authUsersDataByPk_classesHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      groupsHistory: (l$groupsHistory as List<dynamic>)
          .map(
            (e) =>
                Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final List<Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory>
  servicesHistory;

  final List<Query_analyzeUserAttendance_authUsersDataByPk_classesHistory>
  classesHistory;

  final List<Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory>
  groupsHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$servicesHistory = servicesHistory;
    _resultData['servicesHistory'] = l$servicesHistory
        .map((e) => e.toJson())
        .toList();
    final l$classesHistory = classesHistory;
    _resultData['classesHistory'] = l$classesHistory
        .map((e) => e.toJson())
        .toList();
    final l$groupsHistory = groupsHistory;
    _resultData['groupsHistory'] = l$groupsHistory
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$servicesHistory = servicesHistory;
    final l$classesHistory = classesHistory;
    final l$groupsHistory = groupsHistory;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      Object.hashAll(l$servicesHistory.map((v) => v)),
      Object.hashAll(l$classesHistory.map((v) => v)),
      Object.hashAll(l$groupsHistory.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_analyzeUserAttendance_authUsersDataByPk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$servicesHistory = servicesHistory;
    final lOther$servicesHistory = other.servicesHistory;
    if (l$servicesHistory.length != lOther$servicesHistory.length) {
      return false;
    }
    for (int i = 0; i < l$servicesHistory.length; i++) {
      final l$servicesHistory$entry = l$servicesHistory[i];
      final lOther$servicesHistory$entry = lOther$servicesHistory[i];
      if (l$servicesHistory$entry != lOther$servicesHistory$entry) {
        return false;
      }
    }
    final l$classesHistory = classesHistory;
    final lOther$classesHistory = other.classesHistory;
    if (l$classesHistory.length != lOther$classesHistory.length) {
      return false;
    }
    for (int i = 0; i < l$classesHistory.length; i++) {
      final l$classesHistory$entry = l$classesHistory[i];
      final lOther$classesHistory$entry = lOther$classesHistory[i];
      if (l$classesHistory$entry != lOther$classesHistory$entry) {
        return false;
      }
    }
    final l$groupsHistory = groupsHistory;
    final lOther$groupsHistory = other.groupsHistory;
    if (l$groupsHistory.length != lOther$groupsHistory.length) {
      return false;
    }
    for (int i = 0; i < l$groupsHistory.length; i++) {
      final l$groupsHistory$entry = l$groupsHistory[i];
      final lOther$groupsHistory$entry = lOther$groupsHistory[i];
      if (l$groupsHistory$entry != lOther$groupsHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_analyzeUserAttendance_authUsersDataByPk
    on Query_analyzeUserAttendance_authUsersDataByPk {
  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<
    Query_analyzeUserAttendance_authUsersDataByPk
  >
  get copyWith =>
      CopyWith_Query_analyzeUserAttendance_authUsersDataByPk(this, (i) => i);
}

abstract class CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<TRes> {
  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk(
    Query_analyzeUserAttendance_authUsersDataByPk instance,
    TRes Function(Query_analyzeUserAttendance_authUsersDataByPk) then,
  ) = _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk;

  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory>?
    servicesHistory,
    List<Query_analyzeUserAttendance_authUsersDataByPk_classesHistory>?
    classesHistory,
    List<Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory>?
    groupsHistory,
  });
  TRes servicesHistory(
    Iterable<Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory>
    Function(
      Iterable<
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
          Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory
        >
      >,
    )
    _fn,
  );
  TRes classesHistory(
    Iterable<Query_analyzeUserAttendance_authUsersDataByPk_classesHistory>
    Function(
      Iterable<
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
          Query_analyzeUserAttendance_authUsersDataByPk_classesHistory
        >
      >,
    )
    _fn,
  );
  TRes groupsHistory(
    Iterable<Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory>
    Function(
      Iterable<
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
          Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk<TRes>
    implements CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<TRes> {
  _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk(
    this._instance,
    this._then,
  );

  final Query_analyzeUserAttendance_authUsersDataByPk _instance;

  final TRes Function(Query_analyzeUserAttendance_authUsersDataByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? servicesHistory = _undefined,
    Object? classesHistory = _undefined,
    Object? groupsHistory = _undefined,
  }) => _then(
    Query_analyzeUserAttendance_authUsersDataByPk(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined || email == null
          ? _instance.email
          : (email as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      servicesHistory: servicesHistory == _undefined || servicesHistory == null
          ? _instance.servicesHistory
          : (servicesHistory
                as List<
                  Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory
                >),
      classesHistory: classesHistory == _undefined || classesHistory == null
          ? _instance.classesHistory
          : (classesHistory
                as List<
                  Query_analyzeUserAttendance_authUsersDataByPk_classesHistory
                >),
      groupsHistory: groupsHistory == _undefined || groupsHistory == null
          ? _instance.groupsHistory
          : (groupsHistory
                as List<
                  Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory
                >),
    ),
  );

  TRes servicesHistory(
    Iterable<Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory>
    Function(
      Iterable<
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
          Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory
        >
      >,
    )
    _fn,
  ) => call(
    servicesHistory: _fn(
      _instance.servicesHistory.map(
        (e) =>
            CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes classesHistory(
    Iterable<Query_analyzeUserAttendance_authUsersDataByPk_classesHistory>
    Function(
      Iterable<
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
          Query_analyzeUserAttendance_authUsersDataByPk_classesHistory
        >
      >,
    )
    _fn,
  ) => call(
    classesHistory: _fn(
      _instance.classesHistory.map(
        (e) =>
            CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes groupsHistory(
    Iterable<Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory>
    Function(
      Iterable<
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
          Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory
        >
      >,
    )
    _fn,
  ) => call(
    groupsHistory: _fn(
      _instance.groupsHistory.map(
        (e) =>
            CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk<TRes>
    implements CopyWith_Query_analyzeUserAttendance_authUsersDataByPk<TRes> {
  _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory>?
    servicesHistory,
    List<Query_analyzeUserAttendance_authUsersDataByPk_classesHistory>?
    classesHistory,
    List<Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory>?
    groupsHistory,
  }) => _res;

  servicesHistory(_fn) => _res;

  classesHistory(_fn) => _res;

  groupsHistory(_fn) => _res;
}

class Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory
    implements Fragment_AttendanceFields_servicesHistory {
  Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory({
    required this.permissionId,
    this.service,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permissionId = json['permissionId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
      permissionId: stringToUuid(l$permissionId),
      service: l$service == null
          ? null
          : Fragment_Service.fromJson((l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_Service? service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permissionId, l$service, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory
    on Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory {
  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
    Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory
  >
  get copyWith =>
      CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
  TRes
> {
  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
    Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory instance,
    TRes Function(Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory)
    then,
  ) = _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory;

  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory;

  TRes call({
    UuidValue? permissionId,
    Fragment_Service? service,
    String? $__typename,
  });
  CopyWith_Fragment_Service<TRes> get service;
}

class _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
  TRes
>
    implements
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
          TRes
        > {
  _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
    this._instance,
    this._then,
  );

  final Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory _instance;

  final TRes Function(
    Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_Service?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
  TRes
>
    implements
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory<
          TRes
        > {
  _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_servicesHistory(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_Service? service,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Service<TRes> get service =>
      CopyWith_Fragment_Service.stub(_res);
}

class Query_analyzeUserAttendance_authUsersDataByPk_classesHistory
    implements Fragment_AttendanceFields_classesHistory {
  Query_analyzeUserAttendance_authUsersDataByPk_classesHistory({
    required this.permissionId,
    required this.classes,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Query_analyzeUserAttendance_authUsersDataByPk_classesHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permissionId = json['permissionId'];
    final l$classes = json['classes'];
    final l$$__typename = json['__typename'];
    return Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
      permissionId: stringToUuid(l$permissionId),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final List<Fragment_Class> classes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$classes = classes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      Object.hashAll(l$classes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_analyzeUserAttendance_authUsersDataByPk_classesHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory
    on Query_analyzeUserAttendance_authUsersDataByPk_classesHistory {
  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
    Query_analyzeUserAttendance_authUsersDataByPk_classesHistory
  >
  get copyWith =>
      CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
  TRes
> {
  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
    Query_analyzeUserAttendance_authUsersDataByPk_classesHistory instance,
    TRes Function(Query_analyzeUserAttendance_authUsersDataByPk_classesHistory)
    then,
  ) = _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory;

  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory;

  TRes call({
    UuidValue? permissionId,
    List<Fragment_Class>? classes,
    String? $__typename,
  });
  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
  TRes
>
    implements
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
          TRes
        > {
  _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
    this._instance,
    this._then,
  );

  final Query_analyzeUserAttendance_authUsersDataByPk_classesHistory _instance;

  final TRes Function(
    Query_analyzeUserAttendance_authUsersDataByPk_classesHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? classes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Fragment_Class>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map((e) => CopyWith_Fragment_Class(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
  TRes
>
    implements
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory<
          TRes
        > {
  _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_classesHistory(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? permissionId,
    List<Fragment_Class>? classes,
    String? $__typename,
  }) => _res;

  classes(_fn) => _res;
}

class Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory
    implements Fragment_AttendanceFields_groupsHistory {
  Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory({
    required this.permissionId,
    this.group,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permissionId = json['permissionId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
      permissionId: stringToUuid(l$permissionId),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_Group? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permissionId, l$group, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
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

extension UtilityExtension_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory
    on Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory {
  CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
    Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory
  >
  get copyWith =>
      CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
  TRes
> {
  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
    Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory instance,
    TRes Function(Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory)
    then,
  ) = _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory;

  factory CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory;

  TRes call({
    UuidValue? permissionId,
    Fragment_Group? group,
    String? $__typename,
  });
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
  TRes
>
    implements
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
          TRes
        > {
  _CopyWithImpl_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
    this._instance,
    this._then,
  );

  final Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory _instance;

  final TRes Function(
    Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
      group: group == _undefined ? _instance.group : (group as Fragment_Group?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
  TRes
>
    implements
        CopyWith_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory<
          TRes
        > {
  _CopyWithStubImpl_Query_analyzeUserAttendance_authUsersDataByPk_groupsHistory(
    this._res,
  );

  TRes _res;

  call({UuidValue? permissionId, Fragment_Group? group, String? $__typename}) =>
      _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}
