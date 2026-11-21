import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Subscription_watchFingerprintLastSyncedAt {
  Subscription_watchFingerprintLastSyncedAt({
    required this.operationsFingerprintSyncStatus,
  });

  factory Subscription_watchFingerprintLastSyncedAt.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$operationsFingerprintSyncStatus =
        json['operationsFingerprintSyncStatus'];
    return Subscription_watchFingerprintLastSyncedAt(
      operationsFingerprintSyncStatus:
          (l$operationsFingerprintSyncStatus as List<dynamic>)
              .map(
                (e) =>
                    Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus.fromJson(
                      (e as Map<String, dynamic>),
                    ),
              )
              .toList(),
    );
  }

  final List<
    Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
  >
  operationsFingerprintSyncStatus;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$operationsFingerprintSyncStatus = operationsFingerprintSyncStatus;
    _resultData['operationsFingerprintSyncStatus'] =
        l$operationsFingerprintSyncStatus.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$operationsFingerprintSyncStatus = operationsFingerprintSyncStatus;
    return Object.hashAll([
      Object.hashAll(l$operationsFingerprintSyncStatus.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchFingerprintLastSyncedAt ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$operationsFingerprintSyncStatus = operationsFingerprintSyncStatus;
    final lOther$operationsFingerprintSyncStatus =
        other.operationsFingerprintSyncStatus;
    if (l$operationsFingerprintSyncStatus.length !=
        lOther$operationsFingerprintSyncStatus.length) {
      return false;
    }
    for (int i = 0; i < l$operationsFingerprintSyncStatus.length; i++) {
      final l$operationsFingerprintSyncStatus$entry =
          l$operationsFingerprintSyncStatus[i];
      final lOther$operationsFingerprintSyncStatus$entry =
          lOther$operationsFingerprintSyncStatus[i];
      if (l$operationsFingerprintSyncStatus$entry !=
          lOther$operationsFingerprintSyncStatus$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchFingerprintLastSyncedAt
    on Subscription_watchFingerprintLastSyncedAt {
  CopyWith_Subscription_watchFingerprintLastSyncedAt<
    Subscription_watchFingerprintLastSyncedAt
  >
  get copyWith =>
      CopyWith_Subscription_watchFingerprintLastSyncedAt(this, (i) => i);
}

abstract class CopyWith_Subscription_watchFingerprintLastSyncedAt<TRes> {
  factory CopyWith_Subscription_watchFingerprintLastSyncedAt(
    Subscription_watchFingerprintLastSyncedAt instance,
    TRes Function(Subscription_watchFingerprintLastSyncedAt) then,
  ) = _CopyWithImpl_Subscription_watchFingerprintLastSyncedAt;

  factory CopyWith_Subscription_watchFingerprintLastSyncedAt.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchFingerprintLastSyncedAt;

  TRes call({
    List<
      Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
    >?
    operationsFingerprintSyncStatus,
  });
  TRes operationsFingerprintSyncStatus(
    Iterable<
      Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
    >
    Function(
      Iterable<
        CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
          Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchFingerprintLastSyncedAt<TRes>
    implements CopyWith_Subscription_watchFingerprintLastSyncedAt<TRes> {
  _CopyWithImpl_Subscription_watchFingerprintLastSyncedAt(
    this._instance,
    this._then,
  );

  final Subscription_watchFingerprintLastSyncedAt _instance;

  final TRes Function(Subscription_watchFingerprintLastSyncedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? operationsFingerprintSyncStatus = _undefined}) => _then(
    Subscription_watchFingerprintLastSyncedAt(
      operationsFingerprintSyncStatus:
          operationsFingerprintSyncStatus == _undefined ||
              operationsFingerprintSyncStatus == null
          ? _instance.operationsFingerprintSyncStatus
          : (operationsFingerprintSyncStatus
                as List<
                  Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
                >),
    ),
  );

  TRes operationsFingerprintSyncStatus(
    Iterable<
      Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
    >
    Function(
      Iterable<
        CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
          Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
        >
      >,
    )
    _fn,
  ) => call(
    operationsFingerprintSyncStatus: _fn(
      _instance.operationsFingerprintSyncStatus.map(
        (e) =>
            CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchFingerprintLastSyncedAt<TRes>
    implements CopyWith_Subscription_watchFingerprintLastSyncedAt<TRes> {
  _CopyWithStubImpl_Subscription_watchFingerprintLastSyncedAt(this._res);

  TRes _res;

  call({
    List<
      Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
    >?
    operationsFingerprintSyncStatus,
  }) => _res;

  operationsFingerprintSyncStatus(_fn) => _res;
}

const documentNodeSubscriptionwatchFingerprintLastSyncedAt = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchFingerprintLastSyncedAt'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'operationsFingerprintSyncStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'lastSyncedAt'),
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
        ],
      ),
    ),
  ],
);

class Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus {
  Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus({
    required this.lastSyncedAt,
    this.$__typename = 'OperationsFingerprintSyncStatus',
  });

  factory Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$lastSyncedAt = json['lastSyncedAt'];
    final l$$__typename = json['__typename'];
    return Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
      lastSyncedAt: tstzFromString(l$lastSyncedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime lastSyncedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lastSyncedAt = lastSyncedAt;
    _resultData['lastSyncedAt'] = tstzToString(l$lastSyncedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lastSyncedAt = lastSyncedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$lastSyncedAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lastSyncedAt = lastSyncedAt;
    final lOther$lastSyncedAt = other.lastSyncedAt;
    if (l$lastSyncedAt != lOther$lastSyncedAt) {
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

extension UtilityExtension_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
    on Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus {
  CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
    Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
  >
  get copyWith =>
      CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
  TRes
> {
  factory CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
    Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
    instance,
    TRes Function(
      Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus;

  factory CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus;

  TRes call({DateTime? lastSyncedAt, String? $__typename});
}

class _CopyWithImpl_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
  TRes
>
    implements
        CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
          TRes
        > {
  _CopyWithImpl_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
    this._instance,
    this._then,
  );

  final Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus
  _instance;

  final TRes Function(
    Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lastSyncedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
      lastSyncedAt: lastSyncedAt == _undefined || lastSyncedAt == null
          ? _instance.lastSyncedAt
          : (lastSyncedAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
  TRes
>
    implements
        CopyWith_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchFingerprintLastSyncedAt_operationsFingerprintSyncStatus(
    this._res,
  );

  TRes _res;

  call({DateTime? lastSyncedAt, String? $__typename}) => _res;
}
