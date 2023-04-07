import '../../classes/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Query$analyzeUserAttendance {
  factory Variables$Query$analyzeUserAttendance({
    required DateTime dateFrom,
    required DateTime dateTo,
    required UuidValue personId,
    required UuidValue userId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
  }) =>
      Variables$Query$analyzeUserAttendance._({
        r'dateFrom': dateFrom,
        r'dateTo': dateTo,
        r'personId': personId,
        r'userId': userId,
        if (groupsIds != null) r'groupsIds': groupsIds,
        if (classesIds != null) r'classesIds': classesIds,
        if (servicesIds != null) r'servicesIds': servicesIds,
      });

  Variables$Query$analyzeUserAttendance._(this._$data);

  factory Variables$Query$analyzeUserAttendance.fromJson(
      Map<String, dynamic> data) {
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
      result$data['groupsIds'] =
          (l$groupsIds as List<dynamic>?)?.map((e) => stringToUuid(e)).toList();
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
    return Variables$Query$analyzeUserAttendance._(result$data);
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
      result$data['groupsIds'] =
          l$groupsIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('classesIds')) {
      final l$classesIds = classesIds;
      result$data['classesIds'] =
          l$classesIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('servicesIds')) {
      final l$servicesIds = servicesIds;
      result$data['servicesIds'] =
          l$servicesIds?.map((e) => uuidToString(e)).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$analyzeUserAttendance<
          Variables$Query$analyzeUserAttendance>
      get copyWith => CopyWith$Variables$Query$analyzeUserAttendance(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$analyzeUserAttendance) ||
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

abstract class CopyWith$Variables$Query$analyzeUserAttendance<TRes> {
  factory CopyWith$Variables$Query$analyzeUserAttendance(
    Variables$Query$analyzeUserAttendance instance,
    TRes Function(Variables$Query$analyzeUserAttendance) then,
  ) = _CopyWithImpl$Variables$Query$analyzeUserAttendance;

  factory CopyWith$Variables$Query$analyzeUserAttendance.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$analyzeUserAttendance;

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

class _CopyWithImpl$Variables$Query$analyzeUserAttendance<TRes>
    implements CopyWith$Variables$Query$analyzeUserAttendance<TRes> {
  _CopyWithImpl$Variables$Query$analyzeUserAttendance(
    this._instance,
    this._then,
  );

  final Variables$Query$analyzeUserAttendance _instance;

  final TRes Function(Variables$Query$analyzeUserAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dateFrom = _undefined,
    Object? dateTo = _undefined,
    Object? personId = _undefined,
    Object? userId = _undefined,
    Object? groupsIds = _undefined,
    Object? classesIds = _undefined,
    Object? servicesIds = _undefined,
  }) =>
      _then(Variables$Query$analyzeUserAttendance._({
        ..._instance._$data,
        if (dateFrom != _undefined && dateFrom != null)
          'dateFrom': (dateFrom as DateTime),
        if (dateTo != _undefined && dateTo != null)
          'dateTo': (dateTo as DateTime),
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (userId != _undefined && userId != null)
          'userId': (userId as UuidValue),
        if (groupsIds != _undefined)
          'groupsIds': (groupsIds as List<UuidValue>?),
        if (classesIds != _undefined)
          'classesIds': (classesIds as List<UuidValue>?),
        if (servicesIds != _undefined)
          'servicesIds': (servicesIds as List<UuidValue>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$analyzeUserAttendance<TRes>
    implements CopyWith$Variables$Query$analyzeUserAttendance<TRes> {
  _CopyWithStubImpl$Variables$Query$analyzeUserAttendance(this._res);

  TRes _res;

  call({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    UuidValue? userId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
  }) =>
      _res;
}

class Query$analyzeUserAttendance {
  Query$analyzeUserAttendance({
    this.authUsersDataByPk,
    this.$__typename = 'query_root',
  });

  factory Query$analyzeUserAttendance.fromJson(Map<String, dynamic> json) {
    final l$authUsersDataByPk = json['authUsersDataByPk'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance(
      authUsersDataByPk: l$authUsersDataByPk == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk.fromJson(
              (l$authUsersDataByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk? authUsersDataByPk;

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
    return Object.hashAll([
      l$authUsersDataByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$analyzeUserAttendance) ||
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

extension UtilityExtension$Query$analyzeUserAttendance
    on Query$analyzeUserAttendance {
  CopyWith$Query$analyzeUserAttendance<Query$analyzeUserAttendance>
      get copyWith => CopyWith$Query$analyzeUserAttendance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance<TRes> {
  factory CopyWith$Query$analyzeUserAttendance(
    Query$analyzeUserAttendance instance,
    TRes Function(Query$analyzeUserAttendance) then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance;

  factory CopyWith$Query$analyzeUserAttendance.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk? authUsersDataByPk,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<TRes>
      get authUsersDataByPk;
}

class _CopyWithImpl$Query$analyzeUserAttendance<TRes>
    implements CopyWith$Query$analyzeUserAttendance<TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance _instance;

  final TRes Function(Query$analyzeUserAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authUsersDataByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzeUserAttendance(
        authUsersDataByPk: authUsersDataByPk == _undefined
            ? _instance.authUsersDataByPk
            : (authUsersDataByPk
                as Query$analyzeUserAttendance$authUsersDataByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<TRes>
      get authUsersDataByPk {
    final local$authUsersDataByPk = _instance.authUsersDataByPk;
    return local$authUsersDataByPk == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk.stub(
            _then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk(
            local$authUsersDataByPk, (e) => call(authUsersDataByPk: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance<TRes>
    implements CopyWith$Query$analyzeUserAttendance<TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance(this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk? authUsersDataByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<TRes>
      get authUsersDataByPk =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk.stub(_res);
}

const documentNodeQueryanalyzeUserAttendance = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'analyzeUserAttendance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dateFrom')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dateTo')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupsIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classesIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'servicesIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authUsersDataByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'uid'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
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
]);

class Query$analyzeUserAttendance$authUsersDataByPk
    implements Fragment$User, Fragment$UserNoPhoto, Fragment$AttendanceFields {
  Query$analyzeUserAttendance$authUsersDataByPk({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    required this.servicesHistory,
    required this.classesHistory,
    required this.groupsHistory,
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$servicesHistory = json['servicesHistory'];
    final l$classesHistory = json['classesHistory'];
    final l$groupsHistory = json['groupsHistory'];
    return Query$analyzeUserAttendance$authUsersDataByPk(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      servicesHistory: (l$servicesHistory as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      classesHistory: (l$classesHistory as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$classesHistory
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      groupsHistory: (l$groupsHistory as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>
      servicesHistory;

  final List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>
      classesHistory;

  final List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>
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
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$servicesHistory = servicesHistory;
    _resultData['servicesHistory'] =
        l$servicesHistory.map((e) => e.toJson()).toList();
    final l$classesHistory = classesHistory;
    _resultData['classesHistory'] =
        l$classesHistory.map((e) => e.toJson()).toList();
    final l$groupsHistory = groupsHistory;
    _resultData['groupsHistory'] =
        l$groupsHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$servicesHistory = servicesHistory;
    final l$classesHistory = classesHistory;
    final l$groupsHistory = groupsHistory;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
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
    if (!(other is Query$analyzeUserAttendance$authUsersDataByPk) ||
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk
    on Query$analyzeUserAttendance$authUsersDataByPk {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<
          Query$analyzeUserAttendance$authUsersDataByPk>
      get copyWith => CopyWith$Query$analyzeUserAttendance$authUsersDataByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk(
    Query$analyzeUserAttendance$authUsersDataByPk instance,
    TRes Function(Query$analyzeUserAttendance$authUsersDataByPk) then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>?
        servicesHistory,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>?
        classesHistory,
    List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>?
        groupsHistory,
  });
  TRes servicesHistory(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
                      Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>>)
          _fn);
  TRes classesHistory(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
                      Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>>)
          _fn);
  TRes groupsHistory(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
                      Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk<TRes>
    implements CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk _instance;

  final TRes Function(Query$analyzeUserAttendance$authUsersDataByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? servicesHistory = _undefined,
    Object? classesHistory = _undefined,
    Object? groupsHistory = _undefined,
  }) =>
      _then(Query$analyzeUserAttendance$authUsersDataByPk(
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
        servicesHistory: servicesHistory == _undefined ||
                servicesHistory == null
            ? _instance.servicesHistory
            : (servicesHistory as List<
                Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>),
        classesHistory: classesHistory == _undefined || classesHistory == null
            ? _instance.classesHistory
            : (classesHistory as List<
                Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>),
        groupsHistory: groupsHistory == _undefined || groupsHistory == null
            ? _instance.groupsHistory
            : (groupsHistory as List<
                Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>),
      ));
  TRes servicesHistory(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
                          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>>)
              _fn) =>
      call(
          servicesHistory: _fn(_instance.servicesHistory.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
                e,
                (i) => i,
              ))).toList());
  TRes classesHistory(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
                          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>>)
              _fn) =>
      call(
          classesHistory: _fn(_instance.classesHistory.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
                e,
                (i) => i,
              ))).toList());
  TRes groupsHistory(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
                          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>>)
              _fn) =>
      call(
          groupsHistory: _fn(_instance.groupsHistory.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk<TRes>
    implements CopyWith$Query$analyzeUserAttendance$authUsersDataByPk<TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>?
        servicesHistory,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>?
        classesHistory,
    List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>?
        groupsHistory,
  }) =>
      _res;
  servicesHistory(_fn) => _res;
  classesHistory(_fn) => _res;
  groupsHistory(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory
    implements Fragment$AttendanceFields$servicesHistory {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory({
    required this.permissionId,
    this.service,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
      permissionId: stringToUuid(l$permissionId),
      service: l$service == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
              .fromJson((l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service?
      service;

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
    return Object.hashAll([
      l$permissionId,
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory) ||
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory instance,
    TRes Function(Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory;

  TRes call({
    UuidValue? permissionId,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service?
        service,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
      TRes> get service;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory _instance;

  final TRes Function(
      Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        service: service == _undefined
            ? _instance.service
            : (service
                as Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
      TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory(
      this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service?
        service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
          TRes>
      get service =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
    implements
        Fragment$AttendanceFields$servicesHistory$service,
        Fragment$Service,
        Fragment$ServiceNoPhoto {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
                      Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
                          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
                      Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
                          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
    implements
        Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes {
  Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
    on Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
    Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory
    implements Fragment$AttendanceFields$classesHistory {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory({
    required this.permissionId,
    required this.classes,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$classes = json['classes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
      permissionId: stringToUuid(l$permissionId),
      classes: (l$classes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>
      classes;

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
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory) ||
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory instance,
    TRes Function(Query$analyzeUserAttendance$authUsersDataByPk$classesHistory)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory;

  TRes call({
    UuidValue? permissionId,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>?
        classes,
    String? $__typename,
  });
  TRes classes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
                      Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory _instance;

  final TRes Function(
      Query$analyzeUserAttendance$authUsersDataByPk$classesHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? classes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
                          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory(
      this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>?
        classes,
    String? $__typename,
  }) =>
      _res;
  classes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes
    implements
        Fragment$AttendanceFields$classesHistory$classes,
        Fragment$Class,
        Fragment$ClassNoPhoto {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
                      Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
                          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
                      Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
                          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
    implements
        Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes {
  Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
    on Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
    Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory
    implements Fragment$AttendanceFields$groupsHistory {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory({
    required this.permissionId,
    this.group,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
      permissionId: stringToUuid(l$permissionId),
      group: l$group == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group
              .fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group?
      group;

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
    return Object.hashAll([
      l$permissionId,
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory) ||
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory instance,
    TRes Function(Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory;

  TRes call({
    UuidValue? permissionId,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group? group,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
      TRes> get group;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory _instance;

  final TRes Function(
      Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        group: group == _undefined
            ? _instance.group
            : (group
                as Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
      TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
            local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory(
      this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
          TRes>
      get group =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group
    implements
        Fragment$AttendanceFields$groupsHistory$group,
        Fragment$Group,
        Fragment$GroupNoPhoto {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group
      _instance;

  final TRes Function(
      Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
                      Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
                          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
                      Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
                          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
    implements
        Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes {
  Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
    on Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
    Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzeUserAttendance$authUsersDataByPk$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}
